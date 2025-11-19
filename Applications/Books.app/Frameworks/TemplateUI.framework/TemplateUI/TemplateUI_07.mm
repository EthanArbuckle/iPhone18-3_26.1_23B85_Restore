void sub_14BBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_14BBE4(__int128 *a1, const void **a2, uint64_t *a3)
{
  v63 = *a1;
  v64 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v6 = *a3;
  v7 = sub_ED6C8((*a3 + 40), &v63);
  v8 = sub_ED6C8((v6 + 40), a2 - 3);
  v9 = v7[7];
  v10 = v8[7];
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    for (i = (a1 + 24); ; i = (i + 24))
    {
      v24 = *a3;
      v25 = sub_ED6C8((*a3 + 40), &v63);
      v26 = sub_ED6C8((v24 + 40), i);
      v27 = v25[7];
      v28 = v26[7];
      if (v27 == v28)
      {
        v29 = v25[6];
        v30 = v26[6];
        v13 = v29 == v30;
        v31 = v29 < v30;
        if (v13)
        {
          v31 = v25 < v26;
        }

        if (v31)
        {
          goto LABEL_23;
        }
      }

      else if (v27 < v28)
      {
        goto LABEL_23;
      }
    }
  }

  v11 = v7[6];
  v12 = v8[6];
  v13 = v11 == v12;
  v14 = v11 < v12;
  if (v13)
  {
    v14 = v7 < v8;
  }

  if (v14)
  {
    goto LABEL_15;
  }

LABEL_5:
  for (i = (a1 + 24); i < a2; i = (i + 24))
  {
    v16 = *a3;
    v17 = sub_ED6C8((*a3 + 40), &v63);
    v18 = sub_ED6C8((v16 + 40), i);
    v19 = v17[7];
    v20 = v18[7];
    if (v19 == v20)
    {
      v21 = v17[6];
      v22 = v18[6];
      v13 = v21 == v22;
      v23 = v21 < v22;
      if (v13)
      {
        v23 = v17 < v18;
      }

      if (v23)
      {
        break;
      }
    }

    else if (v19 < v20)
    {
      break;
    }
  }

LABEL_23:
  if (i < a2)
  {
    for (a2 -= 3; ; a2 -= 3)
    {
      v32 = *a3;
      v33 = sub_ED6C8((*a3 + 40), &v63);
      v34 = sub_ED6C8((v32 + 40), a2);
      v35 = v33[7];
      v36 = v34[7];
      if (v35 == v36)
      {
        v37 = v33[6];
        v38 = v34[6];
        v13 = v37 == v38;
        v39 = v37 < v38;
        if (v13)
        {
          v39 = v33 < v34;
        }

        if (!v39)
        {
          break;
        }
      }

      else if (v35 >= v36)
      {
        break;
      }
    }
  }

LABEL_45:
  while (i < a2)
  {
    v40 = *i;
    v66 = *(i + 2);
    v65 = v40;
    v41 = *a2;
    *(i + 2) = a2[2];
    *i = v41;
    v42 = v65;
    a2[2] = v66;
    *a2 = v42;
    do
    {
      while (1)
      {
        i = (i + 24);
        v43 = *a3;
        v44 = sub_ED6C8((*a3 + 40), &v63);
        v45 = sub_ED6C8((v43 + 40), i);
        v46 = v44[7];
        v47 = v45[7];
        if (v46 == v47)
        {
          break;
        }

        if (v46 < v47)
        {
          goto LABEL_41;
        }
      }

      v48 = v44[6];
      v49 = v45[6];
      v13 = v48 == v49;
      v50 = v48 < v49;
      if (v13)
      {
        v50 = v44 < v45;
      }
    }

    while (!v50);
    do
    {
LABEL_41:
      while (1)
      {
        a2 -= 3;
        v51 = *a3;
        v52 = sub_ED6C8((*a3 + 40), &v63);
        v53 = sub_ED6C8((v51 + 40), a2);
        v54 = v52[7];
        v55 = v53[7];
        if (v54 == v55)
        {
          break;
        }

        if (v54 >= v55)
        {
          goto LABEL_45;
        }
      }

      v56 = v52[6];
      v57 = v53[6];
      v13 = v56 == v57;
      v58 = v56 < v57;
      if (v13)
      {
        v58 = v52 < v53;
      }
    }

    while (v58);
  }

  v59 = i - 3;
  if ((i - 24) == a1)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*v59);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v60 = *v59;
    *(a1 + 2) = *(i - 1);
    *a1 = v60;
    *(i - 1) = 0;
    *(i - 24) = 0;
  }

  v61 = v63;
  *(i - 1) = v64;
  *v59 = v61;
  return i;
}

void sub_14BF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_14BF54(__int128 *a1, const void **a2, uint64_t *a3)
{
  v60 = *a1;
  v61 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  for (i = 24; ; i += 24)
  {
    v7 = *a3;
    v8 = sub_ED6C8((*a3 + 40), (a1 + i));
    v9 = sub_ED6C8((v7 + 40), &v60);
    v10 = v8[7];
    v11 = v9[7];
    if (v10 == v11)
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_9;
    }

LABEL_8:
    ;
  }

  v12 = v8[6];
  v13 = v9[6];
  v14 = v12 == v13;
  v15 = v12 < v13;
  if (v14)
  {
    v15 = v8 < v9;
  }

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = a1 + i;
  if (i == 24)
  {
    if (v16 < a2)
    {
      do
      {
        while (1)
        {
          a2 -= 3;
          v25 = *a3;
          v26 = sub_ED6C8((*a3 + 40), a2);
          v27 = sub_ED6C8((v25 + 40), &v60);
          v28 = v26[7];
          v29 = v27[7];
          if (v28 == v29)
          {
            break;
          }

          if (v28 < v29 || v16 >= a2)
          {
            goto LABEL_32;
          }
        }

        v30 = v26[6];
        v31 = v27[6];
        v14 = v30 == v31;
        v32 = v30 >= v31;
        if (v14)
        {
          v32 = v26 >= v27;
        }
      }

      while (v32 && v16 < a2);
    }
  }

  else
  {
    do
    {
      while (1)
      {
        a2 -= 3;
        v17 = *a3;
        v18 = sub_ED6C8((*a3 + 40), a2);
        v19 = sub_ED6C8((v17 + 40), &v60);
        v20 = v18[7];
        v21 = v19[7];
        if (v20 == v21)
        {
          break;
        }

        if (v20 < v21)
        {
          goto LABEL_32;
        }
      }

      v22 = v18[6];
      v23 = v19[6];
      v14 = v22 == v23;
      v24 = v22 < v23;
      if (v14)
      {
        v24 = v18 < v19;
      }
    }

    while (!v24);
  }

LABEL_32:
  v35 = v16;
  if (v16 < a2)
  {
    v36 = a2;
    do
    {
      v37 = *v35;
      v63 = *(v35 + 16);
      v62 = v37;
      v38 = *v36;
      *(v35 + 16) = v36[2];
      *v35 = v38;
      v39 = v62;
      v36[2] = v63;
      *v36 = v39;
      do
      {
        while (1)
        {
          v35 += 24;
          v40 = *a3;
          v41 = sub_ED6C8((*a3 + 40), v35);
          v42 = sub_ED6C8((v40 + 40), &v60);
          v43 = v41[7];
          v44 = v42[7];
          if (v43 == v44)
          {
            break;
          }

          if (v43 >= v44)
          {
            goto LABEL_43;
          }
        }

        v45 = v41[6];
        v46 = v42[6];
        v14 = v45 == v46;
        v47 = v45 < v46;
        if (v14)
        {
          v47 = v41 < v42;
        }
      }

      while (v47);
      do
      {
LABEL_43:
        while (1)
        {
          v36 -= 3;
          v48 = *a3;
          v49 = sub_ED6C8((*a3 + 40), v36);
          v50 = sub_ED6C8((v48 + 40), &v60);
          v51 = v49[7];
          v52 = v50[7];
          if (v51 == v52)
          {
            break;
          }

          if (v51 < v52)
          {
            goto LABEL_47;
          }
        }

        v53 = v49[6];
        v54 = v50[6];
        v14 = v53 == v54;
        v55 = v53 < v54;
        if (v14)
        {
          v55 = v49 < v50;
        }
      }

      while (!v55);
LABEL_47:
      ;
    }

    while (v35 < v36);
  }

  v56 = (v35 - 24);
  if ((v35 - 24) == a1)
  {
    if (*(v35 - 1) < 0)
    {
      operator delete(*v56);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v57 = *v56;
    *(a1 + 2) = *(v35 - 8);
    *a1 = v57;
    *(v35 - 1) = 0;
    *(v35 - 24) = 0;
  }

  v58 = v60;
  *(v35 - 8) = v61;
  *v56 = v58;
  return v35 - 24;
}

