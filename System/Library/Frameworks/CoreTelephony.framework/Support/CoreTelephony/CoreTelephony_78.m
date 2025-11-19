void sub_1004FB498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1004FB4B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = 0uLL;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v6);
  v7 = a1[1];
  if (v7)
  {
    if (atomic_load_explicit((v7 + 8), memory_order_acquire) == 1)
    {
      sub_1005A28D0(a1, &v29, 0, 1);
    }

    v8 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = *a1;
  }

  v10 = v26;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  v28[0] = v10;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = a2;
  v49 = a3;
  v50 = 0;
  v51 = 0;
  v11 = sub_1005A2568(&v26);
  v25[0] = &v29;
  v25[1] = a1;
  v25[2] = sub_1005A3780(v11);
  v12 = sub_1005A2568(&v26);
  v13 = sub_10004AA88((v12 + 16));
  v14 = sub_1005A2568(&v26);
  v15 = *(sub_1005A3780(v14) + 8);
  v16 = sub_1005A2568(&v26);
  *&v23 = v15;
  *(&v23 + 1) = sub_1005A3780(v16);
  *&v24 = &v29;
  *(&v24 + 1) = *(&v23 + 1);
  sub_1004FB894(&v23);
  v17 = sub_1005A2568(&v26);
  v18 = sub_1005A3780(v17);
  v19 = sub_1005A2568(&v26);
  *&v21 = v18;
  *(&v21 + 1) = sub_1005A3780(v19);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_1004FB894(&v21);
  v28[0] = v23;
  v28[1] = v24;
  v27[0] = v21;
  v27[1] = v22;
  sub_1004FB724(v13, v28, v27);
  sub_1004FBC5C(v25);
  sub_1004FBE40(&v29);
  return sub_10004A724(&v26 + 1);
}

void sub_1004FB6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1000FFEDC(&a31);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1004FB724(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1004FB7AC(a2);
    *a2 = *(*a2 + 8);
    sub_1004FB894(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1004FB7AC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1004FB84C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_1004FB84C(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1005A25AC(a2);
  v3 = (sub_1005A2F30((v2 + 32)) + 24);

  return sub_1005A3D38(v3);
}

void sub_1004FB894(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1004FBAF4((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1005A25AC((*a1 + 16));
      sub_1004FBB38(v4, &v14, (a1[2] + 8));
      v5 = sub_1005A25AC((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_1005A25AC((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1004FBAF4((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1004FBAB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004FBAF4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1004FBB38(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1005A2F30(result + 4); ; i += 6)
    {
      result = sub_1005A2F30(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1004FBC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004FBC5C(uint64_t a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_1004FBCA0(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_1004FBCA0(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1005A2568(a1);
  if (sub_1005A3780(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1005A2568(a1);
    v8 = *(sub_1005A3780(v7) + 8);
    sub_1005A27B8(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1004FBE40(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1004FBF18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1004FBFAC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E53150;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1004FC028(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E53150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FC088(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = *a2;
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v6;
    *(a1 + 32) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v6;
    *(a1 + 32) = 0;
  }

  return a1;
}

uint64_t **sub_1004FC0E8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          std::string::operator=((v8 + 5), (v9 + 5));
          *(v8 + 64) = *(v9 + 64);
          sub_1001723F0(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10028582C(&v12);
  }

  if (a2 != a3)
  {
    sub_1004FC260();
  }

  return result;
}

void sub_1004FC24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028582C(va);
  _Unwind_Resume(a1);
}

void sub_1004FC364(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002859C8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004FC380(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t *sub_1004FC3DC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_1004FC460(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FC498(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1005348EC();

    operator delete();
  }

  return result;
}

uint64_t sub_1004FC4DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004FC51C(entitlements::CEHTTPDriver ***a1)
{
  v1 = a1;
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(**a1);
  operator delete();
}

__n128 sub_1004FC610(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E53200;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

intptr_t sub_1004FC640(uint64_t a1, MCC *this)
{
  MCC::getStringValue(&v6, this);
  v3 = *(a1 + 8);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  v4 = v6;
  *(v3 + 16) = v7;
  *v3 = v4;
  return dispatch_semaphore_signal(**(a1 + 16));
}

uint64_t sub_1004FC6A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004FC758(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1004FC784(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FC7BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1004FC7DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1004FC81C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004FC874(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004FC874(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004FC8FC(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1004FC8FC(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_1004FC98C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1004F37F8();
  }

  return result;
}

uint64_t *sub_1004FC98C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
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

uint64_t *sub_1004FCB34(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1004FCC0C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1004FCCE4(uint64_t a1)
{
  *a1 = off_101E53308;
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004FCD4C(uint64_t a1)
{
  *a1 = off_101E53308;
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1004FCE9C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1004FCED4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E53308;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v5 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v5;
  }

  *(a2 + 64) = *(a1 + 64);
  result = sub_1004FC81C((a2 + 72), a1 + 72);
  *(a2 + 96) = *(a1 + 96);
  return result;
}

void sub_1004FCF80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004FCFB0(uint64_t a1)
{
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1004FD010(uint64_t a1)
{
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_1004FD06C(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v10 = 0;
  v8 = 0u;
  *v9 = 0u;
  v7 = 0u;
  rest::read_rest_value();
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 8);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 16))
      {
        v11 = v4;
        v12 = *(a1 + 32);
        LOBYTE(v13) = 0;
        v15 = 0;
        if (BYTE8(v8) == 1)
        {
          v13 = v7;
          v14 = v8;
          if (v8)
          {
            *(*(&v7 + 1) + 16) = &v13 + 8;
            *&v7 = &v7 + 8;
            *(&v7 + 1) = 0;
            *&v8 = 0;
          }

          else
          {
            *&v13 = &v13 + 8;
          }

          v15 = 1;
        }

        *v16 = *v9;
        v17 = v10;
        v9[1] = 0;
        v10 = 0;
        v9[0] = 0;
        if (*(a1 + 63) < 0)
        {
          sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
        }

        else
        {
          *__p = *(a1 + 40);
          __p[2] = *(a1 + 56);
        }

        __p[3] = *(a1 + 64);
        sub_1004FC81C(&v19, a1 + 72);
        v20 = *(a1 + 96);
        v21[0] = 0;
        v21[1] = 0;
        sub_100004AA0(v21, (v4 + 8));
        operator new();
      }

      sub_100004A34(v5);
    }
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (BYTE8(v8) == 1)
  {
    sub_10004EC58(&v7, *(&v7 + 1));
  }

  xpc_release(object);
}

uint64_t sub_1004FD43C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004FD488(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 24) == 1)
  {
    sub_10004EC58(a1, *(a1 + 8));
  }

  return a1;
}

uint64_t *sub_1004FD4D4(unsigned __int8 **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(*v1 + 744))
  {
    if (v1[40] == 1)
    {
      ctu::base64::encode();
      v3 = (v2 + 488);
      if (*(v2 + 511) < 0)
      {
        operator delete(*v3);
      }

      *v3 = v8;
      *(v2 + 504) = v9;
      v4 = v1[8];
      sub_1004F1F78(&v8, (v1 + 16));
      entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v4, &v8);
      sub_10004EC58(&v8, *(&v8 + 1));
    }

    else
    {
      sub_1004EA3A4((v1 + 96));
    }
  }

  sub_1004FD5C8(&v7);
  return sub_1000049E0(&v6);
}

void sub_1004FD598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  sub_10004EC58(&a12, a13);
  sub_1004FD5C8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004FD5C8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 104, *(v1 + 112));
    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    v2 = *(v1 + 48);
    if (v2)
    {
      *(v1 + 56) = v2;
      operator delete(v2);
    }

    if (*(v1 + 40) == 1)
    {
      sub_10004EC58(v1 + 16, *(v1 + 24));
    }

    operator delete();
  }

  return result;
}

void sub_1004FD6D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1004FD7A8);
  __cxa_rethrow();
}

void sub_1004FD714(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FD768(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004FD7A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 416))();
  }

  return result;
}

void sub_1004FD7F0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x20u);
}

void cellplan::CellularPlanControllerPhone::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1004FE058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    sub_101760EE4(a10);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  v15 = *(v13 + 8);
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::init_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CellularPlanControllerPhone initialized", buf, 2u);
  }

  v3 = *(this + 16);
  v4 = *(this + 3);
  v54 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_100004AA0(&v51, this + 1);
  if (v51)
  {
    v5 = v51 + 88;
  }

  else
  {
    v5 = 0;
  }

  v52 = v5;
  v53 = *(&v51 + 1);
  v51 = 0uLL;
  (*(*v3 + 416))(buf, v3, &v54, &v52);
  v6 = *buf;
  memset(buf, 0, sizeof(buf));
  v7 = *(this + 19);
  *(this + 9) = v6;
  if (v7)
  {
    sub_100004A34(v7);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v53)
  {
    sub_100004A34(v53);
  }

  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  if (v54)
  {
    dispatch_release(v54);
  }

  v8 = *(this + 16);
  v9 = *(this + 3);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  (*(*v8 + 440))(buf, v8, &object);
  v10 = *buf;
  memset(buf, 0, sizeof(buf));
  v11 = *(this + 25);
  *(this + 12) = v10;
  if (v11)
  {
    sub_100004A34(v11);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }

  v12 = *(this + 16);
  sub_100004AA0(&v51, this + 1);
  v13 = v51 + 72;
  if (!v51)
  {
    v13 = 0;
  }

  v48 = v13;
  v49 = *(&v51 + 1);
  v51 = 0uLL;
  (*(*v12 + 608))(buf, v12, &v48);
  v14 = *buf;
  memset(buf, 0, sizeof(buf));
  v15 = *(this + 27);
  *(this + 13) = v14;
  if (v15)
  {
    sub_100004A34(v15);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v49)
  {
    sub_100004A34(v49);
  }

  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  v16 = *(this + 16);
  v17 = *(this + 3);
  v47 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v18 = *(this + 25);
  v45 = *(this + 24);
  v46 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v16 + 560))(buf, v16, &v47, &v45);
  v19 = *buf;
  memset(buf, 0, sizeof(buf));
  v20 = *(this + 31);
  *(this + 15) = v19;
  if (v20)
  {
    sub_100004A34(v20);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v46)
  {
    sub_100004A34(v46);
  }

  if (v47)
  {
    dispatch_release(v47);
  }

  v21 = *(this + 16);
  v22 = *(this + 3);
  v44 = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  v23 = *(this + 23);
  v42 = *(this + 22);
  v43 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v51, this + 1);
  if (v51)
  {
    v24 = v51 + 80;
  }

  else
  {
    v24 = 0;
  }

  v40 = v24;
  v41 = *(&v51 + 1);
  v51 = 0uLL;
  (*(*v21 + 592))(buf, v21, &v44, &v42, &v40);
  v25 = *buf;
  memset(buf, 0, sizeof(buf));
  v26 = *(this + 21);
  *(this + 10) = v25;
  if (v26)
  {
    sub_100004A34(v26);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  (***(this + 16))(&v37);
  v51 = v37;
  v37 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  if (*(&v37 + 1))
  {
    sub_100004A34(*(&v37 + 1));
  }

  v27 = *buf;
  v28 = *&buf[8];
  if (*buf != *&buf[8])
  {
    v29 = v39;
    do
    {
      if (v29(*v27))
      {
        break;
      }

      ++v27;
    }

    while (v27 != v28);
    v30 = *&buf[8];
    while (v27 != v30)
    {
      v31 = *v27++;
      v36 = 10;
      LODWORD(v37) = v31;
      *&v51 = &v36;
      v32 = sub_10031D3B0(this + 1088, &v36);
      *&v51 = &v37;
      *(sub_10030C46C((v32 + 5), &v37) + 8) = 6;
      v36 = 12;
      *&v51 = &v36;
      v33 = sub_10031D3B0(this + 1088, &v36);
      *&v51 = &v37;
      *(sub_10030C46C((v33 + 5), &v37) + 8) = 6;
      v36 = 11;
      *&v51 = &v36;
      v34 = sub_10031D3B0(this + 1088, &v36);
      *&v51 = &v37;
      *(sub_10030C46C((v34 + 5), &v37) + 8) = 6;
      v36 = 14;
      *&v51 = &v36;
      v35 = sub_10031D3B0(this + 1088, &v36);
      *&v51 = &v37;
      *(sub_10030C46C((v35 + 5), &v37) + 8) = 6;
      while (v27 != v28 && (v29(*v27) & 1) == 0)
      {
        ++v27;
      }
    }
  }
}

void sub_1004FE6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(v26 + 8);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::CellularPlanControllerPhone(uint64_t a1, NSObject **a2, void (****a3)(__int128 *__return_ptr))
{
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "cp.ctr.ph");
  sub_1001303E4((a1 + 8), a2, &v7);
  ctu::OsLogContext::~OsLogContext(&v7);
  (***a3)(&v6);
  operator new();
}

void sub_1004FEC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v26 = v23[35];
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = v23[33];
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = v23[31];
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = v23[29];
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = v23[27];
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = v23[25];
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = v23[23];
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = v23[21];
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = v23[19];
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = v23[17];
  if (v35)
  {
    sub_100004A34(v35);
  }

  v36 = v23[15];
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = v23[13];
  if (v37)
  {
    sub_100004A34(v37);
  }

  CellularPlanMultiplexerDelegate::~CellularPlanMultiplexerDelegate(v24);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  v38 = v23[6];
  v23[6] = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  ctu::OsLogLogger::~OsLogLogger((v23 + 5));
  sub_1000C0544(v23 + 1);
  _Unwind_Resume(a1);
}

void sub_1004FEE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1004FEE14);
}

void cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone(cellplan::CellularPlanControllerPhone *this)
{
  *this = off_101E533E8;
  *(this + 7) = off_101E53688;
  *(this + 8) = off_101E536B8;
  *(this + 9) = &off_101E53780;
  *(this + 10) = off_101E537C0;
  v2 = (this + 88);
  *(this + 11) = off_101E53840;
  v21 = (this + 1400);
  sub_100112048(&v21);
  if (*(this + 1391) < 0)
  {
    operator delete(*(this + 171));
  }

  if (*(this + 1351) < 0)
  {
    operator delete(*(this + 166));
  }

  if (*(this + 1288) == 1)
  {
    if (*(this + 1319) < 0)
    {
      operator delete(*(this + 162));
    }

    *(this + 1288) = 0;
  }

  if (*(this + 1256) == 1)
  {
    if (*(this + 1287) < 0)
    {
      operator delete(*(this + 158));
    }

    *(this + 1256) = 0;
  }

  if (*(this + 1255) < 0)
  {
    operator delete(*(this + 154));
  }

  v3 = *(this + 152);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(this + 1208) == 1)
  {
    if (*(this + 1207) < 0)
    {
      operator delete(*(this + 148));
    }

    sub_100005978(this + 147);
    sub_100005978(this + 146);
    if (*(this + 1159) < 0)
    {
      operator delete(*(this + 142));
    }

    if (*(this + 1135) < 0)
    {
      operator delete(*(this + 139));
    }
  }

  sub_1004EDBF8(this + 1088, *(this + 137));
  v4 = *(this + 135);
  if (v4)
  {
    _Block_release(v4);
  }

  sub_100077CD4(this + 1048, *(this + 132));
  v5 = *(this + 126);
  if (v5)
  {
    *(this + 127) = v5;
    operator delete(v5);
  }

  v6 = *(this + 125);
  *(this + 125) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(this + 999) < 0)
  {
    operator delete(*(this + 122));
  }

  sub_10006DCAC(this + 952, *(this + 120));
  sub_10006DCAC(this + 928, *(this + 117));
  v21 = (this + 896);
  sub_10032DC68(&v21);
  sub_100170380(this + 872, *(this + 110));
  sub_10013DF64(this + 848, *(this + 107));
  sub_10006DCAC(this + 824, *(this + 104));
  sub_10006DCAC(this + 800, *(this + 101));
  sub_1000EFBF0(this + 744);
  sub_100523A60(this + 712, *(this + 90));
  sub_10052085C(this + 568);
  v21 = (this + 544);
  sub_10052091C(&v21);
  sub_10027E6B0(this + 408);
  sub_100319DE8(this + 328);
  v21 = (this + 304);
  sub_1000B2AF8(&v21);
  v7 = *(this + 37);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 35);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 33);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 31);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(this + 29);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(this + 27);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(this + 25);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(this + 23);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(this + 21);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(this + 19);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(this + 17);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(this + 15);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(this + 13);
  if (v19)
  {
    sub_100004A34(v19);
  }

  CellularPlanMultiplexerDelegate::~CellularPlanMultiplexerDelegate(v2);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  v20 = *(this + 6);
  *(this + 6) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone(this);

  operator delete();
}

uint64_t sub_1004FF230(uint64_t a1)
{
  v3 = (a1 + 176);
  sub_100112048(&v3);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 64) = 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void non-virtual thunk tocellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone(cellplan::CellularPlanControllerPhone *this)
{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 56));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 64));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 72));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 80));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 88));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 56));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 64));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 72));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 80));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 88));

  operator delete();
}

void cellplan::CellularPlanControllerPhone::bootstrapService_sync(cellplan::CellularPlanControllerPhone *this)
{
  sub_100004AA0(&v3, this + 1);
  v1 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  sub_10000501C(&__p, "/cc/props/carrier_entitlements_info");
  operator new();
}

