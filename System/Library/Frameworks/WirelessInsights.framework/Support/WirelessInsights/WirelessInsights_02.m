void sub_100033E70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AB748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100033EC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 24);
}

WISGeoMetadataRequesterDelegateImpl **sub_100033F08(WISGeoMetadataRequesterDelegateImpl **a1)
{
  *a1 = 0;
  v2 = objc_alloc_init(WISGeoMetadataRequesterDelegateImpl);
  v3 = *a1;
  *a1 = v2;

  return a1;
}

uint64_t sub_100033F5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000BDA8(result, a4);
  }

  return result;
}

void sub_100033FB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100033FE8(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 32);
  group = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_100034044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100034068(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100034084(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_100034094(void *a1)
{
  *a1 = off_1002AB7D0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1000340E0(void *a1)
{
  *a1 = off_1002AB7D0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1000341C0(uint64_t result, uint64_t a2)
{
  *a2 = off_1002AB7D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100034200(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100034210(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100034250(void *a1, id *a2, uint64_t a3, void **a4)
{
  v5 = *a4;
  v6 = *a2;
  v7 = v5;
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v8);
    if (v10)
    {
      v11 = v10;
      if (a1[2])
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100034390;
        v12[3] = &unk_1002AB848;
        v15 = v9;
        v13 = v6;
        v14 = v7;
        sub_10001AB08(v9, v12);
      }

      sub_100008350(v11);
    }
  }
}

uint64_t sub_100034344(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002AB868))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100034390(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v8 = [*(a1 + 40) latLng];
  [v8 lat];
  v5 = v4;
  v6 = [*(a1 + 40) latLng];
  [v6 lng];
  sub_100031D28(v3, v5, v7);
}

void *sub_100034448(void *a1)
{
  *a1 = off_1002AB888;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100034494(void *a1)
{
  *a1 = off_1002AB888;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100034574(uint64_t result, uint64_t a2)
{
  *a2 = off_1002AB888;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000345B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1000345C4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100034604(void *a1, id *a2, uint64_t a3, void **a4)
{
  v5 = *a4;
  v6 = *a2;
  v7 = v5;
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v8);
    if (v10)
    {
      v11 = v10;
      if (a1[2])
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100034744;
        v12[3] = &unk_1002AB848;
        v15 = v9;
        v13 = v6;
        v14 = v7;
        sub_10001AB08(v9, v12);
      }

      sub_100008350(v11);
    }
  }
}

uint64_t sub_1000346F8(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002AB8F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100034744(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v8 = [*(a1 + 40) latLng];
  [v8 lat];
  v5 = v4;
  v6 = [*(a1 + 40) latLng];
  [v6 lng];
  sub_1000324C8(v3, v5, v7);
}

void *sub_1000347FC(void *a1)
{
  *a1 = off_1002AB918;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100034848(void *a1)
{
  *a1 = off_1002AB918;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100034928(uint64_t result, uint64_t a2)
{
  *a2 = off_1002AB918;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100034968(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100034978(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1000349B8(void *a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[2])
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100034AD0;
        v9[3] = &unk_1002AB990;
        v11 = v6;
        v10 = v4;
        sub_10001AB08(v6, v9);
      }

      sub_100008350(v8);
    }
  }
}

uint64_t sub_100034A84(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002AB9B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100034AD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) latLng];
  [v7 lat];
  v4 = v3;
  v5 = [*(a1 + 32) latLng];
  [v5 lng];
  sub_100032814(v2, v4, v6);
}

void *sub_100034B78(void *a1)
{
  *a1 = off_1002AB9D0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100034BC4(void *a1)
{
  *a1 = off_1002AB9D0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100034CA4(uint64_t result, uint64_t a2)
{
  *a2 = off_1002AB9D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100034CE4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100034CF4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100034D34(void *a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[2])
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100034E4C;
        v9[3] = &unk_1002AB990;
        v11 = v6;
        v10 = v4;
        sub_10001AB08(v6, v9);
      }

      sub_100008350(v8);
    }
  }
}

uint64_t sub_100034E00(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002ABA30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100034E4C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) latLng];
  [v7 lat];
  v4 = v3;
  v5 = [*(a1 + 32) latLng];
  [v5 lng];
  sub_100032974(v2, v4, v6);
}

uint64_t sub_100034F14(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100034F50(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100034F8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100035024(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1000350A4(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_100034F8C(v9, v1 + 32);
  sub_100031698(v2, v5, v9, v3, v4);
  sub_10002B8D0(v9);
  sub_100035178(&v8);
  return sub_1000082FC(&v7);
}

void sub_10003514C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_10002B8D0(va2);
  sub_100035178(va1);
  sub_1000082FC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100035178(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002B8D0(v1 + 32);
    operator delete();
  }

  return result;
}

uint64_t *sub_1000351C8(_BYTE **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 104);
  v5 = v1[8];
  sub_100034F8C(v9, (v1 + 16));
  sub_100031698(v2, v5, v9, v3, v4);
  sub_10002B8D0(v9);
  sub_10003529C(&v8);
  return sub_1000082FC(&v7);
}

void sub_100035270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_10002B8D0(va2);
  sub_10003529C(va1);
  sub_1000082FC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10003529C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002B8D0(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1000352EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100035374(result, a4);
  }

  return result;
}

void sub_100035354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000337A0(&a9);
  _Unwind_Resume(a1);
}

void sub_100035374(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1000353B0(a1, a2);
  }

  sub_100033FD0();
}