void sub_14C258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_14C284(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_14B1D4(a1, (a1 + 24), (a2 - 24), a3);
        return 1;
      case 4:
        sub_14B46C(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        sub_14B62C(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 24;
      v8 = *a3;
      v9 = sub_ED6C8((*a3 + 40), (a2 - 24));
      v10 = sub_ED6C8((v8 + 40), a1);
      v11 = v9[7];
      v12 = v10[7];
      if (v11 == v12)
      {
        v13 = v9[6];
        v14 = v10[6];
        v15 = v13 == v14;
        v16 = v13 < v14;
        if (v15)
        {
          v16 = v9 < v10;
        }

        if (!v16)
        {
          return 1;
        }
      }

      else if (v11 >= v12)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *a1;
      v42 = *(v7 + 16);
      *a1 = *v7;
      *(a1 + 16) = v42;
      *v7 = v41;
      *(v7 + 16) = v40;
      return 1;
    }
  }

  v17 = (a1 + 48);
  sub_14B1D4(a1, (a1 + 24), (a1 + 48), a3);
  v18 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (2)
  {
    v21 = *a3;
    v22 = sub_ED6C8((*a3 + 40), v18);
    v23 = sub_ED6C8((v21 + 40), v17);
    v24 = v22[7];
    v25 = v23[7];
    if (v24 == v25)
    {
      v26 = v22[6];
      v27 = v23[6];
      v15 = v26 == v27;
      v28 = v26 < v27;
      if (v15)
      {
        v28 = v22 < v23;
      }

      if (!v28)
      {
        goto LABEL_37;
      }
    }

    else if (v24 >= v25)
    {
      goto LABEL_37;
    }

    v44 = *v18;
    v45 = *(v18 + 16);
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 0;
    for (i = v19; ; i -= 24)
    {
      v30 = a1 + i;
      if (*(a1 + i + 95) < 0)
      {
        operator delete(*(v30 + 72));
      }

      *(v30 + 72) = *(v30 + 48);
      *(v30 + 88) = *(v30 + 64);
      *(v30 + 71) = 0;
      *(v30 + 48) = 0;
      if (i == -48)
      {
        v39 = a1;
        goto LABEL_36;
      }

      v31 = *a3;
      v32 = sub_ED6C8((*a3 + 40), &v44);
      v33 = sub_ED6C8((v31 + 40), (a1 + i + 24));
      v34 = v32[7];
      v35 = v33[7];
      if (v34 == v35)
      {
        break;
      }

      if (v34 >= v35)
      {
        goto LABEL_34;
      }

LABEL_32:
      ;
    }

    v36 = v32[6];
    v37 = v33[6];
    v15 = v36 == v37;
    v38 = v36 < v37;
    if (v15)
    {
      v38 = v32 < v33;
    }

    if (v38)
    {
      goto LABEL_32;
    }

LABEL_34:
    v39 = a1 + i + 48;
    if (*(a1 + i + 71) < 0)
    {
      operator delete(*v39);
    }

LABEL_36:
    *v39 = v44;
    *(v39 + 16) = v45;
    if (++v20 != 8)
    {
LABEL_37:
      v17 = v18;
      v19 += 24;
      v18 += 24;
      if (v18 == a2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 24 == a2;
  }
}

void sub_14C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_14C5A4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_14C820(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      while (1)
      {
        v14 = *a4;
        v15 = sub_ED6C8((*a4 + 40), v13);
        v16 = sub_ED6C8((v14 + 40), a1);
        v17 = v15[7];
        v18 = v16[7];
        if (v17 == v18)
        {
          break;
        }

        if (v17 < v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        v13 = (v13 + 24);
        if (v13 == a3)
        {
          goto LABEL_15;
        }
      }

      v19 = v15[6];
      v20 = v16[6];
      v21 = v19 == v20;
      v22 = v19 < v20;
      if (v21)
      {
        v22 = v15 < v16;
      }

      if (!v22)
      {
        goto LABEL_14;
      }

LABEL_13:
      v23 = *(v13 + 2);
      v24 = *v13;
      v25 = *(a1 + 16);
      *v13 = *a1;
      *(v13 + 2) = v25;
      *a1 = v24;
      *(a1 + 16) = v23;
      sub_14C820(a1, a4, v9, a1);
      goto LABEL_14;
    }

LABEL_15:
    if (v8 >= 25)
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v27 = a2 - 3;
      do
      {
        v28 = *a1;
        *v36 = *(a1 + 8);
        *&v36[7] = *(a1 + 15);
        v29 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v30 = sub_14CAF0(a1, a4, v26);
        v31 = v30;
        v32 = *(v30 + 23);
        if (v27 == v30)
        {
          if (v32 < 0)
          {
            operator delete(*v30);
          }

          *v31 = v28;
          v31[1] = *v36;
          *(v31 + 15) = *&v36[7];
          *(v31 + 23) = v29;
        }

        else
        {
          if (v32 < 0)
          {
            operator delete(*v30);
          }

          v33 = *v27;
          v31[2] = v27[2];
          *v31 = v33;
          *v27 = v28;
          v27[1] = *v36;
          *(v27 + 15) = *&v36[7];
          *(v27 + 23) = v29;
          sub_14CC18(a1, (v31 + 3), a4, 0xAAAAAAAAAAAAAAABLL * ((v31 - a1 + 24) >> 3));
        }

        v27 -= 3;
      }

      while (v26-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_14C808(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_14C820(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v5 = a4;
  v50 = v4 >> 1;
  if ((v4 >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v9 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
  v10 = (a1 + 24 * v9);
  v11 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
  if (v11 < a3)
  {
    v12 = *a2;
    v13 = sub_ED6C8((*a2 + 40), (a1 + 24 * v9));
    v14 = sub_ED6C8((v12 + 40), v10 + 3);
    v15 = v13[7];
    v16 = v14[7];
    if (v15 == v16)
    {
      v17 = v13[6];
      v18 = v14[6];
      v19 = v17 == v18;
      v20 = v17 < v18;
      if (v19)
      {
        v20 = v13 < v14;
      }

      if (!v20)
      {
        goto LABEL_11;
      }
    }

    else if (v15 >= v16)
    {
      goto LABEL_11;
    }

    v10 += 3;
    v9 = v11;
  }

LABEL_11:
  v21 = *a2;
  v22 = sub_ED6C8((*a2 + 40), v10);
  v23 = sub_ED6C8((v21 + 40), v5);
  v25 = v22[7];
  v26 = v23[7];
  if (v25 != v26)
  {
    if (v25 < v26)
    {
      return result;
    }

    goto LABEL_17;
  }

  v27 = v22[6];
  v28 = v23[6];
  v19 = v27 == v28;
  v29 = v27 < v28;
  if (v19)
  {
    v29 = v22 < v23;
  }

  if (!v29)
  {
LABEL_17:
    v51 = *v5;
    v52 = v5[2];
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    while (1)
    {
      v30 = v10;
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v31 = *v10;
      v5[2] = v10[2];
      *v5 = v31;
      *(v10 + 23) = 0;
      *v10 = 0;
      if (v50 < v9)
      {
LABEL_37:
        result = v51;
        v30[1].n128_u64[0] = v52;
        *v30 = result;
        return result;
      }

      v32 = 2 * v9;
      v9 = (2 * v9) | 1;
      v10 = (a1 + 24 * v9);
      v33 = v32 + 2;
      if (v32 + 2 < a3)
      {
        v34 = *a2;
        v35 = sub_ED6C8((*a2 + 40), (a1 + 24 * v9));
        v36 = sub_ED6C8((v34 + 40), v10 + 3);
        v37 = v35[7];
        v38 = v36[7];
        if (v37 == v38)
        {
          v39 = v35[6];
          v40 = v36[6];
          v19 = v39 == v40;
          v41 = v39 < v40;
          if (v19)
          {
            v41 = v35 < v36;
          }

          if (!v41)
          {
            goto LABEL_29;
          }

LABEL_28:
          v10 += 3;
          v9 = v33;
          goto LABEL_29;
        }

        if (v37 < v38)
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      v42 = *a2;
      v43 = sub_ED6C8((*a2 + 40), v10);
      v44 = sub_ED6C8((v42 + 40), &v51);
      v45 = v43[7];
      v46 = v44[7];
      if (v45 == v46)
      {
        v47 = v43[6];
        v48 = v44[6];
        v19 = v47 == v48;
        v49 = v47 < v48;
        if (v19)
        {
          v49 = v43 < v44;
        }

        v5 = v30;
        if (v49)
        {
LABEL_35:
          if (v30[1].n128_i8[7] < 0)
          {
            operator delete(v30->n128_u64[0]);
          }

          goto LABEL_37;
        }
      }

      else
      {
        v5 = v30;
        if (v45 < v46)
        {
          goto LABEL_35;
        }
      }
    }
  }

  return result;
}

void sub_14CAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_14CAF0(const void **a1, uint64_t *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[3 * v5];
    v8 = v7 + 3;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 >= a3)
    {
      goto LABEL_10;
    }

    v11 = v7 + 6;
    v12 = *a2;
    v13 = sub_ED6C8((*a2 + 40), v8);
    v14 = sub_ED6C8((v12 + 40), v11);
    v15 = v13[7];
    v16 = v14[7];
    if (v15 != v16)
    {
      if (v15 >= v16)
      {
        goto LABEL_10;
      }

LABEL_9:
      v8 = v11;
      v5 = v10;
      goto LABEL_10;
    }

    v17 = v13[6];
    v18 = v14[6];
    v19 = v17 == v18;
    v20 = v17 < v18;
    if (v19)
    {
      v20 = v13 < v14;
    }

    if (v20)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v21 = *v8;
    a1[2] = v8[2];
    *a1 = v21;
    *(v8 + 23) = 0;
    *v8 = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double sub_14CC18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v6 = (a4 - 2) >> 1;
  v7 = (a1 + 24 * v6);
  v8 = (a2 - 24);
  v9 = *a3;
  v10 = sub_ED6C8((*a3 + 40), v7);
  v11 = sub_ED6C8((v9 + 40), v8);
  v13 = v10[7];
  v14 = v11[7];
  if (v13 == v14)
  {
    v15 = v10[6];
    v16 = v11[6];
    v17 = v15 == v16;
    v18 = v15 < v16;
    if (v17)
    {
      v18 = v10 < v11;
    }

    if (!v18)
    {
      return result;
    }
  }

  else if (v13 >= v14)
  {
    return result;
  }

  v29 = *v8;
  v30 = v8[2];
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  while (1)
  {
    v19 = v7;
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    v20 = *v7;
    v8[2] = v7[2];
    *v8 = v20;
    *(v7 + 23) = 0;
    *v7 = 0;
    if (!v6)
    {
      break;
    }

    v6 = (v6 - 1) >> 1;
    v7 = (a1 + 24 * v6);
    v21 = *a3;
    v22 = sub_ED6C8((*a3 + 40), v7);
    v23 = sub_ED6C8((v21 + 40), &v29);
    v24 = v22[7];
    v25 = v23[7];
    if (v24 == v25)
    {
      v26 = v22[6];
      v27 = v23[6];
      v17 = v26 == v27;
      v28 = v26 < v27;
      if (v17)
      {
        v28 = v22 < v23;
      }

      v8 = v19;
      if (!v28)
      {
LABEL_18:
        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        break;
      }
    }

    else
    {
      v8 = v19;
      if (v24 >= v25)
      {
        goto LABEL_18;
      }
    }
  }

  result = *&v29;
  *v19 = v29;
  v19[2] = v30;
  return result;
}

void sub_14CDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_14CDC0(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_4050();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_396BC(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_14CEB4(a1, v13);
    v7 = a1[1];
    result = sub_14CF64(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_14CEA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_14CF64(va);
  _Unwind_Resume(a1);
}

void sub_14CEB4(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_14CF64(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_14CFB8(unint64_t *a1, void **a2, uint64_t *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          sub_14D348(v9, v9 + 1, a2 - 1, a3);
          return;
        case 4uLL:
          sub_14D60C(v9, v9 + 1, v9 + 2, a2 - 1, a3);
          return;
        case 5uLL:
          sub_14D808(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v32 = *(a2 - 1);
        v45 = *v9;
        v46 = v32;
        v33 = *a3;
        v34 = sub_3D34((*a3 + 80), &v46);
        v35 = sub_3D34((v33 + 80), &v45);
        v36 = v34[4];
        v37 = v35[4];
        if (v36 == v37)
        {
          v38 = v34[3];
          v39 = v35[3];
          v27 = v38 == v39;
          v40 = v38 < v39;
          if (v27)
          {
            v40 = v34 < v35;
          }

          if (!v40)
          {
            return;
          }
        }

        else if (v36 >= v37)
        {
          return;
        }

        v41 = *v9;
        *v9 = 0;
        v42 = *(a2 - 1);
        *(a2 - 1) = 0;
        v43 = *v9;
        *v9 = v42;

        v44 = *(a2 - 1);
        *(a2 - 1) = v41;

        return;
      }
    }

    if (v12 <= 23)
    {
      if (a5)
      {
        sub_14DA94(v9, a2, a3);
      }

      else
      {
        sub_14DC44(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    if (v12 < 0x81)
    {
      sub_14D348(&v9[v12 >> 1], v9, a2 - 1, a3);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_14D348(v9, &v9[v12 >> 1], a2 - 1, a3);
      sub_14D348(v9 + 1, v14 - 1, a2 - 2, a3);
      sub_14D348(v9 + 2, &v9[v13 + 1], a2 - 3, a3);
      sub_14D348(v14 - 1, v14, &v9[v13 + 1], a3);
      v15 = *v9;
      *v9 = 0;
      v16 = *v14;
      *v14 = 0;
      v17 = *v9;
      *v9 = v16;

      v18 = *v14;
      *v14 = v15;

      if (a5)
      {
        goto LABEL_22;
      }
    }

    v19 = *(v9 - 1);
    v45 = *v9;
    v46 = v19;
    v20 = *a3;
    v21 = sub_3D34((*a3 + 80), &v46);
    v22 = sub_3D34((v20 + 80), &v45);
    v23 = v21[4];
    v24 = v22[4];
    if (v23 == v24)
    {
      v25 = v21[3];
      v26 = v22[3];
      v27 = v25 == v26;
      v28 = v25 < v26;
      if (v27)
      {
        v28 = v21 < v22;
      }

      if (!v28)
      {
LABEL_26:
        v9 = sub_14DDB8(v9, a2, a3);
        goto LABEL_27;
      }
    }

    else if (v23 >= v24)
    {
      goto LABEL_26;
    }

LABEL_22:
    v29 = sub_14E0F8(v9, a2, a3);
    if ((v30 & 1) == 0)
    {
      goto LABEL_25;
    }

    v31 = sub_14E404(v9, v29, a3);
    v9 = v29 + 1;
    if (sub_14E404(v29 + 1, a2, a3))
    {
      a4 = -v11;
      a2 = v29;
      if (v31)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v31)
    {
LABEL_25:
      sub_14CFB8(a1, v29, a3, -v11, a5 & 1);
      v9 = v29 + 1;
LABEL_27:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    sub_14E6F8(v9, a2, a2, a3);
  }
}

uint64_t sub_14D348(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  v68 = *a1;
  v69 = v8;
  v9 = *a4;
  v10 = sub_3D34((*a4 + 80), &v69);
  v11 = sub_3D34((v9 + 80), &v68);
  v12 = v10[4];
  v13 = v11[4];
  if (v12 == v13)
  {
    v14 = v10[3];
    v15 = v11[3];
    v16 = v14 == v15;
    v17 = v14 < v15;
    if (v16)
    {
      v17 = v10 < v11;
    }

    if (!v17)
    {
LABEL_5:
      v18 = *a3;
      v68 = *v6;
      v69 = v18;
      v19 = *a4;
      v20 = sub_3D34((*a4 + 80), &v69);
      v21 = sub_3D34((v19 + 80), &v68);
      v22 = v20[4];
      v23 = v21[4];
      if (v22 == v23)
      {
        v24 = v20[3];
        v25 = v21[3];
        v16 = v24 == v25;
        v26 = v24 < v25;
        if (v16)
        {
          v26 = v20 < v21;
        }

        if (!v26)
        {
          return 0;
        }
      }

      else if (v22 >= v23)
      {
        return 0;
      }

      v51 = *v6;
      *v6 = 0;
      v52 = *a3;
      *a3 = 0;
      v53 = *v6;
      *v6 = v52;

      v54 = *a3;
      *a3 = v51;

      v55 = *v6;
      v68 = *v7;
      v69 = v55;
      v56 = *a4;
      v57 = sub_3D34((v56 + 80), &v69);
      v58 = sub_3D34((v56 + 80), &v68);
      v59 = v57[4];
      v60 = v58[4];
      v47 = v59 >= v60;
      if (v59 == v60)
      {
        v61 = v57[3];
        v62 = v58[3];
        v16 = v61 == v62;
        v63 = v61 < v62;
        if (v16)
        {
          v63 = v57 < v58;
        }

        if (!v63)
        {
          return 1;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if (v12 >= v13)
  {
    goto LABEL_5;
  }

  v28 = *a3;
  v68 = *v6;
  v69 = v28;
  v29 = *a4;
  v30 = sub_3D34((*a4 + 80), &v69);
  v31 = sub_3D34((v29 + 80), &v68);
  v32 = v30[4];
  v33 = v31[4];
  if (v32 == v33)
  {
    v34 = v30[3];
    v35 = v31[3];
    v16 = v34 == v35;
    v36 = v34 < v35;
    if (v16)
    {
      v36 = v30 < v31;
    }

    if (!v36)
    {
      goto LABEL_15;
    }

LABEL_27:
    v6 = a3;
LABEL_30:
    v64 = *v7;
    *v7 = 0;
    v65 = *v6;
    *v6 = 0;
    v66 = *v7;
    *v7 = v65;

    v67 = *v6;
    *v6 = v64;

    return 1;
  }

  if (v32 < v33)
  {
    goto LABEL_27;
  }

LABEL_15:
  v37 = *v7;
  *v7 = 0;
  v38 = *v6;
  *v6 = 0;
  v39 = *v7;
  *v7 = v38;

  v40 = *v6;
  *v6 = v37;

  v41 = *a3;
  v68 = *v6;
  v69 = v41;
  v42 = *a4;
  v43 = sub_3D34((v42 + 80), &v69);
  v44 = sub_3D34((v42 + 80), &v68);
  v45 = v43[4];
  v46 = v44[4];
  v47 = v45 >= v46;
  if (v45 == v46)
  {
    v48 = v43[3];
    v49 = v44[3];
    v16 = v48 == v49;
    v50 = v48 < v49;
    if (v16)
    {
      v50 = v43 < v44;
    }

    v7 = v6;
    v6 = a3;
    if (!v50)
    {
      return 1;
    }

    goto LABEL_30;
  }

  v7 = v6;
  v6 = a3;
LABEL_29:
  if (!v47)
  {
    goto LABEL_30;
  }

  return 1;
}

void sub_14D60C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  sub_14D348(a1, a2, a3, a5);
  v10 = *a4;
  v50 = *a3;
  v51 = v10;
  v11 = *a5;
  v12 = sub_3D34((*a5 + 80), &v51);
  v13 = sub_3D34((v11 + 80), &v50);
  v14 = v12[4];
  v15 = v13[4];
  if (v14 != v15)
  {
    if (v14 >= v15)
    {
      return;
    }

LABEL_7:
    v20 = *a3;
    *a3 = 0;
    v21 = *a4;
    *a4 = 0;
    v22 = *a3;
    *a3 = v21;

    v23 = *a4;
    *a4 = v20;

    v24 = *a3;
    v50 = *a2;
    v51 = v24;
    v25 = *a5;
    v26 = sub_3D34((*a5 + 80), &v51);
    v27 = sub_3D34((v25 + 80), &v50);
    v28 = v26[4];
    v29 = v27[4];
    if (v28 == v29)
    {
      v30 = v26[3];
      v31 = v27[3];
      v18 = v30 == v31;
      v32 = v30 < v31;
      if (v18)
      {
        v32 = v26 < v27;
      }

      if (!v32)
      {
        return;
      }
    }

    else if (v28 >= v29)
    {
      return;
    }

    v33 = *a2;
    *a2 = 0;
    v34 = *a3;
    *a3 = 0;
    v35 = *a2;
    *a2 = v34;

    v36 = *a3;
    *a3 = v33;

    v37 = *a2;
    v50 = *a1;
    v51 = v37;
    v38 = *a5;
    v39 = sub_3D34((*a5 + 80), &v51);
    v40 = sub_3D34((v38 + 80), &v50);
    v41 = v39[4];
    v42 = v40[4];
    if (v41 == v42)
    {
      v43 = v39[3];
      v44 = v40[3];
      v18 = v43 == v44;
      v45 = v43 < v44;
      if (v18)
      {
        v45 = v39 < v40;
      }

      if (!v45)
      {
        return;
      }
    }

    else if (v41 >= v42)
    {
      return;
    }

    v46 = *a1;
    *a1 = 0;
    v47 = *a2;
    *a2 = 0;
    v48 = *a1;
    *a1 = v47;

    v49 = *a2;
    *a2 = v46;

    return;
  }

  v16 = v12[3];
  v17 = v13[3];
  v18 = v16 == v17;
  v19 = v16 < v17;
  if (v18)
  {
    v19 = v12 < v13;
  }

  if (v19)
  {
    goto LABEL_7;
  }
}

void sub_14D808(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_14D60C(a1, a2, a3, a4, a6);
  v12 = *a5;
  v65 = *a4;
  v66 = v12;
  v13 = *a6;
  v14 = sub_3D34((*a6 + 80), &v66);
  v15 = sub_3D34((v13 + 80), &v65);
  v16 = v14[4];
  v17 = v15[4];
  if (v16 != v17)
  {
    if (v16 >= v17)
    {
      return;
    }

LABEL_7:
    v22 = *a4;
    *a4 = 0;
    v23 = *a5;
    *a5 = 0;
    v24 = *a4;
    *a4 = v23;

    v25 = *a5;
    *a5 = v22;

    v26 = *a4;
    v65 = *a3;
    v66 = v26;
    v27 = *a6;
    v28 = sub_3D34((*a6 + 80), &v66);
    v29 = sub_3D34((v27 + 80), &v65);
    v30 = v28[4];
    v31 = v29[4];
    if (v30 == v31)
    {
      v32 = v28[3];
      v33 = v29[3];
      v20 = v32 == v33;
      v34 = v32 < v33;
      if (v20)
      {
        v34 = v28 < v29;
      }

      if (!v34)
      {
        return;
      }
    }

    else if (v30 >= v31)
    {
      return;
    }

    v35 = *a3;
    *a3 = 0;
    v36 = *a4;
    *a4 = 0;
    v37 = *a3;
    *a3 = v36;

    v38 = *a4;
    *a4 = v35;

    v39 = *a3;
    v65 = *a2;
    v66 = v39;
    v40 = *a6;
    v41 = sub_3D34((*a6 + 80), &v66);
    v42 = sub_3D34((v40 + 80), &v65);
    v43 = v41[4];
    v44 = v42[4];
    if (v43 == v44)
    {
      v45 = v41[3];
      v46 = v42[3];
      v20 = v45 == v46;
      v47 = v45 < v46;
      if (v20)
      {
        v47 = v41 < v42;
      }

      if (!v47)
      {
        return;
      }
    }

    else if (v43 >= v44)
    {
      return;
    }

    v48 = *a2;
    *a2 = 0;
    v49 = *a3;
    *a3 = 0;
    v50 = *a2;
    *a2 = v49;

    v51 = *a3;
    *a3 = v48;

    v52 = *a2;
    v65 = *a1;
    v66 = v52;
    v53 = *a6;
    v54 = sub_3D34((*a6 + 80), &v66);
    v55 = sub_3D34((v53 + 80), &v65);
    v56 = v54[4];
    v57 = v55[4];
    if (v56 == v57)
    {
      v58 = v54[3];
      v59 = v55[3];
      v20 = v58 == v59;
      v60 = v58 < v59;
      if (v20)
      {
        v60 = v54 < v55;
      }

      if (!v60)
      {
        return;
      }
    }

    else if (v56 >= v57)
    {
      return;
    }

    v61 = *a1;
    *a1 = 0;
    v62 = *a2;
    *a2 = 0;
    v63 = *a1;
    *a1 = v62;

    v64 = *a2;
    *a2 = v61;

    return;
  }

  v18 = v14[3];
  v19 = v15[3];
  v20 = v18 == v19;
  v21 = v18 < v19;
  if (v20)
  {
    v21 = v14 < v15;
  }

  if (v21)
  {
    goto LABEL_7;
  }
}

void sub_14DA94(void **a1, void **a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a2;
  v5 = (a1 + 1);
  if (a1 + 1 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    v10 = v9[1];
    v37 = *v9;
    v38 = v10;
    v11 = *a3;
    v12 = sub_3D34((*a3 + 80), &v38);
    v13 = sub_3D34((v11 + 80), &v37);
    v14 = v12[4];
    v15 = v13[4];
    if (v14 == v15)
    {
      v16 = v12[3];
      v17 = v13[3];
      v18 = v16 == v17;
      v19 = v16 < v17;
      if (v18)
      {
        v19 = v12 < v13;
      }

      if (!v19)
      {
        goto LABEL_23;
      }
    }

    else if (v14 >= v15)
    {
      goto LABEL_23;
    }

    v20 = *v9;
    v21 = v9[1];
    *v9 = 0;
    v9[1] = v20;
    v22 = a1;
    if (v9 == a1)
    {
      goto LABEL_22;
    }

    v23 = v7;
    while (1)
    {
      v24 = (a1 + v23);
      v37 = *(a1 + v23 - 8);
      v38 = v21;
      v25 = *a3;
      v26 = sub_3D34((*a3 + 80), &v38);
      v27 = sub_3D34((v25 + 80), &v37);
      v28 = v26[4];
      v29 = v27[4];
      if (v28 == v29)
      {
        v30 = v26[3];
        v31 = v27[3];
        v18 = v30 == v31;
        v32 = v30 < v31;
        if (v18)
        {
          v32 = v26 < v27;
        }

        if (!v32)
        {
          v22 = v9;
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v28 >= v29)
      {
        break;
      }

LABEL_18:
      --v9;
      v33 = *(v24 - 1);
      v34 = *v24;
      *(v24 - 1) = 0;
      *v24 = v33;

      v23 -= 8;
      if (!v23)
      {
        v22 = a1;
        goto LABEL_21;
      }
    }

    v22 = (a1 + v23);
LABEL_21:
    v3 = a2;
LABEL_22:
    v35 = *v22;
    *v22 = v21;

LABEL_23:
    v5 = v8 + 1;
    v7 += 8;
  }

  while (v8 + 1 != v3);
}

void sub_14DC44(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a2)
    {
      while (1)
      {
        v7 = v4;
        v4 = v5;
        v8 = v7[1];
        v32 = *v7;
        v33 = v8;
        v9 = *a3;
        v10 = sub_3D34((*a3 + 80), &v33);
        v11 = sub_3D34((v9 + 80), &v32);
        v12 = v10[4];
        v13 = v11[4];
        if (v12 != v13)
        {
          break;
        }

        v14 = v10[3];
        v15 = v11[3];
        v16 = v14 == v15;
        v17 = v14 < v15;
        if (v16)
        {
          v17 = v10 < v11;
        }

        if (v17)
        {
          goto LABEL_9;
        }

LABEL_18:
        v5 = v4 + 1;
        if (v4 + 1 == a2)
        {
          return;
        }
      }

      if (v12 >= v13)
      {
        goto LABEL_18;
      }

LABEL_9:
      v18 = 0;
      v19 = *v4;
      *v4 = 0;
      for (i = v7; ; v7 = i)
      {
        v21 = *v7;
        *v7 = 0;
        v7[1] = v21;

        v22 = *--i;
        v32 = v22;
        v33 = v19;
        v23 = *a3;
        v24 = sub_3D34((*a3 + 80), &v33);
        v25 = sub_3D34((v23 + 80), &v32);
        v26 = v24[4];
        v27 = v25[4];
        if (v26 == v27)
        {
          v28 = v24[3];
          v29 = v25[3];
          v16 = v28 == v29;
          v30 = v28 < v29;
          if (v16)
          {
            v30 = v24 < v25;
          }

          if (!v30)
          {
LABEL_17:
            v31 = *v7;
            *v7 = v19;

            goto LABEL_18;
          }
        }

        else if (v26 >= v27)
        {
          goto LABEL_17;
        }

        v18 = *v7;
      }
    }
  }
}

unint64_t *sub_14DDB8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = 0;
  v68 = *(a2 - 1);
  v69 = v6;
  v7 = *a3;
  v8 = sub_3D34((*a3 + 80), &v69);
  v9 = sub_3D34((v7 + 80), &v68);
  v10 = v8[4];
  v11 = v9[4];
  if (v10 != v11)
  {
    if (v10 >= v11)
    {
      goto LABEL_5;
    }

LABEL_15:
    for (i = a1 + 1; ; ++i)
    {
      v68 = *i;
      v69 = v6;
      v25 = *a3;
      v26 = sub_3D34((*a3 + 80), &v69);
      v27 = sub_3D34((v25 + 80), &v68);
      v28 = v26[4];
      v29 = v27[4];
      if (v28 == v29)
      {
        v30 = v26[3];
        v31 = v27[3];
        v14 = v30 == v31;
        v32 = v30 < v31;
        if (v14)
        {
          v32 = v26 < v27;
        }

        if (v32)
        {
          goto LABEL_23;
        }
      }

      else if (v28 < v29)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = v8[3];
  v13 = v9[3];
  v14 = v12 == v13;
  v15 = v12 < v13;
  if (v14)
  {
    v15 = v8 < v9;
  }

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_5:
  for (i = a1 + 1; i < v4; ++i)
  {
    v68 = *i;
    v69 = v6;
    v17 = *a3;
    v18 = sub_3D34((*a3 + 80), &v69);
    v19 = sub_3D34((v17 + 80), &v68);
    v20 = v18[4];
    v21 = v19[4];
    if (v20 == v21)
    {
      v22 = v18[3];
      v23 = v19[3];
      v14 = v22 == v23;
      v24 = v22 < v23;
      if (v14)
      {
        v24 = v18 < v19;
      }

      if (v24)
      {
        break;
      }
    }

    else if (v20 < v21)
    {
      break;
    }
  }

LABEL_23:
  if (i >= v4)
  {
    goto LABEL_44;
  }

  do
  {
    while (1)
    {
      v33 = *--v4;
      v68 = v33;
      v69 = v6;
      v34 = *a3;
      v35 = sub_3D34((*a3 + 80), &v69);
      v36 = sub_3D34((v34 + 80), &v68);
      v37 = v35[4];
      v38 = v36[4];
      if (v37 == v38)
      {
        break;
      }

      if (v37 >= v38)
      {
        goto LABEL_44;
      }
    }

    v39 = v35[3];
    v40 = v36[3];
    v14 = v39 == v40;
    v41 = v39 < v40;
    if (v14)
    {
      v41 = v35 < v36;
    }
  }

  while (v41);
LABEL_44:
  if (i < v4)
  {
    v42 = *i;
    *i = 0;
    v43 = *v4;
    *v4 = 0;
    v44 = *i;
    *i++ = v43;

    v45 = *v4;
    *v4 = v42;

    while (1)
    {
      v68 = *i;
      v69 = v6;
      v46 = *a3;
      v47 = sub_3D34((*a3 + 80), &v69);
      v48 = sub_3D34((v46 + 80), &v68);
      v49 = v47[4];
      v50 = v48[4];
      if (v49 == v50)
      {
        v51 = v47[3];
        v52 = v48[3];
        v14 = v51 == v52;
        v53 = v51 < v52;
        if (v14)
        {
          v53 = v47 < v48;
        }

        if (v53)
        {
          do
          {
LABEL_40:
            while (1)
            {
              v54 = *--v4;
              v68 = v54;
              v69 = v6;
              v55 = *a3;
              v56 = sub_3D34((*a3 + 80), &v69);
              v57 = sub_3D34((v55 + 80), &v68);
              v58 = v56[4];
              v59 = v57[4];
              if (v58 == v59)
              {
                break;
              }

              if (v58 >= v59)
              {
                goto LABEL_44;
              }
            }

            v60 = v56[3];
            v61 = v57[3];
            v14 = v60 == v61;
            v62 = v60 < v61;
            if (v14)
            {
              v62 = v56 < v57;
            }
          }

          while (v62);
          goto LABEL_44;
        }
      }

      else if (v49 < v50)
      {
        goto LABEL_40;
      }

      ++i;
    }
  }

  v63 = i - 1;
  if (i - 1 != a1)
  {
    v64 = *v63;
    *v63 = 0;
    v65 = *a1;
    *a1 = v64;
  }

  v66 = *(i - 1);
  *(i - 1) = v6;

  return i;
}

unint64_t *sub_14E0F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *a1;
  *a1 = 0;
  while (1)
  {
    v8 = a1[v6 + 1];
    v68 = v7;
    v69 = v8;
    v9 = *a3;
    v10 = sub_3D34((*a3 + 80), &v69);
    v11 = sub_3D34((v9 + 80), &v68);
    v12 = v10[4];
    v13 = v11[4];
    if (v12 == v13)
    {
      break;
    }

    if (v12 >= v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    ++v6;
  }

  v14 = v10[3];
  v15 = v11[3];
  v16 = v14 == v15;
  v17 = v14 < v15;
  if (v16)
  {
    v17 = v10 < v11;
  }

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_9:
  v18 = &a1[v6];
  v19 = &a1[v6 + 1];
  if (v6 * 8)
  {
    do
    {
      while (1)
      {
        v20 = *--a2;
        v68 = v7;
        v69 = v20;
        v21 = *a3;
        v22 = sub_3D34((*a3 + 80), &v69);
        v23 = sub_3D34((v21 + 80), &v68);
        v24 = v22[4];
        v25 = v23[4];
        if (v24 == v25)
        {
          break;
        }

        if (v24 < v25)
        {
          goto LABEL_32;
        }
      }

      v26 = v22[3];
      v27 = v23[3];
      v16 = v26 == v27;
      v28 = v26 < v27;
      if (v16)
      {
        v28 = v22 < v23;
      }
    }

    while (!v28);
  }

  else if (v19 < a2)
  {
    do
    {
      while (1)
      {
        v29 = *--a2;
        v68 = v7;
        v69 = v29;
        v30 = *a3;
        v31 = sub_3D34((*a3 + 80), &v69);
        v32 = sub_3D34((v30 + 80), &v68);
        v33 = v31[4];
        v34 = v32[4];
        if (v33 == v34)
        {
          break;
        }

        if (v33 < v34 || v19 >= a2)
        {
          goto LABEL_32;
        }
      }

      v35 = v31[3];
      v36 = v32[3];
      v16 = v35 == v36;
      v37 = v35 >= v36;
      if (v16)
      {
        v37 = v31 >= v32;
      }
    }

    while (v37 && v19 < a2);
  }

LABEL_32:
  if (v19 >= a2)
  {
    goto LABEL_49;
  }

  v40 = v19;
  v41 = a2;
  while (2)
  {
    v42 = *v40;
    *v40 = 0;
    v43 = *v41;
    *v41 = 0;
    v44 = *v40;
    *v40++ = v43;

    v45 = *v41;
    *v41 = v42;

    while (2)
    {
      v46 = *v40;
      v68 = v7;
      v69 = v46;
      v47 = *a3;
      v48 = sub_3D34((*a3 + 80), &v69);
      v49 = sub_3D34((v47 + 80), &v68);
      v50 = v48[4];
      v51 = v49[4];
      if (v50 != v51)
      {
        if (v50 >= v51)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }

      v52 = v48[3];
      v53 = v49[3];
      v16 = v52 == v53;
      v54 = v52 < v53;
      if (v16)
      {
        v54 = v48 < v49;
      }

      if (v54)
      {
LABEL_41:
        ++v40;
        continue;
      }

      break;
    }

    do
    {
LABEL_43:
      while (1)
      {
        v55 = *--v41;
        v68 = v7;
        v69 = v55;
        v56 = *a3;
        v57 = sub_3D34((*a3 + 80), &v69);
        v58 = sub_3D34((v56 + 80), &v68);
        v59 = v57[4];
        v60 = v58[4];
        if (v59 == v60)
        {
          break;
        }

        if (v59 < v60)
        {
          goto LABEL_47;
        }
      }

      v61 = v57[3];
      v62 = v58[3];
      v16 = v61 == v62;
      v63 = v61 < v62;
      if (v16)
      {
        v63 = v57 < v58;
      }
    }

    while (!v63);
LABEL_47:
    if (v40 < v41)
    {
      continue;
    }

    break;
  }

  v18 = v40 - 1;
LABEL_49:
  if (v18 != a1)
  {
    v64 = *v18;
    *v18 = 0;
    v65 = *a1;
    *a1 = v64;
  }

  v66 = *v18;
  *v18 = v7;

  return v18;
}

BOOL sub_14E404(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_14D348(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_14D60C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_14D808(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v52 = *a1;
      v53 = v7;
      v8 = *a3;
      v9 = sub_3D34((*a3 + 80), &v53);
      v10 = sub_3D34((v8 + 80), &v52);
      v11 = v9[4];
      v12 = v10[4];
      if (v11 == v12)
      {
        v13 = v9[3];
        v14 = v10[3];
        v15 = v13 == v14;
        v16 = v13 < v14;
        if (v15)
        {
          v16 = v9 < v10;
        }

        if (!v16)
        {
          return 1;
        }
      }

      else if (v11 >= v12)
      {
        return 1;
      }

      v46 = *a1;
      *a1 = 0;
      v47 = *(v4 - 1);
      *(v4 - 1) = 0;
      v48 = *a1;
      *a1 = v47;

      v49 = *(v4 - 1);
      *(v4 - 1) = v46;

      return 1;
    }
  }

  v17 = a1 + 2;
  sub_14D348(a1, a1 + 1, a1 + 2, a3);
  v18 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v51 = v4;
  while (2)
  {
    v21 = *v18;
    v52 = *v17;
    v53 = v21;
    v22 = *a3;
    v23 = sub_3D34((*a3 + 80), &v53);
    v24 = sub_3D34((v22 + 80), &v52);
    v25 = v23[4];
    v26 = v24[4];
    if (v25 == v26)
    {
      v27 = v23[3];
      v28 = v24[3];
      v15 = v27 == v28;
      v29 = v27 < v28;
      if (v15)
      {
        v29 = v23 < v24;
      }

      if (!v29)
      {
        goto LABEL_33;
      }
    }

    else if (v25 >= v26)
    {
      goto LABEL_33;
    }

    v30 = *v18;
    v31 = *v17;
    *v17 = 0;
    *v18 = v31;
    v32 = v19;
    while (1)
    {
      v33 = a1 + v32;
      v52 = *(a1 + v32 + 8);
      v53 = v30;
      v34 = *a3;
      v35 = sub_3D34((*a3 + 80), &v53);
      v36 = sub_3D34((v34 + 80), &v52);
      v37 = v35[4];
      v38 = v36[4];
      if (v37 == v38)
      {
        break;
      }

      if (v37 >= v38)
      {
        goto LABEL_31;
      }

LABEL_29:
      v42 = *(v33 + 1);
      v43 = *(v33 + 2);
      *(v33 + 1) = 0;
      *(v33 + 2) = v42;

      v32 -= 8;
      if (v32 == -16)
      {
        v44 = a1;
        goto LABEL_32;
      }
    }

    v39 = v35[3];
    v40 = v36[3];
    v15 = v39 == v40;
    v41 = v39 < v40;
    if (v15)
    {
      v41 = v35 < v36;
    }

    if (v41)
    {
      goto LABEL_29;
    }

LABEL_31:
    v44 = (a1 + v32 + 16);
LABEL_32:
    v4 = v51;
    v45 = *v44;
    *v44 = v30;

    if (++v20 != 8)
    {
LABEL_33:
      v17 = v18;
      v19 += 8;
      if (++v18 == v4)
      {
        return 1;
      }

      continue;
    }

    return v18 + 1 == v51;
  }
}

unint64_t *sub_14E6F8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_14E8EC(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      while (1)
      {
        v13 = *v12;
        v37 = *a1;
        v38 = v13;
        v14 = *a4;
        v15 = sub_3D34((*a4 + 80), &v38);
        v16 = sub_3D34((v14 + 80), &v37);
        v17 = v15[4];
        v18 = v16[4];
        if (v17 == v18)
        {
          break;
        }

        if (v17 < v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        if (++v12 == a3)
        {
          goto LABEL_15;
        }
      }

      v19 = v15[3];
      v20 = v16[3];
      v21 = v19 == v20;
      v22 = v19 < v20;
      if (v21)
      {
        v22 = v15 < v16;
      }

      if (!v22)
      {
        goto LABEL_14;
      }

LABEL_13:
      v23 = *v12;
      *v12 = 0;
      v24 = *a1;
      *a1 = 0;
      v25 = *v12;
      *v12 = v24;

      v26 = *a1;
      *a1 = v23;

      sub_14E8EC(a1, a4, v8, a1);
      goto LABEL_14;
    }

LABEL_15:
    if (v8 >= 2)
    {
      v27 = (a2 - 1);
      do
      {
        v28 = *a1;
        *a1 = 0;
        v29 = sub_14EBB8(a1, a4, v8);
        if (v27 == v29)
        {
          v34 = *v29;
          *v29 = v28;
        }

        else
        {
          v30 = *v27;
          *v27 = 0;
          v31 = *v29;
          *v29 = v30;
          v32 = (v29 + 1);

          v33 = *v27;
          *v27 = v28;

          sub_14ECCC(a1, v32, a4, (v32 - a1) >> 3);
        }

        --v27;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_14E8EC(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v59 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 3)
  {
    return;
  }

  v9 = (a4 - a1) >> 2;
  v10 = v9 + 1;
  v11 = (a1 + 8 * (v9 + 1));
  v12 = v9 + 2;
  if (v9 + 2 < a3)
  {
    v13 = *v11;
    v60 = v11[1];
    v61 = v13;
    v14 = *a2;
    v15 = sub_3D34((*a2 + 80), &v61);
    v16 = sub_3D34((v14 + 80), &v60);
    v17 = v15[4];
    v18 = v16[4];
    if (v17 == v18)
    {
      v19 = v15[3];
      v20 = v16[3];
      v21 = v19 == v20;
      v22 = v19 < v20;
      if (v21)
      {
        v22 = v15 < v16;
      }

      if (!v22)
      {
        goto LABEL_11;
      }
    }

    else if (v17 >= v18)
    {
      goto LABEL_11;
    }

    ++v11;
    v10 = v12;
  }

LABEL_11:
  v23 = *v11;
  v60 = *a4;
  v61 = v23;
  v24 = *a2;
  v25 = sub_3D34((*a2 + 80), &v61);
  v26 = sub_3D34((v24 + 80), &v60);
  v27 = v25[4];
  v28 = v26[4];
  if (v27 == v28)
  {
    v29 = v25[3];
    v30 = v26[3];
    v21 = v29 == v30;
    v31 = v29 < v30;
    if (v21)
    {
      v31 = v25 < v26;
    }

    if (v31)
    {
      return;
    }
  }

  else if (v27 < v28)
  {
    return;
  }

  v58 = *a4;
  *a4 = 0;
  v32 = *v11;
  *v11 = 0;
  v33 = *a4;
  *a4 = v32;

  if (v59 >= v10)
  {
    while (1)
    {
      v35 = 2 * v10;
      v10 = (2 * v10) | 1;
      v34 = (a1 + 8 * v10);
      v36 = v35 + 2;
      if (v35 + 2 >= a3)
      {
        goto LABEL_27;
      }

      v37 = *v34;
      v60 = v34[1];
      v61 = v37;
      v38 = *a2;
      v39 = sub_3D34((*a2 + 80), &v61);
      v40 = sub_3D34((v38 + 80), &v60);
      v41 = v39[4];
      v42 = v40[4];
      if (v41 != v42)
      {
        break;
      }

      v43 = v39[3];
      v44 = v40[3];
      v21 = v43 == v44;
      v45 = v43 < v44;
      if (v21)
      {
        v45 = v39 < v40;
      }

      if (v45)
      {
        goto LABEL_26;
      }

LABEL_27:
      v46 = *v34;
      v60 = v58;
      v61 = v46;
      v47 = *a2;
      v48 = sub_3D34((*a2 + 80), &v61);
      v49 = sub_3D34((v47 + 80), &v60);
      v50 = v48[4];
      v51 = v49[4];
      if (v50 == v51)
      {
        v52 = v48[3];
        v53 = v49[3];
        v21 = v52 == v53;
        v54 = v52 < v53;
        if (v21)
        {
          v54 = v48 < v49;
        }

        if (v54)
        {
          goto LABEL_18;
        }
      }

      else if (v50 < v51)
      {
        goto LABEL_18;
      }

      v55 = *v34;
      *v34 = 0;
      v56 = *v11;
      *v11 = v55;

      v11 = v34;
      if (v59 < v10)
      {
        goto LABEL_34;
      }
    }

    if (v41 >= v42)
    {
      goto LABEL_27;
    }

LABEL_26:
    ++v34;
    v10 = v36;
    goto LABEL_27;
  }

LABEL_18:
  v34 = v11;
LABEL_34:
  v57 = *v34;
  *v34 = v58;
}

void **sub_14EBB8(void **a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    v9 = &a1[v6];
    a1 = v9 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_10;
    }

    v13 = v9[2];
    v12 = v9 + 2;
    v14 = *(v12 - 1);
    v27 = v13;
    v28 = v14;
    v15 = *a2;
    v16 = sub_3D34((*a2 + 80), &v28);
    v17 = sub_3D34((v15 + 80), &v27);
    v18 = v16[4];
    v19 = v17[4];
    if (v18 != v19)
    {
      if (v18 >= v19)
      {
        goto LABEL_10;
      }

LABEL_9:
      a1 = v12;
      v6 = v11;
      goto LABEL_10;
    }

    v20 = v16[3];
    v21 = v17[3];
    v22 = v20 == v21;
    v23 = v20 < v21;
    if (v22)
    {
      v23 = v16 < v17;
    }

    if (v23)
    {
      goto LABEL_9;
    }

LABEL_10:
    v24 = *a1;
    *a1 = 0;
    v25 = *v8;
    *v8 = v24;
  }

  while (v6 <= v7);
  return a1;
}

void sub_14ECCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v8 = v4 >> 1;
  v9 = (a1 + 8 * (v4 >> 1));
  v10 = *v9;
  v37 = *(a2 - 8);
  v38 = v10;
  v11 = *a3;
  v12 = sub_3D34((*a3 + 80), &v38);
  v13 = sub_3D34((v11 + 80), &v37);
  v14 = v12[4];
  v15 = v13[4];
  if (v14 == v15)
  {
    v16 = v12[3];
    v17 = v13[3];
    v18 = v16 == v17;
    v19 = v16 < v17;
    if (v18)
    {
      v19 = v12 < v13;
    }

    if (!v19)
    {
      return;
    }
  }

  else if (v14 >= v15)
  {
    return;
  }

  v20 = *(a2 - 8);
  *(a2 - 8) = 0;
  v21 = *v9;
  *v9 = 0;
  v22 = *(a2 - 8);
  *(a2 - 8) = v21;

  if (v4 >= 2)
  {
    while (1)
    {
      v24 = v8 - 1;
      v8 = (v8 - 1) >> 1;
      v23 = (a1 + 8 * v8);
      v25 = *v23;
      v37 = v20;
      v38 = v25;
      v26 = *a3;
      v27 = sub_3D34((*a3 + 80), &v38);
      v28 = sub_3D34((v26 + 80), &v37);
      v29 = v27[4];
      v30 = v28[4];
      if (v29 == v30)
      {
        v31 = v27[3];
        v32 = v28[3];
        v18 = v31 == v32;
        v33 = v31 < v32;
        if (v18)
        {
          v33 = v27 < v28;
        }

        if (!v33)
        {
          break;
        }
      }

      else if (v29 >= v30)
      {
        break;
      }

      v34 = *v23;
      *v23 = 0;
      v35 = *v9;
      *v9 = v34;

      v9 = (a1 + 8 * v8);
      if (v24 <= 1)
      {
        goto LABEL_17;
      }
    }
  }

  v23 = v9;
LABEL_17:
  v36 = *v23;
  *v23 = v20;
}

void sub_14EE64(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_14EEE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_3AAC();
}

double sub_14EF3C(void *a1, const void **a2, uint64_t a3)
{
  v6 = sub_ED8EC(a1, a2);
  if (v6)
  {
    sub_1465F8((v6 + 5), a3);
  }

  else
  {
    v7 = sub_14F140(a1, a2);
    v8 = *a3;
    *(v7 + 7) = *(a3 + 16);
    *(v7 + 5) = v8;
    v9 = *(a3 + 32);
    v10 = *(a3 + 48);
    v11 = *(a3 + 64);
    v7[15] = *(a3 + 80);
    *(v7 + 13) = v11;
    *(v7 + 11) = v10;
    *(v7 + 9) = v9;
  }

  *&result = sub_1465F8((a1[16] - 128), a3).u64[0];
  return result;
}

int64x2_t sub_14EFE4(uint64_t a1, const void **a2, int64x2_t *a3)
{
  v6 = sub_ED8EC((a1 + 40), a2);
  if (v6)
  {
    *(v6 + 5) = vaddq_s64(*(v6 + 5), *a3);
    v6[7] = v6[7] + a3[1].i64[0];
  }

  else
  {
    v7 = sub_14F490((a1 + 40), a2);
    v8 = *a3;
    v7[7] = a3[1].i64[0];
    *(v7 + 5) = v8;
  }

  v9 = *(a1 + 128);
  result = vaddq_s64(*(v9 - 40), *a3);
  *(v9 - 40) = result;
  *(v9 - 24) += a3[1].i64[0];
  return result;
}

int64x2_t sub_14F0A0(uint64_t a1, unint64_t a2, int64x2_t *a3)
{
  v8[0] = a2;
  v5 = sub_3D34((a1 + 80), v8);
  if (v5)
  {
    result = vaddq_s64(*(v5 + 3), *a3);
    *(v5 + 3) = result;
    v5[5] += a3[1].i64[0];
  }

  else
  {
    v8[2] = v8;
    v7 = sub_14F7CC((a1 + 80), v8);
    result = *a3;
    v7[5] = a3[1].i64[0];
    *(v7 + 3) = result;
  }

  return result;
}

const void **sub_14F140(void *a1, const void **a2)
{
  v4 = sub_ED140(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_14F3B8();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_ED5EC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_14F394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_ED664(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_14F474(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_ED664(v3, v2);
  _Unwind_Resume(a1);
}

const void **sub_14F490(void *a1, const void **a2)
{
  v4 = sub_ED140(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_14F708();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_ED5EC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_14F6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_ED664(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_14F7B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_ED664(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_14F7CC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_14FA20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_14FA34(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  sub_3780(a1 + 80);
  sub_ECD0C(a1 + 40);

  return sub_ECD0C(a1);
}

void sub_1509A8(id a1)
{
  v1 = qword_2E6610;
  qword_2E6610 = &off_275968;
}

void sub_150A3C(id a1)
{
  v1 = qword_2E6620;
  qword_2E6620 = &off_275990;
}

void sub_150AD4(id a1)
{
  v1 = qword_2E6630;
  qword_2E6630 = &off_2759B8;
}

void TUI::Evaluation::Enumerator::State::~State(id *this)
{
}

{
}

double TUI::Evaluation::Enumerator::State::State(TUI::Evaluation::Enumerator::State *this)
{
  result = NAN;
  *this = 0xFFFF0000FFFF0000;
  *(this + 8) &= 0xFCu;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0x7FFFFFFFFFFFFFFFLL;
  *(this + 40) &= 0xF8u;
  return result;
}

{
  result = NAN;
  *this = 0xFFFF0000FFFF0000;
  *(this + 8) &= 0xFCu;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0x7FFFFFFFFFFFFFFFLL;
  *(this + 40) &= 0xF8u;
  return result;
}

uint64_t TUI::Evaluation::Enumerator::State::State(uint64_t this, Entry a2, Entry a3)
{
  *this = a2;
  *(this + 4) = a3;
  *(this + 8) &= 0xFCu;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(this + 40) &= 0xF8u;
  return this;
}

{
  *this = a2;
  *(this + 4) = a3;
  *(this + 8) &= 0xFCu;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(this + 40) &= 0xF8u;
  return this;
}

TUI::Evaluation::Enumerator::State *TUI::Evaluation::Enumerator::State::State(TUI::Evaluation::Enumerator::State *this, const TUI::Evaluation::Enumerator::State *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  v4 = *(this + 8) & 0xFE | *(a2 + 8) & 1;
  *(this + 8) = v4;
  *(this + 8) = v4 & 0xFD | *(a2 + 8) & 2;
  v5 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v5;
  *(this + 4) = *(a2 + 4);
  *(this + 40) = *(a2 + 40);
  return this;
}

uint64_t TUI::Evaluation::Enumerator::State::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a1 + 8) & 0xFE | *(a2 + 8) & 1;
  *(a1 + 8) = v4;
  *(a1 + 8) = v4 & 0xFD | *(a2 + 8) & 2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 16) = v6;
  objc_storeStrong((a1 + 24), v5);
  objc_storeStrong((a1 + 32), *(a2 + 32));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_15189C(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "superclass")];
  v2 = [v1 mutableCopy];

  v3 = +[TUIAttributeSet supportedAttributesTextStyling];
  [v2 unionSet:v3];

  v6[0] = @"insets";
  v6[1] = @"text";
  v6[2] = @"return-key-type";
  v4 = [NSArray arrayWithObjects:v6 count:3];
  [v2 addAttributesFromArray:v4];

  v5 = qword_2E6640;
  qword_2E6640 = v2;
}

void sub_1519F4(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6650;
  qword_2E6650 = v2;
}

void sub_1520C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id sub_1520E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = [WeakRetained enabled];
  v9 = *(a1 + 48);
  v10 = objc_loadWeakRetained((a1 + 88));
  v11 = [v10 identifier];
  v12 = [TUITextFieldView renderModelWithStates:v6 actionHandler:v4 viewState:v5 enabled:v8 name:v9 identifier:v11 editingInsets:*(a1 + 96) style:*(a1 + 104) placeholderText:*(a1 + 112) text:*(a1 + 120) returnKeyType:*(a1 + 56) keyboardAppearance:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 128)];

  return v12;
}

void sub_15221C(id a1)
{
  v4[0] = @"name";
  v4[1] = @"duration";
  v4[2] = @"delay";
  v4[3] = @"timing";
  v4[4] = @"curve";
  v4[5] = @"calculation-mode";
  v1 = [NSArray arrayWithObjects:v4 count:6];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6660;
  qword_2E6660 = v2;
}

void sub_152384(id a1)
{
  v4 = @"name";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6670;
  qword_2E6670 = v2;
}

void sub_152BBC(id a1)
{
  v1 = qword_2E6680;
  qword_2E6680 = &off_2759E0;
}

void sub_152C50(id a1)
{
  v1 = qword_2E6690;
  qword_2E6690 = &off_275A08;
}

double TUI::Evaluation::Variables::Scope::Scope(TUI::Evaluation::Variables::Scope *this)
{
  *this = off_262A28;
  *(this + 1) = off_262AE8;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  *(this + 5) = xmmword_24D540;
  *(this + 12) = -1;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 1065353216;
  *(this + 12) = xmmword_24D540;
  *(this + 26) = -1;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 74) = 1065353216;
  *(this + 19) = xmmword_24D540;
  *(this + 40) = -1;
  *(this + 102) = 1065353216;
  *(this + 26) = xmmword_24D540;
  *(this + 54) = -1;
  *(this + 130) = 1065353216;
  *(this + 33) = xmmword_24D540;
  *(this + 68) = -1;
  *(this + 158) = 1065353216;
  *(this + 40) = xmmword_24D540;
  *(this + 82) = -1;
  *(this + 186) = 1065353216;
  *(this + 47) = xmmword_24D540;
  *(this + 96) = -1;
  *(this + 105) = 0;
  *(this + 216) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 552) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 664) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  return result;
}

uint64_t TUI::Evaluation::Variables::Scope::Scope(uint64_t a1, uint64_t a2)
{
  *a1 = off_262A28;
  *(a1 + 8) = off_262AE8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 16) = 0u;
  sub_155134(a1 + 40, (a2 + 40));
  v4 = *(a2 + 80);
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  *(a1 + 80) = v4;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a2 + 128) = 0u;
  sub_155134(a1 + 152, (a2 + 152));
  v6 = *(a2 + 192);
  v7 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v7;
  *(a1 + 192) = v6;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  sub_155134(a1 + 264, (a2 + 264));
  v8 = *(a2 + 304);
  v9 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v9;
  *(a1 + 304) = v8;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 352) = 0u;
  sub_155134(a1 + 376, (a2 + 376));
  v10 = *(a2 + 416);
  v11 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v11;
  *(a1 + 416) = v10;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 480) = 0;
  *(a2 + 464) = 0u;
  sub_155134(a1 + 488, (a2 + 488));
  v12 = *(a2 + 528);
  v13 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v13;
  *(a1 + 528) = v12;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a2 + 576) = 0u;
  sub_155134(a1 + 600, (a2 + 600));
  v14 = *(a2 + 640);
  v15 = *(a2 + 672);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = v15;
  *(a1 + 640) = v14;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a2 + 688) = 0u;
  sub_155134(a1 + 712, (a2 + 712));
  v16 = *(a2 + 752);
  v17 = *(a2 + 784);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 784) = v17;
  *(a1 + 752) = v16;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = 0;
  *(a2 + 800) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 840) = 0;
  *(a2 + 824) = 0u;
  return a1;
}

void TUI::Evaluation::Variables::Scope::~Scope(TUI::Evaluation::Variables::Scope *this)
{
  *this = off_262A28;
  *(this + 1) = off_262AE8;
  v2 = *(this + 103);
  if (v2)
  {
    *(this + 104) = v2;
    operator delete(v2);
  }

  v3 = *(this + 100);
  if (v3)
  {
    *(this + 101) = v3;
    operator delete(v3);
  }

  sub_11694(this + 712);
  v4 = (this + 688);
  sub_155078(&v4);
  sub_11694(this + 600);
  v4 = (this + 576);
  sub_154F38(&v4);
  sub_11694(this + 488);
  v4 = (this + 464);
  sub_154F38(&v4);
  sub_11694(this + 376);
  v4 = (this + 352);
  sub_154FD8(&v4);
  sub_11694(this + 264);
  v4 = (this + 240);
  sub_154F38(&v4);
  sub_11694(this + 152);
  v4 = (this + 128);
  sub_154EB0(&v4);
  sub_11694(this + 40);
  v4 = (this + 16);
  sub_154E28(&v4);
}

{
  TUI::Evaluation::Variables::Scope::~Scope(this);

  operator delete();
}

void non-virtual thunk toTUI::Evaluation::Variables::Scope::~Scope(TUI::Evaluation::Variables::Scope *this)
{
  TUI::Evaluation::Variables::Scope::~Scope((this - 8));
}

{
  TUI::Evaluation::Variables::Scope::~Scope((this - 8));

  operator delete();
}

uint64_t *TUI::Evaluation::Variables::Scope::swap(TUI::Evaluation::Variables::Scope *this, TUI::Evaluation::Variables::Scope *a2)
{
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  sub_28FD0(this + 40, a2 + 40);
  sub_1551A4(this + 10, a2 + 10);
  v7 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v8;
  v9 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v9;
  sub_28FD0(this + 152, a2 + 152);
  sub_1551A4(this + 24, a2 + 24);
  v10 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v10;
  v11 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v11;
  v12 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  sub_28FD0(this + 264, a2 + 264);
  sub_1551A4(this + 38, a2 + 38);
  v13 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v13;
  v14 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v14;
  v15 = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v15;
  sub_28FD0(this + 376, a2 + 376);
  sub_1551A4(this + 52, a2 + 52);
  v16 = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v16;
  v17 = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v17;
  v18 = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v18;
  sub_28FD0(this + 488, a2 + 488);
  sub_1551A4(this + 66, a2 + 66);
  v19 = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v19;
  v20 = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v20;
  v21 = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v21;
  sub_28FD0(this + 600, a2 + 600);
  sub_1551A4(this + 80, a2 + 80);
  v22 = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v22;
  v23 = *(this + 87);
  *(this + 87) = *(a2 + 87);
  *(a2 + 87) = v23;
  v24 = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v24;
  sub_28FD0(this + 712, a2 + 712);
  result = sub_1551A4(this + 94, a2 + 94);
  v26 = *(this + 100);
  *(this + 100) = *(a2 + 100);
  *(a2 + 100) = v26;
  v27 = *(this + 101);
  *(this + 101) = *(a2 + 101);
  *(a2 + 101) = v27;
  v28 = *(this + 102);
  *(this + 102) = *(a2 + 102);
  *(a2 + 102) = v28;
  v29 = *(this + 103);
  *(this + 103) = *(a2 + 103);
  *(a2 + 103) = v29;
  v30 = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v30;
  v31 = *(this + 105);
  *(this + 105) = *(a2 + 105);
  *(a2 + 105) = v31;
  return result;
}

int8x16_t TUI::Evaluation::Variables::Scope::symbolUsage@<Q0>(TUI::Evaluation::Variables::Scope *this@<X0>, int8x16_t *a2@<X8>)
{
  v4 = 2;
  bzero(a2, 0x20uLL);
  bzero(&a2[2], 0x100uLL);
  sub_155208(this + 16, &v19);
  v5 = vorrq_s8(a2[1], v20);
  *a2 = vorrq_s8(*a2, v19);
  a2[1] = v5;
  do
  {
    a2[v4] = vorrq_s8(a2[v4], *(&v19 + v4 * 16));
    ++v4;
  }

  while (v4 != 18);
  sub_155208(this + 128, &v19);
  v6 = vorrq_s8(a2[1], v20);
  *a2 = vorrq_s8(*a2, v19);
  a2[1] = v6;
  for (i = 2; i != 18; ++i)
  {
    a2[i] = vorrq_s8(a2[i], *(&v19 + i * 16));
  }

  sub_155208(this + 240, &v19);
  v8 = vorrq_s8(a2[1], v20);
  *a2 = vorrq_s8(*a2, v19);
  a2[1] = v8;
  for (j = 2; j != 18; ++j)
  {
    a2[j] = vorrq_s8(a2[j], *(&v19 + j * 16));
  }

  sub_155208(this + 352, &v19);
  v10 = vorrq_s8(a2[1], v20);
  *a2 = vorrq_s8(*a2, v19);
  a2[1] = v10;
  for (k = 2; k != 18; ++k)
  {
    a2[k] = vorrq_s8(a2[k], *(&v19 + k * 16));
  }

  sub_155208(this + 464, &v19);
  v12 = vorrq_s8(a2[1], v20);
  *a2 = vorrq_s8(*a2, v19);
  a2[1] = v12;
  for (m = 2; m != 18; ++m)
  {
    a2[m] = vorrq_s8(a2[m], *(&v19 + m * 16));
  }

  sub_155208(this + 576, &v19);
  v14 = vorrq_s8(a2[1], v20);
  *a2 = vorrq_s8(*a2, v19);
  a2[1] = v14;
  for (n = 2; n != 18; ++n)
  {
    a2[n] = vorrq_s8(a2[n], *(&v19 + n * 16));
  }

  sub_155208(this + 688, &v19);
  v16 = vorrq_s8(a2[1], v20);
  *a2 = vorrq_s8(*a2, v19);
  a2[1] = v16;
  for (ii = 2; ii != 18; ++ii)
  {
    result = vorrq_s8(a2[ii], *(&v19 + ii * 16));
    a2[ii] = result;
  }

  return result;
}

double TUI::Evaluation::Variables::Scope::beginMark@<D0>(TUI::Evaluation::Variables::Scope *this@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *a2 = 0x8E38E38E38E38E39 * ((*(this + 3) - *(this + 2)) >> 3);
  *(a2 + 16) = 0xAAAAAAAAAAAAAAABLL * ((*(this + 17) - *(this + 16)) >> 4);
  *(a2 + 32) = 0xAAAAAAAAAAAAAAABLL * ((*(this + 31) - *(this + 30)) >> 4);
  *(a2 + 48) = (*(this + 45) - *(this + 44)) >> 6;
  *(a2 + 64) = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - *(this + 58)) >> 4);
  *(a2 + 80) = 0xAAAAAAAAAAAAAAABLL * ((*(this + 73) - *(this + 72)) >> 4);
  *(a2 + 96) = 0x6DB6DB6DB6DB6DB7 * ((*(this + 87) - *(this + 86)) >> 3);
  *(a2 + 104) = 0;
  return result;
}

void *TUI::Evaluation::Variables::Scope::endMark(void *result, void *a2)
{
  a2[1] = 0x8E38E38E38E38E39 * ((result[3] - result[2]) >> 3);
  a2[3] = 0xAAAAAAAAAAAAAAABLL * ((result[17] - result[16]) >> 4);
  a2[5] = 0xAAAAAAAAAAAAAAABLL * ((result[31] - result[30]) >> 4);
  a2[7] = (result[45] - result[44]) >> 6;
  a2[9] = 0xAAAAAAAAAAAAAAABLL * ((result[59] - result[58]) >> 4);
  a2[11] = 0xAAAAAAAAAAAAAAABLL * ((result[73] - result[72]) >> 4);
  a2[13] = 0x6DB6DB6DB6DB6DB7 * ((result[87] - result[86]) >> 3);
  return result;
}

uint64_t TUI::Evaluation::Variables::Scope::equivalentTo(TUI::Evaluation::Variables::Scope *this, const TUI::Evaluation::Variables::Scope *a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = *(a2 + 2);
  if (v2 - v3 != *(a2 + 3) - v4)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v7 = 0;
    while (*(v3 + v7 + 2) == *(v4 + v7 + 2) && *(v3 + v7) == *(v4 + v7) && *(v3 + v7 + 8) == *(v4 + v7 + 8) && *(v3 + v7 + 26) == *(v4 + v7 + 26) && *(v3 + v7 + 24) == *(v4 + v7 + 24) && *(v3 + v7 + 30) == *(v4 + v7 + 30) && *(v3 + v7 + 28) == *(v4 + v7 + 28) && ((*(v4 + v7 + 32) ^ *(v3 + v7 + 32)) & 3) == 0 && *(v3 + v7 + 40) == *(v4 + v7 + 40))
    {
      v8 = *(v3 + v7 + 48);
      if (v8 != *(v4 + v7 + 48))
      {
        result = [v8 isEqual:?];
        if (!result)
        {
          return result;
        }
      }

      v10 = *(v3 + v7 + 56);
      if (v10 != *(v4 + v7 + 56))
      {
        result = [v10 isEqual:?];
        if (!result)
        {
          return result;
        }
      }

      v7 += 72;
      if (v3 + v7 == v2)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  result = sub_15529C(this + 40, a2 + 5);
  if (!result)
  {
    return result;
  }

  v11 = *(this + 16);
  v12 = *(this + 17);
  v13 = *(a2 + 16);
  if (v12 - v11 != *(a2 + 17) - v13)
  {
    return 0;
  }

  while (v11 != v12)
  {
    result = sub_15532C(&v60, v11, v13);
    if (!result)
    {
      return result;
    }

    v11 += 24;
    v13 += 24;
  }

  result = sub_15529C(this + 152, a2 + 19);
  if (!result)
  {
    return result;
  }

  v15 = *(this + 30);
  v14 = *(this + 31);
  v16 = *(a2 + 30);
  if (v14 - v15 != *(a2 + 31) - v16)
  {
    return 0;
  }

  if (v15 != v14)
  {
    v17 = 0;
    while (*(v15 + v17 + 2) == *(v16 + v17 + 2))
    {
      if (*(v15 + v17) != *(v16 + v17))
      {
        break;
      }

      v18 = v15 + v17;
      v19 = v16 + v17;
      if (*(v15 + v17 + 8) != *(v16 + v17 + 8))
      {
        break;
      }

      v20 = *(v18 + 16);
      v21 = *(v19 + 16);
      v22 = *(v18 + 24);
      v23 = *(v19 + 24);
      if (v20 != v21 || v22 != v23)
      {
        break;
      }

      result = 0;
      if (*(v15 + v17 + 40) != *(v16 + v17 + 40) || *(v15 + v17 + 44) != *(v16 + v17 + 44))
      {
        return result;
      }

      v17 += 48;
      if (v15 + v17 == v14)
      {
        goto LABEL_38;
      }
    }

    return 0;
  }

LABEL_38:
  result = sub_15529C(this + 264, a2 + 33);
  if (!result)
  {
    return result;
  }

  v26 = *(this + 44);
  v25 = *(this + 45);
  v27 = *(a2 + 44);
  if (v25 - v26 != *(a2 + 45) - v27)
  {
    return 0;
  }

  if (v26 != v25)
  {
    v28 = 0;
    while (*(v26 + v28 + 2) == *(v27 + v28 + 2))
    {
      if (*(v26 + v28) != *(v27 + v28))
      {
        break;
      }

      v29 = v26 + v28;
      v30 = v27 + v28;
      if (*(v26 + v28 + 8) != *(v27 + v28 + 8))
      {
        break;
      }

      v31 = *(v29 + 16);
      v32 = *(v30 + 16);
      v33 = *(v29 + 24);
      v34 = *(v30 + 24);
      if (v31 != v32 || v33 != v34)
      {
        break;
      }

      v36 = v26 + v28;
      v37 = v27 + v28;
      if (*(v26 + v28 + 40) != *(v27 + v28 + 40))
      {
        break;
      }

      result = 0;
      if (*(v36 + 44) != *(v37 + 44))
      {
        return result;
      }

      if (*(v36 + 48) != *(v37 + 48))
      {
        return result;
      }

      result = 0;
      if (*(v26 + v28 + 52) != *(v27 + v28 + 52) || *(v26 + v28 + 56) != *(v27 + v28 + 56))
      {
        return result;
      }

      if (*(v26 + v28 + 60) != *(v27 + v28 + 60))
      {
        return 0;
      }

      v28 += 64;
      if (v26 + v28 == v25)
      {
        goto LABEL_57;
      }
    }

    return 0;
  }

LABEL_57:
  result = sub_15529C(this + 376, a2 + 47);
  if (!result)
  {
    return result;
  }

  v39 = *(this + 58);
  v38 = *(this + 59);
  v40 = *(a2 + 58);
  if (v38 - v39 != *(a2 + 59) - v40)
  {
    return 0;
  }

  if (v39 != v38)
  {
    v41 = 0;
    while (*(v39 + v41 + 2) == *(v40 + v41 + 2))
    {
      if (*(v39 + v41) != *(v40 + v41))
      {
        break;
      }

      v42 = v39 + v41;
      v43 = v40 + v41;
      if (*(v39 + v41 + 8) != *(v40 + v41 + 8))
      {
        break;
      }

      v44 = *(v42 + 16);
      v45 = *(v43 + 16);
      v46 = *(v42 + 24);
      v47 = *(v43 + 24);
      if (v44 != v45 || v46 != v47)
      {
        break;
      }

      result = 0;
      if (*(v39 + v41 + 40) != *(v40 + v41 + 40) || *(v39 + v41 + 44) != *(v40 + v41 + 44))
      {
        return result;
      }

      v41 += 48;
      if (v39 + v41 == v38)
      {
        goto LABEL_72;
      }
    }

    return 0;
  }

LABEL_72:
  result = sub_15529C(this + 488, a2 + 61);
  if (!result)
  {
    return result;
  }

  v49 = *(this + 73);
  v50 = *(this + 72);
  v51 = *(a2 + 72);
  if (v49 - v50 != *(a2 + 73) - v51)
  {
    return 0;
  }

  if (v50 != v49)
  {
    v52 = 0;
    while (*(v50 + v52 + 2) == *(v51 + v52 + 2))
    {
      if (*(v50 + v52) != *(v51 + v52))
      {
        break;
      }

      v53 = v50 + v52;
      v54 = v51 + v52;
      if (*(v50 + v52 + 8) != *(v51 + v52 + 8))
      {
        break;
      }

      v55 = *(v53 + 16);
      v56 = *(v54 + 16);
      v57 = *(v53 + 24);
      v58 = *(v54 + 24);
      if (v55 != v56 || v57 != v58)
      {
        break;
      }

      result = 0;
      if (*(v50 + v52 + 40) != *(v51 + v52 + 40) || *(v50 + v52 + 44) != *(v51 + v52 + 44))
      {
        return result;
      }

      v52 += 48;
      if (v50 + v52 == v49)
      {
        goto LABEL_87;
      }
    }

    return 0;
  }

LABEL_87:
  result = sub_15529C(this + 600, a2 + 75);
  if (result)
  {
    return sub_153E00(this + 86, a2 + 86);
  }

  return result;
}

BOOL sub_153E00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v7 = 0;
    while (*(v3 + v7 + 2) == *(v4 + v7 + 2))
    {
      if (*(v3 + v7) != *(v4 + v7))
      {
        break;
      }

      v8 = v3 + v7;
      v9 = v4 + v7;
      if (*(v3 + v7 + 8) != *(v4 + v7 + 8))
      {
        break;
      }

      v10 = *(v8 + 16);
      v11 = *(v9 + 16);
      v12 = *(v8 + 24);
      v13 = *(v9 + 24);
      if (v10 != v11 || v12 != v13)
      {
        break;
      }

      if (*(v3 + v7 + 48) != *(v4 + v7 + 48))
      {
        break;
      }

      v15 = *(v3 + v7 + 40);
      if (v15 != *(v4 + v7 + 40) && ![v15 isEqual:?])
      {
        break;
      }

      v7 += 56;
      if (v3 + v7 == v2)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:

  return sub_15529C((a1 + 3), a2 + 3);
}

uint64_t TUI::Evaluation::Variables::Scope::lookup(uint64_t a1, int a2)
{
  sub_155370((a1 + 16), a2, (a1 + 80));
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

{
  sub_155410((a1 + 128), a2, (a1 + 192));
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

{
  sub_155410((a1 + 240), a2, (a1 + 304));
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

{
  sub_1554B0((a1 + 352), a2, (a1 + 416));
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

{
  sub_155410((a1 + 464), a2, (a1 + 528));
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

{
  sub_155410((a1 + 576), a2, (a1 + 640));
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

{
  sub_15554C((a1 + 688), a2, (a1 + 752));
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

uint64_t TUI::Evaluation::Variables::Scope::define(uint64_t a1, unsigned int a2, const TUI::Evaluation::Enumerator::State *a3)
{
  sub_1555EC((a1 + 16), a2, &v6, a3, a1 + 80);
  if (v4 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 8;
  }
}

uint64_t *TUI::Evaluation::Variables::Scope::define(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  return sub_1560CC((a1 + 240), a2, a4, &v5, a1 + 304);
}

{
  v5 = a3;
  return sub_156ADC((a1 + 464), a2, a4, &v5, a1 + 528);
}

{
  v5 = a3;
  return sub_156EC8((a1 + 576), a2, a4, &v5, a1 + 640);
}

{
  return sub_1572B4((a1 + 688), a2, a4, a3, a1 + 752);
}

uint64_t TUI::Evaluation::Variables::Scope::reference(uint64_t a1, uint64_t a2)
{
  return *(a1 + 16) + 72 * a2 + 24;
}

{
  return *(a1 + 128) + 48 * a2 + 24;
}

{
  return *(a1 + 688) + 56 * a2 + 40;
}

uint64_t non-virtual thunk toTUI::Evaluation::Variables::Scope::reference(uint64_t a1, uint64_t a2)
{
  return *(a1 + 8) + 72 * a2 + 24;
}

{
  return *(a1 + 120) + 48 * a2 + 24;
}

{
  return *(a1 + 680) + 56 * a2 + 40;
}

uint64_t TUI::Evaluation::Variables::Scope::copy(uint64_t a1, uint64_t a2)
{
  return *(*(a1 + 240) + 48 * a2 + 40);
}

{
  return *(*(a1 + 464) + 48 * a2 + 40);
}

{
  return *(*(a1 + 576) + 48 * a2 + 40);
}

uint64_t non-virtual thunk toTUI::Evaluation::Variables::Scope::copy(uint64_t a1, uint64_t a2)
{
  return *(*(a1 + 232) + 48 * a2 + 40);
}

{
  return *(*(a1 + 456) + 48 * a2 + 40);
}

{
  return *(*(a1 + 568) + 48 * a2 + 40);
}

__n128 TUI::Evaluation::Variables::Scope::copy@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 352) + (a2 << 6);
  result = *(v3 + 40);
  *a3 = result;
  a3[1].n128_u64[0] = *(v3 + 56);
  return result;
}

__n128 non-virtual thunk toTUI::Evaluation::Variables::Scope::copy@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 344) + (a2 << 6);
  result = *(v3 + 40);
  *a3 = result;
  a3[1].n128_u64[0] = *(v3 + 56);
  return result;
}

uint64_t TUI::Evaluation::Variables::Scope::closureAndCapture@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 240) + 48 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 352) + (a2 << 6);
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 464) + 48 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 576) + 48 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 688) + 56 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t non-virtual thunk toTUI::Evaluation::Variables::Scope::closureAndCapture@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 232) + 48 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 344) + (a2 << 6);
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 456) + 48 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 568) + 48 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 680) + 56 * a2;
  *a3 = *(v3 + 16);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void TUI::Evaluation::Variables::Scope::pushClosure(TUI::Evaluation::Variables::Scope *this, int a2)
{
  if (a2)
  {
    v3 = *(this + 5);
    v4 = *(this + 12);
    v5 = *(this + 19);
    v6 = *(this + 26);
    v7 = *(this + 33);
    v8 = *(this + 40);
    v9 = *(this + 47);
  }

  else
  {
    v10 = *(this + 13);
    v3 = *(this + 5);
    *(this + 10) = 0;
    *(this + 11) = v10;
    v11 = *(this + 27);
    v4 = *(this + 12);
    *(this + 24) = 0;
    *(this + 25) = v11;
    v12 = *(this + 41);
    v5 = *(this + 19);
    *(this + 38) = 0;
    *(this + 39) = v12;
    v13 = *(this + 55);
    v6 = *(this + 26);
    *(this + 52) = 0;
    *(this + 53) = v13;
    v14 = *(this + 69);
    v7 = *(this + 33);
    *(this + 66) = 0;
    *(this + 67) = v14;
    v15 = *(this + 83);
    v8 = *(this + 40);
    *(this + 80) = 0;
    *(this + 81) = v15;
    v16 = *(this + 97);
    v9 = *(this + 47);
    *(this + 94) = 0;
    *(this + 95) = v16;
  }

  v17 = *(this + 104);
  v18 = *(this + 105);
  if (v17 >= v18)
  {
    v20 = this + 824;
    v21 = *(this + 103);
    v22 = v17 - v21;
    v23 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v21) >> 4);
    v24 = v23 + 1;
    if ((v23 + 1) > 0x249249249249249)
    {
      sub_4050();
    }

    v25 = 0x6DB6DB6DB6DB6DB7 * ((v18 - v21) >> 4);
    if (2 * v25 > v24)
    {
      v24 = 2 * v25;
    }

    if (v25 >= 0x124924924924924)
    {
      v24 = 0x249249249249249;
    }

    if (v24)
    {
      sub_15773C(v20, v24);
    }

    v26 = 112 * v23;
    *v26 = v3;
    *(v26 + 16) = v4;
    *(v26 + 32) = v5;
    *(v26 + 48) = v6;
    *(v26 + 64) = v7;
    *(v26 + 80) = v8;
    *(v26 + 96) = v9;
    v19 = 112 * v23 + 112;
    v27 = 112 * v23 - v22;
    memcpy((v26 - v22), v21, v22);
    v28 = *(this + 103);
    *(this + 103) = v27;
    *(this + 104) = v19;
    *(this + 105) = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v17 = v3;
    *(v17 + 1) = v4;
    *(v17 + 2) = v5;
    *(v17 + 3) = v6;
    *(v17 + 4) = v7;
    *(v17 + 5) = v8;
    v19 = (v17 + 112);
    *(v17 + 6) = v9;
  }

  *(this + 104) = v19;
}