void sub_1004FF89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::handleSimUpdated_sync(uint64_t a1, _DWORD **a2)
{
  (***(a1 + 128))(&v39);
  v49 = v39;
  v39 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*(&v49 + 1))
  {
    sub_100004A34(*(&v49 + 1));
  }

  if (*(&v39 + 1))
  {
    sub_100004A34(*(&v39 + 1));
  }

  v4 = v32;
  v5 = v33;
  if (v32 != v33)
  {
    v6 = v34;
    do
    {
      if (v34(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v33);
    v7 = v33;
    if (v4 != v33)
    {
      v8 = 0;
      v9 = (a1 + 1056);
      while (1)
      {
        v31 = *v4;
        *v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        *v56 = 0u;
        *v53 = 0u;
        *v54 = 0u;
        memset(v52, 0, sizeof(v52));
        *v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        sub_100922C88(v31, (a1 + 304), &v49);
        *v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        *v46 = 0u;
        *v43 = 0u;
        *v44 = 0u;
        memset(v42, 0, sizeof(v42));
        *v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        sub_100922C88(v31, a2, &v39);
        if (v49 != 1 || (v39 & 1) == 0)
        {
          goto LABEL_65;
        }

        if (subscriber::isSimReady())
        {
          goto LABEL_45;
        }

        if ((v49 & 1) == 0)
        {
          goto LABEL_95;
        }

        if (!subscriber::isSimReady())
        {
LABEL_45:
          if (v49 != 1)
          {
LABEL_95:
            __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
          }

          v8 |= subscriber::isSimAbsent();
          goto LABEL_65;
        }

        *__p = 0u;
        v38 = 0u;
        cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(a1, v31, __p);
        if (LOBYTE(__p[0]) == 1)
        {
          break;
        }

LABEL_64:
        v8 = 1;
LABEL_65:
        if (v39 == 1)
        {
          if (SHIBYTE(v48) < 0)
          {
            operator delete(v47[1]);
          }

          if (SHIBYTE(v47[0]) < 0)
          {
            operator delete(v46[0]);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44[1]);
          }

          if (SHIBYTE(v44[0]) < 0)
          {
            operator delete(v43[0]);
          }

          __p[0] = v42;
          sub_100034D1C(__p);
          if (v40[1])
          {
            *&v41 = v40[1];
            operator delete(v40[1]);
          }
        }

        if (v49 == 1)
        {
          if (SHIBYTE(v58) < 0)
          {
            operator delete(v57[1]);
          }

          if (SHIBYTE(v57[0]) < 0)
          {
            operator delete(v56[0]);
          }

          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54[1]);
          }

          if (SHIBYTE(v54[0]) < 0)
          {
            operator delete(v53[0]);
          }

          *&v39 = v52;
          sub_100034D1C(&v39);
          if (v50[1])
          {
            *&v51 = v50[1];
            operator delete(v50[1]);
          }
        }

        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
        if (v4 == v7)
        {
          goto LABEL_92;
        }
      }

      v10 = *v9;
      if (*v9)
      {
        v11 = a1 + 1056;
        do
        {
          if (*(v10 + 32) >= v31)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * (*(v10 + 32) < v31));
        }

        while (v10);
        if (v11 != v9 && v31 >= *(v11 + 32))
        {
          *buf = &v31;
          v12 = sub_100170BC0(a1 + 1048, &v31);
          if ((__p[0] & 1) == 0)
          {
            __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
          }

          v13 = *(v12 + 63);
          if (v13 >= 0)
          {
            v14 = *(v12 + 63);
          }

          else
          {
            v14 = v12[6];
          }

          v15 = HIBYTE(v38);
          if (v38 < 0)
          {
            v15 = v38;
          }

          if (v14 == v15)
          {
            v16 = v13 >= 0 ? v12 + 5 : v12[5];
            v17 = v38 >= 0 ? &__p[1] : __p[1];
            if (!memcmp(v16, v17, v14))
            {
LABEL_62:
              if (SHIBYTE(v38) < 0)
              {
                operator delete(__p[1]);
              }

              goto LABEL_64;
            }
          }
        }
      }

      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I New sim swap in slot %s", buf, 0xCu);
      }

      (*(**(a1 + 128) + 680))(buf);
      v20 = (*(**buf + 72))(*buf, v31);
      *v35 = &v31;
      sub_1002B167C(a1 + 952, &v31)[5] = v20;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      memset(buf, 0, sizeof(buf));
      v21 = *(a1 + 360);
      if (*(a1 + 368) == v21 || *(a1 + 352) != 1)
      {
        if (*(a1 + 544) == *(a1 + 552))
        {
          goto LABEL_51;
        }
      }

      else
      {
        *buf = *(v21 + 16);
      }

      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Have a remote device paired", v35, 2u);
      }

      cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(a1, v31);
LABEL_51:
      v23 = *(a1 + 1000);
      if (v23)
      {
        (*(*v23 + 16))(v23);
        v24 = *(a1 + 1000);
        *(a1 + 1000) = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }

      if (*(a1 + 256))
      {
        v25 = *(a1 + 40);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_101772C84(&v29, v30, v25);
        }

        v26 = 328;
        if (*(a1 + 1224))
        {
          v26 = 1368;
        }

        v28 = (a1 + v26 + 32);
        v27 = *v28;
        if (v28[1] != *v28)
        {
          *buf = *(v27 + 16);
          (*(**(a1 + 256) + 144))(*(a1 + 256), buf);
        }
      }

      if ((__p[0] & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }
  }

  LOBYTE(v8) = 0;
LABEL_92:
  (*(**(a1 + 160) + 64))(*(a1 + 160), a1 + 304);
  cellplan::CellularPlanControllerPhone::updateRemoteSimSubscriptionInfo_sync(a1);
  if (v8)
  {
    (*(**(a1 + 96) + 16))(*(a1 + 96));
  }
}

void sub_100500000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53)
{
  if (a23 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  sub_1005032D8(&a30);
  sub_1005032D8(&a52);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::handleRemoteVinylInfoUpdated_sync(cellplan::CellularPlanControllerPhone *this, const RemoteVinylInfo *a2)
{
  if (RemoteVinylInfo::operator==())
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RemoteVinylInfo: No update", buf, 2u);
    }

    return;
  }

  v47 = 0uLL;
  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I RemoteVinylInfo: Updating", buf, 2u);
  }

  v6 = *(this + 32);
  if (*(this + 352))
  {
    if (v6)
    {
      v7 = *(this + 45);
      if (*(this + 46) != v7)
      {
        v47 = *(v7 + 16);
        v8 = (*(*v6 + 104))(v6);
        if (v8 != v47 || v9 != *(&v47 + 1))
        {
          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_101772CF8();
          }

          (*(**(this + 32) + 152))(*(this + 32));
        }
      }
    }
  }

  else
  {
    if (v6)
    {
      v11 = *(this + 45);
      if (*(this + 46) != v11)
      {
        v47 = *(v11 + 16);
        v12 = (*(*v6 + 104))(v6);
        if (v12 == v47 && v13 == *(&v47 + 1))
        {
          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_101772CC4();
          }

          (*(**(this + 32) + 144))(*(this + 32), &v47);
        }
      }
    }

    LODWORD(v41[0]) = 0;
    *&v40[0] = 0;
    memset(buf, 0, sizeof(buf));
    BYTE8(v40[0]) = 0;
    memset(v40 + 12, 0, 34);
    v15 = RemoteVinylInfo::operator==();
    v38.__r_.__value_.__r.__words[0] = &v40[1];
    sub_100112048(&v38);
    if (SBYTE7(v40[0]) < 0)
    {
      operator delete(*buf);
      if (!v15)
      {
        goto LABEL_34;
      }
    }

    else if (!v15)
    {
      goto LABEL_34;
    }

    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Detected all remote devices un-paired", buf, 2u);
    }

    v17 = *(this + 24);
    if (v17)
    {
      (*(*v17 + 40))(v17, 3, 10);
      (*(**(this + 24) + 40))(*(this + 24), 3, 12);
    }
  }

LABEL_34:
  memset(&v38, 0, sizeof(v38));
  cellplan::CellularPlanControllerPhone::getRemoteActiveIccid_sync((this + 328), &v38);
  size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    (*(**(this + 20) + 88))(*(this + 20), 1, &v38);
  }

  (*(**(this + 20) + 32))(*(this + 20), this + 328);
  cellplan::CellularPlanControllerPhone::updateDatabaseWithCurrentWatchInfo_sync(this);
  cellplan::CellularPlanControllerPhone::updateRemoteSimSubscriptionInfo_sync(this);
  v19 = a2[1].var0.__rep_.__l.__size_;
  v20 = *(&a2[1].var0.__rep_.__l + 2);
  if (v20 != v19 && a2[1].var0.__rep_.__s.__data_[0] == 1)
  {
    v47 = *(v19 + 16);
    v21 = *(this + 45);
    v22 = *(this + 46);
LABEL_82:
    v31 = *(v19 + 12) | &_mh_execute_header;
    goto LABEL_84;
  }

  v21 = *(this + 45);
  v22 = *(this + 46);
  if (v22 != v21 && *(this + 352) == 1)
  {
    v47 = *(v21 + 16);
    v23 = *(this + 5);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Detected a remote device paired", buf, 2u);
    }

    (*(**(this + 12) + 48))(*(this + 12));
    (***(this + 16))(&v34);
    *buf = v34;
    v34 = 0uLL;
    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*(&v34 + 1))
    {
      sub_100004A34(*(&v34 + 1));
    }

    v24 = v35;
    v25 = v36;
    if (v35 == v36)
    {
      goto LABEL_94;
    }

    v26 = v37;
    do
    {
      if (v26(*v24))
      {
        break;
      }

      ++v24;
    }

    while (v24 != v25);
    v27 = v36;
    while (1)
    {
      if (v24 == v27)
      {
        goto LABEL_94;
      }

      v28 = *v24;
      v29 = *(this + 24);
      if (v29)
      {
        v30 = (*(*v29 + 32))(v29, *v24, 10);
        (*(**(this + 24) + 32))(*(this + 24), v28, 12);
      }

      else
      {
        v30 = 6;
      }

      v46 = 0;
      v44 = 0u;
      *__p = 0u;
      *v42 = 0u;
      v43 = 0u;
      *v41 = 0u;
      memset(v40, 0, sizeof(v40));
      *buf = 0u;
      (*(**(this + 20) + 248))(buf);
      if (buf[0] == 1 && v30 == 2)
      {
        if (!*(this + 125) && v44 == 3)
        {
          cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(this, v28);
          if ((buf[0] & 1) == 0)
          {
            goto LABEL_78;
          }
        }
      }

      else if (!buf[0])
      {
        goto LABEL_78;
      }

      if (BYTE8(v44) == 1)
      {
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p[0]);
        }

        BYTE8(v44) = 0;
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[1]);
      }

      if (BYTE8(v40[2]) == 1)
      {
        if (SHIBYTE(v42[0]) < 0)
        {
          operator delete(v41[0]);
        }

        BYTE8(v40[2]) = 0;
      }

      if (BYTE8(v40[0]) == 1 && SBYTE7(v40[2]) < 0)
      {
        operator delete(*&v40[1]);
      }

      do
      {
LABEL_78:
        ++v24;
      }

      while (v24 != v25 && (v26(*v24) & 1) == 0);
    }
  }

  if (v20 != v19)
  {
    goto LABEL_82;
  }

  v31 = 0;
LABEL_84:
  if (v21 == v22)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(v21 + 12) | &_mh_execute_header;
  }

  if (HIDWORD(v31) != HIDWORD(v32) || !HIDWORD(v31))
  {
    if (HIDWORD(v31) != HIDWORD(v32))
    {
      goto LABEL_90;
    }

LABEL_92:
    v33 = (**(this + 12) + 16);
    goto LABEL_93;
  }

  if (v31 == v32)
  {
    goto LABEL_92;
  }

LABEL_90:
  v33 = (**(this + 12) + 48);
LABEL_93:
  (*v33)();
LABEL_94:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_10050080C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::handleRemoteDeviceIdentifiersUpdated_sync(cellplan::CellularPlanControllerPhone *this, const RemoteDeviceIdentifiers *a2)
{
  v3 = cellplan::RemoteDeviceIdentifiers::operator!=();
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = CSIBOOLAsString(v3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RemoteDeviceIdentifiers updated: %s", &v5, 0xCu);
  }

  if (v3)
  {
    cellplan::CellularPlanControllerPhone::updateDatabaseWithCurrentWatchInfo_sync(this);
  }
}

void cellplan::CellularPlanControllerPhone::handleFamilyDeviceInfosUpdated_sync(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 160) + 56))(*(a1 + 160), a1 + 544);
  v4 = *(a1 + 544);
  v5 = *(a1 + 552);
  v6 = 0x2E8BA2E8BA2E8BA3;
  if (v4 != v5)
  {
    v7 = (a1 + 1080);
    while (1)
    {
      v9 = *a2;
      v8 = a2[1];
      if (*a2 != v8)
      {
        while ((cellplan::RemoteProvisioningDeviceInfo::operator==() & 1) == 0)
        {
          v9 += 216;
          if (v9 == v8)
          {
            v9 = v8;
            break;
          }
        }

        v8 = a2[1];
      }

      if (v9 != v8)
      {
        goto LABEL_87;
      }

      v72 = 0uLL;
      v73 = 0;
      sub_10027E628(&v72, *(v4 + 176), *(v4 + 184), ((*(v4 + 184) - *(v4 + 176)) >> 3) * v6);
      if (v72 != *(&v72 + 1))
      {
        v10 = *(a1 + 256);
        if (v10)
        {
          if (*v7)
          {
            v71 = *(v72 + 16);
            *buf = (*(*v10 + 104))(v10);
            *&buf[8] = v11;
            v12 = *buf == v71 && v11 == *(&v71 + 1);
            if (v12)
            {
              if (*(&v72 + 1) == v72)
              {
                sub_1002030E0();
              }

              if (*(v72 + 80) == 1 && *(v72 + 56) != *(v72 + 64))
              {
                v49 = v7;
                v14 = *a2;
                v13 = a2[1];
                *v69 = v71;
                if (v14 != v13)
                {
                  do
                  {
                    memset(buf, 0, sizeof(buf));
                    *&v56 = 0;
                    sub_10027E628(buf, *(v14 + 176), *(v14 + 184), ((*(v14 + 184) - *(v14 + 176)) >> 3) * v6);
                    v15 = v6;
                    if (*buf == *&buf[8])
                    {
                      *&v50 = buf;
                      sub_100112048(&v50);
                    }

                    else
                    {
                      v17 = *(*buf + 16) != *v69 || *(*buf + 24) != *&v69[8];
                      *&v50 = buf;
                      sub_100112048(&v50);
                      if (!v17)
                      {
                        v6 = v15;
                        goto LABEL_33;
                      }
                    }

                    v14 += 216;
                    v6 = v15;
                  }

                  while (v14 != v13);
                  v14 = v13;
LABEL_33:
                  v13 = a2[1];
                }

                v12 = v14 == v13;
                v7 = v49;
                if (!v12)
                {
                  *v69 = 0u;
                  v70 = 0u;
                  v18 = *(v14 + 176);
                  if (*(v14 + 184) == v18)
                  {
                    sub_1002030E0();
                  }

                  sub_100112464(v69, v18 + 56);
                  if (BYTE8(v70) == 1)
                  {
                    if (*(&v72 + 1) == v72)
                    {
                      sub_1002030E0();
                    }

                    if (*(v72 + 64) - *(v72 + 56) <= *&v69[8] - *v69)
                    {
                      goto LABEL_51;
                    }
                  }

                  v19 = *(a1 + 40);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I leverage VinylInfoInd as fetch response", buf, 2u);
                  }

                  v20 = *(a1 + 160);
                  v21 = *(a1 + 1040);
                  v52 = 0;
                  __p = 0uLL;
                  v53[0] = 0;
                  v54 = 0;
                  sub_100520D38(buf, v21, &__p, v53, 0);
                  (*(*v20 + 96))(v20, 0, buf);
                  if (v68 == 1)
                  {
                    sub_100E3A5D4(v57);
                  }

                  if (SHIBYTE(v56) < 0)
                  {
                    operator delete(*&buf[8]);
                  }

                  if (v54 == 1)
                  {
                    sub_100E3A5D4(v53);
                  }

                  if (SHIBYTE(v52) < 0)
                  {
                    operator delete(__p);
                  }

                  *buf = 0;
                  if (*(&v72 + 1) == v72)
                  {
                    sub_1002030E0();
                  }

                  sub_1005027A0(v49, buf, v72);
                  if (BYTE8(v70))
                  {
LABEL_51:
                    *buf = v69;
                    sub_100112120(buf);
                  }
                }
              }
            }
          }
        }
      }

      if (*v4 == 1)
      {
        break;
      }

LABEL_67:
      v66 = 0u;
      v67 = 0u;
      *v64 = 0u;
      memset(v65, 0, sizeof(v65));
      v62 = 0u;
      *v63 = 0u;
      v60 = 0u;
      *v61 = 0u;
      v58 = 0u;
      *v59 = 0u;
      v56 = 0u;
      *v57 = 0u;
      *buf = 0u;
      cellplan::RemoteDeviceIdentifiers::operator=();
      std::string::operator=(&v65[1], (v4 + 144));
      v65[4] = *(v4 + 168);
      if (&v65[1] != (v4 + 144))
      {
        sub_100169D44(&v65[5], *(v4 + 176), *(v4 + 184), ((*(v4 + 184) - *(v4 + 176)) >> 3) * v6);
      }

      v27 = *(v4 + 200);
      DWORD2(v67) = *(v4 + 208);
      *&v67 = v27;
      (*(**(a1 + 176) + 32))(*(a1 + 176), buf);
      *v69 = &v65[5];
      sub_100112048(v69);
      if (SHIBYTE(v65[3]) < 0)
      {
        operator delete(v65[1]);
      }

      if (SHIBYTE(v64[0]) < 0)
      {
        operator delete(v63[0]);
      }

      if (BYTE8(v60) == 1)
      {
        if (SBYTE7(v62) < 0)
        {
          operator delete(v61[0]);
        }

        BYTE8(v60) = 0;
      }

      if (BYTE8(v58) == 1)
      {
        if (SBYTE7(v60) < 0)
        {
          operator delete(v59[0]);
        }

        BYTE8(v58) = 0;
      }

      if (SBYTE7(v58) < 0)
      {
        operator delete(v57[0]);
      }

      if (buf[0] == 1 && SHIBYTE(v56) < 0)
      {
        operator delete(*&buf[8]);
      }

      *buf = &v72;
      sub_100112048(buf);
LABEL_87:
      v4 += 216;
      if (v4 == v5)
      {
        goto LABEL_88;
      }
    }

    if (v8 == a2[1])
    {
      goto LABEL_63;
    }

    v22 = *(v9 + 176);
    if (v22 == *(v9 + 184))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 12) | &_mh_execute_header;
    }

    v24 = *(v4 + 176);
    if (v24 == *(v4 + 184))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v24 + 12) | &_mh_execute_header;
    }

    if (HIDWORD(v23) == HIDWORD(v25) && HIDWORD(v23))
    {
      if (v23 != v25)
      {
LABEL_63:
        v26 = (**(a1 + 96) + 48);
LABEL_66:
        (*v26)();
        goto LABEL_67;
      }
    }

    else if (HIDWORD(v23) != HIDWORD(v25))
    {
      goto LABEL_63;
    }

    v26 = (**(a1 + 96) + 16);
    goto LABEL_66;
  }

