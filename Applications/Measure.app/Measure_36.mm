uint64_t sub_10027B55C(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4, int *a5)
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
    v34 = a2 + 96;
    v35 = 2 * a2 + 96;
    v36 = 3 * a2;
    v37 = &a3[8 * ((v32 >> 2) & 0x1FFFFFFF) + 8];
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 64;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = v42[1];
        *v43 = *v42;
        v43[1] = v44;
        v45 = *(v42 + v34 - 80);
        v43[2] = *(v42 + a2);
        v43[3] = v45;
        v46 = *(v42 + v35 - 80);
        v43[4] = *(v42 + 2 * a2);
        v43[5] = v46;
        v47 = *(v42 + v36 + 16);
        v43[6] = *(v42 + 3 * a2);
        v43[7] = v47;
        v48 = (v43 + a4);
        v49 = v42[3];
        *v48 = v42[2];
        v48[1] = v49;
        v50 = *(v42 + v34 - 48);
        v48[2] = *(v42 + v34 - 64);
        v48[3] = v50;
        v51 = *(v42 + v35 - 48);
        v48[4] = *(v42 + v35 - 64);
        v48[5] = v51;
        v52 = *(v42 + v36 + 48);
        v48[6] = *(v42 + v36 + 32);
        v48[7] = v52;
        v53 = (v43 + a4 + a4);
        v54 = v42[5];
        *v53 = v42[4];
        v53[1] = v54;
        v55 = *(v42 + v34 - 16);
        v53[2] = *(v42 + v34 - 32);
        v53[3] = v55;
        v56 = *(v42 + v35 - 16);
        v53[4] = *(v42 + v35 - 32);
        v53[5] = v56;
        v57 = *(v42 + v36 + 80);
        v53[6] = *(v42 + v36 + 64);
        v53[7] = v57;
        v58 = (v53 + a4);
        v59 = v42[7];
        *v58 = v42[6];
        v58[1] = v59;
        v60 = *(v42 + v34 + 16);
        v58[2] = *(v42 + v34);
        v58[3] = v60;
        v61 = *(v42 + v35 + 16);
        v58[4] = *(v42 + v35);
        v58[5] = v61;
        v62 = *(v42 + v36 + 112);
        v58[6] = *(v42 + v36 + 96);
        v58[7] = v62;
        v41 += 4;
        v43 += 8;
        v42 = (v42 + 4 * a2);
      }

      while (v41 <= v32);
      v63 = v38;
      v64 = v37;
      v65 = (v32 & 0x7FFFFFFC) + 4;
      if (v6 > v41)
      {
        do
        {
          v66 = *(v63 - 3);
          *v64 = *(v63 - 4);
          v64[1] = v66;
          v67 = (v64 + a4);
          v68 = *(v63 - 1);
          *v67 = *(v63 - 2);
          v67[1] = v68;
          v69 = (v64 + 2 * a4);
          v70 = v63[1];
          *v69 = *v63;
          v69[1] = v70;
          v71 = (v64 + 3 * a4);
          v72 = v63[3];
          *v71 = v63[2];
          v71[1] = v72;
          ++v65;
          v64 += 2;
          v63 = (v63 + a2);
        }

        while (v65 < v6);
      }

      v8 += 4;
      v40 = (v40 + v33);
      v39 += 8;
      v37 += v33;
      v38 += 128;
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
      v14 = (v13 + a4);
      v15 = (v13 + v10);
      v16 = (v13 + v11);
      v17 = v12[1];
      *v13 = *v12;
      v13[1] = v17;
      v18 = v12[3];
      *v14 = v12[2];
      v14[1] = v18;
      v19 = v12[5];
      *v15 = v12[4];
      v15[1] = v19;
      v20 = v12[7];
      *v16 = v12[6];
      v16[1] = v20;
      if (v6 != 1)
      {
        v21 = *(v12 + a2 + 16);
        v13[2] = *(v12 + a2);
        v13[3] = v21;
        v22 = *(v12 + a2 + 48);
        v14[2] = *(v12 + a2 + 32);
        v14[3] = v22;
        v23 = *(v12 + a2 + 80);
        v15[2] = *(v12 + a2 + 64);
        v15[3] = v23;
        v24 = *(v12 + a2 + 112);
        v16[2] = *(v12 + a2 + 96);
        v16[3] = v24;
        if (v6 != 2)
        {
          v25 = *(v12 + v9 + 16);
          v13[4] = *(v12 + 2 * a2);
          v13[5] = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 48);
          *(v26 + 4) = *(v12 + v9 + 32);
          *(v26 + 5) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 80);
          *(v28 + 4) = *(v12 + v9 + 64);
          *(v28 + 5) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 112);
          *(v30 + 4) = *(v12 + v9 + 96);
          *(v30 + 5) = v31;
        }
      }

      v8 += 4;
      v13 = (v13 + 4 * a4);
      v12 += 8;
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
    v8 = v8;
    v79 = (result + 32 * v8);
    v80 = a3 + a4 * v8;
    v81 = v80 + 64;
    result = &v80[128 * ((v78 >> 2) & 0x1FFFFFFF) + 128];
    do
    {
      v82 = 0;
      v83 = v81;
      v84 = v79;
      do
      {
        v85 = v84[1];
        *(v83 - 4) = *v84;
        *(v83 - 3) = v85;
        v86 = *(v84 + a2 + 16);
        *(v83 - 2) = *(v84 + a2);
        *(v83 - 1) = v86;
        v87 = *(v84 + 2 * a2 + 16);
        *v83 = *(v84 + 2 * a2);
        v83[1] = v87;
        v88 = *(v84 + 3 * a2 + 16);
        v83[2] = *(v84 + 3 * a2);
        v83[3] = v88;
        v82 += 4;
        v84 = (v84 + 4 * a2);
        v83 += 8;
      }

      while (v82 <= v78);
      v89 = a2 * ((v78 & 0x7FFFFFFC) + 4);
      v90 = result;
      v91 = (v78 & 0x7FFFFFFC) + 4;
      if (v6 > v82)
      {
        do
        {
          v92 = *(v79 + v89 + 16);
          *v90 = *(v79 + v89);
          v90[1] = v92;
          v90 += 2;
          ++v91;
          v89 += a2;
        }

        while (v91 < v6);
      }

      ++v8;
      v79 += 2;
      v81 = (v81 + a4);
      result += a4;
    }

    while (v5 > v8);
  }

  else if (v6 >= 1)
  {
    v73 = (result + 32 * v8);
    v74 = (a3 + a4 * v8 + 32);
    do
    {
      v75 = v73[1];
      *(v74 - 2) = *v73;
      *(v74 - 1) = v75;
      if (v6 != 1)
      {
        v76 = *(v73 + a2 + 16);
        *v74 = *(v73 + a2);
        v74[1] = v76;
        if (v6 != 2)
        {
          v77 = *(v73 + 2 * a2 + 16);
          v74[2] = *(v73 + 2 * a2);
          v74[3] = v77;
        }
      }

      LODWORD(v8) = v8 + 1;
      v73 += 2;
      v74 = (v74 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

void sub_10027B954(void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5) >= a2)
  {
    if (a2)
    {
      v9 = &v3[96 * a2];
      do
      {
        *v3 = 1124007936;
        *(v3 + 4) = 0uLL;
        *(v3 + 20) = 0uLL;
        *(v3 + 36) = 0uLL;
        *(v3 + 10) = 0;
        *(v3 + 3) = 0uLL;
        *(v3 + 8) = v3 + 8;
        *(v3 + 9) = v3 + 80;
        *(v3 + 11) = 0;
        v3 += 96;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v6 = v5 + a2;
    if (v5 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x155555555555555)
    {
      v8 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v10 = 96 * v5;
    v11 = 96 * v5 + 96 * a2;
    v12 = 96 * v5;
    do
    {
      *v12 = 1124007936;
      *(v12 + 4) = 0uLL;
      *(v12 + 20) = 0uLL;
      *(v12 + 36) = 0uLL;
      *(v12 + 80) = 0;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = v12 + 8;
      *(v12 + 72) = v12 + 80;
      *(v12 + 88) = 0;
      v12 += 96;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = (v14 - *a1);
    v18 = v10 + 96 * a2;
    if (v14 != *a1)
    {
      v16 = 0;
      v17 = 96 * v5 - 32 * ((v14 - *a1) >> 5);
      do
      {
        sub_10027BC2C(a1, v17 + v16, &v13[v16]);
        v16 += 96;
      }

      while (&v13[v16] != v14);
      do
      {
        sub_10027BD1C(a1, v13);
        v13 += 96;
      }

      while (v13 != v14);
      v13 = *a1;
      v11 = v18;
    }

    *a1 = (v10 - v15);
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }
}

uint64_t sub_10027BBD4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 96;
    sub_10027BD1C(v4, i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027BC2C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *a2 = *a3;
  *(a2 + 16) = v6;
  *(a2 + 32) = a3[2];
  v7 = *(a3 + 7);
  *(a2 + 48) = *(a3 + 6);
  *(a2 + 56) = v7;
  *(a2 + 80) = 0;
  *(a2 + 64) = a2 + 8;
  *(a2 + 72) = a2 + 80;
  *(a2 + 88) = 0;
  if (v7)
  {
    atomic_fetch_add((v7 + 20), 1u);
    if (*(a3 + 1) <= 2)
    {
LABEL_3:
      v8 = *(a3 + 9);
      v9 = *(a2 + 72);
      *v9 = *v8;
      v9[1] = v8[1];
      return;
    }
  }

  else if (SDWORD1(v5) <= 2)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = 0;
  sub_100269568(a2, *(a3 + 1), 0, 0, 0);
  if (*(a2 + 4) >= 1)
  {
    v10 = 0;
    v11 = *(a3 + 8);
    v12 = *(a3 + 9);
    v13 = *(a2 + 64);
    v14 = *(a2 + 72);
    do
    {
      *(v13 + 4 * v10) = *(v11 + 4 * v10);
      *(v14 + 8 * v10) = *(v12 + 8 * v10);
      ++v10;
    }

    while (v10 < *(a2 + 4));
  }
}

void sub_10027BD1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    if (atomic_fetch_add((v3 + 20), 0xFFFFFFFF) == 1)
    {
      v4 = *(a2 + 56);
      if (v4)
      {
        *(a2 + 56) = 0;
        v5 = *(v4 + 8);
        if (!v5)
        {
          v5 = *(a2 + 48);
          if (!v5)
          {
            v5 = sub_100268CC8();
          }
        }

        (*(*v5 + 48))(v5, v4);
      }
    }
  }

  *(a2 + 56) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (*(a2 + 4) >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 64);
    do
    {
      *(v7 + 4 * v6++) = 0;
    }

    while (v6 < *(a2 + 4));
  }

  v8 = *(a2 + 72);
  if (v8 != (a2 + 80))
  {
    j__free(v8);
  }
}

void sub_10027BDEC(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 80 * a2;
      do
      {
        *v3 = 1124007936;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 4) = 0;
        *(v3 + 20) = 0;
        *(v3 + 64) = 0;
        *(v3 + 12) = 0;
        *(v3 + 48) = v3 + 8;
        *(v3 + 56) = v3 + 64;
        *(v3 + 72) = 0;
        v3 += 80;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      sub_10000918C();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      sub_10000927C();
    }

    v10 = 80 * v5;
    *(&v15 + 1) = 0;
    v11 = 80 * v5;
    do
    {
      *v11 = 1124007936;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 4) = 0;
      *(v11 + 20) = 0;
      *(v11 + 64) = 0;
      *(v11 + 12) = 0;
      *(v11 + 48) = v11 + 8;
      *(v11 + 56) = v11 + 64;
      *(v11 + 72) = 0;
      v11 += 80;
    }

    while (v11 != 80 * v5 + 80 * a2);
    *&v15 = v10 + 80 * a2;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    sub_10027C01C(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 1) = v15;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_10027BFB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027BFC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10027BFC8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_1002B00D8(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = v6 + v7;
      v11 = a4 + v7;
      *v11 = *(v6 + v7);
      *(v11 + 16) = *(v6 + v7 + 16);
      *(v11 + 24) = *(v6 + v7 + 24);
      v12 = *(v6 + v7 + 32);
      v13 = *(v6 + v7 + 40);
      *(v11 + 32) = v12;
      *(v11 + 40) = v13;
      *(a4 + v7 + 64) = 0;
      *(v11 + 48) = a4 + v7 + 8;
      *(v11 + 56) = a4 + v7 + 64;
      *(v11 + 72) = 0;
      if (v12)
      {
        atomic_fetch_add((v12 + 16), 1u);
      }

      if (*(v10 + 4) <= 2)
      {
        v8 = *(v6 + v7 + 56);
        v9 = *(v11 + 56);
        *v9 = *v8;
        v9[1] = v8[1];
      }

      else
      {
        *(v11 + 4) = 0;
        sub_1002B07FC(v11, v10);
      }

      v7 += 80;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      sub_1002B00D8(v6);
      v6 += 80;
    }
  }
}

void sub_10027C108(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      v4 = sub_1002B00D8(v4) - 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027C134(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027C2E0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 > (v3 - v4) >> 1)
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = v6 >> 1;
    v8 = (v6 >> 1) + a2;
    if (v8 < 0)
    {
      sub_10000918C();
    }

    v9 = v3 - v5;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = v6 >> 1;
    v13 = 2 * a2;
    bzero((2 * v7), 2 * a2);
    if (v5 == v4)
    {
      goto LABEL_21;
    }

    v14 = &v4[-v5 - 2];
    if (v14 < 0xE || (v14 & 0xFFFFFFFFFFFFFFFELL) + v5 != -2 && v5 < v6 + (v14 & 0xFFFFFFFFFFFFFFFELL) - 2 * v12 + 2)
    {
      v15 = v5;
      v16 = (2 * v7 - 2 * v12);
      goto LABEL_19;
    }

    v17 = (v14 >> 1) + 1;
    if (v14 >= 0x3E)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFFE0;
      v19 = (-2 * v12 + 2 * v7 + 32);
      v20 = (v5 + 32);
      v21 = v17 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v23 = *(v20 - 2);
        v22 = *(v20 - 1);
        v25 = *v20;
        v24 = v20[1];
        v20 += 4;
        *(v19 - 2) = v23;
        *(v19 - 1) = v22;
        *v19 = v25;
        v19[1] = v24;
        v19 += 4;
        v21 -= 32;
      }

      while (v21);
      if (v17 == v18)
      {
        goto LABEL_20;
      }

      if ((v17 & 0x18) == 0)
      {
        v16 = (2 * v18);
        v15 = (v5 + 2 * v18);
        do
        {
LABEL_19:
          *v16 = *v15;
          v16[1] = v15[1];
          v15 += 2;
          v16 += 2;
        }

        while (v15 != v4);
LABEL_20:
        v5 = *a1;
LABEL_21:
        *a1 = 0;
        *(a1 + 8) = 2 * v7 + v13;
        *(a1 + 16) = 0;
        if (v5)
        {

          operator delete(v5);
        }

        return;
      }
    }

    else
    {
      v18 = 0;
    }

    v16 = (2 * (v17 & 0xFFFFFFFFFFFFFFF8));
    v15 = &v16[v5];
    v26 = (2 * v18 + 2 * v7 - 2 * v12);
    v27 = (v5 + 2 * v18);
    v28 = v18 - (v17 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v29 = *v27++;
      *v26++ = v29;
      v28 += 8;
    }

    while (v28);
    if (v17 == (v17 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2)
  {
    v11 = 2 * a2;
    bzero(*(a1 + 8), 2 * a2);
    v4 += v11;
  }

  *(a1 + 8) = v4;
}

void sub_10027C544(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * (v3 - v4) < a2)
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * v6 + a2;
    if (v7 >= 0x5555555555555556)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v3 - v5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    v9 = v8 >= 0x2AAAAAAAAAAAAAAALL;
    v10 = 0x5555555555555555;
    if (!v9)
    {
      v10 = v7;
    }

    if (v10)
    {
      if (v10 < 0x5555555555555556)
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = &v4[-*a1];
    v13 = 3 * ((3 * a2 - 3) / 3) + 3;
    bzero(v6, v13);
    v14 = v6 - v12;
    if (v5 == v4)
    {
      goto LABEL_20;
    }

    v15 = v4 - v5 - 3;
    if (v15 < 0x15 || (v16 = 3 * (v15 / 3), v14 < &v5[v16 + 3]) && v5 < v6 - v12 + v16 + 3)
    {
      v17 = v5;
      v18 = (v6 - v12);
      goto LABEL_18;
    }

    v19 = v15 / 3 + 1;
    if (v15 >= 0x5D)
    {
      v20 = v19 & 0x7FFFFFFFFFFFFFE0;
      v21 = v5;
      v22 = (v6 - v12);
      v23 = v19 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v24 = v21[1];
        v26 = v21[4];
        v25 = v21[5];
        v27 = v21[2];
        v28 = v21[3];
        *v22 = *v21;
        v22[1] = v24;
        v22[2] = v27;
        v22[3] = v28;
        v22[4] = v26;
        v22[5] = v25;
        v22 += 6;
        v21 += 6;
        v23 -= 32;
      }

      while (v23);
      if (v19 == v20)
      {
        goto LABEL_19;
      }

      if ((v19 & 0x18) == 0)
      {
        v18 = (v14 + 3 * v20);
        v17 = &v5[3 * v20];
        do
        {
LABEL_18:
          *v18 = *v17;
          v18[1] = v17[1];
          v18[2] = v17[2];
          v17 += 3;
          v18 += 3;
        }

        while (v17 != v4);
LABEL_19:
        v5 = *a1;
LABEL_20:
        *a1 = v14;
        *(a1 + 8) = v6 + v13;
        *(a1 + 16) = 0;
        if (v5)
        {

          operator delete(v5);
        }

        return;
      }
    }

    else
    {
      v20 = 0;
    }

    v29 = 3 * (v19 & 0x7FFFFFFFFFFFFFF8);
    v17 = &v5[v29];
    v18 = (v14 + v29);
    v30 = v20 - (v19 & 0x7FFFFFFFFFFFFFF8);
    v31 = 3 * v20;
    v32 = v6 + v31 - v12;
    v33 = &v5[v31];
    do
    {
      v34 = *v33;
      *(v32 + 2) = *(v33 + 2);
      *v32 = v34;
      v32 += 24;
      v33 += 24;
      v30 += 8;
    }

    while (v30);
    if (v19 == (v19 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v11 = 3 * ((3 * a2 - 3) / 3) + 3;
    bzero(*(a1 + 8), v11);
    v4 += v11;
  }

  *(a1 + 8) = v4;
}

void sub_10027C854(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 1) < a2)
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 1) + a2;
    if (v7 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1555555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x2AAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 6 * ((6 * a2 - 6) / 6) + 6;
    bzero(v11, v12);
    v13 = v4 - v5;
    v14 = &v11[-(v4 - v5)];
    if (v5 == v4)
    {
      goto LABEL_33;
    }

    v15 = v4 - v5 - 6;
    v16 = v5;
    v17 = &v11[-(v4 - v5)];
    if (v15 < 0x12)
    {
      goto LABEL_32;
    }

    v18 = 0x5555555555555555 * (v13 >> 1);
    v19 = 3 * (v15 / 6);
    v20 = v14 >= &v5[v19 + 3] || v5 >= v6 - 2 * (v13 >> 1) + v19 * 2 + 6;
    v16 = v5;
    v17 = &v11[-(v4 - v5)];
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = v15 / 6 + 1;
    if (v15 >= 0x5A)
    {
      v22 = v21 & 0x7FFFFFFFFFFFFFF0;
      v23 = v5;
      v24 = &v11[-(v4 - v5)];
      v25 = v21 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v26 = v23[1];
        v28 = v23[4];
        v27 = v23[5];
        v29 = v23[2];
        v30 = v23[3];
        *v24 = *v23;
        *(v24 + 1) = v26;
        *(v24 + 2) = v29;
        *(v24 + 3) = v30;
        *(v24 + 4) = v28;
        *(v24 + 5) = v27;
        v24 += 96;
        v23 += 6;
        v25 -= 16;
      }

      while (v25);
      if (v21 == v22)
      {
LABEL_33:
        *a1 = v14;
        *(a1 + 8) = 2 * (v6 >> 1) + v12;
        *(a1 + 16) = 0;
        if (v5)
        {

          operator delete(v5);
        }

        return;
      }

      if ((v21 & 0xC) == 0)
      {
        v17 = (v14 + 6 * v22);
        v16 = &v5[3 * v22];
        goto LABEL_32;
      }
    }

    else
    {
      v22 = 0;
    }

    v31 = 3 * (v21 & 0x7FFFFFFFFFFFFFFCLL);
    v16 = &v5[v31];
    v17 = (v14 + v31 * 2);
    v32 = v22 - (v21 & 0x7FFFFFFFFFFFFFFCLL);
    v33 = 3 * v22;
    v34 = 2 * (v6 >> 1) + v33 * 2 + 6 * v18;
    v35 = &v5[v33];
    do
    {
      v36 = *v35;
      *(v34 + 16) = *(v35 + 2);
      *v34 = v36;
      v34 += 24;
      v35 += 24;
      v32 += 4;
    }

    while (v32);
    if (v21 == (v21 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_33;
    }

    do
    {
LABEL_32:
      *v17 = *v16;
      *(v17 + 1) = v16[1];
      *(v17 + 2) = v16[2];
      v16 += 3;
      v17 += 6;
    }

    while (v16 != v4);
    goto LABEL_33;
  }

  if (a2)
  {
    v10 = 6 * ((6 * a2 - 6) / 6) + 6;
    bzero(*(a1 + 8), v10);
    v4 += v10;
  }

  *(a1 + 8) = v4;
}