double TUI::Evaluation::Variables::Scope::popClosure(TUI::Evaluation::Variables::Scope *this)
{
  v1 = *(this + 104);
  v2 = *(v1 - 7);
  v1 -= 7;
  result = *&v2;
  *(this + 104) = v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  *(this + 5) = v2;
  *(this + 12) = v4;
  *(this + 19) = v5;
  *(this + 26) = v6;
  *(this + 33) = v7;
  *(this + 40) = v8;
  *(this + 47) = v9;
  return result;
}

void TUI::Evaluation::Variables::Scope::pushScope(TUI::Evaluation::Variables::Scope *this, char a2)
{
  v3 = *(this + 12);
  v47 = *(this + 13);
  if (a2)
  {
    v5 = 0x8E38E38E38E38E39 * ((*(this + 3) - *(this + 2)) >> 3);
    v4 = *(this + 14);
    v56 = *(this + 11);
    *(this + 13) = v5;
    if (v3 == -1)
    {
      *(this + 12) = v5;
    }
  }

  else
  {
    v56 = *(this + 11);
    v4 = -1;
    v5 = -1;
  }

  v7 = *(this + 26);
  v6 = *(this + 27);
  if ((a2 & 2) != 0)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 17) - *(this + 16)) >> 4);
    v12 = *(this + 28);
    v8 = *(this + 25);
    *(this + 27) = v11;
    if (v7 == -1)
    {
      *(this + 26) = v11;
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 31) - *(this + 30)) >> 4);
    v9 = *(this + 41);
    v13 = *(this + 42);
    v15 = *(this + 39);
    v10 = *(this + 40);
    *(this + 41) = v14;
    if (v10 == -1)
    {
      *(this + 40) = v14;
    }
  }

  else
  {
    v8 = *(this + 25);
    v10 = *(this + 40);
    v9 = *(this + 41);
    v11 = -1;
    v12 = -1;
    v13 = -1;
    v14 = -1;
    v15 = *(this + 39);
  }

  v16 = *(this + 54);
  v17 = *(this + 55);
  if ((a2 & 4) != 0)
  {
    v20 = (*(this + 45) - *(this + 44)) >> 6;
    v19 = *(this + 56);
    v18 = *(this + 53);
    *(this + 55) = v20;
    if (v16 == -1)
    {
      *(this + 54) = v20;
    }
  }

  else
  {
    v18 = *(this + 53);
    v19 = -1;
    v20 = -1;
  }

  v21 = *(this + 69);
  v22 = *(this + 68);
  if ((a2 & 8) != 0)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - *(this + 58)) >> 4);
    v24 = *(this + 70);
    v23 = *(this + 67);
    *(this + 69) = v25;
    if (v22 == -1)
    {
      *(this + 68) = v25;
    }
  }

  else
  {
    v23 = *(this + 67);
    v24 = -1;
    v25 = -1;
  }

  v26 = *(this + 82);
  v55 = v25;
  v53 = *(this + 83);
  v54 = v26;
  if ((a2 & 0x10) != 0)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 73) - *(this + 72)) >> 4);
    v51 = *(this + 84);
    v27 = *(this + 81);
    *(this + 83) = v30;
    if (v26 == -1)
    {
      *(this + 82) = v30;
    }

    v52 = v30;
    v31 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 87) - *(this + 86)) >> 3);
    v50 = *(this + 97);
    v32 = *(this + 96);
    v33 = *(this + 98);
    v48 = *(this + 95);
    v29 = v31;
    *(this + 97) = v31;
    if (v32 == -1)
    {
      *(this + 96) = v31;
    }

    v49 = v32;
    v28 = v33;
  }

  else
  {
    v27 = *(this + 81);
    v50 = *(this + 97);
    v52 = -1;
    v49 = *(this + 96);
    v51 = -1;
    v28 = -1;
    v29 = -1;
    v48 = *(this + 95);
  }

  v34 = *(this + 101);
  v35 = *(this + 102);
  if (v34 >= v35)
  {
    v45 = v27;
    v46 = v24;
    v37 = *(this + 100);
    v38 = v34 - v37;
    v39 = 0xAF8AF8AF8AF8AF8BLL * ((v34 - v37) >> 3);
    v40 = v39 + 1;
    if (v39 + 1 > 0xEA0EA0EA0EA0EALL)
    {
      sub_4050();
    }

    v41 = 0xAF8AF8AF8AF8AF8BLL * ((v35 - v37) >> 3);
    if (2 * v41 > v40)
    {
      v40 = 2 * v41;
    }

    if (v41 >= 0x75075075075075)
    {
      v40 = 0xEA0EA0EA0EA0EALL;
    }

    if (v40)
    {
      sub_157798(this + 800, v40);
    }

    v42 = 280 * v39;
    *v42 = v47;
    *(v42 + 8) = v5;
    *(v42 + 16) = v3;
    *(v42 + 24) = v4;
    *(v42 + 32) = v56;
    *(v42 + 40) = v6;
    *(v42 + 48) = v11;
    *(v42 + 56) = v7;
    *(v42 + 64) = v12;
    *(v42 + 72) = v8;
    *(v42 + 80) = v9;
    *(v42 + 88) = v14;
    *(v42 + 96) = v10;
    *(v42 + 104) = v13;
    *(v42 + 112) = v15;
    *(v42 + 120) = v17;
    *(v42 + 128) = v20;
    *(v42 + 136) = v16;
    *(v42 + 144) = v19;
    *(v42 + 152) = v18;
    *(v42 + 160) = v21;
    *(v42 + 168) = v55;
    *(v42 + 176) = v22;
    *(v42 + 184) = v46;
    *(v42 + 192) = v23;
    *(v42 + 200) = v53;
    *(v42 + 208) = v52;
    *(v42 + 216) = v54;
    *(v42 + 224) = v51;
    *(v42 + 232) = v45;
    *(v42 + 240) = v50;
    *(v42 + 248) = v29;
    *(v42 + 256) = v49;
    *(v42 + 264) = v28;
    *(v42 + 272) = v48;
    v36 = 280 * v39 + 280;
    v43 = (280 * v39 - v38);
    memcpy(v43, v37, v38);
    v44 = *(this + 100);
    *(this + 100) = v43;
    *(this + 101) = v36;
    *(this + 102) = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v34 = v47;
    *(v34 + 1) = v5;
    *(v34 + 2) = v3;
    *(v34 + 3) = v4;
    *(v34 + 4) = v56;
    *(v34 + 5) = v6;
    *(v34 + 6) = v11;
    *(v34 + 7) = v7;
    *(v34 + 8) = v12;
    *(v34 + 9) = v8;
    *(v34 + 10) = v9;
    *(v34 + 11) = v14;
    *(v34 + 12) = v10;
    *(v34 + 13) = v13;
    *(v34 + 14) = v15;
    *(v34 + 15) = v17;
    *(v34 + 16) = v20;
    *(v34 + 17) = v16;
    *(v34 + 18) = v19;
    *(v34 + 19) = v18;
    *(v34 + 20) = v21;
    *(v34 + 21) = v55;
    *(v34 + 22) = v22;
    *(v34 + 23) = v24;
    *(v34 + 24) = v23;
    *(v34 + 25) = v53;
    *(v34 + 26) = v52;
    *(v34 + 27) = v54;
    *(v34 + 28) = v51;
    *(v34 + 29) = v27;
    *(v34 + 30) = v50;
    *(v34 + 31) = v29;
    *(v34 + 32) = v49;
    *(v34 + 33) = v28;
    v36 = (v34 + 280);
    *(v34 + 34) = v48;
  }

  *(this + 101) = v36;
}