LABEL_88:
  if (*a2 != a2[1] && *(a1 + 544) == *(a1 + 552))
  {
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Detected all altAccount devices un-paired", buf, 2u);
    }

    v29 = *(a1 + 192);
    if (v29)
    {
      (*(*v29 + 40))(v29, 3, 11);
      (*(**(a1 + 192) + 40))(*(a1 + 192), 3, 14);
    }
  }

  v30 = *(a1 + 544);
  v31 = *(a1 + 552);
  if (v30 != v31)
  {
    while ((*v30 & 1) == 0)
    {
      v30 += 216;
      if (v30 == v31)
      {
        goto LABEL_101;
      }
    }
  }

  if (v30 == v31)
  {
LABEL_101:
    buf[0] = 0;
    LOBYTE(v59[0]) = 0;
    LOBYTE(v61[0]) = 0;
    LOBYTE(v63[1]) = 0;
    LODWORD(v66) = 0;
    v56 = 0uLL;
    *&buf[8] = 0;
    LOBYTE(v57[0]) = 0;
    v62 = 0uLL;
    v61[1] = 0;
    LOBYTE(v63[0]) = 0;
    v64[1] = 0;
    v65[0] = 0;
    v64[0] = 0;
    LOBYTE(v65[1]) = 0;
    memset(&v65[1] + 4, 0, 34);
    *(a1 + 1224) = 0;
    cellplan::RemoteDeviceIdentifiers::operator=();
    v33 = (a1 + 1368);
    if (*(a1 + 1391) < 0)
    {
      operator delete(*v33);
    }

    *v33 = *v64;
    *(a1 + 1384) = v65[0];
    HIBYTE(v65[0]) = 0;
    LOBYTE(v64[0]) = 0;
    *(a1 + 1392) = v65[1];
    sub_100169EC0((a1 + 1400));
    *(a1 + 1400) = *&v65[2];
    *(a1 + 1416) = v65[4];
    memset(&v65[2], 0, 24);
    *(a1 + 1424) = v65[5];
    *(a1 + 1432) = v66;
    *v69 = &v65[2];
  }

  else
  {
    *&v66 = 0;
    *v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v62 = 0u;
    *v63 = 0u;
    v60 = 0u;
    *v61 = 0u;
    v58 = 0u;
    *v59 = 0u;
    v56 = 0u;
    *v57 = 0u;
    v32 = *(a1 + 1224);
    *buf = 0u;
    buf[0] = v32;
    sub_10027E51C(&buf[8], (a1 + 1232));
    if (*(a1 + 1391) < 0)
    {
      sub_100005F2C(v64, *(a1 + 1368), *(a1 + 1376));
    }

    else
    {
      *v64 = *(a1 + 1368);
      v65[0] = *(a1 + 1384);
    }

    v65[1] = *(a1 + 1392);
    memset(&v65[2], 0, 24);
    sub_10027E628(&v65[2], *(a1 + 1400), *(a1 + 1408), ((*(a1 + 1408) - *(a1 + 1400)) >> 3) * v6);
    v65[5] = *(a1 + 1424);
    LODWORD(v66) = *(a1 + 1432);
    *(a1 + 1224) = *v30;
    cellplan::RemoteDeviceIdentifiers::operator=();
    std::string::operator=((a1 + 1368), (v30 + 144));
    *(a1 + 1392) = *(v30 + 168);
    if (a1 + 1224 != v30)
    {
      sub_100169D44(a1 + 1400, *(v30 + 176), *(v30 + 184), ((*(v30 + 184) - *(v30 + 176)) >> 3) * v6);
    }

    v34 = *(v30 + 200);
    *(a1 + 1432) = *(v30 + 208);
    *(a1 + 1424) = v34;
    v72 = 0uLL;
    v35 = *(v30 + 176);
    if (*(v30 + 184) == v35)
    {
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#E Cannot find EID", v69, 2u);
      }
    }

    else
    {
      v72 = *(v35 + 16);
      v36 = *(a1 + 256);
      if (v36)
      {
        v37 = (*(*v36 + 104))(v36);
        if (v37 != v72 || v38 != *(&v72 + 1))
        {
          v40 = *(a1 + 40);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Switched to a different gizmo while provisioning ongoing", v69, 2u);
          }

          (*(**(a1 + 256) + 152))(*(a1 + 256));
        }
      }
    }

    if ((v65[1] & 1) == 0 && *(a1 + 1392) == 1)
    {
      v42 = *(a1 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Detected an altAccount device being switched", v69, 2u);
      }

      (***(a1 + 128))(&v50);
      v71 = v50;
      v50 = 0uLL;
      subscriber::makeSimSlotRange();
      if (*(&v71 + 1))
      {
        sub_100004A34(*(&v71 + 1));
      }

      if (*(&v50 + 1))
      {
        sub_100004A34(*(&v50 + 1));
      }

      v43 = *v69;
      v44 = *&v69[8];
      if (*v69 != *&v69[8])
      {
        v45 = v70;
        do
        {
          if (v45(*v43))
          {
            break;
          }

          ++v43;
        }

        while (v43 != v44);
        v46 = *&v69[8];
        while (v43 != v46)
        {
          v47 = *(a1 + 192);
          if (v47)
          {
            v48 = *v43;
            (*(*v47 + 32))(v47, v48, 11);
            (*(**(a1 + 192) + 32))(*(a1 + 192), v48, 14);
          }

          do
          {
            ++v43;
          }

          while (v43 != v44 && (v45(*v43) & 1) == 0);
        }
      }

      cellplan::CellularPlanControllerPhone::checkSubscription_sync(a1, 1);
    }

    *v69 = &v65[2];
  }

  sub_100112048(v69);
  if (SHIBYTE(v65[0]) < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[1]);
  }

  if (LOBYTE(v59[0]) == 1)
  {
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[1]);
    }

    LOBYTE(v59[0]) = 0;
  }

  if (LOBYTE(v57[0]) == 1)
  {
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[1]);
    }

    LOBYTE(v57[0]) = 0;
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_100501528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (*(v47 - 152) == 1)
  {
    a47 = v47 - 176;
    sub_100112120(&a47);
  }

  *(v47 - 144) = v47 - 128;
  sub_100112048((v47 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_10050167C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100525524(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1005016E0(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/regulatory_restriction_active");
  v4[0] = off_101E54750;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005017C0(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/airplane_mode");
  v4[0] = off_101E547D0;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005018A0(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/cellular_data_setting");
  v4[0] = off_101E54850;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleCarrierBundleChange_sync(uint64_t this)
{
  if (*(this + 744) - 1 <= 2)
  {
    return (*(**(this + 96) + 16))();
  }

  return this;
}

void sub_1005019BC(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/in_home_countries");
  v4[0] = off_101E54950;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleActivePairedDeviceInfoUpdated_sync(uint64_t this)
{
  if (*(this + 1208) != 1)
  {
    return this;
  }

  v1 = this;
  this = rest::PairedDeviceInfoList::isAnyDeviceInState();
  if (this)
  {
    return this;
  }

  (***(v1 + 128))(&v12);
  ServiceMap = Registry::getServiceMap(v12);
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_10:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_11:
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v10)
  {
    (*(*v10 + 16))(v10, v1 + 1112);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return sub_100503374(v1 + 1112);
}

void sub_100501C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100501C30(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
  v4[0] = off_101E54A50;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::handleDumpState_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    (*(*v2 + 192))(v2);
  }

  (*(**(this + 20) + 296))(*(this + 20));
  v3 = *(this + 32);
  if (v3)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = (*(*v3 + 104))(v3);
      v10[1] = v5;
      (*(**(this + 32) + 104))(*(this + 32));
      ctu::hex(__p, v10, 0x10, v6);
      v7 = v12 >= 0 ? __p : *__p;
      *buf = 136315138;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Provisioning in flight for (%s)", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (*(this + 1208) == 1)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (this + 1112);
      if (*(this + 1135) < 0)
      {
        v9 = *v9;
      }

      *__p = 136315138;
      *&__p[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Suppressing until ready Notification: (%s)", __p, 0xCu);
    }
  }
}

uint64_t cellplan::CellularPlanControllerPhone::shutdownService_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 18) + 32))(*(this + 18));

  return ctu::RestModule::disconnect((this + 288));
}

void cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForEid_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a2 == 0)
  {
    goto LABEL_17;
  }

  v28 = 0uLL;
  v4 = *(a1 + 360);
  if (*(a1 + 368) != v4)
  {
    v28 = *(v4 + 16);
  }

  if (v28 != *a2 || *(&v28 + 1) != *(a2 + 8))
  {
    v6 = *(a1 + 544);
    v7 = *(a1 + 552);
    if (v6 != v7)
    {
      v8 = v6 + 144;
      while (1)
      {
        v9 = *(v8 + 32);
        if (*(v8 + 40) != v9)
        {
          v28 = *(v9 + 16);
        }

        if (v28 == *a2 && *(&v28 + 1) == *(a2 + 8))
        {
          break;
        }

        v11 = v8 + 72;
        v8 += 216;
        if (v11 == v7)
        {
          goto LABEL_17;
        }
      }

      v12 = 1;
      sub_100520A6C(v14, &v12, v8, (v8 - 136));
      sub_100520B54(a3, v14);
      goto LABEL_20;
    }

LABEL_17:
    *a3 = 0;
    a3[8] = 0;
    a3[88] = 0;
    return;
  }

  v12 = 0;
  sub_100520A6C(v14, &v12, (a1 + 328), (a1 + 408));
  sub_100520B54(a3, v14);
LABEL_20:
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v23 == 1)
  {
    if (v25 < 0)
    {
      operator delete(v24);
    }

    v23 = 0;
  }

  if (v20 == 1)
  {
    if (v22 < 0)
    {
      operator delete(__p);
    }

    v20 = 0;
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  v13 = &v17;
  sub_100112048(&v13);
  if (v16 < 0)
  {
    operator delete(v15);
  }
}

void sub_100502128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100502148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100502148(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    *(a1 + 136) = 0;
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    *(a1 + 104) = 0;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v3 = (a1 + 40);
  sub_100112048(&v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::updateDatabaseWithCurrentWatchInfo_sync(cellplan::CellularPlanControllerPhone *this)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  __p = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  *v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  *v9 = 0u;
  (*(**(this + 20) + 208))(&v8);
  if (v8 != 1 || *(this + 432) != 1)
  {
    goto LABEL_42;
  }

  if ((SBYTE7(v20) & 0x80u) == 0)
  {
    v2 = BYTE7(v20);
  }

  else
  {
    v2 = *(&__p + 1);
  }

  v3 = *(this + 431);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(this + 52);
  }

  if (v2 == v3 && ((SBYTE7(v20) & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), v4 >= 0 ? (v6 = this + 408) : (v6 = *(this + 51)), !memcmp(p_p, v6, v2)))
  {
    cellplan::RemoteDeviceIdentifiers::operator=();
    if ((v8 & 1) == 0)
    {
      __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
    }

    (*(**(this + 22) + 32))(*(this + 22), &v8 + 8);
  }

  else
  {
LABEL_42:
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101772D2C();
    }
  }

  if (v8 == 1)
  {
    v7 = v21;
    sub_100112048(&v7);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(*(&v16 + 1));
    }

    if (LOBYTE(v14[0]) == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[1]);
      }

      LOBYTE(v14[0]) = 0;
    }

    if (LOBYTE(v12[0]) == 1)
    {
      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12[1]);
      }

      LOBYTE(v12[0]) = 0;
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[1]);
    }

    if (BYTE8(v8) == 1 && SHIBYTE(v10[0]) < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void cellplan::CellularPlanControllerPhone::getRemoteActiveIccid_sync(const RemoteVinylInfo *a1@<X1>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  size = a1[1].var0.__rep_.__l.__size_;
  if (size != *(&a1[1].var0.__rep_.__l + 2))
  {
    v6 = 0u;
    v7 = 0u;
    sub_100112464(&v6, size + 56);
    if (BYTE8(v7) == 1)
    {
      v5 = v6;
      if (v6 != *(&v6 + 1))
      {
        while ((*(v5 + 90) & 1) == 0)
        {
          v5 += 216;
          if (v5 == *(&v6 + 1))
          {
            goto LABEL_9;
          }
        }
      }

      if (v5 == *(&v6 + 1) || (std::string::operator=(a2, (v5 + 16)), (BYTE8(v7) & 1) != 0))
      {
LABEL_9:
        v8 = &v6;
        sub_100112120(&v8);
      }
    }
  }
}

void sub_100502518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    *(v13 - 24) = &a9;
    sub_100112120((v13 - 24));
  }

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::updateRemoteSimSubscriptionInfo_sync(cellplan::CellularPlanControllerPhone *this)
{
  memset(v3, 0, sizeof(v3));
  if (*(this + 600) == 1)
  {
    sub_100523744(v3, this + 38);
  }

  memset(v2, 0, sizeof(v2));
  (*(**(this + 20) + 216))(v2);
  sub_1005207F4(this + 568, v2);
  sub_100220B4C(v2);
  sub_100220B4C(v3);
}

void cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(uint64_t a1, int a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100502D80;
  v5[3] = &unk_101E53898;
  v5[4] = a1;
  v4 = _Block_copy(v5);
  v6 = v4;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, a2, 0, 1, &v6);
  if (v4)
  {
    _Block_release(v4);
  }
}

void sub_100502738(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100502758(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    sub_100E3A5D4(a1 + 32);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1005027A0(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  sub_100F11B6C(&v7, a3);
  v6[0] = 1;
  (*(v3 + 16))(v3, v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100502868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::checkSubscription_sync(cellplan::CellularPlanControllerPhone *this, char a2)
{
  v4 = _Block_copy(&stru_101E54170);
  v5 = v4;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(this, 3, 0, a2, &v5);
  if (v4)
  {
    _Block_release(v4);
  }
}

void sub_1005028F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(uint64_t a1, int a2, unsigned int a3, char a4, void **a5)
{
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2000000000;
  v34 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x4002000000;
  v30[3] = sub_100513D4C;
  v32[0] = 0;
  v32[1] = 0;
  v30[4] = sub_100513D88;
  v31 = v32;
  (***(a1 + 128))(buf);
  *__p = *buf;
  memset(buf, 0, sizeof(buf));
  subscriber::makeSimSlotRange();
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v7 = v27;
  v8 = v28;
  if (v27 != v28)
  {
    v9 = v29;
    do
    {
      if (v29(*v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v28);
    v10 = v28;
    if (v7 != v28)
    {
      v11 = 0;
      do
      {
        v12 = *v7;
        __p[0] = 0;
        __p[1] = 0;
        v26 = 0;
        if (a2 != 3)
        {
          (*(**(a1 + 160) + 280))(buf);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          v26 = v36;
          *__p = *buf;
          if (SHIBYTE(v36) < 0)
          {
            if (__p[1] != 32)
            {
              *__p[0] = 0;
              __p[1] = 0;
              goto LABEL_24;
            }

            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = __p[0];
              goto LABEL_21;
            }
          }

          else
          {
            if (SHIBYTE(v36) != 32)
            {
              LOBYTE(__p[0]) = 0;
              HIBYTE(v26) = 0;
              goto LABEL_24;
            }

            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = __p;
LABEL_21:
              *buf = 136315138;
              *&buf[4] = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Pending subscription device id (%s)", buf, 0xCu);
            }
          }
        }

LABEL_24:
        ++v11;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_100514CD8;
        aBlock[3] = &unk_101E53EA8;
        v22 = v12;
        aBlock[4] = v30;
        aBlock[5] = v33;
        aBlock[6] = a1;
        v23 = v11;
        v15 = *a5;
        if (*a5)
        {
          v15 = _Block_copy(v15);
        }

        v21 = v15;
        v16 = _Block_copy(aBlock);
        v24 = v16;
        cellplan::CellularPlanControllerPhone::getSubscriptionInfoPerSlot(a1, v12, a3, a4, __p, &v24);
        if (v16)
        {
          _Block_release(v16);
        }

        if (v21)
        {
          _Block_release(v21);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        do
        {
          ++v7;
        }

        while (v7 != v8 && (v9(*v7) & 1) == 0);
      }

      while (v7 != v10);
    }
  }

  _Block_object_dispose(v30, 8);
  sub_10052BF90(&v31, v32[0]);
  _Block_object_dispose(v33, 8);
}

void sub_100502CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char *a38)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  v40 = *(v38 - 136);
  if (v40)
  {
    sub_100004A34(v40);
  }

  _Block_object_dispose(&a32, 8);
  sub_10052BF90(&a37, a38);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100502D80(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    v3 = *(result + 32);
    do
    {
      if (*(v2 + 10) == 2)
      {
        v4 = *(v3 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v8 = subscriber::asString();
          v9 = *(v2 + 10);
          *buf = 136315394;
          v11 = v8;
          v12 = 1024;
          v13 = v9;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Done getSIMStatusOnDeviceOr4FFChange for slot %s: %d", buf, 0x12u);
        }

        sub_100502F4C(v3 + 8, &event::entitlements::refreshEntitlementCache, cellplan::CellularPlanControllerPhone::handleRefreshEntitlementCache, 0);
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != a2 + 1);
  }

  return result;
}

void sub_100502F4C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1005269F4;
  aBlock[3] = &unk_101E54B40;
  aBlock[4] = a1;
  aBlock[5] = a3;
  aBlock[6] = a4;
  v8 = _Block_copy(aBlock);
  sub_100004AA0(&v6, a1);
  sub_100526A40(a2, &v6, *(a1 + 16), &v8);
}

void cellplan::CellularPlanControllerPhone::handleRefreshEntitlementCache(uint64_t a1)
{
  (***(a1 + 128))(&v7);
  v8 = v7;
  v7 = 0uLL;
  v2 = SlotIdFromPersonalityId();
  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1005034F0;
  aBlock[3] = &unk_101E538B8;
  aBlock[4] = a1;
  v5 = v2;
  v3 = _Block_copy(aBlock);
  v6 = v3;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v2, 0, 0, &v6);
  if (v3)
  {
    _Block_release(v3);
  }
}

void sub_100503140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    _Block_release(v18);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = 0u;
  *v7 = 0u;
  sub_100922C88(a2, (a1 + 304), &v6);
  if (v6 == 1)
  {
    v4 = HIBYTE(v11[0]);
    if (SHIBYTE(v11[0]) < 0)
    {
      v4 = v10[1];
    }

    if (!v4 || (sub_10016C728(a3, v10), (v6 & 1) != 0))
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*(&v14 + 1));
      }

      if (SBYTE7(v14) < 0)
      {
        operator delete(v13);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[1]);
      }

      if (SHIBYTE(v11[0]) < 0)
      {
        operator delete(v10[0]);
      }

      v5 = v9;
      sub_100034D1C(&v5);
      if (v7[1])
      {
        *&v8 = v7[1];
        operator delete(v7[1]);
      }
    }
  }
}