void sub_1000353B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_1000353F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100034F8C(a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100035458(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = sub_10002B8D0(v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

double *sub_10003547C(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        v9 = v3[5];
        if (v9 >= v5)
        {
          v7 = v3;
        }

        v3 += v9 < v5;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v10 = v7[4];
  if (v6 < v10 || v10 >= v6 && v5 < v7[5])
  {
    return v2;
  }

  return v7;
}

uint64_t sub_100035504(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100033FD0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000353B0(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_100034F8C(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  sub_100035614(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100035684(&v14);
  return v13;
}

void sub_100035600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100035684(va);
  _Unwind_Resume(a1);
}

void sub_100035614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_100035024(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_10002B8D0(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_100035684(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_10002B8D0(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000356D4(uint64_t a1, double *a2)
{
  result = *sub_10003575C(a1, &v3, a2);
  if (!result)
  {
    sub_1000357C0();
  }

  return result;
}

void *sub_10003575C(uint64_t a1, void *a2, double *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 4);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v4;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v4 + 5);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v4 + 1;
      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void sub_100035858(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100035874(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100035874(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 6;
    sub_1000337A0(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t *sub_1000358C4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10001756C(a1, a2);
  v5 = (a2 + 48);
  sub_1000337A0(&v5);
  operator delete(a2);
  return v3;
}

void sub_100035910(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_10003592C()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100035968()
{
  if ((byte_1002D4828 & 1) == 0)
  {
    byte_1002D4828 = 1;
    return __cxa_atexit(sub_100029738, &stru_1002D47D8, &_mh_execute_header);
  }

  return result;
}

void *sub_100035B08(void *a1, void *a2)
{
  result = sub_100035B78(a1, "FileSystemManager", QOS_CLASS_DEFAULT, (qword_1002DBE98 + 16));
  result[5] = -1;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 20) = 1065353216;
  v4 = a2[1];
  result[11] = *a2;
  result[12] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_100035B78(void *a1, const char *a2, dispatch_qos_class_t qos_class, const ctu::OsLogLogger *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), a4);
  return a1;
}

void sub_100035C10(uint64_t a1)
{
  v3 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100036920;
  block[3] = &unk_1002ABB50;
  block[4] = a1;
  block[5] = &v3;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void sub_100035C90(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000369BC;
  block[3] = &unk_1002ABB70;
  block[4] = a1;
  block[5] = &v3;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void sub_100035DE8(void *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    sub_1000081C8(&v2, a1);
    operator new();
  }

  if (a2 != 2)
  {
    operator new();
  }

  operator new();
}

void sub_100035F74(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  sub_1000A91A4(a2, __p);
  sub_10003AF18(__p, a3);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(*__p);
  }

  if (sub_1000CCFEC(a2))
  {
    v6 = a3[1];
    v7 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v6 - *a3) >> 3));
    if (v6 == *a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    sub_100036DC8(*a3, v6, v8, 1);
    v9 = 0;
    v10 = *a3;
    v11 = a3[1];
    if (a2 <= 3)
    {
      v9 = qword_100240B00[a2];
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a3) >> 3);
    if (v10 == v11)
    {
      goto LABEL_20;
    }

    v13 = 0;
    v14 = *a3;
    do
    {
      v13 += *(v14 + 24);
      v14 += 40;
    }

    while (v14 != v11);
    if (v13 <= v9)
    {
LABEL_20:
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = (v10 + 24);
      do
      {
        v17 = *v16;
        v16 += 5;
        v13 -= v17;
        ++v15;
      }

      while (v13 > v9 && v15 < v12);
    }

    v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v20 = -1209600000000;
    if (a2 != 2)
    {
      v20 = 0;
    }

    if (a2 == 3)
    {
      v20 = -172800000000;
    }

    v22 = *a3;
    v21 = a3[1];
    if (v21 == *a3)
    {
      v25 = a3[1];
      if (v15)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = v19.__d_.__rep_ + v20;
      v24 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *a3) >> 3);
      v25 = *a3;
      do
      {
        v26 = v24 >> 1;
        v27 = v25 + 40 * (v24 >> 1);
        v28 = *(v27 + 32);
        v29 = v27 + 40;
        v24 += ~(v24 >> 1);
        if (v28 < v23)
        {
          v25 = v29;
        }

        else
        {
          v24 = v26;
        }
      }

      while (v24);
      if (v15)
      {
        goto LABEL_38;
      }
    }

    if (v25 == v22)
    {
      v30 = *(a1 + 32);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = sub_10001D04C(a2);
        *__p = 136315394;
        *&__p[4] = v31;
        v38 = 2048;
        v39 = v12;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "file:#I Submission directory for %s has %zd files; none to trim", __p, 0x16u);
      }

      sub_100036284(a3);
      return;
    }

LABEL_38:
    v32 = (v25 - v22) >> 3;
    v33 = 0xCCCCCCCCCCCCCCCDLL * v32;
    if (0xCCCCCCCCCCCCCCCDLL * v32 <= v15)
    {
      v34 = v15;
    }

    else
    {
      v34 = 0xCCCCCCCCCCCCCCCDLL * v32;
    }

    v35 = *(a1 + 32);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = sub_10001D04C(a2);
      *__p = 136315906;
      *&__p[4] = v36;
      v38 = 2048;
      v39 = v12 - v34;
      v40 = 2048;
      v41 = v15;
      v42 = 2048;
      v43 = v33;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "file:#I Submission directory for %s has %zd files after trimming (%zd due to size, %zd due to time)", __p, 0x2Au);
      v22 = *a3;
      v21 = a3[1];
    }

    sub_1000362D4(a3, v22 + 40 * v34, v21);
  }
}

void sub_100036278(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_100036284(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1000362D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_100038334(v7, v4);
        v4 = (v4 + 40);
        v7 += 40;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v8 = *(v6 - 17);
      v6 -= 5;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void sub_10003636C(uint64_t a1, unsigned int a2)
{
  sub_100035F74(a1, a2, v4);
  v2 = v4[0];
  v3 = v4[1];
  while (v2 != v3)
  {
    sub_10003A948(v2);
    v2 += 40;
  }

  v5 = v4;
  sub_100036D74(&v5);
}

void sub_1000364A8(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v5[0] = &v6;
  v5[1] = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1000383F0;
  v7[3] = &unk_1002ABCF8;
  v7[4] = a1;
  v7[5] = v5;
  v8 = v7;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000389F8;
    v12 = &unk_1002ABD38;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100038948;
    v12 = &unk_1002ABD18;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void sub_10003664C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100036720);
  __cxa_rethrow();
}

void sub_10003668C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000366E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036720(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 96);
    if (v2)
    {
      sub_100008350(v2);
    }

    sub_10003678C((v1 + 6));
    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_100032AD8(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_10003678C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1000367D8(void *a1)
{
  v3 = a1;
  v1 = *a1;
  sub_1000A92A0(&__p);
  sub_100039EB8(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000368B0(0);
  sub_1000368B0(1u);
  sub_1000368B0(2u);
  sub_1000368B0(3u);
  if (v1)
  {
    operator delete();
  }

  return sub_1000082FC(&v3);
}

void sub_100036868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete();
  }

  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

void sub_1000368B0(unsigned int a1)
{
  if (sub_1000CCFEC(a1))
  {
    sub_1000A91A4(a1, &__p);
    sub_100039EB8(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100036904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100036920(uint64_t a1)
{
  v1 = **(a1 + 40);
  sub_1000A91A4(0, __p);
  sub_10003AA54(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000A91A4(1, __p);
  sub_10003AA54(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *(v1 + 40) = -1;
}

void sub_10003699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000369BC()
{
  sub_1000A92A0(__p);
  sub_10003AA54(__p);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100036A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100036A1C(uint64_t a1)
{
  v1 = a1;
  *(**a1 + 40) = -1;
  operator delete();
}

uint64_t sub_100036A68(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void *sub_100036AA4(void *a1)
{
  *a1 = off_1002ABC00;
  v2 = a1[5];
  if (v2)
  {
    sub_100008350(v2);
  }

  return sub_1000599BC(a1);
}

void sub_100036B00(void *a1)
{
  sub_100036AA4(a1);

  operator delete();
}

void sub_100036B38(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    LOBYTE(v5) = 0;
    do
    {
      sub_100059A20(a1, v2, *(a1 + 25), *(a1 + 26));
      if (v5)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_100059A2C(a1, v2);
      }

      v2 += 24;
    }

    while (v2 != v3);
    if (v5)
    {

      sub_100059A38();
    }
  }
}

void sub_100036BD8(void *a1)
{
  sub_1000599BC(a1);

  operator delete();
}

uint64_t sub_100036C10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3 > 3 || qword_100240B20[*(a1 + 24)] <= a3)
  {
    return 1;
  }

  v4 = v3 >= 2;
  v5 = 0x100000;
  if (!v4)
  {
    v5 = 75000;
  }

  return 2 * (a3 + a2 >= v5);
}

void sub_100036C60(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = a1;
    LOBYTE(a1) = 0;
    do
    {
      if (a1)
      {
        LODWORD(a1) = 1;
      }

      else
      {
        LODWORD(a1) = sub_100059A2C(v4, v2);
      }

      v2 += 24;
    }

    while (v2 != v3);
    if (a1)
    {

      sub_100059A38();
    }
  }
}

void sub_100036CE8(void *a1)
{
  sub_1000599BC(a1);

  operator delete();
}

void sub_100036D20(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      sub_100059A20(a1, v2, 0, *(a1 + 26));
      v2 += 24;
    }

    while (v2 != v3);
  }
}

void sub_100036D74(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100036284(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100036DC8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v104 = (a2 - 40);
  i = a1;
  while (1)
  {
    a1 = i;
    v8 = v6 - i;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - i) >> 3);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:

          sub_100037B9C(i, (i + 40), v104);
          return;
        case 4uLL:

          sub_100037D80(i, i + 40, i + 80, v104);
          return;
        case 5uLL:

          sub_100037ED4(i, i + 40, i + 80, i + 120, v104);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (*(a2 - 16) < *(i + 24))
        {
          v123 = *(i + 16);
          v115 = *i;
          v45 = *v104;
          *(i + 16) = *(a2 - 24);
          *i = v45;
          *(a2 - 24) = v123;
          *v104 = v115;
          v46 = *(i + 24);
          *(i + 24) = *(a2 - 16);
          *(a2 - 16) = v46;
        }

        return;
      }
    }

    if (v8 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v61 = v10 >> 1;
      v62 = v10 >> 1;
      do
      {
        v63 = v62;
        if (v61 >= v62)
        {
          v64 = (2 * v62) | 1;
          v65 = a1 + 40 * v64;
          if (2 * v62 + 2 < v9 && *(v65 + 24) < *(v65 + 64))
          {
            v65 += 40;
            v64 = 2 * v62 + 2;
          }

          v66 = a1 + 40 * v62;
          v67 = *(v65 + 32);
          v68 = *(v66 + 32);
          if (v67 >= v68)
          {
            v69 = *(v66 + 24);
            if (v68 < v67 || *(v65 + 24) >= v69)
            {
              v105 = *v66;
              *&v117[7] = *(v66 + 15);
              *v117 = *(v66 + 8);
              v103 = *(v66 + 23);
              *v66 = 0;
              *(v66 + 8) = 0;
              *(v66 + 16) = 0;
              sub_100038334(v66, v65);
              if (v61 >= v64)
              {
                while (1)
                {
                  v71 = 2 * v64;
                  v64 = (2 * v64) | 1;
                  v70 = a1 + 40 * v64;
                  v72 = v71 + 2;
                  if (v72 < v9 && *(v70 + 24) < *(v70 + 64))
                  {
                    v70 += 40;
                    v64 = v72;
                  }

                  if (*(v70 + 24) < __PAIR128__(v68, v69))
                  {
                    break;
                  }

                  sub_100038334(v65, v70);
                  v65 = v70;
                  if (v61 < v64)
                  {
                    goto LABEL_144;
                  }
                }
              }

              v70 = v65;
LABEL_144:
              if (*(v70 + 23) < 0)
              {
                operator delete(*v70);
              }

              *v70 = v105;
              *(v70 + 8) = *v117;
              *(v70 + 15) = *&v117[7];
              *(v70 + 23) = v103;
              *(v70 + 24) = v69;
              *(v70 + 32) = v68;
            }
          }
        }

        v62 = v63 - 1;
      }

      while (v63);
      v73 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      while (2)
      {
        v74 = 0;
        v75 = a2;
        v76 = *a1;
        *v111 = *(a1 + 8);
        *&v111[7] = *(a1 + 15);
        v106 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v77 = a1;
        v79 = *(a1 + 24);
        v78 = *(a1 + 32);
        do
        {
          v80 = v77;
          v81 = v77 + 40 * v74;
          v77 = v81 + 40;
          v82 = 2 * v74;
          v74 = (2 * v74) | 1;
          v83 = v82 + 2;
          if (v83 < v73 && *(v81 + 64) < *(v81 + 104))
          {
            v77 = v81 + 80;
            v74 = v83;
          }

          sub_100038334(v80, v77);
        }

        while (v74 <= ((v73 - 2) >> 1));
        v84 = (a2 - 40);
        a2 -= 40;
        if (v77 == v75 - 40)
        {
          if (*(v77 + 23) < 0)
          {
            operator delete(*v77);
          }

          *v77 = v76;
          *(v77 + 8) = *v111;
          *(v77 + 15) = *&v111[7];
          *(v77 + 23) = v106;
          *(v77 + 24) = v79;
          *(v77 + 32) = v78;
        }

        else
        {
          sub_100038334(v77, (v75 - 40));
          if (*(v75 - 17) < 0)
          {
            operator delete(*v84);
          }

          *(v75 - 40) = v76;
          *(v75 - 25) = *&v111[7];
          *(v75 - 32) = *v111;
          *(v75 - 17) = v106;
          *(v75 - 16) = v79;
          *(v75 - 8) = v78;
          v85 = v77 + 40 - a1;
          if (v85 >= 41)
          {
            v86 = -2 - 0x3333333333333333 * (v85 >> 3);
            v87 = v86 >> 1;
            v88 = a1 + 40 * (v86 >> 1);
            v89 = *(v88 + 32);
            v90 = *(v77 + 32);
            if (v89 < v90)
            {
              v91 = *(v77 + 24);
              goto LABEL_166;
            }

            if (v90 >= v89)
            {
              v91 = *(v77 + 24);
              if (*(v88 + 24) < v91)
              {
LABEL_166:
                v107 = *v77;
                *v118 = *(v77 + 8);
                *&v118[7] = *(v77 + 15);
                v92 = *(v77 + 23);
                *(v77 + 8) = 0;
                *(v77 + 16) = 0;
                *v77 = 0;
                sub_100038334(v77, (a1 + 40 * (v86 >> 1)));
                if (v86 >= 2)
                {
                  while (1)
                  {
                    v94 = v87 - 1;
                    v87 = (v87 - 1) >> 1;
                    v93 = a1 + 40 * v87;
                    if (*(v93 + 24) >= __PAIR128__(v90, v91))
                    {
                      break;
                    }

                    sub_100038334(v88, (a1 + 40 * v87));
                    v88 = a1 + 40 * v87;
                    if (v94 <= 1)
                    {
                      goto LABEL_170;
                    }
                  }
                }

                v93 = v88;
LABEL_170:
                if (*(v93 + 23) < 0)
                {
                  operator delete(*v93);
                }

                *v93 = v107;
                *(v93 + 8) = *v118;
                *(v93 + 15) = *&v118[7];
                *(v93 + 23) = v92;
                *(v93 + 24) = v91;
                *(v93 + 32) = v90;
              }
            }
          }
        }

        if (v73-- <= 2)
        {
          return;
        }

        continue;
      }
    }

    v11 = i + 40 * (v9 >> 1);
    if (v8 < 0x1401)
    {
      sub_100037B9C((a1 + 40 * (v9 >> 1)), a1, v104);
    }

    else
    {
      sub_100037B9C(a1, (a1 + 40 * (v9 >> 1)), v104);
      sub_100037B9C((a1 + 40), (a1 + 40 * (v9 >> 1) - 40), (a2 - 80));
      sub_100037B9C((a1 + 80), (a1 + 40 + 40 * (v9 >> 1)), (a2 - 120));
      sub_100037B9C((a1 + 40 * (v9 >> 1) - 40), (a1 + 40 * (v9 >> 1)), (a1 + 40 + 40 * (v9 >> 1)));
      v120 = *(a1 + 16);
      v112 = *a1;
      v12 = *(v11 + 16);
      *a1 = *v11;
      *(a1 + 16) = v12;
      *(v11 + 16) = v120;
      *v11 = v112;
      v13 = *(a1 + 24);
      *(a1 + 24) = *(v11 + 24);
      *(v11 + 24) = v13;
    }

    --a3;
    if (a4)
    {
      v14 = *(a1 + 32);
      goto LABEL_19;
    }

    v15 = *(a1 - 8);
    v14 = *(a1 + 32);
    if (v15 >= v14 && ((v16 = *(a1 + 24), v14 < v15) || *(a1 - 16) >= v16))
    {
      v34 = *a1;
      *v110 = *(a1 + 8);
      *&v110[7] = *(a1 + 15);
      v35 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v36 = *(a2 - 8);
      if (__PAIR128__(v14, v16) < *(a2 - 16))
      {
        v37 = *(a1 + 72);
        if (v14 >= v37)
        {
          v38 = (a1 + 64);
          do
          {
            if (v37 >= v14 && v16 < *v38)
            {
              break;
            }

            v37 = v38[6];
            v38 += 5;
          }

          while (v14 >= v37);
          i = (v38 - 3);
        }

        else
        {
          i = a1 + 40;
        }
      }

      else
      {
          ;
        }
      }

      v39 = a2;
      if (i < a2)
      {
        for (j = (a2 - 16); v14 < v36 || v36 >= v14 && v16 < *j; j -= 5)
        {
          v36 = *(j - 4);
        }

        v39 = j - 3;
      }

      while (i < v39)
      {
        v122 = *(i + 16);
        v114 = *i;
        v41 = *v39;
        *(i + 16) = v39[2];
        *i = v41;
        v39[2] = v122;
        *v39 = v114;
        v42 = *(i + 24);
        *(i + 24) = *(v39 + 3);
        *(v39 + 3) = v42;
        v43 = *(i + 72);
        if (v14 >= v43)
        {
          v44 = (i + 64);
          do
          {
            if (v43 >= v14 && v16 < *v44)
            {
              break;
            }

            v43 = v44[6];
            v44 += 5;
          }

          while (v14 >= v43);
          i = (v44 - 3);
        }

        else
        {
          i += 40;
        }

        do
        {
          v39 -= 5;
        }

        while (__PAIR128__(v14, v16) < *(v39 + 3));
      }

      if (i - 40 != a1)
      {
        sub_100038334(a1, (i - 40));
      }

      if (*(i - 17) < 0)
      {
        operator delete(*(i - 40));
      }

      a4 = 0;
      *(i - 40) = v34;
      v6 = a2;
      *(i - 25) = *&v110[7];
      *(i - 32) = *v110;
      *(i - 17) = v35;
      *(i - 16) = v16;
      *(i - 8) = v14;
    }

    else
    {
LABEL_19:
      v17 = 0;
      v18 = *a1;
      *v109 = *(a1 + 8);
      *&v109[7] = *(a1 + 15);
      v19 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v20 = *(a1 + 24);
      while (*(a1 + v17 + 64) < __PAIR128__(v14, v20))
      {
        v17 += 40;
      }

      v21 = a1 + v17 + 40;
      if (v17)
      {
        v22 = (a2 - 40);
        v23 = *(a2 - 8);
        v24 = (a2 - 16);
        if (v23 >= v14)
        {
          do
          {
            if (v14 >= v23 && *v24 < v20)
            {
              break;
            }

            v23 = *(v24 - 4);
            v24 -= 5;
          }

          while (v23 >= v14);
LABEL_27:
          v22 = v24 - 3;
        }
      }

      else
      {
        v22 = a2;
        if (v21 < a2)
        {
          v22 = (a2 - 40);
          v25 = *(a2 - 8);
          if (v25 >= v14)
          {
            v24 = (a2 - 16);
            v22 = (a2 - 40);
            while (1)
            {
              v26 = v24 - 3;
              if (v14 >= v25)
              {
                v27 = *v24 < v20 || v21 >= v26;
                if (v27)
                {
                  break;
                }
              }

              else if (v21 >= v26)
              {
                v22 = v24 - 3;
                break;
              }

              v22 -= 5;
              v25 = *(v24 - 4);
              v24 -= 5;
              if (v25 < v14)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }

      i = v21;
      if (v21 < v22)
      {
        v28 = v22;
        do
        {
          v121 = *(i + 16);
          v113 = *i;
          v29 = *v28;
          *(i + 16) = v28[2];
          *i = v29;
          v28[2] = v121;
          *v28 = v113;
          v13 = *(v28 + 3);
          v30 = *(i + 24);
          *(i + 24) = v13;
          *(v28 + 3) = v30;
          do
          {
            i += 40;
          }

          while (*(i + 24) < __PAIR128__(v14, v20));
          v31 = *(v28 - 1);
          if (v31 >= v14)
          {
            v32 = v28 - 2;
            do
            {
              if (v14 >= v31 && *v32 < v20)
              {
                break;
              }

              v31 = *(v32 - 4);
              v32 -= 5;
            }

            while (v31 >= v14);
            v28 = v32 - 3;
          }

          else
          {
            v28 -= 5;
          }
        }

        while (i < v28);
      }

      if (i - 40 != a1)
      {
        v13 = sub_100038334(a1, (i - 40));
      }

      if (*(i - 17) < 0)
      {
        operator delete(*(i - 40));
      }

      *(i - 40) = v18;
      *(i - 25) = *&v109[7];
      *(i - 32) = *v109;
      *(i - 17) = v19;
      *(i - 16) = v20;
      *(i - 8) = v14;
      v27 = v21 >= v22;
      v6 = a2;
      if (!v27)
      {
        goto LABEL_60;
      }

      v33 = sub_100038090(a1, i - 40);
      if (sub_100038090(i, a2))
      {
        a2 = i - 40;
        if (v33)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v33)
      {
LABEL_60:
        sub_100036DC8(a1, i - 40, a3, a4 & 1, v13);
        a4 = 0;
      }
    }
  }

  v47 = (i + 40);
  v49 = i == a2 || v47 == a2;
  if (a4)
  {
    if (!v49)
    {
      v50 = 0;
      v51 = i;
      do
      {
        v52 = v51;
        v51 = v47;
        v53 = v52[9];
        if (*(v52 + 4) < *(v52 + 3))
        {
          v54 = v52[5];
          *v116 = v52[6];
          *&v116[7] = *(v52 + 55);
          v55 = *(v52 + 63);
          v47[1] = 0;
          v47[2] = 0;
          *v47 = 0;
          v56 = v52[8];
          sub_100038334(v47, v52);
          v57 = a1;
          if (v52 != a1)
          {
            v58 = v50;
            while (1)
            {
              v59 = a1 + v58;
              v60 = *(a1 + v58 - 8);
              if (v53 >= v60)
              {
                if (v60 < v53)
                {
                  v57 = a1 + v58;
                  goto LABEL_128;
                }

                if (v56 >= *(v59 - 16))
                {
                  break;
                }
              }

              v52 -= 5;
              sub_100038334(v59, (v59 - 40));
              v58 -= 40;
              if (!v58)
              {
                v57 = a1;
                goto LABEL_128;
              }
            }

            v57 = v52;
          }

LABEL_128:
          if (*(v57 + 23) < 0)
          {
            operator delete(*v57);
          }

          *v57 = v54;
          *(v57 + 8) = *v116;
          *(v57 + 15) = *&v116[7];
          *(v57 + 23) = v55;
          *(v57 + 24) = v56;
          *(v57 + 32) = v53;
        }

        v47 = v51 + 5;
        v50 += 40;
      }

      while (v51 + 5 != a2);
    }
  }

  else if (!v49)
  {
    do
    {
      v96 = a1;
      a1 = v47;
      v97 = *(v96 + 72);
      if (*(v96 + 64) < *(v96 + 24))
      {
        v98 = *v47;
        *v119 = *(v96 + 48);
        *&v119[7] = *(v96 + 55);
        v99 = *(v96 + 63);
        v47[1] = 0;
        v47[2] = 0;
        *v47 = 0;
        v100 = *(v96 + 64);
        do
        {
          v101 = v96;
          sub_100038334(v96 + 40, v96);
          v96 = v101 - 40;
        }

        while (__PAIR128__(v97, v100) < *(v101 - 16));
        if (*(v101 + 23) < 0)
        {
          operator delete(*v101);
        }

        *v101 = v98;
        *(v101 + 8) = *v119;
        *(v101 + 15) = *&v119[7];
        *(v101 + 23) = v99;
        *(v101 + 24) = v100;
        *(v101 + 32) = v97;
      }

      v47 = (a1 + 40);
    }

    while (a1 + 40 != a2);
  }
}

__int128 *sub_100037B9C(__int128 *result, __int128 *a2, __int128 *a3)
{
  v3 = (a2 + 2);
  v4 = *(a2 + 4);
  v5 = a2 + 3;
  v6 = (result + 2);
  v7 = result + 3;
  if (__PAIR128__(v4, *v5) >= *(result + 24))
  {
    if (*(a3 + 24) >= __PAIR128__(v4, *v5))
    {
      return result;
    }

    v11 = *(a2 + 2);
    v12 = *a2;
    v13 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v13;
    *a3 = v12;
    *(a3 + 2) = v11;
    v14 = *(a2 + 24);
    *(a2 + 24) = *(a3 + 24);
    *(a3 + 24) = v14;
    v15 = *(a2 + 4);
    if (v15 >= *v6 && (*v6 < v15 || *v5 >= *v7))
    {
      return result;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
LABEL_12:
    v28 = *v7;
    *v7 = *v5;
    *v5 = v28;
    v29 = *v6;
    *v6 = *v3;
    *v3 = v29;
    return result;
  }

  if (*(a3 + 24) < __PAIR128__(v4, *v5))
  {
    v8 = *(result + 2);
    v9 = *result;
    v10 = *(a3 + 2);
    *result = *a3;
    *(result + 2) = v10;
    *a3 = v9;
    *(a3 + 2) = v8;
    v5 = a3 + 3;
LABEL_11:
    v3 = (a3 + 2);
    goto LABEL_12;
  }

  v19 = *(result + 2);
  v20 = *result;
  v21 = *(a2 + 2);
  *result = *a2;
  *(result + 2) = v21;
  *a2 = v20;
  *(a2 + 2) = v19;
  v22 = *(result + 3);
  v23 = *(result + 4);
  *(result + 24) = *(a2 + 24);
  *(a2 + 3) = v22;
  *(a2 + 4) = v23;
  v24 = *(a3 + 4);
  if (*(a3 + 24) < __PAIR128__(v23, v22))
  {
    v25 = *(a2 + 2);
    v26 = *a2;
    v27 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v27;
    *a3 = v26;
    *(a3 + 2) = v25;
    v7 = a2 + 3;
    v5 = a3 + 3;
    v6 = (a2 + 2);
    goto LABEL_11;
  }

  return result;
}

__n128 sub_100037D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100037B9C(a1, a2, a3);
  if (*(a4 + 24) < *(a3 + 24))
  {
    v9 = *(a3 + 16);
    v10 = *a3;
    v11 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v11;
    *a4 = v10;
    *(a4 + 16) = v9;
    result = *(a4 + 24);
    v12 = *(a3 + 24);
    *(a3 + 24) = result;
    *(a4 + 24) = v12;
    if (*(a3 + 24) < *(a2 + 24))
    {
      v13 = *(a2 + 16);
      v14 = *a2;
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *a3 = v14;
      *(a3 + 16) = v13;
      result = *(a3 + 24);
      v16 = *(a2 + 24);
      *(a2 + 24) = result;
      *(a3 + 24) = v16;
      if (*(a2 + 24) < *(a1 + 24))
      {
        v17 = *(a1 + 16);
        v18 = *a1;
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *a2 = v18;
        *(a2 + 16) = v17;
        result = *(a2 + 24);
        v20 = *(a1 + 24);
        *(a1 + 24) = result;
        *(a2 + 24) = v20;
      }
    }
  }

  return result;
}

__n128 sub_100037ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = sub_100037D80(a1, a2, a3, a4).n128_u64[0];
  if (*(a5 + 24) < *(a4 + 24))
  {
    v11 = *(a4 + 16);
    v12 = *a4;
    v13 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v13;
    *a5 = v12;
    *(a5 + 16) = v11;
    result = *(a5 + 24);
    v14 = *(a4 + 24);
    *(a4 + 24) = result;
    *(a5 + 24) = v14;
    if (*(a4 + 24) < *(a3 + 24))
    {
      v15 = *(a3 + 16);
      v16 = *a3;
      v17 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v17;
      *a4 = v16;
      *(a4 + 16) = v15;
      result = *(a4 + 24);
      v18 = *(a3 + 24);
      *(a3 + 24) = result;
      *(a4 + 24) = v18;
      if (*(a3 + 24) < *(a2 + 24))
      {
        v19 = *(a2 + 16);
        v20 = *a2;
        v21 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v21;
        *a3 = v20;
        *(a3 + 16) = v19;
        result = *(a3 + 24);
        v22 = *(a2 + 24);
        *(a2 + 24) = result;
        *(a3 + 24) = v22;
        if (*(a2 + 24) < *(a1 + 24))
        {
          v23 = *(a1 + 16);
          v24 = *a1;
          v25 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v25;
          *a2 = v24;
          *(a2 + 16) = v23;
          result = *(a2 + 24);
          v26 = *(a1 + 24);
          *(a1 + 24) = result;
          *(a2 + 24) = v26;
        }
      }
    }
  }

  return result;
}

BOOL sub_100038090(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100037B9C(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        sub_100037D80(a1, a1 + 40, a1 + 80, a2 - 40);
        return 1;
      case 5:
        sub_100037ED4(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 16) < *(a1 + 24))
      {
        v5 = a2 - 40;
        v6 = *(a1 + 16);
        v7 = *a1;
        v8 = *(a2 - 24);
        *a1 = *(a2 - 40);
        *(a1 + 16) = v8;
        *v5 = v7;
        *(v5 + 16) = v6;
        v9 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 16);
        *(a2 - 16) = v9;
      }

      return 1;
    }
  }

  v10 = a1 + 80;
  sub_100037B9C(a1, (a1 + 40), (a1 + 80));
  v11 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *(v11 + 32);
    v15 = *(v10 + 32);
    if (v14 >= v15)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 24);
      if (v16 >= *(v10 + 24))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 24);
    }

    v22 = *v11;
    *v23 = *(v11 + 8);
    *&v23[7] = *(v11 + 15);
    v17 = *(v11 + 23);
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    sub_100038334(v11, v10);
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 72);
      if (v14 >= v20)
      {
        break;
      }