void TUI::Evaluation::Variables::Scope::popScope(TUI::Evaluation::Variables::Scope *this)
{
  v2 = (*(this + 101) - 280);
  memcpy(__dst, v2, sizeof(__dst));
  *(this + 101) = v2;
  sub_1577F4(this + 2, __dst);
  v3 = __dst[3];
  *(this + 13) = __dst[0];
  if (v3 != -1)
  {
    *(this + 14) = v3;
  }

  v4 = __dst[2];
  *(this + 11) = __dst[4];
  *(this + 12) = v4;
  sub_157934(this + 16, &__dst[5]);
  v5 = __dst[8];
  *(this + 27) = __dst[5];
  if (v5 != -1)
  {
    *(this + 28) = v5;
  }

  v6 = __dst[7];
  *(this + 25) = __dst[9];
  *(this + 26) = v6;
  sub_157A1C(this + 30, &__dst[10]);
  v7 = __dst[13];
  *(this + 41) = __dst[10];
  if (v7 != -1)
  {
    *(this + 42) = v7;
  }

  v8 = __dst[12];
  *(this + 39) = __dst[14];
  *(this + 40) = v8;
  sub_157B24(this + 44, &__dst[15]);
  v9 = __dst[18];
  *(this + 55) = __dst[15];
  if (v9 != -1)
  {
    *(this + 56) = v9;
  }

  v10 = __dst[17];
  *(this + 53) = __dst[19];
  *(this + 54) = v10;
  sub_157C20(this + 58, &__dst[20]);
  v11 = __dst[23];
  *(this + 69) = __dst[20];
  if (v11 != -1)
  {
    *(this + 70) = v11;
  }

  v12 = __dst[22];
  *(this + 67) = __dst[24];
  *(this + 68) = v12;
  sub_157D28(this + 72, &__dst[25]);
  v13 = __dst[28];
  *(this + 83) = __dst[25];
  if (v13 != -1)
  {
    *(this + 84) = v13;
  }

  v14 = __dst[27];
  *(this + 81) = __dst[29];
  *(this + 82) = v14;
  sub_157E30(this + 86, &__dst[30]);
  v15 = __dst[33];
  *(this + 97) = __dst[30];
  if (v15 != -1)
  {
    *(this + 98) = v15;
  }

  v16 = __dst[32];
  *(this + 95) = __dst[34];
  *(this + 96) = v16;
}