void sub_1005032AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005032D8(va);
  if (*v3)
  {
    sub_101772D60();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005032D8(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    v4 = (a1 + 48);
    sub_100034D1C(&v4);
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100503374(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    sub_100005978((a1 + 64));
    sub_100005978((a1 + 56));
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 96) = 0;
  }

  return a1;
}

uint64_t cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = *(this + 28);
  if (!v2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  (*(*v2 + 16))(&v7);
  if (v7)
  {
    if ((*(*v7 + 16))(v7, 1))
    {
      v3 = 1;
      goto LABEL_9;
    }

    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device passcode is not enabled", v6, 2u);
    }
  }

  v3 = 0;
LABEL_9:
  if (v8)
  {
    sub_100004A34(v8);
  }

  return v3;
}

void sub_1005034D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005034F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 + 8;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = (a1 + 40);
  v6 = *(a1 + 40);
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 != v3 && v6 >= *(v7 + 32))
  {
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 40);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleRefreshEntitlementCache, rsp: %d", buf, 8u);
    }

    v10 = *(v7 + 40);
    if (v10 <= 3 && v10 != 2)
    {
      *buf = v5;
      v12 = sub_1005268B8(v2 + 712, v5);
      sub_1001039A0(v12 + 5);
    }
  }

  else
  {
LABEL_20:
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101772D90();
    }
  }
}

uint64_t *cellplan::CellularPlanControllerPhone::handleEntitlementChanged(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 10, a3, a4);
  cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 12, a3, a4);
  cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 11, a3, a4);

  return cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 14, a3, a4);
}

uint64_t *cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v36 = a3;
  v37 = a2;
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (((*a4 >> a3) & 1) == 0)
  {
    v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = sub_10006EE44(a3);
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s entitlement not supported", buf, 0xCu);
    }

    *buf = &v36;
    v22 = sub_10031D3B0(a1 + 1088, &v36);
    *buf = &v37;
    result = sub_10030C46C((v22 + 5), &v37);
    v23 = 6;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sub_10006EE44(a3);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s entitlement supported", buf, 0xCu);
  }

  v15 = *(a5 + 8);
  v14 = a5 + 8;
  v13 = v15;
  if (v15)
  {
    v16 = v14;
    do
    {
      if (*(v13 + 28) >= v36)
      {
        v16 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 28) < v36));
    }

    while (v13);
    if (v16 != v14 && v36 >= *(v16 + 28))
    {
      v24 = *(v16 + 32);
      if (v24 != 4)
      {
        *buf = &v36;
        v28 = sub_10031D3B0(a1 + 1088, &v36);
        *buf = &v37;
        result = sub_10030C46C((v28 + 5), &v37);
        if (*(result + 8) != v24)
        {
          v29 = *v11;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = sub_10006EE44(v36);
            *buf = &v36;
            v31 = sub_10031D3B0(a1 + 1088, &v36);
            *buf = &v37;
            v32 = sub_10030C46C((v31 + 5), &v37);
            v33 = sub_100A38E08(*(v32 + 8));
            v34 = sub_100A38E08(v24);
            *buf = 136315650;
            *&buf[4] = v30;
            v39 = 2080;
            v40 = v33;
            v41 = 2080;
            v42 = v34;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s from [%s] to [%s]", buf, 0x20u);
          }

          *buf = &v36;
          v35 = sub_10031D3B0(a1 + 1088, &v36);
          *buf = &v37;
          result = sub_10030C46C((v35 + 5), &v37);
          *(result + 8) = v24;
          if ((v36 & 0xFFFFFFFE) == 0xA)
          {
            if (v24 == 2)
            {
              cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(a1, v37);
            }

            return (*(**(a1 + 96) + 16))(*(a1 + 96));
          }
        }

        return result;
      }

      v25 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_10006EE44(v36);
        *buf = 136315138;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s set to requested, ignore ...", buf, 0xCu);
      }

      *buf = &v36;
      v27 = sub_10031D3B0(a1 + 1088, &v36);
      *buf = &v37;
      result = sub_10030C46C((v27 + 5), &v37);
      v23 = 4;
LABEL_19:
      *(result + 8) = v23;
      return result;
    }
  }

  v17 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_10006EE44(v36);
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s is not tracked", buf, 0xCu);
  }

  *buf = &v36;
  v19 = sub_10031D3B0(a1 + 1088, &v36);
  *buf = &v37;
  result = sub_10030C46C((v19 + 5), &v37);
  *(result + 8) = 6;
  if (v36 > 11)
  {
    if (v36 == 14)
    {
      goto LABEL_26;
    }

    if (v36 != 12)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v36 == 10)
  {
LABEL_22:
    if (*(a1 + 368) != *(a1 + 360) && *(a1 + 352) == 1)
    {
      result = *(a1 + 192);
      if (result)
      {
        return (*(*result + 32))(result, v37);
      }
    }
  }

  if (v36 != 11)
  {
    return result;
  }

LABEL_26:
  if (*(a1 + 544) != *(a1 + 552))
  {
    result = *(a1 + 192);
    if (result)
    {
      return (*(*result + 32))(result, v37);
    }
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::getRemoteIccidsForSignup_sync(uint64_t a1, unsigned int a2, uint64_t *a3, void *a4)
{
  v5 = *a3;
  if (a3[1] == *a3)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101772DC4();
    }
  }

  else if (*(v5 + 80) == 1 && *(v5 + 56) != *(v5 + 64))
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    (*(**(a1 + 128) + 680))(v26);
    (*(*v26[0] + 56))(&v39);
    if (v26[1])
    {
      sub_100004A34(v26[1]);
    }

    if (v39 != v40)
    {
      v8 = *a3;
      if (a3[1] == *a3)
      {
        sub_1002030E0();
      }

      if ((*(v8 + 80) & 1) == 0)
      {
        sub_1000D1644();
      }

      v9 = *(v8 + 56);
      for (i = *(v8 + 64); v9 != i; v9 += 216)
      {
        v38 = 0;
        *__p = 0u;
        v37 = 0u;
        *v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        *v33 = 0u;
        *v30 = 0u;
        *v31 = 0u;
        *v28 = 0u;
        v29 = 0u;
        *v26 = 0u;
        v27 = 0u;
        v11 = (v9 + 16);
        (*(**(a1 + 160) + 120))(v26);
        if (v38 != 1 || BYTE8(v29) != 5)
        {
          goto LABEL_15;
        }

        (*(**(a1 + 128) + 680))(&buf);
        v12 = (*(*buf + 160))(buf, a2);
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if ((v12 & 1) == 0)
        {
          v22 = *(a1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v9 + 39) < 0)
            {
              v11 = *v11;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v11;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Skipping unusable plan (%s) in signup request", &buf, 0xCu);
          }
        }

        else
        {
LABEL_15:
          v14 = v39;
          v13 = v40;
          if (v39 != v40)
          {
            v15 = *(v9 + 39);
            while (1)
            {
              v16 = *(v14 + 23);
              v17 = v16 < 0 ? *(v14 + 8) : *(v14 + 23);
              if ((v15 & 0x80) != 0)
              {
                if (v17 == -1)
                {
LABEL_67:
                  sub_10013C334();
                }

                v19 = *(v9 + 16);
                v18 = *(v9 + 24) >= v17 ? v17 : *(v9 + 24);
              }

              else
              {
                if (v17 == -1)
                {
                  goto LABEL_67;
                }

                v18 = v15 >= v17 ? v17 : v15;
                v19 = (v9 + 16);
              }

              v20 = v16 >= 0 ? v14 : *v14;
              if (!memcmp(v19, v20, v18) && v18 == v17)
              {
                break;
              }

              v14 += 24;
              if (v14 == v13)
              {
                goto LABEL_47;
              }
            }

            v23 = a4[1];
            if (v23 >= a4[2])
            {
              v24 = sub_1000053A0(a4, (v9 + 16));
            }

            else
            {
              sub_10011C7A4(a4, (v9 + 16));
              v24 = v23 + 24;
            }

            a4[1] = v24;
          }
        }

LABEL_47:
        if (v38 == 1)
        {
          if (SBYTE7(v37) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[1]);
          }

          if (SHIBYTE(v34[0]) < 0)
          {
            operator delete(v33[0]);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[1]);
          }

          if (SHIBYTE(v31[0]) < 0)
          {
            operator delete(v30[0]);
          }

          if (SBYTE7(v29) < 0)
          {
            operator delete(v28[0]);
          }

          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[1]);
          }
        }
      }
    }

    v26[0] = &v39;
    sub_1000087B4(v26);
  }
}

void sub_1005040A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10050411C(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_1000053A0(a1, a2);
  }

  else
  {
    sub_10011C7A4(a1, a2);
    v4 = v3 + 24;
  }

  a1[1] = v4;
  return v4 - 24;
}

void cellplan::CellularPlanControllerPhone::fetchProfile_sync(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = *a4;
  if (*a4)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a1 + 1080);
  *(a1 + 1080) = v5;
  if (v6)
  {
    _Block_release(v6);
  }

  sub_100527954();
}

void sub_1005042E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100504318(void *result, char *a2)
{
  if (*a2 == 1)
  {
    v3 = result;
    v4 = result[4];
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a2[100];
      v7 = a2[99];
      *buf = 67109376;
      *&buf[4] = v6;
      LOWORD(__p) = 1024;
      *(&__p + 2) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I have new profile Disable [%d] Delete [%d]", buf, 0xEu);
      v8 = *a2;
      v9 = *(v4 + 160);
      v10 = *(v4 + 1040);
      v12 = 0;
      v11 = 0uLL;
      if ((v8 & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }
    }

    else
    {
      v9 = *(v4 + 160);
      v10 = *(v4 + 1040);
      v12 = 0;
      v11 = 0uLL;
    }

    sub_100F11F00(v13, (a2 + 8));
    v14 = 1;
    sub_100520D38(buf, v10, &v11, v13, 0);
    (*(*v9 + 96))(v9, 1, buf);
    if (v18[216] == 1)
    {
      sub_100E3A5D4(v18);
    }

    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v14 == 1)
    {
      sub_100E3A5D4(v13);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11);
    }

    if ((*a2 & 1) == 0)
    {
      sub_10176B810();
    }

    if ((a2[100] & 1) != 0 || a2[99] == 1)
    {
      *buf = 0;
      __p = 0;
      (*(**(v4 + 96) + 64))(buf);
      if (*buf)
      {
        (*(**buf + 120))(*buf);
      }

      if (__p)
      {
        sub_100004A34(__p);
      }
    }

    result = *(v4 + 256);
    if (result)
    {
      if ((*a2 & 1) == 0)
      {
        sub_10176B810();
      }

      return (*(*result + 80))(result, v3 + 5, a2 + 8);
    }
  }

  return result;
}

void sub_1005045B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    sub_100004A34(a48);
  }

  _Unwind_Resume(exception_object);
}

void sub_100504618(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (*(v3 + 1080))
  {
    v6 = *(v3 + 160);
    v7 = *(v3 + 1040);
    v30 = 0;
    v29 = 0uLL;
    v37[0] = 0;
    v38 = 0;
    sub_100520D38(buf, v7, &v29, v37, 0);
    (*(*v6 + 96))(v6, 0, buf);
    if (v43[192] == 1)
    {
      sub_100E3A5D4(&v41);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(buf[1]);
    }

    if (v38 == 1)
    {
      sub_100E3A5D4(v37);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (*a3 != 1)
    {
      goto LABEL_42;
    }

    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    *__dst = 0u;
    v33 = 0u;
    v8 = 328;
    if (*(v3 + 1224))
    {
      v8 = 1368;
    }

    v9 = (v3 + v8);
    if (*(v3 + v8 + 23) < 0)
    {
      sub_100005F2C(__dst, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      *&v33 = *(v9 + 2);
      *__dst = v10;
    }

    *(&v33 + 1) = *(v9 + 3);
    v34 = 0uLL;
    *&v35 = 0;
    sub_10027E628(&v34, *(v9 + 4), *(v9 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v9 + 5) - *(v9 + 4)) >> 3));
    v12 = *(v9 + 7);
    LODWORD(v36) = *(v9 + 16);
    *(&v35 + 1) = v12;
    if (*a3)
    {
      v14 = *(&v34 + 1);
      v13 = v34;
      v44 = *(a3 + 24);
      if (v34 != *(&v34 + 1))
      {
        while (1)
        {
          sub_100F11B6C(buf, v13);
          v16 = buf[2] != v44 || v40 != *(&v44 + 1);
          if (v43[24] == 1)
          {
            v31 = v43;
            sub_100112120(&v31);
          }

          if (v42 < 0)
          {
            operator delete(v41);
          }

          if (!v16)
          {
            break;
          }

          v13 += 88;
          if (v13 == v14)
          {
            v13 = v14;
            break;
          }
        }

        v14 = *(&v34 + 1);
      }

      if (v13 == v14)
      {
        v18 = *(v3 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          if ((*a3 & 1) == 0)
          {
            __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
          }

          ctu::hex(buf, (a3 + 24), 0x10, v19);
          sub_101772DF8(buf, &v44, v18);
        }

        goto LABEL_40;
      }

      if (*a3 == 1)
      {
        v17 = *(a3 + 24);
        *v13 = *(a3 + 8);
        *(v13 + 16) = v17;
        std::string::operator=((v13 + 32), (a3 + 40));
        sub_1001148D8(v13 + 56, a3 + 64);
        (*(**(v3 + 160) + 32))(*(v3 + 160), __dst);
LABEL_40:
        v31 = &v34;
        sub_100112048(&v31);
        if (SBYTE7(v33) < 0)
        {
          operator delete(*__dst);
        }

LABEL_42:
        (*(**(v3 + 96) + 16))(*(v3 + 96));
        v20 = *a2;
        v21 = *(v3 + 40);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20 == 1)
        {
          if (v22)
          {
            *__dst = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Install successful", __dst, 2u);
            v22 = 0;
          }
        }

        else
        {
          if (v22)
          {
            if (v20 != 2)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            v23 = asString();
            *__dst = 136315138;
            *&__dst[4] = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I error fetching profiles: %s", __dst, 0xCu);
            v20 = *a2;
          }

          if (v20 != 2)
          {
            if (v20 == 1)
            {
              v26 = __cxa_allocate_exception(0x10uLL);
              ctu::ResultIsNotError::ResultIsNotError(v26);
            }

            v27 = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
          }

          v22 = sub_100504BE0(a2[1]);
        }

        *__dst = v22;
        sub_100504C34((v3 + 1080), __dst, a3);
        return;
      }

      v24 = 1212;
      v25 = "get";
    }

    else
    {
      v24 = 1222;
      v25 = "operator->";
    }

    __assert_rtn(v25, "optional.hpp", v24, "this->is_initialized()");
  }

  v11 = *(v3 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I fetch profile callback already invoked", buf, 2u);
  }
}

uint64_t sub_100504BE0(uint64_t result)
{
  if (result > 19)
  {
    if ((result - 20) < 2)
    {
      return 5;
    }

    if (result == 25)
    {
      return 11;
    }

    return 2;
  }

  if (result != 6 && result != 8)
  {
    if (result == 9)
    {
      return 7;
    }

    return 2;
  }

  return result;
}

