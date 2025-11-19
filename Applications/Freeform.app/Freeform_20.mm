__n128 sub_10041B4CC(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t **a5)
{
  sub_10041B2CC(a1, a2, a3, a4);
  v11 = *a4;
  v12 = **a5;
  v13 = *(v12 + 16);
  v14 = *(v12 + 32);
  if (v13 >= v14)
  {
    v15 = *(v12 + 32);
  }

  else
  {
    v15 = *(v12 + 16);
  }

  v16 = *v11;
  v17 = *(*v11 + 16);
  v18 = *(*v11 + 32);
  if (v17 >= v18)
  {
    v19 = *(*v11 + 32);
  }

  else
  {
    v19 = *(*v11 + 16);
  }

  if (v15 < v19)
  {
    goto LABEL_18;
  }

  v20 = (v16 + 24);
  v21 = v12 + 40;
  v22 = v12 + 24;
  v23 = (v16 + 40);
  if (v17 < v18)
  {
    v23 = v20;
  }

  result.n128_u64[0] = *v23;
  v24 = (v13 >= v14 ? v21 : v22);
  if (v15 == v19 && *v24 < result.n128_f64[0])
  {
LABEL_18:
    v71 = *a4;
    v26 = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 4) = v26;
    *a5 = v71;
    *(a5 + 4) = WORD4(v71);
    v27 = *a3;
    v28 = **a4;
    v29 = *(v28 + 16);
    v30 = *(v28 + 32);
    if (v29 >= v30)
    {
      v31 = *(v28 + 32);
    }

    else
    {
      v31 = *(v28 + 16);
    }

    v32 = *v27;
    v33 = *(*v27 + 16);
    v34 = *(*v27 + 32);
    if (v33 >= v34)
    {
      v35 = *(*v27 + 32);
    }

    else
    {
      v35 = *(*v27 + 16);
    }

    if (v31 < v35)
    {
      goto LABEL_35;
    }

    v36 = (v32 + 24);
    v37 = v28 + 40;
    v38 = v28 + 24;
    v39 = (v32 + 40);
    if (v33 < v34)
    {
      v39 = v36;
    }

    result.n128_u64[0] = *v39;
    v40 = (v29 >= v30 ? v37 : v38);
    if (v31 == v35 && *v40 < result.n128_f64[0])
    {
LABEL_35:
      result = *a3;
      v72 = *a3;
      v42 = *(a4 + 4);
      *a3 = *a4;
      *(a3 + 4) = v42;
      *a4 = v72.n128_u64[0];
      *(a4 + 4) = v72.n128_u16[4];
      v43 = *a2;
      v44 = **a3;
      v45 = *(v44 + 16);
      v46 = *(v44 + 32);
      if (v45 >= v46)
      {
        v47 = *(v44 + 32);
      }

      else
      {
        v47 = *(v44 + 16);
      }

      v48 = *v43;
      v49 = *(*v43 + 16);
      v50 = *(*v43 + 32);
      if (v49 >= v50)
      {
        v51 = *(*v43 + 32);
      }

      else
      {
        v51 = *(*v43 + 16);
      }

      if (v47 < v51)
      {
        goto LABEL_49;
      }

      v52 = v44 + 40;
      v53 = v44 + 24;
      v54 = (v48 + 40);
      if (v49 < v50)
      {
        v54 = (v48 + 24);
      }

      v55 = (v45 >= v46 ? v52 : v53);
      if (v47 == v51)
      {
        result.n128_u64[0] = *v54;
        if (*v55 < *v54)
        {
LABEL_49:
          result = *a2;
          v73 = *a2;
          v56 = *(a3 + 4);
          *a2 = *a3;
          *(a2 + 4) = v56;
          *a3 = v73.n128_u64[0];
          *(a3 + 4) = v73.n128_u16[4];
          v57 = *a1;
          v58 = **a2;
          v59 = *(v58 + 16);
          v60 = *(v58 + 32);
          if (v59 >= v60)
          {
            v61 = *(v58 + 32);
          }

          else
          {
            v61 = *(v58 + 16);
          }

          v62 = *v57;
          v63 = *(*v57 + 16);
          v64 = *(*v57 + 32);
          if (v63 >= v64)
          {
            v65 = *(*v57 + 32);
          }

          else
          {
            v65 = *(*v57 + 16);
          }

          if (v61 < v65)
          {
            goto LABEL_63;
          }

          v66 = v58 + 40;
          v67 = v58 + 24;
          v68 = (v62 + 40);
          if (v63 < v64)
          {
            v68 = (v62 + 24);
          }

          v69 = (v59 >= v60 ? v66 : v67);
          if (v61 == v65)
          {
            result.n128_u64[0] = *v68;
            if (*v69 < *v68)
            {
LABEL_63:
              result = *a1;
              v74 = *a1;
              v70 = *(a2 + 4);
              *a1 = *a2;
              *(a1 + 4) = v70;
              *a2 = v74.n128_u64[0];
              *(a2 + 4) = v74.n128_u16[4];
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_10041B770(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v6 = *(a2 - 16);
        v5 = (a2 - 16);
        v7 = *a1;
        v8 = *v6;
        v9 = *(*v6 + 16);
        v10 = *(*v6 + 32);
        if (v9 >= v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        v12 = *v7;
        v13 = *(*v7 + 16);
        v14 = *(*v7 + 32);
        if (v13 >= v14)
        {
          v15 = *(*v7 + 32);
        }

        else
        {
          v15 = *(*v7 + 16);
        }

        if (v11 < v15)
        {
          goto LABEL_21;
        }

        v16 = (v12 + 24);
        v17 = v8 + 40;
        v18 = v8 + 24;
        v19 = (v12 + 40);
        if (v13 < v14)
        {
          v19 = v16;
        }

        v20 = (v9 >= v10 ? v17 : v18);
        if (v11 == v15 && *v20 < *v19)
        {
LABEL_21:
          v62 = *a1;
          v22 = *(a2 - 8);
          *a1 = *v5;
          *(a1 + 8) = v22;
          *v5 = v62;
          *(a2 - 8) = WORD4(v62);
        }

        return 1;
      }

      goto LABEL_27;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_10041B020(a1, (a1 + 16), (a2 - 16));
      return 1;
    case 4:
      sub_10041B2CC(a1, (a1 + 16), (a1 + 32), (a2 - 16));
      return 1;
    case 5:
      sub_10041B4CC(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
      return 1;
  }

LABEL_27:
  v23 = a1 + 32;
  sub_10041B020(a1, (a1 + 16), (a1 + 32));
  v24 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    v27 = *v24;
    v28 = *v23;
    v29 = **v24;
    v30 = *(v29 + 16);
    v31 = *(v29 + 32);
    v32 = v30 >= v31 ? *(v29 + 32) : *(v29 + 16);
    v33 = *v28;
    v34 = *(*v28 + 16);
    v35 = *(*v28 + 32);
    v36 = v34 >= v35 ? *(*v28 + 32) : *(*v28 + 16);
    if (v32 < v36)
    {
      goto LABEL_74;
    }

    v37 = (v33 + 24);
    v38 = v29 + 40;
    v39 = v29 + 24;
    v40 = (v33 + 40);
    if (v34 < v35)
    {
      v40 = v37;
    }

    v41 = (v30 >= v31 ? v38 : v39);
    if (v32 == v36 && *v41 < *v40)
    {
LABEL_74:
      v43 = *(v24 + 8);
      *v24 = *v23;
      *(v24 + 8) = *(v23 + 8);
      v44 = v25;
      do
      {
        v45 = *(a1 + v44 + 16);
        v46 = *v27;
        v47 = *(*v27 + 16);
        v48 = *(*v27 + 32);
        if (v47 >= v48)
        {
          v49 = *(*v27 + 32);
        }

        else
        {
          v49 = *(*v27 + 16);
        }

        v50 = *v45;
        v51 = *(*v45 + 16);
        v52 = *(*v45 + 32);
        if (v51 >= v52)
        {
          v53 = *(*v45 + 32);
        }

        else
        {
          v53 = *(*v45 + 16);
        }

        if (v49 >= v53)
        {
          v54 = (v50 + 24);
          v55 = v46 + 40;
          v56 = v46 + 24;
          v57 = (v50 + 40);
          if (v51 < v52)
          {
            v57 = v54;
          }

          v58 = (v47 >= v48 ? v55 : v56);
          if (v49 != v53 || *v58 >= *v57)
          {
            v60 = a1 + v44 + 32;
            goto LABEL_66;
          }
        }

        *(a1 + v44 + 32) = *(a1 + v44 + 16);
        *(a1 + v44 + 40) = *(a1 + v44 + 24);
        v44 -= 16;
      }

      while (v44 != -32);
      v60 = a1;
LABEL_66:
      *v60 = v27;
      *(v60 + 8) = v43;
      if (++v26 == 8)
      {
        return v24 + 16 == a2;
      }
    }

    v23 = v24;
    v25 += 16;
    v24 += 16;
    if (v24 == a2)
    {
      return 1;
    }
  }
}

void *sub_10041BA3C(void *a1)
{
  *a1 = off_101861170;
  v2 = (a1 + 2);
  sub_100419BF0(a1 + 2, 0);
  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v5 = v2;
  sub_10041BAB4(&v5);
  return a1;
}

void sub_10041BAB4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10041BB08(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_10041BB08(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_10041BB74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BBB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BBFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BC40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BC84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BCC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BD0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BD50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041BDA4(uint64_t a1, unint64_t a2)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v2 = **(a1 + 40);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 40) + 8) - v2) >> 3) <= a2)
  {
    sub_1002637C8();
  }

  LODWORD(v11) = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = 1;
  v21 = xmmword_101465930;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_100596520(&v11, (v2 + 24 * a2), 0, 3);
  sub_10059842C(&v11, &v7, 1, 2.0);
  if (v8 == v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136FA70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136FA98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136FB28();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"BOOL _hasAnyIntersectionBetweenPaths(CRLBezierPath *const  _Nonnull __strong, CRLBezierPath *const  _Nonnull __strong)_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1490 isFatal:0 description:"Unable to stroke path for intersection test."];
  }

  else
  {
    os_unfair_lock_lock((*(*(a1 + 32) + 8) + 48));
    sub_10041C654(*(a1 + 48), &v10);
    os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 48));
  }

  sub_10041CA6C(&v11);
  v11 = &v7;
  sub_1001EDD70(&v11);
}

void sub_10041C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_10041CA6C(&a16);
  a16 = &a9;
  sub_1001EDD70(&a16);
  _Unwind_Resume(a1);
}

void sub_10041C068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041C0AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