void sub_10027CB6C(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v11 = 8 * a2;
      bzero(a1[1], 8 * a2);
      v4 += v11;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + a2;
    if (v8 >> 61)
    {
      sub_10000918C();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = v6 >> 3;
    v13 = 8 * v7;
    v14 = 8 * a2;
    bzero((8 * v7), 8 * a2);
    if (v5 != v4)
    {
      v15 = v4 - v5 - 8;
      v16 = v5;
      v17 = (v13 - 8 * v12);
      if (v15 < 0x78)
      {
        goto LABEL_31;
      }

      if (&v5[v15 & 0xFFFFFFFFFFFFFFF8] != -8)
      {
        v16 = v5;
        v17 = (v13 - 8 * v12);
        if (v5 < v6 + (v15 & 0xFFFFFFFFFFFFFFF8) - 8 * v12 + 8)
        {
          goto LABEL_31;
        }
      }

      v18 = (v15 >> 3) + 1;
      v17 = (8 * (v18 & 0x3FFFFFFFFFFFFFF8));
      v16 = v17 + v5;
      v19 = (-8 * v12 + 8 * v7 + 32);
      v20 = (v5 + 32);
      v21 = v18 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v23 = *(v20 - 2);
        v22 = *(v20 - 1);
        v25 = *v20;
        v24 = v20[1];
        v20 += 4;
        *(v19 - 2) = v23;
        *(v19 - 1) = v22;
        *v19 = v25;
        v19[1] = v24;
        v19 += 4;
        v21 -= 8;
      }

      while (v21);
      if (v18 != (v18 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_31:
        do
        {
          *v17 = *v16;
          v17[1] = *(v16 + 1);
          v16 += 8;
          v17 += 2;
        }

        while (v16 != v4);
      }
    }

    *a1 = 0;
    a1[1] = (8 * v7 + v14);
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027CD80(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2) + a2;
    if (v7 > 0x1555555555555555)
    {
      sub_10000918C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = &v11[-(v4 - v5)];
    if (v5 != v4)
    {
      v14 = v4 - v5 - 12;
      v15 = v5;
      v16 = &v11[-(v4 - v5)];
      if (v14 < 0xB4)
      {
        goto LABEL_34;
      }

      v17 = 12 * (v14 / 0xC);
      v18 = v13 >= &v5[v17 + 12] || v5 >= v6 - 4 * ((v4 - v5) >> 2) + v17 + 12;
      v15 = v5;
      v16 = &v11[-(v4 - v5)];
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = v14 / 0xC + 1;
      v20 = 12 * (v19 & 0x3FFFFFFFFFFFFFF8);
      v15 = &v5[v20];
      v16 = (v13 + v20);
      v21 = v5;
      v22 = &v11[-(v4 - v5)];
      v23 = v19 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v24 = *(v21 + 1);
        v26 = *(v21 + 4);
        v25 = *(v21 + 5);
        v27 = *(v21 + 2);
        v28 = *(v21 + 3);
        *v22 = *v21;
        *(v22 + 1) = v24;
        *(v22 + 2) = v27;
        *(v22 + 3) = v28;
        *(v22 + 4) = v26;
        *(v22 + 5) = v25;
        v22 += 96;
        v21 += 96;
        v23 -= 8;
      }

      while (v23);
      if (v19 != (v19 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_34:
        do
        {
          *v16 = *v15;
          *(v16 + 1) = *(v15 + 1);
          *(v16 + 2) = *(v15 + 2);
          v15 += 12;
          v16 += 12;
        }

        while (v15 != v4);
      }
    }

    *a1 = v13;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D01C(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v11 = 16 * a2;
      bzero(a1[1], 16 * a2);
      v4 += v11;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + a2;
    if (v8 >> 60)
    {
      sub_10000918C();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_10000927C();
    }

    v12 = v6 >> 4;
    v13 = 16 * v7;
    v14 = 16 * a2;
    bzero((16 * v7), 16 * a2);
    if (v5 != v4)
    {
      v15 = v4 - v5 - 16;
      v16 = v5;
      v17 = (v13 - 16 * v12);
      if (v15 < 0x70)
      {
        goto LABEL_31;
      }

      if (&v5[v15 & 0xFFFFFFFFFFFFFFF0] != -16)
      {
        v16 = v5;
        v17 = (v13 - 16 * v12);
        if (v5 < v6 + (v15 & 0xFFFFFFFFFFFFFFF0) - 16 * v12 + 16)
        {
          goto LABEL_31;
        }
      }

      v18 = (v15 >> 4) + 1;
      v17 = (16 * (v18 & 0x1FFFFFFFFFFFFFF8));
      v16 = v17 + v5;
      v19 = (-16 * v12 + 16 * v7 + 64);
      v20 = (v5 + 64);
      v21 = v18 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        v23 = *(v20 - 4);
        v22 = *(v20 - 3);
        v24 = *(v20 - 1);
        v26 = *v20;
        v25 = v20[1];
        v28 = v20[2];
        v27 = v20[3];
        *(v19 - 2) = *(v20 - 2);
        *(v19 - 1) = v24;
        *(v19 - 4) = v23;
        *(v19 - 3) = v22;
        v19[2] = v28;
        v19[3] = v27;
        *v19 = v26;
        v19[1] = v25;
        v19 += 8;
        v20 += 8;
        v21 -= 8;
      }

      while (v21);
      if (v18 != (v18 & 0x1FFFFFFFFFFFFFF8))
      {
LABEL_31:
        do
        {
          *v17 = *v16;
          v17[1] = *(v16 + 1);
          v17[2] = *(v16 + 2);
          v17[3] = *(v16 + 3);
          v16 += 16;
          v17 += 4;
        }

        while (v16 != v4);
      }
    }

    *a1 = 0;
    a1[1] = (16 * v7 + v14);
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D254(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 3) + a2;
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000918C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v10 = (8 * (&v4[-*a1] >> 3));
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v10, v11);
    if (v5 != v4)
    {
      v12 = v5;
      v13 = &v10[v5 - v4];
      do
      {
        *v13 = *v12;
        *(v13 + 1) = *(v12 + 1);
        *(v13 + 2) = *(v12 + 2);
        *(v13 + 3) = *(v12 + 3);
        *(v13 + 4) = *(v12 + 4);
        *(v13 + 5) = *(v12 + 5);
        v12 += 24;
        v13 += 24;
      }

      while (v12 != v4);
    }

    *a1 = &v10[v5 - v4];
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D440(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 5)
  {
    if (a2)
    {
      v10 = 32 * a2;
      bzero(*(a1 + 8), 32 * a2);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 5;
    v7 = v6 + a2;
    if ((v6 + a2) >> 59)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 5;
    v12 = (32 * v6);
    v13 = 32 * a2;
    bzero(v12, 32 * a2);
    if (v5 != v4)
    {
      v14 = v5;
      v15 = &v12[-32 * v11];
      do
      {
        *v15 = *v14;
        *(v15 + 1) = v14[1];
        *(v15 + 2) = v14[2];
        *(v15 + 3) = v14[3];
        *(v15 + 4) = v14[4];
        *(v15 + 5) = v14[5];
        *(v15 + 6) = v14[6];
        *(v15 + 7) = v14[7];
        v14 += 8;
        v15 += 32;
      }

      while (v14 != v4);
    }

    *a1 = &v12[-32 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D5E4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 36 * ((36 * a2 - 36) / 0x24) + 36;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x8E38E38E38E38E39 * (&v4[-*a1] >> 2);
    if (v6 + a2 > 0x71C71C71C71C71CLL)
    {
      sub_10000918C();
    }

    v7 = 0x8E38E38E38E38E39 * ((v3 - v5) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v9 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x71C71C71C71C71CLL)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (4 * (&v4[-*a1] >> 2));
    v12 = 36 * ((36 * a2 - 36) / 0x24) + 36;
    bzero(v11, v12);
    if (v5 != v4)
    {
      v13 = v5;
      v14 = &v11[v5 - v4];
      do
      {
        *v14 = *v13;
        *(v14 + 1) = *(v13 + 1);
        *(v14 + 2) = *(v13 + 2);
        *(v14 + 3) = *(v13 + 3);
        *(v14 + 4) = *(v13 + 4);
        *(v14 + 5) = *(v13 + 5);
        *(v14 + 6) = *(v13 + 6);
        *(v14 + 7) = *(v13 + 7);
        *(v14 + 8) = *(v13 + 8);
        v13 += 36;
        v14 += 36;
      }

      while (v13 != v4);
    }

    *a1 = &v11[v5 - v4];
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027D80C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 4) + a2;
    if (v6 > 0x555555555555555)
    {
      sub_10000918C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_10000927C();
    }

    v10 = (16 * (&v4[-*a1] >> 4));
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v10, v11);
    if (v5 != v4)
    {
      v12 = v5;
      v13 = &v10[v5 - v4];
      do
      {
        *v13 = *v12;
        *(v13 + 1) = *(v12 + 1);
        *(v13 + 2) = *(v12 + 2);
        *(v13 + 3) = *(v12 + 3);
        *(v13 + 4) = *(v12 + 4);
        *(v13 + 5) = *(v12 + 5);
        *(v13 + 6) = *(v12 + 6);
        *(v13 + 7) = *(v12 + 7);
        *(v13 + 8) = *(v12 + 8);
        *(v13 + 9) = *(v12 + 9);
        *(v13 + 10) = *(v12 + 10);
        *(v13 + 11) = *(v12 + 11);
        v12 += 48;
        v13 += 48;
      }

      while (v12 != v4);
    }

    *a1 = &v10[v5 - v4];
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027DA28(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 6)
  {
    if (a2)
    {
      v10 = a2 << 6;
      bzero(*(a1 + 8), a2 << 6);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 6;
    v7 = v6 + a2;
    if ((v6 + a2) >> 58)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 58))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 6;
    v12 = (v6 << 6);
    v13 = a2 << 6;
    bzero(v12, a2 << 6);
    if (v5 != v4)
    {
      v14 = v5;
      v15 = &v12[-64 * v11];
      do
      {
        *v15 = *v14;
        *(v15 + 1) = v14[1];
        *(v15 + 2) = v14[2];
        *(v15 + 3) = v14[3];
        *(v15 + 4) = v14[4];
        *(v15 + 5) = v14[5];
        *(v15 + 6) = v14[6];
        *(v15 + 7) = v14[7];
        *(v15 + 8) = v14[8];
        *(v15 + 9) = v14[9];
        *(v15 + 10) = v14[10];
        *(v15 + 11) = v14[11];
        *(v15 + 12) = v14[12];
        *(v15 + 13) = v14[13];
        *(v15 + 14) = v14[14];
        *(v15 + 15) = v14[15];
        v14 += 16;
        v15 += 64;
      }

      while (v14 != v4);
    }

    *a1 = &v12[-64 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027DC0C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 7)
  {
    if (a2)
    {
      v10 = a2 << 7;
      bzero(*(a1 + 8), a2 << 7);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 7;
    v7 = v6 + a2;
    if ((v6 + a2) >> 57)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 6 > v7)
    {
      v7 = v8 >> 6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF80)
    {
      v9 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 57))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 7;
    v12 = a2 << 7;
    v13 = (v6 << 7);
    bzero(v13, a2 << 7);
    v14 = &v13[-128 * v11];
    sub_10027DD80(a1, v5, v4, v14);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = &v13[v12];
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_10027DD68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027DD80(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  for (; a2 != a3; a4 += 32)
  {
    *a4 = *a2;
    a4[1] = a2[1];
    a4[2] = a2[2];
    a4[3] = a2[3];
    a4[4] = a2[4];
    a4[5] = a2[5];
    a4[6] = a2[6];
    a4[7] = a2[7];
    a4[8] = a2[8];
    a4[9] = a2[9];
    a4[10] = a2[10];
    a4[11] = a2[11];
    a4[12] = a2[12];
    a4[13] = a2[13];
    a4[14] = a2[14];
    a4[15] = a2[15];
    a4[16] = a2[16];
    a4[17] = a2[17];
    a4[18] = a2[18];
    a4[19] = a2[19];
    a4[20] = a2[20];
    a4[21] = a2[21];
    a4[22] = a2[22];
    a4[23] = a2[23];
    a4[24] = a2[24];
    a4[25] = a2[25];
    a4[26] = a2[26];
    a4[27] = a2[27];
    a4[28] = a2[28];
    a4[29] = a2[29];
    a4[30] = a2[30];
    a4[31] = a2[31];
    a2 += 32;
  }
}

void sub_10027DE9C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 8)
  {
    if (a2)
    {
      v10 = a2 << 8;
      bzero(*(a1 + 8), a2 << 8);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 8;
    v7 = v6 + a2;
    if ((v6 + a2) >> 56)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 7 > v7)
    {
      v7 = v8 >> 7;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF00)
    {
      v9 = 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!HIBYTE(v9))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 8;
    v12 = (v6 << 8);
    v13 = a2 << 8;
    bzero(v12, a2 << 8);
    v14 = &v12[v13];
    v15 = &v12[-256 * v11];
    if (v5 != v4)
    {
      v16 = v15;
      do
      {
        v17 = sub_10027E008(v16, v5);
        v5 += 64;
        v16 = (v17 + 64);
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

_DWORD *sub_10027E008(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  result[12] = a2[12];
  result[13] = a2[13];
  result[14] = a2[14];
  result[15] = a2[15];
  result[16] = a2[16];
  result[17] = a2[17];
  result[18] = a2[18];
  result[19] = a2[19];
  result[20] = a2[20];
  result[21] = a2[21];
  result[22] = a2[22];
  result[23] = a2[23];
  result[24] = a2[24];
  result[25] = a2[25];
  result[26] = a2[26];
  result[27] = a2[27];
  result[28] = a2[28];
  result[29] = a2[29];
  result[30] = a2[30];
  result[31] = a2[31];
  result[32] = a2[32];
  result[33] = a2[33];
  result[34] = a2[34];
  result[35] = a2[35];
  result[36] = a2[36];
  result[37] = a2[37];
  result[38] = a2[38];
  result[39] = a2[39];
  result[40] = a2[40];
  result[41] = a2[41];
  result[42] = a2[42];
  result[43] = a2[43];
  result[44] = a2[44];
  result[45] = a2[45];
  result[46] = a2[46];
  result[47] = a2[47];
  result[48] = a2[48];
  result[49] = a2[49];
  result[50] = a2[50];
  result[51] = a2[51];
  result[52] = a2[52];
  result[53] = a2[53];
  result[54] = a2[54];
  result[55] = a2[55];
  result[56] = a2[56];
  result[57] = a2[57];
  result[58] = a2[58];
  result[59] = a2[59];
  result[60] = a2[60];
  result[61] = a2[61];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

void sub_10027E20C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 9)
  {
    if (a2)
    {
      v10 = a2 << 9;
      bzero(*(a1 + 8), a2 << 9);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 9) + a2;
    if (v7 >> 55)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 8 > v7)
    {
      v7 = v8 >> 8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFE00)
    {
      v9 = 0x7FFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 55))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = v6 >> 9;
    v12 = (v6 >> 9 << 9);
    v13 = a2 << 9;
    bzero(v12, a2 << 9);
    if (v5 != v4)
    {
      if ((v6 - &v5[32 * v11]) >= 0x20)
      {
        v17 = v5;
        v18 = &v12[-512 * v11];
        do
        {
          v19 = v17[1];
          *v18 = *v17;
          *(v18 + 1) = v19;
          v20 = v17[3];
          *(v18 + 2) = v17[2];
          *(v18 + 3) = v20;
          v21 = v17[5];
          *(v18 + 4) = v17[4];
          *(v18 + 5) = v21;
          v22 = v17[7];
          *(v18 + 6) = v17[6];
          *(v18 + 7) = v22;
          v23 = v17[9];
          *(v18 + 8) = v17[8];
          *(v18 + 9) = v23;
          v24 = v17[11];
          *(v18 + 10) = v17[10];
          *(v18 + 11) = v24;
          v25 = v17[13];
          *(v18 + 12) = v17[12];
          *(v18 + 13) = v25;
          v26 = v17[15];
          *(v18 + 14) = v17[14];
          *(v18 + 15) = v26;
          v27 = v17[17];
          *(v18 + 16) = v17[16];
          *(v18 + 17) = v27;
          v28 = v17[19];
          *(v18 + 18) = v17[18];
          *(v18 + 19) = v28;
          v29 = v17[21];
          *(v18 + 20) = v17[20];
          *(v18 + 21) = v29;
          v30 = v17[23];
          *(v18 + 22) = v17[22];
          *(v18 + 23) = v30;
          v31 = v17[25];
          *(v18 + 24) = v17[24];
          *(v18 + 25) = v31;
          v32 = v17[27];
          *(v18 + 26) = v17[26];
          *(v18 + 27) = v32;
          v33 = v17[29];
          *(v18 + 28) = v17[28];
          *(v18 + 29) = v33;
          v34 = v17[31];
          *(v18 + 30) = v17[30];
          *(v18 + 31) = v34;
          v17 += 32;
          v18 += 512;
        }

        while (v17 != v4);
      }

      else
      {
        v14 = v5;
        v15 = &v12[-512 * v11];
        do
        {
          for (i = 0; i != 512; i += 4)
          {
            *&v15[i] = *(v14 + i);
          }

          v14 += 32;
          v15 += 512;
        }

        while (v14 != v4);
      }
    }

    *a1 = &v12[-512 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10027E448(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_10027E59C()
{
  dword_1004BD590 = 50331648;
  qword_1004BD598 = 0;
  unk_1004BD5A0 = 0;
  return __cxa_atexit(nullsub_16, &dword_1004BD590, &_mh_execute_header);
}

uint64_t sub_10027E5CC(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  sub_1002ACE7C(v18, &off_100475120);
  v16 = sub_10027E660(a1, a2, a3, a4, a5, a6, v12, v13, v14, v15);
  if (v19)
  {
    sub_1002ACC1C(v18);
  }

  return v16;
}

uint64_t sub_10027E660(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unsigned int a6, double a7, double a8, double a9, __n128 a10)
{
  if (a3 < 1)
  {
    return 1;
  }

  v10 = a1;
  v156 = (a3 - 1);
  v11 = 0;
  v12 = a3;
  v13 = a6;
  v14 = a2 >> 2;
  v15 = a5 >> 2;
  if (a4)
  {
    v16 = a6 < 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  v18 = 4 * a3;
  v166 = a5 & 0xFFFFFFFFFFFFFFFCLL;
  v167 = a4 + 4 * a6;
  v163 = v167 + v15 * (v18 - 4);
  v174 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v173 = a1 + v18;
  v162 = a1 + v18 + v14 * (v18 - 4);
  v184 = a3 - 1;
  v158 = a4 + 4 * (a6 + v15 * v184);
  v159 = a5 >> 2;
  v171 = (a2 & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v161 = a1 + v171;
  v160 = a4 + (a5 & 0xFFFFFFFFFFFFFFFCLL);
  v19 = a6 & 0x7FFFFFF8;
  v20 = 4 * v14;
  v169 = a4;
  v170 = 4 * v14 + 4;
  v21 = (a1 + 16);
  v22 = (a4 + 16);
  v23 = 4 * v15;
  v24 = (a1 + 20);
  v182 = a1 + 20 + 4 * v14;
  v183 = (a1 + 4 * v14);
  v181 = a4 + 16 + v23;
  v180 = a4 + v23;
  v25 = 1;
  v157 = a4 + 16;
  v26 = a1 + 16;
  v27 = a3;
  v28 = v183;
  v172 = 1;
  do
  {
    v29 = v10 + 4 * v11;
    if (v11 + 1 >= a3)
    {
      v32 = v11;
    }

    else
    {
      v30 = v28;
      v31 = v25;
      v32 = v11;
      do
      {
        if (fabsf(*v30) > fabsf(*(v29 + 4 * v14 * v32)))
        {
          v32 = v31;
        }

        ++v31;
        v30 = (v30 + v20);
      }

      while (a3 != v31);
    }

    if (fabsf(*(v10 + 4 * v14 * v32 + 4 * v11)) < 0.0000011921)
    {
      return 0;
    }

    v176 = v28;
    v177 = v27;
    v33 = v10 + v171 * v11;
    v34 = v173 + v174 * v11;
    v178 = v26;
    v179 = v21;
    if (v11 != v32)
    {
      v35 = a3 - v11;
      v36 = v11;
      if (v35 < 8)
      {
        goto LABEL_25;
      }

      if (v33 < v173 + v174 * v32)
      {
        v36 = v11;
        if (v29 + v174 * v32 < v34)
        {
          goto LABEL_25;
        }
      }

      v37 = v27 & 0xFFFFFFFFFFFFFFF8;
      v36 = v11 + (v35 & 0xFFFFFFFFFFFFFFF8);
      v38 = (v26 + v20 * v32);
      v39 = v21;
      do
      {
        v40 = v39[-1];
        a10 = *v39;
        v41 = *v38;
        v39[-1] = v38[-1];
        *v39 = v41;
        v38[-1] = v40;
        *v38 = a10;
        v38 += 2;
        v39 += 2;
        v37 -= 8;
      }

      while (v37);
      v34 = v173 + v174 * v11;
      if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_25:
        v42 = (a1 + 4 * v36);
        v43 = (v10 + 4 * v36 + v20 * v32);
        v44 = a3 - v36;
        do
        {
          v45 = *v42;
          *v42++ = *v43;
          *v43++ = v45;
          --v44;
        }

        while (v44);
      }

      if (v17)
      {
        goto LABEL_32;
      }

      if (a6 >= 8)
      {
        v46 = 0;
        if ((v169 + 4 * v159 * v32 >= v158 || v167 + v166 * v32 <= v169) && (a5 & 0x8000000000000000) == 0)
        {
          v79 = (v157 + v23 * v32);
          v80 = v13 & 0x7FFFFFF8;
          v81 = v22;
          do
          {
            v82 = v81[-1];
            a10 = *v81;
            v83 = *v79;
            v81[-1] = v79[-1];
            *v81 = v83;
            v79[-1] = v82;
            *v79 = a10;
            v81 += 2;
            v79 += 2;
            v80 -= 8;
          }

          while (v80);
          v46 = v13 & 0x7FFFFFF8;
          if (v13 == v19)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v46 = 0;
      }

      v47 = (a4 + 4 * v46);
      v48 = (v169 + 4 * v46 + v23 * v32);
      v49 = v13 - v46;
      do
      {
        v50 = *v47;
        *v47++ = *v48;
        *v48++ = v50;
        --v49;
      }

      while (v49);
LABEL_32:
      v172 = -v172;
    }

    v175 = v11 + 1;
    if (v11 + 1 < a3)
    {
      v51 = ~v11 + a3;
      v55 = v161 + v171 * v11 < v34 && v33 + 4 < v162 || a2 < 0 || v51 < 8;
      v59 = v160 < v167 && v169 + v166 * v11 < v163 || a5 < 0 || a6 < 8;
      v61 = v180;
      v60 = v181;
      v62 = -1.0 / *(v10 + 4 * v14 * v11 + 4 * v11);
      v64 = v182;
      v63 = v183;
      v65 = v25;
      do
      {
        a10.n128_f32[0] = v62 * *(v10 + 4 * v14 * v65 + 4 * v11);
        v66 = v25;
        if (v55)
        {
          goto LABEL_153;
        }

        v67 = vdupq_lane_s32(a10.n128_u64[0], 0);
        v68 = v64;
        v69 = v24;
        v70 = v184 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v71 = vmlaq_f32(*v68, *v69, v67);
          v68[-1] = vmlaq_f32(v68[-1], v69[-1], v67);
          *v68 = v71;
          v69 += 2;
          v68 += 2;
          v70 -= 8;
        }

        while (v70);
        v66 = v25 + (v51 & 0xFFFFFFFFFFFFFFF8);
        if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_153:
          do
          {
            v63[v66] = v63[v66] + (a10.n128_f32[0] * *(a1 + 4 * v66));
            ++v66;
          }

          while (a3 != v66);
        }

        if (v17)
        {
          goto LABEL_59;
        }

        if (v59)
        {
          v72 = 0;
        }

        else
        {
          v73 = vdupq_lane_s32(a10.n128_u64[0], 0);
          v74 = v60;
          v75 = v22;
          v76 = v13 & 0x7FFFFFF8;
          do
          {
            v77 = vmlaq_f32(*v74, *v75, v73);
            v74[-1] = vmlaq_f32(v74[-1], v75[-1], v73);
            *v74 = v77;
            v75 += 2;
            v74 += 2;
            v76 -= 8;
          }

          while (v76);
          v72 = v13 & 0x7FFFFFF8;
          if (v13 == v19)
          {
            goto LABEL_59;
          }
        }

        do
        {
          *(v61 + 4 * v72) = *(v61 + 4 * v72) + (a10.n128_f32[0] * *(a4 + 4 * v72));
          ++v72;
        }

        while (v13 != v72);
LABEL_59:
        ++v65;
        v64 = (v64 + v20);
        v63 = (v63 + v20);
        v60 = (v60 + v23);
        v61 += v23;
      }

      while (v65 != a3);
    }

    ++v25;
    v28 = (v176 + v170);
    v27 = v177 - 1;
    v26 = v178 + 4;
    v21 = (v179 + v170);
    a1 += v20;
    v22 = (v22 + v23);
    a4 += v23;
    v24 = (v24 + v170);
    v182 += v170;
    v183 = (v183 + v20);
    --v184;
    v181 += v23;
    v180 += v23;
    ++v11;
  }

  while (v175 != a3);
  if (v169 && a6 >= 1)
  {
    v85 = v14 + 1;
    if (a6 <= 7)
    {
      v86 = (v169 + 4 * v159 * a3);
      v87 = (a3 - 1);
      v88 = (v10 + 4 * v14 * v156 + 4 * a3);
      v89 = 4 * ~v14;
      while (1)
      {
        v128 = (v169 + 4 * v159 * v87);
        v129 = v85 * v87;
        v130 = *v128;
        if (v12 >= a3)
        {
          *v128 = v130 / *(v10 + 4 * v129);
          if (a6 == 1)
          {
            goto LABEL_120;
          }

          v128[1] = v128[1] / *(v10 + 4 * v129);
          if (a6 == 2)
          {
            goto LABEL_120;
          }

          v128[2] = v128[2] / *(v10 + 4 * v129);
          if (a6 == 3)
          {
            goto LABEL_120;
          }

          v128[3] = v128[3] / *(v10 + 4 * v129);
          if (a6 == 4)
          {
            goto LABEL_120;
          }

          v128[4] = v128[4] / *(v10 + 4 * v129);
          if (a6 == 5)
          {
            goto LABEL_120;
          }

          v128[5] = v128[5] / *(v10 + 4 * v129);
          if (a6 == 6)
          {
            goto LABEL_120;
          }

          v155 = v128[6];
          v151 = v128 + 6;
          v153 = v155;
        }

        else
        {
          v131 = v88;
          v132 = v86;
          v133 = v12;
          do
          {
            v134 = *v131++;
            v130 = v130 - (v134 * *v132);
            ++v133;
            v132 = (v132 + v23);
          }

          while (v133 < a3);
          *v128 = v130 / *(v10 + 4 * v129);
          if (a6 == 1)
          {
            goto LABEL_120;
          }

          v135 = 0;
          v136 = v128[1];
          v137 = 4;
          do
          {
            v136 = v136 - (v88[v135++] * *(v86 + v137));
            v137 += v23;
          }

          while (v12 + v135 < a3);
          v128[1] = v136 / *(v10 + 4 * v129);
          if (a6 == 2)
          {
            goto LABEL_120;
          }

          v138 = 0;
          v139 = v128[2];
          v140 = 8;
          do
          {
            v139 = v139 - (v88[v138++] * *(v86 + v140));
            v140 += v23;
          }

          while (v12 + v138 < a3);
          v128[2] = v139 / *(v10 + 4 * v129);
          if (a6 == 3)
          {
            goto LABEL_120;
          }

          v141 = 0;
          v142 = v128[3];
          v143 = 12;
          do
          {
            v142 = v142 - (v88[v141++] * *(v86 + v143));
            v143 += v23;
          }

          while (v12 + v141 < a3);
          v128[3] = v142 / *(v10 + 4 * v129);
          if (a6 == 4)
          {
            goto LABEL_120;
          }

          v144 = 0;
          v145 = v128[4];
          v146 = 16;
          do
          {
            v145 = v145 - (v88[v144++] * *(v86 + v146));
            v146 += v23;
          }

          while (v12 + v144 < a3);
          v128[4] = v145 / *(v10 + 4 * v129);
          if (a6 == 5)
          {
            goto LABEL_120;
          }

          v147 = 0;
          v148 = v128[5];
          v149 = 20;
          do
          {
            v148 = v148 - (v88[v147++] * *(v86 + v149));
            v149 += v23;
          }

          while (v12 + v147 < a3);
          v128[5] = v148 / *(v10 + 4 * v129);
          if (a6 == 6)
          {
            goto LABEL_120;
          }

          v150 = 0;
          v152 = v128[6];
          v151 = v128 + 6;
          v153 = v152;
          v154 = 24;
          do
          {
            v153 = v153 - (v88[v150++] * *(v86 + v154));
            v154 += v23;
          }

          while (v12 + v150 < a3);
        }

        *v151 = v153 / *(v10 + 4 * v129);
LABEL_120:
        --v12;
        v86 = (v86 - v23);
        v88 = (v88 + v89);
        v16 = v87-- <= 0;
        if (v16)
        {
          return v172;
        }
      }
    }

    v90 = (a3 - 1);
    v91 = v169 + 4 * v159 * v156;
    v92 = v10 + 4 * v85 * v156 >= v167 || v91 >= v10 + 4;
    if (v92 && ((-4 * v159) & 0x8000000000000000) == 0 && a2 < 0)
    {
      v93 = (v91 + 16);
      v94 = (v91 + 32 * ((v13 >> 3) & 0xFFFFFFF));
      v95 = (v10 + 4 * v14 * v156 + 4 * a3);
      v96 = 4 * ~v14;
      v97 = v169 + 4 * v159 * a3;
      do
      {
        v98 = v85 * v90;
        if (v12 >= a3)
        {
          v107 = (v10 + 4 * v98);
          v108 = vld1q_dup_f32(v107);
          v109 = v13 & 0x7FFFFFF8;
          v110 = v93;
          do
          {
            v111 = vdivq_f32(*v110, v108);
            v110[-1] = vdivq_f32(v110[-1], v108);
            *v110 = v111;
            v110 += 2;
            v109 -= 8;
          }

          while (v109);
          if (v13 != v19)
          {
            v112 = v13 - v19;
            v113 = v94;
            do
            {
              *v113 = *v113 / *(v10 + 4 * v98);
              ++v113;
              --v112;
            }

            while (v112);
          }
        }

        else
        {
          v99 = 0;
          v100 = v169 + 4 * v159 * v90;
          v101 = v97;
          do
          {
            v102 = *(v100 + 4 * v99);
            v103 = v12;
            v104 = v101;
            v105 = v95;
            do
            {
              v106 = *v105++;
              v102 = v102 - (v106 * *v104);
              v104 = (v104 + v23);
              ++v103;
            }

            while (v103 < a3);
            *(v100 + 4 * v99++) = v102 / *(v10 + 4 * v98);
            ++v101;
          }

          while (v99 != v13);
        }

        --v12;
        v93 = (v93 - 4 * v159);
        v94 -= v159;
        v95 = (v95 + v96);
        v97 -= 4 * v159;
        v16 = v90-- <= 0;
      }

      while (!v16);
    }

    else
    {
      v114 = v169 + 4 * v159 * a3;
      v115 = (v10 + 4 * v14 * v156 + 4 * a3);
      v116 = 4 * ~v14;
      do
      {
        v117 = v85 * v90;
        v118 = v91;
        v119 = v13;
        if (v12 >= a3)
        {
          do
          {
            *v118 = *v118 / *(v10 + 4 * v117);
            ++v118;
            --v119;
          }

          while (v119);
        }

        else
        {
          v120 = 0;
          v121 = v169 + 4 * v159 * v90;
          v122 = v114;
          do
          {
            v123 = *(v121 + 4 * v120);
            v124 = v115;
            v125 = v122;
            v126 = v12;
            do
            {
              v127 = *v124++;
              v123 = v123 - (v127 * *v125);
              ++v126;
              v125 = (v125 + v23);
            }

            while (v126 < a3);
            *(v121 + 4 * v120++) = v123 / *(v10 + 4 * v117);
            ++v122;
          }

          while (v120 != v13);
        }

        --v12;
        v91 -= v23;
        v114 -= v23;
        v115 = (v115 + v116);
        v16 = v90-- <= 0;
      }

      while (!v16);
    }
  }

  return v172;
}

uint64_t sub_10027F0C4(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  sub_1002ACE7C(v14, &off_100475140);
  v12 = sub_10027F158(a1, a2, a3, a4, a5, a6);
  if (v15)
  {
    sub_1002ACC1C(v14);
  }

  return v12;
}

uint64_t sub_10027F158(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a3 < 1)
  {
    return 1;
  }

  v6 = a1;
  v145 = a3 - 1;
  v7 = 0;
  v8 = a3;
  v9 = a6;
  v10 = a2 >> 3;
  v11 = a5 >> 3;
  if (a4)
  {
    v12 = a6 < 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  v14 = 8 * a3;
  v155 = a5 & 0xFFFFFFFFFFFFFFF8;
  v156 = a4 + 8 * a6;
  v152 = v156 + v11 * (v14 - 8);
  v163 = a2 & 0xFFFFFFFFFFFFFFF8;
  v162 = a1 + v14;
  v151 = a1 + v14 + v10 * (v14 - 8);
  v173 = a3 - 1;
  v147 = a4 + 8 * (a6 + v11 * v173);
  v148 = a5 >> 3;
  v160 = (a2 & 0xFFFFFFFFFFFFFFF8) + 8;
  v150 = a1 + v160;
  v149 = a4 + (a5 & 0xFFFFFFFFFFFFFFF8);
  v15 = a6 & 0x7FFFFFFC;
  v16 = 8 * v10;
  v158 = a4;
  v159 = 8 * v10 + 8;
  v17 = (a1 + 16);
  v18 = (a4 + 16);
  v19 = 8 * v11;
  v20 = (a1 + 24);
  v171 = a1 + 24 + 8 * v10;
  v172 = (a1 + 8 * v10);
  v170 = a4 + 16 + v19;
  v169 = a4 + v19;
  v21 = 1;
  v146 = a4 + 16;
  v22 = a1 + 16;
  v23 = a3;
  v24 = v172;
  v161 = 1;
  do
  {
    v25 = v6 + 8 * v7;
    if (v7 + 1 >= a3)
    {
      v28 = v7;
    }

    else
    {
      v26 = v24;
      v27 = v21;
      v28 = v7;
      do
      {
        if (fabs(*v26) > fabs(*(v25 + 8 * v10 * v28)))
        {
          v28 = v27;
        }

        ++v27;
        v26 = (v26 + v16);
      }

      while (a3 != v27);
    }

    v29 = v28;
    if (fabs(*(v6 + 8 * v10 * v28 + 8 * v7)) < 2.22044605e-14)
    {
      return 0;
    }

    v165 = v24;
    v166 = v23;
    v30 = v6 + v160 * v7;
    v31 = v162 + v163 * v7;
    v167 = v22;
    v168 = v17;
    if (v7 != v29)
    {
      v32 = a3 - v7;
      v33 = v7;
      if (v32 < 4)
      {
        goto LABEL_25;
      }

      if (v30 < v162 + v163 * v29)
      {
        v33 = v7;
        if (v25 + v163 * v29 < v31)
        {
          goto LABEL_25;
        }
      }

      v34 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v33 = v7 + (v32 & 0xFFFFFFFFFFFFFFFCLL);
      v35 = (v22 + v16 * v29);
      v36 = v17;
      do
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        v39 = *v35;
        *(v36 - 1) = *(v35 - 1);
        *v36 = v39;
        *(v35 - 1) = v37;
        *v35 = v38;
        v35 += 2;
        v36 += 2;
        v34 -= 4;
      }

      while (v34);
      v31 = v162 + v163 * v7;
      if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_25:
        v40 = (a1 + 8 * v33);
        v41 = (v6 + 8 * v33 + v16 * v29);
        v42 = a3 - v33;
        do
        {
          v43 = *v40;
          *v40++ = *v41;
          *v41++ = v43;
          --v42;
        }

        while (v42);
      }

      if (v13)
      {
        goto LABEL_32;
      }

      if (a6 >= 4)
      {
        v44 = 0;
        if ((v158 + 8 * v148 * v29 >= v147 || v156 + v155 * v29 <= v158) && (a5 & 0x8000000000000000) == 0)
        {
          v79 = (v146 + v19 * v29);
          v80 = v9 & 0x7FFFFFFC;
          v81 = v18;
          do
          {
            v82 = *(v81 - 1);
            v83 = *v81;
            v84 = *v79;
            *(v81 - 1) = *(v79 - 1);
            *v81 = v84;
            *(v79 - 1) = v82;
            *v79 = v83;
            v81 += 2;
            v79 += 2;
            v80 -= 4;
          }

          while (v80);
          v44 = v9 & 0x7FFFFFFC;
          if (v9 == v15)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = (a4 + 8 * v44);
      v46 = (v158 + 8 * v44 + v19 * v29);
      v47 = v9 - v44;
      do
      {
        v48 = *v45;
        *v45++ = *v46;
        *v46++ = v48;
        --v47;
      }

      while (v47);
LABEL_32:
      v161 = -v161;
    }

    v164 = v7 + 1;
    if (v7 + 1 < a3)
    {
      v49 = ~v7 + a3;
      v50 = v30 + 8;
      v54 = v150 + v160 * v7 < v31 && v50 < v151 || a2 < 0 || v49 < 4;
      v58 = v149 < v156 && v158 + v155 * v7 < v152 || a5 < 0 || a6 < 4;
      v60 = v169;
      v59 = v170;
      v61 = -1.0 / *(v6 + 8 * v10 * v7 + 8 * v7);
      v63 = v171;
      v62 = v172;
      v64 = v21;
      do
      {
        v65 = v61 * *(v6 + 8 * v10 * v64 + 8 * v7);
        v66 = v21;
        if (v54)
        {
          goto LABEL_137;
        }

        v67 = vdupq_lane_s64(*&v65, 0);
        v68 = v63;
        v69 = v20;
        v70 = v173 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v71 = vmlaq_f64(*v68, *v69, v67);
          v68[-1] = vmlaq_f64(v68[-1], v69[-1], v67);
          *v68 = v71;
          v69 += 2;
          v68 += 2;
          v70 -= 4;
        }

        while (v70);
        v66 = v21 + (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if (v49 != (v49 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_137:
          do
          {
            v62[v66] = v62[v66] + v65 * *(a1 + 8 * v66);
            ++v66;
          }

          while (a3 != v66);
        }

        if (v13)
        {
          goto LABEL_59;
        }

        if (v58)
        {
          v72 = 0;
        }

        else
        {
          v73 = vdupq_lane_s64(*&v65, 0);
          v74 = v59;
          v75 = v18;
          v76 = v9 & 0x7FFFFFFC;
          do
          {
            v77 = vmlaq_f64(*v74, *v75, v73);
            v74[-1] = vmlaq_f64(v74[-1], v75[-1], v73);
            *v74 = v77;
            v75 += 2;
            v74 += 2;
            v76 -= 4;
          }

          while (v76);
          v72 = v9 & 0x7FFFFFFC;
          if (v9 == v15)
          {
            goto LABEL_59;
          }
        }

        do
        {
          *(v60 + 8 * v72) = *(v60 + 8 * v72) + v65 * *(a4 + 8 * v72);
          ++v72;
        }

        while (v9 != v72);
LABEL_59:
        ++v64;
        v63 = (v63 + v16);
        v62 = (v62 + v16);
        v59 = (v59 + v19);
        v60 += v19;
      }

      while (v64 != a3);
    }

    ++v21;
    v24 = (v165 + v159);
    v23 = v166 - 1;
    v22 = v167 + 8;
    v17 = (v168 + v159);
    a1 += v16;
    v18 = (v18 + v19);
    a4 += v19;
    v20 = (v20 + v159);
    v171 += v159;
    v172 = (v172 + v16);
    --v173;
    v170 += v19;
    v169 += v19;
    ++v7;
  }

  while (v164 != a3);
  if (v158 && a6 >= 1)
  {
    v86 = v10 + 1;
    if (a6 <= 3)
    {
      v87 = (v158 + 8 * v148 * a3);
      v88 = a3 - 1;
      v89 = (v6 + 8 * v10 * v145 + 8 * a3);
      v90 = 8 * ~v10;
      while (1)
      {
        v91 = (v158 + 8 * v148 * v88);
        v92 = v86 * v88;
        v93 = *v91;
        if (v8 >= a3)
        {
          *v91 = v93 / *(v6 + 8 * v92);
          if (a6 == 1)
          {
            goto LABEL_89;
          }

          v91[1] = v91[1] / *(v6 + 8 * v92);
          if (a6 == 2)
          {
            goto LABEL_89;
          }

          v106 = v91[2];
          v102 = v91 + 2;
          v104 = v106;
        }

        else
        {
          v94 = v89;
          v95 = v87;
          v96 = v8;
          do
          {
            v97 = *v94++;
            v93 = v93 - v97 * *v95;
            ++v96;
            v95 = (v95 + v19);
          }

          while (v96 < a3);
          *v91 = v93 / *(v6 + 8 * v92);
          if (a6 == 1)
          {
            goto LABEL_89;
          }

          v98 = 0;
          v99 = v91[1];
          v100 = 8;
          do
          {
            v99 = v99 - v89[v98++] * *(v87 + v100);
            v100 += v19;
          }

          while (v8 + v98 < a3);
          v91[1] = v99 / *(v6 + 8 * v92);
          if (a6 == 2)
          {
            goto LABEL_89;
          }

          v101 = 0;
          v103 = v91[2];
          v102 = v91 + 2;
          v104 = v103;
          v105 = 16;
          do
          {
            v104 = v104 - v89[v101++] * *(v87 + v105);
            v105 += v19;
          }

          while (v8 + v101 < a3);
        }

        *v102 = v104 / *(v6 + 8 * v92);
LABEL_89:
        --v8;
        v87 = (v87 - v19);
        v89 = (v89 + v90);
        v12 = v88-- <= 0;
        if (v12)
        {
          return v161;
        }
      }
    }

    v107 = a3 - 1;
    v108 = v158 + 8 * v148 * v145;
    v109 = v6 + 8 * v86 * v145 >= v156 || v108 >= v6 + 8;
    if (v109 && ((-8 * v148) & 0x8000000000000000) == 0 && a2 < 0)
    {
      v110 = (v108 + 16);
      v111 = (v108 + 32 * ((v9 >> 2) & 0x1FFFFFFF));
      v112 = (v6 + 8 * v10 * v145 + 8 * a3);
      v113 = 8 * ~v10;
      v114 = (v158 + 8 * v148 * a3);
      do
      {
        v115 = v86 * v107;
        if (v8 >= a3)
        {
          v124 = (v6 + 8 * v115);
          v125 = vld1q_dup_f64(v124);
          v126 = v9 & 0x7FFFFFFC;
          v127 = v110;
          do
          {
            v128 = vdivq_f64(*v127, v125);
            v127[-1] = vdivq_f64(v127[-1], v125);
            *v127 = v128;
            v127 += 2;
            v126 -= 4;
          }

          while (v126);
          if (v9 != v15)
          {
            v129 = v9 - v15;
            v130 = v111;
            do
            {
              *v130 = *v130 / *(v6 + 8 * v115);
              ++v130;
              --v129;
            }

            while (v129);
          }
        }

        else
        {
          v116 = 0;
          v117 = v158 + 8 * v148 * v107;
          v118 = v114;
          do
          {
            v119 = *(v117 + 8 * v116);
            v120 = v8;
            v121 = v118;
            v122 = v112;
            do
            {
              v123 = *v122++;
              v119 = v119 - v123 * *v121;
              v121 = (v121 + v19);
              ++v120;
            }

            while (v120 < a3);
            *(v117 + 8 * v116++) = v119 / *(v6 + 8 * v115);
            ++v118;
          }

          while (v116 != v9);
        }

        --v8;
        v110 = (v110 - 8 * v148);
        v111 -= v148;
        v112 = (v112 + v113);
        v114 -= v148;
        v12 = v107-- <= 0;
      }

      while (!v12);
    }

    else
    {
      v131 = (v158 + 8 * v148 * a3);
      v132 = (v6 + 8 * v10 * v145 + 8 * a3);
      v133 = 8 * ~v10;
      do
      {
        v134 = v86 * v107;
        v135 = v108;
        v136 = v9;
        if (v8 >= a3)
        {
          do
          {
            *v135 = *v135 / *(v6 + 8 * v134);
            ++v135;
            --v136;
          }

          while (v136);
        }

        else
        {
          v137 = 0;
          v138 = v158 + 8 * v148 * v107;
          v139 = v131;
          do
          {
            v140 = *(v138 + 8 * v137);
            v141 = v132;
            v142 = v139;
            v143 = v8;
            do
            {
              v144 = *v141++;
              v140 = v140 - v144 * *v142;
              ++v143;
              v142 = (v142 + v19);
            }

            while (v143 < a3);
            *(v138 + 8 * v137++) = v140 / *(v6 + 8 * v134);
            ++v139;
          }

          while (v137 != v9);
        }

        --v8;
        v108 -= v19;
        v131 = (v131 - v19);
        v132 = (v132 + v133);
        v12 = v107-- <= 0;
      }

      while (!v12);
    }
  }

  return v161;
}

BOOL sub_10027FA5C(float *a1, unint64_t a2, int a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  sub_1002ACE7C(v14, &off_100475160);
  v12 = sub_10027FAF0(a1, a2, a3, a4, a5, a6);
  if (v15)
  {
    sub_1002ACC1C(v14);
  }

  return v12;
}

BOOL sub_10027FAF0(float *a1, unint64_t a2, int a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = a2 >> 2;
  if (a3 < 1)
  {
LABEL_20:
    if (a4)
    {
      v33 = (a3 - 1);
      if (a3 >= 1)
      {
        if (a6 >= 1)
        {
          v34 = 0;
          v35 = a5 >> 2;
          v36 = v6 + 1;
          v37 = a6;
          v38 = a3 - 1;
          v39 = (a2 & 0xFFFFFFFFFFFFFFFCLL) + 4;
          v40 = a1 + v38 * v39 + 4 > a4 && a4 + 4 * (a6 + (a5 >> 2) * v38) > a1;
          v41 = v40;
          v42 = a6 & 0x7FFFFFF8;
          v43 = (a6 < 8 || ((v39 | a5) & 0x8000000000000000) != 0) | v41;
          v44 = 4 * v35;
          v45 = (a4 + 16);
          v46 = a4;
          v47 = a1;
          while (1)
          {
            v48 = v36 * v34;
            if (v34)
            {
              v49 = 0;
              v50 = a4 + 4 * v35 * v34;
              v51 = a4;
              do
              {
                v52 = 0;
                v53 = *(v50 + 4 * v49);
                v54 = v51;
                do
                {
                  v53 = v53 - (v47[v52++] * *v54);
                  v54 = (v54 + v44);
                }

                while (v34 != v52);
                v55 = v53 * a1[v48];
                *(v50 + 4 * v49++) = v55;
                ++v51;
              }

              while (v49 != a6);
              goto LABEL_30;
            }

            if (v43)
            {
              v56 = 0;
            }

            else
            {
              v57 = &a1[v48];
              v58 = vld1q_dup_f32(v57);
              v59 = a6 & 0x7FFFFFF8;
              v60 = v45;
              do
              {
                v61 = vmulq_f32(*v60, v58);
                v60[-1] = vmulq_f32(v60[-1], v58);
                *v60 = v61;
                v60 += 2;
                v59 -= 8;
              }

              while (v59);
              v56 = a6 & 0x7FFFFFF8;
              if (v42 == a6)
              {
                goto LABEL_30;
              }
            }

            v62 = (v46 + 4 * v56);
            v63 = a6 - v56;
            do
            {
              *v62 = *v62 * a1[v48];
              ++v62;
              --v63;
            }

            while (v63);
LABEL_30:
            ++v34;
            v47 += v6;
            v45 = (v45 + v44);
            v46 += v44;
            if (v34 == a3)
            {
              v66 = a4 + 4 * v35 * v33;
              v69 = v66 < (a1 + 1) && &a1[v36 * v33] < a4 + 4 * a6 || ((-4 * v35) & 0x8000000000000000) != 0;
              v70 = a6 < 8 || (a2 & 0x8000000000000000) == 0 || v69;
              v71 = (v66 + 16);
              v72 = (a3 - 1);
              while (1)
              {
                v73 = v36 * v72;
                if (v72 < v33)
                {
                  v74 = 0;
                  v75 = a4 + 4 * v35 * v72;
                  do
                  {
                    v76 = *(v75 + 4 * v74);
                    v77 = a3 - 2 + 1;
                    do
                    {
                      v76 = v76 - (a1[v72 + v6 * v77] * *(a4 + 4 * v74 + 4 * v35 * v77));
                      --v77;
                    }

                    while (v72 < v77);
                    v78 = v76 * a1[v73];
                    *(v75 + 4 * v74++) = v78;
                  }

                  while (v74 != v37);
                  goto LABEL_59;
                }

                if (v70)
                {
                  v79 = 0;
                }

                else
                {
                  v80 = &a1[v73];
                  v81 = vld1q_dup_f32(v80);
                  v82 = v37 & 0x7FFFFFF8;
                  v83 = v71;
                  do
                  {
                    v84 = vmulq_f32(*v83, v81);
                    v83[-1] = vmulq_f32(v83[-1], v81);
                    *v83 = v84;
                    v83 += 2;
                    v82 -= 8;
                  }

                  while (v82);
                  v79 = v37 & 0x7FFFFFF8;
                  if (v42 == v37)
                  {
                    goto LABEL_59;
                  }
                }

                v85 = (v66 + 4 * v79);
                v86 = v37 - v79;
                do
                {
                  *v85 = *v85 * a1[v73];
                  ++v85;
                  --v86;
                }

                while (v86);
LABEL_59:
                v71 = (v71 - 4 * v35);
                v66 -= 4 * v35;
                v40 = v72-- <= 0;
                if (v40)
                {
                  goto LABEL_74;
                }
              }
            }
          }
        }

LABEL_74:
        v87 = a3;
        v88 = 4 * v6 + 4;
        do
        {
          *a1 = 1.0 / *a1;
          a1 = (a1 + v88);
          --v87;
        }

        while (v87);
      }
    }

    else if (a3 >= 1)
    {
      v64 = a3;
      v65 = 4 * v6 + 4;
      do
      {
        *a1 = 1.0 / *a1;
        a1 = (a1 + v65);
        --v64;
      }

      while (v64);
    }

    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = 4 * v6;
  v10 = (a1 + 4);
  v11 = a1;
  while (1)
  {
    v12 = &a1[v6 * v7];
    v13 = &v12[v7];
    if (v7)
    {
      v14 = 0;
      v15 = v7 & 0xFFFFFFFFFFFFFFF8;
      v16 = a1;
      do
      {
        v18 = v12[v14];
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            v18 = v18 - (v11[i] * v16[i]);
          }
        }

        v17 = v18 * a1[(v6 + 1) * v14];
        v12[v14++] = v17;
        v16 = (v16 + v9);
      }

      while (v14 != v7);
      v20 = *v13;
      if (v7 < 8)
      {
        v21 = 0;
        goto LABEL_16;
      }

      v21 = v7 & 0x7FFFFFFFFFFFFFF8;
      v22 = v10;
      do
      {
        v23 = v22[-1];
        v24 = vcvt_hight_f64_f32(v23);
        v25 = vcvtq_f64_f32(*v23.f32);
        v26 = vcvt_hight_f64_f32(*v22);
        v27 = vcvtq_f64_f32(*v22->f32);
        v28 = vmulq_f64(vnegq_f64(v24), v24);
        v29 = vmulq_f64(vnegq_f64(v25), v25);
        v30 = vmulq_f64(vnegq_f64(v26), v26);
        v31 = vmulq_f64(vnegq_f64(v27), v27);
        v20 = v20 + v29.f64[0] + v29.f64[1] + v28.f64[0] + v28.f64[1] + v31.f64[0] + v31.f64[1] + v30.f64[0] + v30.f64[1];
        v22 += 2;
        v15 -= 8;
      }

      while (v15);
      while (v7 != v21)
      {
LABEL_16:
        v20 = v20 - v11[v21] * v11[v21];
        ++v21;
      }
    }

    else
    {
      v20 = *v13;
    }

    if (v20 < 0.00000011920929)
    {
      return v8;
    }

    v32 = 1.0 / sqrt(v20);
    *v13 = v32;
    ++v7;
    v11 = (v11 + v9);
    v10 = (v10 + v9);
    v8 = v7 >= a3;
    if (v7 == a3)
    {
      goto LABEL_20;
    }
  }
}

BOOL sub_10027FFE8(double *a1, unint64_t a2, int a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  sub_1002ACE7C(v14, &off_100475180);
  v12 = sub_10028007C(a1, a2, a3, a4, a5, a6);
  if (v15)
  {
    sub_1002ACC1C(v14);
  }

  return v12;
}

BOOL sub_10028007C(double *a1, unint64_t a2, int a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = a2 >> 3;
  if (a3 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * v6;
    v10 = a1;
    v11 = (a1 + 2);
    do
    {
      v12 = &a1[v6 * v7];
      v13 = &v12[v7];
      if (v7)
      {
        v14 = 0;
        v15 = a1;
        v16 = (a1 + 2);
        do
        {
          v17 = v12[v14];
          if (v14)
          {
            if (v14 < 4)
            {
              v18 = 0;
              goto LABEL_12;
            }

            v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
            v18 = v14 & 0x7FFFFFFFFFFFFFFCLL;
            v20 = v16;
            v21 = v11;
            do
            {
              v22 = vmulq_f64(v20[-1], vnegq_f64(v21[-1]));
              v23 = vmulq_f64(*v20, vnegq_f64(*v21));
              v17 = v17 + v22.f64[0] + v22.f64[1] + v23.f64[0] + v23.f64[1];
              v21 += 2;
              v20 += 2;
              v19 -= 4;
            }

            while (v19);
            while (v14 != v18)
            {
LABEL_12:
              v17 = v17 - v10[v18] * v15[v18];
              ++v18;
            }
          }

          v12[v14] = v17 * a1[(v6 + 1) * v14];
          ++v14;
          v16 = (v16 + v9);
          v15 = (v15 + v9);
        }

        while (v14 != v7);
        v24 = 0;
        v25 = *v13;
        do
        {
          v25 = v25 - v10[v24] * v10[v24];
          ++v24;
        }

        while (v7 != v24);
        if (v25 < 2.22044605e-16)
        {
          return v8;
        }
      }

      else
      {
        v25 = *v13;
        if (*v13 < 2.22044605e-16)
        {
          return v8;
        }
      }

      *v13 = 1.0 / sqrt(v25);
      ++v7;
      v11 = (v11 + v9);
      v10 = (v10 + v9);
      v8 = v7 >= a3;
    }

    while (v7 != a3);
  }

  if (a4)
  {
    v26 = (a3 - 1);
    if (a3 >= 1)
    {
      if (a6 >= 1)
      {
        v27 = 0;
        v28 = a5 >> 3;
        v29 = v6 + 1;
        v30 = a6;
        v31 = a3 - 1;
        v32 = (a2 & 0xFFFFFFFFFFFFFFF8) + 8;
        v33 = a1 + v31 * v32 + 8 > a4 && a4 + 8 * (a6 + (a5 >> 3) * v31) > a1;
        v34 = v33;
        v35 = a6 & 0x7FFFFFFC;
        v36 = (a6 < 4 || ((v32 | a5) & 0x8000000000000000) != 0) | v34;
        v37 = 8 * v28;
        v38 = (a4 + 16);
        v39 = a4;
        v40 = a1;
        while (1)
        {
          v41 = v29 * v27;
          if (v27)
          {
            v42 = 0;
            v43 = a4 + 8 * v28 * v27;
            v44 = a4;
            do
            {
              v45 = 0;
              v46 = *(v43 + 8 * v42);
              v47 = v44;
              do
              {
                v46 = v46 - v40[v45++] * *v47;
                v47 = (v47 + v37);
              }

              while (v27 != v45);
              *(v43 + 8 * v42++) = v46 * a1[v41];
              ++v44;
            }

            while (v42 != a6);
            goto LABEL_31;
          }

          if (v36)
          {
            v48 = 0;
          }

          else
          {
            v49 = &a1[v41];
            v50 = vld1q_dup_f64(v49);
            v51 = a6 & 0x7FFFFFFC;
            v52 = v38;
            do
            {
              v53 = vmulq_f64(*v52, v50);
              v52[-1] = vmulq_f64(v52[-1], v50);
              *v52 = v53;
              v52 += 2;
              v51 -= 4;
            }

            while (v51);
            v48 = a6 & 0x7FFFFFFC;
            if (v35 == a6)
            {
              goto LABEL_31;
            }
          }

          v54 = (v39 + 8 * v48);
          v55 = a6 - v48;
          do
          {
            *v54 = *v54 * a1[v41];
            ++v54;
            --v55;
          }

          while (v55);
LABEL_31:
          ++v27;
          v40 += v6;
          v38 = (v38 + v37);
          v39 += v37;
          if (v27 == a3)
          {
            v58 = a4 + 8 * v28 * v26;
            v61 = v58 < (a1 + 1) && &a1[v29 * v26] < a4 + 8 * a6 || ((-8 * v28) & 0x8000000000000000) != 0;
            v62 = a6 < 4 || (a2 & 0x8000000000000000) == 0 || v61;
            v63 = (v58 + 16);
            v64 = (a3 - 1);
            while (1)
            {
              v65 = v29 * v64;
              if (v64 < v26)
              {
                v66 = 0;
                v67 = a4 + 8 * v28 * v64;
                do
                {
                  v68 = *(v67 + 8 * v66);
                  v69 = a3 - 2 + 1;
                  do
                  {
                    v68 = v68 - a1[v64 + v6 * v69] * *(a4 + 8 * v66 + 8 * v28 * v69);
                    --v69;
                  }

                  while (v64 < v69);
                  *(v67 + 8 * v66++) = v68 * a1[v65];
                }

                while (v66 != v30);
                goto LABEL_60;
              }

              if (v62)
              {
                v70 = 0;
              }

              else
              {
                v71 = &a1[v65];
                v72 = vld1q_dup_f64(v71);
                v73 = v30 & 0x7FFFFFFC;
                v74 = v63;
                do
                {
                  v75 = vmulq_f64(*v74, v72);
                  v74[-1] = vmulq_f64(v74[-1], v72);
                  *v74 = v75;
                  v74 += 2;
                  v73 -= 4;
                }

                while (v73);
                v70 = v30 & 0x7FFFFFFC;
                if (v35 == v30)
                {
                  goto LABEL_60;
                }
              }

              v76 = (v58 + 8 * v70);
              v77 = v30 - v70;
              do
              {
                *v76 = *v76 * a1[v65];
                ++v76;
                --v77;
              }

              while (v77);
LABEL_60:
              v63 = (v63 - 8 * v28);
              v58 -= 8 * v28;
              v33 = v64-- <= 0;
              if (v33)
              {
                goto LABEL_75;
              }
            }
          }
        }
      }

LABEL_75:
      v78 = a3;
      v79 = 8 * v6 + 8;
      do
      {
        *a1 = 1.0 / *a1;
        a1 = (a1 + v79);
        --v78;
      }

      while (v78);
    }
  }

  else if (a3 >= 1)
  {
    v56 = a3;
    v57 = 8 * v6 + 8;
    do
    {
      *a1 = 1.0 / *a1;
      a1 = (a1 + v57);
      --v56;
    }

    while (v56);
  }

  return 1;
}

uint64_t sub_100280510(float *a1, unint64_t a2, unsigned int a3, int a4, int a5, float *a6, unint64_t a7, float *a8)
{
  sub_1002ACE7C(v132, &off_1004751A0);
  v15 = a8 != 0;
  if (a3)
  {
    v15 = a4 + a3;
  }

  v134 = v136;
  v135 = v15;
  if (v15 >= 0x109)
  {
    operator new[]();
  }

  if (a8)
  {
    v16 = a8;
  }

  else
  {
    v16 = &v136[a3];
  }

  v17 = (a4 - 1);
  if (a4 < 1)
  {
    goto LABEL_106;
  }

  v18 = 0;
  v19 = a2 >> 2;
  v129 = a7 >> 2;
  v20 = 4 * (a2 >> 2);
  v21 = v20 + 4;
  v22 = &a1[v20 / 4];
  v23 = 2 * (a2 >> 2);
  v24 = &a1[v23];
  v25 = a1;
  v26 = a3;
  v27 = a3;
  v28 = a1;
  v29 = a4;
  do
  {
    v30 = a3 - v18;
    v31 = 0;
    if (v30 >= 1)
    {
      v32 = v28;
      v33 = v136;
      v34 = v27;
      do
      {
        v35 = *v32;
        *v33++ = *v32;
        *v31.i32 = *v31.i32 + (v35 * v35);
        v32 = (v32 + v20);
        --v34;
      }

      while (v34);
    }

    v36 = v136[0];
    if (v136[0] >= 0.0)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = -1.0;
    }

    v38 = v136[0] + (v37 * sqrtf(*v31.i32));
    v136[0] = v38;
    if (v30 >= 1)
    {
      *v31.i32 = sqrtf((*v31.i32 + (v38 * v38)) - (v36 * v36));
      if (v27 <= 7)
      {
        v39 = 0;
LABEL_23:
        v44 = v27 - v39;
        v45 = &v136[v39];
        do
        {
          *v45 = *v45 / *v31.i32;
          ++v45;
          --v44;
        }

        while (v44);
        goto LABEL_25;
      }

      v40 = v27 & 0xFFFFFFF8;
      v39 = v40;
      v41 = vdupq_lane_s32(v31, 0);
      v42 = &v138;
      do
      {
        v43 = vdivq_f32(*v42, v41);
        v42[-1] = vdivq_f32(v42[-1], v41);
        *v42 = v43;
        v42 += 2;
        v40 -= 8;
      }

      while (v40);
      if (v39 != v27)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    if (a3 > v18)
    {
      v46 = v28;
      v47 = v18;
      do
      {
        v48 = 0.0;
        v49 = v136;
        v50 = v46;
        v51 = v27;
        do
        {
          v52 = *v49++;
          v48 = v48 + (v52 * *v50);
          v50 = (v50 + v20);
          --v51;
        }

        while (v51);
        v53 = 0;
        v54 = v46;
        do
        {
          *v54 = *v54 + ((v136[v53++] * -2.0) * v48);
          v54 = (v54 + v20);
        }

        while (v27 != v53);
        ++v47;
        ++v46;
      }

      while (v47 != a4);
    }

    v16[v18] = v136[0] * v136[0];
    if (v30 >= 2)
    {
      v55 = v27 - 1;
      v56 = v136[0];
      if (v55 <= 1)
      {
        v57 = 1;
LABEL_38:
        v62 = v27 - v57;
        v63 = (v25 + v20 * (v57 + v18));
        v64 = &v136[v57];
        do
        {
          v65 = *v64++;
          *v63 = v65 / v56;
          v63 = (v63 + v20);
          --v62;
        }

        while (v62);
        goto LABEL_10;
      }

      v58 = 0;
      v59 = v55 & 0xFFFFFFFFFFFFFFFELL;
      v57 = v55 | 1;
      v60 = &v137;
      do
      {
        v61 = *v60;
        *(v22 + v58) = *(v60 - 1) / v56;
        *(v24 + v58) = v61 / v56;
        v58 += v23 * 4;
        v60 += 2;
        v59 -= 2;
      }

      while (v59);
      if (v55 != (v55 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_38;
      }
    }

LABEL_10:
    ++v18;
    --v27;
    v28 = (v28 + v21);
    v22 = (v22 + v21);
    v24 = (v24 + v21);
    ++v25;
  }

  while (v18 != a4);
  v66 = a6;
  if (!a6)
  {
LABEL_106:
    v127 = 1;
    goto LABEL_107;
  }

  v67 = a3 - 1;
  if (a5 > 0)
  {
    v68 = 0;
    v69 = &a1[v23];
    v70 = v20 + 4;
    v71 = &a1[v20 / 4];
    v72 = 4 * v129;
    v73 = a1;
    while (1)
    {
      v136[0] = 1.0;
      if (v68 < v67)
      {
        v74 = v26 - 1;
        if (v74 > 1)
        {
          v76 = 0;
          v77 = v74 & 0xFFFFFFFFFFFFFFFELL;
          v75 = v74 | 1;
          v78 = &v137;
          do
          {
            v79 = *(v69 + v76);
            *(v78 - 1) = *(v71 + v76);
            *v78 = v79;
            v76 += v23 * 4;
            ++v78;
            v77 -= 2;
          }

          while (v77);
          if (v74 == (v74 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v75 = 1;
        }

        v80 = v26 - v75;
        v81 = &v136[v75];
        v82 = (v73 + v20 * (v75 + v68));
        do
        {
          *v81++ = *v82;
          v82 = (v82 + v20);
          --v80;
        }

        while (v80);
      }

LABEL_53:
      if (v68 < a3)
      {
        v83 = 0;
        v84 = v66;
        do
        {
          v85 = 0.0;
          v86 = v136;
          v87 = v84;
          v88 = v26;
          do
          {
            v89 = *v86++;
            v85 = v85 + (v89 * *v87);
            v87 = (v87 + v72);
            --v88;
          }

          while (v88);
          v90 = 0;
          v91 = v84;
          do
          {
            *v91 = *v91 + ((v85 * (v136[v90++] * -2.0)) * v16[v68]);
            v91 = (v91 + v72);
          }

          while (v26 != v90);
          ++v83;
          ++v84;
        }

        while (v83 != a5);
      }

      ++v68;
      --v26;
      v69 = (v69 + v70);
      v71 = (v71 + v70);
      ++v73;
      v66 = (v66 + v72);
      if (v68 == v29)
      {
        v66 = a6;
        goto LABEL_74;
      }
    }
  }

  v92 = 0;
  v93 = &a1[v23];
  v94 = v20 + 4;
  v95 = &a1[v20 / 4];
  v96 = a1;
  while (2)
  {
    if (v92 < v67)
    {
      v97 = a3 - 1;
      if (v97 <= 1)
      {
        v98 = 1;
        goto LABEL_70;
      }

      v99 = 0;
      v100 = v97 & 0xFFFFFFFFFFFFFFFELL;
      v98 = v97 | 1;
      v101 = &v137;
      do
      {
        v102 = *(v93 + v99);
        *(v101 - 1) = *(v95 + v99);
        *v101 = v102;
        v99 += v23 * 4;
        ++v101;
        v100 -= 2;
      }

      while (v100);
      if (v97 != (v97 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_70:
        v103 = a3 - v98;
        v104 = &v136[v98];
        v105 = (v96 + v20 * (v98 + v92));
        do
        {
          *v104++ = *v105;
          v105 = (v105 + v20);
          --v103;
        }

        while (v103);
      }
    }

    ++v92;
    --a3;
    v93 = (v93 + v94);
    v95 = (v95 + v94);
    ++v96;
    if (v92 != v29)
    {
      continue;
    }

    break;
  }

  v136[0] = 1.0;
LABEL_74:
  v106 = v19 + 1;
  v107 = &v66[v129 * v17];
  v109 = v107 < (a1 + 1) && &a1[(v19 + 1) * v17] < &v66[a5] || ((-4 * v129) & 0x8000000000000000) != 0;
  v110 = v109;
  v111 = (v107 + 16);
  v112 = v17;
  while (2)
  {
    if (v112 < v17)
    {
      if (a5 >= 1)
      {
        v113 = &a1[v112 * v19];
        v114 = &v66[v129 * v17];
        v115 = v17;
        if (a5 >= 8uLL)
        {
          do
          {
            v119 = v114;
            v120 = v107;
            v121 = a5;
            do
            {
              v122 = *v119++;
              *v120 = *v120 - (v122 * v113[v115]);
              ++v120;
              --v121;
            }

            while (v121);
            --v115;
            v114 -= v129;
          }

          while (v112 < v115);
        }

        else
        {
          v116 = &v66[v129 * v17];
          v117 = v17;
          do
          {
            v118 = 0;
            do
            {
              *(v107 + 4 * v118) = *(v107 + 4 * v118) - (v116[v118] * v113[v117]);
              ++v118;
            }

            while (a5 != v118);
            --v117;
            v116 -= v129;
          }

          while (v112 < v117);
        }

        break;
      }

      if (fabsf(a1[v112 * v106]) < 0.0000011921)
      {
        goto LABEL_110;
      }

LABEL_85:
      v107 -= 4 * v129;
      v111 = (v111 - 4 * v129);
      v109 = v112-- < 1;
      if (v109)
      {
        goto LABEL_106;
      }

      continue;
    }

    break;
  }

  v14.f32[0] = a1[v112 * v106];
  if (fabsf(v14.f32[0]) >= 0.0000011921)
  {
    if (a5 < 1)
    {
      goto LABEL_85;
    }

    if ((a5 < 8uLL || (a2 & 0x8000000000000000) == 0) | v110 & 1)
    {
      v123 = 0;
    }

    else
    {
      v14 = vdupq_lane_s32(*v14.f32, 0);
      v124 = a5 & 0x7FFFFFF8;
      v125 = v111;
      do
      {
        v126 = vdivq_f32(*v125, v14);
        v125[-1] = vdivq_f32(v125[-1], v14);
        *v125 = v126;
        v125 += 2;
        v124 -= 8;
      }

      while (v124);
      v123 = a5 & 0x7FFFFFF8;
      if (a5 == v123)
      {
        goto LABEL_85;
      }
    }

    do
    {
      *(v107 + 4 * v123) = *(v107 + 4 * v123) / a1[v112 * v106];
      ++v123;
    }

    while (a5 != v123);
    goto LABEL_85;
  }

LABEL_110:
  v127 = 0;
LABEL_107:
  if (v133)
  {
    sub_1002ACC1C(v132);
  }

  return v127;
}

void sub_100280C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a16 != v16)
  {
    if (a16)
    {
      operator delete[]();
    }
  }

  sub_1001D8BF4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_100280C9C(double *a1, unint64_t a2, unsigned int a3, int a4, int a5, double *a6, unint64_t a7, double *a8)
{
  sub_1002ACE7C(v134, &off_1004751C0);
  v14 = a8 != 0;
  if (a3)
  {
    v14 = a4 + a3;
  }

  v136 = v138;
  v137 = v14;
  if (v14 >= 0x89)
  {
    operator new[]();
  }

  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = &v138[a3];
  }

  v16 = (a4 - 1);
  if (a4 < 1)
  {
    goto LABEL_106;
  }

  v17 = 0;
  v18 = a2 >> 3;
  v131 = a7 >> 3;
  v19 = 8 * (a2 >> 3);
  v20 = v19 + 8;
  v21 = &a1[v19 / 8];
  v22 = 2 * (a2 >> 3);
  v23 = &a1[v22];
  v24 = a3;
  v25 = a1;
  v26 = a3;
  v27 = a1;
  v28 = a4;
  do
  {
    v29 = a3 - v17;
    v30 = 0.0;
    if (v29 >= 1)
    {
      v31 = v27;
      v32 = v138;
      v33 = v26;
      do
      {
        v34 = *v31;
        *v32++ = *v31;
        v30 = v30 + v34 * v34;
        v31 = (v31 + v19);
        --v33;
      }

      while (v33);
    }

    v35 = v138[0];
    if (v138[0] >= 0.0)
    {
      v36 = 1.0;
    }

    else
    {
      v36 = -1.0;
    }

    v37 = v138[0] + v36 * sqrt(v30);
    v138[0] = v37;
    if (v29 >= 1)
    {
      v38 = sqrt(v30 + v37 * v37 - v35 * v35);
      if (v26 <= 3)
      {
        v39 = 0;
LABEL_23:
        v44 = v26 - v39;
        v45 = &v138[v39];
        do
        {
          *v45 = *v45 / v38;
          ++v45;
          --v44;
        }

        while (v44);
        goto LABEL_25;
      }

      v40 = v26 & 0xFFFFFFFC;
      v39 = v40;
      v41 = vdupq_lane_s64(*&v38, 0);
      v42 = v139;
      do
      {
        v43 = vdivq_f64(*v42, v41);
        v42[-1] = vdivq_f64(v42[-1], v41);
        *v42 = v43;
        v42 += 2;
        v40 -= 4;
      }

      while (v40);
      if (v39 != v26)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    if (a3 > v17)
    {
      v46 = v27;
      v47 = v17;
      do
      {
        v48 = 0.0;
        v49 = v138;
        v50 = v46;
        v51 = v26;
        do
        {
          v52 = *v49++;
          v48 = v48 + v52 * *v50;
          v50 = (v50 + v19);
          --v51;
        }

        while (v51);
        v53 = 0;
        v54 = v46;
        do
        {
          *v54 = *v54 + v138[v53++] * -2.0 * v48;
          v54 = (v54 + v19);
        }

        while (v26 != v53);
        ++v47;
        ++v46;
      }

      while (v47 != a4);
    }

    v15[v17] = v138[0] * v138[0];
    if (v29 >= 2)
    {
      v55 = v26 - 1;
      v56 = v138[0];
      if (v55 <= 1)
      {
        v57 = 1;
LABEL_38:
        v62 = v26 - v57;
        v63 = (v25 + v19 * (v57 + v17));
        v64 = &v138[v57];
        do
        {
          v65 = *v64++;
          *v63 = v65 / v56;
          v63 = (v63 + v19);
          --v62;
        }

        while (v62);
        goto LABEL_10;
      }

      v58 = 0;
      v59 = v55 & 0xFFFFFFFFFFFFFFFELL;
      v57 = v55 | 1;
      v60 = v139;
      do
      {
        v61 = *v60;
        *(v21 + v58) = *(v60 - 1) / v56;
        *(v23 + v58) = v61 / v56;
        v58 += v22 * 8;
        v60 += 2;
        v59 -= 2;
      }

      while (v59);
      if (v55 != (v55 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_38;
      }
    }

LABEL_10:
    ++v17;
    --v26;
    v27 = (v27 + v20);
    v21 = (v21 + v20);
    v23 = (v23 + v20);
    ++v25;
  }

  while (v17 != a4);
  v66 = a6;
  if (!a6)
  {
LABEL_106:
    v129 = 1;
    goto LABEL_107;
  }

  v67 = a3 - 1;
  if (a5 > 0)
  {
    v68 = 0;
    v69 = &a1[v22];
    v70 = v19 + 8;
    v71 = &a1[v19 / 8];
    v72 = 8 * v131;
    v73 = a1;
    while (1)
    {
      v138[0] = 1.0;
      if (v68 < v67)
      {
        v74 = v24 - 1;
        if (v74 > 1)
        {
          v76 = 0;
          v77 = v74 & 0xFFFFFFFFFFFFFFFELL;
          v75 = v74 | 1;
          v78 = v139;
          do
          {
            v79 = *(v69 + v76);
            *(v78 - 1) = *(v71 + v76);
            *v78 = v79;
            v76 += v22 * 8;
            v78 += 2;
            v77 -= 2;
          }

          while (v77);
          if (v74 == (v74 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v75 = 1;
        }

        v80 = v24 - v75;
        v81 = &v138[v75];
        v82 = (v73 + v19 * (v75 + v68));
        do
        {
          *v81++ = *v82;
          v82 = (v82 + v19);
          --v80;
        }

        while (v80);
      }

LABEL_53:
      if (v68 < a3)
      {
        v83 = 0;
        v84 = v66;
        do
        {
          v85 = 0.0;
          v86 = v138;
          v87 = v84;
          v88 = v24;
          do
          {
            v89 = *v86++;
            v85 = v85 + v89 * *v87;
            v87 = (v87 + v72);
            --v88;
          }

          while (v88);
          v90 = 0;
          v91 = v84;
          do
          {
            *v91 = *v91 + v85 * (v138[v90++] * -2.0) * v15[v68];
            v91 = (v91 + v72);
          }

          while (v24 != v90);
          ++v83;
          ++v84;
        }

        while (v83 != a5);
      }

      ++v68;
      --v24;
      v69 = (v69 + v70);
      v71 = (v71 + v70);
      ++v73;
      v66 = (v66 + v72);
      if (v68 == v28)
      {
        v66 = a6;
        goto LABEL_74;
      }
    }
  }

  v92 = 0;
  v93 = &a1[v22];
  v94 = v19 + 8;
  v95 = &a1[v19 / 8];
  v96 = a1;
  while (2)
  {
    if (v92 < v67)
    {
      v97 = a3 - 1;
      if (v97 <= 1)
      {
        v98 = 1;
        goto LABEL_70;
      }

      v99 = 0;
      v100 = v97 & 0xFFFFFFFFFFFFFFFELL;
      v98 = v97 | 1;
      v101 = v139;
      do
      {
        v102 = *(v93 + v99);
        *(v101 - 1) = *(v95 + v99);
        *v101 = v102;
        v99 += v22 * 8;
        v101 += 2;
        v100 -= 2;
      }

      while (v100);
      if (v97 != (v97 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_70:
        v103 = a3 - v98;
        v104 = &v138[v98];
        v105 = (v96 + v19 * (v98 + v92));
        do
        {
          *v104++ = *v105;
          v105 = (v105 + v19);
          --v103;
        }

        while (v103);
      }
    }

    ++v92;
    --a3;
    v93 = (v93 + v94);
    v95 = (v95 + v94);
    ++v96;
    if (v92 != v28)
    {
      continue;
    }

    break;
  }

  v138[0] = 1.0;
LABEL_74:
  v106 = v18 + 1;
  v107 = &v66[v131 * v16];
  v109 = v107 < (a1 + 1) && &a1[(v18 + 1) * v16] < &v66[a5] || ((-8 * v131) & 0x8000000000000000) != 0;
  v110 = v109;
  v111 = (v107 + 16);
  v112 = v16;
  while (2)
  {
    if (v112 < v16)
    {
      if (a5 >= 1)
      {
        v113 = &a1[v112 * v18];
        v114 = &v66[v131 * v16];
        v115 = v16;
        if (a5 >= 4uLL)
        {
          do
          {
            v119 = v114;
            v120 = v107;
            v121 = a5;
            do
            {
              v122 = *v119++;
              *v120 = *v120 - v122 * v113[v115];
              ++v120;
              --v121;
            }

            while (v121);
            --v115;
            v114 -= v131;
          }

          while (v112 < v115);
        }

        else
        {
          v116 = &v66[v131 * v16];
          v117 = v16;
          do
          {
            v118 = 0;
            do
            {
              *(v107 + 8 * v118) = *(v107 + 8 * v118) - v116[v118] * v113[v117];
              ++v118;
            }

            while (a5 != v118);
            --v117;
            v116 -= v131;
          }

          while (v112 < v117);
        }

        break;
      }

      if (fabs(a1[v112 * v106]) < 2.22044605e-14)
      {
        goto LABEL_110;
      }

LABEL_85:
      v107 -= 8 * v131;
      v111 = (v111 - 8 * v131);
      v109 = v112-- < 1;
      if (v109)
      {
        goto LABEL_106;
      }

      continue;
    }

    break;
  }

  v123 = *&a1[v112 * v106];
  if (fabs(*&v123) >= 2.22044605e-14)
  {
    if (a5 < 1)
    {
      goto LABEL_85;
    }

    if ((a5 < 4uLL || (a2 & 0x8000000000000000) == 0) | v110 & 1)
    {
      v124 = 0;
    }

    else
    {
      v125 = vdupq_lane_s64(v123, 0);
      v126 = a5 & 0x7FFFFFFC;
      v127 = v111;
      do
      {
        v128 = vdivq_f64(*v127, v125);
        v127[-1] = vdivq_f64(v127[-1], v125);
        *v127 = v128;
        v127 += 2;
        v126 -= 4;
      }

      while (v126);
      v124 = a5 & 0x7FFFFFFC;
      if (a5 == v124)
      {
        goto LABEL_85;
      }
    }

    do
    {
      *(v107 + 8 * v124) = *(v107 + 8 * v124) / a1[v112 * v106];
      ++v124;
    }

    while (a5 != v124);
    goto LABEL_85;
  }

LABEL_110:
  v129 = 0;
LABEL_107:
  if (v135)
  {
    sub_1002ACC1C(v134);
  }

  return v129;
}

void sub_1002813E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a16 != v16)
  {
    if (a16)
    {
      operator delete[]();
    }
  }

  sub_1001D8BF4(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_100281424(uint64_t *result, uint64_t a2, int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    LODWORD(v5) = v4;
  }

  else
  {
    LODWORD(v5) = 4;
  }

  v6 = *result;
  if (v4 == 3)
  {
    LODWORD(v20) = 0;
    v21 = 0;
    v23 = result[1];
    v22 = result[2];
    if (a3 >= 17 && a4 == 3)
    {
      v24 = 0;
      v20 = 0;
      v25 = a2;
      do
      {
        v77.val[0] = *(v6 + v20);
        v77.val[1] = *(v23 + v20);
        v77.val[2] = *(v22 + v20);
        vst3q_s8(v25, v77);
        v25 += 48;
        v20 += 16;
        v24 += 0x3000000000;
      }

      while (v20 < (a3 - 16));
      v21 = v24 >> 32;
    }

    if (v20 < a3)
    {
      v26 = (v6 + v20);
      v27 = (v23 + v20);
      v28 = (v21 + a2 + 2);
      v29 = a3 - v20;
      v30 = (v22 + v20);
      do
      {
        v31 = *v26++;
        *(v28 - 2) = v31;
        v32 = *v27++;
        *(v28 - 1) = v32;
        v33 = *v30++;
        *v28 = v33;
        v28 += a4;
        --v29;
      }

      while (v29);
    }

    goto LABEL_54;
  }

  if (v4 == 2)
  {
    LODWORD(v9) = 0;
    v10 = 0;
    v11 = result[1];
    if (a3 >= 17 && a4 == 2)
    {
      v12 = 0;
      v9 = 0;
      v13 = a2;
      do
      {
        v76.val[0] = *(v6 + v9);
        v76.val[1] = *(v11 + v9);
        vst2q_s8(v13, v76);
        v13 += 32;
        v9 += 16;
        v12 += 0x2000000000;
      }

      while (v9 < (a3 - 16));
      v10 = v12 >> 32;
    }

    if (v9 < a3)
    {
      v14 = (v10 + a2 + 1);
      v15 = a3 - v9;
      v16 = (v11 + v9);
      v17 = (v6 + v9);
      do
      {
        v18 = *v17++;
        *(v14 - 1) = v18;
        v19 = *v16++;
        *v14 = v19;
        v14 += a4;
        --v15;
      }

      while (v15);
    }

    goto LABEL_54;
  }

  if (v4 != 1)
  {
    LODWORD(v34) = 0;
    v35 = 0;
    v37 = result[1];
    v36 = result[2];
    v38 = result[3];
    if (a3 >= 17 && a4 == 4)
    {
      v39 = 0;
      v34 = 0;
      v40 = a2;
      do
      {
        v78.val[0] = *(v6 + v34);
        v78.val[1] = *(v37 + v34);
        v78.val[2] = *(v36 + v34);
        v78.val[3] = *(v38 + v34);
        vst4q_s8(v40, v78);
        v40 += 64;
        v34 += 16;
        v39 += 0x4000000000;
      }

      while (v34 < (a3 - 16));
      v35 = v39 >> 32;
    }

    if (v34 < a3)
    {
      v41 = (v6 + v34);
      v42 = (v37 + v34);
      v43 = (v36 + v34);
      v44 = (v35 + a2 + 3);
      v45 = a3 - v34;
      v46 = (v38 + v34);
      do
      {
        v47 = *v41++;
        *(v44 - 3) = v47;
        v48 = *v42++;
        *(v44 - 2) = v48;
        v49 = *v43++;
        *(v44 - 1) = v49;
        v50 = *v46++;
        *v44 = v50;
        v44 += a4;
        --v45;
      }

      while (v45);
    }

    goto LABEL_54;
  }

  if (a3 < 1)
  {
    return result;
  }

  v7 = 0;
  if (a3 < 8 || a4 != 1)
  {
    v8 = 0;
    goto LABEL_52;
  }

  v8 = 0;
  if ((a2 - v6) < 0x20)
  {
    goto LABEL_52;
  }

  if (a3 < 0x20)
  {
    v8 = 0;
    goto LABEL_47;
  }

  v8 = a3 & 0x7FFFFFE0;
  v51 = (v6 + 16);
  v52 = (a2 + 16);
  v53 = v8;
  do
  {
    v54 = *v51;
    *(v52 - 1) = *(v51 - 1);
    *v52 = v54;
    v51 += 2;
    v52 += 2;
    v53 -= 32;
  }

  while (v53);
  if (v8 != a3)
  {
    if ((a3 & 0x18) == 0)
    {
      v7 = v8 * a4;
      goto LABEL_52;
    }

LABEL_47:
    v55 = v8;
    v8 = a3 & 0x7FFFFFF8;
    v7 = (a3 & 0x7FFFFFF8) * a4;
    v56 = (v6 + v55);
    v57 = v55 - v8;
    v58 = (a2 + v55 * a4);
    do
    {
      v59 = *v56++;
      *v58++ = v59;
      v57 += 8;
    }

    while (v57);
    if (v8 == a3)
    {
      goto LABEL_54;
    }

LABEL_52:
    v60 = (a2 + v7);
    v61 = a3 - v8;
    v62 = (v6 + v8);
    do
    {
      v63 = *v62++;
      *v60 = v63;
      v60 += a4;
      --v61;
    }

    while (v61);
  }

LABEL_54:
  if (a3 >= 1 && v5 < a4)
  {
    v5 = v5;
    v64 = v5 + a2 + 3;
    do
    {
      v65 = &result[v5];
      v66 = *v65;
      v67 = v65[1];
      v68 = v65[2];
      v69 = v65[3];
      v70 = a3;
      v71 = v64;
      do
      {
        v72 = *v66++;
        *(v71 - 3) = v72;
        v73 = *v67++;
        *(v71 - 2) = v73;
        v74 = *v68++;
        *(v71 - 1) = v74;
        v75 = *v69++;
        *v71 = v75;
        v71 += a4;
        --v70;
      }

      while (v70);
      v5 += 4;
      v64 += 4;
    }

    while (v5 < a4);
  }

  return result;
}

int16x8_t **sub_1002817B8(int16x8_t **result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v6 = *result;
  if (v4 == 3)
  {
    LODWORD(v25) = 0;
    v26 = 0;
    v28 = result[1];
    v27 = result[2];
    if (a3 >= 9 && a4 == 3)
    {
      v29 = 0;
      v25 = 0;
      v30 = *result;
      v31 = result[1];
      v32 = result[2];
      v33 = a2;
      do
      {
        v34 = *v30++;
        v101.val[0] = v34;
        v35 = *v31++;
        v101.val[1] = v35;
        v36 = *v32++;
        v101.val[2] = v36;
        vst3q_s16(v33, v101);
        v33 += 24;
        v25 += 8;
        v29 += 0x1800000000;
      }

      while (v25 < (a3 - 8));
      v26 = v29 >> 32;
    }

    if (v25 < a3)
    {
      v37 = v25;
      v38 = v25;
      v39 = &v6->i16[v38];
      v40 = &v28->i16[v38];
      v41 = &a2->i16[v26 + 1];
      v42 = a3 - v37;
      v43 = &v27->i16[v38];
      do
      {
        v44 = *v39++;
        *(v41 - 1) = v44;
        v45 = *v40++;
        *v41 = v45;
        v46 = *v43++;
        v41[1] = v46;
        v41 += a4;
        --v42;
      }

      while (v42);
    }

    goto LABEL_54;
  }

  if (v4 == 2)
  {
    LODWORD(v9) = 0;
    v10 = 0;
    v11 = result[1];
    if (a3 >= 9 && a4 == 2)
    {
      v12 = 0;
      v9 = 0;
      v13 = *result;
      v14 = result[1];
      v15 = a2;
      do
      {
        v16 = *v13++;
        v100.val[0] = v16;
        v17 = *v14++;
        v100.val[1] = v17;
        vst2q_s16(v15, v100);
        v15 += 16;
        v9 += 8;
        v12 += 0x1000000000;
      }

      while (v9 < (a3 - 8));
      v10 = v12 >> 32;
    }

    if (v9 < a3)
    {
      v18 = &a2->i16[v10 + 1];
      v19 = a3 - v9;
      v20 = v9;
      v21 = &v11->i16[v20];
      v22 = &v6->i16[v20];
      do
      {
        v23 = *v22++;
        *(v18 - 1) = v23;
        v24 = *v21++;
        *v18 = v24;
        v18 += a4;
        --v19;
      }

      while (v19);
    }

    goto LABEL_54;
  }

  if (v4 != 1)
  {
    LODWORD(v47) = 0;
    v48 = 0;
    v50 = result[1];
    v49 = result[2];
    v51 = result[3];
    if (a3 >= 9 && a4 == 4)
    {
      v52 = 0;
      v47 = 0;
      v53 = *result;
      v54 = result[1];
      v55 = result[2];
      v56 = result[3];
      v57 = a2;
      do
      {
        v58 = *v53++;
        v102.val[0] = v58;
        v59 = *v54++;
        v102.val[1] = v59;
        v60 = *v55++;
        v102.val[2] = v60;
        v61 = *v56++;
        v102.val[3] = v61;
        vst4q_s16(v57, v102);
        v57 += 32;
        v47 += 8;
        v52 += 0x2000000000;
      }

      while (v47 < (a3 - 8));
      v48 = v52 >> 32;
    }

    if (v47 < a3)
    {
      v62 = v47;
      v63 = v47;
      v64 = &v6->i16[v63];
      v65 = &v50->i16[v63];
      v66 = &v49->i16[v63];
      v67 = &a2->i16[v48 + 2];
      v68 = a3 - v62;
      v69 = &v51->i16[v63];
      do
      {
        v70 = *v64++;
        *(v67 - 2) = v70;
        v71 = *v65++;
        *(v67 - 1) = v71;
        v72 = *v66++;
        *v67 = v72;
        v73 = *v69++;
        v67[1] = v73;
        v67 += a4;
        --v68;
      }

      while (v68);
    }

    goto LABEL_54;
  }

  if (a3 < 1)
  {
    return result;
  }

  v7 = 0;
  if (a3 < 4 || a4 != 1)
  {
    v8 = 0;
    goto LABEL_52;
  }

  v8 = 0;
  if ((a2 - v6) < 0x20)
  {
    goto LABEL_52;
  }

  if (a3 < 0x10)
  {
    v8 = 0;
    goto LABEL_47;
  }

  v8 = a3 & 0x7FFFFFF0;
  v74 = v6 + 1;
  v75 = a2 + 1;
  v76 = v8;
  do
  {
    v77 = *v74;
    v75[-1] = v74[-1];
    *v75 = v77;
    v74 += 2;
    v75 += 2;
    v76 -= 16;
  }

  while (v76);
  if (v8 != a3)
  {
    if ((a3 & 0xC) == 0)
    {
      v7 = v8 * a4;
      goto LABEL_52;
    }

LABEL_47:
    v78 = v8;
    v8 = a3 & 0x7FFFFFFC;
    v7 = (a3 & 0x7FFFFFFC) * a4;
    v79 = (v6->i64 + 2 * v78);
    v80 = v78 - v8;
    v81 = (a2->i64 + 2 * v78 * a4);
    do
    {
      v82 = *v79++;
      *v81++ = v82;
      v80 += 4;
    }

    while (v80);
    if (v8 == a3)
    {
      goto LABEL_54;
    }

LABEL_52:
    v83 = &a2->i16[v7];
    v84 = a3 - v8;
    v85 = &v6->i16[v8];
    do
    {
      v86 = *v85++;
      *v83 = v86;
      v83 += a4;
      --v84;
    }

    while (v84);
  }

LABEL_54:
  if (a3 >= 1 && v5 < a4)
  {
    v87 = v5;
    v88 = a2->i64 + 2 * v5 + 4;
    do
    {
      v89 = &result[v87];
      v90 = *v89;
      v91 = v89[1];
      v92 = v89[2];
      v93 = v89[3];
      v94 = a3;
      v95 = v88;
      do
      {
        v96 = v90->i16[0];
        v90 = (v90 + 2);
        *(v95 - 2) = v96;
        v97 = v91->i16[0];
        v91 = (v91 + 2);
        *(v95 - 1) = v97;
        v98 = v92->i16[0];
        v92 = (v92 + 2);
        *v95 = v98;
        v99 = v93->i16[0];
        v93 = (v93 + 2);
        v95[1] = v99;
        v95 += a4;
        --v94;
      }

      while (v94);
      v87 += 4;
      v88 += 8;
    }

    while (v87 < a4);
  }

  return result;
}

float32x4_t **sub_100281B88(float32x4_t **result, uint64_t a2, int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v6 = *result;
  if (v4 == 3)
  {
    LODWORD(v29) = 0;
    v30 = 0;
    v32 = result[1];
    v31 = result[2];
    if (a3 >= 5 && a4 == 3)
    {
      v33 = 0;
      v29 = 0;
      v34 = *result;
      v35 = result[1];
      v36 = result[2];
      v37 = a2;
      do
      {
        v38 = *v34++;
        v96.val[0] = v38;
        v39 = *v35++;
        v96.val[1] = v39;
        v40 = *v36++;
        v96.val[2] = v40;
        vst3q_f32(v37, v96);
        v37 += 12;
        v29 += 4;
        v33 += 0xC00000000;
      }

      while (v29 < (a3 - 4));
      v30 = v33 >> 32;
    }

    if (v29 < a3)
    {
      v41 = v29;
      v42 = 4 * v29;
      v43 = (v6 + v42);
      v44 = (v32 + v42);
      v45 = (a2 + 4 * v30 + 4);
      v46 = a3 - v41;
      v47 = (v31 + v42);
      do
      {
        v48 = *v43++;
        *(v45 - 1) = v48;
        v49 = *v44++;
        *v45 = v49;
        v50 = *v47++;
        v45[1] = v50;
        v45 += a4;
        --v46;
      }

      while (v46);
    }

    goto LABEL_48;
  }

  if (v4 == 2)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = result[1];
    if (a3 >= 5 && a4 == 2)
    {
      v16 = 0;
      v13 = 0;
      v17 = *result;
      v18 = result[1];
      v19 = a2;
      do
      {
        v20 = *v17++;
        v95.val[0] = v20;
        v21 = *v18++;
        v95.val[1] = v21;
        vst2q_f32(v19, v95);
        v19 += 8;
        v13 += 4;
        v16 += 0x800000000;
      }

      while (v13 < (a3 - 4));
      v14 = v16 >> 32;
    }

    if (v13 < a3)
    {
      v22 = (a2 + 4 * v14 + 4);
      v23 = a3 - v13;
      v24 = 4 * v13;
      v25 = (v15 + v24);
      v26 = (v6 + v24);
      do
      {
        v27 = *v26++;
        *(v22 - 1) = v27;
        v28 = *v25++;
        *v22 = v28;
        v22 += a4;
        --v23;
      }

      while (v23);
    }

    goto LABEL_48;
  }

  if (v4 != 1)
  {
    LODWORD(v51) = 0;
    v52 = 0;
    v54 = result[1];
    v53 = result[2];
    v55 = result[3];
    if (a3 >= 5 && a4 == 4)
    {
      v56 = 0;
      v51 = 0;
      v57 = *result;
      v58 = result[1];
      v59 = result[2];
      v60 = result[3];
      v61 = a2;
      do
      {
        v62 = *v57++;
        v97.val[0] = v62;
        v63 = *v58++;
        v97.val[1] = v63;
        v64 = *v59++;
        v97.val[2] = v64;
        v65 = *v60++;
        v97.val[3] = v65;
        vst4q_f32(v61, v97);
        v61 += 16;
        v51 += 4;
        v56 += 0x1000000000;
      }

      while (v51 < (a3 - 4));
      v52 = v56 >> 32;
    }

    if (v51 < a3)
    {
      v66 = v51;
      v67 = 4 * v51;
      v68 = (v6 + v67);
      v69 = (v54 + v67);
      v70 = (v53 + v67);
      v71 = (a2 + 4 * v52 + 8);
      v72 = a3 - v66;
      v73 = (v55 + v67);
      do
      {
        v74 = *v68++;
        *(v71 - 2) = v74;
        v75 = *v69++;
        *(v71 - 1) = v75;
        v76 = *v70++;
        *v71 = v76;
        v77 = *v73++;
        v71[1] = v77;
        v71 += a4;
        --v72;
      }

      while (v72);
    }

    goto LABEL_48;
  }

  if (a3 < 1)
  {
    return result;
  }

  v7 = 0;
  if (a3 < 8 || a4 != 1)
  {
    v8 = 0;
LABEL_46:
    v78 = (a2 + 4 * v7);
    v79 = a3 - v8;
    v80 = &v6->i32[v8];
    do
    {
      v81 = *v80++;
      *v78 = v81;
      v78 += a4;
      --v79;
    }

    while (v79);
    goto LABEL_48;
  }

  v8 = 0;
  if ((a2 - v6) < 0x20)
  {
    goto LABEL_46;
  }

  v8 = a3 & 0x7FFFFFF8;
  v7 = (a3 & 0x7FFFFFF8) * a4;
  v9 = &v6[1];
  v10 = (a2 + 16);
  v11 = v8;
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
  if (v8 != a3)
  {
    goto LABEL_46;
  }

LABEL_48:
  if (a3 >= 1 && v5 < a4)
  {
    v82 = v5;
    v83 = a2 + 4 * v5 + 8;
    do
    {
      v84 = &result[v82];
      v85 = *v84;
      v86 = v84[1];
      v87 = v84[2];
      v88 = v84[3];
      v89 = a3;
      v90 = v83;
      do
      {
        v91 = v85->i32[0];
        v85 = (v85 + 4);
        *(v90 - 2) = v91;
        v92 = v86->i32[0];
        v86 = (v86 + 4);
        *(v90 - 1) = v92;
        v93 = v87->i32[0];
        v87 = (v87 + 4);
        *v90 = v93;
        v94 = v88->i32[0];
        v88 = (v88 + 4);
        v90[1] = v94;
        v90 += a4;
        --v89;
      }

      while (v89);
      v82 += 4;
      v83 += 16;
    }

    while (v82 < a4);
  }

  return result;
}

uint64_t **sub_100281F00(uint64_t **result, uint64_t a2, int a3, int a4)
{
  if (a4 <= 0)
  {
    v4 = -(-a4 & 3);
  }

  else
  {
    v4 = a4 & 3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v6 = *result;
  if (v4 != 3)
  {
    if (v4 != 2)
    {
      if (v4 == 1)
      {
        if (a3 < 1)
        {
          return result;
        }

        v7 = 0;
        if (a3 >= 6 && a4 == 1)
        {
          v8 = 0;
          if ((a2 - v6) >= 0x20)
          {
            v8 = a3 & 0x7FFFFFFC;
            v7 = (a3 & 0x7FFFFFFC) * a4;
            v9 = (v6 + 2);
            v10 = (a2 + 16);
            v11 = v8;
            do
            {
              v12 = *v9;
              *(v10 - 1) = *(v9 - 1);
              *v10 = v12;
              v9 += 2;
              v10 += 2;
              v11 -= 4;
            }

            while (v11);
            if (v8 == a3)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
          v8 = 0;
        }

        v87 = (a2 + 8 * v7);
        v88 = a3 - v8;
        v89 = &v6[v8];
        do
        {
          v90 = *v89++;
          *v87 = v90;
          v87 += a4;
          --v88;
        }

        while (v88);
        goto LABEL_51;
      }

      v40 = result[1];
      v39 = result[2];
      v41 = result[3];
      if (a4 == 4 && a3 >= 2)
      {
        v42 = 0;
        v43 = a3 - 1;
        v44 = *result;
        v45 = result[1];
        v46 = result[2];
        v47 = result[3];
        v48 = (a3 - 1);
        v49 = a2;
        do
        {
          v50 = *v44++;
          v51 = v50;
          v52 = *v45++;
          v53 = v52;
          v54 = *v46++;
          v55 = v54;
          v56 = *v47++;
          *v49 = v51;
          v49[1] = v53;
          v49[2] = v55;
          v49[3] = v56;
          v49 += 4;
          v42 += 0x400000000;
          --v48;
        }

        while (v48);
        v57 = v42 >> 32;
        if (v43 >= a3)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v57 = 0;
        v43 = 0;
        if (a3 <= 0)
        {
          goto LABEL_51;
        }
      }

      v75 = v43;
      v76 = v43;
      v77 = &v6[v76];
      v78 = &v40[v76];
      v79 = &v39[v76];
      v80 = (a2 + 8 * v57 + 16);
      v81 = a3 - v75;
      v82 = &v41[v76];
      do
      {
        v83 = *v77++;
        *(v80 - 2) = v83;
        v84 = *v78++;
        *(v80 - 1) = v84;
        v85 = *v79++;
        *v80 = v85;
        v86 = *v82++;
        v80[1] = v86;
        v80 += a4;
        --v81;
      }

      while (v81);
      goto LABEL_51;
    }

    v13 = result[1];
    if (a4 == 2 && a3 >= 2)
    {
      v14 = 0;
      v15 = a3 - 1;
      v16 = *result;
      v17 = result[1];
      v18 = (a3 - 1);
      v19 = a2;
      do
      {
        v20 = *v16++;
        v21 = v20;
        v22 = *v17++;
        *v19 = v21;
        v19[1] = v22;
        v19 += 2;
        v14 += 0x200000000;
        --v18;
      }

      while (v18);
      v23 = v14 >> 32;
      if (v15 >= a3)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v23 = 0;
      v15 = 0;
      if (a3 <= 0)
      {
        goto LABEL_51;
      }
    }

    v58 = (a2 + 8 * v23 + 8);
    v59 = a3 - v15;
    v60 = v15;
    v61 = &v13[v60];
    v62 = &v6[v60];
    do
    {
      v63 = *v62++;
      *(v58 - 1) = v63;
      v64 = *v61++;
      *v58 = v64;
      v58 += a4;
      --v59;
    }

    while (v59);
    goto LABEL_51;
  }

  v25 = result[1];
  v24 = result[2];
  if (a4 != 3 || a3 < 2)
  {
    v38 = 0;
    v27 = 0;
    if (a3 <= 0)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

  v26 = 0;
  v27 = a3 - 1;
  v28 = *result;
  v29 = result[1];
  v30 = result[2];
  v31 = (a3 - 1);
  v32 = a2;
  do
  {
    v33 = *v28++;
    v34 = v33;
    v35 = *v29++;
    v36 = v35;
    v37 = *v30++;
    *v32 = v34;
    v32[1] = v36;
    v32[2] = v37;
    v32 += 3;
    v26 += 0x300000000;
    --v31;
  }

  while (v31);
  v38 = v26 >> 32;
  if (v27 < a3)
  {
LABEL_41:
    v65 = v27;
    v66 = v27;
    v67 = &v6[v66];
    v68 = &v25[v66];
    v69 = (a2 + 8 * v38 + 8);
    v70 = a3 - v65;
    v71 = &v24[v66];
    do
    {
      v72 = *v67++;
      *(v69 - 1) = v72;
      v73 = *v68++;
      *v69 = v73;
      v74 = *v71++;
      v69[1] = v74;
      v69 += a4;
      --v70;
    }

    while (v70);
  }

LABEL_51:
  if (a3 >= 1 && v5 < a4)
  {
    v91 = v5;
    v92 = a2 + 8 * v5 + 16;
    do
    {
      v93 = &result[v91];
      v94 = *v93;
      v95 = v93[1];
      v96 = v93[2];
      v97 = v93[3];
      v98 = a3;
      v99 = v92;
      do
      {
        v100 = *v94++;
        *(v99 - 2) = v100;
        v101 = *v95++;
        *(v99 - 1) = v101;
        v102 = *v96++;
        *v99 = v102;
        v103 = *v97++;
        v99[1] = v103;
        v99 += a4;
        --v98;
      }

      while (v98);
      v91 += 4;
      v92 += 32;
    }

    while (v91 < a4);
  }

  return result;
}

atomic_uint **sub_100282298(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1 && (byte_1004D54B8 & 1) == 0)
  {
    sub_100282584(v2);
    operator delete();
  }

  return a1;
}

void sub_100282308(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_10000918C();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_10000927C();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100282438(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100282494(exception, a1);
}

std::logic_error *sub_100282494(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_1002824C8(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100241528();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_100282584(uint64_t result)
{
  if (*(result + 8))
  {
    *(result + 8) = 0;
  }

  v1 = *(result + 24);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1 && byte_1004D54B8 != 1)
  {
    sub_100282584(v1);
    operator delete();
  }

  return result;
}

uint64_t sub_1002825FC(uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = v3;
  *(a1 + *(v3 - 24)) = v2;
  v4 = (a1 + *(*a1 - 24));
  std::ios_base::init(v4, (a1 + 8));
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 16));
  *(a1 + 72) = 0;
  v5 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v6 = *(a1 + 95);
  if (v6 < 0)
  {
    v6 = *(a1 + 80);
  }

  *(a1 + 48) = v5;
  *(a1 + 56) = v5;
  *(a1 + 64) = v5 + v6;
  return a1;
}

void sub_1002827C8(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v2;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100282818(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_100282938()
{
  v0[0] = 0;
  v0[1] = 0;
  qmemcpy(sub_1002A80E0(v0, 46), "The library is compiled without OpenGL support", 46);
  sub_1002A8980(-218, v0, "throw_no_ogl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/opengl.cpp", 60);
}

void sub_1002829C8(_DWORD *a1, uint64_t a2, double a3)
{
  sub_1002ACE7C(&v17, &off_1004751E0);
  if (v17)
  {
    sub_1002ADCFC(&off_100475200);
    if (v17)
    {
      sub_1002ADCFC(&off_100475218);
      if (v17)
      {
        sub_1002ADCFC(&off_100475230);
      }
    }
  }

  if (*a1 == a1[1])
  {
LABEL_9:
    if (!v18)
    {
      return;
    }

    goto LABEL_10;
  }

  if (dword_1004BD620 || atomic_fetch_add(&dword_1004BD620, 1u))
  {
    (*(*a2 + 16))(a2, a1);
    goto LABEL_9;
  }

  if (dword_1004B0240 < 2 || a1[1] - *a1 < 2)
  {
    (*(*a2 + 16))(a2, a1);
  }

  else
  {
    v23 = 0;
    v6 = *a1;
    v7 = (HIDWORD(*a1) - *a1);
    v20[0] = a2;
    v20[1] = v6;
    v8 = 1.0;
    if (a3 >= 1.0)
    {
      v8 = a3;
    }

    if (v8 > v7)
    {
      v8 = v7;
    }

    if (a3 > 0.0)
    {
      v7 = v8;
    }

    v9 = rint(v7);
    v21 = v9;
    v22 = *sub_10029D30C();
    v10 = sub_1002ABC0C();
    v11 = sub_1002A9C00((v10 + 16));
    v12 = v11[8];
    if (v12)
    {
      v13 = (*(v11[4] + 8 * ((v12 + v11[7] - 1) / 0xAAuLL)) + 24 * ((v12 + v11[7] - 1) % 0xAAuLL));
    }

    else
    {
      v13 = v11 + 13;
    }

    v24 = *v13;
    v14 = sub_1002ABC0C();
    v25 = sub_1002A9C00((v14 + 16));
    context[0] = off_100475268;
    context[1] = v20;
    if (v9 == 1)
    {
      (*(*a2 + 16))(a2, a1);
    }

    else
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_apply_f(v9, global_queue, context, sub_100282E84);
    }

    if (v23 == 1)
    {
      *sub_10029D30C() = v22;
      v16 = sub_10029D30C();
      *v16 = HIDWORD(*v16) + 4164903690 * *v16;
    }

    if (v24)
    {
      sub_1002ADA50(v24);
    }
  }

  dword_1004BD620 = 0;
  if (v18)
  {
LABEL_10:
    sub_1002ACC1C(&v17);
  }
}

void sub_100282CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100282ED4(va);
  __cxa_begin_catch(a1);
  *(v6 + 1568) = 0;
  __cxa_rethrow();
}

void sub_100282CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100282D00()
{
  if (!dword_1004B0240)
  {
    return 1;
  }

  v2 = 0;
  v1 = 4;
  *v3 = 0x1900000006;
  sysctl(v3, 2u, &v2, &v1, 0, 0);
  result = v2;
  if (v2 <= 0)
  {
    v3[1] = 3;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    if (v2 <= 1)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_100282DCC()
{
  v2 = 0;
  v1 = 4;
  *v3 = 0x1900000006;
  sysctl(v3, 2u, &v2, &v1, 0, 0);
  result = v2;
  if (v2 <= 0)
  {
    v3[1] = 3;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    if (v2 <= 1)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_100282E84(uint64_t a1, int a2)
{
  v3[0] = a2;
  v3[1] = a2 + 1;
  return (*(*a1 + 16))(a1, v3);
}

uint64_t sub_100282ED4(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *sub_10029D30C() = *(a1 + 24);
    v2 = sub_10029D30C();
    *v2 = HIDWORD(*v2) + 4164903690 * *v2;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    sub_1002ADA50(v3);
  }

  return a1;
}

void sub_100282F54(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = *(v4 + 48);
    if (v6)
    {
      sub_1002AD7AC(v5, v6);
    }
  }

  sub_1002ACE7C(&v20, &off_100475298);
  v7 = *(a1 + 8);
  if (*(v7 + 40))
  {
    sub_1002AD9B8();
    v7 = *(a1 + 8);
  }

  *sub_10029D30C() = *(v7 + 24);
  v8 = *(a1 + 8);
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = (v11 + (v11 >> 31)) >> 1;
  v13 = a2[1];
  v14 = v9 + (v12 + *a2 * (v10 - v9)) / v11;
  v15 = v9 + (v12 + v13 * (v10 - v9)) / v11;
  if (v13 < v11)
  {
    v16 = v15;
  }

  else
  {
    v16 = v10;
  }

  v19[0] = v14;
  v19[1] = v16;
  if (v20)
  {
    sub_1002ADCFC(&off_1004752B8);
    if (v20)
    {
      sub_1002ADCFC(&off_1004752D0);
    }
  }

  (*(***(a1 + 8) + 16))(**(a1 + 8), v19);
  if ((*(*(a1 + 8) + 32) & 1) == 0)
  {
    v17 = sub_10029D30C();
    v18 = *(a1 + 8);
    if (*v17 != *(v18 + 24))
    {
      *(v18 + 32) = 1;
    }
  }

  if (v21)
  {
    sub_1002ACC1C(&v20);
  }
}

void sub_1002830B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002830C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002830D8(void **a1)
{
  if (!a1)
  {
    v4[0] = 0;
    v4[1] = 0;
    qmemcpy(sub_1002A80E0(v4, 35), "NULL double pointer to file storage", 35);
    sub_1002A8980(-27, v4, "cvReleaseFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 700);
  }

  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_100283290(v1, 0);
    sub_100231874(v1 + 4);
    j__free(*(v1 + 16));
    *(v1 + 16) = 0;
    sub_100231874(v1 + 2);
    v2 = *(v1 + 47);
    if (v2)
    {
      sub_10029CDD4(v2);
      operator delete();
    }

    v3 = *(v1 + 48);
    if (v3)
    {
      if (*v3)
      {
        sub_10029C070(*v3);
        operator delete();
      }

      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
      }

      operator delete();
    }

    if (*(v1 + 51))
    {
      operator delete[]();
    }

    if (*(v1 + 53))
    {
      operator delete[]();
    }

    *(v1 + 54) = 0;
    *(v1 + 25) = 0u;
    *(v1 + 26) = 0u;
    *(v1 + 23) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 21) = 0u;
    *(v1 + 22) = 0u;
    *(v1 + 19) = 0u;
    *(v1 + 20) = 0u;
    *(v1 + 17) = 0u;
    *(v1 + 18) = 0u;
    *(v1 + 15) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 13) = 0u;
    *(v1 + 14) = 0u;
    *(v1 + 11) = 0u;
    *(v1 + 12) = 0u;
    *(v1 + 9) = 0u;
    *(v1 + 10) = 0u;
    *(v1 + 7) = 0u;
    *(v1 + 8) = 0u;
    *(v1 + 5) = 0u;
    *(v1 + 6) = 0u;
    *(v1 + 3) = 0u;
    *(v1 + 4) = 0u;
    *(v1 + 1) = 0u;
    *(v1 + 2) = 0u;
    *v1 = 0u;
    j__free(v1);
  }
}

void sub_100283290(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    sub_1002A8124(a2);
  }

  if (!a1)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 35), "NULL double pointer to file storage", 35);
    sub_1002A8980(-27, &v29, "icvClose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 667);
  }

  if (*(a1 + 432) == 1)
  {
    if (!*(a1 + 8) || !*(a1 + 104) && !*(a1 + 112) && !*(a1 + 376))
    {
      goto LABEL_22;
    }

    v4 = *(a1 + 56);
    if (v4 && *(v4 + 40) >= 1)
    {
      do
      {
        sub_10028984C(a1);
      }

      while (*(*(a1 + 56) + 40) > 0);
    }

    v6 = *(a1 + 120);
    v5 = *(a1 + 128);
    v7 = *(a1 + 88);
    if (v6 > &v5[v7])
    {
      *v6 = 10;
      sub_10028614C(a1, *(a1 + 128));
      v5 = *(a1 + 128);
      LODWORD(v7) = *(a1 + 88);
    }

    v8 = *(a1 + 64);
    if (v7 == v8)
    {
      *(a1 + 120) = &v5[v7];
      v9 = *(a1 + 4);
      if (v9 != 8)
      {
LABEL_17:
        if (v9 != 24)
        {
LABEL_22:
          v11 = *(a1 + 104);
          if (v11)
          {
            fclose(v11);
          }

          else
          {
            v12 = *(a1 + 112);
            if (v12)
            {
              gzclose(v12);
            }
          }

          *(a1 + 352) = 0;
          *(a1 + 368) = 0;
          *(a1 + 432) = 0;
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          goto LABEL_27;
        }

        v10 = "}\n";
LABEL_21:
        sub_10028614C(a1, v10);
        goto LABEL_22;
      }
    }

    else
    {
      memset(v5, 32, v8);
      *(a1 + 88) = v8;
      *(a1 + 120) = *(a1 + 128) + v8;
      v9 = *(a1 + 4);
      if (v9 != 8)
      {
        goto LABEL_17;
      }
    }

    v10 = "</opencv_storage>\n";
    goto LABEL_21;
  }

LABEL_27:
  if (a2)
  {
    v13 = *(a1 + 376);
    if (v13)
    {
      v14 = v13[1];
      if (v13[2] == v14)
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v15 = v13[4];
        v16 = (v15 >> 9) & 0x7FFFFFFFFFFFF8;
        v17 = (v14 + v16);
        v18 = v15 & 0xFFF;
        v19 = v13[5] + v15;
        v20 = (v19 >> 9) & 0x7FFFFFFFFFFFF8;
        v21 = (*(v14 + v16) + v18);
        v22 = (*(v14 + v20) + (v19 & 0xFFF));
        v29 = 0;
        v30 = 0;
        if (v22 != v21)
        {
          v23 = (v19 & 0xFFF) + ((v20 - v16) << 9) - v18;
          if (v23)
          {
            v24 = sub_1002A80E0(&v29, v23);
            do
            {
              v25 = *v21++;
              *v24++ = v25;
              if (&v21[-*v17] == 4096)
              {
                v26 = v17[1];
                ++v17;
                v21 = v26;
              }
            }

            while (v21 != v22);
          }
        }
      }

      if (&v29 != a2)
      {
        sub_1002A8124(a2);
        v27 = v29;
        if (v29)
        {
          atomic_fetch_add((v29 - 4), 1u);
          v27 = v29;
        }

        v28 = v30;
        *a2 = v27;
        a2[1] = v28;
      }

      sub_1002A8124(&v29);
    }
  }
}

uint64_t sub_10028356C(uint64_t a1, char *__s, size_t __n, int a4)
{
  if (!a1)
  {
    return 0;
  }

  LODWORD(v5) = __n;
  v7 = *(a1 + 40);
  if ((__n & 0x80000000) != 0)
  {
    v12 = *__s;
    if (*__s)
    {
      v5 = 0;
      v8 = 0;
      do
      {
        v8 = 33 * v8 + v12;
        v12 = __s[++v5];
      }

      while (v12);
    }

    else
    {
      v8 = 0;
      LODWORD(v5) = 0;
    }
  }

  else
  {
    v8 = 0;
    if (__n)
    {
      v9 = __n;
      v10 = __s;
      do
      {
        v11 = *v10++;
        v8 = 33 * v8 + v11;
        --v9;
      }

      while (v9);
    }
  }

  v13 = v8 & 0x7FFFFFFF;
  v14 = *(v7 + 108);
  if ((v14 & (v14 - 1)) != 0)
  {
    v15 = v13 % v14;
  }

  else
  {
    v15 = (v14 - 1) & v13;
  }

  v16 = *(*(v7 + 112) + 8 * v15);
  if (!v16)
  {
LABEL_22:
    if (a4)
    {
      v16 = *(v7 + 96);
      v20 = v16;
      if (v16)
      {
        *(v7 + 96) = *(v16 + 8);
        *v16 &= 0x3FFFFFFu;
        ++*(v7 + 104);
      }

      else
      {
        sub_100236464(v7, 0, &v20);
        v16 = v20;
      }

      *v16 = v13;
      *(v16 + 8) = sub_100231F7C(*(v7 + 72), __s, v5);
      *(v16 + 16) = v17;
      v18 = *(v7 + 112);
      *(v16 + 24) = *(v18 + 8 * v15);
      *(v18 + 8 * v15) = v16;
      return v16;
    }

    return 0;
  }

  while (*v16 != v13 || *(v16 + 8) != v5 || memcmp(*(v16 + 16), __s, v5))
  {
    v16 = *(v16 + 24);
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  return v16;
}

uint64_t sub_100283704(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != 1280131417)
  {
    *v23 = 0;
    v24 = 0;
    qmemcpy(sub_1002A80E0(v23, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(-5, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 786);
  }

  if (!a3)
  {
    *v23 = 0;
    v24 = 0;
    *sub_1002A80E0(v23, 16) = *"Null key element";
    sub_1002A8980(-27, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 789);
  }

  if (!a2)
  {
    v7 = 1;
LABEL_11:
    v8 = 0;
    v9 = 0;
    v20 = v7;
    v19 = v7 - 1;
    while (1)
    {
      v11 = a2;
      if (!a2)
      {
        v11 = sub_100232368(*(a1 + 48), v8);
        if (!v11)
        {
          *v23 = 0;
          v24 = 0;
          v12 = sub_1002A80E0(v23, 18);
          *(v12 + 16) = 27756;
          *v12 = *"map_node != __null";
          sub_1002A8980(-215, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 807);
        }
      }

      v13 = *v11 & 7;
      if (v13 != 6)
      {
        if (!v13)
        {
          return 0;
        }

        if (v13 != 5 || *(*(v11 + 16) + 40))
        {
          *v23 = 0;
          v24 = 0;
          qmemcpy(sub_1002A80E0(v23, 49), "The node is neither a map nor an empty collection", 49);
          sub_1002A8980(-2, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 812);
        }

        return 0;
      }

      v14 = *(v11 + 16);
      v15 = *(v14 + 108);
      if ((v15 & (v15 - 1)) != 0)
      {
        v16 = *a3 % v15;
        v17 = *(*(v14 + 112) + 8 * v16);
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v16 = *a3 & (v15 - 1);
        v17 = *(*(v14 + 112) + 8 * v16);
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      if (!a4)
      {
        while (*(v17 + 32) != a3)
        {
          v17 = *(v17 + 40);
          if (!v17)
          {
            goto LABEL_26;
          }
        }

        return v17;
      }

      do
      {
        if (*(v17 + 32) == a3)
        {
          sprintf(v23, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Duplicated key");
          sub_1002A9248(-212, "cvGetFileNode", v23, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 832);
        }

        v17 = *(v17 + 40);
      }

      while (v17);
LABEL_26:
      if (a4 && v8 == v19)
      {
        v9 = *(v14 + 96);
        *v23 = v9;
        if (v9)
        {
          *(v14 + 96) = *(v9 + 8);
          *v9 &= 0x3FFFFFFu;
          ++*(v14 + 104);
        }

        else
        {
          sub_100236464(v14, 0, v23);
          v9 = *v23;
        }

        *(v9 + 32) = a3;
        v10 = *(v14 + 112);
        *(v9 + 40) = *(v10 + 8 * v16);
        *(v10 + 8 * v16) = v9;
      }

      if (++v8 == v20)
      {
        return v9;
      }
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7 >= 1)
    {
      goto LABEL_11;
    }
  }

  return 0;
}

void sub_100283AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100283BF4(uint64_t a1, uint64_t a2, _BYTE *__s2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a2;
  if (*a1 != 1280131417)
  {
    v30 = 0;
    v31 = 0;
    qmemcpy(sub_1002A80E0(&v30, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(-5, &v30, "cvGetFileNodeByName", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 861);
  }

  if (!__s2)
  {
    v30 = 0;
    v31 = 0;
    v6 = sub_1002A80E0(&v30, 17);
    *(v6 + 16) = 101;
    *v6 = *"Null element name";
    sub_1002A8980(-27, &v30, "cvGetFileNodeByName", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 864);
  }

  v7 = *__s2;
  if (*__s2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 = 33 * v9 + v7;
      v7 = __s2[++v8];
    }

    while (v7);
    v10 = v9 & 0x7FFFFFFF;
    v11 = v8;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v8 = 0;
    if (a2)
    {
LABEL_10:
      v12 = *a2 & 7;
      if (!v12)
      {
        return 0;
      }

      if (v12 != 5)
      {
        if (v12 == 6)
        {
          v13 = *(a2 + 16);
          v14 = *(v13 + 108);
          v15 = *(v13 + 112);
          if ((v14 & (v14 - 1)) != 0)
          {
            v16 = *(v15 + 8 * (v10 % v14));
            if (!v16)
            {
              return 0;
            }

            while (1)
            {
              v28 = *(v16 + 32);
              if (*v28 == v10 && *(v28 + 8) == v11 && !memcmp(*(v28 + 16), __s2, v8))
              {
                break;
              }

              v17 = 0;
              v16 = *(v16 + 40);
              if (!v16)
              {
                return v17;
              }
            }
          }

          else
          {
            v16 = *(v15 + 8 * ((v14 - 1) & v10));
            if (!v16)
            {
              return 0;
            }

            while (1)
            {
              v18 = *(v16 + 32);
              if (*v18 == v10 && *(v18 + 8) == v11 && !memcmp(*(v18 + 16), __s2, v8))
              {
                break;
              }

              v17 = 0;
              v16 = *(v16 + 40);
              if (!v16)
              {
                return v17;
              }
            }
          }

          return v16;
        }

LABEL_47:
        v30 = 0;
        v31 = 0;
        qmemcpy(sub_1002A80E0(&v30, 49), "The node is neither a map nor an empty collection", 49);
        sub_1002A8980(-2, &v30, "cvGetFileNodeByName", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 891);
      }

LABEL_46:
      if (*(*(v4 + 16) + 40))
      {
        goto LABEL_47;
      }

      return 0;
    }
  }

  v19 = *(a1 + 48);
  if (!v19)
  {
    return 0;
  }

  v20 = *(v19 + 40);
  if (v20 < 1)
  {
    return 0;
  }

  v21 = 0;
  while (1)
  {
    v22 = sub_100232368(*(a1 + 48), v21);
    v4 = v22;
    v23 = *v22 & 7;
    if (v23 != 6)
    {
      if (!v23)
      {
        return 0;
      }

      if (v23 != 5)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v24 = *(v22 + 16);
    v25 = *(v24 + 108);
    v26 = (v25 & (v25 - 1)) != 0 ? v10 % v25 : (v25 - 1) & v10;
    v17 = *(*(v24 + 112) + 8 * v26);
    if (v17)
    {
      break;
    }

LABEL_25:
    v17 = 0;
    if (++v21 == v20)
    {
      return v17;
    }
  }

  while (1)
  {
    v27 = *(v17 + 32);
    if (*v27 == v10 && *(v27 + 8) == v11 && !memcmp(*(v27 + 16), __s2, v8))
    {
      return v17;
    }

    v17 = *(v17 + 40);
    if (!v17)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_100283F94(char *__s, uint64_t a2, unsigned int a3, const char *a4)
{
  v5 = a3;
  v7 = __s;
  v207 = 0;
  *v208 = 0;
  v8 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    v9 = (a3 >> 6) & 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  __p = 0;
  v206 = 0;
  if ((a3 & 4) == 0)
  {
    v10 = strlen(__s);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100241528();
    }

    v11 = v10;
    v203 = a4;
    v201 = v9;
    v202 = v8;
    v200 = v5;
    v199 = a2;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memcpy(&__dst, v7, v10);
    }

    __dst.__r_.__value_.__s.__data_[v11] = 0;
    *v214 = 0;
    v215 = 0;
    v216 = 0;
    v12 = 0;
    v13 = 0;
    if (std::string::find(&__dst, 10, 0) != -1)
    {
LABEL_12:
      v14 = __p;
      v5 = v200;
      if (__p)
      {
        v15 = v206;
        while (v15 != v14)
        {
          v16 = *(v15 - 1);
          v15 -= 3;
          if (v16 < 0)
          {
            operator delete(*v15);
          }
        }

        v206 = v14;
        operator delete(v14);
      }

      v17 = *v214;
      __p = *v214;
      v206 = v13;
      v207 = v12;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        a2 = v199;
        if (v17 == v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        a2 = v199;
        if (*v214 == v13)
        {
          goto LABEL_32;
        }
      }

      v7 = v17;
      if (v17[23] < 0)
      {
        v7 = *v17;
        if (v201)
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      }

LABEL_32:
      if (v201)
      {
LABEL_33:
        LOBYTE(v9) = 1;
LABEL_41:
        a4 = v203;
        v8 = v202;
        goto LABEL_42;
      }

LABEL_35:
      HIBYTE(v213) = 6;
      qmemcpy(__sa, "base64", 6);
      if (0xAAAAAAAAAAAAAAABLL * ((v13 - v17) >> 3) >= 2 && v17 != v13)
      {
        while (1)
        {
          v27 = v17[23];
          v28 = v27;
          if ((v27 & 0x80u) != 0)
          {
            v27 = *(v17 + 1);
          }

          if (v27 == 6)
          {
            v29 = v28 >= 0 ? v17 : *v17;
            v30 = *v29;
            v31 = *(v29 + 2);
            if (v30 == *__sa && v31 == *&__sa[4])
            {
              break;
            }
          }

          v17 += 24;
          if (v17 == v13)
          {
            goto LABEL_40;
          }
        }

        v8 = v202;
        LOBYTE(v9) = v17 != v13 && v202 != 0;
        a4 = v203;
        if (!v7)
        {
          goto LABEL_65;
        }

        goto LABEL_43;
      }

LABEL_40:
      LOBYTE(v9) = 0;
      goto LABEL_41;
    }

    v18 = std::string::rfind(&__dst, 63, 0xFFFFFFFFFFFFFFFFLL);
    v19 = v18;
    size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
      v21 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__l.__size_ >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = __dst.__r_.__value_.__l.__size_;
      }

      if (v22 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_26:
        if (v22 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v213) = v22;
        if (v22)
        {
          memmove(__sa, v21, v22);
          __sa[v22] = 0;
          v23 = v215;
          v12 = v216;
          if (v215 < v216)
          {
            goto LABEL_29;
          }
        }

        else
        {
          __sa[0] = 0;
          v23 = v215;
          v12 = v216;
          if (v215 < v216)
          {
LABEL_29:
            *v23 = *__sa;
            *(v23 + 16) = v213;
            v13 = v23 + 24;
            goto LABEL_229;
          }
        }

        v72 = *v214;
        v73 = v23 - *v214;
        v74 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v214) >> 3);
        v75 = v74 + 1;
        if (v74 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10000918C();
        }

        if (0x5555555555555556 * ((v12 - *v214) >> 3) > v75)
        {
          v75 = 0x5555555555555556 * ((v12 - *v214) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v12 - *v214) >> 3) >= 0x555555555555555)
        {
          v76 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v76 = v75;
        }

        if (v76)
        {
          if (v76 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_10000927C();
        }

        v116 = 24 * v74;
        v12 = 0;
        *v116 = *__sa;
        *(v116 + 16) = v213;
        v13 = 24 * v74 + 24;
        memcpy((24 * v74 - v73), v72, v73);
        *v214 = 24 * v74 - v73;
        v216 = 0;
        if (v72)
        {
          operator delete(v72);
        }

LABEL_229:
        v215 = v13;
        if (v19 == -1)
        {
          goto LABEL_12;
        }

        v117 = v19 + 1;
        if (v19 + 1 >= size)
        {
          goto LABEL_12;
        }

        while (1)
        {
          v118 = std::string::find(&__dst, 38, v117);
          v119 = v118;
          v121 = v118 == -1 || v118 != v117;
          if (v117 + 1 >= size || !v121)
          {
            goto LABEL_234;
          }

          v122 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v122 = __dst.__r_.__value_.__l.__size_;
            if (__dst.__r_.__value_.__l.__size_ < v117)
            {
LABEL_419:
              sub_100282420();
            }

            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (v117 > SHIBYTE(__dst.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_419;
            }

            p_dst = &__dst;
          }

          v124 = v122 - v117;
          if (v124 >= v118 - v117)
          {
            v125 = v118 - v117;
          }

          else
          {
            v125 = v124;
          }

          if (v125 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_100241528();
          }

          if (v125 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v213) = v125;
          if (v125)
          {
            memmove(__sa, p_dst + v117, v125);
            __sa[v125] = 0;
            v126 = v215;
            v12 = v216;
            if (v215 >= v216)
            {
LABEL_258:
              v127 = *v214;
              v128 = v126 - *v214;
              v129 = 0xAAAAAAAAAAAAAAABLL * ((v126 - *v214) >> 3);
              v130 = v129 + 1;
              if (v129 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_10000918C();
              }

              if (0x5555555555555556 * ((v12 - *v214) >> 3) > v130)
              {
                v130 = 0x5555555555555556 * ((v12 - *v214) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v12 - *v214) >> 3) >= 0x555555555555555)
              {
                v131 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v131 = v130;
              }

              if (v131)
              {
                if (v131 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_10000927C();
              }

              v132 = 24 * v129;
              v12 = 0;
              *v132 = *__sa;
              *(v132 + 16) = v213;
              v13 = 24 * v129 + 24;
              memcpy((24 * v129 - v128), v127, v128);
              *v214 = 24 * v129 - v128;
              v216 = 0;
              if (v127)
              {
                operator delete(v127);
              }

              goto LABEL_233;
            }
          }

          else
          {
            __sa[0] = 0;
            v126 = v215;
            v12 = v216;
            if (v215 >= v216)
            {
              goto LABEL_258;
            }
          }

          *v126 = *__sa;
          *(v126 + 16) = v213;
          v13 = v126 + 24;
LABEL_233:
          v215 = v13;
LABEL_234:
          v117 = v119 + 1;
          if (v119 >= size)
          {
            goto LABEL_12;
          }
        }
      }
    }

    else
    {
      v21 = &__dst;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      if (v22 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_26;
      }
    }

    sub_100241528();
  }

LABEL_42:
  if (!v7)
  {
    goto LABEL_65;
  }

LABEL_43:
  if (*v7)
  {
    v25 = strlen(v7);
    v26 = (v5 >> 2) & 1;
    if (v8 != 2)
    {
      goto LABEL_76;
    }

    goto LABEL_67;
  }

LABEL_65:
  if (!v8)
  {
    memset(__sa, 0, sizeof(__sa));
    if ((v5 & 4) != 0)
    {
      v34 = 22;
    }

    else
    {
      v34 = 20;
    }

    v35 = sub_1002A80E0(__sa, v34);
    if ((v5 & 4) != 0)
    {
      v36 = "NULL or empty filename";
    }

    else
    {
      v36 = "NULL or empty buffer";
    }

    memcpy(v35, v36, v34);
    sub_1002A8980(-27, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4198);
  }

  v25 = 0;
  v26 = 1;
  if (v8 == 2)
  {
LABEL_67:
    if (v26)
    {
      memset(__sa, 0, sizeof(__sa));
      qmemcpy(sub_1002A80E0(__sa, 68), "CV_STORAGE_APPEND and CV_STORAGE_MEMORY are not currently compatible", 68);
      sub_1002A8980(-206, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4205);
    }
  }

LABEL_76:
  v37 = sub_1001D90AC(0x1B8uLL);
  *v208 = v37;
  if (!v37)
  {
    memset(__sa, 0, sizeof(__sa));
    *sub_1002A80E0(__sa, 2) = 29542;
    sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4208);
  }

  *(v37 + 432) = 0;
  *(v37 + 400) = 0u;
  *(v37 + 416) = 0u;
  *(v37 + 368) = 0u;
  *(v37 + 384) = 0u;
  *(v37 + 336) = 0u;
  *(v37 + 352) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 240) = 0u;
  *(v37 + 256) = 0u;
  *(v37 + 208) = 0u;
  *(v37 + 224) = 0u;
  *(v37 + 176) = 0u;
  *(v37 + 192) = 0u;
  *(v37 + 144) = 0u;
  *(v37 + 160) = 0u;
  *(v37 + 112) = 0u;
  *(v37 + 128) = 0u;
  *(v37 + 80) = 0u;
  *(v37 + 96) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 64) = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  *v37 = 0u;
  sub_100231744(0x40000);
  v39 = v38;
  v40 = *v208;
  if (a2)
  {
    v41 = a2;
  }

  else
  {
    v41 = v39;
  }

  *(*v208 + 16) = v39;
  *(v40 + 24) = v41;
  *v40 = 1280131417;
  *(v40 + 8) = v8 != 0;
  if (v26)
  {
    *(v40 + 48) = 0;
    *(v40 + 64) = 0;
    *(v40 + 144) = 71;
    if (*(v40 + 8))
    {
LABEL_98:
      operator new();
    }

    v50 = 0;
LABEL_287:
    *(v40 + 352) = v7;
    *(v40 + 360) = v25;
LABEL_288:
    sub_1002862DC(v40, v214, 0xE);
    if (v214[2] == 191 && v214[1] == 187 && v214[0] == 239)
    {
      v142 = 3;
    }

    else
    {
      v142 = 0;
    }

    if (!strncmp(&v214[v142], "%YAML", 5uLL))
    {
      v143 = *v208;
      v144 = 16;
    }

    else if (v214[v142] == 123)
    {
      v143 = *v208;
      v144 = 24;
    }

    else
    {
      v145 = strncmp(&v214[v142], "<?xml", 5uLL);
      v143 = *v208;
      if (v145)
      {
        if (*(*v208 + 360) == v142)
        {
          memset(__sa, 0, sizeof(__sa));
          v146 = sub_1002A80E0(__sa, 19);
          *(v146 + 15) = 2037674093;
          *v146 = *"Input file is empty";
          sub_1002A8980(-49, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4484);
        }

        memset(__sa, 0, sizeof(__sa));
        qmemcpy(sub_1002A80E0(__sa, 31), "Unsupported file storage format", 31);
        sub_1002A8980(-49, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4486);
      }

      v144 = 8;
    }

    *(v143 + 4) = v144;
    if (v50)
    {
      v147 = 0x100000;
      v148 = *v208;
      v149 = *(*v208 + 104);
      if (v149)
      {
LABEL_307:
        rewind(v149);
LABEL_319:
        *(v148 + 368) = 0;
        v153 = *v208;
        *(*v208 + 368) = v142;
        v154 = *(v153 + 16);
        v155 = sub_100236364(0, 120, 32, v154);
        v155[27] = 256;
        v156 = sub_100231C8C(v154, 0x800uLL);
        *(v155 + 14) = v156;
        bzero(v156, 0x800uLL);
        v157 = *v208;
        *(*v208 + 40) = v155;
        v158 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(v157 + 16));
        *(*v208 + 48) = v158;
        v159 = sub_1001D90AC(v147 + 256);
        v160 = *v208;
        *(*v208 + 120) = v159;
        *(v160 + 128) = v159;
        *(v160 + 136) = &v159[v147];
        *v159 = 10;
        *(*(*v208 + 120) + 1) = 0;
        v161 = *v208;
        v162 = *(*v208 + 4);
        if (v162 == 24)
        {
          v183 = sub_100298CEC(*v208, *(*v208 + 128));
          if (v183 && !*(v161 + 152))
          {
            v184 = *v183;
            if (v184 == 91)
            {
              v189 = v183;
              v190 = sub_100233314(*(v161 + 48), 0);
              sub_100299338(v161, v189, v190);
            }

            else
            {
              if (v184 != 123)
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "left-brace of top level is missing");
                sub_1002A9248(-212, "icvJSONParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3831);
              }

              v185 = v183;
              v186 = sub_100233314(*(v161 + 48), 0);
              sub_100298F80(v161, v185, v186);
            }

            if (*(v161 + 152))
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Unexpected End-Of-File");
              sub_1002A9248(-212, "icvJSONParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3835);
            }
          }

          goto LABEL_398;
        }

        if (v162 != 16)
        {
          if (v162 == 8)
          {
            v163 = *(*v208 + 128);
            __dst.__r_.__value_.__r.__words[0] = 0;
            v211 = 0;
            v209 = 0;
            v164 = sub_100294910(*v208, v163, 2);
            if (*v164 != 1836597052 || v164[4] != 108)
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Valid XML should start with '<?xml ...?>'");
              sub_1002A9248(-212, "icvXMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2825);
            }

            for (i = sub_100294C4C(v161, v164, &__dst, &v210, &v209); *i; i = sub_100294910(v161, v171, 0))
            {
              v167 = sub_100294910(v161, i, 0);
              if (!*v167)
              {
                break;
              }

              sub_100294C4C(v161, v167, &__dst, &v210, &v209);
              v168 = __dst.__r_.__value_.__r.__words[0];
              v169 = v209 != 1 || __dst.__r_.__value_.__r.__words[0] == 0;
              if (v169 || strcmp(*(__dst.__r_.__value_.__r.__words[0] + 16), "opencv_storage"))
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "<opencv_storage> tag is missing");
                sub_1002A9248(-212, "icvXMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2855);
              }

              sub_100233314(*(v161 + 48), 0);
              v170 = sub_100295364(v161);
              v171 = sub_100294C4C(v161, v170, &v211, &v210, &v209);
              if (v209 != 2 || v168 != v211)
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "</opencv_storage> tag is missing");
                sub_1002A9248(-212, "icvXMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2861);
              }
            }
          }

          goto LABEL_398;
        }

        v172 = sub_100296FFC(*v208, *(*v208 + 128), 0);
        if (!v172)
        {
LABEL_398:
          j__free(*(*v208 + 128));
          v70 = *v208;
          *(*v208 + 128) = 0;
          *(v70 + 136) = 0;
          *(v70 + 120) = 0;
          goto LABEL_399;
        }

        v173 = 0;
        while (1)
        {
          while (1)
          {
            v174 = *v172;
            if (v174 == 45)
            {
              break;
            }

            if (v174 == 37)
            {
              v175 = *v172 == 1296128293 && v172[4] == 76;
              if (v175 && *v172 != 0x2E313A4C4D415925 && *v172 != 0x2E31204C4D415925)
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Unsupported YAML version (it must be 1.x)");
                sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1836);
              }

              *v172 = 0;
              goto LABEL_365;
            }

            if (v174 != 95 && (v174 - 48) >= 0xA && (v174 & 0xFFFFFFDF) - 65 > 0x19)
            {
              if (!*(v161 + 152))
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Invalid or unsupported syntax");
                sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1858);
              }
            }

            else if (v173)
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "The YAML streams must start with '---', except the first one");
              sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1852);
            }

LABEL_373:
            v179 = sub_100296FFC(v161, v172, 0);
            if (*v179 == 11822 && v179[2] == 46)
            {
              goto LABEL_428;
            }

            v181 = sub_100233314(*(v161 + 48), 0);
            v182 = sub_100297288(v161);
            if ((*v181 & 7u) <= 4)
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Only collections as YAML streams are supported by this parser");
              sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1869);
            }

            v179 = sub_100296FFC(v161, v182, 0);
            if (v179)
            {
LABEL_428:
              if (!*(v161 + 152))
              {
                v172 = sub_100296FFC(v161, v179 + 3, 0);
                v173 = 1;
                if (v172)
                {
                  continue;
                }
              }
            }

            goto LABEL_398;
          }

          if (*v172 == 11565 && v172[2] == 45)
          {
            v172 += 3;
            goto LABEL_373;
          }

          if ((v173 & 1) == 0)
          {
            goto LABEL_373;
          }