void sub_100504C34(uint64_t *a1, unsigned int *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = *a2;
  v6[0] = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v7, (a3 + 8));
    v6[0] = 1;
  }

  (*(v3 + 16))(v3, v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void cellplan::CellularPlanControllerPhone::sendUserConsentForRemoteProvisioning_sync(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v5 = *(a1 + 144);
  v6 = *a2;
  v7 = a2[1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100504E1C;
  v9[3] = &unk_101E53918;
  v9[4] = a1;
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  (*(*v5 + 48))(v5, v6, v7, a3, v9);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_100504E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100504E1C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(*(a1 + 32) + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 2)
  {
    if (v6)
    {
      v12 = 136315138;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User consent send failure (%s)", &v12, 0xCu);
      v7 = *a2;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v11 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v11);
      }
    }

    v8 = sub_100504BE0(a2[1]);
    return (*(*(a1 + 40) + 16))(*(a1 + 40), v8 | &_mh_execute_header);
  }

  else
  {
    if (v4 == 1)
    {
      if (v6)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User Consent successfully sent", &v12, 2u);
      }
    }

    else if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User consent send failure", &v12, 2u);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void *sub_10050502C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_100505060(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void cellplan::CellularPlanControllerPhone::removeNonSelectedPlanFromMultiplePlansList_sync(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 5) >= 2)
  {
    v43 = 0;
    v44 = 0;
    v5 = (a2 + 24);
    memset(&v21, 0, sizeof(v21));
    if ((sub_1009222A0() & 1) == 0)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_101772E60(a2, v5, v11);
      }

      goto LABEL_67;
    }

    (*(**(a1 + 176) + 24))(&v27);
    if (v42 == 1 && v27 == 1)
    {
      std::string::operator=(&v21, &v28);
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 47) >= 0)
        {
          v7 = v5;
        }

        else
        {
          v7 = *(a2 + 24);
        }

        v8 = &v21;
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v8 = v21.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I selected ICCID on remote device (%s): %s", buf, 0x16u);
      }
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v21.__r_.__value_.__l.__size_)
      {
        v9 = *(a2 + 48);
        v10 = *(a2 + 56);
        sub_100005F2C(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        goto LABEL_19;
      }
    }

    else if (*(&v21.__r_.__value_.__s + 23))
    {
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      __p = v21;
LABEL_19:
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v9 != v10)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v15 = *(v9 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v9 + 8);
          }

          if (v15 == size)
          {
            v17 = v16 >= 0 ? v9 : *v9;
            if (!memcmp(v17, p_p, size))
            {
              break;
            }
          }

          v9 += 96;
          if (v9 == v10)
          {
            v9 = v10;
            break;
          }
        }
      }

      if (v12 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v9 != *(a2 + 56))
      {
        *v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        *v24 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_1000DDB98(buf, v9);
        sub_100520EA4(v2, *(a2 + 48));
        v18 = *(a2 + 56);
        if (v18 >= *(a2 + 64))
        {
          v19 = sub_100520EF8(v2, buf);
        }

        else
        {
          sub_1000DDB98(*(a2 + 56), buf);
          v19 = v18 + 96;
          *(a2 + 56) = v18 + 96;
        }

        *(a2 + 56) = v19;
        sub_100505504(v2);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[1]);
        }

        if (SHIBYTE(v25[0]) < 0)
        {
          operator delete(v24[0]);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(*&buf[24]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (v42 == 1)
    {
      *buf = &v41;
      sub_100112048(buf);
      if (v40 < 0)
      {
        operator delete(v39);
      }

      if (v38 < 0)
      {
        operator delete(v37);
      }

      if (v34 == 1)
      {
        if (v36 < 0)
        {
          operator delete(v35);
        }

        v34 = 0;
      }

      if (v31 == 1)
      {
        if (v33 < 0)
        {
          operator delete(v32);
        }

        v31 = 0;
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v27 == 1 && SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

LABEL_67:
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1005054A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_1000DA290(&a18);
  sub_1003A371C(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100505504(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 5);
    v15 = result;
    if (v1 != v2)
    {
      sub_1000DD644(result, 0xAAAAAAAAAAAAAAABLL * (v4 >> 5));
    }

    v7 = 32 * (v4 >> 5);
    v12 = 0;
    v13 = 96 * v6;
    v14 = 96 * v6;
    if (0xAAAAAAAAAAAAAAABLL * (v3 >> 5))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      sub_100521028(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_100521174(&v12);
  }

  return result;
}

void sub_1005055F0(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100521174(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1005055E0);
}

uint64_t cellplan::CellularPlanControllerPhone::getPlanTransferCapabilityForPrimaryIccids_sync@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 1224))
  {
    v3 = 14;
  }

  else
  {
    v3 = 12;
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v4 = *(this + 304);
  v5 = *(this + 312);
  if (v4 != v5)
  {
    v6 = (this + 1096);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *v4;
        v9 = v6;
        do
        {
          if (*(v7 + 32) >= v3)
          {
            v9 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v3));
        }

        while (v7);
        if (v9 != v6 && v3 >= *(v9 + 8))
        {
          v12 = v9[6];
          v10 = v9 + 6;
          v11 = v12;
          if (v12)
          {
            v13 = v10;
            do
            {
              if (*(v11 + 7) >= v8)
              {
                v13 = v11;
              }

              v11 = v11[*(v11 + 7) < v8];
            }

            while (v11);
            if (v13 != v10 && v8 >= *(v13 + 7) && *(v13 + 8) == 2)
            {
              this = sub_100527A1C(a2, v4 + 9);
              *(this + 56) = 3;
            }
          }
        }
      }

      v4 += 21;
    }

    while (v4 != v5);
  }

  return this;
}

uint64_t cellplan::CellularPlanControllerPhone::getLocalSimSlotForRemoteDeviceProfile_sync(uint64_t a1, const void **a2)
{
  (***(a1 + 128))(&v42);
  v53[0] = v42;
  v42 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*(&v53[0] + 1))
  {
    sub_100004A34(*(&v53[0] + 1));
  }

  if (*(&v42 + 1))
  {
    sub_100004A34(*(&v42 + 1));
  }

  v4 = v35;
  v5 = v36;
  if (v35 == v36)
  {
    return 0;
  }

  v6 = v37;
  do
  {
    if (v37(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v36);
  v31 = v36;
  if (v4 == v36)
  {
    return 0;
  }

  while (1)
  {
    v7 = *v4;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(v53, 0, sizeof(v53));
    (*(**(a1 + 160) + 184))(v53);
    if (BYTE8(v57))
    {
      break;
    }

    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101772EE0(&v33, v34, v18);
    }

LABEL_48:
    sub_100521514(v53);
    do
    {
      ++v4;
    }

    while (v4 != v5 && (v6(*v4) & 1) == 0);
    if (v4 == v31)
    {
      return 0;
    }
  }

  if (*(a1 + 1224) != 1)
  {
    v9 = *(&v54 + 1);
    v8 = v55;
    while (v9 != v8)
    {
      *__p = 0u;
      v50 = 0u;
      *v47 = 0u;
      *v48 = 0u;
      *v45 = 0u;
      *v46 = 0u;
      *v43 = 0u;
      *v44 = 0u;
      v42 = 0u;
      sub_100521398(&v42, v9);
      if (SHIBYTE(v48[0]) >= 0)
      {
        v10 = HIBYTE(v48[0]);
      }

      else
      {
        v10 = v47[1];
      }

      v11 = *(a2 + 23);
      v12 = v11;
      if (v11 < 0)
      {
        v11 = a2[1];
      }

      if (v10 == v11 && (SHIBYTE(v48[0]) >= 0 ? (v13 = v47) : (v13 = v47[0]), v12 >= 0 ? (v14 = a2) : (v14 = *a2), !memcmp(v13, v14, v10)))
      {
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = subscriber::asString();
          *buf = 136315394;
          v39 = v14;
          v40 = 2080;
          v41 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I matching slot for remote profile iccid %s = %s", buf, 0x16u);
        }

        v15 = 1;
        v2 = v7;
      }

      else
      {
        v15 = 0;
      }

      if (LOBYTE(__p[0]) == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(__p[1]);
        }

        LOBYTE(__p[0]) = 0;
      }

      if (SHIBYTE(v48[0]) < 0)
      {
        operator delete(v47[0]);
      }

      if (LOBYTE(v45[0]) == 1)
      {
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(v45[1]);
        }

        LOBYTE(v45[0]) = 0;
      }

      if (LOBYTE(v43[0]) == 1 && SHIBYTE(v44[1]) < 0)
      {
        operator delete(v43[1]);
      }

      if (v15)
      {
        v19 = v2;
        goto LABEL_54;
      }

      v9 += 144;
    }

    goto LABEL_48;
  }

  v22 = *(&v56 + 1);
  v21 = v56;
  if (v56 == *(&v56 + 1))
  {
    v19 = 0;
LABEL_54:
    sub_100521514(v53);
    return v19;
  }

  else
  {
    while (1)
    {
      v52 = 0;
      v50 = 0u;
      *v51 = 0u;
      *v48 = 0u;
      *__p = 0u;
      *v46 = 0u;
      *v47 = 0u;
      *v44 = 0u;
      *v45 = 0u;
      v42 = 0u;
      *v43 = 0u;
      sub_1005211F4(&v42, v21);
      if (SHIBYTE(v45[1]) >= 0)
      {
        v23 = HIBYTE(v45[1]);
      }

      else
      {
        v23 = v45[0];
      }

      v24 = *(a2 + 23);
      v25 = v24;
      if (v24 < 0)
      {
        v24 = a2[1];
      }

      if (v23 == v24 && (SHIBYTE(v45[1]) >= 0 ? (v26 = &v44[1]) : (v26 = v44[1]), v25 >= 0 ? (v27 = a2) : (v27 = *a2), !memcmp(v26, v27, v23)))
      {
        v29 = *(a1 + 40);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = subscriber::asString();
          *buf = 136315394;
          v39 = v27;
          v40 = 2080;
          v41 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I matching slot for remote profile iccid %s = %s", buf, 0x16u);
        }

        v28 = 1;
        v2 = v7;
      }

      else
      {
        v28 = 0;
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(v51[0]);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v47[1]) < 0)
      {
        operator delete(v46[1]);
      }

      if (SHIBYTE(v45[1]) < 0)
      {
        operator delete(v44[1]);
      }

      if (SHIBYTE(v44[0]) < 0)
      {
        operator delete(v43[0]);
      }

      if (v28)
      {
        break;
      }

      v19 = 0;
      v21 += 168;
      if (v21 == v22)
      {
        goto LABEL_54;
      }
    }

    sub_100521514(v53);
  }

  return v2;
}