void sub_154E28(void ***a1)
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
        v6 = v4 - 9;
        TUI::Evaluation::Enumerator::State::~State(v4 - 6);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_154EB0(void ***a1)
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
        v6 = v4 - 6;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_154F38(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_154F8C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_154F8C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 16);
    if (v4)
    {
      sub_11420(v4);
    }
  }

  a1[1] = v2;
}

void sub_154FD8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_15502C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_15502C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    v4 = *(i - 32);
    if (v4)
    {
      sub_11420(v4);
    }
  }

  a1[1] = v2;
}

void sub_155078(void ***a1)
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
        v4 = sub_1550FC(v4 - 56);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1550FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_11420(v2);
  }

  return a1;
}

uint64_t sub_155134(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t *sub_1551A4(uint64_t *result, uint64_t *a2)
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
  v6 = result[4];
  result[4] = a2[4];
  a2[4] = v6;
  v7 = result[5];
  result[5] = a2[5];
  a2[5] = v7;
  return result;
}

void sub_155208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  bzero(a2, 0x20uLL);
  bzero((a2 + 32), 0x100uLL);
  for (i = *(a1 + 40); i; i = *i)
  {
    *(a2 + 8 * (*(i + 8) >> 6)) |= 1 << *(i + 8);
    *(a2 + 32 + 8 * ((*(i + 9) >> 6) & 0x1F)) |= 1 << *(i + 9);
  }
}