char **sub_10041C0F0(void *a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        sub_10041C308(a1, a2, a1[1], (a2 + 24 * a5));
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = sub_10041C43C(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_10041C308(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      sub_10041C5D8(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      sub_1001EE0D8(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    sub_10041C3A8(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    sub_1001EE130(&v27);
    return v19;
  }

  return v5;
}

void sub_10041C308(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = a4 - v4;
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      sub_10041C584(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

uint64_t sub_10041C3A8(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = sub_1001EDFB8(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void *sub_10041C43C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      sub_1001EDFB8(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 4));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10041C4FC(v8);
  return v4;
}

uint64_t sub_10041C4FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10041C534(a1);
  }

  return a1;
}

void sub_10041C534(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

__n128 sub_10041C584(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

char **sub_10041C5D8(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_100419A94(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_10041C654(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_10041C880();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_10041C85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10041CA1C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041C92C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10041CA1C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10041C948(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10041C9D0(result, a4);
  }

  return result;
}

void sub_10041C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001EDD70(&a9);
  _Unwind_Resume(a1);
}

void sub_10041C9D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001EE0D8(a1, a2);
  }

  sub_1000C1D48();
}

void sub_10041CA1C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    sub_1001EDD70(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_10041CA6C(uint64_t a1)
{
  v2 = (a1 + 104);
  sub_10041CAE8((a1 + 104));
  *(a1 + 64) = *(a1 + 56);
  sub_10041CB64(a1 + 192);
  sub_10041F170(a1 + 160);
  v5 = v2;
  sub_10041CBE4(&v5);
  v5 = (a1 + 80);
  sub_1001EDD70(&v5);
  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10041CAE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 40);
      if (v4)
      {
        *(v3 - 32) = v4;
        operator delete(v4);
      }

      v5 = (v3 - 64);
      sub_1001EDD70(&v5);
      v5 = (v3 - 88);
      sub_1001EDD70(&v5);
      v3 -= 88;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_10041CB64(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10041CBE4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10041CAE8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_10041CC38(uint64_t a1)
{
  sub_10041CC74(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10041CC74(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_1001EDD70(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10041CCC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041CD0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10041CD50(uint64_t a1, int a2, int a3, uint64_t a4)
{
  memset(v6, 0, sizeof(v6));
  v4 = sub_10041954C(a1, a2, a3, a4, v6);
  v7 = v6;
  sub_1001EDD70(&v7);
  return v4;
}

void sub_10041CD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001EDD70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041CDB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != *(result + 24))
  {
    v2 = *v1;
    v3 = -1;
    do
    {
      v2 = *(v2 + 8);
      ++v3;
    }

    while (v2);
    if (v3 && (v3 & 1) == 0)
    {
      v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136FB50();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        *&buf[4] = v4;
        v11 = 2082;
        v12 = "void _clipperPathsForVisuallyDistinctSubregions(const Clipper2Lib::PolyTree64 &, const BOOL, std::vector<Clipper2Lib::Paths64 *> &)";
        v13 = 2082;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm";
        v15 = 1024;
        v16 = 1621;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d currentPositiveNode should not be a hole.", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136FB78();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v4;
        v11 = 2114;
        v12 = v9;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v7 = [NSString stringWithUTF8String:"void _clipperPathsForVisuallyDistinctSubregions(const Clipper2Lib::PolyTree64 &, const BOOL, std::vector<Clipper2Lib::Paths64 *> &)"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1621 isFatal:0 description:"currentPositiveNode should not be a hole."];
    }

    operator new();
  }

  return result;
}

void sub_10041D1E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041D224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041D268(uint64_t a1, unint64_t a2)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v2 = **(a1 + 40);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 40) + 8) - v2) >> 3) <= a2)
  {
    sub_1002637C8();
  }

  LODWORD(v11) = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = 1;
  v21 = xmmword_101465930;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_100596520(&v11, (v2 + 24 * a2), 0, 3);
  sub_10059842C(&v11, &v7, 1, 2.0);
  if (v8 == v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136FBA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136FBC8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136FC58();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"NSArray<CRLBezierPath *> * _Nonnull _pathsByFloodFillingPathsAtFillPoint(NSArray<CRLBezierPath *> *const  _Nonnull __strong, const CGPoint)_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1724 isFatal:0 description:"Unable to stroke path for flood fill."];
  }

  else
  {
    os_unfair_lock_lock((*(*(a1 + 32) + 8) + 48));
    sub_10041C654(*(a1 + 48), &v10);
    os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 48));
  }

  sub_10041CA6C(&v11);
  v11 = &v7;
  sub_1001EDD70(&v11);
}

void sub_10041D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_10041CA6C(&a16);
  a16 = &a9;
  sub_1001EDD70(&a16);
  _Unwind_Resume(a1);
}