void sub_100505C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_100505CF0(&a21);
  sub_100521514(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_100505CF0(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

BOOL cellplan::CellularPlanControllerPhone::setTransferRequestParams(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t *a4)
{
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  *v47 = 0u;
  memset(v45, 0, sizeof(v45));
  std::string::operator=(v45, a3);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  *v57 = 0u;
  v54 = 0u;
  *v55 = 0u;
  v52 = 0u;
  *v53 = 0u;
  *__dst = 0u;
  (*(**(a1 + 160) + 184))(__dst);
  if (BYTE8(v65) == 1)
  {
    if (*(a1 + 1224) == 1)
    {
      v8 = *(&v64 + 1);
      if (v64 != *(&v64 + 1))
      {
        v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (v9 >= 0)
        {
          size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = a3->__r_.__value_.__l.__size_;
        }

        if (v9 < 0)
        {
          a3 = a3->__r_.__value_.__r.__words[0];
        }

        v11 = (v64 + 39);
        while (1)
        {
          v12 = v11[24];
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v11 + 9);
          }

          if (v12 == size)
          {
            v14 = v13 >= 0 ? v11 + 1 : *(v11 + 1);
            if (!memcmp(v14, a3, size))
            {
              break;
            }
          }

          v11 += 168;
          if (v11 - 39 == v8)
          {
            goto LABEL_56;
          }
        }

        ctu::hex(__p, (v11 - 39), 0x10, v15);
        v24 = *a4;
        if (*(*a4 + 80) == 1)
        {
          if (*(v24 + 79) < 0)
          {
            operator delete(*(v24 + 56));
          }

          *(v24 + 56) = *__p;
          *(v24 + 72) = v43;
        }

        else
        {
          *(v24 + 56) = *__p;
          *(v24 + 72) = v43;
          *(v24 + 80) = 1;
        }

        v26 = *v11;
        if (v26 < 0)
        {
          v26 = *(v11 - 15);
        }

        if (v26)
        {
          sub_1001696A4(&v45[24], (v11 - 23));
        }
      }
    }

    else
    {
      v16 = *(&v62 + 1);
      v17 = v63;
      if (*(&v62 + 1) != v63)
      {
        v18 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (v18 >= 0)
        {
          v19 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = a3->__r_.__value_.__l.__size_;
        }

        if (v18 < 0)
        {
          a3 = a3->__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v20 = *(v16 + 103);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v16 + 88);
          }

          if (v20 == v19)
          {
            v22 = v21 >= 0 ? (v16 + 80) : *(v16 + 80);
            if (!memcmp(v22, a3, v19))
            {
              break;
            }
          }

          v16 += 144;
          if (v16 == v17)
          {
            goto LABEL_56;
          }
        }

        ctu::hex(__p, v16, 0x10, v23);
        v25 = *a4;
        if (*(*a4 + 80) == 1)
        {
          if (*(v25 + 79) < 0)
          {
            operator delete(*(v25 + 56));
          }

          *(v25 + 56) = *__p;
          *(v25 + 72) = v43;
        }

        else
        {
          *(v25 + 56) = *__p;
          *(v25 + 72) = v43;
          *(v25 + 80) = 1;
        }

        sub_100BFF27C((v16 + 16), __p);
        sub_10016A270(&v45[24], __p);
        if (v44 == 1 && SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100BFF27C((v16 + 48), __p);
        sub_10016A270(&v47[1], __p);
        if (v44 == 1 && SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101772F20();
  }

LABEL_56:
  v27 = *a4;
  v28 = *(*a4 + 40);
  if (v28 >= *(*a4 + 48))
  {
    v29 = sub_1005216C8(v27 + 32, v45);
  }

  else
  {
    sub_1005215FC(v27 + 32, v45);
    v29 = v28 + 96;
  }

  *(v27 + 40) = v29;
  sub_100521514(__dst);
  if (v49 == 1 && SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if (LOBYTE(v47[0]) == 1 && SHIBYTE(v46) < 0)
  {
    operator delete(*&v45[24]);
  }

  if ((v45[23] & 0x80000000) != 0)
  {
    operator delete(*v45);
  }

  v50 = 0uLL;
  v31 = 328;
  if (*(a1 + 1224))
  {
    v31 = 1368;
  }

  v32 = a1 + v31;
  v33 = *(a1 + v31 + 32);
  if (*(v32 + 40) == v33 || *(v32 + 24) != 1)
  {
    result = os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_101772F54();
      return 0;
    }
  }

  else
  {
    v50 = *(v33 + 16);
    sub_100922314(&v50, v30, __dst);
    v34 = *a4;
    if (*(*a4 + 111) < 0)
    {
      operator delete(*(v34 + 88));
    }

    *(v34 + 88) = *__dst;
    *(v34 + 104) = v52;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    *v47 = 0u;
    memset(v45, 0, sizeof(v45));
    *&v59 = 0;
    *v57 = 0u;
    v58 = 0u;
    *v55 = 0u;
    v56 = 0u;
    *v53 = 0u;
    v54 = 0u;
    *__dst = 0u;
    v52 = 0u;
    v35 = 408;
    if (*(a1 + 1224))
    {
      v35 = 1232;
    }

    sub_10027E51C(__dst, (a1 + v35));
    if (BYTE8(v52))
    {
      if (SBYTE7(v54) < 0)
      {
        sub_100005F2C(__p, v53[0], v53[1]);
      }

      else
      {
        *__p = *v53;
        v43 = v54;
      }

      v37 = 1;
    }

    else
    {
      v37 = 0;
      LOBYTE(__p[0]) = 0;
    }

    v44 = v37;
    sub_10016A270(&v45[24], __p);
    if (v44 == 1 && SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    if (BYTE8(v54))
    {
      if (SBYTE7(v56) < 0)
      {
        sub_100005F2C(__p, v55[0], v55[1]);
      }

      else
      {
        *__p = *v55;
        v43 = v56;
      }

      v38 = 1;
    }

    else
    {
      v38 = 0;
      LOBYTE(__p[0]) = 0;
    }

    v44 = v38;
    sub_10016A270(&v47[1], __p);
    if (v44 == 1 && SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    v39 = *a4;
    v40 = *(*a4 + 120);
    if (v40 >= *(*a4 + 128))
    {
      v41 = sub_1005216C8(v39 + 112, v45);
    }

    else
    {
      sub_1005215FC(v39 + 112, v45);
      v41 = v40 + 96;
    }

    *(v39 + 120) = v41;
    sub_100215390((*a4 + 136), &off_101E53948);
    if (SBYTE7(v58) < 0)
    {
      operator delete(v57[0]);
    }

    if (BYTE8(v54) == 1)
    {
      if (SBYTE7(v56) < 0)
      {
        operator delete(v55[0]);
      }

      BYTE8(v54) = 0;
    }

    if (BYTE8(v52) == 1)
    {
      if (SBYTE7(v54) < 0)
      {
        operator delete(v53[0]);
      }

      BYTE8(v52) = 0;
    }

    if (SBYTE7(v52) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v49 == 1 && SHIBYTE(v48) < 0)
    {
      operator delete(v47[1]);
    }

    if (LOBYTE(v47[0]) == 1 && SHIBYTE(v46) < 0)
    {
      operator delete(*&v45[24]);
    }

    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    return 1;
  }

  return result;
}

void sub_100506430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100521514(&a27);
  sub_100269A94(&a13);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::isRemotePlanAvailable(uint64_t a1, int a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1005065BC;
  v5[3] = &unk_101E53958;
  v6 = a2;
  v5[4] = a3;
  v5[5] = a1;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1005065BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = (v2 + v3);
  if (*(v2 + v3 + 23) < 0)
  {
    sub_100005F2C(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    *&v15 = *(v4 + 2);
    *__p = v5;
  }

  *(&v15 + 1) = *(v4 + 3);
  v16 = 0uLL;
  *&v17 = 0;
  sub_10027E628(&v16, *(v4 + 4), *(v4 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v4 + 5) - *(v4 + 4)) >> 3));
  v6 = *(v4 + 7);
  LODWORD(v18) = *(v4 + 16);
  *(&v17 + 1) = v6;
  for (i = v16; i != *(&v16 + 1); i += 88)
  {
    if (*(i + 12) == 5)
    {
      v9 = 0;
      goto LABEL_21;
    }
  }

  *buf = 0u;
  v20 = 0u;
  (*(**(v2 + 128) + 680))(&v12);
  (*(*v12 + 48))(buf);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *(&v16 + 1) != v16 && *buf != 0;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(*&buf[8]);
  }

LABEL_21:
  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(v9);
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I isRemotePlanAvailable: %s", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  *buf = &v16;
  sub_100112048(buf);
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100506878(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100506870);
}

void cellplan::CellularPlanControllerPhone::isRemoteCellularPlanSupported(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10050699C;
  v4[3] = &unk_101E53980;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_10050699C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I isRemoteCellularPlanSupported", v7, 2u);
  }

  v4 = *(a1 + 32);
  v5 = (*(**(v2 + 128) + 56))(*(v2 + 128));
  return (*(v4 + 16))(v4, v5);
}

void cellplan::CellularPlanControllerPhone::shouldShowAddNewRemotePlan(uint64_t a1, int a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100506B5C;
  v5[3] = &unk_101E539A8;
  v6 = a2;
  v5[4] = a3;
  v5[5] = a1;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100506B5C(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = *(a1 + 40);
  v4 = (*(**(v3 + 48) + 16))(*(v3 + 48), *(a1 + 48));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I shouldShowAddNewRemotePlan", &buf, 2u);
  }

  (*(**(v3 + 128) + 680))(&v146);
  (*(*v146 + 48))(&buf);
  v6 = buf;
  __src = *(&buf + 1);
  v7 = v135;
  v8 = SHIBYTE(v135);
  v130[0] = DWORD2(v135);
  *(v130 + 3) = *(&v135 + 11);
  HIBYTE(v135) = 0;
  BYTE8(buf) = 0;
  if (*(&v146 + 1))
  {
    sub_100004A34(*(&v146 + 1));
  }

  if (*(v3 + 1224) == 1)
  {
    v6 &= ~4u;
    if (v8 < 0)
    {
      v7 = 0;
      *__src = 0;
    }

    else
    {
      v8 = 0;
      __src &= 0xFFFFFFFFFFFFFF00;
    }
  }

  v9 = (*(**(v3 + 160) + 168))(*(v3 + 160), *v2);
  v10 = v6 | 8;
  if (!v9)
  {
    v10 = v6;
  }

  v68 = v10;
  if ((*(**(v3 + 128) + 56))(*(v3 + 128)))
  {
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    __dst = 0u;
    v123 = 0u;
    v11 = 328;
    if (*(v3 + 1224))
    {
      v11 = 1368;
    }

    v12 = v3 + v11;
    if (*(v3 + v11 + 23) < 0)
    {
      sub_100005F2C(&__dst, *v12, *(v12 + 8));
    }

    else
    {
      v13 = *v12;
      *&v123 = *(v12 + 16);
      __dst = v13;
    }

    *(&v123 + 1) = *(v12 + 24);
    v124 = 0uLL;
    *&v125 = 0;
    sub_10027E628(&v124, *(v12 + 32), *(v12 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v12 + 40) - *(v12 + 32)) >> 3));
    v16 = *(v12 + 56);
    LODWORD(v126) = *(v12 + 64);
    *(&v125 + 1) = v16;
    for (i = v124; i != *(&v124 + 1); i += 88)
    {
      if (*(i + 12) == 5)
      {
        v23 = *v4;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I a remote sim is unauthorized", &buf, 2u);
        }

        v24 = *(a1 + 32);
        if (v8 < 0)
        {
          sub_100005F2C(v119, __src, v7);
        }

        else
        {
          v119[0] = __src;
          v119[1] = v7;
          *v120 = v130[0];
          *&v120[3] = *(v130 + 3);
          v121 = v8;
        }

        (*(v24 + 16))(v24, 0, v68, v119, 0);
        if (v121 < 0)
        {
          v31 = v119[0];
LABEL_80:
          operator delete(v31);
          goto LABEL_81;
        }

        goto LABEL_81;
      }
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    memset(v149, 0, sizeof(v149));
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    sub_100922C88(*v2, (v3 + 304), &v146);
    if (v146 == 1)
    {
      isSimReady = subscriber::isSimReady();
    }

    else
    {
      isSimReady = 0;
    }

    v145 = 0uLL;
    if (*(&v124 + 1) == v124)
    {
      v25 = *v4;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I csn unavailable, do not show", &buf, 2u);
      }

      v26 = *(a1 + 32);
      if (v8 < 0)
      {
        sub_100005F2C(v116, __src, v7);
      }

      else
      {
        v116[0] = __src;
        v116[1] = v7;
        *v117 = v130[0];
        *&v117[3] = *(v130 + 3);
        v118 = v8;
      }

      (*(v26 + 16))(v26, isSimReady, v68, v116, 0);
      if ((v118 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      v32 = v116[0];
    }

    else
    {
      v145 = *(v124 + 16);
      if (*(v3 + 256))
      {
        buf = 0uLL;
        (*(**(v3 + 96) + 64))(&buf);
        if (((*(**(v3 + 160) + 176))(*(v3 + 160)) & 1) != 0 || *v2 != *(v3 + 1040) || ((*v131 = (*(**(v3 + 256) + 104))(*(v3 + 256)), v132 = v20, *v131 == v145) ? (v21 = v20 == *(&v145 + 1)) : (v21 = 0), !v21 || !buf || ((*(*buf + 184))(buf) & 1) == 0))
        {
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            sub_101772F88();
          }

          v22 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(__p, __src, v7);
          }

          else
          {
            __p[0] = __src;
            __p[1] = v7;
            *v114 = v130[0];
            *&v114[3] = *(v130 + 3);
            v115 = v8;
          }

          (*(v22 + 16))(v22, 0, v68, __p, 0);
          if (v115 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(&buf + 1))
          {
            sub_100004A34(*(&buf + 1));
          }

          goto LABEL_69;
        }

        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }
      }

      else if (*(v3 + 1224) == 1)
      {
        (*(**(v3 + 160) + 272))(&buf);
        v27 = buf;
        *v131 = &buf;
        sub_1000DC8D4(v131);
        if (v27 != *(&v27 + 1))
        {
          v28 = *v4;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I tinker paired and pending ALS profile/es", &buf, 2u);
          }

          v29 = *(a1 + 48);
          v30 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v110, __src, v7);
          }

          else
          {
            v110[0] = __src;
            v110[1] = v7;
            *v111 = v130[0];
            *&v111[3] = *(v130 + 3);
            v112 = v8;
          }

          (*(v30 + 16))(v30, v29 == 1, v68, v110, 0);
          if ((v112 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          v32 = v110[0];
          goto LABEL_68;
        }
      }

      if (isSimReady)
      {
        (*(**(v3 + 160) + 240))(&buf);
        v33 = buf;
        sub_100521AC8(&buf);
        if (v33 == 1)
        {
          v35 = *v4;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I has a selectable plan", &buf, 2u);
          }

          v36 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v104, __src, v7);
          }

          else
          {
            v104[0] = __src;
            v104[1] = v7;
            *v105 = v130[0];
            *&v105[3] = *(v130 + 3);
            v106 = v8;
          }

          (*(v36 + 16))(v36, 0, v68, v104, 0);
          if (v106 < 0)
          {
            v32 = v104[0];
            goto LABEL_68;
          }

LABEL_69:
          if (v146 == 1)
          {
            if (SHIBYTE(v155) < 0)
            {
              operator delete(*(&v154 + 1));
            }

            if (SBYTE7(v154) < 0)
            {
              operator delete(v153);
            }

            if (SHIBYTE(v152) < 0)
            {
              operator delete(*(&v151 + 1));
            }

            if (SBYTE7(v151) < 0)
            {
              operator delete(v150);
            }

            *&buf = v149;
            sub_100034D1C(&buf);
            v31 = *(&v147 + 1);
            if (*(&v147 + 1))
            {
              *&v148 = *(&v147 + 1);
              goto LABEL_80;
            }
          }

LABEL_81:
          *&buf = &v124;
          sub_100112048(&buf);
          if (SBYTE7(v123) < 0)
          {
            v19 = __dst;
            goto LABEL_83;
          }

          goto LABEL_84;
        }

        v144 = 0u;
        v142 = 0u;
        memset(v143, 0, sizeof(v143));
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        buf = 0u;
        v135 = 0u;
        ctu::hex(v131, &v145, 0x10, v34);
        rest::PairedDeviceInfoList::getDeviceForCsn();
        if (v133 < 0)
        {
          operator delete(*v131);
        }

        if (BYTE8(v144) == 1)
        {
          (*(**(v3 + 128) + 680))(v131);
          v39 = (*(**v131 + 88))(*v131, *v2, &v143[1], &v143[5]);
          if (v132)
          {
            sub_100004A34(v132);
          }

          if ((v39 & 1) == 0)
          {
            v47 = *v4;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_101772FBC(&buf, &v143[5], v47);
            }

            v48 = *(a1 + 32);
            if (v8 < 0)
            {
              sub_100005F2C(v101, __src, v7);
            }

            else
            {
              v101[0] = __src;
              v101[1] = v7;
              *v102 = v130[0];
              *&v102[3] = *(v130 + 3);
              v103 = v8;
            }

            (*(v48 + 16))(v48, 1, v68, v101, 21);
            if ((v103 & 0x80000000) == 0)
            {
              goto LABEL_218;
            }

            v59 = v101[0];
            goto LABEL_217;
          }
        }

        if (!v68)
        {
          v45 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *v131 = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I No cellular plan flow types allowed", v131, 2u);
          }

          v46 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v98, __src, v7);
          }

          else
          {
            v98[0] = __src;
            v98[1] = v7;
            *v99 = v130[0];
            *&v99[3] = *(v130 + 3);
            v100 = v8;
          }

          (*(v46 + 16))(v46, 0, 0, v98, 22);
          if ((v100 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v59 = v98[0];
          goto LABEL_217;
        }

        if (sub_10000BAA0())
        {
          LOBYTE(v86) = 1;
          v40 = sub_10005D028();
          sub_10000501C(v131, "EnablePlanSelection");
          sub_10005D0D8(v40, v131, &v86);
          if (v133 < 0)
          {
            operator delete(*v131);
          }

          if ((v86 & 1) == 0)
          {
            v51 = *v4;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *v131 = 0;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Non-POR - allowing new plan", v131, 2u);
            }

            v52 = *(a1 + 32);
            if (v8 < 0)
            {
              sub_100005F2C(v95, __src, v7);
            }

            else
            {
              v95[0] = __src;
              v95[1] = v7;
              *v96 = v130[0];
              *&v96[3] = *(v130 + 3);
              v97 = v8;
            }

            (*(v52 + 16))(v52, 1, v68, v95, 0);
            if ((v97 & 0x80000000) == 0)
            {
              goto LABEL_218;
            }

            v59 = v95[0];
            goto LABEL_217;
          }
        }

        v41 = (*(**(v3 + 128) + 328))();
        v42 = 328;
        if (*(v3 + 1224))
        {
          v42 = 1368;
        }

        v43 = *(v3 + v42 + 64);
        if (v43 < v41 && v43)
        {
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            sub_1017730AC();
          }

          v44 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v92, __src, v7);
          }

          else
          {
            v92[0] = __src;
            v92[1] = v7;
            *v93 = v130[0];
            *&v93[3] = *(v130 + 3);
            v94 = v8;
          }

          (*(v44 + 16))(v44, 1, v68, v92, 32);
          if ((v94 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v59 = v92[0];
          goto LABEL_217;
        }

        if ((*(v3 + 736) & 1) == 0 && cellplan::CellularPlanControllerPhone::isRoaming(v3, *v2))
        {
          v49 = *v4;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *v131 = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I device is in roaming", v131, 2u);
          }

          v50 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v89, __src, v7);
          }

          else
          {
            v89[0] = __src;
            v89[1] = v7;
            *v90 = v130[0];
            *&v90[3] = *(v130 + 3);
            v91 = v8;
          }

          (*(v50 + 16))(v50, 1, v68, v89, 14);
          if ((v91 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v59 = v89[0];
          goto LABEL_217;
        }

        (*(**(v3 + 128) + 680))(v131);
        v88 = 0;
        v53 = (*(**v131 + 40))(*v131, &v88, *v2);
        sub_10001021C(&v88);
        if (v132)
        {
          sub_100004A34(v132);
        }

        if (!v53)
        {
          goto LABEL_160;
        }

        if (*(v3 + 1224))
        {
          v54 = 11;
        }

        else
        {
          v54 = 10;
        }

        v87 = v54;
        (***(v3 + 128))(&v85);
        v86 = v85;
        v85 = 0uLL;
        PersonalityIdFromSlotId();
        v55 = sub_1001E8470(v3 + 848, v131, v87);
        if (v133 < 0)
        {
          operator delete(*v131);
        }

        if (*(&v86 + 1))
        {
          sub_100004A34(*(&v86 + 1));
        }

        if (*(&v85 + 1))
        {
          sub_100004A34(*(&v85 + 1));
        }

        *v131 = &v87;
        v56 = sub_10031D3B0(v3 + 1088, &v87);
        *v131 = v2;
        if (*(sub_10030C46C((v56 + 5), v2) + 8) == 2)
        {
          goto LABEL_160;
        }

        v68 &= 2u;
        if (v8 < 0)
        {
          v7 = 0;
          *__src = 0;
        }

        else
        {
          v8 = 0;
          __src &= 0xFFFFFFFFFFFFFF00;
        }

        if ((v68 != 0) | *&v55 & ((v55 & 0x100) >> 8) & 1)
        {
          if (v68)
          {
LABEL_160:
            if (*(v3 + 1224) == 1 && (*(**(v3 + 160) + 136))(*(v3 + 160), *v2))
            {
              v57 = *v4;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *v131 = 0;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I active remote plan found for primary iccid", v131, 2u);
              }

              v58 = *(a1 + 32);
              if (v8 < 0)
              {
                sub_100005F2C(v76, __src, v7);
              }

              else
              {
                v76[0] = __src;
                v76[1] = v7;
                *v77 = v130[0];
                *&v77[3] = *(v130 + 3);
                v78 = v8;
              }

              (*(v58 + 16))(v58, 0, v68, v76, 0);
              if ((v78 & 0x80000000) == 0)
              {
                goto LABEL_218;
              }

              v59 = v76[0];
            }

            else if ((*(**(v3 + 160) + 160))(*(v3 + 160)))
            {
              v60 = *v4;
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                *v131 = 0;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I Subscription is pending release", v131, 2u);
              }

              v61 = *(a1 + 32);
              if (v8 < 0)
              {
                sub_100005F2C(v73, __src, v7);
              }

              else
              {
                v73[0] = __src;
                v73[1] = v7;
                *v74 = v130[0];
                *&v74[3] = *(v130 + 3);
                v75 = v8;
              }

              (*(v61 + 16))(v61, 0, v68, v73, 0);
              if ((v75 & 0x80000000) == 0)
              {
                goto LABEL_218;
              }

              v59 = v73[0];
            }

            else
            {
              v62 = *(a1 + 32);
              if (v8 < 0)
              {
                sub_100005F2C(v70, __src, v7);
              }

              else
              {
                v70[0] = __src;
                v70[1] = v7;
                *v71 = v130[0];
                *&v71[3] = *(v130 + 3);
                v72 = v8;
              }

              (*(v62 + 16))(v62, 1, v68, v70, 0);
              if ((v72 & 0x80000000) == 0)
              {
LABEL_218:
                if (BYTE8(v144) == 1)
                {
                  sub_100DB14E0(&buf);
                }

                goto LABEL_69;
              }

              v59 = v70[0];
            }

LABEL_217:
            operator delete(v59);
            goto LABEL_218;
          }

          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            v63 = sub_10006EE44(v87);
            sub_101773074(v63, v131);
          }

          v64 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v79, __src, v7);
          }

          else
          {
            v79[0] = __src;
            v79[1] = v7;
            *v80 = v130[0];
            *&v80[3] = *(v130 + 3);
            v81 = v8;
          }

          (*(v64 + 16))(v64, 0, 0, v79, 27);
          if ((v81 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v67 = v79;
        }

        else
        {
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            v65 = sub_10006EE44(v87);
            sub_10177303C(v65, v131);
          }

          v66 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v82, __src, v7);
          }

          else
          {
            v82[0] = __src;
            v82[1] = v7;
            *v83 = v130[0];
            *&v83[3] = *(v130 + 3);
            v84 = v8;
          }

          (*(v66 + 16))(v66, 0, v68, v82, 22);
          if ((v84 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v67 = v82;
        }

        v59 = *v67;
        goto LABEL_217;
      }

      v37 = *v4;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I sim info not available or sim not ready", &buf, 2u);
      }

      v38 = *(a1 + 32);
      if (v8 < 0)
      {
        sub_100005F2C(v107, __src, v7);
      }

      else
      {
        v107[0] = __src;
        v107[1] = v7;
        *v108 = v130[0];
        *&v108[3] = *(v130 + 3);
        v109 = v8;
      }

      (*(v38 + 16))(v38, 0, v68, v107, 0);
      if ((v109 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      v32 = v107[0];
    }

LABEL_68:
    operator delete(v32);
    goto LABEL_69;
  }

  v14 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I does not support remote cellular plan", &buf, 2u);
  }

  v15 = *(a1 + 32);
  if (v8 < 0)
  {
    sub_100005F2C(v127, __src, v7);
  }

  else
  {
    v127[0] = __src;
    v127[1] = v7;
    *v128 = v130[0];
    *&v128[3] = *(v130 + 3);
    v129 = v8;
  }

  (*(v15 + 16))(v15, 0, v68, v127, 0);
  if (v129 < 0)
  {
    v19 = v127[0];
LABEL_83:
    operator delete(v19);
  }