LABEL_365:
          v172 = sub_100296FFC(v161, v172, 0);
          if (!v172)
          {
            goto LABEL_398;
          }
        }
      }
    }

    else
    {
      if (v26)
      {
        v150 = *(*v208 + 360);
      }

      else
      {
        fseek(*(*v208 + 104), 0, 2);
        v150 = ftell(*(*v208 + 104));
      }

      v151 = 0x100000;
      if (v150 < 0x100000)
      {
        v151 = v150;
      }

      if (v151 <= 0x2400)
      {
        v147 = 9216;
      }

      else
      {
        v147 = v151;
      }

      v148 = *v208;
      v149 = *(*v208 + 104);
      if (v149)
      {
        goto LABEL_307;
      }
    }

    v152 = *(v148 + 112);
    if (v152)
    {
      gzrewind(v152);
    }

    goto LABEL_319;
  }

  v42 = sub_100231C8C(v39, v25 + 1);
  *(*v208 + 96) = v42;
  strcpy(v42, v7);
  v43 = *v208;
  v44 = *(*v208 + 96);
  v45 = strrchr(v44, 46);
  if (v45)
  {
    if (v45[1] == 103 && v45[2] == 122)
    {
      v46 = v45[3];
      if (!v45[3] || (v46 - 48) <= 9 && !v45[4])
      {
        if (v8 == 2)
        {
          sub_1002830D8(v208);
          sub_1001FA81C(__sa, "Appending data to compressed file is not implemented");
          sub_1002A8980(-213, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4231);
        }

        if (v45[3])
        {
          v45[3] = 0;
          --v25;
        }

        else
        {
          LOBYTE(v46) = 51;
        }

        if (*(*v208 + 8))
        {
          v138 = 119;
        }

        else
        {
          v138 = 114;
        }

        __sa[0] = v138;
        __sa[1] = 98;
        __sa[2] = v46;
        __sa[3] = 0;
        v139 = gzopen(*(*v208 + 96), __sa);
        v40 = *v208;
        *(*v208 + 112) = v139;
        if (!v139)
        {
          goto LABEL_400;
        }

        v50 = 1;
        *(v40 + 48) = 0;
        *(v40 + 64) = 0;
        *(v40 + 144) = 71;
        if (*(v40 + 8))
        {
          goto LABEL_97;
        }

LABEL_286:
        if (!v26)
        {
          goto LABEL_288;
        }

        goto LABEL_287;
      }
    }
  }

  v47 = "a+t";
  if (v8 != 2)
  {
    v47 = "wt";
  }

  if (*(v43 + 8))
  {
    v48 = v47;
  }

  else
  {
    v48 = "rt";
  }

  v49 = fopen(v44, v48);
  v40 = *v208;
  *(*v208 + 104) = v49;
  if (!v49)
  {
    goto LABEL_400;
  }

  v50 = 0;
  *(v40 + 48) = 0;
  *(v40 + 64) = 0;
  *(v40 + 144) = 71;
  if (!*(v40 + 8))
  {
    goto LABEL_286;
  }