BOOL sub_15529C(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_26874(a2, v3 + 8);
    if (!v5)
    {
      break;
    }

    v6 = v3[9] == *(v5 + 9) && v3[8] == *(v5 + 8);
  }

  while (v6 && *(v3 + 3) == v5[3]);
  return v4;
}

id sub_15532C(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2[1] == a3[1] && *a2 == *a3 && *(a2 + 1) == *(a3 + 1))
  {
    return TUI::Evaluation::ResolvedValue::operator==((a2 + 12), (a3 + 12));
  }

  else
  {
    return 0;
  }
}

void *sub_155370(void *a1, int a2, void *a3)
{
  v4 = a1;
  v8 = a2;
  v5 = sub_26874(a1 + 3, &v8);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[3];
  if (v6 == -1)
  {
    return 0;
  }

  if (v6 < a3[1] && *a3)
  {
    do
    {
      if (v6 + a3[5] < *a3)
      {
        break;
      }

      v6 = *(*v4 + 72 * v6 + 8);
    }

    while (v6 != -1);
  }

  return v4;
}

void *sub_155410(void *a1, int a2, void *a3)
{
  v4 = a1;
  v8 = a2;
  v5 = sub_26874(a1 + 3, &v8);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[3];
  if (v6 == -1)
  {
    return 0;
  }

  if (v6 < a3[1] && *a3)
  {
    do
    {
      if (v6 + a3[5] < *a3)
      {
        break;
      }

      v6 = *(*v4 + 48 * v6 + 8);
    }

    while (v6 != -1);
  }

  return v4;
}

void *sub_1554B0(void *a1, int a2, void *a3)
{
  v4 = a1;
  v8 = a2;
  v5 = sub_26874(a1 + 3, &v8);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[3];
  if (v6 == -1)
  {
    return 0;
  }

  if (v6 < a3[1] && *a3)
  {
    do
    {
      if (v6 + a3[5] < *a3)
      {
        break;
      }

      v6 = *(*v4 + (v6 << 6) + 8);
    }

    while (v6 != -1);
  }

  return v4;
}

void *sub_15554C(void *a1, int a2, void *a3)
{
  v4 = a1;
  v8 = a2;
  v5 = sub_26874(a1 + 3, &v8);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[3];
  if (v6 == -1)
  {
    return 0;
  }

  if (v6 < a3[1] && *a3)
  {
    do
    {
      if (v6 + a3[5] < *a3)
      {
        break;
      }

      v6 = *(*v4 + 56 * v6 + 8);
    }

    while (v6 != -1);
  }

  return v4;
}

uint64_t *sub_1555EC(uint64_t *a1, unsigned int a2, uint64_t a3, const TUI::Evaluation::Enumerator::State *a4, uint64_t a5)
{
  v18 = a2;
  v8 = sub_26874(a1 + 3, &v18);
  v9 = v8;
  if (v8)
  {
    v10 = v8[3];
  }

  else
  {
    v10 = -1;
  }

  if (v10 != -1 && (v10 >= *(a5 + 24) ? (v11 = v10 >= *(a5 + 32)) : (v11 = 0), v11))
  {
    TUI::Evaluation::Enumerator::State::operator=(*a1 + 72 * v10 + 24, a4);
  }

  else
  {
    v19 = v18;
    v20 = v10;
    TUI::Evaluation::Enumerator::State::State(v21, a4);
    v13 = *a1;
    v12 = a1[1];
    if (v12 >= a1[2])
    {
      v14 = sub_155790(a1, &v19);
    }

    else
    {
      *v12 = v19;
      *(v12 + 8) = v20;
      TUI::Evaluation::Enumerator::State::State((v12 + 24), v21);
      v14 = v12 + 72;
      a1[1] = v12 + 72;
    }

    v15 = 0x8E38E38E38E38E39 * ((v12 - v13) >> 3);
    a1[1] = v14;
    if (v9)
    {
      v9[3] = v15;
    }

    else
    {
      v17[0] = v18;
      v17[1] = v15;
      sub_155A50(a1 + 3, v17);
    }

    TUI::Evaluation::Enumerator::State::~State(v21);
  }

  return a1;
}

uint64_t sub_155790(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_4050();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1558E8(a1, v6);
  }

  v7 = 72 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 72 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  TUI::Evaluation::Enumerator::State::State((72 * v2 + 24), (a2 + 24));
  *&v16 = v16 + 72;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_155944(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1559FC(&v14);
  return v13;
}

void sub_1558D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1559FC(va);
  _Unwind_Resume(a1);
}

void sub_1558E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_155944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      *(v9 + 8) = *(v6 + v7 + 8);
      TUI::Evaluation::Enumerator::State::State((a4 + v7 + 24), (v6 + v7 + 24));
      v7 += 72;
    }

    while (v8 + 72 != a3);
    while (v6 != a3)
    {
      TUI::Evaluation::Enumerator::State::~State((v6 + 24));
      v6 += 72;
    }
  }
}

void sub_1559D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 48);
    do
    {
      TUI::Evaluation::Enumerator::State::~State(v5);
      v5 = (v6 - 72);
      v4 += 72;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1559FC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    TUI::Evaluation::Enumerator::State::~State((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_155A50(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v2 << 16) | v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v2 << 16) | v3;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 9) != v3 || *(v9 + 8) != v2)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t *sub_155C9C(uint64_t *a1, unsigned int a2, uint64_t a3, id *a4, uint64_t a5)
{
  v22 = a2;
  v8 = sub_26874(a1 + 3, &v22);
  v9 = v8;
  if (v8)
  {
    v10 = v8[3];
  }

  else
  {
    v10 = -1;
  }

  if (v10 != -1 && (v10 >= *(a5 + 24) ? (v11 = v10 >= *(a5 + 32)) : (v11 = 0), v11))
  {
    v12 = *a1 + 48 * v10;
    *(v12 + 24) = *a4;
    objc_storeStrong((v12 + 32), a4[1]);
    *(v12 + 40) = a4[2];
  }

  else
  {
    v13 = v22;
    v23 = v22;
    v24 = v10;
    v14 = *a4;
    v25 = *a4;
    v15 = a4[1];
    v16 = a4[2];
    v26 = v15;
    v27 = v16;
    v18 = *a1;
    v17 = a1[1];
    if (v17 >= a1[2])
    {
      v19 = sub_155E40(a1, &v23);
    }

    else
    {
      *v17 = v13;
      *(v17 + 8) = v10;
      *(v17 + 24) = v14;
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      v19 = v17 + 48;
    }

    a1[1] = v19;
    if (v9)
    {
      v9[3] = (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 4));
    }

    else
    {
      v21[0] = v22;
      v21[1] = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 4);
      sub_155A50(a1 + 3, v21);
    }
  }

  return a1;
}

uint64_t sub_155E40(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_155F8C(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *&v16 = v7 + 48;
  v8 = a1[1];
  v9 = v7 + *a1 - v8;
  sub_155FE4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_156078(&v14);
  return v13;
}

void sub_155F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_156078(va);
  _Unwind_Resume(a1);
}

void sub_155F8C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_155FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 40) = *(v7 + 40);
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    while (v6 != a3)
    {

      v6 += 48;
    }
  }
}

uint64_t sub_156078(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_1560CC(uint64_t *a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a2;
  v9 = sub_26874(a1 + 3, &v30);
  v10 = v9;
  if (v9)
  {
    v11 = v9[3];
  }

  else
  {
    v11 = -1;
  }

  if (v11 != -1 && (v11 >= *(a5 + 24) ? (v12 = v11 >= *(a5 + 32)) : (v12 = 0), v12))
  {
    v13 = *a1 + 48 * v11;
    sub_42610(v13 + 16, a3);
    *(v13 + 40) = *a4;
  }

  else
  {
    v14 = v30;
    v24 = v30;
    v25 = v11;
    v15 = *a3;
    v26 = *a3;
    v17 = *(a3 + 8);
    v16 = *(a3 + 16);
    v27 = v17;
    v28 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *a4;
    v29 = *a4;
    v20 = *a1;
    v19 = a1[1];
    if (v19 >= a1[2])
    {
      v21 = sub_156258(a1, &v24);
    }

    else
    {
      *v19 = v14;
      *(v19 + 8) = v11;
      *(v19 + 16) = v15;
      *(v19 + 24) = v17;
      *(v19 + 32) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v19 + 40) = v18;
      v21 = v19 + 48;
    }

    a1[1] = v21;
    if (v10)
    {
      v10[3] = (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4));
    }

    else
    {
      v23[0] = v30;
      v23[1] = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4);
      sub_155A50(a1 + 3, v23);
    }

    if (v28)
    {
      sub_11420(v28);
    }
  }

  return a1;
}

void sub_15623C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_11420(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_156258(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1563B0(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v8 = *(a2 + 32);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *&stru_20.segname[48 * v2] = *(a2 + 40);
  *&v17 = v7 + 48;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_156408(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_156554(&v15);
  return v14;
}

void sub_15639C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_156554(va);
  _Unwind_Resume(a1);
}

void sub_1563B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_156408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 16) = *(v6 + 16);
      v7 = *(v6 + 32);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 32) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 32);
      if (v8)
      {
        sub_11420(v8);
      }

      v5 += 48;
    }
  }

  return sub_1564D8(v10);
}

uint64_t sub_1564D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_156510(a1);
  }

  return a1;
}

void sub_156510(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if (v3)
    {
      sub_11420(v3);
    }

    v1 -= 48;
  }
}