LABEL_84:
  if (v8 < 0)
  {
    operator delete(__src);
  }
}

void sub_100507F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x338]) == 1)
  {
    sub_100DB14E0(&STACK[0x260]);
  }

  sub_1005032D8(&STACK[0x350]);
  sub_100319DE8(&a67);
  if (a10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::isRoaming(uint64_t a1, int a2)
{
  v14 = 0;
  if (sub_10000BAA0())
  {
    v4 = sub_10005D028();
    sub_10000501C(__p, "RoamingSignupOverride");
    sub_10005D0D8(v4, __p, &v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      return 0;
    }
  }

  v6 = *(a1 + 808);
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = a1 + 808;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v7 != a1 + 808 && *(v7 + 28) <= a2)
  {
    v8 = *(v7 + 32) == 4;
  }

  else
  {
LABEL_31:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017730E0();
    }

    v8 = 0;
  }

  v9 = *(a1 + 832);
  if (!v9)
  {
    goto LABEL_32;
  }

  v10 = a1 + 832;
  do
  {
    if (*(v9 + 28) >= a2)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < a2));
  }

  while (v9);
  if (v10 != a1 + 832 && *(v10 + 28) <= a2)
  {
    v11 = *(v10 + 32) ^ 1;
  }

  else
  {
LABEL_32:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177315C();
    }

    v11 = 0;
  }

  return v8 & v11;
}

void sub_100508448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = 0;
  *v47 = 0u;
  v48 = 0u;
  *v45 = 0u;
  v46 = 0u;
  *v43 = 0u;
  v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForEid_sync(a1, a3, &v35);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  if (BYTE8(v35) != 1)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017731D8();
    }

LABEL_11:
    v7 = 0;
    goto LABEL_42;
  }

  std::string::operator=(v27, &v36);
  *&v27[24] = *(&v37 + 1);
  sub_100169D44(&v28, v38, *(&v38 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v38 + 1) - v38) >> 3));
  *(&v29 + 1) = *(&v39 + 1);
  LODWORD(v30) = v40;
  if (*(&v28 + 1) != v28 && *(v28 + 80) == 1)
  {
    v6 = *(v28 + 56);
    v5 = *(v28 + 64);
    if (v5 != v6)
    {
      while (*(v6 + 92) != 1 || (a2 & 1) != 0)
      {
        v6 += 216;
        if (v6 == v5)
        {
          goto LABEL_13;
        }
      }

      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I cannot create remote provisioning, disable not allowed", v33, 2u);
      }

      goto LABEL_11;
    }
  }

  a2 = 0;
LABEL_13:
  if (!*(a1 + 272))
  {
    memset(v34, 0, sizeof(v34));
    *v33 = 0u;
    v8 = *(a1 + 40);
    v9 = os_signpost_id_generate(v8);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = *(a1 + 40);
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CellularPlanRemoteProvisioning", "", buf, 2u);
      }
    }

    *buf = off_101E54C78;
    v51 = buf;
    *v33 = v9;
    *&v33[8] = os_retain(v8);
    sub_1000148FC(v34, buf);
    sub_10001499C(buf);
    (***(a1 + 128))(&v25);
    sub_10000501C(&__p, "Remote_Provisioning");
    v31[0] = *v33;
    v31[1] = *&v33[8];
    sub_1000148FC(&v32, v34);
    memset(v33, 0, sizeof(v33));
    sub_100014A28(v34);
    Registry::createXpcJetsamAssertion();
    v11 = *buf;
    memset(buf, 0, sizeof(buf));
    v12 = *(a1 + 280);
    *(a1 + 272) = v11;
    if (v12)
    {
      sub_100004A34(v12);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    sub_100014DA8(v31);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      sub_100004A34(v26);
    }

    sub_100014DA8(v33);
  }

  (*(**(a1 + 128) + 680))(buf);
  v13 = *buf;
  v14 = *(a1 + 24);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  sub_100004AA0(&v25, (a1 + 8));
  if (v25)
  {
    v15 = v25 + 64;
  }

  else
  {
    v15 = 0;
  }

  v20 = v15;
  v21 = v26;
  v25 = 0;
  v26 = 0;
  (*(*v13 + 24))(v33, v13, &object, &v20, a2);
  v16 = *v33;
  memset(v33, 0, sizeof(v33));
  v17 = *(a1 + 264);
  *(a1 + 256) = v16;
  if (v17)
  {
    sub_100004A34(v17);
    if (*&v33[8])
    {
      sub_100004A34(*&v33[8]);
    }
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v7 = 1;
LABEL_42:
  *v33 = &v28;
  sub_100112048(v33);
  if ((v27[23] & 0x80000000) != 0)
  {
    operator delete(*v27);
  }

  if (BYTE8(v40) == 1)
  {
    if (SBYTE7(v48) < 0)
    {
      operator delete(v47[0]);
    }

    if (BYTE8(v44) == 1)
    {
      if (SBYTE7(v46) < 0)
      {
        operator delete(v45[0]);
      }

      BYTE8(v44) = 0;
    }

    if (BYTE8(v42) == 1)
    {
      if (SBYTE7(v44) < 0)
      {
        operator delete(v43[0]);
      }

      BYTE8(v42) = 0;
    }

    if (SBYTE7(v42) < 0)
    {
      operator delete(v41[0]);
    }

    BYTE8(v40) = 0;
  }

  sub_100520C0C(&v35 + 8);
  return v7;
}

void sub_100508960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_100014DA8(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_100014DA8(&a36);
  sub_100319DE8(&a20);
  sub_100508A1C(&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_100508A1C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }

    if (*(a1 + 152) == 1)
    {
      if (*(a1 + 183) < 0)
      {
        operator delete(*(a1 + 160));
      }

      *(a1 + 152) = 0;
    }

    if (*(a1 + 120) == 1)
    {
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 120) = 0;
    }

    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 88) = 0;
  }

  sub_100520C0C((a1 + 8));
  return a1;
}

const void **cellplan::CellularPlanControllerPhone::handleNewRemoteDataPlanFlowTriggered(uint64_t a1, int a2, char a3, const void **a4, const void **a5, char a6, uint64_t a7)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_100508C14;
  v13[3] = &unk_101E53A08;
  v16 = a2;
  v13[4] = a7;
  v13[5] = a1;
  sub_10005C7A4(&v14, a4);
  sub_10005C7A4(&v15, a5);
  v17 = a6;
  v18 = a3;
  v21 = 0;
  v22 = 0;
  sub_100004AA0(&v21, (a1 + 8));
  v11 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v13;
  dispatch_async(v11, block);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_100005978(&v15);
  return sub_100005978(&v14);
}

void sub_100508C14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 64));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I handleNewRemoteDataPlanFlowTriggered", buf, 2u);
  }

  *buf = 0u;
  v13 = 0u;
  (*(**(v2 + 128) + 680))(&v10);
  (*(*v10 + 48))(buf);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if ((buf[0] & 2) != 0)
  {
    v4 = *(a1 + 64);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1174405120;
    v5[2] = sub_1005098FC;
    v5[3] = &unk_101E539D0;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    sub_10005C7A4(&v6, (a1 + 48));
    sub_10005C7A4(&v7, (a1 + 56));
    v8 = *(a1 + 64);
    v9 = *(a1 + 68);
    cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v4, v5);
    sub_100005978(&v7);
    sub_100005978(&v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_100508E04(_Unwind_Exception *a1)
{
  sub_100005978((v1 + 56));
  sub_100005978((v1 + 48));
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

_BYTE *cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v37 = a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v72 = 0uLL;
  v7 = 328;
  if (*(a1 + 1224))
  {
    v7 = 1368;
  }

  v8 = a1 + v7;
  v9 = *(a1 + v7 + 32);
  if (*(v8 + 40) != v9 && *(v8 + 24) == 1)
  {
    v72 = *(v9 + 16);
  }

  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  ctu::hex(__p, &v72, 0x10, v5);
  rest::PairedDeviceInfoList::getDeviceForCsn();
  if (SBYTE7(v58) < 0)
  {
    operator delete(__p[0]);
  }

  v71 = 0;
  *v69 = 0u;
  v70 = 0u;
  *v67 = 0u;
  v68 = 0u;
  *v65 = 0u;
  v66 = 0u;
  *v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *__p = 0u;
  v58 = 0u;
  cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForEid_sync(a1, &v72, __p);
  *v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  *v54 = 0u;
  *v51 = 0u;
  *v52 = 0u;
  memset(v50, 0, sizeof(v50));
  *v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  sub_100922C88(v37, (a1 + 304), &v47);
  if (LOBYTE(__p[1]) == 1 && v60 != *(&v60 + 1) && *(v60 + 12) == 5)
  {
    v10 = 64;
    goto LABEL_45;
  }

  (*(**(a1 + 160) + 240))(buf);
  if (buf[0] == 1)
  {
    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }

    v11 = *v6;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I has selectable profile", buf, 2u);
    }

    v10 = 15;
    goto LABEL_45;
  }

  if (*(a1 + 256))
  {
    v12 = *v6;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I another user operation is running", buf, 2u);
    }

    v10 = 13;
    goto LABEL_45;
  }

  *buf = 0;
  v40 = 0;
  if (v72 != 0 && (__p[1] & 1) != 0 && (BYTE8(v62) & 1) != 0 && (BYTE8(v36) & 1) != 0)
  {
    (*(**(a1 + 128) + 680))(buf);
    v13 = (*(**buf + 88))(*buf, v37, &v35[9] + 8, &v35[11] + 8);
    if (v40)
    {
      sub_100004A34(v40);
    }

    if (v13)
    {
      if ((__p[1] & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if (HIDWORD(v59) == 1)
      {
        v14 = *v6;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I remote device locked", buf, 2u);
        }

        v10 = 30;
        goto LABEL_45;
      }

      if (BYTE13(v61) == 1 && BYTE12(v61) == 1)
      {
        v19 = *v6;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I card out of memory", buf, 2u);
        }

        v10 = 20;
        goto LABEL_45;
      }

      if (LOBYTE(__p[0]) == 1)
      {
        (*(**(a1 + 160) + 272))(buf);
        v20 = *buf;
        v21 = v40;
        *v38 = buf;
        sub_1000DC8D4(v38);
        if (v20 != v21)
        {
          v22 = *v6;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I tinker paired and pending ALS profile/es", buf, 2u);
          }

LABEL_85:
          v10 = 0;
          goto LABEL_45;
        }
      }

      if (v47 == 1 && subscriber::isSimLocked())
      {
        v23 = *v6;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I sim is pin locked", buf, 2u);
        }

        v10 = 31;
        goto LABEL_45;
      }

      if (*(a1 + 736) == 1)
      {
        v24 = *v6;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I airplane mode is on", buf, 2u);
        }

        v10 = 28;
        goto LABEL_45;
      }

      if (*(a1 + 737))
      {
        if (cellplan::CellularPlanControllerPhone::isRoaming(a1, v37))
        {
          v25 = *v6;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I international roaming", buf, 2u);
          }

          v10 = 14;
          goto LABEL_45;
        }

        (*(**(a1 + 128) + 680))(buf);
        v34 = 0;
        if ((*(**buf + 40))(*buf, &v34, v37) && LOBYTE(__p[0]) == 1)
        {
          *v38 = 11;
          v27 = sub_100007DEC(a1 + 1088, v38);
          v28 = *sub_1000A8C4C(v27, &v37);
          sub_10001021C(&v34);
          if (v40)
          {
            sub_100004A34(v40);
          }

          if (v28 != 2)
          {
            v29 = *v6;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v30 = "#I not entitled for SA-Watch service";
LABEL_121:
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
              goto LABEL_122;
            }

            goto LABEL_122;
          }
        }

        else
        {
          sub_10001021C(&v34);
          if (v40)
          {
            sub_100004A34(v40);
          }
        }

        (*(**(a1 + 128) + 680))(buf);
        v33 = 0;
        if (!(*(**buf + 40))(*buf, &v33, v37) || (__p[0] & 1) != 0)
        {
          sub_10001021C(&v33);
          if (v40)
          {
            sub_100004A34(v40);
          }

          goto LABEL_85;
        }

        *v38 = 10;
        v31 = sub_100007DEC(a1 + 1088, v38);
        v32 = *sub_1000A8C4C(v31, &v37);
        sub_10001021C(&v33);
        if (v40)
        {
          sub_100004A34(v40);
        }

        if (v32 == 2)
        {
          goto LABEL_85;
        }

        v29 = *v6;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v30 = "#I not entitled for Multi-SIM service";
          goto LABEL_121;
        }

LABEL_122:
        v10 = 27;
        goto LABEL_45;
      }

      v26 = *v6;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I cellular data is turned off", buf, 2u);
      }

      v10 = 29;
    }

    else
    {
      v18 = *v6;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I sku mismatch", buf, 2u);
      }

      v10 = 21;
    }
  }

  else
  {
    v15 = *v6;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      v16 = v41 >= 0 ? buf : *buf;
      *v38 = 136315138;
      *&v38[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I csn (%s) not found, skip", v38, 0xCu);
      if (v41 < 0)
      {
        operator delete(*buf);
      }
    }

    v10 = 16;
  }

LABEL_45:
  (*(a3 + 16))(a3, v72, *(&v72 + 1), v10);
  if (v47 == 1)
  {
    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55[1]);
    }

    if (SHIBYTE(v55[0]) < 0)
    {
      operator delete(v54[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[1]);
    }

    if (SHIBYTE(v52[0]) < 0)
    {
      operator delete(v51[0]);
    }

    *buf = v50;
    sub_100034D1C(buf);
    if (v48[1])
    {
      *&v49 = v48[1];
      operator delete(v48[1]);
    }
  }

  if (BYTE8(v62) == 1)
  {
    if (SBYTE7(v70) < 0)
    {
      operator delete(v69[0]);
    }

    if (BYTE8(v66) == 1)
    {
      if (SBYTE7(v68) < 0)
      {
        operator delete(v67[0]);
      }

      BYTE8(v66) = 0;
    }

    if (BYTE8(v64) == 1)
    {
      if (SBYTE7(v66) < 0)
      {
        operator delete(v65[0]);
      }

      BYTE8(v64) = 0;
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(v63[0]);
    }

    BYTE8(v62) = 0;
  }

  result = sub_100520C0C(&__p[1]);
  if (BYTE8(v36) == 1)
  {
    return sub_100DB14E0(v35);
  }

  return result;
}

void sub_10050984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_10001021C(&a9);
  if (a44)
  {
    sub_100004A34(a44);
  }

  sub_1005032D8(&a55);
  sub_100508A1C(&STACK[0x220]);
  if (a38 == 1)
  {
    sub_100DB14E0(&a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005098FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    sub_10032E870();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_100509DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46)
{
  sub_1000DA89C(&a9);
  if (a33)
  {
    sub_100004A34(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a46)
  {
    sub_100004A34(a46);
  }

  _Unwind_Resume(a1);
}

const void **sub_100509EBC(uint64_t a1, uint64_t a2)
{
  sub_10005C7A4((a1 + 48), (a2 + 48));

  return sub_10005C7A4((a1 + 56), (a2 + 56));
}

const void **sub_100509F04(uint64_t a1)
{
  sub_100005978((a1 + 56));

  return sub_100005978((a1 + 48));
}

const void **cellplan::CellularPlanControllerPhone::handleUserEnteredRemoteDataPlanFlowTriggered(uint64_t a1, int a2, char a3, const void **a4, const void **a5, const void **a6, const void **a7, char a8, uint64_t a9)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1174405120;
  v17[2] = sub_10050A0D8;
  v17[3] = &unk_101E53A78;
  v22 = a2;
  v17[4] = a9;
  v17[5] = a1;
  sub_10005C7A4(&v18, a4);
  sub_10005C7A4(&v19, a5);
  sub_10005C7A4(&v20, a6);
  sub_10005C7A4(&v21, a7);
  v23 = a8;
  v24 = a3;
  v27 = 0;
  v28 = 0;
  sub_100004AA0(&v27, (a1 + 8));
  v15 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v27;
  v26 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v17;
  dispatch_async(v15, block);
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  sub_100005978(&v21);
  sub_100005978(&v20);
  sub_100005978(&v19);
  return sub_100005978(&v18);
}

void sub_10050A0D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 80));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I handleUserEnteredRemoteDataPlanFlowTriggered", buf, 2u);
  }

  *buf = 0u;
  v15 = 0u;
  (*(**(v2 + 128) + 680))(&v12);
  (*(*v12 + 48))(buf);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if ((buf[0] & 2) != 0)
  {
    v4 = *(a1 + 80);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1174405120;
    v5[2] = sub_10050A348;
    v5[3] = &unk_101E53A40;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    sub_10005C7A4(&v6, (a1 + 48));
    sub_10005C7A4(&v7, (a1 + 56));
    sub_10005C7A4(&v8, (a1 + 64));
    sub_10005C7A4(&v9, (a1 + 72));
    v10 = *(a1 + 80);
    v11 = *(a1 + 84);
    cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v4, v5);
    sub_100005978(&v9);
    sub_100005978(&v8);
    sub_100005978(&v7);
    sub_100005978(&v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_10050A2F0(_Unwind_Exception *a1)
{
  sub_100005978(v1 + 9);
  sub_100005978(v1 + 8);
  sub_100005978(v1 + 7);
  sub_100005978(v1 + 6);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10050A348(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    sub_10032E870();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_10050A834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  sub_1000DA89C(&a10);
  if (a34)
  {
    sub_100004A34(a34);
  }

  if (a39)
  {
    sub_100004A34(a39);
  }

  _Unwind_Resume(a1);
}

const void **sub_10050A8E0(const void **a1, const void **a2)
{
  sub_10005C7A4(a1 + 6, a2 + 6);
  sub_10005C7A4(a1 + 7, a2 + 7);
  sub_10005C7A4(a1 + 8, a2 + 8);

  return sub_10005C7A4(a1 + 9, a2 + 9);
}

const void **sub_10050A940(const void **a1)
{
  sub_100005978(a1 + 9);
  sub_100005978(a1 + 8);
  sub_100005978(a1 + 7);

  return sub_100005978(a1 + 6);
}

void cellplan::CellularPlanControllerPhone::handleAddNewRemotePlanTapped(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10050AAA0;
  v6[3] = &unk_101E53AD8;
  v7 = a2;
  v6[4] = a4;
  v6[5] = a1;
  v8 = a3;
  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

_BYTE *sub_10050AAA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 48));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleAddNewRemotePlanTapped", buf, 2u);
  }

  v5 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10050ABAC;
  v7[3] = &unk_101E53AB0;
  v7[4] = *(a1 + 32);
  v7[5] = v2;
  v8 = v5;
  v7[6] = v3;
  v9 = *(a1 + 52);
  return cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v5, v7);
}