LABEL_19:
      v10 -= 40;
      sub_100038334(v19 + 80, (v19 + 40));
      v18 -= 40;
      if (v18 == -80)
      {
        v10 = a1;
        goto LABEL_25;
      }
    }

    if (v20 >= v14)
    {
      if (v16 >= *(v19 + 64))
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v10 = a1 + v18 + 80;
LABEL_25:
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    *v10 = v22;
    *(v10 + 8) = *v23;
    *(v10 + 15) = *&v23[7];
    *(v10 + 23) = v17;
    *(v10 + 24) = v16;
    *(v10 + 32) = v14;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 40;
      v11 += 40;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 40 == a2;
  }
}

__n128 sub_100038334(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

void sub_100038388(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  sub_10003636C(v1, 2u);
  sub_10003636C(v1, 3u);
  operator delete();
}

void sub_1000383F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = v3[1];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (sub_1000CCFEC(**v3))
  {
    sub_1000A91A4(**v3, __p);
    sub_10003AD70(__p, &v31);
    v29 = v3;
    v30 = v4;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v5 = v31;
    for (i = v32; v5 != i; v5 += 2)
    {
      if (*(v5 + 23) < 0)
      {
        sub_10000FFF8(__dst, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        v34 = *(v5 + 2);
        *__dst = v7;
      }

      v9 = *(a2 + 8);
      v8 = *(a2 + 16);
      if (v9 >= v8)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100033FD0();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        v37 = a2;
        if (v14)
        {
          sub_100038714(a2, v14);
        }

        v15 = 24 * v11;
        v16 = *__dst;
        *(v15 + 16) = v34;
        *v15 = v16;
        __dst[1] = 0;
        v34 = 0;
        __dst[0] = 0;
        v17 = 24 * v11 + 24;
        v18 = *(a2 + 8) - *a2;
        v19 = 24 * v11 - v18;
        memcpy((v15 - v18), *a2, v18);
        v20 = *a2;
        *a2 = v19;
        *(a2 + 8) = v17;
        v21 = *(a2 + 16);
        *(a2 + 16) = 0;
        *&__p[16] = v20;
        v36 = v21;
        *__p = v20;
        *&__p[8] = v20;
        sub_10003876C(__p);
        v22 = SHIBYTE(v34);
        *(a2 + 8) = v17;
        if (v22 < 0)
        {
          operator delete(__dst[0]);
        }
      }

      else
      {
        v10 = *__dst;
        *(v9 + 16) = v34;
        *v9 = v10;
        *(a2 + 8) = v9 + 24;
      }
    }

    v23 = *(v30 + 4);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = v31;
      v24 = v32;
      v27 = *a2;
      v26 = *(a2 + 8);
      v28 = sub_10001D04C(**v29);
      *__p = 134218498;
      *&__p[4] = (v24 - v25) >> 5;
      *&__p[12] = 2048;
      *&__p[14] = 0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 3);
      *&__p[22] = 2080;
      v36 = v28;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "file:#I AppleCare directory has %zd files; returning %zd as matching %s", __p, 0x20u);
    }

    *__p = &v31;
    sub_100038800(__p);
  }
}

void sub_1000386A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a21 = &a12;
  sub_100038800(&a21);
  sub_1000388A4(&a12);
  _Unwind_Resume(a1);
}

void sub_100038714(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_10003876C(uint64_t a1)
{
  sub_1000387A4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000387A4(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_100038800(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100038854(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100038854(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1000388A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000388F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000388F8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_100038948(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_1000389B8(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_1000388A4(&v5);
}

void sub_1000389B8(uint64_t a1)
{
  if (*a1)
  {
    sub_1000388F8(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1000389F8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_1000389B8(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_1000388A4(&v5);
}

uint64_t sub_100038A68(uint64_t result, int a2, void *a3)
{
  *result = a2;
  v3 = a3[1];
  *(result + 8) = *a3;
  *(result + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  if (a2 == 3973376)
  {
    operator new();
  }

  if (a2 == 827648)
  {
    operator new();
  }

  return result;
}

void *sub_100038C10(void *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_100008350(v4);
  }

  return a1;
}

BOOL sub_100038CA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  memset(v21, 0, sizeof(v21));
  wis::GetProtobufTag(v21, **(a1 + 8), (*(*(a1 + 8) + 8) - **(a1 + 8)), a3);
  v4 = *a1;
  if (*a1 != 3973376)
  {
    if (v4 == 827648)
    {
      v6 = *(a1 + 24);
      v5 = (a1 + 24);
      if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v6, (**(v5 - 2) + v21[0]), *(*(v5 - 2) + 8) - (LODWORD(v21[0]) + **(v5 - 2))))
      {
        v7 = 68;
        v8 = 64;
        v9 = 20;
        goto LABEL_7;
      }
    }

    else
    {
      v16 = *(qword_1002DBE98 + 56);
      result = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_1001FCB68(v4, v16);
    }

    return 0;
  }

  v10 = *(a1 + 32);
  v5 = (a1 + 32);
  if ((wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v10, (**(v5 - 3) + v21[0]), *(*(v5 - 3) + 8) - (LODWORD(v21[0]) + **(v5 - 3))) & 1) == 0)
  {
    return 0;
  }

  v7 = 92;
  v8 = 88;
  v9 = 72;
LABEL_7:
  v11 = *v5;
  v12 = *(*v5 + v9);
  if (v12 >= 2)
  {
    v17 = *(qword_1002DBE98 + 56);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_1001FCAD0(v12, v17);
    return 0;
  }

  v13 = *(v11 + 16);
  v14 = *(v11 + v7);
  result = 1;
  if (v13 <= 10)
  {
    if (v13 != 3)
    {
      if (v13 != 9)
      {
        return result;
      }

LABEL_20:
      if (v14 < -114)
      {
        return result;
      }

      goto LABEL_23;
    }

    if (*(v11 + v8) < -103)
    {
      return result;
    }

LABEL_23:
    v18 = *(qword_1002DBE98 + 56);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v19 = sub_100038F0C(v12);
    if ((v13 - 3) > 9)
    {
      v20 = "????";
    }

    else
    {
      v20 = off_1002ABD58[v13 - 3];
    }

    *buf = 67109634;
    v23 = 0;
    v24 = 2080;
    v25 = v19;
    v26 = 2080;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "metric:#I Did not meet the rssi and signal_quality thresholds - needsUpdate = %{BOOL}d, srv_status = %s, sys_mode = %s", buf, 0x1Cu);
    return 0;
  }

  if (v13 == 12)
  {
    goto LABEL_20;
  }

  if (v13 == 11 && v14 >= -103)
  {
    goto LABEL_23;
  }

  return result;
}

const char *sub_100038F0C(int a1)
{
  if (a1 <= 2)
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return "SYS_SRV_STATUS_NONE";
      }

      if (!a1)
      {
        return "SYS_SRV_STATUS_NO_SRV";
      }

      return "????";
    }

    if (a1 == 1)
    {
      return "SYS_SRV_STATUS_LIMITED";
    }

    else
    {
      return "SYS_SRV_STATUS_SRV";
    }
  }

  else
  {
    if (a1 > 4)
    {
      switch(a1)
      {
        case 5:
          return "SYS_SRV_STATUS_MAX";
        case 100:
          return "SYS_SRV_STATUS_LOW_POWER_MODE";
        case 101:
          return "SYS_SRV_STATUS_CMAS_ONLY_MODE";
      }

      return "????";
    }

    if (a1 == 3)
    {
      return "SYS_SRV_STATUS_LIMITED_REGIONAL";
    }

    else
    {
      return "SYS_SRV_STATUS_PWR_SAVE";
    }
  }
}

void sub_100038FE0(unsigned int *a1, unsigned int **a2, unint64_t a3)
{
  if (*a2)
  {
    memset(v51, 0, sizeof(v51));
    wis::GetProtobufTag(v51, **(a1 + 1), (*(*(a1 + 1) + 8) - **(a1 + 1)), a3);
    sub_100007ECC(&v50, "");
    if (*a1 == 3973376)
    {
      if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(*(a1 + 4), (**(a1 + 1) + v51[0]), *(*(a1 + 1) + 8) - (LODWORD(v51[0]) + **(a1 + 1))))
      {
        v7 = *(a1 + 4);
        v6 = *(v7 + 16);
        std::string::operator=(&v50, *(v7 + 32));
LABEL_8:
        if ((v6 - 3) > 9)
        {
          v8 = 0;
        }

        else
        {
          v8 = byte_100240B50[v6 - 3];
        }

        v9 = sub_1000CBFBC(*a2);
        v10 = sub_1000CC00C(*a2);
        v11 = sub_10003970C(&v50, &__str);
        v12 = sub_100039C0C(v11, &__str);
        v13 = sub_100039C0C(v12, &v49);
        if ((v12 & 0x100000000) != 0 && (v14 = v13, (v13 & 0x100000000) != 0))
        {
          v15 = sub_1000CC050(*a2, v12, v13, v8);
          v16 = v15;
          if ((v15 & 0x100000000) != 0)
          {
            v19 = HIDWORD(v15) & 1;
LABEL_21:
            sub_10000A448(&v44);
            v20 = sub_100008EEC(&v44, "out_of_service_rate: ", 21);
            if ((v9 & 0x100) != 0)
            {
              std::to_string(&__p, v9);
            }

            else
            {
              sub_100007ECC(&__p, "N/A");
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            sub_100008EEC(v20, p_p, size);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v23 = sub_100008EEC(&v44, " limited_service_rate: ", 23);
            if ((v10 & 0x100) != 0)
            {
              std::to_string(&__p, v10);
            }

            else
            {
              sub_100007ECC(&__p, "N/A");
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &__p;
            }

            else
            {
              v24 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v25 = __p.__r_.__value_.__l.__size_;
            }

            sub_100008EEC(v23, v24, v25);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v26 = sub_100008EEC(&v44, " average_rsrp: ", 15);
            if (v19)
            {
              std::to_string(&__p, v16);
            }

            else
            {
              sub_100007ECC(&__p, "N/A");
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &__p;
            }

            else
            {
              v27 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v28 = __p.__r_.__value_.__l.__size_;
            }

            sub_100008EEC(v26, v27, v28);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v29 = *(qword_1002DBE98 + 56);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              std::stringbuf::str();
              v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              *buf = 136315138;
              v53 = v31;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "metric:#I Cellular coverage stats = %s", buf, 0xCu);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            if (*a1 == 3973376)
            {
              if ((v9 & 0x100) != 0)
              {
                v40 = *(a1 + 4);
                *(v40 + 116) |= 0x200000u;
                *(v40 + 100) = v9;
              }

              if ((v10 & 0x100) != 0)
              {
                v41 = *(a1 + 4);
                *(v41 + 116) |= 0x400000u;
                *(v41 + 104) = v10;
              }

              v42 = *(a1 + 4);
              if (v19)
              {
                *(v42 + 29) |= 0x800000u;
                *(v42 + 27) = v16;
              }

              wis::serializeMetric(&__p, v42, *a1, v30);
              v35 = *(a1 + 1);
              v36 = *v35;
              *(v35 + 8) = *v35;
              v38 = __p.__r_.__value_.__l.__size_;
              v37 = __p.__r_.__value_.__r.__words[0];
              v39 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
              if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
              {
                goto LABEL_78;
              }
            }

            else
            {
              if (*a1 != 827648)
              {
LABEL_82:
                if (v47 < 0)
                {
                  operator delete(v46[7].__locale_);
                }

                std::locale::~locale(v46);
                std::ostream::~ostream();
                std::ios::~ios();
                if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v49.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                goto LABEL_88;
              }

              if ((v9 & 0x100) != 0)
              {
                v32 = *(a1 + 3);
                *(v32 + 108) |= 0x20000u;
                *(v32 + 92) = v9;
              }

              if ((v10 & 0x100) != 0)
              {
                v33 = *(a1 + 3);
                *(v33 + 108) |= 0x40000u;
                *(v33 + 96) = v10;
              }

              v34 = *(a1 + 3);
              if (v19)
              {
                *(v34 + 27) |= 0x80000u;
                *(v34 + 25) = v16;
              }

              wis::serializeMetric(&__p, v34, *a1, v30);
              v35 = *(a1 + 1);
              v36 = *v35;
              *(v35 + 8) = *v35;
              v38 = __p.__r_.__value_.__l.__size_;
              v37 = __p.__r_.__value_.__r.__words[0];
              v39 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
              if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
              {
LABEL_78:
                if (v38 != v37)
                {
                  memmove(v36, v37, v38 - v37);
                  v37 = __p.__r_.__value_.__r.__words[0];
                }

                if (v37)
                {
                  __p.__r_.__value_.__l.__size_ = v37;
                  operator delete(v37);
                }

                goto LABEL_82;
              }
            }

            sub_10000CA0C(v35, v39);
            v38 = __p.__r_.__value_.__l.__size_;
            v37 = __p.__r_.__value_.__r.__words[0];
            v36 = **(a1 + 1);
            goto LABEL_78;
          }

          v17 = *(qword_1002DBE98 + 56);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_1001FCBE0(v12, v14, v17);
          }
        }

        else
        {
          v18 = *(qword_1002DBE98 + 56);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            sub_1001FCC68(&v50, v18);
          }

          v16 = 0;
        }

        LODWORD(v19) = 0;
        goto LABEL_21;
      }
    }

    else if (*a1 == 827648 && (wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(*(a1 + 3), (**(a1 + 1) + v51[0]), *(*(a1 + 1) + 8) - (LODWORD(v51[0]) + **(a1 + 1))) & 1) != 0)
    {
      v5 = *(a1 + 3);
      v6 = *(v5 + 16);
      std::string::operator=(&v50, *(v5 + 56));
      goto LABEL_8;
    }

LABEL_88:
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100039660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100039C48(&a15);
  sub_100039D84(v15 - 208);
  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10003970C@<X0>(uint64_t *a1@<X1>, char *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a1[1];
  }

  if (v3)
  {
    v33 = a2;
    sub_10000A448(&v39);
    v5 = *(a1 + 23);
    v6 = a1[1];
    if ((v5 & 0x80000000) == 0)
    {
      v6 = *(a1 + 23);
    }

    if (v6)
    {
      v7 = 0;
      v8 = v5 >> 63;
      do
      {
        if (v8)
        {
          v9 = *a1;
        }

        else
        {
          v9 = a1;
        }

        v10 = *(v9 + v7);
        v11 = v39;
        *(&v41[-1].__locale_ + *(v39 - 3)) = *(&v41[-1].__locale_ + *(v39 - 3)) & 0xFFFFFFB5 | 8;
        *(&v41[1].__locale_ + *(v11 - 3)) = 2;
        v12 = &v39 + *(v11 - 3);
        if (*(v12 + 36) == -1)
        {
          std::ios_base::getloc((&v39 + *(v11 - 3)));
          v13 = std::locale::use_facet(&v36, &std::ctype<char>::id);
          (v13->__vftable[2].~facet_0)(v13, 32);
          std::locale::~locale(&v36);
        }

        *(v12 + 36) = 48;
        std::ostream::operator<<();
        ++v7;
        v14 = *(a1 + 23);
        v8 = v14 >> 63;
        if ((v14 & 0x80000000) != 0)
        {
          v14 = a1[1];
        }
      }

      while (v7 < v14);
    }

    std::stringbuf::str();
    v15 = v38;
    v16 = v38;
    v17 = v37;
    if ((v38 & 0x80u) == 0)
    {
      locale = &v36;
    }

    else
    {
      locale = v36.__locale_;
    }

    if ((v38 & 0x80u) == 0)
    {
      v19 = v38;
    }

    else
    {
      v19 = v37;
    }

    if (v19)
    {
      v20 = &locale[v19 - 1];
      v21 = v33;
      if (v20 > locale)
      {
        v22 = locale + 1;
        do
        {
          v23 = *(v22 - 1);
          *(v22 - 1) = *v20;
          *v20-- = v23;
        }

        while (v22++ < v20);
        v15 = v38;
        v17 = v37;
        v16 = v38;
      }
    }

    else
    {
      v21 = v33;
    }

    if ((v16 & 0x80u) != 0)
    {
      v15 = v17;
    }

    if (v15 == 6)
    {
      sub_100007ECC(&v35, "");
      sub_100007ECC(&v34, "");
      if ((v38 & 0x80u) == 0)
      {
        v26 = &v36;
      }

      else
      {
        v26 = v36.__locale_;
      }

      std::string::push_back(&v35, v26[4]);
      if ((v38 & 0x80u) == 0)
      {
        v27 = &v36;
      }

      else
      {
        v27 = v36.__locale_;
      }

      std::string::push_back(&v35, v27[5]);
      if ((v38 & 0x80u) == 0)
      {
        v28 = &v36;
      }

      else
      {
        v28 = v36.__locale_;
      }

      std::string::push_back(&v35, v28[2]);
      if ((v38 & 0x80u) == 0)
      {
        v29 = &v36;
      }

      else
      {
        v29 = v36.__locale_;
      }

      std::string::push_back(&v34, *v29);
      if ((v38 & 0x80u) == 0)
      {
        v30 = &v36;
      }

      else
      {
        v30 = v36.__locale_;
      }

      std::string::push_back(&v34, v30[1]);
      if ((v38 & 0x80u) == 0)
      {
        v31 = &v36;
      }

      else
      {
        v31 = v36.__locale_;
      }

      if (__tolower(v31[3]) != 102)
      {
        v32 = &v36;
        if ((v38 & 0x80u) != 0)
        {
          v32 = v36.__locale_;
        }

        std::string::push_back(&v34, v32[3]);
      }

      sub_100039E20(v21, &v35, &v34);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v35.__r_.__value_.__r.__words[0] = "";
      v35.__r_.__value_.__l.__size_ = "";
      sub_100039DC8(v21, &v35.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(v36.__locale_);
    }

    if (v42 < 0)
    {
      operator delete(v41[7].__locale_);
    }

    std::locale::~locale(v41);
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  else
  {
    v39 = "";
    v40 = "";
    return sub_100039DC8(a2, &v39);
  }
}

void sub_100039B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22.__locale_);
  }

  sub_100039C48(&a28);
  _Unwind_Resume(a1);
}