LABEL_97:
  v51 = v5 & 0x38;
  if (v26)
  {
    goto LABEL_98;
  }

  if ((v5 & 0x38) != 0 || !v7)
  {
    if ((v5 & 0x38) == 0)
    {
      *(v40 + 4) = 8;
      v61 = 25600;
      v51 = 8;
      if (v8 != 2)
      {
        goto LABEL_119;
      }

LABEL_118:
      fseek(*(v40 + 104), 0, 2);
      v40 = *v208;
      v51 = *(*v208 + 4);
      goto LABEL_119;
    }

    *(v40 + 4) = v51;
    if (v51 != 8)
    {
      goto LABEL_193;
    }

LABEL_117:
    v61 = 25600;
    v51 = 8;
    if (v8 != 2)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v52 = 0;
  v53 = 0;
  while (1)
  {
    if (*v7 == 46)
    {
      v53 = v52;
      v52 = v7;
      goto LABEL_103;
    }

    if (!*v7)
    {
      break;
    }

LABEL_103:
    ++v7;
  }

  if (!v52)
  {
    v56 = 0;
LABEL_136:
    if (v56 && v53 != 0)
    {
      v60 = v53;
    }

    else
    {
      v60 = v52;
    }

    if (v60)
    {
      goto LABEL_159;
    }

LABEL_191:
    v51 = 16;
    goto LABEL_192;
  }

  if (strlen(v52) != 3)
  {
    v60 = v52;
    goto LABEL_159;
  }

  v54 = __tolower(*v52);
  v55 = __tolower(46);
  v56 = v54 == v55;
  if (v54 != v55)
  {
    goto LABEL_136;
  }

  v57 = __tolower(v52[1]);
  v58 = __tolower(103);
  v56 = v57 == v58;
  if (v57 != v58)
  {
    goto LABEL_136;
  }

  v59 = __tolower(v52[2]);
  if (v59 == __tolower(122) && v53 != 0)
  {
    v60 = v53;
  }

  else
  {
    v60 = v52;
  }

  if (!v60)
  {
    goto LABEL_191;
  }

LABEL_159:
  if (strlen(v60) == 4 && (v78 = __tolower(*v60), v78 == __tolower(46)) && (v79 = __tolower(v60[1]), v79 == __tolower(120)) && (v80 = __tolower(v60[2]), v80 == __tolower(109)) && (v81 = __tolower(v60[3]), v81 == __tolower(108)) || strlen(v60) == 7 && (v82 = __tolower(*v60), v82 == __tolower(46)) && (v83 = __tolower(v60[1]), v83 == __tolower(120)) && (v84 = __tolower(v60[2]), v84 == __tolower(109)) && (v85 = __tolower(v60[3]), v85 == __tolower(108)) && (v86 = __tolower(v60[4]), v86 == __tolower(46)) && (v87 = __tolower(v60[5]), v87 == __tolower(103)) && (v88 = __tolower(v60[6]), v88 == __tolower(122)))
  {
    v51 = 8;
  }

  else if (strlen(v60) == 5 && (v89 = __tolower(*v60), v89 == __tolower(46)) && (v90 = __tolower(v60[1]), v90 == __tolower(106)) && (v91 = __tolower(v60[2]), v91 == __tolower(115)) && (v92 = __tolower(v60[3]), v92 == __tolower(111)) && (v93 = __tolower(v60[4]), v93 == __tolower(110)))
  {
    v51 = 24;
  }

  else
  {
    if (strlen(v60) != 8)
    {
      goto LABEL_191;
    }

    v94 = __tolower(*v60);
    if (v94 != __tolower(46))
    {
      goto LABEL_191;
    }

    v95 = __tolower(v60[1]);
    if (v95 != __tolower(106))
    {
      goto LABEL_191;
    }

    v96 = __tolower(v60[2]);
    if (v96 != __tolower(115))
    {
      goto LABEL_191;
    }

    v97 = __tolower(v60[3]);
    if (v97 != __tolower(111))
    {
      goto LABEL_191;
    }

    v98 = __tolower(v60[4]);
    if (v98 != __tolower(110))
    {
      goto LABEL_191;
    }

    v99 = __tolower(v60[5]);
    if (v99 != __tolower(46))
    {
      goto LABEL_191;
    }

    v100 = __tolower(v60[6]);
    if (v100 != __tolower(103))
    {
      goto LABEL_191;
    }

    v101 = __tolower(v60[7]);
    if (v101 == __tolower(122))
    {
      v51 = 24;
    }

    else
    {
      v51 = 16;
    }
  }

LABEL_192:
  v40 = *v208;
  *(*v208 + 4) = v51;
  if (v51 == 8)
  {
    goto LABEL_117;
  }

LABEL_193:
  v61 = 17408;
  if (v8 == 2)
  {
    goto LABEL_118;
  }

LABEL_119:
  if (v51 == 8)
  {
    v62 = 40;
  }

  else
  {
    v62 = 4;
  }

  v63 = sub_100231FEC(0, 0x60uLL, v62, *(v40 + 16));
  v64 = *v208;
  *(*v208 + 56) = v63;
  *(v64 + 12) = 1;
  *(v64 + 64) = 0x2000000000;
  v65 = sub_1001D90AC(v61 + 1024);
  v66 = *v208;
  *(*v208 + 120) = v65;
  *(v66 + 128) = v65;
  *(v66 + 136) = v65 + v61;
  *(v66 + 384) = 0;
  *(v66 + 392) = v9;
  *(v66 + 396) = 0;
  *(v66 + 400) = 0;
  *(v66 + 408) = 0;
  *(v66 + 416) = 0;
  *(v66 + 424) = 0;
  v67 = *(v66 + 4);
  if (v67 == 16)
  {
    if (v8 == 2)
    {
      v69 = "...\n---\n";
    }

    else
    {
      v69 = "%YAML:1.0\n---\n";
    }

    sub_10028614C(v66, v69);
    v70 = *v208;
    *(*v208 + 296) = sub_100287444;
    *(v70 + 304) = sub_1002876AC;
    *(v70 + 312) = sub_100287880;
    *(v70 + 320) = sub_100287924;
    *(v70 + 328) = sub_100287A94;
    *(v70 + 336) = sub_100287E18;
    v71 = sub_1002881B0;
  }

  else if (v67 == 8)
  {
    if (*(v66 + 104))
    {
      v68 = ftell(*(v66 + 104));
      v66 = *v208;
    }

    else
    {
      v68 = 0;
    }

    sub_1002317F4(*(v66 + 16));
    v103 = v102;
    v104 = *v208;
    *(*v208 + 32) = v103;
    if (v8 == 2 && v68)
    {
      if (v68 >= 1024)
      {
        v105 = 1024;
      }

      else
      {
        v105 = v68;
      }

      fseek(*(v104 + 104), -v105, 2);
      v106 = sub_1001D90AC(v105 + 2);
      v107 = -1;
      while (1)
      {
        v108 = ftell(*(*v208 + 104));
        v109 = sub_1002862DC(*v208, v106, v105);
        v110 = v109;
        if (!v109)
        {
          break;
        }

        v111 = strstr(v109, "</opencv_storage>");
        if (v111)
        {
          do
          {
            v112 = v111;
            v111 = strstr(v111 + 17, "</opencv_storage>");
          }

          while (v111);
          v107 = v112 - v110 + v108;
        }
      }

      j__free(v106);
      if (v107 < 0)
      {
        sub_1002830D8(v208);
        memset(__sa, 0, sizeof(__sa));
        qmemcpy(sub_1002A80E0(__sa, 53), "Could not find </opencv_storage> in the end of file.\n", 53);
        sub_1002A8980(-2, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4383);
      }

      v113 = *v208;
      v115 = (*v208 + 104);
      v114 = *(*v208 + 104);
      if (v114)
      {
        fclose(v114);
      }

      else
      {
        v133 = *(*v208 + 112);
        if (v133)
        {
          gzclose(v133);
        }
      }

      *(v113 + 352) = 0;
      *(v113 + 368) = 0;
      *(v113 + 432) = 0;
      *v115 = 0;
      v115[1] = 0;
      v134 = fopen(*(*v208 + 96), "r+t");
      *(*v208 + 104) = v134;
      if (!v134)
      {
        memset(__sa, 0, sizeof(__sa));
        *sub_1002A80E0(__sa, 8) = 0x656C69663E2D7366;
        sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4387);
      }

      fseek(v134, v107, 0);
      sub_10028614C(*v208, " <!-- resumed -->");
      fseek(*(*v208 + 104), 0, 2);
      sub_10028614C(*v208, "\n");
    }

    else
    {
      if (a4)
      {
        if (!strcmp(a4, "UTF-16") || !strcmp(a4, "utf-16") || !strcmp(a4, "Utf-16"))
        {
          sub_1002830D8(v208);
          memset(__sa, 0, sizeof(__sa));
          qmemcpy(sub_1002A80E0(__sa, 57), "UTF-16 XML encoding is not supported! Use 8-bit encoding\n", 57);
          sub_1002A8980(-5, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4342);
        }

        if (strlen(a4) >= 0x3E8)
        {
          memset(__sa, 0, sizeof(__sa));
          qmemcpy(sub_1002A80E0(__sa, 23), "strlen(encoding) < 1000", 23);
          sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4345);
        }

        sprintf(__sa, "<?xml version=1.0 encoding=%s?>\n", a4);
        sub_10028614C(*v208, __sa);
      }

      else
      {
        sub_10028614C(v104, "<?xml version=1.0?>\n");
      }

      sub_10028614C(*v208, "<opencv_storage>\n");
    }

    v70 = *v208;
    *(*v208 + 296) = sub_100286448;
    *(v70 + 304) = sub_100286674;
    *(v70 + 312) = sub_100286758;
    *(v70 + 320) = sub_100286828;
    *(v70 + 328) = sub_100286988;
    *(v70 + 336) = sub_100286DB0;
    v71 = sub_100287358;
  }

  else
  {
    if (v8 == 2)
    {
      if (fseek(*(v66 + 104), 0, 2))
      {
LABEL_156:
        memset(__sa, 0, sizeof(__sa));
        qmemcpy(sub_1002A80E0(__sa, 39), "Could not find '}' in the end of file.\n", 39);
        sub_1002A8980(-2, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4447);
      }

      v77 = 0;
      while (fgetc(*(*v208 + 104)) != 125)
      {
        if (fseek(*(*v208 + 104), --v77, 2))
        {
          goto LABEL_156;
        }
      }

      fseek(*(*v208 + 104), v77, 2);
      v135 = *v208;
      v137 = (*v208 + 104);
      v136 = *(*v208 + 104);
      if (v136)
      {
        fclose(v136);
      }

      else
      {
        v187 = *(*v208 + 112);
        if (v187)
        {
          gzclose(v187);
        }
      }

      *(v135 + 352) = 0;
      *(v135 + 368) = 0;
      *(v135 + 432) = 0;
      *v137 = 0;
      v137[1] = 0;
      v188 = fopen(*(*v208 + 96), "r+t");
      *(*v208 + 104) = v188;
      if (!v188)
      {
        sub_1001FA81C(__sa, "fs->file");
        sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4441);
      }

      fseek(v188, v77, 2);
      fputs(",", *(*v208 + 104));
    }

    else
    {
      sub_10028614C(v66, "{\n");
    }

    v70 = *v208;
    *(*v208 + 64) = 4;
    *(v70 + 296) = sub_1002882AC;
    *(v70 + 304) = sub_1002884A0;
    *(v70 + 312) = sub_10028868C;
    *(v70 + 320) = sub_100288730;
    *(v70 + 328) = sub_1002888B0;
    *(v70 + 336) = sub_100288B60;
    v71 = sub_100288F04;
  }

  *(v70 + 344) = v71;