void sub_10050ABAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v60 = a2;
  v61 = a3;
  v5 = *(a1 + 40);
  if (a4)
  {
    if (a4 == 13)
    {
      memset(buf, 0, sizeof(buf));
      (*(**(v5 + 96) + 64))(buf);
      if (*(a1 + 56) == *(v5 + 1040))
      {
        *v49 = (*(**(v5 + 256) + 104))(*(v5 + 256));
        *&v49[8] = v7;
        v8 = *v49 == v60 && v7 == v61;
        if (v8 && *buf && (*(**buf + 184))(*buf))
        {
          v17 = **(a1 + 48);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I resume previous websheet flow", v49, 2u);
          }

          (*(**buf + 176))(*buf);
        }
      }

      (*(*(a1 + 32) + 16))();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else
    {
      if (a4 == 15)
      {
        v6 = *(*(a1 + 32) + 16);
LABEL_19:

        v6();
        return;
      }

      v10 = *(*(a1 + 32) + 16);

      v10();
    }
  }

  else
  {
    if (!cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(*(a1 + 40), *(a1 + 60), &v60))
    {
      v6 = *(*(a1 + 32) + 16);
      goto LABEL_19;
    }

    (*(**(v5 + 128) + 688))(v49);
    if ((***v49)(*v49, *(a1 + 56)))
    {
      rest::PairedDeviceInfoList::getActiveDevice(buf, (v5 + 896));
      v9 = buf[0] == 1;
      sub_100DB14E0(buf);
    }

    else
    {
      v9 = 0;
    }

    if (*&v49[8])
    {
      sub_100004A34(*&v49[8]);
    }

    if (v9)
    {
      v11 = **(a1 + 48);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I carrier needs VoLTE setting to default", buf, 2u);
      }

      (*(**(v5 + 128) + 688))(buf);
      (*(**buf + 16))(*buf);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      (*(**(v5 + 128) + 688))(buf);
      (*(**buf + 8))(*buf);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = _Block_copy(v12);
    }

    v13 = *(v5 + 1216);
    *(v5 + 1216) = v12;
    if (v13)
    {
      _Block_release(v13);
    }

    v14 = **(a1 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I launch entitlements flow", buf, 2u);
    }

    *(v5 + 1040) = *(a1 + 56);
    v59 = 0u;
    *v58 = 0u;
    *v57 = 0u;
    v56 = 0u;
    *v55 = 0u;
    *v54 = 0u;
    v53 = 0u;
    *__src = 0u;
    v51 = 0u;
    *v49 = 0u;
    *v50 = 0u;
    (*(**(v5 + 160) + 256))(v49);
    if (v49[0] == 1)
    {
      RemoteVinylInfo::findProfile();
      if (v48 != 1)
      {
        v44 = 0;
        v45 = 0;
        sub_10032E870();
      }

      sub_100E3A5D4(buf);
    }

    v15 = *(v5 + 256);
    v16 = *(v5 + 1040);
    v29[0] = 0;
    v42 = 0;
    (**v15)(v15, &v60, v16, v29);
    if (v42 == 1)
    {
      if (v41 < 0)
      {
        operator delete(__p);
      }

      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    *(&v44 + 3) = 0;
    LODWORD(v44) = 0;
    v43 = 0;
    (*(**(v5 + 128) + 120))(&v43);
    if (v43)
    {
      memset(buf, 0, sizeof(buf));
      v47 = 0;
      ctu::cf::assign();
      v18 = *buf;
      v19 = *&buf[8];
      LODWORD(v44) = v47;
      *(&v44 + 3) = *(&v47 + 3);
      v20 = HIBYTE(v47);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }

    sub_100005978(&v43);
    rest::PairedDeviceInfoList::getActiveDevice(buf, (v5 + 896));
    if (buf[0] == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    sub_100DB14E0(buf);
    (*(**(v5 + 128) + 680))(buf);
    v28 = 0;
    v22 = (*(**buf + 152))(*buf, &v28, *(v5 + 1040), v21);
    sub_10001021C(&v28);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    isAnyDeviceInState = rest::PairedDeviceInfoList::isAnyDeviceInState();
    v24 = *(v5 + 208);
    if (v20 < 0)
    {
      sub_100005F2C(v25, v18, v19);
    }

    else
    {
      v25[0] = v18;
      v25[1] = v19;
      *v26 = v44;
      *&v26[3] = *(&v44 + 3);
      v27 = v20;
    }

    (*(*v24 + 88))(v24, v25, 0, v21, isAnyDeviceInState, v22);
    if (v27 < 0)
    {
      operator delete(v25[0]);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (v49[0] == 1)
    {
      if (SHIBYTE(v59) < 0)
      {
        operator delete(v58[1]);
      }

      if (SHIBYTE(v58[0]) < 0)
      {
        operator delete(v57[0]);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55[1]);
      }

      if (SHIBYTE(v55[0]) < 0)
      {
        operator delete(v54[0]);
      }

      if (SBYTE7(v53) < 0)
      {
        operator delete(__src[0]);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[1]);
      }
    }
  }
}

void sub_10050B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69)
  {
    sub_100004A34(a69);
  }

  if (a72)
  {
    sub_100004A34(a72);
  }

  sub_10050BB74(&STACK[0x3F0]);
  _Unwind_Resume(a1);
}

__n128 sub_10050BA94@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
    v4 = (*a1 + a1[1]);
  }

  else
  {
    v4 = a1 + *(a1 + 23);
    v5 = a1;
  }

  if (v5 == v4)
  {
    v6 = *(a1 + 23);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    do
    {
      *v5 = __tolower(*v5);
      ++v5;
    }

    while (v5 != v4);
    v6 = *(a1 + 23);
    if ((v6 & 0x80) == 0)
    {
LABEL_7:
      if (v6 && *(a1 + v6 - 1) == 102)
      {
        v7 = v6 - 1;
        *(a1 + 23) = v7;
        v8 = a1;
LABEL_14:
        *(v8 + v7) = 0;
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  v9 = a1[1];
  if (v9)
  {
    v8 = *a1;
    if (*(*a1 + v9 - 1) == 102)
    {
      v7 = v9 - 1;
      a1[1] = v7;
      goto LABEL_14;
    }
  }

LABEL_15:
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_10050BB74(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *a1 = 0;
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::userDidTapManageRemotePlan(uint64_t a1, __int128 *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1174405120;
  v4[2] = sub_10050BD50;
  v4[3] = &unk_101E53AF8;
  v4[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v6 = *(a2 + 2);
  }

  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

void sub_10050BD50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 63);
  if (v2 < 0)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = *(a1 + 63);
  }

  v4 = *(v1 + 40);
  if (v3)
  {
    v5 = (a1 + 40);
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      if ((v2 & 0x80000000) != 0)
      {
        v6 = *v5;
      }

      *buf = 136315138;
      v30[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I user wants to manage remote plan (%s)", buf, 0xCu);
    }

    v39 = 0uLL;
    v7 = 328;
    if (*(v1 + 1224))
    {
      v7 = 1368;
    }

    v9 = (v1 + v7 + 32);
    v8 = *v9;
    if (v9[1] != *v9)
    {
      v39 = *(v8 + 16);
      bzero(buf, 0x318uLL);
      (*(**(v1 + 160) + 224))(buf);
      if ((buf[0] & 1) == 0)
      {
        if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10177320C();
        }

        goto LABEL_60;
      }

      if (v38 == 1 && (v11 = sub_100922CEC(v35, (v1 + 304)), v12 = v11, (v11 & 0x100000000) != 0))
      {
        v13 = v11 >> 8;
      }

      else
      {
        if ((*(v1 + 1224) & 1) == 0)
        {
          if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101773240();
          }

          goto LABEL_60;
        }

        v12 = 0;
        v13 = 0;
      }

      if (!*(v1 + 256))
      {
        *(v1 + 1040) = v12 | (v13 << 8);
        if (v38 == 1)
        {
          ctu::hex(v26, &v39, 0x10, v10);
          rest::PairedDeviceInfoList::getDeviceNameForCsn();
          p_p = &__p;
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p);
          }

          __p = v24;
          v37 = v25;
          HIBYTE(v25) = 0;
          LOBYTE(v24) = 0;
          if (v28 < 0)
          {
            operator delete(*v26);
          }

          v17 = HIBYTE(v37);
          if (v37 < 0)
          {
            v17 = *(&__p + 1);
          }

          if (!v17)
          {
            if (SHIBYTE(v37) < 0)
            {
              *(&__p + 1) = 11;
              p_p = __p;
            }

            else
            {
              HIBYTE(v37) = 11;
            }

            strcpy(p_p, "Apple Watch");
          }

          cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(v1, *(v1 + 1040), 0, v5, v35);
        }

        v19 = *(v1 + 24);
        object = v19;
        if (v19)
        {
          dispatch_retain(v19);
        }

        sub_100004AA0(v26, (v1 + 8));
        if (*v26)
        {
          v20 = *v26 + 64;
        }

        else
        {
          v20 = 0;
        }

        v22[0] = v20;
        v22[1] = v27;
        *v26 = 0;
        v27 = 0;
        (*(**(v1 + 128) + 680))(&v21);
        sub_1003A5D8C(&object, v22, &v21);
      }

      v24 = 0uLL;
      (*(**(v1 + 96) + 64))(&v24);
      if ((v12 | (v13 << 8)) == *(v1 + 1040) && ((*v26 = (*(**(v1 + 256) + 104))(*(v1 + 256)), v27 = v14, *v26 == v39) ? (v15 = v14 == *(&v39 + 1)) : (v15 = 0), v15 && v24 && (*(*v24 + 184))(v24)))
      {
        v18 = *(v1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I resume previous websheet flow", v26, 2u);
        }

        (*(*v24 + 176))(v24);
      }

      else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773274();
      }

      if (*(&v24 + 1))
      {
        sub_100004A34(*(&v24 + 1));
      }

LABEL_60:
      if (buf[0] == 1)
      {
        sub_1005230E0(&v34);
        if (v33 < 0)
        {
          operator delete(v32);
        }

        if (v31 < 0)
        {
          operator delete(*(v30 + 4));
        }
      }

      return;
    }

    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017732A8();
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017732DC();
  }
}

void sub_10050C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_10050CC20(&a26);
  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v60 = 0uLL;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  __dst = 0u;
  v46 = 0u;
  v11 = 328;
  if (*(a1 + 1224))
  {
    v11 = 1368;
  }

  v12 = a1 + v11;
  if (*(a1 + v11 + 23) < 0)
  {
    sub_100005F2C(&__dst, *v12, *(v12 + 8));
  }

  else
  {
    __dst = *v12;
    *&v46 = *(v12 + 16);
  }

  v13 = *(v12 + 32);
  *(&v46 + 1) = *(v12 + 24);
  v47 = 0uLL;
  *&v48 = 0;
  sub_10027E628(&v47, v13, *(v12 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v12 + 40) - v13) >> 3));
  *(&v48 + 1) = *(v12 + 56);
  LODWORD(v49) = *(v12 + 64);
  if (*(&v47 + 1) == v47 || a3 && BYTE8(v46) != 1)
  {
    v15 = 0;
    goto LABEL_81;
  }

  v60 = *(v47 + 16);
  v44 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  ctu::hex(&__p, &v60, 0x10, v14);
  rest::PairedDeviceInfoList::getDeviceForCsn();
  if (SBYTE7(v51) < 0)
  {
    operator delete(__p);
  }

  v15 = BYTE8(v44);
  if ((BYTE8(v44) & 1) == 0)
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_101773310();
    }

    goto LABEL_79;
  }

  std::string::operator=((a5 + 24), &v36);
  v16 = *(a4 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a4 + 8);
  }

  if (!v16)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(v53, 0, sizeof(v53));
    v51 = 0u;
    v52 = 0u;
    __p = 0u;
    sub_100922C88(a2, (a1 + 304), &__p);
    if (__p == 1)
    {
      std::string::operator=(a5, &v54);
      if (__p)
      {
        if (SHIBYTE(v59) < 0)
        {
          operator delete(*(&v58 + 1));
        }

        if (SBYTE7(v58) < 0)
        {
          operator delete(v57);
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(*(&v55 + 1));
        }

        if (SBYTE7(v55) < 0)
        {
          operator delete(v54);
        }

        *&v31 = v53;
        sub_100034D1C(&v31);
        if (*(&v51 + 1))
        {
          *&v52 = *(&v51 + 1);
          operator delete(*(&v51 + 1));
        }
      }
    }
  }

  v17 = HIBYTE(v38);
  if (v38 < 0)
  {
    v17 = v38;
  }

  if (v17)
  {
    sub_10016C728((a5 + 72), (&v37 + 8));
  }

  v18 = BYTE7(v40);
  if (SBYTE7(v40) < 0)
  {
    v18 = *(&v39 + 1);
  }

  if (v18)
  {
    sub_10016C728((a5 + 104), &v39);
  }

  (*(**(a1 + 128) + 680))(&__p);
  v19 = (*(*__p + 128))(__p, a2);
  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (v19)
  {
    (*(**(a1 + 128) + 680))(&__p);
    *(a5 + 212) = (*(*__p + 176))(__p, &v43[8]);
    *(a5 + 208) = 1;
    if (*(&__p + 1))
    {
      sub_100004A34(*(&__p + 1));
    }

    if (*(&v47 + 1) == v47)
    {
      sub_1002030E0();
    }

    if (*(v47 + 55) < 0)
    {
      sub_100005F2C(v33, *(v47 + 32), *(v47 + 40));
    }

    else
    {
      *v33 = *(v47 + 32);
      v34 = *(v47 + 48);
    }

    v20 = sub_100927A9C(v33);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }

    if (v20)
    {
      *(a5 + 220) = v20;
      *(a5 + 216) = 1;
    }
  }

  v21 = *(a4 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a4 + 8);
  }

  if (v21)
  {
    v22 = *(a5 + 56);
    if (v22 >= *(a5 + 64))
    {
      v23 = sub_1000053A0(a5 + 48, a4);
    }

    else
    {
      sub_10011C7A4((a5 + 48), a4);
      v23 = v22 + 24;
    }

    *(a5 + 56) = v23;
  }

  else
  {
    memset(v32, 0, sizeof(v32));
    sub_10027E628(v32, v47, *(&v47 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v47 + 1) - v47) >> 3));
    cellplan::CellularPlanControllerPhone::getRemoteIccidsForSignup_sync(a1, a2, v32, (a5 + 48));
    *&__p = v32;
    sub_100112048(&__p);
  }

  sub_10052C700((a5 + 136), &off_101E53948);
  if (*(a1 + 1224) == 1)
  {
    *(a5 + 172) = 2;
    *(a5 + 168) = 1;
    v24 = &off_101EC7CA8;
  }

  else
  {
    (***(a1 + 128))(&v30);
    v31 = v30;
    v30 = 0uLL;
    PersonalityIdFromSlotId();
    v25 = sub_1001E8470(a1 + 848, &__p, 0xBu);
    if (SBYTE7(v51) < 0)
    {
      operator delete(__p);
    }

    if (*(&v31 + 1))
    {
      sub_100004A34(*(&v31 + 1));
    }

    v26 = *&v25 & ((v25 & 0x100) >> 8);
    if (*(&v30 + 1))
    {
      sub_100004A34(*(&v30 + 1));
    }

    if (!v26)
    {
      goto LABEL_70;
    }

    v24 = off_101EC7CA0;
  }

  sub_10052C700((a5 + 176), v24);
LABEL_70:
  if ((*(a1 + 1224) & 1) == 0)
  {
    (*(**(a1 + 128) + 680))(&__p);
    v29 = 0;
    v27 = (*(*__p + 152))(__p, &v29, *(a1 + 1040), 1);
    sub_10001021C(&v29);
    if (*(&__p + 1))
    {
      sub_100004A34(*(&__p + 1));
    }

    if (v27)
    {
      *(a5 + 226) = 257;
    }
  }

  if ((*(**(a1 + 128) + 336))(*(a1 + 128), a2) && v47 != *(&v47 + 1) && VinylInfo::isVinylPairingSupported(v47))
  {
    *(a5 + 224) = 257;
  }

LABEL_79:
  if (BYTE8(v44) == 1)
  {
    sub_100DB14E0(v35);
  }

LABEL_81:
  *&v35[0] = &v47;
  sub_100112048(v35);
  if (SBYTE7(v46) < 0)
  {
    operator delete(__dst);
  }

  return v15;
}