void sub_100039C38(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100039C30);
}

uint64_t sub_100039C48(uint64_t a1)
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

uint64_t sub_100039D68@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100039D84(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_100039DC8(_BYTE *a1, char **a2)
{
  v4 = sub_100007ECC(a1, *a2);
  sub_100007ECC(v4 + 24, a2[1]);
  return a1;
}

void sub_100039E04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100039E20(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_10000FFF8(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_100039E9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100039EB8(const std::string *a1)
{
  v2 = 0;
  while (1)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v5 = size - v2;
    if (size >= v2 && v5 >= 1)
    {
      v6 = (v4 + size);
      v7 = (v4 + v2);
      do
      {
        v8 = memchr(v7, 47, v5);
        if (!v8)
        {
          break;
        }

        if (*v8 == 47)
        {
          if (v8 != v6)
          {
            v2 = &v8[-v4 + 1];
            if (&v8[-v4] != -1)
            {
              goto LABEL_17;
            }
          }

          break;
        }

        v7 = v8 + 1;
        v5 = v6 - v7;
      }

      while (v6 - v7 >= 1);
    }

    v2 = -1;
LABEL_17:
    std::string::basic_string(&v28, a1, 0, v2, &v27);
    v9 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
    if (stat(v9, &v27))
    {
      break;
    }

    if ((v27.st_mode & 0x4000) == 0)
    {
      v25 = *(qword_1002DBE98 + 24);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v26 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v28.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v30 = v26;
      v16 = "file.helpers:#I Unable to create directory %s: already exists and is not a directory.";
      v23 = v25;
      v24 = 12;
      goto LABEL_47;
    }

LABEL_28:
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (v2 == -1)
    {
      return 1;
    }
  }

  if (*__error() != 2)
  {
    v17 = *(qword_1002DBE98 + 24);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_48;
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    v13 = *__error();
    v14 = __error();
    v15 = strerror(*v14);
    *buf = 136315650;
    v30 = v12;
    v31 = 1024;
    v32 = v13;
    v33 = 2080;
    v34 = v15;
    v16 = "file.helpers:#I Unable to stat %s with errno %d (%s).";
LABEL_42:
    v23 = v17;
    v24 = 28;
LABEL_47:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v16, buf, v24);
    goto LABEL_48;
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v28;
  }

  else
  {
    v10 = v28.__r_.__value_.__r.__words[0];
  }

  if (!mkdir(v10, 0x1EDu))
  {
    goto LABEL_28;
  }

  v17 = *(qword_1002DBE98 + 24);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v28;
    }

    else
    {
      v19 = v28.__r_.__value_.__r.__words[0];
    }

    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315650;
    v30 = v19;
    v31 = 1024;
    v32 = v20;
    v33 = 2080;
    v34 = v22;
    v16 = "file.helpers:#I Unable to create directory %s with errno %d (%s).";
    goto LABEL_42;
  }

LABEL_48:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10003A1C4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(exception_object);
}

void sub_10003A1F0(uint64_t *a1)
{
  v2 = *(qword_1002DBE98 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = *a1;
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "file.helpers:#I Trying to open %s", &v4, 0xCu);
  }

  operator new();
}

void (__cdecl ***sub_10003A36C(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_10003A4F4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_10003A614(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_10003A7A0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

off_t sub_10003A7D8(const char *a1)
{
  v1 = a1;
  memset(&v7, 0, sizeof(v7));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v7))
  {
    return v7.st_size;
  }

  v2 = *(qword_1002DBE98 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    *buf = 136315650;
    v9 = v1;
    v10 = 1024;
    v11 = v3;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "file.helpers:#E Unable to stat %s with error %d (%s) for counting bytes (submission dir)", buf, 0x1Cu);
  }

  return 0;
}

BOOL sub_10003A948(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 23);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v3 = unlink(a1);
  v4 = *(qword_1002DBE98 + 24);
  if (v3)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 24), OS_LOG_TYPE_ERROR))
    {
      sub_1001FCDD8(v2, v1, v4);
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 24), OS_LOG_TYPE_INFO))
  {
    if (*(v1 + 23) >= 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = *v1;
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "file.helpers:#I Deleted %s", &v7, 0xCu);
  }

  return v3 == 0;
}

DIR *sub_10003AA54(const char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v3 = result;
    for (i = readdir(result); i; i = readdir(v3))
    {
      v5 = i->d_name[0];
      if (v5 != 46)
      {
        goto LABEL_20;
      }

      v5 = i->d_name[1];
      if (!i->d_name[1])
      {
        continue;
      }

      if (v5 == 46)
      {
        if (i->d_name[2])
        {
          goto LABEL_11;
        }
      }

      else
      {
LABEL_20:
        if (46 != v5)
        {
LABEL_11:
          if (v1[23] < 0)
          {
            sub_10000FFF8(__p, *v1, *(v1 + 1));
          }

          else
          {
            *__p = *v1;
            v7 = *(v1 + 2);
          }

          ctu::path_join_impl();
          sub_10003A948(__p);
          if (SHIBYTE(v7) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    return closedir(v3);
  }

  return result;
}

void sub_10003AB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003AB64(uint64_t *a1)
{
  sub_1000A92A0(__p);
  *v7 = *__p;
  v8 = v6;
  __p[1] = 0;
  v6 = 0;
  __p[0] = 0;
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  ctu::path_join_impl();
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10003A948(v7);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_10003ABF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003AC30(const char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v2 = opendir(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = readdir(v2);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = v5->d_name[0];
      if (v7 != 46)
      {
        goto LABEL_26;
      }

      v7 = v5->d_name[1];
      if (!v5->d_name[1])
      {
        goto LABEL_12;
      }

      if (v7 == 46)
      {
        if (v5->d_name[2])
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_26:
        if (46 != v7)
        {
LABEL_14:
          if (v1[23] < 0)
          {
            sub_10000FFF8(__p, *v1, *(v1 + 1));
          }

          else
          {
            *__p = *v1;
            v11 = *(v1 + 2);
          }

          ctu::path_join_impl();
          v8 = sub_10003A7D8(__p);
          if (SHIBYTE(v11) < 0)
          {
            operator delete(__p[0]);
          }

          v6 += v8;
        }
      }

LABEL_12:
      v5 = readdir(v3);
      if (!v5)
      {
        goto LABEL_22;
      }
    }
  }

  v6 = 0;
LABEL_22:
  closedir(v3);
  return v6;
}

void sub_10003AD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003AD70(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_10000FFF8(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v11 = *(a1 + 16);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_10003B0E0(&v13, __p, 0);
  v9 = 0;
  v3 = v13;
  if (v13)
  {
    v4 = 0;
    do
    {
      if ((!v3 || !*(v3 + 6)) && (!v4 || !*(v4 + 6)))
      {
        break;
      }

      sub_1001F89DC((v3 + 2), 0, &rep);
      if (rep == 2)
      {
        v5 = v13;
        v6 = sub_1001FA478(v13 + 8, 0);
        rep = std::chrono::system_clock::from_time_t(v6).__d_.__rep_;
        v7 = a2[1];
        if (v7 >= a2[2])
        {
          v8 = sub_10003B238(a2, (v5 + 2), &rep);
        }

        else
        {
          sub_10003B1C4(a2, (v5 + 2), &rep);
          v8 = v7 + 32;
        }

        a2[1] = v8;
      }

      sub_1001F90A0(&v13, 0);
      v4 = v9;
      v3 = v13;
    }

    while (v13 != v9);
  }

  sub_10003B124(&v9);
  sub_10003B124(&v13);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10003AEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10003AE8CLL);
  }

  *(v17 - 40) = v16;
  sub_100038800((v17 - 40));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10003AF18(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_10000FFF8(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v12 = *(a1 + 16);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_10003B0E0(&v14, __p, 0);
  v10 = 0;
  v3 = v14;
  if (v14)
  {
    v4 = 0;
    do
    {
      if ((!v3 || !*(v3 + 6)) && (!v4 || !*(v4 + 6)))
      {
        break;
      }

      sub_1001F89DC((v3 + 2), 0, &v13);
      if (v13 == 2)
      {
        v5 = v14;
        v13 = sub_1001FA3E0((v14 + 2), 0);
        v6 = sub_1001FA478(v14 + 8, 0);
        rep = std::chrono::system_clock::from_time_t(v6).__d_.__rep_;
        v7 = a2[1];
        if (v7 >= a2[2])
        {
          v8 = sub_10003B4C8(a2, (v5 + 2), &v13, &rep);
        }

        else
        {
          sub_10003B44C(a2, (v5 + 2), &v13, &rep);
          v8 = v7 + 40;
        }

        a2[1] = v8;
      }

      sub_1001F90A0(&v14, 0);
      v4 = v10;
      v3 = v14;
    }

    while (v14 != v10);
  }

  sub_10003B124(&v10);
  sub_10003B124(&v14);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10003B074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10003B050);
  }

  *(v17 - 40) = v16;
  sub_100036D74((v17 - 40));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10003B0E0(uint64_t *a1, uint64_t a2, char a3)
{
  *a1 = 0;
  sub_1001F8B94(a1, a2, a3, 0);
  return a1;
}

atomic_uint **sub_10003B124(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    sub_10003B178(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10003B178(uint64_t a1)
{
  sub_1001F8A60((a1 + 48), (a1 + 56), v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_10003B1C4(void *result, __int128 *a2, void *a3)
{
  v4 = result;
  v5 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_10000FFF8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  *(v5 + 24) = *a3;
  v4[1] = v5 + 32;
  return result;
}

uint64_t sub_10003B238(uint64_t a1, __int128 *a2, void *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100033FD0();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v25 = a1;
  if (v9)
  {
    sub_10003B370(a1, v9);
  }

  v10 = 32 * v3;
  v21 = 0;
  v22 = v10;
  v11 = 0;
  v23 = v10;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
    v11 = v24;
  }

  else
  {
    v12 = *a2;
    *(v10 + 16) = *(a2 + 2);
    *v10 = v12;
    v13 = v10;
    v14 = v10;
  }

  *(v10 + 24) = *a3;
  v15 = v14 + 32;
  v16 = *(a1 + 8) - *a1;
  v17 = v13 - v16;
  memcpy((v13 - v16), *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = v15;
  v19 = *(a1 + 16);
  *(a1 + 16) = v11;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  sub_10003B3B8(&v21);
  return v15;
}

void sub_10003B35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003B3B8(va);
  _Unwind_Resume(a1);
}

void sub_10003B370(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_10003B3B8(uint64_t a1)
{
  sub_10003B3F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10003B3F0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_10003B44C(void *result, __int128 *a2, void *a3, uint64_t *a4)
{
  v6 = result;
  v7 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_10000FFF8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *a4;
  *(v7 + 24) = *a3;
  *(v7 + 32) = v9;
  v6[1] = v7 + 40;
  return result;
}

uint64_t sub_10003B4C8(uint64_t a1, __int128 *a2, void *a3, uint64_t *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_100033FD0();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v10 = 0x666666666666666;
  }

  else
  {
    v10 = v5;
  }

  v27 = a1;
  if (v10)
  {
    sub_10003B628(a1, v10);
  }

  v11 = 40 * v4;
  v23 = 0;
  v24 = v11;
  v12 = 0;
  v25 = v11;
  v26 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(v11, *a2, *(a2 + 1));
    v14 = v24;
    v15 = v25;
    v12 = v26;
  }

  else
  {
    v13 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v13;
    v14 = v11;
    v15 = v11;
  }

  v16 = *a4;
  *(v11 + 24) = *a3;
  *(v11 + 32) = v16;
  v17 = v15 + 40;
  v18 = *(a1 + 8) - *a1;
  v19 = v14 - v18;
  memcpy((v14 - v18), *a1, v18);
  v20 = *a1;
  *a1 = v19;
  *(a1 + 8) = v17;
  v21 = *(a1 + 16);
  *(a1 + 16) = v12;
  v25 = v20;
  v26 = v21;
  v23 = v20;
  v24 = v20;
  sub_10003B680(&v23);
  return v17;
}

void sub_10003B614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003B680(va);
  _Unwind_Resume(a1);
}

void sub_10003B628(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_10003B680(uint64_t a1)
{
  sub_10003B6B8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10003B6B8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

char *sub_10003B714(char *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

void sub_10003B724(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10003B964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fmServingCellsToServingCellsWithContext:v3 cells:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [*(a1 + 32) getOrCreateLocationOfInterestAt:v5 WithContext:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = [*(a1 + 32) getOrCreateLocationOfInterestAt:v7 WithContext:v3];
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) handleOutOfServiceAreaWithContext:v3 prevVisit:v6 curVisit:v8 nextVisit:0 subscriptionID:*(a1 + 64) prevCells:v4 startTime:*(a1 + 72) entryLocation:*(a1 + 80) exitLocation:*(a1 + 88)];
  if (v9)
  {
    v24 = v6;
    v26 = v4;
    v10 = *(a1 + 32);
    v25 = v8;
    v28 = [*(a1 + 96) subscriptionID];
    v23 = [*(a1 + 96) radioAccessTechnology];
    v22 = [*(a1 + 96) cellID];
    v21 = [*(a1 + 96) mnc];
    v20 = [*(a1 + 96) mcc];
    v19 = [*(a1 + 96) bandInfo];
    v27 = [*(a1 + 96) tacOrLac];
    v11 = [*(a1 + 96) arfcnOrUarfcn];
    v12 = [*(a1 + 96) bandwidth];
    v13 = [*(a1 + 96) pci];
    v18 = [*(a1 + 96) deploymentType];
    v14 = [*(a1 + 96) timestamp];
    v17 = [v10 getOrCreateServingCellWithContext:v3 subscriptionID:v28 radioAccessTechnology:v23 cellID:v22 mnc:v21 mcc:v20 bandInfo:v19 tacOrLac:v27 arfcnOrUarfcn:v11 bandwidth:v12 pci:v13 deploymentType:v18 timestamp:v14];

    v15 = *(a1 + 32);
    v8 = v25;
    v16 = [*(a1 + 96) timestamp];
    [v15 updateServingCellSeenWithContext:v3 cell:v17 atTimestamp:v16];

    [*(a1 + 32) updateOutOfServiceAreaAfterLeavingWithContext:v3 outOfServiceArea:v9 startTime:*(a1 + 72) nextCell:v17 duration:*(a1 + 80) entryLocation:*(a1 + 88) exitLocation:*(a1 + 104)];
    v4 = v26;
    v6 = v24;
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FCEA8();
  }
}

void sub_10003BE84(uint64_t a1, void *a2)
{
  v3 = a2;
  v45 = a1;
  v47 = [*(a1 + 32) getOrCreateLocationOfInterestAt:*(a1 + 40) WithContext:v3];
  if (v47)
  {
    v4 = [*(a1 + 40) timestamp];
    v5 = +[FMConfiguration sharedInstance];
    v6 = [v4 dateByAddingTimeInterval:{(-60 * objc_msgSend(v5, "OOSNextVisitCutoffMinutes"))}];

    v42 = v6;
    if (v6)
    {
      v7 = [*(v45 + 32) getOutOfServiceAreasWithoutNextVisitWithContext:v3 After:v6];
      v8 = v7;
      if (v7)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v41 = v7;
        obj = v7;
        v46 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (v46)
        {
          v44 = *v55;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v55 != v44)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v54 + 1) + 8 * i);
              v10 = *(v45 + 32);
              v11 = [v9 prevVisit];
              v12 = [v9 curVisit];
              v13 = [v9 subscriptionID];
              v14 = [v9 prevCells];
              LOWORD(v40) = [v9 timeOfDay];
              v15 = [v10 getOutOfServiceAreaWithContext:v3 prevVisit:v11 curVisit:v12 nextVisit:v47 subscriptionID:v13 prevCells:v14 timeOfDay:v40];

              if (v15)
              {
                v16 = [v9 lastSeen];
                [v15 setLastSeen:v16];

                [v15 setSeenCount:{objc_msgSend(v15, "seenCount") + objc_msgSend(v9, "seenCount")}];
                v17 = [v9 durations];
                [v15 addDurations:v17];

                v18 = [v15 durations];
                v19 = [v18 count];
                v20 = +[FMConfiguration sharedInstance];
                LODWORD(v19) = v19 > [v20 OOSDurationsInDatabase];

                if (v19)
                {
                  v21 = [v15 durations];
                  v22 = [v21 copy];
                  v23 = [v15 durations];
                  v24 = [v23 count];
                  v25 = +[FMConfiguration sharedInstance];
                  v26 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, v24 - [v25 OOSDurationsInDatabase]);
                  v27 = [v22 objectsAtIndexes:v26];

                  v52 = 0u;
                  v53 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v28 = v27;
                  v29 = [v28 countByEnumeratingWithState:&v50 objects:v60 count:16];
                  if (v29)
                  {
                    v30 = *v51;
                    do
                    {
                      for (j = 0; j != v29; j = j + 1)
                      {
                        if (*v51 != v30)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v32 = *(*(&v50 + 1) + 8 * j);
                        v33 = *(qword_1002DBE98 + 136);
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                        {
                          v34 = [v32 seconds];
                          *buf = 67109120;
                          v59 = v34;
                          _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+OOSPredictor]:#D Deleting duration: %d", buf, 8u);
                        }

                        [v15 removeDurationsObject:v32];
                        [v3 deleteObject:v32];
                      }

                      v29 = [v28 countByEnumeratingWithState:&v50 objects:v60 count:16];
                    }

                    while (v29);
                  }
                }

                v35 = [v9 nextCells];
                [v15 addNextCells:v35];

                v36 = [v9 nextCells];
                [v9 removeNextCells:v36];

                [v3 deleteObject:v9];
              }

              else
              {
                [v9 setNextVisit:v47];
              }
            }

            v46 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
          }

          while (v46);
        }

        v49 = 0;
        [v3 save:&v49];
        v37 = v49;
        if (v37)
        {
          v38 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [v37 localizedDescription];
            sub_1001FCEDC(v39, buf, v38);
          }
        }

        v8 = v41;
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1001FCF34();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FCF68();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FCF9C();
  }
}