void sub_10041D52C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041D570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10041D5B4(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  for (i = *(a1 + 24); v3 != i; ++v3)
  {
    v7 = *v3;
    v8 = -1;
    v9 = *v3;
    do
    {
      v9 = *(v9 + 8);
      ++v8;
    }

    while (v9);
    if (v8 && (v8 & 1) == 0)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136FC80();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        *&buf[4] = v10;
        *&buf[8] = 2082;
        *&buf[10] = "Clipper2Lib::Paths64 * _Nullable _visuallyDistinctSubregionContainingPoint(const Clipper2Lib::PolyTree64 &, const Clipper2Lib::Point64, const BOOL)";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm";
        *&buf[28] = 1024;
        *&buf[30] = 1785;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d currentPositiveNode should not be a hole.", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136FCA8();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v10;
        *&buf[8] = 2114;
        *&buf[10] = v17;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v13 = [NSString stringWithUTF8String:"Clipper2Lib::Paths64 * _Nullable _visuallyDistinctSubregionContainingPoint(const Clipper2Lib::PolyTree64 &, const Clipper2Lib::Point64, const BOOL)"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1785 isFatal:0 description:"currentPositiveNode should not be a hole."];

      v7 = *v3;
    }

    if (sub_1001EDB20(a2, (v7 + 40)) == 1)
    {
      v15 = *(*v3 + 16);
      v16 = *(*v3 + 24);
      while (v15 != v16)
      {
        if (sub_1001EDB20(a2, (*v15 + 40)) == 1)
        {
          v18 = *v15;
          v19 = *(a2 + 16);
          *buf = *a2;
          *&buf[16] = v19;
          *&buf[32] = *(a2 + 32);
          return sub_10041D5B4(v18, buf, 0);
        }

        ++v15;
      }

      if ((a3 & 1) == 0)
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_10041DA60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041DAA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041DAE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041DB2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041DB70(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  sub_10041932C(a1);
  v10 = [*a1 elementCount];
  [*a1 moveToPoint:{a3, a4}];
  v11 = [*a1 elementCount];
  v12 = *(a1 + 8);
  if (v11 == v10)
  {
    sub_100410F20(v12, a2, a5);
  }

  else
  {
    sub_100410C20(v12, a2, a5);
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
}

void sub_10041DC0C(uint64_t a1, _OWORD *a2, uint64_t a3, double a4, double a5, double a6)
{
  if (!sub_1001208AC(*(a1 + 32), *(a1 + 40)))
  {
    [*a1 currentPoint];
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = a2[1];
    v17[0] = *a2;
    v17[1] = v14;
    v17[2] = a2[2];
    if (!sub_100417CA4(v17, v15, v16, v12, v13, a4, a5))
    {
      sub_10041932C(a1);
    }
  }

  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a3;
  *(a1 + 56) = a6;
}

void sub_10041DCB0(uint64_t a1)
{
  sub_10041932C(a1);
  [*a1 closePath];
  sub_100410C20(*(a1 + 8), *(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  sub_100410C20(v2, v3, v4);
}

double sub_10041DD00(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  if (v3 <= a2)
  {
    a2 = a2 - v3;
  }

  v4 = a2;
  v5 = a2 - a2;
  if (v5 == 0.0)
  {
    return *(a1[3] + 16 * *(v2 + 24 * v4));
  }

  v7 = (v2 + 24 * v4);
  v8 = *(v7 + 8);
  v9 = *v7;
  if (v8)
  {
    v10 = (a1[3] + 16 * v9);
    v14[0] = *v10;
    v14[1] = v10[1];
    v14[2] = v10[2];
    v14[3] = v10[3];
    return sub_10011F20C(v14, v5);
  }

  else
  {
    v11 = a1[3];
    v12 = (v11 + 16 * v9);
    v13 = (v11 + 16 * ((v9 + 1) % ((a1[4] - v11) >> 4)));
    return sub_100120ABC(*v12, v12[1], *v13, v13[1], v5);
  }
}

void sub_10041DE18(void *a1, uint64_t a2, int a3, int a4, __int128 *a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (a3)
  {
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v13 = a5[1];
    v63 = *a5;
    v62[2] = sub_10041E72C;
    v62[3] = &unk_101861468;
    v64 = v13;
    v65 = a5[2];
    v62[4] = a6;
    v66 = a2;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10041E770;
    v61[3] = &unk_101861488;
    v61[4] = a6;
    v61[5] = a2;
    sub_10041E268(a1, a4, 0, v62, v61, a7, a8, a9, a10);
  }

  else
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x4812000000;
    v55 = sub_10041E804;
    v56 = sub_10041E820;
    v57 = &unk_1016A8115;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x4812000000;
    v46 = sub_10041E830;
    v47 = sub_10041E854;
    v48 = &unk_1016A8115;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x4812000000;
    v37 = sub_10041E86C;
    v38 = sub_10041E890;
    v39 = &unk_1016A8115;
    v41 = 0;
    v42 = 0;
    __p = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10041E8A8;
    v33[3] = &unk_1018614B0;
    v33[4] = &v52;
    v33[5] = &v43;
    v33[6] = &v34;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10041EA84;
    v32[3] = &unk_1018614D8;
    v32[4] = &v52;
    v32[5] = &v43;
    v32[6] = &v34;
    sub_10041E268(a1, a4, 1, v33, v32, a8, a7, a9, a10);
    v14 = v53[7];
    if (v14 - 1 >= 0)
    {
      v15 = ((v44[7] - v44[6]) >> 4) - 1;
      do
      {
        --v14;
        if ((*(v53[6] + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14))
        {
          v16 = v44[6];
          v17 = (v16 + 16 * (v15 - 3));
          v18 = *v17;
          v19 = v17[1];
          v20 = v16 + 16 * v15;
          v21 = *(v20 - 16);
          v22 = *(v20 - 8);
          v23 = *(v20 - 32);
          v24 = *(v20 - 24);
          v25 = *(v35[6] + 8 * (v15 - 3));
          sub_10041932C(a6);
          [*a6 curveToPoint:v18 controlPoint1:v19 controlPoint2:{v21, v22, v23, v24}];
          sub_100410C20(*(a6 + 8), a2, v25);
          v26 = -4;
        }

        else
        {
          v27 = (v44[6] + 16 * v15);
          v28 = *v27;
          v29 = v27[1];
          v30 = a5[1];
          v31[0] = *a5;
          v31[1] = v30;
          v31[2] = a5[2];
          sub_10041DC0C(a6, v31, a2, v28, v29, *(v35[6] + 8 * v15));
          v26 = -1;
        }

        v15 += v26;
      }

      while (v14 > 0);
    }

    _Block_object_dispose(&v34, 8);
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v43, 8);
    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    _Block_object_dispose(&v52, 8);
    if (v58)
    {
      operator delete(v58);
    }
  }
}

void sub_10041E208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  _Block_object_dispose(&a30, 8);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a39, 8);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  _Block_object_dispose(&a48, 8);
  if (a54)
  {
    operator delete(a54);
  }

  _Unwind_Resume(a1);
}

void sub_10041E268(void *a1, int a2, int a3, void *a4, void *a5, double a6, double a7, double a8, double a9)
{
  v17 = a4;
  v18 = a5;
  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v22.n128_f64[0] = v21;
  if (v21 <= a7)
  {
    v23 = a7 - v21;
  }

  else
  {
    v23 = a7;
  }

  v24 = a6 - v22.n128_f64[0];
  if (v22.n128_f64[0] > a6)
  {
    v24 = a6;
  }

  v25 = v24;
  v26 = v24;
  v27 = v23;
  if (v23 == v24 && v24 == v26)
  {
    sub_10041EDE0(a1, v24, v23, a2, a3, v17, v18);
    goto LABEL_19;
  }

  v29 = *a1 + 24 * v25;
  if (v24 >= v23 || v25 != v27)
  {
    if (*(v29 + 8))
    {
      v31 = v24 - v26;
      v32 = a1[3] + 16 * *v29;
      v49 = *v32;
      v50 = *(v32 + 16);
      v51 = *(v32 + 32);
      v52 = *(v32 + 48);
      v45 = xmmword_1014629F0;
      v46 = xmmword_1014629F0;
      v47 = xmmword_1014629F0;
      v48 = xmmword_1014629F0;
      sub_100404958(&v49, &v45, v24 - v26, 1.0);
      if (a3)
      {
        *&v45 = a8;
        *(&v45 + 1) = a9;
      }

      (*(v18 + 2))(v18, &v45, v31 + *(v29 + 16), (*(v29 + 16) + 1));
      goto LABEL_33;
    }

    if (a3)
    {
      if (a2)
      {
LABEL_33:
        if ((v25 + 1) % (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3)) != v27)
        {
          v39 = 0;
          if (a2 && (a3 & 1) == 0)
          {
            v39 = v23 == v27;
          }

          sub_10041EDE0(a1, v25 + 1, v23, v39, a3, v17, v18);
        }

        v40 = v27;
        if (v23 != v27)
        {
          v41 = *a1 + 24 * v27;
          if (*(v41 + 8) == 1)
          {
            v42 = v23 - v40;
            v43 = a1[3] + 16 * *v41;
            v49 = *v43;
            v50 = *(v43 + 16);
            v51 = *(v43 + 32);
            v52 = *(v43 + 48);
            v45 = xmmword_1014629F0;
            v46 = xmmword_1014629F0;
            v47 = xmmword_1014629F0;
            v48 = xmmword_1014629F0;
            sub_100404958(&v49, &v45, 0.0, v23 - v40);
            if ((a3 & 1) == 0)
            {
              *&v48 = a8;
              *(&v48 + 1) = a9;
            }

            (*(v18 + 2))(v18, &v45, *(v41 + 16), v42 + *(v41 + 16));
          }

          else if (a3)
          {
            v44 = (a1[3] + 16 * *v41);
            v17[2](v17, *v44, v44[1], *(v41 + 16));
          }

          else if ((a2 & 1) == 0)
          {
            v17[2](v17, a8, a9, v23 - v40 + *(v41 + 16));
          }
        }

        goto LABEL_19;
      }

      v20.n128_f64[0] = v24 - v26 + *(v29 + 16);
      v22.n128_f64[0] = a8;
      v19.n128_f64[0] = a9;
    }

    else
    {
      v38 = (a1[3] + 16 * ((*v29 + 1) % ((a1[4] - a1[3]) >> 4)));
      v22.n128_u64[0] = *v38;
      v19.n128_u64[0] = v38[1];
      v20.n128_f64[0] = (*(v29 + 16) + 1);
    }

    (v17[2])(v17, v22, v19, v20);
    goto LABEL_33;
  }

  if (*(v29 + 8))
  {
    v33 = v24 - v26;
    v34 = v23 - v26;
    v35 = a1[3] + 16 * *v29;
    v49 = *v35;
    v50 = *(v35 + 16);
    v51 = *(v35 + 32);
    v52 = *(v35 + 48);
    v45 = xmmword_1014629F0;
    v46 = xmmword_1014629F0;
    v47 = xmmword_1014629F0;
    v48 = xmmword_1014629F0;
    sub_100404958(&v49, &v45, v24 - v26, v23 - v26);
    v36 = 48;
    if (a3)
    {
      v36 = 0;
    }

    *(&v45 + v36) = a8;
    v37 = 56;
    if (a3)
    {
      v37 = 8;
    }

    *(&v45 + v37) = a9;
    (*(v18 + 2))(v18, &v45, v33 + *(v29 + 16), v34 + *(v29 + 16));
  }

  else if ((a2 & 1) == 0)
  {
    v17[2](v17, a8, a9, v23 - v26 + *(v29 + 16));
  }

LABEL_19:
}

void sub_10041E72C(uint64_t a1, double a2, double a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v5;
  v6[2] = *(a1 + 72);
  sub_10041DC0C(v4, v6, *(a1 + 88), a2, a3, a4);
}

void sub_10041E770(uint64_t a1, double *a2, double a3, double a4)
{
  v5 = a2[6];
  v6 = a2[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  sub_10041932C(v11);
  [*v11 curveToPoint:v5 controlPoint1:v6 controlPoint2:{v7, v8, v9, v10}];
  v13 = *(v11 + 8);

  sub_100410C20(v13, v12, a4);
}

__n128 sub_10041E804(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

void sub_10041E820(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    operator delete(v1);
  }
}

__n128 sub_10041E830(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_10041E854(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_10041E86C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_10041E890(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_10041E8A8(void *a1, double a2, double a3, double a4)
{
  v8 = *(a1[4] + 8);
  v36 = 0;
  sub_1002C75A0(v8 + 48, &v36);
  v9 = *(a1[5] + 8);
  v11 = v9[7];
  v10 = v9[8];
  if (v11 >= v10)
  {
    v13 = v9[6];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 4;
    v16 = v15 + 1;
    if ((v15 + 1) >> 60)
    {
      sub_1000C1D48();
    }

    v17 = v10 - v13;
    if (v17 >> 3 > v16)
    {
      v16 = v17 >> 3;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF0;
    v19 = 0xFFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      sub_1000DB4D8((v9 + 6), v19);
    }

    v20 = (16 * v15);
    *v20 = a2;
    v20[1] = a3;
    v12 = 16 * v15 + 16;
    memcpy(0, v13, v14);
    v21 = v9[6];
    v9[6] = 0;
    v9[7] = v12;
    v9[8] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v11 = a2;
    v11[1] = a3;
    v12 = (v11 + 2);
  }

  v9[7] = v12;
  v22 = *(a1[6] + 8);
  v24 = v22[7];
  v23 = v22[8];
  if (v24 >= v23)
  {
    v26 = v22[6];
    v27 = v24 - v26;
    v28 = (v24 - v26) >> 3;
    v29 = v28 + 1;
    if ((v28 + 1) >> 61)
    {
      sub_1000C1D48();
    }

    v30 = v23 - v26;
    if (v30 >> 2 > v29)
    {
      v29 = v30 >> 2;
    }

    v18 = v30 >= 0x7FFFFFFFFFFFFFF8;
    v31 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v31 = v29;
    }

    if (v31)
    {
      sub_1000E7D14((v22 + 6), v31);
    }

    v32 = (v24 - v26) >> 3;
    v33 = (8 * v28);
    v34 = (8 * v28 - 8 * v32);
    *v33 = a4;
    v25 = v33 + 1;
    memcpy(v34, v26, v27);
    v35 = v22[6];
    v22[6] = v34;
    v22[7] = v25;
    v22[8] = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v24 = a4;
    v25 = v24 + 1;
  }

  v22[7] = v25;
}

void sub_10041EA84(void *a1, char *a2, double a3, double a4)
{
  v8 = *(a1[4] + 8);
  v66 = 1;
  sub_1002C75A0(v8 + 48, &v66);
  sub_10041EF70((*(a1[5] + 8) + 48), *(*(a1[5] + 8) + 56), a2, a2 + 64, 4);
  v9 = *(a1[6] + 8);
  v11 = v9[7];
  v10 = v9[8];
  if (v11 >= v10)
  {
    v13 = v9[6];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      goto LABEL_46;
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      sub_1000E7D14((v9 + 6), v19);
    }

    v20 = (v11 - v13) >> 3;
    v21 = (8 * v15);
    v22 = (8 * v15 - 8 * v20);
    *v21 = a3;
    v12 = v21 + 1;
    memcpy(v22, v13, v14);
    v23 = v9[6];
    v9[6] = v22;
    v9[7] = v12;
    v9[8] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v11 = a3;
    v12 = v11 + 1;
  }

  v9[7] = v12;
  v24 = *(a1[6] + 8);
  v26 = v24[7];
  v25 = v24[8];
  if (v26 >= v25)
  {
    v28 = v24[6];
    v29 = v26 - v28;
    v30 = (v26 - v28) >> 3;
    v31 = v30 + 1;
    if ((v30 + 1) >> 61)
    {
      goto LABEL_46;
    }

    v32 = v25 - v28;
    if (v32 >> 2 > v31)
    {
      v31 = v32 >> 2;
    }

    v18 = v32 >= 0x7FFFFFFFFFFFFFF8;
    v33 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v33 = v31;
    }

    if (v33)
    {
      sub_1000E7D14((v24 + 6), v33);
    }

    v34 = (v26 - v28) >> 3;
    v35 = (8 * v30);
    v36 = (8 * v30 - 8 * v34);
    *v35 = 0xBFF0000000000000;
    v27 = v35 + 1;
    memcpy(v36, v28, v29);
    v37 = v24[6];
    v24[6] = v36;
    v24[7] = v27;
    v24[8] = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v26 = 0xBFF0000000000000;
    v27 = v26 + 8;
  }

  v24[7] = v27;
  v38 = *(a1[6] + 8);
  v40 = v38[7];
  v39 = v38[8];
  if (v40 >= v39)
  {
    v42 = v38[6];
    v43 = v40 - v42;
    v44 = (v40 - v42) >> 3;
    v45 = v44 + 1;
    if ((v44 + 1) >> 61)
    {
      goto LABEL_46;
    }

    v46 = v39 - v42;
    if (v46 >> 2 > v45)
    {
      v45 = v46 >> 2;
    }

    v18 = v46 >= 0x7FFFFFFFFFFFFFF8;
    v47 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v47 = v45;
    }

    if (v47)
    {
      sub_1000E7D14((v38 + 6), v47);
    }

    v48 = (v40 - v42) >> 3;
    v49 = (8 * v44);
    v50 = (8 * v44 - 8 * v48);
    *v49 = 0xBFF0000000000000;
    v41 = v49 + 1;
    memcpy(v50, v42, v43);
    v51 = v38[6];
    v38[6] = v50;
    v38[7] = v41;
    v38[8] = 0;
    if (v51)
    {
      operator delete(v51);
    }
  }

  else
  {
    *v40 = 0xBFF0000000000000;
    v41 = v40 + 8;
  }

  v38[7] = v41;
  v52 = *(a1[6] + 8);
  v54 = v52[7];
  v53 = v52[8];
  if (v54 < v53)
  {
    *v54 = a4;
    v55 = v54 + 1;
    goto LABEL_45;
  }

  v56 = v52[6];
  v57 = v54 - v56;
  v58 = (v54 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
LABEL_46:
    sub_1000C1D48();
  }

  v60 = v53 - v56;
  if (v60 >> 2 > v59)
  {
    v59 = v60 >> 2;
  }

  v18 = v60 >= 0x7FFFFFFFFFFFFFF8;
  v61 = 0x1FFFFFFFFFFFFFFFLL;
  if (!v18)
  {
    v61 = v59;
  }

  if (v61)
  {
    sub_1000E7D14((v52 + 6), v61);
  }

  v62 = (v54 - v56) >> 3;
  v63 = (8 * v58);
  v64 = (8 * v58 - 8 * v62);
  *v63 = a4;
  v55 = v63 + 1;
  memcpy(v64, v56, v57);
  v65 = v52[6];
  v52[6] = v64;
  v52[7] = v55;
  v52[8] = 0;
  if (v65)
  {
    operator delete(v65);
  }

LABEL_45:
  v52[7] = v55;
}

void sub_10041EDE0(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6, void *a7)
{
  v23 = a6;
  v13 = a7;
  v14 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v15 = a2 % v14;
  v21 = (a1[4] - a1[3]) >> 4;
  v22 = a2;
  do
  {
    v16 = *a1 + 24 * v15;
    v17 = *v16;
    v18 = *(v16 + 16);
    v19 = (v15 + 1) % v14;
    if (*(v16 + 8) == 1)
    {
      v13[2](v13, a1[3] + 16 * v17, v18, (v18 + 1));
      goto LABEL_12;
    }

    if (a5)
    {
      if (v15 != v22 || (a4 & 1) == 0)
      {
        v20 = (a1[3] + 16 * v17);
LABEL_11:
        v23[2](*v20, v20[1], v18);
      }
    }

    else if (!a4 || v19 != a3)
    {
      v20 = (a1[3] + 16 * ((v17 + 1) % v21));
      ++v18;
      goto LABEL_11;
    }

LABEL_12:
    v15 = v19;
  }

  while (v19 != a3);
}

char *sub_10041EF70(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      sub_1000C1D48();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      sub_1000DB4D8(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = (v10 - __dst) >> 4;
  if (v17 >= a5)
  {
    v22 = &__dst[16 * a5];
    v23 = &v10[-16 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 16;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v22);
    }

    v30 = 16 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 16;
    *v20 = v21;
    v20 += 16;
    v19 += 16;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[16 * a5];
    v27 = &v19[-16 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 16;
      *v28 = v29;
      v28 += 16;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[16 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t sub_10041F170(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10041F1F0(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_10041F304(a1, v9, v8 + 2);
        sub_10041F464(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_10041F7B8();
  }
}

void sub_10041F2D0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_10041F304(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_10041F54C(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_10041F464(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_10041F54C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10041F63C(a1, prime);
    }
  }
}

void sub_10041F63C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1000C1E4C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_10041F844(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000DB64C(result, a4);
  }

  return result;
}

void sub_10041F89C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10041F950(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = sub_10041F9A8(a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  sub_10041FAC0(a1, v2);
  return v2;
}

void *sub_10041F9A8(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_1000D859C(a1, v15);
  }

  return 0;
}

uint64_t *sub_10041FAC0(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t sub_10041FBE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101861508;
  a2[1] = v2;
  return result;
}

uint64_t sub_10041FC2C(uint64_t a1, uint64_t a2)
{
  if (sub_100200C20(a2, &off_101861588))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10041FE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10041FE40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10041FE58(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 40)) initWithRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10042033C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100420358(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a1[4];
  v10 = [a2 substringToIndex:1];
  [v9 appendString:v10];

  ++*(*(a1[5] + 8) + 24);
  v11 = a1[6];
  if (v11)
  {
    LOBYTE(v11) = *(*(a1[5] + 8) + 24) >= v11;
  }

  *a7 = v11;
}

void sub_1004204D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v14 = a2;
  if ([v14 length] >= 2)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"%@.%@" value:0 table:0];

    v11 = *(a1 + 32);
    v12 = [v14 substringToIndex:1];
    v13 = [*(a1 + 40) substringFromIndex:{objc_msgSend(v14, "length")}];
    [v11 appendFormat:v10, v12, v13];
  }

  *a7 = 1;
}

void sub_100421240(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100421284(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004217A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004217E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100421CA0(id a1)
{
  v1 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"*?+[(){}^$|\\./");
  objc_storeStrong(&qword_101A34EE0, v1);
  if (!qword_101A34EE0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136FF6C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136FF80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370018();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v2);
    }

    v3 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_escapeForIcuRegex]_block_invoke"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:451 isFatal:0 description:"invalid nil value for '%{public}s'", "icuRegexCharSet"];
  }
}