LABEL_399:
  *(v70 + 432) = 1;
LABEL_400:
  if ((variable initialization expression of PointTrail.isStarted() & 0x80000000) != 0)
  {
    goto LABEL_411;
  }

  v191 = *v208;
  v193 = (*v208 + 104);
  v192 = *(*v208 + 104);
  if (!v192)
  {
    v194 = *(*v208 + 112);
    if (v194)
    {
      if (*(*v208 + 8))
      {
        goto LABEL_412;
      }

      gzclose(v194);
LABEL_410:
      *(v191 + 352) = 0;
      *(v191 + 368) = 0;
      *(v191 + 432) = 0;
      *v193 = 0;
      v193[1] = 0;
      v191 = *v208;
      *(*v208 + 432) = 1;
      goto LABEL_412;
    }

    if (*(*v208 + 376) || *(*v208 + 352))
    {
      if (*(*v208 + 8))
      {
        goto LABEL_412;
      }

      goto LABEL_410;
    }

LABEL_411:
    sub_1002830D8(v208);
    v191 = *v208;
    goto LABEL_412;
  }

  if (!*(*v208 + 8))
  {
    fclose(v192);
    goto LABEL_410;
  }

LABEL_412:
  v195 = __p;
  if (__p)
  {
    v196 = v206;
    while (v196 != v195)
    {
      v197 = *(v196 - 1);
      v196 -= 3;
      if (v197 < 0)
      {
        operator delete(*v196);
      }
    }

    operator delete(v195);
  }

  return v191;
}