void **sub_156554(void **a1)
{
  sub_156588(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_156588(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 48;
    v4 = *(v1 - 16);
    if (v4)
    {
      sub_11420(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 48;
    }
  }
}

uint64_t *sub_1565DC(uint64_t *a1, unsigned int a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v32 = a2;
  v9 = sub_26874(a1 + 3, &v32);
  v10 = v9;
  if (v9)
  {
    v11 = v9[3];
  }

  else
  {
    v11 = -1;
  }

  if (v11 != -1 && (v11 >= *(a5 + 24) ? (v12 = v11 >= *(a5 + 32)) : (v12 = 0), v12))
  {
    v13 = *a1 + (v11 << 6);
    sub_42610(v13 + 16, a3);
    v14 = *(a4 + 2);
    *(v13 + 40) = *a4;
    *(v13 + 56) = v14;
  }

  else
  {
    v15 = v32;
    v25 = v32;
    v26 = v11;
    v16 = *a3;
    v27 = *a3;
    v18 = *(a3 + 8);
    v17 = *(a3 + 16);
    v28 = v18;
    v29 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = *a4;
    v31 = *(a4 + 2);
    v20 = *a1;
    v19 = a1[1];
    if (v19 >= a1[2])
    {
      v22 = sub_156778(a1, &v25);
    }

    else
    {
      *v19 = v15;
      *(v19 + 8) = v11;
      *(v19 + 16) = v16;
      *(v19 + 24) = v18;
      *(v19 + 32) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v30;
      *(v19 + 56) = v31;
      *(v19 + 40) = v21;
      v22 = v19 + 64;
    }

    a1[1] = v22;
    if (v10)
    {
      v10[3] = ((v19 - v20) >> 6);
    }

    else
    {
      v24[0] = v32;
      v24[1] = (v19 - v20) >> 6;
      sub_155A50(a1 + 3, v24);
    }

    if (v29)
    {
      sub_11420(v29);
    }
  }

  return a1;
}

void sub_15675C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_11420(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_156778(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_4050();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_1568B8(a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = *(a2 + 16);
  v9 = *(a2 + 32);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 40);
  *&stru_20.segname[64 * v2 + 16] = *(a2 + 56);
  *&stru_20.segname[64 * v2] = v10;
  *&v19 = v8 + 64;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  sub_156900(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_156A54(&v17);
  return v16;
}

void sub_1568A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_156A54(va);
  _Unwind_Resume(a1);
}

void sub_1568B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_156900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 16) = *(v6 + 16);
      v7 = *(v6 + 32);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 32) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      v9 = *(v5 + 32);
      if (v9)
      {
        sub_11420(v9);
      }

      v5 += 64;
    }
  }

  return sub_1569D8(v11);
}

uint64_t sub_1569D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_156A10(a1);
  }

  return a1;
}

void sub_156A10(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      sub_11420(v3);
    }

    v1 -= 64;
  }
}

void **sub_156A54(void **a1)
{
  sub_156A88(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_156A88(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 64;
    v4 = *(v1 - 32);
    if (v4)
    {
      sub_11420(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 64;
    }
  }
}

uint64_t *sub_156ADC(uint64_t *a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a2;
  v9 = sub_26874(a1 + 3, &v30);
  v10 = v9;
  if (v9)
  {
    v11 = v9[3];
  }

  else
  {
    v11 = -1;
  }

  if (v11 != -1 && (v11 >= *(a5 + 24) ? (v12 = v11 >= *(a5 + 32)) : (v12 = 0), v12))
  {
    v13 = *a1 + 48 * v11;
    sub_42610(v13 + 16, a3);
    *(v13 + 40) = *a4;
  }

  else
  {
    v14 = v30;
    v24 = v30;
    v25 = v11;
    v15 = *a3;
    v26 = *a3;
    v17 = *(a3 + 8);
    v16 = *(a3 + 16);
    v27 = v17;
    v28 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *a4;
    v29 = *a4;
    v20 = *a1;
    v19 = a1[1];
    if (v19 >= a1[2])
    {
      v21 = sub_156C68(a1, &v24);
    }

    else
    {
      *v19 = v14;
      *(v19 + 8) = v11;
      *(v19 + 16) = v15;
      *(v19 + 24) = v17;
      *(v19 + 32) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v19 + 40) = v18;
      v21 = v19 + 48;
    }

    a1[1] = v21;
    if (v10)
    {
      v10[3] = (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4));
    }

    else
    {
      v23[0] = v30;
      v23[1] = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4);
      sub_155A50(a1 + 3, v23);
    }

    if (v28)
    {
      sub_11420(v28);
    }
  }

  return a1;
}

void sub_156C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_11420(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_156C68(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1563B0(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v8 = *(a2 + 32);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *&stru_20.segname[48 * v2] = *(a2 + 40);
  *&v17 = v7 + 48;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_156DC0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_156554(&v15);
  return v14;
}

void sub_156DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_156554(va);
  _Unwind_Resume(a1);
}

uint64_t sub_156DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 16) = *(v6 + 16);
      v7 = *(v6 + 32);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 32) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 32);
      if (v8)
      {
        sub_11420(v8);
      }

      v5 += 48;
    }
  }

  return sub_156E90(v10);
}

uint64_t sub_156E90(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_156510(a1);
  }

  return a1;
}

uint64_t *sub_156EC8(uint64_t *a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a2;
  v9 = sub_26874(a1 + 3, &v30);
  v10 = v9;
  if (v9)
  {
    v11 = v9[3];
  }

  else
  {
    v11 = -1;
  }

  if (v11 != -1 && (v11 >= *(a5 + 24) ? (v12 = v11 >= *(a5 + 32)) : (v12 = 0), v12))
  {
    v13 = *a1 + 48 * v11;
    sub_42610(v13 + 16, a3);
    *(v13 + 40) = *a4;
  }

  else
  {
    v14 = v30;
    v24 = v30;
    v25 = v11;
    v15 = *a3;
    v26 = *a3;
    v17 = *(a3 + 8);
    v16 = *(a3 + 16);
    v27 = v17;
    v28 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *a4;
    v29 = *a4;
    v20 = *a1;
    v19 = a1[1];
    if (v19 >= a1[2])
    {
      v21 = sub_157054(a1, &v24);
    }

    else
    {
      *v19 = v14;
      *(v19 + 8) = v11;
      *(v19 + 16) = v15;
      *(v19 + 24) = v17;
      *(v19 + 32) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v19 + 40) = v18;
      v21 = v19 + 48;
    }

    a1[1] = v21;
    if (v10)
    {
      v10[3] = (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4));
    }

    else
    {
      v23[0] = v30;
      v23[1] = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4);
      sub_155A50(a1 + 3, v23);
    }

    if (v28)
    {
      sub_11420(v28);
    }
  }

  return a1;
}

void sub_157038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_11420(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_157054(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1563B0(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v8 = *(a2 + 32);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *&stru_20.segname[48 * v2] = *(a2 + 40);
  *&v17 = v7 + 48;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_1571AC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_156554(&v15);
  return v14;
}

void sub_157198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_156554(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1571AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 16) = *(v6 + 16);
      v7 = *(v6 + 32);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 32) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 32);
      if (v8)
      {
        sub_11420(v8);
      }

      v5 += 48;
    }
  }

  return sub_15727C(v10);
}

uint64_t sub_15727C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_156510(a1);
  }

  return a1;
}

uint64_t *sub_1572B4(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v9 = sub_26874(a1 + 3, &v27);
  v10 = v9;
  if (v9)
  {
    v11 = v9[3];
  }

  else
  {
    v11 = -1;
  }

  if (v11 != -1 && (v11 >= *(a5 + 24) ? (v12 = v11 >= *(a5 + 32)) : (v12 = 0), v12))
  {
    v13 = *a1 + 56 * v11;
    sub_42610(v13 + 16, a3);
    objc_storeStrong((v13 + 40), *a4);
    *(v13 + 48) = *(a4 + 8);
  }

  else
  {
    v20 = v27;
    v21 = v11;
    v22 = *a3;
    v14 = *(a3 + 16);
    v23 = *(a3 + 8);
    v24 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *a4;
    v26 = *(a4 + 8);
    v16 = *a1;
    v15 = a1[1];
    sub_157428(a1, &v20);
    v17 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 3);
    if (v10)
    {
      v10[3] = v17;
    }

    else
    {
      v19[0] = v27;
      v19[1] = v17;
      sub_155A50(a1 + 3, v19);
    }

    if (v24)
    {
      sub_11420(v24);
    }
  }

  return a1;
}

void sub_157410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1550FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_157428(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_157470(a1, a2);
  }

  else
  {
    result = sub_1575B4(v3, a2) + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_157470(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_4050();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_157620(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_1575B4(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  sub_15767C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1576EC(&v13);
  return v12;
}

void sub_1575A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1576EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1575B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_157620(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_15767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1575B4(a4, v7);
      v7 += 56;
      a4 = v8 + 56;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1550FC(v6);
      v6 += 56;
    }
  }
}

uint64_t sub_1576EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1550FC(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_15773C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_157798(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_1577F4(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
    v5 = v2;
    while (v5 < v4)
    {
      v6 = a1[1];
      v11 = *(v6 - 72);
      v12 = *(v6 - 64);
      TUI::Evaluation::Enumerator::State::State(v13, (v6 - 48));
      v7 = a1[1];
      TUI::Evaluation::Enumerator::State::~State((v7 - 48));
      a1[1] = v7 - 72;
      v8 = v12;
      v10 = v11;
      v9 = sub_26874(a1 + 3, &v10);
      if (v9)
      {
        if (v8 == -1)
        {
          sub_34630(a1 + 3, v9);
        }

        else
        {
          v9[3] = v8;
        }
      }

      --v4;
      TUI::Evaluation::Enumerator::State::~State(v13);
    }
  }
}

void sub_157934(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
    v5 = v2;
    while (v5 < v4)
    {
      v6 = a1[1];
      v7 = *(v6 - 48);
      v8 = *(v6 - 40);
      v9 = *(v6 - 16);
      v10 = a1[1];

      a1[1] = v10 - 48;
      v12 = v7;
      v11 = sub_26874(a1 + 3, &v12);
      if (v11)
      {
        if (v8 == -1)
        {
          sub_34630(a1 + 3, v11);
        }

        else
        {
          v11[3] = v8;
        }
      }

      --v4;
    }
  }
}

void sub_157A1C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
    for (i = v2; i < v4; --v4)
    {
      v6 = a1[1];
      v7 = *(v6 - 48);
      v8 = *(v6 - 40);
      v9 = *(v6 - 16);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = a1[1];
        v10 = *(v6 - 16);
        if (v10)
        {
          sub_11420(v10);
        }
      }

      a1[1] = v6 - 48;
      v12 = v7;
      v11 = sub_26874(a1 + 3, &v12);
      if (v11)
      {
        if (v8 == -1)
        {
          sub_34630(a1 + 3, v11);
        }

        else
        {
          v11[3] = v8;
        }
      }

      if (v9)
      {
        sub_11420(v9);
      }
    }
  }
}

void sub_157B08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_11420(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_157B24(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v4 = (a1[1] - *a1) >> 6;
    for (i = v2; i < v4; --v4)
    {
      v6 = a1[1];
      v7 = *(v6 - 64);
      v8 = *(v6 - 56);
      v9 = *(v6 - 32);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = a1[1];
        v10 = *(v6 - 32);
        if (v10)
        {
          sub_11420(v10);
        }
      }

      a1[1] = v6 - 64;
      v12 = v7;
      v11 = sub_26874(a1 + 3, &v12);
      if (v11)
      {
        if (v8 == -1)
        {
          sub_34630(a1 + 3, v11);
        }

        else
        {
          v11[3] = v8;
        }
      }

      if (v9)
      {
        sub_11420(v9);
      }
    }
  }
}

void sub_157C04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_11420(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_157C20(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
    for (i = v2; i < v4; --v4)
    {
      v6 = a1[1];
      v7 = *(v6 - 48);
      v8 = *(v6 - 40);
      v9 = *(v6 - 16);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = a1[1];
        v10 = *(v6 - 16);
        if (v10)
        {
          sub_11420(v10);
        }
      }

      a1[1] = v6 - 48;
      v12 = v7;
      v11 = sub_26874(a1 + 3, &v12);
      if (v11)
      {
        if (v8 == -1)
        {
          sub_34630(a1 + 3, v11);
        }

        else
        {
          v11[3] = v8;
        }
      }

      if (v9)
      {
        sub_11420(v9);
      }
    }
  }
}

void sub_157D0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_11420(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_157D28(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
    for (i = v2; i < v4; --v4)
    {
      v6 = a1[1];
      v7 = *(v6 - 48);
      v8 = *(v6 - 40);
      v9 = *(v6 - 16);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = a1[1];
        v10 = *(v6 - 16);
        if (v10)
        {
          sub_11420(v10);
        }
      }

      a1[1] = v6 - 48;
      v12 = v7;
      v11 = sub_26874(a1 + 3, &v12);
      if (v11)
      {
        if (v8 == -1)
        {
          sub_34630(a1 + 3, v11);
        }

        else
        {
          v11[3] = v8;
        }
      }

      if (v9)
      {
        sub_11420(v9);
      }
    }
  }
}

void sub_157E14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_11420(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_157E30(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
    for (i = v2; i < v4; --v4)
    {
      v6 = a1[1];
      v7 = *(v6 - 56);
      v12[1] = v7;
      v8 = *(v6 - 48);
      v13 = v8;
      v14 = *(v6 - 40);
      v9 = *(v6 - 24);
      v15 = *(v6 - 32);
      v16 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v6 - 16);
      v17 = v10;
      v18 = *(v6 - 8);
      a1[1] = sub_1550FC(a1[1] - 56);
      v12[0] = v7;
      v11 = sub_26874(a1 + 3, v12);
      if (v11)
      {
        if (v8 == -1)
        {
          sub_34630(a1 + 3, v11);
        }

        else
        {
          v11[3] = v8;
        }
      }

      if (v9)
      {
        sub_11420(v9);
      }
    }
  }
}

void sub_157F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1550FC(va);
  _Unwind_Resume(a1);
}

void sub_158C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_158C84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadPlayerWithAsset:v3];
}

void sub_159204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_159228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_159610;
  v26[3] = &unk_262BC8;
  v27 = v3;
  v28 = WeakRetained;
  [v4 enumerateObjectsUsingBlock:v26];
  if ([*(a1 + 40) isPlayable])
  {
    v5 = [AVPlayerItem playerItemWithAsset:*(a1 + 40)];
    memset(&buf, 0, sizeof(buf));
    if (WeakRetained)
    {
      [WeakRetained lastPlaybackTime];
    }

    time1 = buf;
    v12 = *&kCMTimeZero.value;
    *&time2.value = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    time2.epoch = epoch;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1597F0;
      v21[3] = &unk_262BF0;
      v22 = buf;
      v21[4] = WeakRetained;
      time1 = buf;
      *&time2.value = v12;
      time2.epoch = epoch;
      *location = v12;
      v20 = epoch;
      [v5 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:location completionHandler:v21];
    }

    memset(&time1, 0, sizeof(time1));
    CMTimeMake(&time1, 1000, 1000);
    objc_initWeak(location, WeakRetained);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1598E8;
    v17[3] = &unk_262C18;
    objc_copyWeak(&v18, location);
    v17[4] = *(a1 + 48);
    time2 = time1;
    v7 = [WeakRetained addPeriodicTimeObserverForInterval:&time2 queue:0 usingBlock:v17];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_159984;
    block[3] = &unk_25EB18;
    block[4] = WeakRetained;
    v14 = v5;
    v8 = *(a1 + 48);
    v15 = v7;
    v16 = v8;
    v9 = v7;
    v10 = v5;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = TUIVideoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = WeakRetained;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%@ : Video asset is not playable...", &buf, 0xCu);
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1597E4;
    v25[3] = &unk_25DE30;
    v25[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, v25);
  }
}

void sub_1595EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_159610(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = 0;
  v5 = [v4 statusOfValueForKey:v3 error:&v14];
  v6 = v14;
  if (v5 == &dword_0 + 3)
  {
    v7 = TUIVideoLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%@ : Error loading key: %@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_159770;
    block[3] = &unk_25DCA0;
    v9 = v3;
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_159770(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"duration"])
  {
    v2 = 1;
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"playable"];
    if (!result)
    {
      return result;
    }

    v2 = 2;
  }

  v4 = *(a1 + 40);

  return [v4 setFailureReason:v2];
}

id sub_1597F0(uint64_t a1)
{
  v2 = TUIVideoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = *(a1 + 40);
    Seconds = CMTimeGetSeconds(&v7);
    LODWORD(v7.value) = 138412546;
    *(&v7.value + 4) = v3;
    LOWORD(v7.flags) = 2048;
    *(&v7.flags + 2) = Seconds;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%@ : Did restore time to: %f", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  v7 = kCMTimeZero;
  return [v5 setLastPlaybackTime:&v7];
}

void sub_1598E8(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((*(*(a1 + 32) + 16) & 4) != 0)
  {
    v7 = *a2;
    Seconds = CMTimeGetSeconds(&v7);
    v6 = [WeakRetained delegate];
    [v6 player:WeakRetained didPlayToTime:Seconds];
  }
}

void sub_159984(uint64_t a1)
{
  [*(a1 + 32) setPlayerItem:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 playerItem];
  [v2 replaceCurrentItemWithPlayerItem:v3];

  [*(a1 + 32) setTimeObserver:*(a1 + 48)];
  v4 = [*(a1 + 32) playbackChecks];
  [v4 setAssetKeysLoaded:1];

  v5 = +[AVAudioSession sharedInstance];
  [v5 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:0];

  if ((*(*(a1 + 56) + 16) & 0x10) != 0)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 playerDidLoadPlayerItem:*(a1 + 32)];
  }
}

void sub_15A0C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[21])
  {
    [v2 setState:6];
  }

  else
  {
    [v2 setState:7];
    [*(a1 + 32) pause];
  }

  v3 = *(a1 + 32);
  v9 = kCMTimeZero;
  [v3 seekToTime:&v9];
  v4 = *(a1 + 32);
  if ((v4[8] & 2) != 0)
  {
    v5 = [v4 currentItem];
    v6 = v5;
    if (v5)
    {
      [v5 duration];
    }

    else
    {
      memset(&v9, 0, sizeof(v9));
    }

    Seconds = CMTimeGetSeconds(&v9);

    v8 = [*(a1 + 32) delegate];
    [v8 playerDidPlayToEnd:*(a1 + 32) mediaTimePlayed:Seconds];
  }
}

id sub_15A224(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 64);
  if (result)
  {
    if ((*(v2 + 16) & 8) != 0)
    {
      [result currentTime];
      Seconds = CMTimeGetSeconds(&time);
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
      [WeakRetained player:*(a1 + 32) didStallPlaybackAtTime:Seconds];

      return [*(a1 + 32) setState:8];
    }
  }

  return result;
}