void sub_100421E0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100421E50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CFStringTokenizerTokenType sub_100423678(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  do
  {
    while (1)
    {
      Token = CFStringTokenizerAdvanceToNextToken(tokenizer);
      v5 = Token;
      if (Token)
      {
        break;
      }

      if (CFStringTokenizerGetCurrentTokenRange(tokenizer).location == -1)
      {
        return v5;
      }
    }
  }

  while ((Token & 0x10) != 0 && (*(a1 + 32) & 1) == 0);
  return v5;
}

void sub_100423734(id a1)
{
  v3 = -4;
  v1 = [[NSString alloc] initWithCharacters:&v3 length:1];
  v2 = qword_101A34EF0;
  qword_101A34EF0 = v1;
}

void sub_100423F34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100423F78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004243FC(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) rangeOfString:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 40);
    v8 = [NSValue valueWithRange:v5, v6];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

int64_t sub_100424490(id a1, NSValue *a2, NSValue *a3)
{
  v4 = a3;
  v5 = [(NSValue *)a2 rangeValue];
  v6 = [(NSValue *)v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

void sub_1004247BC(id a1)
{
  v1 = [NSMutableCharacterSet characterSetWithRange:0, 32];
  v2 = qword_101A34F20;
  qword_101A34F20 = v1;

  [qword_101A34F20 addCharactersInString:@"\"];
  v4 = 539566120;
  v3 = [[NSString alloc] initWithCharacters:&v4 length:2];
  [qword_101A34F20 addCharactersInString:v3];
}

void sub_1004249CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100424A10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042503C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10042552C(id a1)
{
  v4 = 0;
  v1 = [[NSRegularExpression alloc] initWithPattern:@"<REDACT .*? REDACT>" options:8 error:&v4];
  v2 = v4;
  v3 = qword_101A34F30;
  qword_101A34F30 = v1;
}

void sub_1004260DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100426120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100426644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100426688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004266CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100426710(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100426754(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100426798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100426988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004269CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100426AE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentSearchResultsCount] + 1;

  return [v1 setCurrentSearchResultsCount:v2];
}

uint64_t sub_100426FD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100426FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) searchString];
  v6 = [*(a1 + 32) searchOptions];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100427148;
  v12[3] = &unk_101861A38;
  v7 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = v9;
  v13 = v9;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100427234;
  v10[3] = &unk_10183AB38;
  v11 = *(a1 + 40);
  [v4 _recursiveSearchWithSearchTarget:v3 forString:v5 options:v6 dispatchGroup:v7 hitBlock:v12 completionBlock:v10];
}

void sub_100427148(void *a1, void *a2)
{
  v8 = a2;
  if ([*(*(a1[6] + 8) + 40) isEqual:*(a1[4] + 128)])
  {
    v3 = a1[5];
    v4 = [v8 model];
    v5 = [v3 objectForKey:v4];

    if (!v5)
    {
      v5 = +[NSMutableArray array];
      v6 = a1[5];
      v7 = [v8 model];
      [v6 setObject:v5 forKey:v7];
    }

    [v5 addObject:v8];
  }
}

void sub_1004273C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004273DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 48) + 8) + 40) isEqual:*(*(a1 + 32) + 128)])
  {
    [v3 searchReferencePoint];
    if (!sub_100120888(v4, v5))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101370660();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101370674();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101370704();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLFindReplaceController performSearchWithSearchTarget:resultsArray:]_block_invoke"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:275 isFatal:0 description:"the hit reference should have a valid point"];
    }

    v9 = [*(a1 + 32) layoutSearchResults];
    [v9 addObject:v3];

    [*(a1 + 40) addObject:v3];
  }
}

void sub_10042756C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004275B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004278DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 48) + 8) + 40) isEqual:*(*(a1 + 32) + 128)])
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
    v5 = [v3 model];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      v7 = [v6 mutableCopy];
      [v7 addObject:v3];
      v8 = [v7 copy];
    }

    else
    {
      v17 = v3;
      v8 = [NSArray arrayWithObjects:&v17 count:1];
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v3 model];
    [v9 setObject:v8 forKey:v10];

    [v3 searchReferencePoint];
    if (!sub_100120888(v11, v12))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137072C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101370754();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013707E4();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLFindReplaceController asyncPerformSearchWithSearchTarget:resultsArray:completionBlock:]_block_invoke"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:306 isFatal:0 description:"the hit reference should have a valid point"];
    }

    v16 = [*(a1 + 32) layoutSearchResults];
    [v16 addObject:v3];

    [*(a1 + 40) addObject:v3];
  }
}

void sub_100427B58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100427B9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100427BE8(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) isEqual:*(*(a1 + 32) + 128)];
  result = [*(a1 + 32) searchHighlightsEnabled];
  if (result)
  {
    v4 = [*(a1 + 32) findReplaceDelegate];
    v5 = [v4 visibleRootIndexRange];
    v7 = v6;

    result = [*(a1 + 32) highlightsRange];
    v9 = v5 == result && v7 == v8;
    v10 = !v9;
    if ((v10 & v2) == 1)
    {
      [*(a1 + 32) setHighlightsRange:{v5, v7}];
      result = [*(a1 + 32) p_handleVisibleResults:*(*(*(a1 + 56) + 8) + 40)];
    }
  }

  if (v2)
  {
    v11 = *(*(a1 + 40) + 16);

    return v11();
  }

  return result;
}

void sub_100427EB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100427EFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100428348(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqual:*(*(a1 + 32) + 128)])
  {
    [*(a1 + 32) p_handleVisibleResults:v5];
  }
}

void sub_10042889C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1004288D0(uint64_t a1, void *a2)
{
  v26 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) pulseSearchResult:0 autohiding:0];
  }

  v4 = [*(*(*(a1 + 48) + 8) + 40) isEqual:*(*(a1 + 32) + 128)];
  v5 = v4;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [*(a1 + 32) setStartingPointSearchReference:?];
    [*(a1 + 32) willScrollToReference:*(*(*(a1 + 40) + 8) + 40)];
    v7 = [*(a1 + 32) findReplaceDelegate];
    v8 = [v7 interactiveCanvasControllerForFindController:*(a1 + 32)];

    v9 = [*(a1 + 32) findReplaceDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) findReplaceDelegate];
      v12 = [v11 scrollOptionsForFindReplace];
    }

    else
    {
      v12 = 8;
    }

    [v8 scrollSearchReferenceToVisible:*(*(*(a1 + 40) + 8) + 40) scrollOptions:v12];
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) pulseSearchResult:*(*(*(a1 + 40) + 8) + 40) autohiding:{objc_msgSend(*(a1 + 32), "searchHighlightsEnabled") ^ 1}];
    }

    if ([*(a1 + 32) searchHighlightsEnabled])
    {
      [*(a1 + 32) updateHighlights];
      v13 = [*(a1 + 32) findReplaceDelegate];
      v14 = [v13 visibleRootIndexRange];
      v16 = v15;

      if (v14 != *(a1 + 56) || v16 != *(a1 + 64))
      {
        [v8 layoutInvalidated];
      }
    }
  }

  if (v5)
  {
    v17 = *(*(*(a1 + 40) + 8) + 40);
    v18 = objc_opt_class();
    v24 = sub_100303920(v17, v18, 1, v19, v20, v21, v22, v23, &OBJC_PROTOCOL___CRLSearchReference);
    [*(a1 + 32) setPrimaryFindResultSearchReference:v24];

    v25 = [*(a1 + 32) findReplaceDelegate];
    [v25 updateCountInSearchBarUI];
  }
}

void sub_100428FF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100429038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042907C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004290C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004292B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 calculatePointFromSearchReference:*(a1 + 32)];
    [*(a1 + 32) setSearchReferencePoint:?];
  }
}

void sub_10042945C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 calculatePointFromSearchReference:*(a1 + 32)];
    [*(a1 + 32) setSearchReferencePoint:?];
  }
}

void sub_10042ADD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10042AE90;
      block[3] = &unk_10183B230;
      v6 = v2;
      dispatch_async(v3, block);
    }

    else
    {
      v4 = v2[2];

      v4();
    }
  }
}

BOOL sub_10042B6C0(_BOOL8 result)
{
  if (result != 2)
  {
    if (result == 1)
    {
      v1 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101370A88();
      }

      v2 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101370A9C(v1, v2);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101370B48();
      }

      v3 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v3, v1);
      }

      v4 = [NSString stringWithUTF8String:"CRLInputType CRLInputTypeForUITouchType(UITouchType)"];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInputType.m"];
      [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:20 isFatal:0 description:"Unexpected touch type UITouchTypeIndirect"];

      return 0;
    }

    else
    {
      return result == 0;
    }
  }

  return result;
}