void sub_10003E154(id a1, NSUUID *a2, FMTimeSeriesContextState *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(FMTimeSeriesContextState *)v6 subscriptionID];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Airplane mode status changed, cancelling all active anomalies for state %@", &v10, 0xCu);
  }

  v9 = [(FMTimeSeriesContextState *)v6 activeAnomalies];
  [v9 removeAllObjects];
}

void sub_10003EF44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 cellChanges];
  v6 = [v5 firstObject];

  v7 = [v6 toCell];
  v8 = *(a1 + 48);
  v9 = [v4 subscriptionID];
  if (v8 == [v9 unsignedIntValue] && v7)
  {
    v10 = [v7 gci];
    v11 = [v10 isEqualToString:*(a1 + 32)];

    if (v11)
    {
      v12 = [*(a1 + 40) fmCoreTelephonyController];
      v13 = [v4 contextUUID];
      v14 = [v12 isDataContextUuid:v13];

      if (v14)
      {
        v15 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v4 contextUUID];
          sub_1001FD708(v16, a1, &v28, v15);
        }

        [*(a1 + 40) updatedCongestionState:*(a1 + 52)];
      }

      if (*(a1 + 52) == 1)
      {
        v17 = [FMTSAnomalyCongestion alloc];
        v18 = [v6 time];
        v19 = [v6 timestamp];
        v20 = [*(a1 + 40) curLocation];
        v21 = [*(a1 + 40) trimEventsAndCopyForState:v4 basedOnTimestamp:{objc_msgSend(v6, "timestamp")}];
        v22 = [(FMTSAnomaly *)v17 initWithTime:v18 timestamp:v19 location:v20 events:v21];

        [*(a1 + 40) startAnomaly:v22 forState:v4];
      }

      else
      {
        v24 = [v4 activeAnomalies];
        v25 = [v24 objectForKey:&off_1002BEE20];

        if (v25)
        {
          [v25 endAtTimestamp:{objc_msgSend(v6, "timestamp")}];
          [*(a1 + 40) endAnomaly:v25 forState:v4];
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1001FD774();
        }
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v23 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = [v4 subscriptionID];
    v27 = *(a1 + 32);
    v28 = 138412802;
    v29 = v7;
    v30 = 2112;
    v31 = v26;
    v32 = 2112;
    v33 = v27;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Cell %@ of subscription ID %@ does not match metric for GCI %@", &v28, 0x20u);
  }

LABEL_13:
}

void sub_10003F800(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (*(a1 + 56) == 1)
  {
    v6 = [FMTSEventVisitStarted alloc];
  }

  else
  {
    v6 = [FMTSEventVisitEnded alloc];
  }

  v7 = *(a1 + 48);
  [*(a1 + 32) latitude];
  v9 = v8;
  [*(a1 + 32) longitude];
  v11 = v10;
  [*(a1 + 32) accuracy];
  v13 = [(FMTSEventVisitStarted *)v6 initWithTimestamp:v7 latitude:v9 longitude:v11 accuracy:v12];
  [*(a1 + 40) addEvent:v13 toState:v5];
}

id sub_10004154C(uint64_t a1)
{
  v23[0] = @"num_prediction_sources";
  v21 = [*(a1 + 32) predictionSources];
  v24[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 count]);
  v23[1] = @"num_prev_times_until_anomaly";
  v20 = v24[0];
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) numPrevTimesUntilAnomaly]);
  v24[1] = v19;
  v23[2] = @"num_prev_predictions";
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) numPrevPredictions]);
  v24[2] = v18;
  v23[3] = @"num_prev_predictions_correct";
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) numPrevPredictionCorrect]);
  v24[3] = v17;
  v23[4] = @"predicted_anomaly_type";
  v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) predictedAnomalyType]);
  v24[4] = v16;
  v23[5] = @"predicted_time_until_anomaly";
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) predictedTimeUntilAnomaly]);
  v24[5] = v15;
  v23[6] = @"predicted_duration";
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) predictedDuration]);
  v24[6] = v14;
  v23[7] = @"confidence_anomaly";
  [*(a1 + 32) confidenceAnomaly];
  v13 = [NSNumber numberWithDouble:?];
  v24[7] = v13;
  v23[8] = @"confidence_duration";
  [*(a1 + 32) confidenceDuration];
  v12 = [NSNumber numberWithDouble:?];
  v24[8] = v12;
  v23[9] = @"confidence_time_until_anomaly";
  [*(a1 + 32) confidenceTimeUntilAnomaly];
  v11 = [NSNumber numberWithDouble:?];
  v24[9] = v11;
  v23[10] = @"did_anomaly_happen";
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) didAnomalyHappen]);
  v24[10] = v10;
  v23[11] = @"actual_time_until_anomaly";
  if ([*(a1 + 32) didAnomalyHappen])
  {
    +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) actualTimeUntilAnomaly]);
  }

  else
  {
    +[NSNull null];
  }
  v25 = ;
  v23[12] = @"actual_duration";
  if ([*(a1 + 32) didAnomalyHappen])
  {
    +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) actualDuration]);
  }

  else
  {
    +[NSNull null];
  }
  v2 = ;
  v26 = v2;
  v23[13] = @"duration_prediction_error";
  if ([*(a1 + 32) didAnomalyHappen])
  {
    [NSNumber numberWithInt:*(a1 + 56)];
  }

  else
  {
    +[NSNull null];
  }
  v3 = ;
  v27 = v3;
  v23[14] = @"duration_prediction_error_percent";
  if ([*(a1 + 32) didAnomalyHappen])
  {
    [NSNumber numberWithDouble:*(a1 + 40)];
  }

  else
  {
    +[NSNull null];
  }
  v4 = ;
  v28 = v4;
  v23[15] = @"time_until_anomaly_prediction_error";
  if ([*(a1 + 32) didAnomalyHappen])
  {
    [NSNumber numberWithInt:*(a1 + 60)];
  }

  else
  {
    +[NSNull null];
  }
  v5 = ;
  v29 = v5;
  v23[16] = @"time_until_anomaly_prediction_error_percent";
  if ([*(a1 + 32) didAnomalyHappen])
  {
    [NSNumber numberWithDouble:*(a1 + 48)];
  }

  else
  {
    +[NSNull null];
  }
  v6 = ;
  v30 = v6;
  v7 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:17];

  return v7;
}

uint64_t sub_1000427FC(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_100042814(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  v10[0] = 0;
  v10[1] = v2;
  v10[2] = v2 + v3;
  v11 = v3;
  v12 = 0;
  v13 = 0;
  v15 = xmmword_100240B70;
  v14 = v3;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v17 = 0;
  v18 = 0;
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v6[0] = 0;
  v6[1] = 0;
  v6[2] = 0xFFFFFFFFLL;
  v4 = sub_100042918(v10, v6, v7);
  sub_1000447B8(&v9);
  if (v8)
  {
    sub_100008350(v8);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v10);
  return v4;
}

void sub_1000428D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000433F4(va);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream((v5 - 96));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1000428C0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100042918(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_12:
    v15 = this;
    v16 = 0;
    goto LABEL_111;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v7 + 1;
  if (!TagFallback)
  {
    goto LABEL_12;
  }

LABEL_4:
  v9 = wis::reflect::decodeTag(TagFallback, a2);
  v10 = v9;
  v11 = HIDWORD(v9);
  *v55 = *a2;
  v56 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *v55 = v51;
  v56 = v52;
  BuiltinType = MetadataHelper::getBuiltinType();
  DecodingType = wis::reflect::getDecodingType();
  v14 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v10 > 1u)
      {
        if (v10 == 2)
        {
          goto LABEL_110;
        }

        if (v10 == 5)
        {
          v55[0] = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v55))
          {
            goto LABEL_110;
          }

          __p[0] = v55[0];
        }
      }

      else if (v10)
      {
        if (v10 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || (*v29 & 0x8000000000000000) != 0)
        {
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
          {
            goto LABEL_110;
          }
        }

        else
        {
          __p[0] = *v29;
          *(this + 1) = v29 + 1;
        }
      }

      switch(BuiltinType)
      {
        case 1:
        case 15:
          wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
          break;
        case 2:
        case 16:
          wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
          break;
        case 3:
        case 4:
        case 6:
        case 7:
        case 9:
        case 10:
        case 11:
        case 12:
        case 17:
        case 18:
        case 20:
        case 21:
        case 23:
        case 24:
        case 25:
        case 26:
          break;
        case 5:
        case 19:
          wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
          break;
        case 8:
        case 22:
          wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
          break;
        default:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
      }

LABEL_79:
      *v55 = *a2;
      v56 = *(a2 + 16);
      Subfield = MetricFileMetadataHelper::getSubfield();
      if (!Subfield || (*(Subfield + 52) & 0x100) == 0)
      {
        goto LABEL_112;
      }

      v3 = *(Subfield + 48);
      return v3 & 1;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_110;
      }

      LODWORD(v45) = 0;
      v26 = *(this + 1);
      if (v26 >= *(this + 2) || *v26 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45))
        {
          goto LABEL_110;
        }
      }

      else
      {
        LODWORD(v45) = *v26;
        *(this + 1) = v26 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v54 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v55 = *a2;
        v56 = *(a2 + 16);
        v37 = MetricFileMetadataHelper::getSubfield();
        if (v37 && (*(v37 + 52) & 0x100) != 0)
        {
          v3 = *(v37 + 48);
        }

        else
        {
          v3 = 0;
        }
      }

      if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
LABEL_145:
        if ((String & 1) == 0)
        {
          goto LABEL_110;
        }

        return v3 & 1;
      }

      v42 = __p[0];
LABEL_144:
      operator delete(v42);
      goto LABEL_145;
    }

    if (v10 <= 1u)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_110;
        }

        __p[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p))
        {
          goto LABEL_110;
        }
      }

      else
      {
        __p[0] = 0;
        if (!sub_1000448B4(this, __p))
        {
          goto LABEL_110;
        }
      }

      goto LABEL_79;
    }

    if (v10 != 2)
    {
      if (v10 != 5)
      {
        goto LABEL_110;
      }

      LODWORD(__p[0]) = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, __p))
      {
        goto LABEL_110;
      }

      goto LABEL_79;
    }

    LODWORD(v45) = 0;
    if ((sub_1000448E0(this, &v45) & 1) == 0)
    {
      goto LABEL_110;
    }

    sub_100045794(__p, v45);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v45);
    if ((String & 1) == 0)
    {
LABEL_136:
      v42 = __p[0];
      if (!__p[0])
      {
        goto LABEL_145;
      }

      __p[1] = __p[0];
      goto LABEL_144;
    }