void sub_100285E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_1002A8124(&__p);
  sub_1002860D8(&a22);
  _Unwind_Resume(a1);
}

void sub_1002860C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1002860D8(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10028614C(void *a1, char *__s)
{
  v2 = __s;
  v3 = a1[47];
  if (v3)
  {
    result = strlen(__s);
    if (result)
    {
      v5 = result;
      v6 = v3[5];
      do
      {
        v8 = v3[2];
        v9 = v3[1];
        if (v8 == v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = ((v8 - v9) << 9) - 1;
        }

        v11 = v3[4] + v6;
        if (v10 == v11)
        {
          result = sub_100293C50(v3);
          v9 = v3[1];
          v11 = v3[5] + v3[4];
        }

        v7 = *v2++;
        *(*(v9 + ((v11 >> 9) & 0x7FFFFFFFFFFFF8)) + (v11 & 0xFFF)) = v7;
        v6 = v3[5] + 1;
        v3[5] = v6;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v12 = a1[13];
    if (v12)
    {

      return fputs(v2, v12);
    }

    else
    {
      v13 = a1[14];
      if (!v13)
      {
        v14[0] = 0;
        v14[1] = 0;
        qmemcpy(sub_1002A80E0(v14, 25), "The storage is not opened", 25);
        sub_1002A8980(-2, v14, "icvPuts", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 405);
      }

      return gzputs(v13, v2);
    }
  }

  return result;
}

char *sub_1002862DC(void *a1, char *a2, char *buf)
{
  v3 = a1[44];
  if (v3)
  {
    v4 = 0;
    v6 = a1[45];
    v5 = a1[46];
    v7 = v3 + v5;
    while (1)
    {
      v8 = v4;
      v9 = v5 + v4;
      if (v5 + v4 >= v6 || v4 >= buf - 1)
      {
        break;
      }

      v11 = *(v7 + v4);
      if (*(v7 + v4))
      {
        ++v4;
        a2[v8] = v11;
        if (v11 != 10)
        {
          continue;
        }
      }

      v9 = v5 + v8 + 1;
      LODWORD(v8) = v4;
      break;
    }

    a2[v8] = 0;
    a1[46] = v9;
    if (v8 <= 0)
    {
      return 0;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    v12 = a1[13];
    if (v12)
    {

      return fgets(a2, buf, v12);
    }

    else
    {
      v14 = a1[14];
      if (!v14)
      {
        v15[0] = 0;
        v15[1] = 0;
        qmemcpy(sub_1002A80E0(v15, 25), "The storage is not opened", 25);
        sub_1002A8980(-2, v15, "icvGets", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 434);
      }

      return gzgets(v14, a2, buf);
    }
  }
}

char *sub_100286448(uint64_t a1, char *a2, char a3, _BYTE *a4)
{
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  if ((a3 & 7u) <= 4)
  {
    v14[0] = 0;
    v14[1] = 0;
    qmemcpy(sub_1002A80E0(v14, 66), "Some collection type: CV_NODE_SEQ or CV_NODE_MAP must be specified", 66);
    sub_1002A8980(-5, v14, "icvXMLStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2974);
  }

  if (a4 && *a4)
  {
    v7 = v20;
    *&v19 = "type_id";
    *(&v19 + 1) = a4;
  }

  else
  {
    v7 = &v19;
  }

  *v7 = 0;
  sub_10029433C(a1, a2, 1, &v19, 0);
  v8 = *(a1 + 68) & 0xFFFFFFDF;
  v17 = *(a1 + 64);
  v18 = v8;
  v16 = *(a1 + 72);
  sub_100231AF4(*(a1 + 32), __src);
  result = sub_100233314(*(a1 + 56), __src);
  v10 = *(a1 + 64) + 2;
  *(a1 + 64) = v10;
  if ((a3 & 8) == 0)
  {
    v11 = *(a1 + 120);
    result = *(a1 + 128);
    v12 = *(a1 + 88);
    if (v11 > &result[v12])
    {
      *v11 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v12) = *(a1 + 88);
      v10 = *(a1 + 64);
    }

    if (v12 != v10)
    {
      memset(result, 32, v10);
      *(a1 + 88) = v10;
      result = *(a1 + 128);
    }

    *(a1 + 120) = &result[v10];
  }

  *(a1 + 68) = a3 & 0xF | 0x20;
  if (a2)
  {
    result = sub_100231F7C(*(a1 + 32), a2, 0xFFFFFFFF);
    *(a1 + 72) = result;
  }

  else
  {
    v13 = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = v13;
  return result;
}