void sub_10042B804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042B848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042BDE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042BE24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042BE68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042BEAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042BEF0(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042C18C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042C1D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042C4EC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10042C5CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 64) error];
  v4 = v3;
  v5 = atomic_load((*(a1 + 32) + 152));
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (v7)
  {
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = [*(v6 + 8) AVAssetAndReturnError:0];
      v10 = [v9 tracks];

      if (v10)
      {
        LODWORD(v10) = [CRLMovieCompatibilityChecker assetContainsHEVCVideoTracks:v9];
      }

      v11 = *(a1 + 32);
      if (v8 <= 2 && v10 == 0)
      {
        [*(a1 + 32) p_finishConvertingWithConvertedMovieData:0 error:0 completionHandler:*(a1 + 40)];
      }

      else
      {
        v13 = v11[5];
        if (v13 <= 2)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101370E00();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101370E14();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101370EA4();
          }

          v14 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v14);
          }

          v15 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter convertMediaWithCompletionHandler:]_block_invoke"];
          v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
          [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:186 isFatal:0 description:"Optimizing movie past what is requested!"];

          v11 = *(a1 + 32);
          v13 = v11[5];
        }

        v17 = (v13 == 3) & v10;
        v18 = v11[1];
        if (v17 == 1)
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10042C9D4;
          v22[3] = &unk_10183FCB8;
          v22[4] = v11;
          v23 = *(a1 + 40);
          [v11 p_convertMovieData:v18 fromPlayableByAVFoundationToThisDeviceWithCompletionHandler:v22];
          v19 = v23;
        }

        else
        {
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10042C9E8;
          v20[3] = &unk_10183FCB8;
          v20[4] = v11;
          v21 = *(a1 + 40);
          [v11 p_convertMovieData:v18 fromPlayableByAVFoundationToAllDevicesWithCompletionHandler:v20];
          v19 = v21;
        }
      }
    }

    else
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10042C940;
      v24[3] = &unk_10183FC10;
      v24[4] = v6;
      v25 = *(a1 + 40);
      [v6 p_checkInitialCompatibilityLevelWithCompletionHandler:v24];
    }
  }

  else
  {
    [*(a1 + 32) p_finishConvertingWithConvertedMovieData:0 error:v3 completionHandler:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10042C94C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042C990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042CF58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042CF9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042CFE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042D024(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042D068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042D0AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042D5BC(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042D5FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042D640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10042D684(uint64_t a1)
{
  [*(*(a1 + 32) + 56) progress];
  v3 = v2;
  [*(*(a1 + 32) + 96) maxValue];
  v5 = v4 * v3;
  v6 = *(*(a1 + 32) + 96);

  return [v6 setValue:v5];
}

void sub_10042D6E4(uint64_t a1)
{
  v2 = qword_101A34F70;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10042D7DC;
  v9[3] = &unk_101862060;
  v10 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  dispatch_async(v2, v9);
}

void sub_10042D7DC(uint64_t a1)
{
  v2 = (a1 + 32);
  dispatch_source_cancel(*(*(a1 + 32) + 104));
  [*(*v2 + 96) maxValue];
  [*(*v2 + 96) setValue:?];
  v3 = [*(*v2 + 56) status];
  if (v3 == 3)
  {
    if (atomic_load((*v2 + 152)))
    {
      v5 = *(*(a1 + 72) + 16);

      v5();
    }

    else
    {
      v10 = [[_TtC8Freeform27CRLPreinsertionAssetWrapper alloc] initWithUrl:*(a1 + 40) owner:*(*(a1 + 32) + 48)];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10042D9F8;
      v17[3] = &unk_101862018;
      v18 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      *&v15 = v13;
      *(&v15 + 1) = v14;
      *&v16 = v11;
      *(&v16 + 1) = v12;
      v19 = v16;
      v20 = v15;
      [(CRLPreinsertionAssetWrapper *)v10 createAssetWithCompletionHandler:v17];
    }
  }

  else
  {
    v6 = v3;
    if (qword_101AD5CC8 != -1)
    {
      sub_1013712E0();
    }

    v7 = off_1019F0290;
    if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
    {
      sub_1013712F4(v2, v6, v7);
    }

    v8 = *(a1 + 72);
    v9 = [*(*(a1 + 32) + 56) error];
    (*(v8 + 16))(v8, 0, v9);
  }
}

void sub_10042D9F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_101A34F70;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10042DB18;
  v10[3] = &unk_101861FF0;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = v5;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_10042DB18(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101371370();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 67110402;
      v24 = v2;
      v25 = 2082;
      v26 = "[CRLMovieCompatibilityConverter p_convertMovieData:withPresetName:completionHandler:]_block_invoke_5";
      v27 = 2082;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m";
      v29 = 1024;
      v30 = 320;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Received error %@ creating data from %@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371384();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter p_convertMovieData:withPresetName:completionHandler:]_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:320 isFatal:0 description:"Received error %@ creating data from %@", *(a1 + 32), *(a1 + 40)];
  }

  v7 = [*(*(a1 + 48) + 56) error];
  v8 = [*(a1 + 56) length];
  if ([*(a1 + 64) length] <= v8)
  {
    goto LABEL_24;
  }

  if (qword_101AD5CC8 != -1)
  {
    sub_1013713AC();
  }

  if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
  {
    sub_1013713D4();
  }

  v9 = sub_1003265AC(*(a1 + 72));
  if (!sub_100326828(v9) || ![CRLMovieCompatibilityChecker assetContainsH264VideoTracks:*(a1 + 80)])
  {
    if (![CRLMovieCompatibilityChecker isPreset:v9 moreCompatibleThanAsset:*(a1 + 80)])
    {
      if (qword_101AD5CC8 != -1)
      {
        sub_101371448();
      }

      v15 = off_1019F0290;
      if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
      {
        sub_101371470(v15);
      }

      v13 = *(a1 + 88);
      v14 = *(a1 + 56);
      goto LABEL_30;
    }

    if (qword_101AD5CC8 != -1)
    {
      sub_1013714B4();
    }

    v12 = off_1019F0290;
    if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
    {
      sub_1013714DC((a1 + 72), v12);
    }

LABEL_24:
    v13 = *(a1 + 88);
    v14 = *(a1 + 64);
LABEL_30:
    (*(v13 + 16))(v13, v14, v7);
    goto LABEL_31;
  }

  v10 = [[CRLMovieCompatibilityChecker alloc] initWithData:*(a1 + 64)];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10042DFB8;
  v18[3] = &unk_101861F88;
  v11 = *(a1 + 48);
  v18[4] = v10;
  v18[5] = v11;
  v22 = *(a1 + 88);
  v19 = *(a1 + 64);
  v20 = *(a1 + 56);
  v21 = v7;
  [(CRLMovieCompatibilityChecker *)v10 checkCompatibilityUpToLevel:4 completionHandler:v18];

LABEL_31:
}

void sub_10042DEF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042DF34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042DF78(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

uint64_t sub_10042DFB8(uint64_t a1)
{
  v2 = [*(a1 + 32) compatibilityLevel];
  v3 = *(*(a1 + 40) + 32);
  if (qword_101AD5CC8 != -1)
  {
    sub_101371580();
  }

  v4 = off_1019F0290;
  if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
  {
    sub_101371594(v2 > v3, v4);
  }

  return (*(*(a1 + 72) + 16))();
}

void sub_10042E05C(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E09C(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E0DC(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E11C(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E474(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E4B4(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E4F4(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E66C(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042E6AC(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 120);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) cancel];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10042E79C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 56) cancelExport];
  [*(*(a1 + 32) + 64) cancel];

  objc_autoreleasePoolPop(v2);
}

void sub_10042EB08(id a1)
{
  v1 = sub_1004BD804("CRLMovieCompatibilityConverterLogCat");
  v2 = off_1019F0290;
  off_1019F0290 = v1;
}

void sub_10042EB48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042EB8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042EBD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042EC14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10042EC58(uint64_t a1)
{
  *(*(a1 + 32) + 32) = [*(*(a1 + 32) + 64) compatibilityLevel];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10042EDB8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10042F300(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042F344(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042F8D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042F91C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042F960(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042F9A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042F9E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042FA2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042FD6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042FDB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10042FDF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10042FEDC;
  v12[3] = &unk_101862310;
  v13 = v5;
  v14 = v6;
  v9 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v9;
  v10 = v6;
  v11 = v5;
  [v7 p_continueWorkOnMainThreadWithModalOperationPresenter:v8 usingBlock:v12];
}

void sub_10042FEDC(uint64_t a1)
{
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (v3)
  {
    if (*(*(a1 + 48) + 40) == 1)
    {

      v4 = 0;
      v2 = 0;
      v3 = *(a1 + 56);
    }

    else
    {
      v4 = v5;
    }

    v5 = v4;
    (*(v3 + 16))();
  }
}

void sub_10042FF80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100430074;
  v6[3] = &unk_101861F88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v12 = v4;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v2 p_continueWorkOnMainThreadWithModalOperationPresenter:v3 usingBlock:v6];
}

void sub_100430074(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {

LABEL_4:
    v3 = *(a1 + 72);
    v26 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, 0);

    return;
  }

  if ([*(a1 + 32) isCancelled])
  {
    goto LABEL_4;
  }

  v4 = [*(a1 + 32) compatibilityLevel];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = *(a1 + 72);

      [v17 p_convertImageData:v18 toCompatibilityLevel:4 assetOwner:v19 completionHandler:v20];
    }

    else if (v4 > 3)
    {
      v25 = *(*(a1 + 72) + 16);

      v25();
    }

    else
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1004304CC;
      v27[3] = &unk_101862360;
      v21 = *(a1 + 64);
      v31 = *(a1 + 72);
      v32 = 3;
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      v28 = v22;
      v29 = v23;
      v30 = v24;
      [v21 presentMediaCompatibilityAlertWithReasons:2 forMediaType:2 forSingleMediaObject:1 completionHandler:v27];
    }
  }

  else
  {
    v5 = [NSError alloc];
    v35[0] = NSLocalizedDescriptionKey;
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Couldn’t Add Image" value:0 table:0];
    v36[0] = v7;
    v35[1] = NSLocalizedRecoverySuggestionErrorKey;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Your image wasn’t added because it’s in an unsupported format." value:0 table:0];
    v35[2] = @"CRLBoardItemImporterErrorMediaTypeKey";
    v36[1] = v9;
    v36[2] = &off_1018E2E08;
    v10 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
    v11 = [v5 initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:103 userInfo:v10];

    if ((sub_10050D1C8(*(a1 + 40)) & 1) == 0)
    {
      v12 = [NSError alloc];
      v33[0] = NSLocalizedFailureReasonErrorKey;
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"This image is too large to insert." value:0 table:0];
      v33[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
      v34[0] = v14;
      v34[1] = &off_1018E2E08;
      v15 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
      v16 = [v12 initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:102 userInfo:v15];

      v11 = v16;
    }

    (*(*(a1 + 72) + 16))();
  }
}

id sub_1004304CC(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))(*(a1 + 56), 0, 0);
  }

  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  if (*(a1 + 64) >= v4)
  {
    return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 32), 0);
  }

  else
  {
    return [*(a1 + 40) p_convertImageData:*(a1 + 32) toCompatibilityLevel:? assetOwner:? completionHandler:?];
  }
}

void sub_10043062C(uint64_t a1)
{
  v2 = [*(a1 + 32) convertedMediaData];
  v3 = [*(a1 + 32) error];
  if (v3)
  {
    v4 = *(*(a1 + 48) + 16);
LABEL_5:
    v4();
    goto LABEL_6;
  }

  if (v2)
  {
    v4 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101371E14();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101371E28();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101371EB8();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v5);
  }

  v6 = [NSString stringWithUTF8String:"[CRLImageFillProvider p_convertImageData:toCompatibilityLevel:assetOwner:completionHandler:]_block_invoke"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:246 isFatal:0 description:"If no conversion error was provided, the converted image data should not be nil!"];

  v8 = *(*(a1 + 40) + 16);
  v9 = v8;
  if (v8)
  {
    v18 = 0;
    [v8 getResourceValue:&v18 forKey:NSURLLocalizedNameKey error:0];
    v10 = v18;
    if (!v10)
    {
      v10 = [v9 lastPathComponent];
    }

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"The image “%@” couldn’t be inserted." value:0 table:0];
    v13 = [NSString stringWithFormat:v12, v10];
  }

  else
  {
    v10 = +[NSBundle mainBundle];
    v13 = [v10 localizedStringForKey:@"The image couldn’t be inserted." value:0 table:0];
  }

  v19[0] = NSLocalizedDescriptionKey;
  v19[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
  v20[0] = v13;
  v20[1] = &off_1018E2E08;
  v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v15 = v14;
  if (v9)
  {
    v16 = [v14 mutableCopy];
    [v16 setObject:v9 forKeyedSubscript:NSURLErrorKey];

    v15 = v16;
  }

  v17 = [[NSError alloc] initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:100 userInfo:v15];
  (*(*(a1 + 48) + 16))();

LABEL_6:
}