LABEL_127:
    *v55 = *a2;
    v56 = *(a2 + 16);
    v41 = MetricFileMetadataHelper::getSubfield();
    if (v41 && (*(v41 + 52) & 0x100) != 0)
    {
      v3 = *(v41 + 48);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_136;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_110;
      }

      v50 = 0;
      v27 = *(this + 1);
      if (v27 >= *(this + 2) || (v28 = *v27, (v28 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
        {
          goto LABEL_110;
        }

        v28 = v50;
      }

      else
      {
        v50 = *v27;
        *(this + 1) = v27 + 1;
      }

      v45 = this;
      LODWORD(v46) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
      ++*(this + 14);
      v48 = this;
      *v55 = *a2;
      v56 = *(a2 + 16);
      *__p = v51;
      v54 = v52;
      v3 = sub_1000449EC(a3, this, v55, v11, __p);
      sub_100044ACC(&v48);
      v38 = *(this + 14);
      v39 = __OFSUB__(v38, 1);
      v40 = v38 - 1;
      if (v40 < 0 == v39)
      {
        *(this + 14) = v40;
      }

      sub_100045760(&v45);
      return v3 & 1;
    }

    LODWORD(v45) = 0;
    v30 = *(this + 1);
    if (v30 >= *(this + 2) || (v31 = *v30, (v31 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45))
      {
        goto LABEL_110;
      }

      v31 = v45;
    }

    else
    {
      LODWORD(v45) = *v30;
      *(this + 1) = v30 + 1;
    }

    sub_100045794(__p, v31);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v45);
    if ((String & 1) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_127;
  }

  v50 = 0;
  v17 = *(this + 1);
  if (v17 >= *(this + 2) || *v17 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50) & 1) == 0)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v50 = *v17;
    *(this + 1) = v17 + 1;
  }

  wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  v48 = this;
  v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
  v49 = v19;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  while (1)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v20 < 1)
    {
      break;
    }

    *v55 = 0;
    sub_10004490C(&v45, v55);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v55[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v55);
        *(v46 - 1) = v55[0];
        goto LABEL_36;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_107;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v46 - 1);
LABEL_36:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_107;
        }
      }
    }

    else
    {
      v22 = v46 - 1;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || (v24 = *v23, (v24 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v22);
        goto LABEL_36;
      }

      *v22 = v24;
      *(this + 1) = v23 + 1;
    }
  }

  if (v14 <= 20)
  {
    if (v14 <= 17)
    {
      switch(v14)
      {
        case 15:
          sub_100044BD0(&v45, __p);
          *v55 = *a2;
          v56 = *(a2 + 16);
          v25 = MetricFileMetadataHelper::getSubfield();
          break;
        case 16:
          sub_100044E44(&v45, __p);
          *v55 = *a2;
          v56 = *(a2 + 16);
          v25 = MetricFileMetadataHelper::getSubfield();
          break;
        case 17:
LABEL_99:
          sub_100045004(&v45, __p);
          *v55 = *a2;
          v56 = *(a2 + 16);
          v25 = MetricFileMetadataHelper::getSubfield();
          break;
        default:
LABEL_147:
          v43 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v43, "This should never happen, no matter what the input!");
      }

LABEL_100:
      if (v25 && (*(v25 + 52) & 0x100) != 0)
      {
        v3 = *(v25 + 48);
      }

      else
      {
        v3 = 0;
      }

      v34 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    if (v14 != 18)
    {
      if (v14 != 19)
      {
        goto LABEL_47;
      }

      sub_10004513C(&v45, __p);
      goto LABEL_48;
    }

LABEL_68:
    sub_100044B50(&v45, __p);
    *v55 = *a2;
    v56 = *(a2 + 16);
    v25 = MetricFileMetadataHelper::getSubfield();
    goto LABEL_100;
  }

  if (v14 <= 23)
  {
    if (v14 == 21)
    {
      sub_100044D0C(&v45, __p);
      *v55 = *a2;
      v56 = *(a2 + 16);
      v25 = MetricFileMetadataHelper::getSubfield();
      goto LABEL_100;
    }

    if (v14 == 22)
    {
      sub_100045278(&v45, __p);
    }

    else
    {
LABEL_47:
      sub_100044D0C(&v45, __p);
    }

LABEL_48:
    *v55 = *a2;
    v56 = *(a2 + 16);
    v25 = MetricFileMetadataHelper::getSubfield();
    goto LABEL_100;
  }

  if (v14 != 26)
  {
    if (v14 == 25)
    {
      goto LABEL_99;
    }

    if (v14 != 24)
    {
      goto LABEL_147;
    }

    goto LABEL_68;
  }

  sub_100044F80(&v45, __p);
  *v55 = *a2;
  v56 = *(a2 + 16);
  v33 = MetricFileMetadataHelper::getSubfield();
  if (v33 && (*(v33 + 52) & 0x100) != 0)
  {
    v3 = *(v33 + 48);
  }

  else
  {
    v3 = 0;
  }

  v34 = __p[0];
  if (__p[0])
  {
LABEL_106:
    operator delete(v34);
  }

LABEL_107:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
  if (v20 > 0)
  {
LABEL_110:
    v15 = this;
    v16 = v11;
LABEL_111:
    sub_10004483C(v15, v16);
LABEL_112:
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1000433F4(uint64_t a1)
{
  sub_1000447B8(a1 + 40);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10004342C(uint64_t a1, char **a2, int a3, char a4)
{
  v5 = a3;
  if (!a3 || (a4 & 1) == 0)
  {
    v7 = *a2;
    v6 = a2[1];
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    LODWORD(v6) = v6 - v7;
    v13[0] = 0;
    v13[1] = v7;
    v13[2] = &v7[v6];
    v14 = v6;
    v15 = 0;
    v16 = 0;
    v18 = xmmword_100240B70;
    v17 = v6;
    v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
    v20 = 0;
    v21 = 0;
    sub_10000BA58(v9, a2);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v10, v9);
    v10[4] = v10;
    MetricFileMetadataHelper::MetricFileMetadataHelper();
    v12[64] = v5;
    v12[65] = a4;
    v8[0] = 0;
    v8[1] = 0;
    v8[2] = 0xFFFFFFFFLL;
    sub_1000435C8(v13, v8, v9);
    sub_1000447B8(v12);
    if (v11)
    {
      sub_100008350(v11);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v10);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v9);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v13);
    if (v7)
    {
      operator delete(v7);
    }
  }
}

void sub_100043554(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100044768(va);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream((v6 - 128));
  if (v5)
  {
    operator delete(v5);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10004353CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1000435C8(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      return;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v10 = HIDWORD(v8);
  *v103 = *a2;
  v104 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *v103 = v99;
  v104 = v100;
  BuiltinType = MetadataHelper::getBuiltinType();
  DecodingType = wis::reflect::getDecodingType();
  v13 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_178;
          }
        }

        else
        {
          v31 = *(this + 1);
          if (v31 >= *(this + 2) || (*v31 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v10 && (*(this + 36) & 1) != 0)
              {
                return;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v31;
            *(this + 1) = v31 + 1;
          }
        }

LABEL_90:
        v42 = __p[0];
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            *v103 = *a2;
            v104 = *(a2 + 16);
            Subfield = MetricFileMetadataHelper::getSubfield();
            if (sub_100047334(a3, Subfield))
            {
              return;
            }

            v55 = *(a3 + 48);
            wis::reflect::getWireTypeForType();
            v56 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v55, v56);
            v46 = *(a3 + 48);
            v47 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
            break;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            *v103 = *a2;
            v104 = *(a2 + 16);
            v51 = MetricFileMetadataHelper::getSubfield();
            if (sub_100047334(a3, v51))
            {
              return;
            }

            v52 = *(a3 + 48);
            wis::reflect::getWireTypeForType();
            v53 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v52, v53);
            v46 = *(a3 + 48);
            v47 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
            break;
          case 3:
          case 11:
          case 17:
          case 25:
            goto LABEL_102;
          case 4:
          case 10:
          case 18:
          case 24:
            *v103 = *a2;
            v104 = *(a2 + 16);
            v48 = MetricFileMetadataHelper::getSubfield();
            if (sub_100047334(a3, v48))
            {
              return;
            }

            v49 = *(a3 + 48);
            wis::reflect::getWireTypeForType();
            v50 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v49, v50);
            v46 = *(a3 + 48);
            v47 = sub_100047378(BuiltinType, v42);
            break;
          case 5:
          case 19:
            v42 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_102:
            *v103 = *a2;
            v104 = *(a2 + 16);
            v58 = MetricFileMetadataHelper::getSubfield();
            if (sub_100047334(a3, v58))
            {
              return;
            }

            v59 = *(a3 + 48);
            wis::reflect::getWireTypeForType();
            v60 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v59, v60);
            v46 = *(a3 + 48);
            v47 = sub_10004762C(BuiltinType, v42);
            break;
          case 6:
          case 20:
            *v103 = *a2;
            v104 = *(a2 + 16);
            v61 = MetricFileMetadataHelper::getSubfield();
            if (!sub_100047334(a3, v61))
            {
              goto LABEL_105;
            }

            return;
          case 7:
          case 9:
          case 21:
          case 23:
            *v103 = *a2;
            v104 = *(a2 + 16);
            v43 = MetricFileMetadataHelper::getSubfield();
            if (sub_100047334(a3, v43))
            {
              return;
            }

            v44 = *(a3 + 48);
            wis::reflect::getWireTypeForType();
            v45 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v44, v45);
            v46 = *(a3 + 48);
            v47 = sub_100047468(BuiltinType, v42);
            break;
          case 8:
          case 22:
            LODWORD(v42) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            *v103 = *a2;
            v104 = *(a2 + 16);
            v57 = MetricFileMetadataHelper::getSubfield();
            if (sub_100047334(a3, v57))
            {
              return;
            }

LABEL_105:
            v62 = *(a3 + 48);
            wis::reflect::getWireTypeForType();
            v63 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v62, v63);
            v46 = *(a3 + 48);
            v47 = sub_10004771C(BuiltinType, v42);
            break;
          case 12:
          case 26:
            *v103 = *a2;
            v104 = *(a2 + 16);
            v64 = MetricFileMetadataHelper::getSubfield();
            if (sub_100047334(a3, v64))
            {
              return;
            }

            v65 = *(a3 + 48);
            wis::reflect::getWireTypeForType();
            v66 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v65, v66);
            v46 = *(a3 + 48);
            v47 = sub_100047554(BuiltinType, v42 != 0);
            break;
          default:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
            goto LABEL_178;
        }

        v67 = v47;
        WireTypeForType = wis::reflect::getWireTypeForType();
        switch(WireTypeForType)
        {
          case 5:
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v46, v67);
            break;
          case 1:
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v46, v67);
            break;
          case 0:
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v46, v67);
            break;
        }

        return;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          LODWORD(v103[0]) = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v103) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_178;
          }

          __p[0] = LODWORD(v103[0]);
        }

        goto LABEL_90;
      }

      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_178;
    }

    if (!DecodingType)
    {
      if (v9 > 1u)
      {
        if (v9 == 2)
        {
          LODWORD(__p[0]) = 0;
          if ((sub_1000448E0(this, __p) & 1) == 0)
          {
            goto LABEL_145;
          }

          sub_100045794(v103, LODWORD(__p[0]));
          Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v103[0], __p[0]);
          if (Raw)
          {
            sub_100047264(v103[1] - v103[0], v10);
          }

          if (v103[0])
          {
            v103[1] = v103[0];
            operator delete(v103[0]);
          }

          if ((Raw & 1) == 0)
          {
            goto LABEL_145;
          }

          return;
        }

        if (v9 != 5)
        {
          goto LABEL_145;
        }

        LODWORD(v103[0]) = 0;
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v103))
        {
          goto LABEL_145;
        }

        v38 = v10;
        v39 = 5;
      }

      else if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_145;
        }

        v103[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v103))
        {
          goto LABEL_145;
        }

        v38 = v10;
        v39 = 1;
      }

      else
      {
        v103[0] = 0;
        if (!sub_1000448B4(this, v103))
        {
          goto LABEL_145;
        }

        v38 = v10;
        v39 = 0;
      }

      sub_100047198(v38, v39);
      return;
    }

    if (DecodingType != 13)
    {
      goto LABEL_145;
    }

    LODWORD(v93) = 0;
    v28 = *(this + 1);
    if (v28 >= *(this + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
      {
        goto LABEL_145;
      }
    }

    else
    {
      LODWORD(v93) = *v28;
      *(this + 1) = v28 + 1;
    }

    v103[0] = 0;
    v103[1] = 0;
    v104 = 0;
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
    if (String)
    {
      *__p = *a2;
      v102 = *(a2 + 16);
      sub_100045808(a3, v103, __p);
    }

    if (SHIBYTE(v104) < 0)
    {
      v87 = v103[0];
LABEL_164:
      operator delete(v87);
      goto LABEL_165;
    }

    goto LABEL_165;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_145;
      }

      v98 = 0;
      v29 = *(this + 1);
      if (v29 >= *(this + 2) || (v30 = *v29, (v30 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v98))
        {
          goto LABEL_145;
        }

        v30 = v98;
      }

      else
      {
        v98 = *v29;
        *(this + 1) = v29 + 1;
      }

      v93 = this;
      LODWORD(v94) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
      ++*(this + 14);
      v96 = this;
      *v103 = *a2;
      v104 = *(a2 + 16);
      *__p = v99;
      v102 = v100;
      sub_100045978(a3, this, v103, v10, __p);
      sub_10004715C(&v96);
      v88 = *(this + 14);
      v89 = __OFSUB__(v88, 1);
      v90 = v88 - 1;
      if (v90 < 0 == v89)
      {
        *(this + 14) = v90;
      }

      sub_100045760(&v93);
      return;
    }

    LODWORD(v93) = 0;
    v40 = *(this + 1);
    if (v40 >= *(this + 2) || (v41 = *v40, (v41 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v93))
      {
        goto LABEL_145;
      }

      v41 = v93;
    }

    else
    {
      LODWORD(v93) = *v40;
      *(this + 1) = v40 + 1;
    }

    sub_100045794(v103, v41);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v103[0], v93);
    if (String)
    {
      *__p = *a2;
      v102 = *(a2 + 16);
      sub_1000458C8(a3, v103, __p);
    }

    v87 = v103[0];
    if (v103[0])
    {
      v103[1] = v103[0];
      goto LABEL_164;
    }

LABEL_165:
    if ((String & 1) == 0)
    {
      goto LABEL_145;
    }

    return;
  }

  v98 = 0;
  v15 = *(this + 1);
  if (v15 >= *(this + 2) || *v15 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v98) & 1) == 0)
    {
      goto LABEL_145;
    }
  }

  else
  {
    v98 = *v15;
    *(this + 1) = v15 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  v17 = wis::reflect::getWireTypeForType();
  v96 = this;
  v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v98);
  v97 = v18;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  while (1)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v19 < 1)
    {
      break;
    }

    v103[0] = 0;
    sub_10004490C(&v93, v103);
    if (v17 > 1)
    {
      if (v17 == 5)
      {
        LODWORD(v103[0]) = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v103);
        *(v94 - 1) = LODWORD(v103[0]);
        goto LABEL_39;
      }

      if (v17 == 2)
      {
        goto LABEL_142;
      }
    }

    else if (v17)
    {
      if (v17 == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v94 - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      v21 = v94 - 1;
      v22 = *(this + 1);
      if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
        goto LABEL_39;
      }

      *v21 = v23;
      *(this + 1) = v22 + 1;
    }
  }

  if (v13 <= 20)
  {
    if (v13 <= 17)
    {
      switch(v13)
      {
        case 15:
          sub_100044BD0(&v93, __p);
          *v103 = *a2;
          v104 = *(a2 + 16);
          v69 = MetricFileMetadataHelper::getSubfield();
          if (!sub_100047334(a3, v69))
          {
            v70 = *(a3 + 48);
            v71 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v70, v71);
            sub_1000481D0(*(a3 + 48), UnpackedType, __p);
          }

          goto LABEL_139;
        case 16:
          sub_100044E44(&v93, __p);
          *v103 = *a2;
          v104 = *(a2 + 16);
          v78 = MetricFileMetadataHelper::getSubfield();
          if (!sub_100047334(a3, v78))
          {
            v79 = *(a3 + 48);
            v80 = wis::reflect::encodeTag();
            wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v79, v80);
            sub_100049584(*(a3 + 48), UnpackedType, __p);
          }

          goto LABEL_139;
        case 17:
          sub_100045004(&v93, __p);
          *v103 = *a2;
          v104 = *(a2 + 16);
          v24 = MetricFileMetadataHelper::getSubfield();
          if (!sub_100047334(a3, v24))
          {
            goto LABEL_138;
          }

          goto LABEL_139;
      }