void sub_15A358(uint64_t a1)
{
  v2 = [*(a1 + 32) name];

  if (v2 == AVPlayerItemFailedToPlayToEndTimeErrorKey)
  {
    v6 = TUIVideoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ : Failed to play video to end", &v16, 0xCu);
    }
  }

  else
  {
    v3 = [*(a1 + 32) name];

    if (v3 != AVPlayerItemNewErrorLogEntryNotification)
    {
      return;
    }

    v4 = objc_opt_class();
    v5 = [*(a1 + 32) object];
    v6 = TUIDynamicCast(v4, v5);

    if (v6)
    {
      v7 = [v6 errorLog];
      v8 = [v7 events];
      v9 = [v8 lastObject];

      v10 = TUIVideoLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = [v9 errorStatusCode];
        v13 = [v9 errorDomain];
        v14 = [v9 errorComment];
        v16 = 138413058;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ : Playback error occured: code: %li, domain: %@, comment: %@", &v16, 0x2Au);
      }

      [*(a1 + 40) setFailureReason:4];
    }
  }
}

void sub_15AF60(id a1)
{
  v1 = qword_2E66A0;
  qword_2E66A0 = &off_273340;
}

void sub_15AFD4(id a1)
{
  v1 = qword_2E66B0;
  qword_2E66B0 = &off_273358;
}

void sub_15B04C(id a1)
{
  v1 = qword_2E66C0;
  qword_2E66C0 = &off_273370;
}

void sub_15B89C(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"select-index";
  v6[1] = @"color";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E66D0;
  qword_2E66D0 = v4;
}

void sub_15B970(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_15BA04(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E66E0;
  qword_2E66E0 = v2;
}

void sub_15BF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  objc_destroyWeak((v24 + 72));

  objc_destroyWeak((v26 - 88));
  _Unwind_Resume(a1);
}

id sub_15C060(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = [WeakRetained enabled];
  v9 = objc_loadWeakRetained((a1 + 72));
  v10 = [v9 identifier];
  v11 = [TUISegmentedControlView renderModelWithStates:v4 actionHandler:v5 viewState:v6 enabled:v8 identifier:v10 name:*(a1 + 48) selectIndex:*(a1 + 80) segments:*(a1 + 56) tintColor:*(a1 + 64)];

  return v11;
}

void sub_15C94C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = [*(**(a1 + 48) + 40 * a2 + 32) tui_identifierByAppendingString:@"cell"];
  v7 = [TUIRenderReferenceQuery queryWithUUID:v4 uid:v5 identifier:v6];
  v8 = [TUIRenderReferenceOverride overrideWithQuery:v7 alpha:0.0];

  [*(*(a1 + 32) + 80) addRenderOverride:v8];
  [*(a1 + 40) addObject:v8];
}

void sub_15CA5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = [*(**(a1 + 48) + 40 * a2 + 32) tui_identifierByAppendingString:@"divider"];
  v7 = [TUIRenderReferenceQuery queryWithUUID:v4 uid:v5 identifier:v6];
  v8 = [TUIRenderReferenceOverride overrideWithQuery:v7 alpha:0.0];

  [*(*(a1 + 32) + 80) addRenderOverride:v8];
  [*(a1 + 40) addObject:v8];
}

void sub_15CBE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_15CDAC(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      sub_15CE18(a1, v10);
    }

    sub_4050();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_96A5C(v8, v6);
        v6 += 40;
        v8 += 5;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    for (; v11 != v8; v11 -= 5)
    {
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v13 = a2 + v12;
    if (v11 != v8)
    {
      do
      {
        sub_96A5C(v8, v6);
        v6 += 40;
        v8 += 5;
        v12 -= 40;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *(v13 + 16);
        *v15 = *v13;
        *(v15 + 1) = v16;
        v15[4] = *(v13 + 32);
        v13 += 40;
        v15 += 5;
        v14 += 5;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }
}

void sub_15CDAC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 5;

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_15CE18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_96BD0(a1, a2);
  }

  sub_4050();
}

id sub_15CE70(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_15F0D8;
  v12[3] = &unk_262E38;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v13 = v7;
  v14 = v5;
  v15 = a2;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

TUIRenderModelSubviews *__cdecl sub_15CF6C(id a1, TUIRenderModelSubviews *a2, unint64_t a3)
{
  v3 = [(TUIRenderModelSubviews *)a2 copyForInitialAppearanceWithFlags:a3];

  return v3;
}

TUIRenderModelSubviews *__cdecl sub_15CFA4(id a1, TUIRenderModelSubviews *a2, unint64_t a3)
{
  v3 = [(TUIRenderModelSubviews *)a2 copyForFinalAppearanceWithFlags:a3];

  return v3;
}

id sub_15D3A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v5;
  v7[2] = *(a1 + 72);
  return [a3 appendResourcesToCollector:v4 transform:v7];
}

id sub_15D4E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  v9[0] = *(a1 + 56);
  v9[1] = v7;
  v9[2] = *(a1 + 88);
  return [a3 appendReferencesToCollector:v4 transform:v9 query:v5 liveTransformResolver:v6];
}

void sub_15F0D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(v5 + 16);
  v8 = a2;
  v9 = v7(v5, a3, v6);
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
}

void sub_15F1B4(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"insets";
  v6[1] = @"background-color";
  v6[2] = @"continuous-corners";
  v6[3] = @"corner-radius";
  v6[4] = @"shadow-color";
  v6[5] = @"shadow-offset";
  v6[6] = @"shadow-radius";
  v6[7] = @"shadow-opacity";
  v6[8] = @"border-width";
  v6[9] = @"border-color";
  v6[10] = @"clips-to-bounds";
  v6[11] = @"blend-mode";
  v3 = [NSArray arrayWithObjects:v6 count:12];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E66F0;
  qword_2E66F0 = v4;
}

void sub_15F68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15F6A8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id TUIDefaultLog()
{
  if (qword_2E6710 != -1)
  {
    sub_19BE3C();
  }

  v1 = qword_2E6708;

  return v1;
}

void sub_15FF30(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI");
  v2 = qword_2E6708;
  qword_2E6708 = v1;
}

id TUIInstallBundleLog()
{
  if (qword_2E6720 != -1)
  {
    sub_19BE50();
  }

  v1 = qword_2E6718;

  return v1;
}

void sub_15FFB8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.BundleInstall");
  v2 = qword_2E6718;
  qword_2E6718 = v1;
}

id TUIInstantiationLog()
{
  if (qword_2E6730 != -1)
  {
    sub_19BE64();
  }

  v1 = qword_2E6728;

  return v1;
}

void sub_160040(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.Instantiation");
  v2 = qword_2E6728;
  qword_2E6728 = v1;
}

id TUILayoutLog()
{
  if (qword_2E6740 != -1)
  {
    sub_19BE78();
  }

  v1 = qword_2E6738;

  return v1;
}

void sub_1600C8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.Layout");
  v2 = qword_2E6738;
  qword_2E6738 = v1;
}

id TUIVideoLog()
{
  if (qword_2E6750 != -1)
  {
    sub_19BE8C();
  }

  v1 = qword_2E6748;

  return v1;
}

void sub_160150(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.Video");
  v2 = qword_2E6748;
  qword_2E6748 = v1;
}

id TUITransactionLog()
{
  if (qword_2E6760 != -1)
  {
    sub_19BEA0();
  }

  v1 = qword_2E6758;

  return v1;
}

void sub_1601D8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.Transaction");
  v2 = qword_2E6758;
  qword_2E6758 = v1;
}

id TUIImageCacheLog()
{
  if (qword_2E6770 != -1)
  {
    sub_19BEB4();
  }

  v1 = qword_2E6768;

  return v1;
}

void sub_160260(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.ImageCache");
  v2 = qword_2E6768;
  qword_2E6768 = v1;
}

id TUIHostingLog()
{
  if (qword_2E6780 != -1)
  {
    sub_19BEC8();
  }

  v1 = qword_2E6778;

  return v1;
}

void sub_1602E8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.Hosting");
  v2 = qword_2E6778;
  qword_2E6778 = v1;
}

id TUIViewUpdateLog()
{
  if (qword_2E6790 != -1)
  {
    sub_19BEDC();
  }

  v1 = qword_2E6788;

  return v1;
}

void sub_160370(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.ViewUpdate");
  v2 = qword_2E6788;
  qword_2E6788 = v1;
}

id TUILinkEntityActionLog()
{
  if (qword_2E67A0 != -1)
  {
    sub_19BEF0();
  }

  v1 = qword_2E6798;

  return v1;
}

void sub_1603F8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.LinkEntityAction");
  v2 = qword_2E6798;
  qword_2E6798 = v1;
}

id TUILinkEntityObserverLog()
{
  if (qword_2E67B0 != -1)
  {
    sub_19BF04();
  }

  v1 = qword_2E67A8;

  return v1;
}

void sub_160480(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.LinkEntityObserver");
  v2 = qword_2E67A8;
  qword_2E67A8 = v1;
}

id TUIRenderModelLog()
{
  if (qword_2E67C0 != -1)
  {
    sub_19BF18();
  }

  v1 = qword_2E67B8;

  return v1;
}

void sub_160508(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.RenderModel");
  v2 = qword_2E67B8;
  qword_2E67B8 = v1;
}

id TUIActionLog()
{
  if (qword_2E67D0 != -1)
  {
    sub_19BF2C();
  }

  v1 = qword_2E67C8;

  return v1;
}

void sub_160590(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.Action");
  v2 = qword_2E67C8;
  qword_2E67C8 = v1;
}

id sub_162A0C(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 setShowsSearchFilter:v5 animated:1];
  }

  return result;
}

void sub_162C0C(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 40) intrinsicContentSize];
    v2 = v3;
  }

  [*(*(a1 + 32) + 24) setPreferredHeight:v2];
  [*(*(a1 + 32) + 40) sizeToFit];
  [*(*(a1 + 32) + 24) layoutIfNeeded];
  v4 = [*(*(a1 + 32) + 24) superview];
  [v4 layoutIfNeeded];
}

uint64_t sub_162CA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = 0.7;
  if (!v2)
  {
    v3 = 0.0;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_162D5C;
  v5[3] = &unk_25EF60;
  v5[4] = *(a1 + 32);
  v6 = v2;
  [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:v3 animations:0.3];
  return (*(*(a1 + 40) + 16))();
}

id sub_162D5C(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 40) setAlpha:v1];
}

void sub_16337C(id a1)
{
  v4 = @"n";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E67D8;
  qword_2E67D8 = v2;
}

void sub_163890(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_alloc_init(TUIButtonStateBuilder);
  (*(*(a1 + 48) + 16))();
  v4 = [(TUIButtonStateBuilder *)v3 finalizeButtonStateModelWithContext:*(a1 + 32)];
  if (v4)
  {
    [*(a1 + 40) addModel:v4 forState:v5];
  }
}

void sub_163B90(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v3 = +[TUIAttributeSet supportedAttributesTextStyling];
  [v2 unionSet:v3];

  v7[0] = @"color";
  v7[1] = @"kind";
  v7[2] = @"instance";
  v7[3] = @"parameters";
  v4 = [NSArray arrayWithObjects:v7 count:4];
  [v2 addAttributesFromArray:v4];

  v5 = [v2 copy];
  v6 = qword_2E67E8;
  qword_2E67E8 = v5;
}

void sub_164348(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = [v55 pinningLiveTransform];
  v4 = [v3 pinPosition];
  [v55 defaultPosition];
  v6 = v5;
  [v55 defaultPosition];
  v8 = v7;
  if (v4 > 4)
  {
    if ((v4 - 5) >= 2)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  if (!v4)
  {
    v11 = 0.5;
    v12 = *(a1 + 48) + *(a1 + 64) * 0.5;
    [v3 size];
    v6 = v12 - v13 * 0.5;
    v14 = *(a1 + 56);
    v15 = *(a1 + 72);
    goto LABEL_22;
  }

  if (v4 == &dword_0 + 1)
  {
    [v55 sectionOffset];
    if (v16 > 0.0)
    {
      v18 = *(a1 + 80);
      v17 = *(a1 + 88);
      v20 = *(a1 + 96);
      v19 = *(a1 + 104);
      [v3 size];
      v22 = v19 - v21;
      [v55 sectionOffset];
      v24 = v22 - v23;
      [v3 size];
      v26 = v20 - v25;
      [v55 sectionOffset];
      v28 = v26 - v27;
      [v55 sectionOffset];
      v30 = v29 + (v17 + v24) * 0.5;
      [v55 sectionOffset];
      v6 = v31 + (v18 + v28) * 0.5;
      [*(*(a1 + 32) + 24) size];
      v33 = v32;
      [v3 size];
      if (v33 - v34 >= v30)
      {
        v8 = v33 - v34;
      }

      else
      {
        v8 = v30;
      }

      goto LABEL_25;
    }

    v11 = 0.5;
    v42 = *(a1 + 48) + (*(a1 + 64) - *(a1 + 80)) * 0.5;
    [v3 size];
    v6 = v42 - v43 * 0.5;
    v14 = *(a1 + 56);
    v15 = *(a1 + 72) - *(a1 + 88);
LABEL_22:
    v44 = v14 + v15 * v11;
    [v3 size];
    v8 = v44 - v45 * v11;
    goto LABEL_25;
  }

  if (v4 != &dword_0 + 3)
  {
    goto LABEL_25;
  }

LABEL_7:
  v9 = *(a1 + 80) + *(a1 + 96) * 0.5;
  [v3 size];
  v6 = v9 - v10 * 0.5;
  if (v4 == &dword_4 + 2)
  {
    if (*(a1 + 112) == 1)
    {
      v40 = *(a1 + 88);
      v41 = *(a1 + 104);
    }

    else
    {
      v40 = *(a1 + 56);
      v41 = *(a1 + 72);
    }

    v46 = v40 + v41;
    [v3 size];
    v48 = v46 - v47;
    v8 = ceilf(v48);
  }

  else if (v4 == &dword_4 + 1)
  {
    [*(*(a1 + 32) + 24) size];
    v36 = v35;
    [v3 size];
    v8 = v36 - v37;
    v38 = *(a1 + 88) + *(a1 + 104);
    [v3 size];
    if (v38 - v39 >= v8)
    {
      v8 = v38 - v39;
    }
  }

  else if (v4 == &dword_0 + 3)
  {
    v8 = *(a1 + 88);
  }

LABEL_25:
  [v55 currentOffset];
  if (v50 != v6 || v49 != v8)
  {
    [v55 setCurrentOffset:{v6, v8}];
    v51 = [*(*(a1 + 32) + 24) liveTransformViewInvalidationMap];
    v52 = [v51 objectForKey:v3];

    v53 = *(a1 + 40);
    v54 = [v52 allObjects];
    [v53 invalidateIndexPaths:v54];
  }
}

void sub_1649DC(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
    v2 = [*(a1 + 40) prebuiltTemplates];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_164A98;
    v3[3] = &unk_263240;
    v3[4] = *(a1 + 32);
    [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }
}

void sub_164A98(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [NSURLComponents componentsWithURL:a2 resolvingAgainstBaseURL:1];
  v6 = [v5 path];
  v7 = [v6 stringByStandardizingPath];
  [v5 setPath:v7];

  v8 = [v5 URL];
  [*(*(a1 + 32) + 24) setObject:v9 forKeyedSubscript:v8];
}

void sub_164C60(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
    v2 = [*(a1 + 40) prebuiltTemplates];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_164D1C;
    v3[3] = &unk_263240;
    v3[4] = *(a1 + 32);
    [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }
}

void sub_164D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [NSURLComponents componentsWithURL:a2 resolvingAgainstBaseURL:1];
  v6 = [v5 path];
  v7 = [v6 stringByStandardizingPath];
  [v5 setPath:v7];

  v8 = [v5 URL];
  v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v8];

  if (v9 == v10)
  {
    [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:v8];
  }
}

id sub_164EBC(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(*(a1 + 32) + 24);

  return [v2 removeAllObjects];
}

void sub_164F74(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(*(a1 + 32) + 16) objectEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        v6 = [v5 url];
        v7 = [v6 lastPathComponent];
        NSLog(@"Package: %@ -> %@", v7, v5);
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v2);
  }
}

void sub_165290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1652DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1652F4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40) && *(a1 + 64) == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = *(*(a1 + 32) + 24);
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 lastPathComponent];
          v11 = [*(a1 + 48) lastPathComponent];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            v13 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v9];
            v14 = *(*(a1 + 56) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;

            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

void sub_166DC4(uint64_t a1, char a2)
{
  v4 = objc_alloc_init(BCULayerRenderer);
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 56);
  v10 = BCUPriorityHigh;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_166F10;
  v18[3] = &unk_263298;
  v18[4] = v8;
  v19 = v7;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_166F1C;
  v15[3] = &unk_2632C0;
  v16 = a2;
  v17 = *(a1 + 48);
  v15[4] = *(a1 + 32);
  LODWORD(v11) = v10;
  v12 = [v9 newOperationWithPriority:1 waitForCPUSynchronization:0 logKey:v18 renderLayer:v15 completion:v11];
  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  *(v13 + 48) = v12;

  [*(*(a1 + 32) + 48) start];
}

void sub_166F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 CGImage])
  {
    v5 = [[UIImage alloc] initWithCGImage:{objc_msgSend(v4, "CGImage")}];
    if (*(a1 + 40) == 1)
    {
      v6 = [[NSError alloc] initWithDomain:@"TUIFeedRendererError" code:0 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 41) == 1)
    {
      v7 = [[NSError alloc] initWithDomain:@"TUIFeedRendererError" code:1 userInfo:0];

      v6 = v7;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_167084;
    block[3] = &unk_25E7C0;
    block[4] = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    v8 = v6;
    v9 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_16723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_167254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_16726C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TUIRenderModelLayerBuilder);
  v5 = [TUIContainerLayerConfig alloc];
  [v3 size];
  v6 = [(TUIContainerLayerConfig *)v5 initWithSize:?];
  v7 = [TUIRenderModelLayer alloc];
  v13 = v3;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [(TUIRenderModelLayer *)v7 initWithSubmodels:v8 config:v6 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

  [(TUIRenderModelLayerBuilder *)v4 setModel:v9];
  v10 = [(TUIRenderModelLayerBuilder *)v4 layer];

  if (v10)
  {
    v11 = *(*(*(a1 + 32) + 8) + 40);
    v12 = [(TUIRenderModelLayerBuilder *)v4 layer];
    [v11 addSublayer:v12];
  }
}

uint64_t sub_167654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_16766C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(*(a1 + 32) + 24);
  v3 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_167754(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));

  if (v2 == WeakRetained)
  {
    v4 = (*(a1 + 40) + 16);

    objc_storeWeak(v4, 0);
  }
}

id TUIErrorToString(uint64_t a1)
{
  if (qword_2E6800 != -1)
  {
    sub_19BF68();
  }

  v2 = qword_2E67F8;
  v3 = [NSNumber numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}