void sub_100430990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004309D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100431348(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043138C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004313D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100431414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100431458(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043149C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004314E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100431524(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100431568(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004315AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100431608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_10043171C;
  v16 = &unk_101862558;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v17 = v7;
  v18 = v8;
  v10 = v9;
  v19 = v5;
  v20 = v6;
  v11 = *(a1 + 56);
  v21 = v10;
  v22 = v11;
  v12 = v6;
  v13 = v5;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v15(v14);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v14);
  }
}

void sub_10043171C(uint64_t a1)
{
  [*(a1 + 32) endModalOperationWithToken:*(a1 + 40)];
  if (*(a1 + 64))
  {
    v4 = *(a1 + 48);
    v2 = *(a1 + 56);
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {

      v3 = 0;
      v2 = 0;
    }

    else
    {
      v3 = v4;
    }

    v5 = v3;
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100432A44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100432A88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100432ACC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100432B10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004337A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004337EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433830(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433874(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004338B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004338FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433940(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433984(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004339C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433A0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433A50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433A94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433DF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433E34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100433FF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043403C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100434854(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100434898(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004354A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004354E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043552C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004355B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004355F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043563C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435680(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004356C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435708(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043574C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435790(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435BBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435C00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435E7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100435EC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

char *sub_100435F04(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 substringToIndex:1];
  v4 = [@"0123456789ABCDEF" rangeOfString:v3];
  v5 = [v2 substringFromIndex:1];

  v6 = [@"0123456789ABCDEF" rangeOfString:v5] + 16 * v4;
  return v6;
}

void sub_100436264(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004362A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100436560(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004365A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004369A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004369EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100436BC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100436C08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100436E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100436E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100437104(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100437148(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100437634(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100437678(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1004380CC(uint64_t a1, CGColorRef color, CGColorRef color2)
{
  if (*(a1 + 32) == 0.0)
  {

    return CGColorEqualToColor(color, color2);
  }

  else
  {
    Components = CGColorGetComponents(color);
    v8 = CGColorGetComponents(color2);
    NumberOfComponents = CGColorGetNumberOfComponents(color);
    if (NumberOfComponents != CGColorGetNumberOfComponents(color2))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101373E28();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101373E3C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101373ECC();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLColor p_isEqualToColor:withTolerance:]_block_invoke"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:951 isFatal:0 description:"Color space dimension mismatch"];
    }

    for (result = 1; NumberOfComponents; --NumberOfComponents)
    {
      if (result)
      {
        result = vabdd_f64(*Components, *v8) < *(a1 + 32) || *Components == *v8;
      }

      else
      {
        result = 0;
      }

      ++v8;
      ++Components;
    }
  }

  return result;
}

void sub_1004382BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100438300(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100438344(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100438388(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100438648(uint64_t a1)
{
  if (a1 == 2)
  {
    return sub_1000CCC44();
  }

  if (a1 == 1)
  {
    return sub_1000CCE28();
  }

  if (a1)
  {
    return 0;
  }

  return sub_1000CCD4C();
}

void sub_10043908C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004390D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100439ED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100439F14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A21C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A260(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A3D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A418(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A5D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A958(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043A99C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043BBC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043BC0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043BE50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043BE94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__CFString *sub_10043BF9C(unint64_t a1)
{
  if (a1 < 5)
  {
    return *(&off_101862ED8 + a1);
  }

  if (a1 == 5)
  {
    return @"UIGestureRecognizerStateFailed";
  }

  return @"#Unknown UIGestureRecognizerState#";
}

void sub_10043C00C(id a1)
{
  v1 = objc_alloc_init(NSMutableOrderedSet);
  v2 = qword_101A34F78;
  qword_101A34F78 = v1;

  [qword_101A34F78 addObject:objc_opt_class()];
  [qword_101A34F78 addObject:objc_opt_class()];
  [qword_101A34F78 addObject:objc_opt_class()];
  [qword_101A34F78 addObject:objc_opt_class()];
  v3 = qword_101A34F78;
  v4 = objc_opt_class();

  [v3 addObject:v4];
}

void sub_10043C264(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043C2A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043C470(uint64_t a1, void *a2)
{
  v3 = [a2 protected_supportedFileTypes];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObjectsFromArray:v3];
    v3 = v4;
  }
}

void sub_10043C594(uint64_t a1, void *a2)
{
  v3 = [a2 protected_supportedFileUTTypes];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObjectsFromArray:v3];
    v3 = v4;
  }
}

void sub_10043C6EC(uint64_t a1, void *a2)
{
  v3 = [a2 protected_supportedAnimatedImageFileTypes];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObjectsFromArray:v3];
    v3 = v4;
  }
}

void sub_10043C810(uint64_t a1, void *a2)
{
  v3 = [a2 protected_supportedRemoteURLSchemes];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObjectsFromArray:v3];
    v3 = v4;
  }
}

void sub_10043CA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10043CA28(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(a1 + 56) == 1)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_21;
    }

    [a2 protected_supportedFileUTTypes];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(a1 + 32) conformsToType:{*(*(&v16 + 1) + 8 * i), v16}])
          {
            v11 = *(a1 + 40);
            v12 = [*(a1 + 32) identifier];
            LODWORD(v11) = [a2 protected_canImportFileAtURL:v11 type:v12];

            if (v11)
            {
              *(*(*(a1 + 48) + 8) + 24) = a2;
              goto LABEL_18;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    v13 = [*(a1 + 40) scheme];
    v6 = [v13 lowercaseString];

    if (v6)
    {
      v14 = [a2 protected_supportedRemoteURLSchemes];
      if ([v14 containsObject:v6])
      {
        v15 = [a2 protected_canImportFromRemoteURL:*(a1 + 40)];

        if (v15)
        {
          *(*(*(a1 + 48) + 8) + 24) = a2;
        }
      }

      else
      {
      }
    }
  }

LABEL_21:
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    *a3 = 1;
  }
}

void sub_10043CD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10043CD30(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 protected_supportedFileUTTypes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(a1 + 32) conformsToType:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          v11 = *(a1 + 40);
          v12 = [*(a1 + 32) identifier];
          LODWORD(v11) = [a2 protected_canImportFileWithPreinsertionAsset:v11 type:v12];

          if (v11)
          {
            *(*(*(a1 + 48) + 8) + 24) = a2;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    *a3 = 1;
  }
}

void sub_10043D0D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043D11C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043D308(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043D34C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043D54C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043D590(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043D88C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043D8D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043DBC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043DC0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043DF0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043DF50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043E248(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043E28C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043E584(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043E5C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043E8C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043E904(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043EBFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043EC40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043EEB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = &OBJC_METACLASS___CRLBoardItemImporterPlaceholder;
  v2 = [objc_msgSendSuper2(&v4 allocWithZone:{v1), "p_placeholderInit"}];
  v3 = qword_101A34F88;
  qword_101A34F88 = v2;
}

void sub_10043F10C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10043F150(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004401AC(uint64_t a1)
{
  if ([*(a1 + 32) firstElementForUpcomingScreenChangeResetCount])
  {
    [*(a1 + 32) setFirstElementForUpcomingScreenChangeResetCount:{objc_msgSend(*(a1 + 32), "firstElementForUpcomingScreenChangeResetCount") - 1}];
  }

  result = [*(a1 + 32) firstElementForUpcomingScreenChangeResetCount];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 setCachedFirstElementForUpcomingScreenChange:0];
  }

  return result;
}

id sub_1004402CC(uint64_t a1)
{
  if ([*(a1 + 32) firstElementForUpcomingPageTurnResetCount])
  {
    [*(a1 + 32) setFirstElementForUpcomingPageTurnResetCount:{objc_msgSend(*(a1 + 32), "firstElementForUpcomingPageTurnResetCount") - 1}];
  }

  result = [*(a1 + 32) firstElementForUpcomingPageTurnResetCount];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 setCachedFirstElementForUpcomingPageTurn:0];
  }

  return result;
}

NSString *CRLAccessibilityGetUIKitLocalizedString(uint64_t a1)
{
  v2 = qword_101A34FB0;
  if (!qword_101A34FB0)
  {
    v2 = [NSBundle bundleWithIdentifier:@"com.apple.UIKit.axbundle"];
    qword_101A34FB0 = v2;
    if (!v2)
    {
      return a1;
    }
  }

  return [(NSBundle *)v2 localizedStringForKey:a1 value:&stru_1018BCA28 table:@"Accessibility"];
}

id CRLAccessibilityPostLayoutChangedNotification(void *a1)
{
  if (qword_101A34FB8)
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    qword_101A34FB8 = [[CRLAccessibilityTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [qword_101A34FB8 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  if (qword_101A34FC0)
  {
    if (qword_101A34FC0 != a1)
    {
      if (CRLAccessibilityShouldPerformValidationChecks())
      {
        ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Multiple targets for multiple layout changed notifications. This is likely a bug.", v3, v4, v5, v6, v7, v10))
        {
          abort();
        }
      }
    }
  }

  else
  {
    qword_101A34FC0 = a1;
  }

LABEL_11:
  v8 = qword_101A34FB8;

  return [v8 afterDelay:&stru_101863310 processBlock:0.25];
}

void sub_100440554(id a1)
{
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, qword_101A34FC0);
  v1 = qword_101A34FC0;
  qword_101A34FC0 = 0;
}

void sub_100440CA0(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBar];
  [v1 setNeedsLayout];
}

void sub_1004416AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004416F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100441734(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100441778(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004417BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100441800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100441B7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100441BC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100441FCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100442010(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004424B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004424F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100442A38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100442A7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100442C78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100442CBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004432B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004432F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044333C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100443380(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004433C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100443408(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044389C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004438E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100443A88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100443ACC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444040(uint64_t a1)
{
  v1 = [*(a1 + 32) canvas];
  [v1 i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
}

void sub_100444740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444784(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444930(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444974(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444BE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444C28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444C6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100444CB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100445670(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_1004456B4(id *a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [*(a1[5] + 53) objectForKeyedSubscript:v7];
        v9 = v8;
        if (!v8 || [v8 hudSize] == 1)
        {
          [a1[5] p_showCollaboratorHUDForCollaborator:v7 withSelectionPath:0 allowScroll:0 hudSize:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = a1[6];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        v16 = [*(a1[5] + 53) objectForKeyedSubscript:{v15, v17}];
        if (v16 && ([a1[7] containsObject:v15] & 1) == 0)
        {
          [v16 teardown];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

void sub_100446138(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044617C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004461C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100446204(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100446248(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044628C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100446D08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100446D4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100447370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10044739C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    origin = CGRectZero.origin;
    size = CGRectZero.size;
    *(WeakRetained + 12) = CGRectZero.origin;
    *(WeakRetained + 13) = size;
    if (*(a1 + 48) == 1)
    {
      *(WeakRetained + 248) = origin;
      *(WeakRetained + 264) = size;
      WeakRetained[240] = 0;
    }
  }

  v5 = WeakRetained;
  (*(*(a1 + 32) + 16))();
}

void sub_1004477A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004477E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100447828(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044786C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100447A6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100447AB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100447CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100447D00(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 currentSelectionContainsInfo:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_100448384(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004483C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100448660(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1004486BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  v24 = v3;
  if (*(v4 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 canvasShouldScrollForSelectionPath:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 8);
  }

  *(v4 + 24) = v5;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 40) rectInRootForScrollingToSelectionPath:*(a1 + 32) onLayout:v24 allowingZooming:*(a1 + 96)];
    v6 = *(*(a1 + 64) + 8);
    v6[4] = v7;
    v6[5] = v8;
    v6[6] = v9;
    v6[7] = v10;
    [v24 rectInRootOfAutoZoomContextOfSelectionPath:*(a1 + 32)];
    v11 = *(*(a1 + 72) + 8);
    v11[4] = v12;
    v11[5] = v13;
    v11[6] = v14;
    v11[7] = v15;
    [v24 viewScaleForZoomingToSelectionPath:*(a1 + 32) targetPointSize:*(*(*(a1 + 88) + 8) + 24)];
    *(*(*(a1 + 80) + 8) + 24) = v16;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v17 = *(*(a1 + 64) + 8);
    [*(a1 + 40) rectInRootForScrollingToSelectionPath:*(a1 + 32) onLayout:v24 allowingZooming:*(a1 + 96)];
    v26.origin.x = v18;
    v26.origin.y = v19;
    v26.size.width = v20;
    v26.size.height = v21;
    *(*(*(a1 + 64) + 8) + 32) = CGRectUnion(v17[1], v26);
    v22 = *(*(a1 + 72) + 8);
    size = CGRectZero.size;
    *(v22 + 32) = CGRectZero.origin;
    *(v22 + 48) = size;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }
}

void sub_100448FD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044901C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100449060(uint64_t a1)
{
  if (+[NSThread isMainThread])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 704);
    if (v3)
    {
      v4 = *(v2 + 712);
      if ((v4 & 0x100) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v2 + 16));
        v6 = objc_opt_respondsToSelector();

        v2 = *(a1 + 32);
        if (v6)
        {
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_100449188;
          v10[3] = &unk_10183AB38;
          v10[4] = v2;
          v7 = objc_retainBlock(v10);
          v8 = objc_loadWeakRetained((*(a1 + 32) + 16));
          [v8 interactiveCanvasController:*(a1 + 32) needsScrollWhenViewDidLayoutUsingBlock:v7];

          return;
        }

        v3 = *(v2 + 704);
        v4 = *(v2 + 712);
      }

      [v2 p_scrollToSelectionPath:v3 scrollOptions:v4];
      v9 = *(a1 + 32);

      [v9 p_clearSelectionScrollingState];
    }
  }
}

void sub_100449188(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[88];
  if (v2)
  {
    v4 = v1[89];
    v5 = v2;
    [v1 p_clearSelectionScrollingState];
    [*(a1 + 32) scrollToSelectionPath:v5 scrollOptions:v4 & 0xFFFFFFFFFFFFFEFFLL];
  }
}

void sub_100449AE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100449B24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100449FAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100449FF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044A534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044A578(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044BF1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044BF60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044CF8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044CFD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044D314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044D358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044D39C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044D3E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044D5B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044D5F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044DAB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044DAF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044F438(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044F47C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044FAFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044FB40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044FE94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044FED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044FF1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10044FF60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10045184C(id a1, CRLCanvasRep *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(CRLCanvasRep *)v2 isSelected];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_100451AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100451AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100451AE8(uint64_t a1)
{
  v2 = [*(a1 + 32) hitRep:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

BOOL sub_100452644(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  if (v5)
  {
    [v5 rectInRootForSelectionPath:*(a1 + 32)];
    v6 = !CGRectIsNull(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100452E0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[753] & 1) != 0 || v2[754] == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = [v2 canvas];
    [v4 performBlockAfterLayoutIfNecessary:*(a1 + 40)];
  }
}

void sub_1004531A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004531E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004533B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004533F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004540AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004540F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100454134(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 424) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 32) collaboratorCursorDelegate];
  v4 = [v3 collaboratorCursorSelectionPathForRenderer:*(a1 + 32) collaboratorPresence:*(a1 + 40)];
  [*(a1 + 32) handleCollaboratorCursorSelectionPathChanged:*(a1 + 48) newSelectionPath:v4 collaboratorPresence:*(a1 + 40)];
  if ([*(*(a1 + 32) + 416) containsObject:*(a1 + 40)])
  {
    if (v4 == *(a1 + 56))
    {
      if (!v4)
      {
        if (!v2)
        {
          goto LABEL_13;
        }

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v15 = sub_1004546A8;
        v16 = &unk_10183AB38;
        v17 = v2;
        if (+[NSThread isMainThread])
        {
          v15(v14);
        }

        else
        {
          dispatch_async(&_dispatch_main_q, v14);
        }

        v8 = v17;
        goto LABEL_12;
      }

      if (v2)
      {
        v29 = 0u;
        v28 = 0u;
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        v7 = [v2 hudSize];
        if (v6)
        {
          [v6 p_collaboratorHUDPositionForSelectionPath:v4 collaboratorPresence:v5 allowScroll:0 hudSize:v7];
        }

        else
        {
          v29 = 0u;
          v28 = 0u;
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v19 = sub_100454414;
        v20 = &unk_101863F78;
        v9 = *(a1 + 40);
        v21 = *(a1 + 32);
        v22 = v9;
        v23 = v2;
        v26 = v28;
        v27 = v29;
        v24 = v4;
        v25 = *(a1 + 48);
        if (+[NSThread isMainThread])
        {
          v19(v18);
        }

        else
        {
          dispatch_async(&_dispatch_main_q, v18);
        }

        v8 = v22;
LABEL_12:
      }
    }
  }

  else if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v11 = sub_1004546B0;
    v12 = &unk_10183AB38;
    v13 = v2;
    if (+[NSThread isMainThread])
    {
      v11(block);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, block);
    }

    v8 = v13;
    goto LABEL_12;
  }

LABEL_13:
}

void sub_100454414(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 424) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  if (v2 == v3)
  {
    if (*(a1 + 96) == 1)
    {
      v4 = *(a1 + 48);
      v5 = [*(a1 + 56) orderedSelections];
      v6 = [v5 lastObject];
      objc_opt_class();
      [v4 setShouldFadeOutUnconditionally:objc_opt_isKindOfClass() & 1];

      [*(a1 + 48) moveHUDToPoint:*(a1 + 88) withDirection:{*(a1 + 72), *(a1 + 80)}];
      if ([*(a1 + 48) hudSize] == 1 && (objc_msgSend(*(a1 + 56), "isEqual:", *(a1 + 64)) & 1) == 0)
      {
        v7 = *(a1 + 48);

        [v7 resetFadeOutTimer];
      }
    }

    else
    {
      v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101376C20();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101376C34(a1, v8);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101376CDC();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController collaboratorCursorSelectionPathChangedFromSelectionPath:toSelectionPath:collaboratorPresence:]_block_invoke"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:5051 isFatal:0 description:"Could not determine HUD position for selection path %@", *(a1 + 56)];

      [*(a1 + 48) hideHUD];
    }
  }
}

void sub_100454620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100454664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100454AE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100454B28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100454B6C(uint64_t a1)
{
  v2 = [*(a1 + 32) editingCoordinator];
  v3 = [v2 followCoordinator];
  v4 = [v3 expectingViewportFromUUID];
  v5 = [*(a1 + 40) presenceUUID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) editingCoordinator];
    v8 = [v7 followCoordinator];
    [v8 setExpectingViewportForOneTimeScrollFrom:0];

    [*(a1 + 32) scrollToSelectionPath:*(a1 + 48) scrollOptions:9];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);

    [v9 showCollaboratorHUDForCollaborator:v10 withSelectionPath:v11 allowScroll:1];
  }
}

void sub_10045501C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100455060(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100455228(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045526C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004559D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100455A18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100455A5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100455AA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100455C50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100455C94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004569CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100456A10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100456A54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100456A98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100456ADC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100456B20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004571A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004571EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100457230(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100457274(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100457430(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100457474(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004576C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045770C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004578A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004578E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100458064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004580A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004580EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100458130(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004582A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004582EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004586D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100458714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100458758(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045879C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100458A6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100458AB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100458DDC(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 canRemainDuringSharedReadOnlyMode] & 1) == 0)
  {
    v5 = [*(a1 + 32) editorController];
    [v5 setSelectionPathToPopEditor:v6];

    *a3 = 1;
  }
}

id sub_100458E64(uint64_t a1)
{
  result = [*(a1 + 32) isTearingDown];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) hasBeenTornDown];
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 32);

      return [v3 endEditingDiscardingEdits];
    }
  }

  return result;
}

void sub_100459008(id a1, CRLEditor *a2, BOOL *a3)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(CRLEditor *)v3 documentEditabilityDidChange];
  }
}

void sub_10045AF44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045AF88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045AFCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045B010(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045B054(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045B098(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045B654(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045B698(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045B6DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045B720(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045C408(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045C44C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045C5F4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10045C868(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045C8AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045CB5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045CBA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10045CBE4(id a1, _TtC8Freeform15CRLChangeRecord *a2)
{
  v2 = a2;
  if ([(CRLChangeRecord *)v2 kind]== 1)
  {
    v3 = [(CRLChangeRecord *)v2 details];
    v4 = [v3 containsProperty:14];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10045CC4C(id a1, _TtC8Freeform15CRLChangeRecord *a2)
{
  v2 = a2;
  if ([(CRLChangeRecord *)v2 kind]== 1)
  {
    v3 = [(CRLChangeRecord *)v2 details];
    v4 = [v3 containsProperty:13];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10045CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10045CEF8(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = 1;
  objc_sync_exit(obj);
}

void sub_10045CF80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045CFC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D310(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D354(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D4E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D524(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D6D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D71C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D8A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045D8E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045DDD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045DE1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045F8FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045F940(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045FD0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045FD50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045FD94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10045FDD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004614AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004614F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100461534(uint64_t a1)
{
  [*(a1 + 32) viewScale];
  v3 = v2;
  v4 = *(a1 + 72) / v2;
  v5 = [*(a1 + 32) canvas];
  v6 = [v5 isAnchoredAtRight];

  if (v6)
  {
    v7 = *&CGAffineTransformIdentity.c;
    *&v39.a = *&CGAffineTransformIdentity.a;
    *&v39.c = v7;
    *&v39.tx = *&CGAffineTransformIdentity.tx;
    *&v38.m11 = *&v39.a;
    *&v38.m13 = v7;
    *&v38.m21 = *&v39.tx;
    CGAffineTransformScale(&v39, &v38, v4, v4);
    *&v38.m11 = *&v39.a;
    *&v38.m13 = *&v39.c;
    *&v38.m21 = *&v39.tx;
    [*(a1 + 48) setTransform:&v38];
    [*(a1 + 32) setContentOffset:0 scrollOptions:{*(a1 + 96), *(a1 + 104)}];
  }

  else
  {
    [*(a1 + 40) adjustedContentInset];
    v9 = v8;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(&v39, 0, sizeof(v39));
    v10 = *(a1 + 48);
    if (v10)
    {
      [v10 transform3D];
    }

    v11 = *(a1 + 80);
    v12 = v9 + *(a1 + 88);
    *&v37.m31 = v41;
    *&v37.m33 = v42;
    *&v37.m41 = v43;
    *&v37.m43 = v44;
    *&v37.m11 = *&v39.a;
    *&v37.m13 = *&v39.c;
    *&v37.m21 = *&v39.tx;
    *&v37.m23 = v40;
    CATransform3DTranslate(&v38, &v37, v11, v12, 0.0);
    v41 = *&v38.m31;
    v42 = *&v38.m33;
    v43 = *&v38.m41;
    v44 = *&v38.m43;
    *&v39.a = *&v38.m11;
    *&v39.c = *&v38.m13;
    *&v39.tx = *&v38.m21;
    v40 = *&v38.m23;
    v37 = v38;
    CATransform3DScale(&v38, &v37, v4, v4, v4);
    v41 = *&v38.m31;
    v42 = *&v38.m33;
    v43 = *&v38.m41;
    v44 = *&v38.m43;
    *&v39.a = *&v38.m11;
    *&v39.c = *&v38.m13;
    *&v39.tx = *&v38.m21;
    v40 = *&v38.m23;
    [*(a1 + 48) setTransform3D:&v38];
    [*(a1 + 56) position];
    v14 = v13;
    v16 = v15;
    [*(a1 + 40) contentOffset];
    v18 = v17;
    v20 = v19;
    v21 = sub_10011F31C(v17, v19, v14);
    v23 = sub_10011F340(v21, v22, v4);
    v25 = sub_10011F31C(v23, v24, v21);
    v26 = sub_10011F31C(v14, v16, v25);
    [*(a1 + 56) setPosition:{v26 - (*(a1 + 120) - *(a1 + 120) * v4 + -(v18 - *(a1 + 96) * v3) * v4), v27 - (*(a1 + 112) - *(a1 + 112) * v4 + -(v20 - *(a1 + 104) * v3) * v4)}];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v30 interactiveCanvasController:*(a1 + 32) willAnimateViewScaleWithDuration:*(a1 + 144)];
  }

  v31 = +[NSNotificationCenter defaultCenter];
  v32 = *(a1 + 32);
  v46[0] = *(a1 + 64);
  v45[0] = @"CRLInteractiveCanvasControllerInteractionSourceKey";
  v45[1] = @"CRLInteractiveCanvasControllerDurationKey";
  v33 = *(a1 + 144);
  *&v33 = v33;
  v34 = [NSNumber numberWithFloat:v33];
  v46[1] = v34;
  v45[2] = @"CRLInteractiveCanvasControllerViewScaleKey";
  v35 = [NSNumber numberWithDouble:v3];
  v46[2] = v35;
  v36 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
  [v31 postNotificationName:@"CRLCanvasUpdateZoomNotification" object:v32 userInfo:v36];
}

uint64_t sub_1004618F0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) enclosingScrollView];
  v5 = [v4 layer];
  [v5 removeAllAnimations];

  v6 = *(a1 + 40);
  v7 = *&CATransform3DIdentity.m33;
  v17[4] = *&CATransform3DIdentity.m31;
  v17[5] = v7;
  v8 = *&CATransform3DIdentity.m43;
  v17[6] = *&CATransform3DIdentity.m41;
  v17[7] = v8;
  v9 = *&CATransform3DIdentity.m13;
  v17[0] = *&CATransform3DIdentity.m11;
  v17[1] = v9;
  v10 = *&CATransform3DIdentity.m23;
  v17[2] = *&CATransform3DIdentity.m21;
  v17[3] = v10;
  [v6 setTransform:v17];
  [*(a1 + 48) setViewScale:*(a1 + 72)];
  [*(a1 + 40) endAnimatingViewScaleExternallyWithToken:*(a1 + 56)];
  [*(a1 + 40) fixFrameAndScrollView];
  [*(a1 + 40) bounds];
  [*(a1 + 40) setFrame:sub_10011ECB4()];
  [*(a1 + 48) setP_visibleBoundsRectForTiling:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  [*(a1 + 48) setContentOffset:0 scrollOptions:{*(a1 + 80), *(a1 + 88)}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v12 = objc_loadWeakRetained((*(a1 + 48) + 16));
    [v12 interactiveCanvasControllerDidAnimateViewScale:*(a1 + 48)];
  }

  *(*(a1 + 48) + 657) = 0;
  v13 = *(a1 + 48);
  v18 = @"CRLInteractiveCanvasControllerInteractionSourceKey";
  v14 = [v13 p_sourceInteractionSourceForNotficiationUserInfo];
  v19 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v13 i_viewDidEndZoomingWithUserInfo:v15];

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100462460(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004624A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004624E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046252C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100462BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100462BCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100462C10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100462C54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100462C98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100462CDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100462CF4(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_1004630FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100463114(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100463158(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046319C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004631E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100463224(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_10046352C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100463570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

intptr_t sub_10046368C(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

intptr_t sub_1004637D4(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

id sub_10046382C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 readToBuffer:a2 size:a3];

  return v6;
}

char *sub_1004639F8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 offset];
  [v3 seekToOffset:&v4[a2]];
  v5 = ([v3 offset] - v4);

  return v5;
}

void sub_100463BD0(void *a1)
{
  v1 = a1;
  [v1 seekToOffset:0];
}

void sub_100463DC0(void *a1)
{
  v1 = a1;
  [v1 close];
  CFRelease(v1);
}

void sub_100463FB4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100463FF8(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10046403C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100464080(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004642D4(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(a1 + 40);
    v3 = +[CRLSwappableAxesGeometry swappedAxesGeometry];
  }

  else
  {
    if (a2)
    {
      return;
    }

    v2 = *(a1 + 40);
    v3 = +[CRLSwappableAxesGeometry standardAxesGeometry];
  }

  v4 = v3;
  (*(v2 + 16))(v2);
}

double sub_100464944(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  Width = CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  Height = CGRectGetHeight(v24);
  v16 = Width * 0.5;
  v17 = Height * 0.5;
  if (Width * 0.5 < Width - a6)
  {
    v16 = Width - a6;
  }

  v18 = Height - a7;
  if (v17 >= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = sub_1004C3240(a1, 0.0, v16);

  return sub_1004C3240(v20, 0.0, v19);
}

double sub_100464A08(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      MinX = CGRectGetMinX(*&a2);
      goto LABEL_9;
    }

    MaxX = CGRectGetMinX(*&a2);
  }

  else
  {
    if (!a1)
    {
      MinX = CGRectGetMaxX(*&a2);
LABEL_9:
      v11 = MinX;
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetMinY(v14);
      return v11;
    }

    MaxX = CGRectGetMaxX(*&a2);
  }

  v11 = MaxX;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMaxY(v13);
  return v11;
}

void sub_100464AAC(void *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, float64_t a9, float64_t a10)
{
  v87 = a1;
  v89.origin.x = a4;
  v89.origin.y = a5;
  v89.size.width = a6;
  v89.size.height = a7;
  Width = CGRectGetWidth(v89);
  v90.origin.x = a4;
  v90.origin.y = a5;
  v90.size.width = a6;
  v90.size.height = a7;
  Height = CGRectGetHeight(v90);
  v18.f64[0] = a9;
  v18.f64[1] = a10;
  v19.f64[0] = Width;
  v19.f64[1] = Height;
  v20 = a8 * 1.528665;
  __asm { FMOV            V1.2D, #0.5 }

  v26 = vmulq_f64(v19, _Q1);
  v27 = vmlaq_f64(v19, vdupq_n_s64(0xBFF875696E58A32FLL), v18);
  v28 = vbslq_s8(vcgtq_f64(v27, v26), v27, v26);
  v29 = vdupq_lane_s64(COERCE__INT64(a8 * 1.528665), 0);
  v30 = vbslq_s8(vcgtq_f64(v29, v28), v28, v29);
  v76 = a8;
  v31 = a8 * 1.528665 - a8;
  v85 = 0.0;
  v82 = 0.0;
  if (v31 != 0.0)
  {
    v82 = 1.0 - (v20 - *v30.i64) / v31;
    v85 = 1.0 - (v20 - *&v30.i64[1]) / v31;
  }

  v77 = *v30.i64;
  v32 = sub_100464A08(a2, a4, a5, a6, a7);
  v34 = v33;
  v35 = sub_100464E94(a2, v32, v33, v77);
  v37 = a2 & 0xFFFFFFFFFFFFFFFDLL;
  v38 = v34;
  v78 = v36;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v34 = v36;
  }

  v80 = v32;
  v39 = v35;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v32 = v35;
  }

  if (a3)
  {
    [v87 lineToPoint:{v32, v34}];
    v40 = v80;
    v41 = v38;
LABEL_17:
    v74 = v41;
    v51 = v87;
    v52 = v82;
    if (v82 >= v85)
    {
      v52 = v85;
    }

    v53 = 1.0 - v52;
    v54 = sub_1004C3260(0.95, 1.0, 1.0 - v52);
    v55 = sub_1004C3260(0.93124985, 1.0, v53);
    v56 = dbl_101465C00[a2];
    v57 = sub_100464E94(a2, v40, v41, v54 * v76);
    v59 = v58;
    v60 = v56 * 0.0174532925;
    v61 = (v56 + 50.0) * 0.0174532925;
    v62 = v55 * v76;
    v63 = __sincos_stret(v60);
    v64 = v57 + v55 * v76 * v63.__cosval;
    v73 = v59 + v62 * v63.__sinval;
    v65 = __sincos_stret(v61);
    v66 = v59 + v62 * v65.__sinval;
    if (v37)
    {
      v67 = v82;
    }

    else
    {
      v67 = v85;
    }

    v75 = v67;
    if (v37)
    {
      v68 = v85;
    }

    else
    {
      v68 = v82;
    }

    v69 = v39;
    if (!v37)
    {
      v69 = v80;
    }

    v86 = v69;
    v70 = v78;
    if (v37)
    {
      v70 = v74;
    }

    v83 = v70;
    sub_100464ECC(v51, a2, 1, v64, v73, v76, v68);
    v71 = __sincos_stret((v61 - v60) * 0.5);
    v72 = v62 * ((1.0 - v71.__cosval) * 4.0 / (v71.__sinval * 3.0));
    [v51 curveToPoint:v57 + v62 * v65.__cosval controlPoint1:v66 controlPoint2:{v64 - v72 * v63.__sinval, v73 + v72 * v63.__cosval, v57 + v62 * v65.__cosval + v72 * v65.__sinval, v66 - v72 * v65.__cosval}];
    sub_100464ECC(v51, a2, 0, v86, v83, v76, v75);

    v50 = v87;
    goto LABEL_30;
  }

  [v87 currentPoint];
  if (!sub_10011ED38(v42, v43, v32, v34) || ((v44 = a4, v45 = a5, v46 = a6, v47 = a7, !v37) ? (v48 = CGRectGetWidth(*&v44)) : (v48 = CGRectGetHeight(*&v44)), v48 == 0.0 || fabs(v48) < 0.00999999978))
  {
    [v87 lineToPoint:{v32, v34}];
  }

  v40 = v80;
  v49 = sub_10011ED38(v80, v38, v39, v78);
  v50 = v87;
  v41 = v38;
  if (!v49)
  {
    goto LABEL_17;
  }

LABEL_30:
}

double sub_100464E94(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a2 + a4;
  result = a2 - a4;
  if (a1 > 1)
  {
    return v4;
  }

  return result;
}

void sub_100464ECC(void *a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v50 = a1;
  [v50 currentPoint];
  v45 = v11;
  v13 = v12;
  v14 = ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0) ^ a3;
  if (v14)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = 0.0;
  }

  if (v14)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = 0.8;
  if (v14)
  {
    v18 = 0.8;
  }

  else
  {
    v18 = 0.0;
  }

  if (v14)
  {
    v17 = 0.0;
  }

  v41 = v18;
  v43 = v17;
  v46 = a4;
  v47 = a5;
  if (a3)
  {
    v19 = v13;
  }

  else
  {
    v19 = a5;
  }

  if (a3)
  {
    v20 = v11;
  }

  else
  {
    v20 = a4;
  }

  if (a3)
  {
    v21 = dbl_101465C20[a2];
  }

  else
  {
    a5 = v13;
    a4 = v11;
    v21 = dbl_101465C20[a2] + 50.0 + 20.0;
  }

  v22 = sub_1004C3260(v20, a4, v15);
  v23 = sub_1004C3260(v19, a5, v16);
  v24 = sub_1004C3260(v20, a4, v41);
  v25 = v24;
  if (a3)
  {
    v24 = v22;
  }

  v40 = v24;
  v26 = sub_1004C3260(v19, a5, v43);
  if (a3)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  if (a3)
  {
    v28 = v25;
  }

  else
  {
    v28 = v22;
  }

  v42 = v28;
  v44 = v27;
  if (a3)
  {
    v29 = v23;
  }

  else
  {
    v29 = v26;
  }

  v30 = (v21 + 20.0) * 0.0174532925;
  v31 = __sincos_stret((v30 - v21 * 0.0174532925) * 0.5);
  v32 = (1.0 - v31.__cosval) * 4.0 / (v31.__sinval * 3.0) * a6;
  v33 = __sincos_stret(v21 * 0.0174532925);
  v34 = __sincos_stret(v30);
  v35 = sub_100120ABC(v45 - v32 * v33.__sinval, v13 + v32 * v33.__cosval, v40, v29, a7);
  v37 = v36;
  v38 = sub_100120ABC(v46 + v32 * v34.__sinval, v47 - v32 * v34.__cosval, v42, v44, a7);
  [v50 curveToPoint:v46 controlPoint1:v47 controlPoint2:{v35, v37, v38, v39}];
}

void sub_1004650F0(void *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v43 = a1;
  v15 = sub_100464A08(a2, a4, a5, a6, a7);
  v17 = v16;
  v42 = a8;
  v18 = sub_100464E94(a2, v15, v16, a8);
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = v18;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v15 = v18;
  }

  else
  {
    v17 = v19;
  }

  if (a3)
  {
    [v43 lineToPoint:{v20, v21}];
LABEL_20:
    v29 = v43;
    [v29 currentPoint];
    v30 = v17;
    v32 = v31;
    v34 = v33;
    v35 = dbl_101465C20[a2];
    v36 = v35 * 0.0174532925;
    v37 = (v35 + 90.0) * 0.0174532925;
    v38 = __sincos_stret((v37 - v35 * 0.0174532925) * 0.5);
    v39 = (1.0 - v38.__cosval) * 4.0 / (v38.__sinval * 3.0) * v42;
    v40 = __sincos_stret(v36);
    v41 = __sincos_stret(v37);
    [v29 curveToPoint:v15 controlPoint1:v30 controlPoint2:{v32 - v39 * v40.__sinval, v34 + v39 * v40.__cosval, v15 + v39 * v41.__sinval, v30 - v39 * v41.__cosval}];

    goto LABEL_21;
  }

  [v43 currentPoint];
  if (!sub_10011ED38(v22, v23, v20, v21) || ((v24 = a4, v25 = a5, v26 = a6, v27 = a7, (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0) ? (Width = CGRectGetWidth(*&v24)) : (Width = CGRectGetHeight(*&v24)), Width == 0.0 || fabs(Width) < 0.00999999978))
  {
    [v43 lineToPoint:{v20, v21, *&v42}];
  }

  if (!sub_10011ED38(v20, v21, v15, v17))
  {
    goto LABEL_20;
  }

LABEL_21:
}

void sub_100465510(id a1)
{
  v9[0] = UTTypeSymbolicLink;
  v9[1] = UTTypeDirectory;
  v9[2] = UTTypeLinkPresentationMetadata;
  v1 = [NSArray arrayWithObjects:v9 count:3];
  v2 = [NSMutableArray arrayWithArray:v1];

  v3 = sub_1000ECE78();
  [v2 crl_addNonNilObject:v3];

  v4 = sub_1000ED0A4();
  [v2 crl_addNonNilObject:v4];

  v5 = sub_1000ED4FC();
  [v2 crl_addNonNilObject:v5];

  v6 = sub_1000ED2D0();
  [v2 crl_addNonNilObject:v6];

  v7 = [v2 copy];
  v8 = qword_101A34FD0;
  qword_101A34FD0 = v7;
}

void sub_100465910(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100465B98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100465BDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004664C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100466504(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100466548(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046658C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004665D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100466614(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100466658(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046669C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100466FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CRLWPRep;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100468F60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100468FA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004694EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100469530(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100469E28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100469E6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}