LABEL_179:
      v92 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v92, "This should never happen, no matter what the input!");
    }

    if (v13 != 18)
    {
      if (v13 != 19)
      {
        sub_100044D0C(&v93, __p);
        *v103 = *a2;
        v104 = *(a2 + 16);
        v32 = MetricFileMetadataHelper::getSubfield();
        if (sub_100047334(a3, v32))
        {
          goto LABEL_139;
        }

        goto LABEL_72;
      }

      sub_10004513C(&v93, __p);
      *v103 = *a2;
      v104 = *(a2 + 16);
      v82 = MetricFileMetadataHelper::getSubfield();
      if (!sub_100047334(a3, v82))
      {
LABEL_138:
        v84 = *(a3 + 48);
        v85 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v84, v85);
        sub_10004AC20(*(a3 + 48), UnpackedType, __p);
      }

LABEL_139:
      v77 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        goto LABEL_141;
      }

      goto LABEL_142;
    }

    sub_100044B50(&v93, __p);
    *v103 = *a2;
    v104 = *(a2 + 16);
    v73 = MetricFileMetadataHelper::getSubfield();
    if (sub_100047334(a3, v73))
    {
      goto LABEL_139;
    }

LABEL_77:
    v36 = *(a3 + 48);
    v37 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v36, v37);
    sub_100047808(*(a3 + 48), UnpackedType, __p);
    goto LABEL_139;
  }

  if (v13 <= 23)
  {
    if (v13 == 21)
    {
      sub_100044D0C(&v93, __p);
      *v103 = *a2;
      v104 = *(a2 + 16);
      v72 = MetricFileMetadataHelper::getSubfield();
      if (sub_100047334(a3, v72))
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v13 == 22)
      {
        sub_100045278(&v93, __p);
        *v103 = *a2;
        v104 = *(a2 + 16);
        v81 = MetricFileMetadataHelper::getSubfield();
        if (sub_100047334(a3, v81))
        {
          goto LABEL_139;
        }

LABEL_72:
        v33 = *(a3 + 48);
        v34 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v34);
        sub_10004B5E8(*(a3 + 48), UnpackedType, __p);
        goto LABEL_139;
      }

      sub_100044D0C(&v93, __p);
      *v103 = *a2;
      v104 = *(a2 + 16);
      v25 = MetricFileMetadataHelper::getSubfield();
      if (sub_100047334(a3, v25))
      {
        goto LABEL_139;
      }
    }

    v26 = *(a3 + 48);
    v27 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v26, v27);
    sub_100048BBC(*(a3 + 48), UnpackedType, __p);
    goto LABEL_139;
  }

  if (v13 != 26)
  {
    if (v13 == 25)
    {
      sub_100045004(&v93, __p);
      *v103 = *a2;
      v104 = *(a2 + 16);
      v83 = MetricFileMetadataHelper::getSubfield();
      if (!sub_100047334(a3, v83))
      {
        goto LABEL_138;
      }

      goto LABEL_139;
    }

    if (v13 != 24)
    {
      goto LABEL_179;
    }

    sub_100044B50(&v93, __p);
    *v103 = *a2;
    v104 = *(a2 + 16);
    v35 = MetricFileMetadataHelper::getSubfield();
    if (sub_100047334(a3, v35))
    {
      goto LABEL_139;
    }

    goto LABEL_77;
  }

  sub_100044F80(&v93, __p);
  *v103 = *a2;
  v104 = *(a2 + 16);
  v74 = MetricFileMetadataHelper::getSubfield();
  if (!sub_100047334(a3, v74))
  {
    v75 = *(a3 + 48);
    v76 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v75, v76);
    sub_100049F70(*(a3 + 48), UnpackedType, __p);
  }

  v77 = __p[0];
  if (__p[0])
  {
LABEL_141:
    operator delete(v77);
  }

LABEL_142:
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
  if (v19 > 0)
  {
LABEL_145:
    if (!v10 && (*(this + 36) & 1) != 0)
    {
      return;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_178:
  }
}

void sub_100044658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044768(void *a1)
{
  sub_1000447B8((a1 + 12));
  v2 = a1[8];
  if (v2)
  {
    sub_100008350(v2);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream((a1 + 2));

  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(a1);
}

uint64_t sub_1000447B8(uint64_t a1)
{
  sub_1000447F4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000447F4(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_100008350(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10004483C(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

uint64_t sub_1000448B4(wireless_diagnostics::google::protobuf::io::CodedInputStream *a1, unint64_t *a2)
{
  v2 = *(a1 + 1);
  if (v2 >= *(a1 + 2))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a1, a2);
  }

  v3 = *v2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a1, a2);
  }

  *a2 = v3;
  *(a1 + 1) = v2 + 1;
  return 1;
}

uint64_t sub_1000448E0(wireless_diagnostics::google::protobuf::io::CodedInputStream *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  if (v2 >= *(a1 + 2))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, a2);
  }

  v3 = *v2;
  if ((v3 & 0x80000000) != 0)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, a2);
  }

  *a2 = v3;
  *(a1 + 1) = v2 + 1;
  return 1;
}

void sub_10004490C(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100033FD0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_100044B08(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_1000449EC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v12 = *a3;
  v15 = *(a3 + 2);
  if ((MetricFileMetadataHelper::isTopLevelField() & 1) == 0)
  {
    v13 = *a3;
    v16 = *(a3 + 2);
    Subfield = MetricFileMetadataHelper::getSubfield();
    if (Subfield)
    {
      if (*(Subfield + 52) & 0x100) != 0 && (*(Subfield + 48))
      {
        return 1;
      }
    }
  }

  do
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
    v9 = v10 > 0;
    if (v10 < 1)
    {
      break;
    }

    v14 = *a5;
    v17 = *(a5 + 2);
  }

  while (!sub_100042918(a2));
  return v9;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_100044ACC(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

void sub_100044B08(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_100044B50(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      sub_10004490C(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_100044BB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044BD0(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v10 = *a2;
        v11 = v8 - *a2;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          sub_100033FD0();
        }

        v14 = v7 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_100044B08(a2, v15);
        }

        *(8 * v12) = v6;
        v9 = 8 * v12 + 8;
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v9;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = v6;
        v9 = (v8 + 8);
      }

      a2[1] = v9;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_100044CEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044D0C(int **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          sub_100033FD0();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_10000A8C0(a2, v13);
        }

        *(4 * v10) = v6;
        v5 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 4;
      }

      a2[1] = v5;
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_100044E24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044E44(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v10 = *a2;
        v11 = v8 - *a2;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          sub_100033FD0();
        }

        v14 = v7 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_10000A8C0(a2, v15);
        }

        *(4 * v12) = v6;
        v9 = 4 * v12 + 4;
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v9;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = v6;
        v9 = (v8 + 4);
      }

      a2[1] = v9;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_100044F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100044F80@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      v5 = *v2 != 0;
      result = sub_1000453B4(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_100044FEC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100045004(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          sub_100033FD0();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_100044B08(a2, v13);
        }

        *(8 * v10) = v6;
        v5 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a2[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_10004511C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004513C(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v10 = *a2;
        v11 = v8 - *a2;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          sub_100033FD0();
        }

        v14 = v7 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_100044B08(a2, v15);
        }

        *(8 * v12) = v6;
        v9 = 8 * v12 + 8;
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v9;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = v6;
        v9 = (v8 + 1);
      }

      a2[1] = v9;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_100045258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100045278(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v10 = *a2;
        v11 = v8 - *a2;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          sub_100033FD0();
        }

        v14 = v7 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_10000A8C0(a2, v15);
        }

        *(4 * v12) = v6;
        v9 = 4 * v12 + 4;
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v9;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = v6;
        v9 = (v8 + 4);
      }

      a2[1] = v9;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_100045394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000453B4(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_100033FD0();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_10004545C(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_10004545C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_100045518(&v2, a2);
    }

    sub_100033FD0();
  }

  return result;
}

void sub_100045500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100045518(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_100044B08(a1, v2);
  }

  sub_100033FD0();
}

void sub_10004555C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_100045600(&v18, &v16, &v14, &v13);
}

void sub_100045600(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_100045690(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_100045690(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void *sub_100045794(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10000BDA8(result, a2);
  }

  return result;
}

void sub_1000457EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100045808(uint64_t a1, void *a2, __int128 *a3)
{
  v12 = *a3;
  v13 = *(a3 + 2);
  Subfield = MetricFileMetadataHelper::getSubfield();
  if (!sub_100047334(a1, Subfield))
  {
    v6 = *(a1 + 48);
    v7 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v6, v7);
    v8 = *(a1 + 48);
    v9 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v10 = v9;
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v8, v10);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v8, a2, v10);
  }

  return 1;
}

uint64_t sub_1000458C8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v12 = *a3;
  v13 = *(a3 + 2);
  Subfield = MetricFileMetadataHelper::getSubfield();
  if (!sub_100047334(a1, Subfield))
  {
    v6 = *(a1 + 48);
    v7 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v6, v7);
    v8 = *(a1 + 48);
    v9 = *a2;
    v10 = *(a2 + 8) - *a2;
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v8, v10);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v8, v9, v10);
  }

  return 1;
}

uint64_t sub_100045978(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v138 = *a3;
  v139 = *(a3 + 2);
  *buf = *a5;
  v155 = *(a5 + 2);
  if ((MetricFileMetadataHelper::isTopLevelField() & 1) == 0)
  {
    v138 = *buf;
    v139 = v155;
    Field = MetadataHelper::getField();
    if (sub_100047334(a1, Field))
    {
      return 1;
    }
  }

  v141 = 0;
  v142 = 0;
  v143 = 0;
  sub_10000BA58(v140, &v141);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(&v138, v140);
  v135 = *(a1 + 48);
  *(a1 + 48) = &v138;
LABEL_5:
  while (1)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
    v9 = v11 < 1;
    if (v11 < 1)
    {
      break;
    }

    v136 = *a5;
    v137 = *(a5 + 2);
    v12 = *(a2 + 8);
    if (v12 >= *(a2 + 16) || (TagFallback = *v12, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 32) = TagFallback;
      if (TagFallback)
      {
        goto LABEL_9;
      }

LABEL_19:
      if ((*(a2 + 36) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(a2 + 32) = TagFallback;
      *(a2 + 8) = v12 + 1;
      if (!TagFallback)
      {
        goto LABEL_19;
      }

LABEL_9:
      v14 = wis::reflect::decodeTag(TagFallback, v10);
      v15 = v14;
      v16 = HIDWORD(v14);
      *buf = v136;
      v155 = v137;
      MetricFileMetadataHelper::getSubfieldType();
      *buf = v150;
      v155 = v151;
      BuiltinType = MetadataHelper::getBuiltinType();
      DecodingType = wis::reflect::getDecodingType();
      v19 = DecodingType;
      if (DecodingType > 13)
      {
        if ((DecodingType - 15) < 0xC)
        {
          v149 = 0;
          v20 = *(a2 + 8);
          if (v20 >= *(a2 + 16) || *v20 < 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v149) & 1) == 0)
            {
              goto LABEL_163;
            }
          }

          else
          {
            v149 = *v20;
            *(a2 + 8) = v20 + 1;
          }

          UnpackedType = wis::reflect::getUnpackedType();
          WireTypeForType = wis::reflect::getWireTypeForType();
          v147 = a2;
          v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v149);
          v148 = v23;
          __p = 0;
          v145 = 0;
          v146 = 0;
          while (1)
          {
            v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
            if (v24 < 1)
            {
              if (v19 <= 20)
              {
                if (v19 <= 17)
                {
                  switch(v19)
                  {
                    case 15:
                      sub_100044BD0(&__p, v152);
                      *buf = v136;
                      v155 = v137;
                      Subfield = MetricFileMetadataHelper::getSubfield();
                      if (!sub_100047334(a1, Subfield))
                      {
                        v87 = *(a1 + 48);
                        v88 = wis::reflect::encodeTag();
                        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v87, v88);
                        sub_1000481D0(*(a1 + 48), UnpackedType, v152);
                      }

                      goto LABEL_157;
                    case 16:
                      sub_100044E44(&__p, v152);
                      *buf = v136;
                      v155 = v137;
                      v95 = MetricFileMetadataHelper::getSubfield();
                      if (!sub_100047334(a1, v95))
                      {
                        v96 = *(a1 + 48);
                        v97 = wis::reflect::encodeTag();
                        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v96, v97);
                        sub_100049584(*(a1 + 48), UnpackedType, v152);
                      }

                      goto LABEL_157;
                    case 17:
                      sub_100045004(&__p, v152);
                      *buf = v136;
                      v155 = v137;
                      v29 = MetricFileMetadataHelper::getSubfield();
                      if (!sub_100047334(a1, v29))
                      {
                        goto LABEL_156;
                      }

                      goto LABEL_157;
                  }

LABEL_220:
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                }

                if (v19 != 18)
                {
                  if (v19 != 19)
                  {
                    sub_100044D0C(&__p, v152);
                    *buf = v136;
                    v155 = v137;
                    v37 = MetricFileMetadataHelper::getSubfield();
                    if (sub_100047334(a1, v37))
                    {
                      goto LABEL_157;
                    }

                    goto LABEL_77;
                  }

                  sub_10004513C(&__p, v152);
                  *buf = v136;
                  v155 = v137;
                  v99 = MetricFileMetadataHelper::getSubfield();
                  if (!sub_100047334(a1, v99))
                  {
LABEL_156:
                    v101 = *(a1 + 48);
                    v102 = wis::reflect::encodeTag();
                    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v101, v102);
                    sub_10004AC20(*(a1 + 48), UnpackedType, v152);
                  }

LABEL_157:
                  v94 = *v152;
                  if (*v152)
                  {
                    *&v152[2] = *v152;
                    goto LABEL_159;
                  }

                  goto LABEL_160;
                }

                sub_100044B50(&__p, v152);
                *buf = v136;
                v155 = v137;
                v90 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v90))
                {
                  goto LABEL_157;
                }

LABEL_82:
                v41 = *(a1 + 48);
                v42 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v41, v42);
                sub_100047808(*(a1 + 48), UnpackedType, v152);
                goto LABEL_157;
              }

              if (v19 <= 23)
              {
                if (v19 == 21)
                {
                  sub_100044D0C(&__p, v152);
                  *buf = v136;
                  v155 = v137;
                  v89 = MetricFileMetadataHelper::getSubfield();
                  if (sub_100047334(a1, v89))
                  {
                    goto LABEL_157;
                  }
                }

                else
                {
                  if (v19 == 22)
                  {
                    sub_100045278(&__p, v152);
                    *buf = v136;
                    v155 = v137;
                    v98 = MetricFileMetadataHelper::getSubfield();
                    if (sub_100047334(a1, v98))
                    {
                      goto LABEL_157;
                    }

LABEL_77:
                    v38 = *(a1 + 48);
                    v39 = wis::reflect::encodeTag();
                    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v38, v39);
                    sub_10004B5E8(*(a1 + 48), UnpackedType, v152);
                    goto LABEL_157;
                  }

                  sub_100044D0C(&__p, v152);
                  *buf = v136;
                  v155 = v137;
                  v30 = MetricFileMetadataHelper::getSubfield();
                  if (sub_100047334(a1, v30))
                  {
                    goto LABEL_157;
                  }
                }

                v31 = *(a1 + 48);
                v32 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v31, v32);
                sub_100048BBC(*(a1 + 48), UnpackedType, v152);
                goto LABEL_157;
              }

              if (v19 != 26)
              {
                if (v19 == 25)
                {
                  sub_100045004(&__p, v152);
                  *buf = v136;
                  v155 = v137;
                  v100 = MetricFileMetadataHelper::getSubfield();
                  if (!sub_100047334(a1, v100))
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_157;
                }

                if (v19 != 24)
                {
                  goto LABEL_220;
                }

                sub_100044B50(&__p, v152);
                *buf = v136;
                v155 = v137;
                v40 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v40))
                {
                  goto LABEL_157;
                }

                goto LABEL_82;
              }

              sub_100044F80(&__p, v152);
              *buf = v136;
              v155 = v137;
              v91 = MetricFileMetadataHelper::getSubfield();
              if (!sub_100047334(a1, v91))
              {
                v92 = *(a1 + 48);
                v93 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v92, v93);
                sub_100049F70(*(a1 + 48), UnpackedType, v152);
              }

              v94 = *v152;
              if (*v152)
              {
LABEL_159:
                operator delete(v94);
              }

LABEL_160:
              if (__p)
              {
                v145 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
              if (v24 > 0)
              {
LABEL_163:
                if (v16 || (*(a2 + 36) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              goto LABEL_5;
            }

            *buf = 0;
            sub_10004490C(&__p, buf);
            if (WireTypeForType > 1)
            {
              if (WireTypeForType != 5)
              {
                if (WireTypeForType == 2)
                {
                  goto LABEL_160;
                }

                continue;
              }

              *buf = 0;
              LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, buf);
              *(v145 - 1) = *buf;
            }

            else if (WireTypeForType)
            {
              if (WireTypeForType != 1)
              {
                continue;
              }

              LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v145 - 1);
            }

            else
            {
              v26 = v145 - 1;
              v27 = *(a2 + 8);
              if (v27 < *(a2 + 16))
              {
                v28 = *v27;
                if ((v28 & 0x8000000000000000) == 0)
                {
                  *v26 = v28;
                  *(a2 + 8) = v27 + 1;
                  continue;
                }
              }

              LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v26);
            }

            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_160;
            }
          }
        }

        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v45 = *(a2 + 8);
          if (v45 >= *(a2 + 16) || (v46 = *v45, (v46 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &__p))
            {
              goto LABEL_163;
            }

            v46 = __p;
          }

          else
          {
            LODWORD(__p) = *v45;
            *(a2 + 8) = v45 + 1;
          }

          sub_100045794(v152, v46);
          Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a2, *v152, __p);
          if (Raw)
          {
            *buf = v136;
            v155 = v137;
            v118 = MetricFileMetadataHelper::getSubfield();
            if (!sub_100047334(a1, v118))
            {
              v119 = *(a1 + 48);
              v120 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v119, v120);
              v121 = *(a1 + 48);
              v122 = *v152;
              v123 = v152[2] - v152[0];
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v121, *&v152[2] - *v152);
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v121, v122, v123);
            }
          }

LABEL_204:
          v112 = *v152;
          if (*v152)
          {
            *&v152[2] = *v152;
LABEL_206:
            operator delete(v112);
          }

LABEL_207:
          if ((Raw & 1) == 0)
          {
            goto LABEL_163;
          }

          continue;
        }

        if (DecodingType != 27)
        {
          goto LABEL_163;
        }

        v149 = 0;
        v34 = *(a2 + 8);
        if (v34 >= *(a2 + 16) || (v35 = *v34, (v35 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v149))
          {
            goto LABEL_163;
          }

          v35 = v149;
        }

        else
        {
          v149 = *v34;
          *(a2 + 8) = v34 + 1;
        }

        __p = a2;
        v113 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v35);
        LODWORD(v145) = v113;
        ++*(a2 + 56);
        v147 = a2;
        *buf = v136;
        v155 = v137;
        *v152 = v150;
        v153 = v151;
        v114 = sub_100045978(a1, a2, buf, v16, v152);
        sub_10004BFB0(&v147);
        v115 = *(a2 + 56);
        v116 = __OFSUB__(v115, 1);
        v117 = v115 - 1;
        if (v117 < 0 == v116)
        {
          *(a2 + 56) = v117;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v113);
        if ((v114 & 1) == 0)
        {
          goto LABEL_210;
        }
      }

      else
      {
        if ((DecodingType - 1) >= 0xC)
        {
          if (DecodingType)
          {
            if (DecodingType != 13)
            {
              goto LABEL_163;
            }

            LODWORD(__p) = 0;
            v33 = *(a2 + 8);
            if (v33 >= *(a2 + 16) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &__p))
              {
                goto LABEL_163;
              }
            }

            else
            {
              LODWORD(__p) = *v33;
              *(a2 + 8) = v33 + 1;
            }

            memset(v152, 0, sizeof(v152));
            v153 = 0;
            Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
            if (Raw)
            {
              *buf = v136;
              v155 = v137;
              v104 = MetricFileMetadataHelper::getSubfield();
              if (!sub_100047334(a1, v104))
              {
                v105 = *(a1 + 48);
                v106 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v105, v106);
                v107 = *(a1 + 48);
                v108 = SHIBYTE(v153);
                v109 = *v152;
                if (v153 >= 0)
                {
                  v110 = HIBYTE(v153);
                }

                else
                {
                  v110 = *&v152[2];
                }

                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(*(a1 + 48), v110);
                if (v108 >= 0)
                {
                  v111 = v152;
                }

                else
                {
                  v111 = v109;
                }

                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v107, v111, v110);
              }
            }

            if (SHIBYTE(v153) < 0)
            {
              v112 = *v152;
              goto LABEL_206;
            }

            goto LABEL_207;
          }

          if (v15 > 1u)
          {
            if (v15 == 2)
            {
              LODWORD(__p) = 0;
              v125 = *(a2 + 8);
              if (v125 >= *(a2 + 16) || (v126 = *v125, (v126 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &__p))
                {
                  goto LABEL_163;
                }

                v126 = __p;
              }

              else
              {
                LODWORD(__p) = *v125;
                *(a2 + 8) = v125 + 1;
              }

              sub_100045794(v152, v126);
              Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a2, *v152, __p);
              if (Raw)
              {
                v127 = *(qword_1002DBE98 + 96);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109632;
                  *&buf[4] = v16;
                  *&buf[8] = 1024;
                  *&buf[10] = v16;
                  *&buf[14] = 2048;
                  v155 = *&v152[2] - *v152;
                  _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "#I  -- stripping unrecognized field %u (0x%x) of length %zd bytes", buf, 0x18u);
                }
              }

              goto LABEL_204;
            }

            if (v15 != 5)
            {
              goto LABEL_163;
            }

            v152[0] = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v152))
            {
              goto LABEL_163;
            }

            v43 = *(qword_1002DBE98 + 96);
            if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              continue;
            }

            *buf = 67109632;
            *&buf[4] = v16;
            *&buf[8] = 1024;
            *&buf[10] = v16;
            *&buf[14] = 1024;
            v44 = 5;
LABEL_135:
            LODWORD(v155) = v44;
          }

          else
          {
            if (v15)
            {
              if (v15 != 1)
              {
                goto LABEL_163;
              }

              *v152 = 0;
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v152))
              {
                goto LABEL_163;
              }

              v43 = *(qword_1002DBE98 + 96);
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                continue;
              }

              *buf = 67109632;
              *&buf[4] = v16;
              *&buf[8] = 1024;
              *&buf[10] = v16;
              *&buf[14] = 1024;
              v44 = 1;
              goto LABEL_135;
            }

            *v152 = 0;
            v124 = *(a2 + 8);
            if (v124 >= *(a2 + 16) || (*v124 & 0x8000000000000000) != 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v152))
              {
                goto LABEL_163;
              }
            }

            else
            {
              *v152 = *v124;
              *(a2 + 8) = v124 + 1;
            }

            v43 = *(qword_1002DBE98 + 96);
            if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              continue;
            }

            *buf = 67109632;
            *&buf[4] = v16;
            *&buf[8] = 1024;
            *&buf[10] = v16;
            *&buf[14] = 1024;
            LODWORD(v155) = 0;
          }

          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "#I  -- stripping unrecognized field %u (0x%x) with wire type %hhu", buf, 0x14u);
          continue;
        }

        *v152 = 0;
        if (v15 > 1u)
        {
          if (v15 == 2)
          {
            if (v16 || (*(a2 + 36) & 1) == 0)
            {
LABEL_20:
              v133 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v133, "Parsing failed in metric");
LABEL_222:
            }
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_96;
            }

            *buf = 0;
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, buf))
            {
              *v152 = *buf;
              goto LABEL_96;
            }

            if (v16 || (*(a2 + 36) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else if (v15)
        {
          if (v15 != 1 || (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v152) & 1) != 0)
          {
            goto LABEL_96;
          }

          if (v16 || (*(a2 + 36) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v36 = *(a2 + 8);
          if (v36 < *(a2 + 16) && (*v36 & 0x8000000000000000) == 0)
          {
            *v152 = *v36;
            *(a2 + 8) = v36 + 1;
LABEL_96:
            v47 = *v152;
            switch(BuiltinType)
            {
              case 1:
              case 15:
                wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
                *buf = v136;
                v155 = v137;
                v48 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v48))
                {
                  continue;
                }

                v49 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v50 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v49, v50);
                v51 = *(a1 + 48);
                v52 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 2:
              case 16:
                wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
                *buf = v136;
                v155 = v137;
                v69 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v69))
                {
                  continue;
                }

                v70 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v71 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v70, v71);
                v51 = *(a1 + 48);
                v52 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 3:
              case 17:
                *buf = v136;
                v155 = v137;
                v61 = MetricFileMetadataHelper::getSubfield();
                if (!sub_100047334(a1, v61))
                {
                  goto LABEL_107;
                }

                continue;
              case 4:
              case 18:
                *buf = v136;
                v155 = v137;
                v54 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v54))
                {
                  continue;
                }

                v55 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v56 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v55, v56);
                v51 = *(a1 + 48);
                v52 = sub_100047378(BuiltinType, v47);
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 5:
              case 19:
                v76 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
                *buf = v136;
                v155 = v137;
                v77 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v77))
                {
                  continue;
                }

                v78 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v79 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v78, v79);
                v51 = *(a1 + 48);
                v52 = sub_10004762C(BuiltinType, v76);
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 6:
              case 20:
                *buf = v136;
                v155 = v137;
                v80 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v80))
                {
                  continue;
                }

                v81 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v82 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v81, v82);
                v51 = *(a1 + 48);
                v52 = sub_10004771C(BuiltinType, v47);
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 7:
              case 21:
                *buf = v136;
                v155 = v137;
                v64 = MetricFileMetadataHelper::getSubfield();
                if (!sub_100047334(a1, v64))
                {
                  goto LABEL_109;
                }

                continue;
              case 8:
              case 22:
                v72 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
                *buf = v136;
                v155 = v137;
                v73 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v73))
                {
                  continue;
                }

                v74 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v75 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v74, v75);
                v51 = *(a1 + 48);
                v52 = sub_10004771C(BuiltinType, v72);
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 9:
              case 23:
                *buf = v136;
                v155 = v137;
                v68 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v68))
                {
                  continue;
                }

LABEL_109:
                v65 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v66 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v65, v66);
                v51 = *(a1 + 48);
                v52 = sub_100047468(BuiltinType, v47);
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 10:
              case 24:
                *buf = v136;
                v155 = v137;
                v57 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v57))
                {
                  continue;
                }

                v58 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v59 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v58, v59);
                v51 = *(a1 + 48);
                v52 = sub_100047378(BuiltinType, v47);
                v60 = wis::reflect::getWireTypeForType();
                switch(v60)
                {
                  case 5:
                    goto LABEL_127;
                  case 1:
                    goto LABEL_128;
                  case 0:
LABEL_129:
                    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v51, v52);
                    break;
                }

                break;
              case 11:
              case 25:
                *buf = v136;
                v155 = v137;
                v67 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v67))
                {
                  continue;
                }

LABEL_107:
                v62 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v63 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v62, v63);
                v51 = *(a1 + 48);
                v52 = sub_10004762C(BuiltinType, v47);
                v53 = wis::reflect::getWireTypeForType();
                goto LABEL_124;
              case 12:
              case 26:
                *buf = v136;
                v155 = v137;
                v83 = MetricFileMetadataHelper::getSubfield();
                if (sub_100047334(a1, v83))
                {
                  continue;
                }

                v84 = *(a1 + 48);
                wis::reflect::getWireTypeForType();
                v85 = wis::reflect::encodeTag();
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v84, v85);
                v51 = *(a1 + 48);
                v52 = sub_100047554(BuiltinType, v47 != 0);
                v53 = wis::reflect::getWireTypeForType();
LABEL_124:
                switch(v53)
                {
                  case 0:
                    goto LABEL_129;
                  case 1:
LABEL_128:
                    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v51, v52);
                    break;
                  case 5:
LABEL_127:
                    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v51, v52);
                    break;
                }

                break;
              default:
                v133 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v133, "This should never happen, no matter what the input!");
                goto LABEL_222;
            }

            continue;
          }

          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v152))
          {
            goto LABEL_96;
          }

          if (v16 || (*(a2 + 36) & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  *(a1 + 48) = v135;
LABEL_210:
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&v138);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v140);
  if (v11 <= 0)
  {
    v128 = *(a1 + 48);
    v129 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v128, v129);
    v130 = *(a1 + 48);
    v131 = v141;
    LODWORD(v128) = v142 - v141;
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v130, v142 - v141);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v130, v131, v128);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  return v9;
}

void sub_100046FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29)
{
  __cxa_free_exception(v29);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&a17);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(&a21);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_10004715C(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

uint64_t sub_100047198(int a1, int a2)
{
  v4 = *(qword_1002DBE98 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109632;
    v6[1] = a1;
    v7 = 1024;
    v8 = a1;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I  -- stripping unrecognized field %u (0x%x) with wire type %hhu", v6, 0x14u);
  }

  return 1;
}

uint64_t sub_100047264(uint64_t a1, int a2)
{
  v4 = *(qword_1002DBE98 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109632;
    v6[1] = a2;
    v7 = 1024;
    v8 = a2;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I  -- stripping unrecognized field %u (0x%x) of length %zd bytes", v6, 0x18u);
  }

  return 1;
}

uint64_t sub_100047378(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 10:
    case 11:
    case 17:
    case 18:
    case 24:
    case 25:
      return a2;
    case 5:
    case 19:

      return wis::protobuf::NumberConverter<(wis::reflect::Type)5>::encode();
    case 6:
    case 20:
      return a2;
    case 7:
    case 9:
    case 21:
    case 23:
      return a2;
    case 8:
    case 22:

      return wis::protobuf::NumberConverter<(wis::reflect::Type)8>::encode();
    case 12:
    case 26:
      return a2 != 0;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }
}

uint64_t sub_100047468(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 7:
    case 9:
    case 10:
    case 11:
    case 17:
    case 18:
    case 21:
    case 23:
    case 24:
    case 25:
      result = a2;
      break;
    case 5:
    case 19:

      result = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::encode();
      break;
    case 6:
    case 20:
      result = a2;
      break;
    case 8:
    case 22:

      result = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::encode();
      break;
    case 12:
    case 26:
      result = a2 != 0;
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_100047554(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 6:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 17:
    case 18:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
      result = a2;
      break;
    case 5:
    case 19:

      result = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::encode();
      break;
    case 8:
    case 22:

      result = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::encode();
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_10004762C(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 10:
    case 11:
    case 17:
    case 18:
    case 24:
    case 25:
      return a2;
    case 5:
    case 19:

      return wis::protobuf::NumberConverter<(wis::reflect::Type)5>::encode();
    case 6:
    case 20:
      return a2;
    case 7:
    case 9:
    case 21:
    case 23:
      return a2;
    case 8:
    case 22:

      return wis::protobuf::NumberConverter<(wis::reflect::Type)8>::encode();
    case 12:
    case 26:
      return a2 != 0;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }
}

uint64_t sub_10004771C(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 6:
    case 10:
    case 11:
    case 17:
    case 18:
    case 20:
    case 24:
    case 25:
      result = a2;
      break;
    case 5:
    case 19:

      result = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::encode();
      break;
    case 7:
    case 9:
    case 21:
    case 23:
      result = a2;
      break;
    case 8:
    case 22:

      result = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::encode();
      break;
    case 12:
    case 26:
      result = a2 != 0;
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

void sub_100047808(wireless_diagnostics::google::protobuf::io::CodedOutputStream *a1, int a2, unint64_t **a3)
{
  UnpackedType = wis::reflect::getUnpackedType();
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_10000BA58(v18, &__p);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v15, v18);
  sub_1000479A8(a2, a3, &v13);
  v7 = v13;
  v8 = v14;
  if (v13 != v14)
  {
    do
    {
      v9 = sub_100047378(UnpackedType, *v7);
      WireTypeForType = wis::reflect::getWireTypeForType();
      switch(WireTypeForType)
      {
        case 5:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v15, v9);
          break;
        case 1:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v15, v9);
          break;
        case 0:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, v9);
          break;
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = v13;
  }

  if (v7)
  {
    v14 = v7;
    operator delete(v7);
  }

  v11 = __p;
  v12 = v17 - v16;
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a1, v17 - v16);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(a1, v11, v12);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v15);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_100047950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&a12);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000479A8(int a1@<W0>, unint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 1:
    case 15:

      sub_100047C30(a2, a3);
      break;
    case 2:
    case 16:

      sub_100047D38(a2, a3);
      break;
    case 3:
    case 17:

      sub_100047E48(a2, a3);
      break;
    case 4:
    case 18:

      sub_100047EC8(a2, a3);
      break;
    case 5:
    case 19:

      sub_100047F48(a2, a3);
      break;
    case 6:
    case 20:

      sub_100047FCC(a2, a3);
      break;
    case 7:
    case 21:

      sub_1000480D0(a2, a3);
      break;
    case 8:
    case 22:

      sub_10004804C(a2, a3);
      break;
    case 9:
    case 23:

      sub_100047CB8(a2, a3);
      break;
    case 10:
    case 24:

      sub_100047BB0(a2, a3);
      break;
    case 11:
    case 25:

      sub_100048150(a2, a3);
      break;
    case 12:
    case 26:

      sub_100047DC0(a2, a3);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }
}