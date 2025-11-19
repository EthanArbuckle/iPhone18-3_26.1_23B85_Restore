void sub_1005A3EB4(uint64_t *a1, void *a2, const void **a3)
{
  v4 = a1[2];
  if (v4)
  {
    v7 = *a1;
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[1])
      {
        sub_100597774(v7, a2, a3);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1005A3F58(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1005A3FEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1005A4010(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1005A4060(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1005A415C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v9;
    v18 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v17 = v5[2];
    v18 = 0;
  }

  v15 = off_101E61BA8;
  v16 = v8;
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A42F8();
}

void sub_1005A42B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100226D24(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A44C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = **(a1 + 48);
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002269BC(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    sub_100226D24(v7);
    operator delete();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {
    operator delete();
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_1005A45BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A45D4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN23ThumperSecondaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN23ThumperSecondaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1005A46B8(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1005986AC(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1005A4798(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A47C8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1005A48C4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v9;
    v18 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v17 = v5[2];
    v18 = 0;
  }

  v15 = off_101E61C08;
  v16 = v8;
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A4A60();
}

void sub_1005A4A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100228BD0(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A4C28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = **(a1 + 48);
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100228868(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    sub_100228BD0(v7);
    operator delete();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {
    operator delete();
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_1005A4D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A4D3C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN23ThumperSecondaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN23ThumperSecondaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1005A4E20(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100598B08(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1005A4F00(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void *sub_1005A4F30(void *a1)
{
  *a1 = off_101E61C38;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1005A4F7C(void *a1)
{
  *a1 = off_101E61C38;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1005A505C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E61C38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005A509C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1005A50AC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1005A50EC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = sub_100007A6C(v4 + 208, (**(v4 + 80) + 24));
        v9 = **(v4 + 80);
        if (v4 + 216 == v7)
        {
          v11[0] = 0;
          v11[1] = 0;
          v10 = v11;
          sub_100592520(v4, (v9 + 24), v8, &v10);
          sub_10006DCAC(&v10, v11[0]);
        }

        else
        {
          sub_100592520(v4, (v9 + 24), v8, v7 + 64);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1005A51B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_10006DCAC(&a10, a11);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A51DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005A5228(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E61CB8;
  v5[1] = v3;
  v5[3] = v5;
  sub_1005A5494(v5, a1);
  sub_1005A1674(v5);
  return a1;
}

uint64_t sub_1005A532C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E61CB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1005A5360(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A53AC(int a1, ThumperCapability *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/thumper_capability");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1005A5450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1005A5494(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1005A56F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1005A5700(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1005A5780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1005A5794(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005A5794(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000FF134(v2);
    operator delete();
  }

  return a1;
}

void sub_1005A57E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A5818(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1000FF134(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1005A585C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1005A589C(std::mutex *this@<X0>, void *a2@<X8>)
{
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1005A5960(const void ****a1)
{
  v1 = a1;
  sub_1005903E0(**a1, 0, *(*a1 + 8));
  operator delete();
}

uint64_t *sub_1005A59E8(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        sub_1005A0C0C(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1005A5A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1005A5A80(std::mutex *this@<X0>, void *a2@<X8>)
{
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1005A5B64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E61DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005A5BE0(void *a1)
{
  *a1 = off_101E61E10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void sub_1005A5C38(void *a1)
{
  *a1 = off_101E61E10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete();
}

void sub_1005A5D34(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E61E10;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v6 = a1[4];
  a2[3] = a1[3];
  a2[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_1005A5DA4(void *a1)
{
  sub_1005A5EDC(a1 + 8);

  operator delete(a1);
}

void sub_1005A5DE0(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 2)
  {
    sub_1003A5CF0();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t sub_1005A5E90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A5EDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t *sub_1005A5F2C(void *a1)
{
  v8 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 672);
        *(v3 + 664) = 0u;
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      sub_100004A34(v5);
    }
  }

  return sub_10007060C(&v8);
}

uint64_t *sub_1005A5FA8(void *a1)
{
  v2 = a1;
  (*(**a1 + 16))(*a1);
  return sub_10024BAAC(&v2);
}

void sub_1005A6000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024BAAC(va);
  _Unwind_Resume(a1);
}

void sub_1005A6084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1005A6128(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A60A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A60E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1005A6128(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 384) == 1 && *(a2 + 383) < 0)
    {
      operator delete(*(a2 + 360));
    }

    if (*(a2 + 352) == 1 && *(a2 + 351) < 0)
    {
      operator delete(*(a2 + 328));
    }

    if (*(a2 + 320) == 1 && *(a2 + 319) < 0)
    {
      operator delete(*(a2 + 296));
    }

    if (*(a2 + 288) == 1 && *(a2 + 287) < 0)
    {
      operator delete(*(a2 + 264));
    }

    if (*(a2 + 256) == 1)
    {
      sub_100221F4C(a2);
    }

    operator delete();
  }
}

void sub_1005A61F8(std::mutex *this@<X0>, void *a2@<X8>)
{
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1005A62BC(std::mutex *this@<X0>, void *a2@<X8>)
{
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1005A6380(std::mutex *this@<X0>, void *a2@<X8>)
{
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1005A64B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1005A6558(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A64D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A6518(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1005A6558(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

uint64_t sub_1005A6624(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E61F80;
  a2[1] = v2;
  return result;
}

void sub_1005A6650(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 80));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1005A6730(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A677C(uint64_t a1, const void *a2, uint64_t a3)
{
  memset(v12, 0, sizeof(v12));
  *v11 = 0u;
  if (ctu::cf::assign())
  {
    if (a2)
    {
      v5 = CFGetTypeID(a2);
      if (v5 == CFArrayGetTypeID())
      {
        __p[0] = 0;
        __p[1] = 0;
        v9 = 0;
        context = __p;
        v14.length = CFArrayGetCount(a2);
        v14.location = 0;
        CFArrayApplyFunction(a2, v14, sub_10035565C, &context);
        v6 = *(v12 + 8);
        *(v12 + 8) = *__p;
        *__p = v6;
        v7 = *(&v12[1] + 1);
        *(&v12[1] + 1) = v9;
        v9 = v7;
        context = __p;
        sub_1000087B4(&context);
      }
    }

    sub_1005A695C(__p, v11);
    sub_1005A68F0(a3, __p);
    context = &v10;
    sub_1000087B4(&context);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = v12 + 8;
  sub_1000087B4(__p);
  if (SBYTE7(v12[0]) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1005A68B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *(v8 - 40) = v7;
  sub_1000087B4((v8 - 40));
  sub_1003ECFDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A68F0(uint64_t a1, void **a2)
{
  v3 = sub_1005A69F0(*a1, *(a1 + 8), a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void *sub_1005A695C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_10004EFD0((__dst + 3), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return __dst;
}

void sub_1005A69D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005A69F0(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100074A00(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1005A6A90();
  }

  return v3;
}

char *sub_1005A6B08(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  *(__dst + 24) = *(a2 + 24);
  *(__dst + 5) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return __dst;
}

uint64_t sub_1005A6BE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E62000;
  a2[1] = v2;
  return result;
}

void sub_1005A6C14(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 80));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1005A6CF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005A6DB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E62080;
  a2[1] = v2;
  return result;
}

void sub_1005A6DDC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 80));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1005A6EBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005A6F08(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

double sub_1005A6FF0(uint64_t a1)
{
  *a1 = off_101E62100;
  *(a1 + 60) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_1005A7024(uint64_t a1)
{
  *a1 = off_101E62100;
  v2 = (a1 + 24);
  v4 = (a1 + 32);
  sub_100140868(&v4);
  sub_100140928(v2, 0);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    sub_100140988(a1 + 16, v3);
  }

  sub_100140928((a1 + 8), 0);
  PB::Base::~Base(a1);
}

void sub_1005A70B4(uint64_t a1)
{
  sub_1005A7024(a1);

  operator delete();
}

uint64_t sub_1005A70EC(uint64_t result, uint64_t a2)
{
  *result = off_101E62100;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 60) = 0;
  *(result + 40) = 0u;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 60))
  {
    v2 = *(a2 + 56);
    *(result + 60) |= 1u;
    *(result + 56) = v2;
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 32) != *(a2 + 40))
  {
    sub_1005A729C();
  }

  return result;
}

uint64_t sub_1005A73F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "profileId", v6);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "selectableProfiles");
  }

  if (*(a1 + 60))
  {
    PB::TextFormatter::format(this, "status", *(a1 + 56));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1005A74F8(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_57;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 60) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v32 = 0;
              v33 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v34 = v23 - v24;
              if (!v17)
              {
                v34 = 0;
              }

              v35 = (v25 + v24);
              v36 = v24 + 1;
              while (1)
              {
                if (!v34)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_52;
                }

                v37 = *v35;
                *(this + 1) = v36;
                v28 |= (v37 & 0x7F) << v32;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                --v34;
                ++v35;
                ++v36;
                v14 = v33++ > 8;
                if (v14)
                {
LABEL_48:
                  LODWORD(v28) = 0;
                  goto LABEL_52;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_48;
                }
              }
            }

LABEL_52:
            *(a1 + 56) = v28;
            goto LABEL_53;
          case 4:
            operator new();
          case 5:
            sub_1005A78D4();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v39 = 0;
        return v39 & 1;
      }

LABEL_53:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_57:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1005A7A20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 2u);
  }

  if (*(v3 + 60))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 56), 3u);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeSubmessage(this, v8, 5u);
  }

  return result;
}

void *sub_1005A7AC0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.InternetProbe.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.InternetProbe.2";
  }

  v14 = "InternetProbe.X";
  if (v13 == 2)
  {
    v14 = "InternetProbe.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.InternetProbe.1";
  }

  else
  {
    v15 = v12;
  }

  v16 = "InternetProbe.1";
  if (v13 != 1)
  {
    v16 = v14;
  }

  sub_100AA83C8(a1, off_101E62BE8, &v19, a3, a4, &object, a6, v15, v16);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E62188;
  a1[8] = off_101E626E8;
  a1[9] = off_101E62988;
  a1[10] = off_101E62B70;
  return a1;
}

void sub_1005A7C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_1005A7C7C(uint64_t *a1)
{
  sub_100AA8914(a1, off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7CAC(uint64_t a1)
{
  sub_100AA8914((a1 - 64), off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7CE0(uint64_t a1)
{
  sub_100AA8914((a1 - 72), off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7D14(uint64_t a1)
{
  sub_100AA8914((a1 - 80), off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7D48(uint64_t *a1)
{
  sub_100AA8914(a1, off_101E62BE8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void *sub_1005A7DE8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.BootstrapRoamingInternetBypass.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.BootstrapRoamingInternetBypass.2";
  }

  v14 = "BootstrapRoamingInternetBypass.X";
  if (v13 == 2)
  {
    v14 = "BootstrapRoamingInternetBypass.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.BootstrapRoamingInternetBypass.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "BootstrapRoamingInternetBypass.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E64D40, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E642E0;
  a1[8] = off_101E64840;
  a1[9] = off_101E64AE0;
  a1[10] = off_101E64CC8;
  return a1;
}

void sub_1005A7F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_1005A7FA0(uint64_t a1)
{
  sub_10096807C(a1, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7FD0(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A8004(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A8038(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A806C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E64D40);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

const void **sub_1005A8114@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  *&v4 = MGCopyAnswer();
  sub_100222990(&v3, &v4);
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *a1 = v4;
  *(a1 + 16) = v5;
  return sub_100005978(&v3);
}

void sub_1005A818C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1005A81B0@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  *&v4 = MGCopyAnswer();
  sub_100222990(&v3, &v4);
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *a1 = v4;
  *(a1 + 16) = v5;
  return sub_100005978(&v3);
}

void sub_1005A8228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1005A824C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = 0;
  v6 = MGCopyAnswer();
  sub_100222990(&v5, &v6);
  if (v5)
  {
    v6 = 0;
    v7 = 0uLL;
    ctu::cf::assign();
    v2 = v7;
    v3 = *(&v7 + 7);
    *a1 = v6;
    *(a1 + 8) = v2;
    *(a1 + 15) = v3;
    *(a1 + 23) = HIBYTE(v7);
  }

  return sub_100005978(&v5);
}

void sub_1005A82D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A82FC()
{
  v2 = 0;
  v3 = 0;
  v1 = 16;
  if (!sysctlbyname("kern.boottime", &v2, &v1, 0, 0))
  {
    return v2;
  }

  result = 0;
  LODWORD(v3) = 0;
  return result;
}

const void **sub_1005A8358@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  theData = 0;
  v5 = MGCopyAnswer();
  sub_10002D544(&theData, &v5);
  if (theData && CFDataGetLength(theData))
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    sub_10018A52C(a1, BytePtr, &BytePtr[Length], Length);
  }

  return sub_10002D760(&theData);
}

void sub_1005A83EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002D760(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

const void **sub_1005A8414@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  memset(&v12, 0, sizeof(v12));
  result = stat("/System/Library/CoreServices/SystemVersion.plist", &v12);
  if (!result)
  {
    v3 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
    v11 = v3;
    if (v3)
    {
      v4 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v3);
      stream = v4;
      if (v4)
      {
        CFReadStreamOpen(v4);
        theDict = 0;
        format = 0;
        Value = CFPropertyListCreateWithStream(kCFAllocatorDefault, stream, 0, 0, &format, 0);
        sub_100138C38(&theDict, &Value);
        if (theDict)
        {
          v7 = 0;
          Value = CFDictionaryGetValue(theDict, @"ProductBuildVersion");
          sub_100060DE8(&v7, &Value);
          if (v7)
          {
            Value = 0;
            v14 = 0uLL;
            ctu::cf::assign();
            v5 = v14;
            v6 = *(&v14 + 7);
            *a1 = Value;
            *(a1 + 8) = v5;
            *(a1 + 15) = v6;
            *(a1 + 23) = HIBYTE(v14);
          }

          sub_100005978(&v7);
        }

        sub_10001021C(&theDict);
      }

      sub_1005A8614(&stream);
    }

    return sub_1002030AC(&v11);
  }

  return result;
}

void sub_1005A8568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_100005978(va);
  sub_10001021C(va1);
  sub_1005A8614(va2);
  sub_1002030AC(va3);
  _Unwind_Resume(a1);
}

BOOL sub_1005A85C0()
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("kern.darkboot", &v3, &v2, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v3 == 0;
  }

  return !v0;
}

const void **sub_1005A8614(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const char *sub_1005A8648(int a1)
{
  if (a1)
  {
    return "kActive";
  }

  else
  {
    return "kIdle";
  }
}

char *sub_1005A8668@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = (*result & 0xFFFFFFFD) == 0;
  if (result[31] < 0)
  {
    result = sub_100005F2C((a2 + 8), *(result + 1), *(result + 2));
  }

  else
  {
    *(a2 + 8) = *(result + 8);
    *(a2 + 24) = *(result + 3);
  }

  if (v2[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(v2 + 4), *(v2 + 5));
  }

  else
  {
    *(a2 + 32) = *(v2 + 2);
    *(a2 + 48) = *(v2 + 6);
  }

  *(a2 + 56) = *(v2 + 7);
  return result;
}

void sub_1005A8700(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A871C(Registry **a1@<X0>, os_log_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_7:
    v17 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_101774ED4(v17);
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    if (v16)
    {
      return;
    }

LABEL_31:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  v18 = [NSData nonOwningDataWithBytes:*a3 length:a3[1] - *a3];
  v19 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Decoding composing indication XML document using BlastDoor", buf, 2u);
  }

  v36 = 0;
  v37 = 0;
  v35 = 0;
  (*(*v15 + 16))(&v35, v15);
  v34 = 0;
  *__p = 0u;
  v33 = 0u;
  *buf = 0u;
  v31 = 0u;
  v24 = 0;
  *&v25 = &v37;
  (*(*v35 + 24))(buf);
  sub_1003A5C24(&v24);
  v20 = v37;
  if (v37)
  {
    v21 = *a2;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_101774E18(v20, v21);
    }
  }

  else
  {
    if (v34)
    {
      sub_1005A8668(buf, &v24);
      *a4 = v24;
      *(a4 + 8) = v25;
      *(a4 + 24) = v26;
      *(a4 + 32) = v27;
      v22 = v29;
      *(a4 + 48) = v28;
      *(a4 + 56) = v22;
      *(a4 + 64) = 1;
      goto LABEL_23;
    }

    v23 = *a2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_101774E90(v23);
    }
  }

  *a4 = 0;
  *(a4 + 64) = 0;
LABEL_23:
  if (v34 == 1)
  {
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*&buf[8]);
    }
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  sub_1003A5A8C(&v37);

  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }
}

void sub_1005A89FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1005A8FC4(va);
  v14 = *(v12 - 80);
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1003A5A8C((v12 - 72));

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1005A8A4C()
{
  if (v0)
  {
    JUMPOUT(0x1005A8A44);
  }

  JUMPOUT(0x1005A8A3CLL);
}

uint64_t sub_1005A8A5C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  sub_10000C320(&v22);
  sub_10000501C(__p, "<?xml version=1.0 encoding=utf-8 ?>");
  sub_100917DBC(&v22);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "<isComposing xmlns=urn:ietf:params:xml:ns:im-iscomposing>");
  sub_100917DBC(&v22);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (*a1 != 1)
  {
    sub_10000501C(__p, " <state>idle</state>");
    sub_100917DBC(&v22);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v9 = __p[0];
    goto LABEL_17;
  }

  sub_10000501C(__p, " <state>active</state>");
  sub_100917DBC(&v22);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    std::to_string(&v18, v4);
    v5 = std::string::insert(&v18, 0, " <refresh>", 0xAuLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v19, "</refresh>", 0xAuLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v21 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_100917DBC(&v22);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v18.__r_.__value_.__r.__words[0];
LABEL_17:
      operator delete(v9);
    }
  }

LABEL_18:
  v10 = *(a1 + 31);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 16);
  }

  if (v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v19, "</lastactive>", 0xDuLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v21 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    sub_100917DBC(&v22);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  v13 = *(a1 + 55);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 40);
  }

  if (v13)
  {
    std::operator+<char>();
    v14 = std::string::append(&v19, "</contenttype>", 0xEuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v21 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_100917DBC(&v22);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  sub_10000C030(&v23);
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  sub_100061574(&v22, __p);
  sub_100061574(&v22, &v19);
  sub_100C180E0(a2);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  *&v23 = v16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(*(&v25 + 1));
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1005A8EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1005A8FC4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

void sub_1005A913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15)
  {
    sub_100004A34(v15);
    if (!v14)
    {
      goto LABEL_3;
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
LABEL_3:
  operator delete();
}

uint64_t sub_1005A91A0(uint64_t a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a4[1];
  v15 = *a4;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v14 = *(a5 + 16);
  }

  sub_10031435C(a1, &object, a3, &v15, "cp.mm.ret.tr", __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &off_101E65B30;
  v11 = a4[1];
  *(a1 + 160) = *a4;
  *(a1 + 168) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 1;
  return a1;
}

void sub_1005A92B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

CellularPlanProvisioningMonitorModeInterface *sub_1005A92F0(CellularPlanProvisioningMonitorModeInterface *this)
{
  *this = &off_101E65B30;
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_10031452C(this);
}

void sub_1005A9350(CellularPlanProvisioningMonitorModeInterface *a1)
{
  sub_1005A92F0(a1);

  operator delete();
}

void sub_1005A9388(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 176) = 0;

    sub_100314A14(a1, 0x100u);
    return;
  }

  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        (*(*v4 + 24))(v4, a1 + 64);
        sub_100314A14(a1, 0x100u);
LABEL_13:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_101774F18(v5);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

void sub_1005A9478(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I handling vinyl info update in monitor mode", v7, 2u);
  }

  v3 = a1[21];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[20];
      if (v5)
      {
        if ((sIsProfileInstalled() & 1) != 0 || (*(*v5 + 32))(v5, a1 + 8))
        {
          (*(*a1 + 40))(a1, 257);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_101774F18(v6);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

LABEL_12:
  sub_100004A34(v4);
}

void sub_1005A9648(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005A971C);
  __cxa_rethrow();
}

void sub_1005A9688(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A96DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005A971C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_1005A9748(void *a1, void *a2, unsigned int a3, NSObject **a4, uint64_t a5)
{
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_100337F18(a1, a2, a3, &object, a5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E65C40;
  return a1;
}

void sub_1005A97D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A97F8(uint64_t a1)
{
  sub_1003380F4(a1);

  operator delete();
}

void sub_1005A9830(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  (*(**(a1 + 88) + 112))(&v6);
  v4 = v6;
  if (v6)
  {
    v5 = sub_1000973D0(a1);
    (*(*v4 + 104))(v4, v5, a2);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1005A98E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A98F8(uint64_t a1@<X0>, uint64_t a2@<X1>, CSIPacketAddress *a3@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  (*(**(a1 + 88) + 16))(&v10);
  v5 = v10;
  v6 = v11;
  if (v10 == v11)
  {
LABEL_8:
    CSIPacketAddress::CSIPacketAddress(a3);
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(*v8 + 80))(v8, a2) == 6)
      {
        break;
      }

      if (v7)
      {
        sub_100004A34(v7);
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    v9 = (*(*v8 + 96))(v8, a2);
    CSIPacketAddress::CSIPacketAddress(a3, v9);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  v13 = &v10;
  sub_1000212F4(&v13);
}

void sub_1005A9A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  a12 = &a9;
  sub_1000212F4(&a12);
  _Unwind_Resume(a1);
}

void sub_1005A9A70(uint64_t a1@<X0>, uint64_t a2@<X1>, CSIPacketAddress *a3@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(**(a1 + 88) + 112))(&v5);
  if (v5)
  {
    (*(*v5 + 152))(v5, a2);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(a3);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1005A9B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A9B30(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = "getStatistics";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v11, 0xCu);
  }

  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  v11 = 0uLL;
  (*(**(a1 + 88) + 112))(&v11);
  if (v11)
  {
    (*(*v11 + 24))(v11, a2, a3, a4, a5);
  }

  if (*(&v11 + 1))
  {
    sub_100004A34(*(&v11 + 1));
  }
}

void sub_1005A9C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A9C9C(uint64_t a1, char a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "goOffline";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v5, 0xCu);
  }

  v5 = 0uLL;
  (*(**(a1 + 88) + 112))(&v5);
  if (v5)
  {
    if (a2)
    {
      (*(*v5 + 80))();
    }

    if ((a2 & 2) != 0)
    {
      (*(*v5 + 80))(v5, 2);
    }
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1005A9DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A9E0C(CSIPacketAddress *a1, int a2)
{
  isIPv4 = CSIPacketAddress::isIPv4(a1);
  if (a2 == 2 && isIPv4 || (result = CSIPacketAddress::isIPv6(a1), a2 == 1) && result)
  {
    CSIPacketAddress::CSIPacketAddress(v6);
    return CSIPacketAddress::operator=();
  }

  return result;
}

uint64_t sub_1005A9E70(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "goOnline";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: start", &buf, 0xCu);
  }

  v32 = 0;
  v33 = 0;
  (*(**(a1 + 88) + 112))(&v32);
  if (v32)
  {
    buf = 0uLL;
    v35 = 0;
    CSIPacketAddress::CSIPacketAddress(&buf);
    memset(v31, 0, sizeof(v31));
    v12 = (*(**a2 + 96))(*a2, a3);
    CSIPacketAddress::CSIPacketAddress(v31, v12);
    memset(v30, 0, sizeof(v30));
    v13 = (*(**a2 + 104))();
    CSIPacketAddress::CSIPacketAddress(v30, v13);
    memset(v29, 0, sizeof(v29));
    v14 = (*(**a2 + 112))();
    CSIPacketAddress::CSIPacketAddress(v29, v14);
    sub_1005A9E0C(v31, a3);
    sub_1005A9E0C(v30, a3);
    sub_1005A9E0C(v29, a3);
    if (((*(**a2 + 128))() & 1) == 0)
    {
      addMask();
    }

    v15 = (*(**a2 + 56))();
    if (a3 != 2 || v15 == 1)
    {
      goto LABEL_13;
    }

    if (!matchMask() || (CSIPacketAddress::operator=(), CSIPacketAddress::isLinkLocal(v31)))
    {
      CSIPacketAddress::operator=();
    }

    if (!matchMask() || (CSIPacketAddress::isLinkLocal(v29) & 1) == 0)
    {
LABEL_13:
      CSIPacketAddress::operator=();
    }

    if (a3 == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = v32;
    v18 = *(**a2 + 56);
    if (a6)
    {
      v19 = v18();
      v20 = (*(**a2 + 120))(*a2, a3);
      v21 = (*(**a2 + 120))(*a2, v16);
      v22 = (*(**a2 + 192))(*a2, 0);
      matched = matchMask();
      v24 = matchMask();
      v25 = (*v17 + 72);
    }

    else
    {
      v19 = v18();
      v20 = (*(**a2 + 120))(*a2, a3);
      v21 = (*(**a2 + 120))(*a2, v16);
      v22 = (*(**a2 + 192))(*a2, 0);
      matched = matchMask();
      v24 = matchMask();
      v25 = (*v17 + 64);
    }

    BYTE5(v28) = v24 ^ 1;
    BYTE4(v28) = matched;
    LODWORD(v28) = a4;
    v26 = (*v25)(v17, v19, v31, v29, v20, v21, v22, a3, v28);
  }

  else
  {
    v26 = 0;
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  return v26;
}

void sub_1005AA39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AA3CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13) = 136315138;
    *(&v13 + 4) = "refreshDNS";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v13, 0xCu);
  }

  v13 = 0uLL;
  (*(**(a1 + 88) + 112))(&v13);
  v7 = v13;
  if (v13)
  {
    v8 = (*(**a2 + 120))(*a2, a3);
    if (a3 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = (*(**a2 + 120))(*a2, v9);
    v11 = (*(*v7 + 128))(v7, a3, v8, v10);
  }

  else
  {
    v11 = 0;
  }

  if (*(&v13 + 1))
  {
    sub_100004A34(*(&v13 + 1));
  }

  return v11;
}

uint64_t sub_1005AA58C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "refreshIPv6";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ipv6Service", &v5, 0xCu);
  }

  v5 = 0uLL;
  (*(**(a1 + 88) + 112))(&v5);
  if (v5)
  {
    v3 = (*(*v5 + 112))(v5);
  }

  else
  {
    v3 = 0;
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }

  return v3;
}

void sub_1005AA6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AA6C8(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  (*(**(a1 + 88) + 112))(&v3);
  if (v3)
  {
    v1 = (*(*v3 + 120))(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_1005AA764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AA77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = "updateMTU";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v7, 0xCu);
  }

  v7 = 0uLL;
  (*(**(a1 + 88) + 112))(&v7);
  if (v7)
  {
    (*(*v7 + 200))(v7, a2, a3);
  }

  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }
}

void sub_1005AA8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AA8EC(capabilities::ct *a1@<X0>, dispatch_object_t *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (capabilities::ct::supportsCellRadio(a1))
  {
    if (*a2)
    {
      dispatch_retain(*a2);
    }

    sub_1005AA9E8(&v4);
  }

  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_1005AAAEC(&v4);
}

void sub_1005AA9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AA9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x1005AA9D0);
  }

  JUMPOUT(0x1005AA9CCLL);
}

void sub_1005AA9E8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1005AAAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AAAEC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1005AABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AAC70(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005AAD44);
  __cxa_rethrow();
}

void sub_1005AACB0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005AAD04(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AAD44(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005AADF0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005AAEC4);
  __cxa_rethrow();
}

void sub_1005AAE30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005AAE84(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AAEC4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

const char *sGetLogDomainForInstance(int a1)
{
  v1 = "msg.mms.op.ntfrsp.?";
  if (a1 == 2)
  {
    v1 = "msg.mms.op.ntfrsp.2";
  }

  if (a1 == 1)
  {
    return "msg.mms.op.ntfrsp.1";
  }

  else
  {
    return v1;
  }
}

void sub_1005AAF1C(uint64_t a1, int a2, uint64_t *a3, char *a4, char *a5, uint64_t *a6)
{
  v9 = a3[1];
  v16 = *a3;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 0;
  v10 = a6[1];
  v12 = *a6;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D102C(a1, a2, &v16, &v14, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  v18[0] = off_101E2A828;
  v18[1] = sGetLogDomainForInstance;
  v18[3] = v18;
  sub_1005AB2A4((a1 + 216));
  sub_1000A8744(v18);
  *a1 = &off_101E66068;
  *(a1 + 224) = 0u;
  *(a1 + 8) = off_101E661F0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  v11 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100016890((a1 + 224), a5);
  sub_100016890((a1 + 248), a4);
  operator new();
}

void sub_1005AB1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (*(v13 + 271) < 0)
  {
    operator delete(*(v13 + 248));
  }

  if (*(v13 + 247) < 0)
  {
    operator delete(*v14);
  }

  v16 = *(v13 + 216);
  *(v13 + 216) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  sub_1004D1284(v13);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1005AB2A4(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1005AB3FC(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void sub_1005AB46C(MMSOperationInterface *this)
{
  *this = &off_101E66068;
  *(this + 1) = off_101E661F0;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  v2 = *(this + 27);
  *(this + 27) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1004D1284(this);
}

void sub_1005AB538(MMSOperationInterface *a1)
{
  sub_1005AB46C(a1);

  operator delete();
}

void sub_1005AB570(uint64_t a1)
{
  sub_1005AB46C((a1 - 8));

  operator delete();
}

BOOL sub_1005AB5AC(uint64_t a1)
{
  result = sub_1004D1694(a1);
  if (result)
  {
    v3 = *(a1 + 247);
    if (v3 < 0)
    {
      v3 = *(a1 + 232);
    }

    return v3 != 0;
  }

  return result;
}

void sub_1005AB5E8(uint64_t a1)
{
  v2 = sub_1004D15AC(a1);
  v3 = (*(**(a1 + 216) + 16))(*(a1 + 216), v2);
  v40 = 0;
  v41 = 0;
  v4 = sub_1004D15AC(a1);
  sub_1004D1140(a1, v4, &v40);
  if (!v40 || !*(a1 + 168) || ((v5 = (*(*v40 + 40))(), v6 = *(v5 + 23), v7 = *v5, v8 = (*(**(a1 + 168) + 40))(*(a1 + 168)), v6 >= 0) ? (v9 = v5) : (v9 = v7), *(v8 + 23) >= 0 ? (v10 = v8) : (v10 = *v8), strcasecmp(v9, v10)))
  {
    if ((*(**(a1 + 168) + 264))(*(a1 + 168)))
    {
      v11 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (*(**(a1 + 168) + 40))(*(a1 + 168));
        v13 = *(v12 + 23);
        v14 = *v12;
        v15 = sub_1004D149C(a1);
        if (v13 >= 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = v14;
        }

        *buf = 136315394;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending m-notifyresp-ind to MMSC that hosted the message (%s), MsgId: %u", buf, 0x12u);
      }

      v17 = *(a1 + 176);
      v38 = *(a1 + 168);
      v39 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1004D17E0(a1, &v38);
      if (v39)
      {
        sub_100004A34(v39);
      }
    }
  }

  if (*(a1 + 184))
  {
    goto LABEL_31;
  }

  v18 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (*(*v40 + 40))(v40);
    v20 = *(v19 + 23);
    v21 = *v19;
    v22 = sub_1004D149C(a1);
    if (v20 >= 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    *buf = 136315394;
    *&buf[4] = v23;
    *&buf[12] = 1024;
    *&buf[14] = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Sending m-notifyresp-ind to our carrier configured MMSC (%s), MsgId: %u", buf, 0x12u);
  }

  v36 = v40;
  v37 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D17E0(a1, &v36);
  if (v37)
  {
    sub_100004A34(v37);
  }

  if (*(a1 + 184))
  {
LABEL_31:
    *buf = 0;
    *&buf[8] = 0;
    sub_1004D2664(a1, buf);
    if (*buf)
    {
      sub_1004D19AC(a1);
    }

    v24 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (v24)
    {
      sub_100004A34(v24);
    }

    v25 = *v3;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = sub_1004D149C(a1);
      sub_101774F98(v42, v26, v25);
    }

    v27 = *(a1 + 136);
    sub_100004AA0(&v32, (a1 + 16));
    (*(*v27 + 16))(v27, 1, &v32);
    if (v33)
    {
      sub_100004A34(v33);
    }

    v28 = *&buf[8];
    if (*&buf[8])
    {
LABEL_40:
      sub_100004A34(v28);
    }
  }

  else
  {
    v29 = *v3;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_1004D149C(a1);
      sub_101774FD4(buf, v30, v29);
    }

    v31 = *(a1 + 136);
    sub_100004AA0(&v34, (a1 + 16));
    (*(*v31 + 16))(v31, 1, &v34);
    v28 = v35;
    if (v35)
    {
      goto LABEL_40;
    }
  }

  if (v41)
  {
    sub_100004A34(v41);
  }
}

void sub_1005ABB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ABC18(uint64_t a1, _DWORD **a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = sub_100BB1A2C(*a2);
  v7 = *v5;
  if (v6)
  {
    v8 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
    v9 = 0;
    if (v8)
    {
      v10 = (a1 + 224);
      if (*(a1 + 247) < 0)
      {
        v10 = *v10;
      }

      v11 = (a1 + 248);
      if (*(a1 + 271) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315650;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 1024;
      v21 = sub_1004D149C(a1);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I notifyresp %s %s succeeded, MsgId: %u", buf, 0x1Cu);
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101775010(a1, v7);
    }

    v9 = 1;
  }

  v12 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 136);
  sub_100004AA0(&v14, (a1 + 16));
  (*(*v13 + 16))(v13, v9, &v14);
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1005ABDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005ABE1C(uint64_t a1, NSObject **a2, void *a3, char *a4)
{
  *a1 = off_101E2A4E8;
  *(a1 + 8) = off_101E68950;
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, a4);
  sub_1005ABF80((a1 + 16), a2, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  *a1 = off_101E662B0;
  *(a1 + 8) = off_101E663E0;
  v7 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 224;
  *(a1 + 232) = a1 + 224;
  *(a1 + 240) = 0;
  return a1;
}

void sub_1005ABF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_1005ABF80(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1005ABFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_1005AC00C(uint64_t a1)
{
  *a1 = off_101E662B0;
  *(a1 + 8) = off_101E663E0;
  sub_1005C0E30((a1 + 224));
  v2 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1005C1A98(a1 + 184);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_100045B14(a1 + 120, *(a1 + 128));
  v5 = (a1 + 96);
  sub_1005C0EBC(&v5);
  sub_10006DCAC(a1 + 72, *(a1 + 80));
  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
}

void sub_1005AC130(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 152);
  *(a1 + 144) = v3;
  *(a1 + 152) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

BOOL sub_1005AC180(uint64_t a1)
{
  (*(*a1 + 232))(v3);
  if ((v4 & 0x80000000) == 0)
  {
    return v4 != 0;
  }

  v1 = v3[1] != 0;
  operator delete(v3[0]);
  return v1;
}

void sub_1005AC1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 2;
  LOBYTE(__p) = 11;
  v5 = *(a5 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  (*(*v5 + 48))(v5, v6);
  if (v6[0] == 1)
  {
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }
}

void sub_1005AC27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11)
{
  if (a9 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AC2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 2818;
  v6 = *(a6 + 24);
  if (!v6)
  {
    sub_100022DB4();
  }

  return (*(*v6 + 48))(v6, &v8);
}

uint64_t sub_1005AC2FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

const void **sub_1005AC344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = 2;
  LOBYTE(v7) = 11;
  v4 = *(a4 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  result = (*(*v4 + 48))(v4, v6);
  if (v6[0] == 1)
  {
    return sub_10001021C(&v7);
  }

  return result;
}

void sub_1005AC3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 1)
  {
    sub_10001021C((v9 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AC3E8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v7 = a1[10];
  if (!v7)
  {
LABEL_6:
    v11 = a6;
    v12 = 267;
LABEL_7:

    return sub_10010EE84(v11, v12);
  }

  while (1)
  {
    v10 = *(v7 + 7);
    if (v10 <= 0)
    {
      break;
    }

LABEL_5:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (v10 < 0)
  {
    ++v7;
    goto LABEL_5;
  }

  if (!a4[2])
  {
    v11 = a6;
    v12 = 257;
    goto LABEL_7;
  }

  memset(v47, 0, sizeof(v47));
  sub_1009BD270(v47);
  *cf = 0u;
  *v46 = 0u;
  *&v46[20] = 0;
  memset(v44, 0, sizeof(v44));
  v46[8] = 2;
  *&v46[12] = 0x50000003CLL;
  sub_1009BED68(v47);
  v14 = sub_1005C1B94((a1 + 15), &v59);
  if (a1 + 16 == v14)
  {
    v24 = a1[6];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v43 >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      *v58 = 136315138;
      *&v58[4] = v25;
      v26 = "#E %s not found";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, v58, 0xCu);
      if (v43 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_52:
    sub_10010EE84(a6, 257);
    goto LABEL_53;
  }

  v15 = a1[12];
  v16 = a1[13];
  if (v15 != v16)
  {
    v17 = v14 + 6;
    v18 = *(v14 + 71);
    if (v18 >= 0)
    {
      v19 = *(v14 + 71);
    }

    else
    {
      v19 = v14[7];
    }

    while (1)
    {
      v20 = *(v15 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v15 + 8);
      }

      if (v19 == v20)
      {
        v22 = v18 >= 0 ? v17 : *v17;
        v23 = v21 >= 0 ? v15 : *v15;
        if (!memcmp(v22, v23, v19))
        {
          break;
        }
      }

      v15 += 96;
      if (v15 == v16)
      {
        goto LABEL_45;
      }
    }
  }

  if (v15 == v16)
  {
LABEL_45:
    v24 = a1[6];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v43 >= 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      *v58 = 136315138;
      *&v58[4] = v34;
      v26 = "#E Device not found for %s";
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  sub_10039EF40(*(&v47[0] + 1));
  PB::Data::assign(*(*(&v47[0] + 1) + 8), &v59, v60);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v44, v15);
  if (a4[2] > 1)
  {
    v27 = a1[6];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Multiple ICCIDs set, taking first one only", buf, 2u);
    }
  }

  v28 = *(&v47[0] + 1);
  v29 = *a4;
  sub_10027F75C(*(&v47[0] + 1));
  std::string::operator=(*(v28 + 16), (v29 + 32));
  v30 = a1[6];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I [ActivateProfileReq]", buf, 2u);
  }

  sub_1005ACC40(v47, v58);
  *buf = cf[1];
  cf[1] = *v58;
  *v58 = 0;
  sub_10002D760(buf);
  sub_10002D760(v58);
  *&v46[12] = 30;
  v46[8] = (*(*a1 + 224))(a1, &v59);
  *v58 = 0uLL;
  (*(*a1 + 248))(v58, a1);
  if (*v58)
  {
    sub_100004AA0(buf, a1 + 2);
    v32 = *buf;
    v31 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
    }

    v33 = *v58;
    if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v35, v44[0].__r_.__value_.__l.__data_, v44[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v35 = v44[0];
    }

    if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v44[1].__r_.__value_.__l.__data_, v44[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v44[1];
    }

    v37 = cf[0];
    v38 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v39 = *v46;
    if (*v46)
    {
      CFRetain(*v46);
    }

    v40[0] = *&v46[8];
    *(v40 + 6) = *&v46[14];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 1174405120;
    v48[2] = sub_1005ACDB4;
    v48[3] = &unk_101E66440;
    v48[4] = a1;
    v48[5] = v32;
    v49 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100112F20(v50, a6);
    if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v51, v44[0].__r_.__value_.__l.__data_, v44[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v51 = v44[0];
    }

    if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v52, v44[1].__r_.__value_.__l.__data_, v44[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v52 = v44[1];
    }

    v53 = cf[0];
    v54 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v55 = *v46;
    if (*v46)
    {
      CFRetain(*v46);
    }

    v56[0] = *&v46[8];
    *(v56 + 6) = *&v46[14];
    v57 = v59;
    (*(*v33 + 48))(v33, &v35, v48);
    sub_1002030AC(&v39);
    sub_10002D760(&v38);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v55);
    sub_10002D760(&v54);
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    sub_100112FB8(v50);
    if (v49)
    {
      std::__shared_weak_count::__release_weak(v49);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v58[8])
  {
    sub_100004A34(*&v58[8]);
  }

LABEL_53:
  sub_1002030AC(v46);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44[0].__r_.__value_.__l.__data_);
  }

  return sub_1009BD5D4(v47);
}

void sub_1005ACC40(uint64_t a1@<X0>, CFDataRef *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  PB::Writer::Writer(&v5);
  (*(*a1 + 24))(a1, &v5);
  if (v5 == v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFDataCreate(kCFAllocatorDefault, v6, v5 - v6);
  }

  *a2 = v4;
  PB::Writer::~Writer(&v5);
}

void sub_1005ACCD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

char *sub_1005ACCF0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 24) = *(a2 + 24);
  sub_10002D728(__dst + 7, a2 + 7);
  sub_1002030F8(__dst + 8, a2 + 8);
  v6 = *(a2 + 9);
  *(__dst + 78) = *(a2 + 78);
  *(__dst + 9) = v6;
  return __dst;
}

void sub_1005ACD98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ACDB4(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005AD07C;
  v10[3] = &unk_101E66410;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_100112F20(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100112FB8(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005AD01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100112FB8(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005AD07C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_49:
        sub_100004A34(v5);
        return;
      }

      v6 = *(a1 + 56);
      v7 = v3[6];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 2)
      {
        if (v8)
        {
          v9 = sub_100A43314(*(a1 + 64));
          *buf = 136315394;
          *&buf[4] = "activateProfile";
          *&buf[12] = 2080;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
          v10 = *(a1 + 56);
          if (v10 != 2)
          {
            if (v10 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v32 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v33, v32);
          }
        }

        v11 = sub_1005AD768(*(a1 + 64));
        sub_10010EE84(a1 + 152, v11 | 0x100);
        goto LABEL_49;
      }

      if (v8)
      {
        *buf = 136315138;
        *&buf[4] = "activateProfile";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
        v6 = *(a1 + 56);
      }

      *theData = 0u;
      memset(v40, 0, 24);
      memset(v38, 0, sizeof(v38));
      *__dst = 0u;
      if (v6 != 1)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        if (v6 == 2)
        {
          v29 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v28);
        }

        else
        {
          v29 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
        }

        __cxa_throw(v28, v30, v29);
      }

      if (*(a1 + 87) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        *__dst = *(a1 + 64);
        v38[0] = *(a1 + 80);
      }

      if (*(a1 + 111) < 0)
      {
        sub_100005F2C(&v38[1], *(a1 + 88), *(a1 + 96));
      }

      else
      {
        *&v38[1] = *(a1 + 88);
        v38[3] = *(a1 + 104);
      }

      LOWORD(theData[0]) = *(a1 + 112);
      sub_10002D728(&theData[1], (a1 + 120));
      sub_1002030F8(v40, (a1 + 128));
      *(&v40[0] + 1) = *(a1 + 136);
      *(v40 + 14) = *(a1 + 142);
      (*(*v3 + 248))(buf, v3, *(a1 + 256));
      v12 = *buf;
      if (SHIBYTE(v38[3]) < 0)
      {
        sub_100005F2C(__p, v38[1], v38[2]);
      }

      else
      {
        *__p = *&v38[1];
        v36 = v38[3];
      }

      (*(*v12 + 56))(v12, __p);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100A34C5C(buf);
      if (theData[1])
      {
        memset(v34, 0, sizeof(v34));
        BytePtr = CFDataGetBytePtr(theData[1]);
        Length = CFDataGetLength(theData[1]);
        PB::Reader::Reader(v34, BytePtr, Length);
        if ((sub_100A353F0(buf, v34) & 1) == 0)
        {
          v23 = v3[6];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v41, 2u);
          }

          sub_10010EE84(a1 + 152, 269);
          goto LABEL_45;
        }

        v15 = *&buf[8];
        if (!*&buf[8])
        {
          v24 = v3[6];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Bad response", v41, 2u);
          }

          sub_10010EE84(a1 + 152, 270);
          goto LABEL_45;
        }

        v16 = *(*&buf[8] + 8);
        if (!v16 || *(v16 + 8) != 16 || ((v17 = *v16, v19 = *v17, v18 = v17[1], *(a1 + 272) == v19) ? (v20 = *(a1 + 280) == v18) : (v20 = 0), !v20))
        {
          v21 = v3[6];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v41, 2u);
          }

          sub_10010EE84(a1 + 152, 271);
          goto LABEL_45;
        }

        if (*(*&buf[8] + 24))
        {
          v25 = v3[6];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(v15 + 16);
            *v41 = 67109120;
            v42 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v41, 8u);
            v15 = *&buf[8];
          }

          v27 = *(v15 + 16);
          if (v27 > 0x19)
          {
            sub_10010EE84(a1 + 152, 256);
          }

          else
          {
            sub_10010EE84(a1 + 152, v27 | 0x100);
          }

          goto LABEL_45;
        }

        if (*(*&buf[8] + 20) == 1)
        {
          sub_10010EE84(a1 + 152, 0);
          goto LABEL_45;
        }
      }

      else
      {
        v22 = v3[6];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v34[0]) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E no response data", v34, 2u);
        }
      }

      sub_10010EE84(a1 + 152, 259);
LABEL_45:
      sub_100A34FF0(buf);
      sub_1002030AC(v40);
      sub_10002D760(&theData[1]);
      if (SHIBYTE(v38[3]) < 0)
      {
        operator delete(v38[1]);
      }

      if (SHIBYTE(v38[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      goto LABEL_49;
    }
  }
}

void sub_1005AD6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38)
{
  sub_100A34FF0(&a37);
  sub_1005AD788(&__p);
  sub_100004A34(v38);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AD768(unsigned int a1)
{
  if (a1 > 0x24)
  {
    return 23;
  }

  else
  {
    return byte_10181C5A4[a1];
  }
}

uint64_t sub_1005AD788(uint64_t a1)
{
  sub_1002030AC((a1 + 64));
  sub_10002D760((a1 + 56));
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

const void **sub_1005AD7DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(a1 + 56, (a2 + 56));
  sub_100112F20(a1 + 152, a2 + 152);
  if (*(a2 + 207) < 0)
  {
    sub_100005F2C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v5 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v5;
  }

  if (*(a2 + 231) < 0)
  {
    sub_100005F2C((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v6 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v6;
  }

  *(a1 + 232) = *(a2 + 232);
  sub_10002D728((a1 + 240), (a2 + 240));
  result = sub_1002030F8((a1 + 248), (a2 + 248));
  v8 = *(a2 + 256);
  *(a1 + 262) = *(a2 + 262);
  *(a1 + 256) = v8;
  return result;
}

void sub_1005AD8B8(_Unwind_Exception *a1)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100112FB8(v1 + 152);
  sub_1005C116C(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005AD908(uint64_t a1)
{
  sub_1002030AC((a1 + 248));
  sub_10002D760((a1 + 240));
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  sub_100112FB8(a1 + 152);
  sub_1005C116C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

const void **sub_1005AD98C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100112F20(a1 + 56, a2 + 56);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
  }

  *(a1 + 136) = *(a2 + 136);
  sub_10002D728((a1 + 144), (a2 + 144));
  result = sub_1002030F8((a1 + 152), (a2 + 152));
  v8 = *(a2 + 160);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 160) = v8;
  return result;
}

void sub_1005ADA54(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  sub_100112FB8(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005ADA94(uint64_t a1)
{
  sub_1002030AC((a1 + 152));
  sub_10002D760((a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_100112FB8(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1005ADB10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v6 = a1[10];
  if (!v6)
  {
LABEL_6:
    v49 = 2818;
    v10 = *(a5 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    return (*(*v10 + 48))(v10, &v49);
  }

  while (1)
  {
    v9 = *(v6 + 7);
    if (v9 <= 0)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v9 < 0)
  {
    ++v6;
    goto LABEL_5;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  sub_1009BD270(&v41);
  v38 = 0u;
  *v39 = 0u;
  v40 = 0;
  v37 = 0u;
  memset(v36, 0, sizeof(v36));
  v39[8] = 2;
  *&v39[12] = 0x50000003CLL;
  if (*(a4 + 40) != 1 || sub_1013F7F04(a4))
  {
    v35 = 258;
    v12 = *(a5 + 24);
    if (!v12)
    {
      sub_100022DB4();
    }

    (*(*v12 + 48))(v12, &v35);
    LOBYTE(v35) = 0;
    goto LABEL_60;
  }

  sub_1009BEDF8(&v41);
  v13 = sub_1005C1B94((a1 + 15), &v60);
  if (a1 + 16 == v13)
  {
    v23 = a1[6];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (SHIBYTE(v58) >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      LODWORD(v55) = 136315138;
      *(&v55 + 4) = v24;
      v25 = "#E %s not found";
LABEL_56:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, &v55, 0xCu);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_58:
    v34 = 1;
    v32 = *(a5 + 24);
    if (!v32)
    {
      sub_100022DB4();
    }

    (*(*v32 + 48))(v32, &v34);
    LOBYTE(v34) = 0;
    goto LABEL_60;
  }

  v14 = a1[12];
  v15 = a1[13];
  if (v14 != v15)
  {
    v16 = v13 + 6;
    v17 = *(v13 + 71);
    if (v17 >= 0)
    {
      v18 = *(v13 + 71);
    }

    else
    {
      v18 = v13[7];
    }

    while (1)
    {
      v19 = *(v14 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v14 + 8);
      }

      if (v18 == v19)
      {
        v21 = v17 >= 0 ? v16 : *v16;
        v22 = v20 >= 0 ? v14 : *v14;
        if (!memcmp(v21, v22, v18))
        {
          break;
        }
      }

      v14 += 96;
      if (v14 == v15)
      {
        goto LABEL_51;
      }
    }
  }

  if (v14 == v15)
  {
LABEL_51:
    v23 = a1[6];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (SHIBYTE(v58) >= 0)
      {
        v31 = buf;
      }

      else
      {
        v31 = *buf;
      }

      LODWORD(v55) = 136315138;
      *(&v55 + 4) = v31;
      v25 = "#E Device not found for %s";
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  sub_10039EF40(v42);
  PB::Data::assign(*(v42 + 8), &v60, &v61);
  LOWORD(v38) = (*(*a1 + 240))(a1);
  std::string::operator=(v36, v14);
  v26 = *(a4 + 39);
  if (v26 < 0)
  {
    v26 = *(a4 + 24);
  }

  if (v26)
  {
    sub_1013F05F4(buf);
    v27 = sub_1013F36E8(a4, buf);
    if (v59 < 0)
    {
      operator delete(v58);
    }

    if (!v27)
    {
      sub_10027F75C(v42);
      v28 = v42;
      sub_10027F75C(v42);
      std::string::operator=(*(v28 + 16), (a4 + 16));
    }
  }

  v29 = a1[6];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [DeleteProfileReq]", buf, 2u);
  }

  sub_1005ACC40(&v41, &v55);
  *buf = *(&v38 + 1);
  *(&v38 + 1) = v55;
  *&v55 = 0;
  sub_10002D760(buf);
  sub_10002D760(&v55);
  *&v39[12] = 120;
  v39[8] = (*(*a1 + 224))(a1, &v60);
  *buf = 0;
  v57 = 0;
  (*(*a1 + 248))(buf, a1);
  if (*buf)
  {
    v55 = 0uLL;
    sub_1002306AC(a1 + 2, &v55);
    v30 = *buf;
    sub_1005ACCF0(v33, v36);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 1174405120;
    v50[2] = sub_1005AE230;
    v50[3] = &unk_101E664A0;
    v50[4] = a1;
    v51 = v55;
    if (*(&v55 + 1))
    {
      atomic_fetch_add_explicit((*(&v55 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v52, a5);
    sub_1005ACCF0(v53, v36);
    v54 = v60;
    (*(*v30 + 48))(v30, v33, v50);
    sub_1005AD788(v33);
    sub_1005AD788(v53);
    sub_100113648(v52);
    if (*(&v51 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v51 + 1));
    }

    if (*(&v55 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v55 + 1));
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (v57)
  {
    sub_100004A34(v57);
  }

LABEL_60:
  sub_1002030AC(v39);
  sub_10002D760(&v38 + 1);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(*&v36[24]);
  }

  if ((v36[23] & 0x80000000) != 0)
  {
    operator delete(*v36);
  }

  return sub_1009BD5D4(&v41);
}

void sub_1005AE158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, char a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  sub_1005AD788(v61 + 88);
  sub_100113648(v62 + 56);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  sub_1005AD788(&a9);
  v65 = *(v63 - 168);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  v66 = *(v63 - 152);
  if (v66)
  {
    sub_100004A34(v66);
  }

  sub_1005AD788(&a25);
  sub_1009BD5D4(&a37);
  _Unwind_Resume(a1);
}

void sub_1005AE230(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005AE4F8;
  v10[3] = &unk_101E66470;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005AE498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005AE4F8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "deleteProfile";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "deleteProfile";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = *&buf[16];
              if (*&buf[16])
              {
                v17 = *(*&buf[16] + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(*&buf[16] + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005AEC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

const void **sub_1005AED28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(a1 + 56, (a2 + 56));
  sub_1001135B0(a1 + 152, a2 + 152);
  if (*(a2 + 207) < 0)
  {
    sub_100005F2C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v5 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v5;
  }

  if (*(a2 + 231) < 0)
  {
    sub_100005F2C((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v6 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v6;
  }

  *(a1 + 232) = *(a2 + 232);
  sub_10002D728((a1 + 240), (a2 + 240));
  result = sub_1002030F8((a1 + 248), (a2 + 248));
  v8 = *(a2 + 256);
  *(a1 + 262) = *(a2 + 262);
  *(a1 + 256) = v8;
  return result;
}

void sub_1005AEE04(_Unwind_Exception *a1)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100113648(v1 + 152);
  sub_1005C116C(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005AEE54(uint64_t a1)
{
  sub_1002030AC((a1 + 248));
  sub_10002D760((a1 + 240));
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  sub_100113648(a1 + 152);
  sub_1005C116C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

const void **sub_1005AEED8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1001135B0(a1 + 56, a2 + 56);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
  }

  *(a1 + 136) = *(a2 + 136);
  sub_10002D728((a1 + 144), (a2 + 144));
  result = sub_1002030F8((a1 + 152), (a2 + 152));
  v8 = *(a2 + 160);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 160) = v8;
  return result;
}

void sub_1005AEFA0(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  sub_100113648(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005AEFE0(uint64_t a1)
{
  sub_1002030AC((a1 + 152));
  sub_10002D760((a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_100113648(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1005AF05C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v66 = a2;
  *(&v66 + 1) = a3;
  v7 = a1[10];
  if (!v7)
  {
LABEL_6:
    v54 = 2818;
    v12 = *(a6 + 24);
    if (!v12)
    {
      sub_100022DB4();
    }

    return (*(*v12 + 48))(v12, &v54);
  }

  while (1)
  {
    v11 = *(v7 + 7);
    if (v11 <= 0)
    {
      break;
    }

LABEL_5:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (v11 < 0)
  {
    ++v7;
    goto LABEL_5;
  }

  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  sub_1009BD270(v51);
  *cf = 0u;
  *v50 = 0u;
  *&v50[20] = 0;
  memset(v48, 0, sizeof(v48));
  v50[8] = 2;
  *&v50[12] = 0x50000003CLL;
  sub_1009BEFA8(v51);
  v14 = sub_1005C1B94((a1 + 15), &v66);
  if (a1 + 16 == v14)
  {
    v24 = a1[6];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if ((SBYTE7(v45) & 0x80u) == 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v25;
      v26 = "#E %s not found";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
      if (SBYTE7(v45) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_44:
    v47 = 1;
    v33 = *(a6 + 24);
    if (!v33)
    {
      sub_100022DB4();
    }

    (*(*v33 + 48))(v33, &v47);
    LOBYTE(v47) = 0;
    goto LABEL_46;
  }

  v15 = a1[12];
  v16 = a1[13];
  if (v15 != v16)
  {
    v17 = v14 + 6;
    v18 = *(v14 + 71);
    if (v18 >= 0)
    {
      v19 = *(v14 + 71);
    }

    else
    {
      v19 = v14[7];
    }

    while (1)
    {
      v20 = *(v15 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v15 + 8);
      }

      if (v19 == v20)
      {
        v22 = v18 >= 0 ? v17 : *v17;
        v23 = v21 >= 0 ? v15 : *v15;
        if (!memcmp(v22, v23, v19))
        {
          break;
        }
      }

      v15 += 96;
      if (v15 == v16)
      {
        goto LABEL_37;
      }
    }
  }

  if (v15 == v16)
  {
LABEL_37:
    v24 = a1[6];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if ((SBYTE7(v45) & 0x80u) == 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v32;
      v26 = "#E Device not found for %s";
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  sub_10039EF40(*(&v52 + 1));
  PB::Data::assign(*(*(&v52 + 1) + 8), &v66, v67);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v48, v15);
  v27 = *(&v52 + 1);
  sub_10027F75C(*(&v52 + 1));
  std::string::operator=(*(v27 + 16), a4);
  v28 = *(&v52 + 1);
  v29 = *(a4 + 24);
  *(*(&v52 + 1) + 60) |= 1u;
  *(v28 + 56) = v29;
  if (*(a5 + 24) == 1)
  {
    v31 = *a5;
    v30 = *(a5 + 8);
    while (v31 != v30)
    {
      v45 = 0u;
      v46 = 0u;
      *__p = 0u;
      sub_1007F9EE0(__p);
      if (sub_10039F3B8(v31, __p))
      {
        sub_1005AF8F8();
      }

      sub_1007F9F90(__p);
      v31 += 88;
    }
  }

  v34 = a1[6];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [UpdateProfileReq]", __p, 2u);
  }

  sub_1005ACC40(v51, buf);
  __p[0] = cf[1];
  cf[1] = *buf;
  *buf = 0;
  sub_10002D760(__p);
  sub_10002D760(buf);
  *&v50[12] = 120;
  v50[8] = (*(*a1 + 224))(a1, &v66);
  *buf = 0uLL;
  (*(*a1 + 248))(buf, a1);
  if (*buf)
  {
    sub_100004AA0(__p, a1 + 2);
    v36 = __p[0];
    v35 = __p[1];
    if (__p[1])
    {
      atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v35);
    }

    v37 = *buf;
    if (SHIBYTE(v48[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v38, v48[0].__r_.__value_.__l.__data_, v48[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v48[0];
    }

    if (SHIBYTE(v48[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v39, v48[1].__r_.__value_.__l.__data_, v48[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v48[1];
    }

    v40 = cf[0];
    v41 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v42 = *v50;
    if (*v50)
    {
      CFRetain(*v50);
    }

    v43[0] = *&v50[8];
    *(v43 + 6) = *&v50[14];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 1174405120;
    v55[2] = sub_1005AFA4C;
    v55[3] = &unk_101E66500;
    v55[4] = a1;
    v55[5] = v36;
    v56 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v57, a6);
    if (SHIBYTE(v48[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v58, v48[0].__r_.__value_.__l.__data_, v48[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = v48[0];
    }

    if (SHIBYTE(v48[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v59, v48[1].__r_.__value_.__l.__data_, v48[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v59 = v48[1];
    }

    v60 = cf[0];
    v61 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v62 = *v50;
    if (*v50)
    {
      CFRetain(*v50);
    }

    v63[0] = *&v50[8];
    *(v63 + 6) = *&v50[14];
    v64 = v66;
    (*(*v37 + 48))(v37, &v38, v55);
    sub_1002030AC(&v42);
    sub_10002D760(&v41);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v62);
    sub_10002D760(&v61);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    sub_100113648(v57);
    if (v56)
    {
      std::__shared_weak_count::__release_weak(v56);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_46:
  sub_1002030AC(v50);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v48[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48[0].__r_.__value_.__l.__data_);
  }

  return sub_1009BD5D4(v51);
}

void sub_1005AF7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v73 + 56);
  if (a65)
  {
    std::__shared_weak_count::__release_weak(a65);
  }

  sub_1005AD788(&a9);
  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  v76 = *(v74 - 136);
  if (v76)
  {
    sub_100004A34(v76);
  }

  sub_1005AD788(&a29);
  sub_1009BD5D4(&a41);
  _Unwind_Resume(a1);
}

void sub_1005AFA4C(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005AFD14;
  v10[3] = &unk_101E664D0;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005AFCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005AFD14(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "updateProfile";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "updateProfile";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = v57;
              if (v57)
              {
                v17 = *(v57 + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(v57 + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B0448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0544(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *&v61 = a2;
  *(&v61 + 1) = a3;
  v6 = a1[10];
  if (!v6)
  {
LABEL_6:
    v49 = 2818;
    v10 = *(a5 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    return (*(*v10 + 48))(v10, &v49);
  }

  while (1)
  {
    v9 = *(v6 + 7);
    if (v9 <= 0)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v9 < 0)
  {
    ++v6;
    goto LABEL_5;
  }

  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  memset(v45, 0, sizeof(v45));
  sub_1009BD270(v45);
  *cf = 0u;
  *v44 = 0u;
  *&v44[20] = 0;
  memset(v42, 0, sizeof(v42));
  v44[8] = 2;
  *&v44[12] = 0x50000003CLL;
  sub_1009BEE88(v45);
  v12 = sub_1005C1B94((a1 + 15), &v61);
  if (a1 + 16 == v12)
  {
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v41 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      *v60 = 136315138;
      *&v60[4] = v23;
      v24 = "#E %s not found";
LABEL_43:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, v60, 0xCu);
      if (v41 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_45:
    v38 = 1;
    v31 = *(a5 + 24);
    if (!v31)
    {
      sub_100022DB4();
    }

    (*(*v31 + 48))(v31, &v38);
    LOBYTE(v38) = 0;
    goto LABEL_47;
  }

  v13 = a1[12];
  v14 = a1[13];
  if (v13 != v14)
  {
    v15 = v12 + 6;
    v16 = *(v12 + 71);
    if (v16 >= 0)
    {
      v17 = *(v12 + 71);
    }

    else
    {
      v17 = v12[7];
    }

    while (1)
    {
      v18 = *(v13 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v13 + 8);
      }

      if (v17 == v18)
      {
        v20 = v16 >= 0 ? v15 : *v15;
        v21 = v19 >= 0 ? v13 : *v13;
        if (!memcmp(v20, v21, v17))
        {
          break;
        }
      }

      v13 += 96;
      if (v13 == v14)
      {
        goto LABEL_38;
      }
    }
  }

  if (v13 == v14)
  {
LABEL_38:
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v41 >= 0)
      {
        v30 = buf;
      }

      else
      {
        v30 = *buf;
      }

      *v60 = 136315138;
      *&v60[4] = v30;
      v24 = "#E Device not found for %s";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  sub_10039EF40(*(&v46 + 1));
  PB::Data::assign(*(*(&v46 + 1) + 8), &v61, v62);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v42, v13);
  v25 = *(&v46 + 1);
  *(*(&v46 + 1) + 20) |= 1u;
  *(v25 + 16) = a4;
  v26 = a1[6];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I [StartSessionReq]", buf, 2u);
  }

  sub_1005ACC40(v45, v60);
  *buf = cf[1];
  cf[1] = *v60;
  *v60 = 0;
  sub_10002D760(buf);
  sub_10002D760(v60);
  *&v44[12] = 30;
  v44[8] = (*(*a1 + 224))(a1, &v61);
  *v60 = 0uLL;
  (*(*a1 + 248))(v60, a1);
  if (*v60)
  {
    sub_100004AA0(buf, a1 + 2);
    v28 = *buf;
    v27 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
    }

    v29 = *v60;
    if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v32, v42[0].__r_.__value_.__l.__data_, v42[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = v42[0];
    }

    if (SHIBYTE(v42[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v42[1].__r_.__value_.__l.__data_, v42[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v42[1];
    }

    v34 = cf[0];
    v35 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v36 = *v44;
    if (*v44)
    {
      CFRetain(*v44);
    }

    v37[0] = *&v44[8];
    *(v37 + 6) = *&v44[14];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 1174405120;
    v50[2] = sub_1005B0D4C;
    v50[3] = &unk_101E66560;
    v50[4] = a1;
    v50[5] = v28;
    v51 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v52, a5);
    if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v53, v42[0].__r_.__value_.__l.__data_, v42[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v53 = v42[0];
    }

    if (SHIBYTE(v42[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v54, v42[1].__r_.__value_.__l.__data_, v42[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v54 = v42[1];
    }

    v55 = cf[0];
    v56 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v57 = *v44;
    if (*v44)
    {
      CFRetain(*v44);
    }

    v58[0] = *&v44[8];
    *(v58 + 6) = *&v44[14];
    v59 = v61;
    (*(*v29 + 48))(v29, &v32, v50);
    sub_1002030AC(&v36);
    sub_10002D760(&v35);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v57);
    sub_10002D760(&v56);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    sub_100113648(v52);
    if (v51)
    {
      std::__shared_weak_count::__release_weak(v51);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v60[8])
  {
    sub_100004A34(*&v60[8]);
  }

LABEL_47:
  sub_1002030AC(v44);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v42[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42[0].__r_.__value_.__l.__data_);
  }

  return sub_1009BD5D4(v45);
}

void sub_1005B0C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (a71 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v72 + 56);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  sub_1005AD788(&a9);
  if (v71)
  {
    std::__shared_weak_count::__release_weak(v71);
  }

  v75 = *(v73 - 136);
  if (v75)
  {
    sub_100004A34(v75);
  }

  sub_1005AD788(&a25);
  sub_1009BD5D4(&a37);
  _Unwind_Resume(a1);
}

void sub_1005B0D4C(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005B1014;
  v10[3] = &unk_101E66530;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005B0FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005B1014(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "startSession";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "startSession";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = v56;
              if (v56)
              {
                v17 = *(v56 + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(v56 + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B1748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B1844(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *&v64 = a2;
  *(&v64 + 1) = a3;
  v6 = a1[10];
  if (!v6)
  {
LABEL_6:
    v52 = 2818;
    v10 = *(a5 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    return (*(*v10 + 48))(v10, &v52);
  }

  while (1)
  {
    v9 = *(v6 + 7);
    if (v9 <= 0)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v9 < 0)
  {
    ++v6;
    goto LABEL_5;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  sub_1009BD270(v45);
  *cf = 0u;
  *v44 = 0u;
  *&v44[20] = 0;
  memset(v42, 0, sizeof(v42));
  v44[8] = 2;
  *&v44[12] = 0x50000003CLL;
  sub_1009BEF18(v45);
  v12 = sub_1005C1B94((a1 + 15), &v64);
  if (a1 + 16 == v12)
  {
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v41 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      *v63 = 136315138;
      *&v63[4] = v23;
      v24 = "#E %s not found";
LABEL_43:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, v63, 0xCu);
      if (v41 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_45:
    v38 = 1;
    v31 = *(a5 + 24);
    if (!v31)
    {
      sub_100022DB4();
    }

    (*(*v31 + 48))(v31, &v38);
    LOBYTE(v38) = 0;
    goto LABEL_47;
  }

  v13 = a1[12];
  v14 = a1[13];
  if (v13 != v14)
  {
    v15 = v12 + 6;
    v16 = *(v12 + 71);
    if (v16 >= 0)
    {
      v17 = *(v12 + 71);
    }

    else
    {
      v17 = v12[7];
    }

    while (1)
    {
      v18 = *(v13 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v13 + 8);
      }

      if (v17 == v18)
      {
        v20 = v16 >= 0 ? v15 : *v15;
        v21 = v19 >= 0 ? v13 : *v13;
        if (!memcmp(v20, v21, v17))
        {
          break;
        }
      }

      v13 += 96;
      if (v13 == v14)
      {
        goto LABEL_38;
      }
    }
  }

  if (v13 == v14)
  {
LABEL_38:
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v41 >= 0)
      {
        v30 = buf;
      }

      else
      {
        v30 = *buf;
      }

      *v63 = 136315138;
      *&v63[4] = v30;
      v24 = "#E Device not found for %s";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  sub_10039EF40(v46);
  PB::Data::assign(*(v46 + 8), &v64, v65);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v42, v13);
  v25 = v46;
  *(v46 + 20) |= 1u;
  *(v25 + 16) = a4;
  v26 = a1[6];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I [EndSessionReq]", buf, 2u);
  }

  sub_1005ACC40(v45, v63);
  *buf = cf[1];
  cf[1] = *v63;
  *v63 = 0;
  sub_10002D760(buf);
  sub_10002D760(v63);
  *&v44[12] = 30;
  v44[8] = (*(*a1 + 224))(a1, &v64);
  *v63 = 0uLL;
  (*(*a1 + 248))(v63, a1);
  if (*v63)
  {
    sub_100004AA0(buf, a1 + 2);
    v28 = *buf;
    v27 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
    }

    v29 = *v63;
    if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v32, v42[0].__r_.__value_.__l.__data_, v42[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = v42[0];
    }

    if (SHIBYTE(v42[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v42[1].__r_.__value_.__l.__data_, v42[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v42[1];
    }

    v34 = cf[0];
    v35 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v36 = *v44;
    if (*v44)
    {
      CFRetain(*v44);
    }

    v37[0] = *&v44[8];
    *(v37 + 6) = *&v44[14];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 1174405120;
    v53[2] = sub_1005B204C;
    v53[3] = &unk_101E665C0;
    v53[4] = a1;
    v53[5] = v28;
    v54 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v55, a5);
    if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v56, v42[0].__r_.__value_.__l.__data_, v42[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v56 = v42[0];
    }

    if (SHIBYTE(v42[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v57, v42[1].__r_.__value_.__l.__data_, v42[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v57 = v42[1];
    }

    v58 = cf[0];
    v59 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v60 = *v44;
    if (*v44)
    {
      CFRetain(*v44);
    }

    v61[0] = *&v44[8];
    *(v61 + 6) = *&v44[14];
    v62 = v64;
    (*(*v29 + 48))(v29, &v32, v53);
    sub_1002030AC(&v36);
    sub_10002D760(&v35);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v60);
    sub_10002D760(&v59);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    sub_100113648(v55);
    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v63[8])
  {
    sub_100004A34(*&v63[8]);
  }

LABEL_47:
  sub_1002030AC(v44);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v42[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42[0].__r_.__value_.__l.__data_);
  }

  return sub_1009BD5D4(v45);
}

void sub_1005B1F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (a71 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v72 + 56);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  sub_1005AD788(&a9);
  if (v71)
  {
    std::__shared_weak_count::__release_weak(v71);
  }

  v75 = *(v73 - 136);
  if (v75)
  {
    sub_100004A34(v75);
  }

  sub_1005AD788(&a25);
  sub_1009BD5D4(&a37);
  _Unwind_Resume(a1);
}

void sub_1005B204C(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005B2314;
  v10[3] = &unk_101E66590;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005B22B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005B2314(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "endSession";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "endSession";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = v52;
              if (v52)
              {
                v17 = *(v52 + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(v52 + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B2A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

void sub_1005B2B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v51 = a2;
  v52 = a3;
  *cf = 0u;
  *v45 = 0u;
  *&v45[20] = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v45[8] = 2;
  *&v45[12] = 0x50000003CLL;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  sub_1009BD270(v38);
  v37 = 0;
  sub_1009BF278(v38);
  v6 = sub_1005C1B94(a1 + 120, v51);
  if ((a1 + 128) == v6)
  {
    v16 = *(a1 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v36 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315138;
      *&buf[4] = p_p;
      v18 = "#E %s not found";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      if (v36 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v7 = *(a1 + 96);
    v8 = *(a1 + 104);
    if (v7 != v8)
    {
      v9 = v6 + 6;
      v10 = *(v6 + 71);
      if (v10 >= 0)
      {
        v11 = *(v6 + 71);
      }

      else
      {
        v11 = v6[7];
      }

      while (1)
      {
        v12 = *(v7 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v7 + 8);
        }

        if (v11 == v12)
        {
          v14 = v10 >= 0 ? v9 : *v9;
          v15 = v13 >= 0 ? v7 : *v7;
          if (!memcmp(v14, v15, v11))
          {
            break;
          }
        }

        v7 += 96;
        if (v7 == v8)
        {
          goto LABEL_25;
        }
      }
    }

    if (v7 != v8)
    {
      sub_10039EF40(v39);
      PB::Data::assign(*(v39 + 8), v51, &v53);
      LOWORD(cf[0]) = (*(*a1 + 240))(a1);
      std::string::operator=(v43, v7);
      goto LABEL_35;
    }

LABEL_25:
    v16 = *(a1 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v36 >= 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p;
      }

      *buf = 136315138;
      *&buf[4] = v19;
      v18 = "#E Device not found for %s";
      goto LABEL_30;
    }
  }

  v32[0] = 2;
  v33 = 13;
  sub_100111A90(a4, 0, 0, v32);
  if (v32[0] == 1)
  {
    __p = &v33;
    sub_1000DC8D4(&__p);
  }

  v32[0] = 0;
LABEL_35:
  v20 = *(a1 + 48);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [PendingProfilesReq]", &__p, 2u);
  }

  sub_1005ACC40(v38, buf);
  __p = cf[1];
  cf[1] = *buf;
  *buf = 0;
  sub_10002D760(&__p);
  sub_10002D760(buf);
  *&v45[12] = 30;
  v45[8] = 2;
  *buf = 0uLL;
  (*(*a1 + 248))(buf, a1, 2);
  if (*buf)
  {
    sub_100004AA0(&__p, (a1 + 16));
    v22 = __p;
    v21 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
    }

    v23 = *buf;
    if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v24, v43[0].__r_.__value_.__l.__data_, v43[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v43[0];
    }

    if (SHIBYTE(v43[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v25, v43[1].__r_.__value_.__l.__data_, v43[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v43[1];
    }

    v26 = cf[0];
    v27 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v28 = *v45;
    if (*v45)
    {
      CFRetain(*v45);
    }

    v29[0] = *&v45[8];
    *(v29 + 6) = *&v45[14];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 1174405120;
    v46[2] = sub_1005B3270;
    v46[3] = &unk_101E665F0;
    v46[4] = a1;
    v46[5] = v22;
    v47 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1005C1C60(v48, a4);
    v49 = *buf;
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v23 + 48))(v23, &v24, v46);
    sub_1002030AC(&v28);
    sub_10002D760(&v27);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (*(&v49 + 1))
    {
      sub_100004A34(*(&v49 + 1));
    }

    sub_10052F844(v48);
    if (v47)
    {
      std::__shared_weak_count::__release_weak(v47);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1017750DC();
    }

    v30[0] = 2;
    v31 = 13;
    sub_100111A90(a4, 0, 0, v30);
    if (v30[0] == 1)
    {
      __p = &v31;
      sub_1000DC8D4(&__p);
    }

    v30[0] = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  sub_10002D760(&v37);
  sub_1009BD5D4(v38);
  sub_1002030AC(v45);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v43[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[0].__r_.__value_.__l.__data_);
  }
}

void sub_1005B3270(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v7 = v5;
  v3 = *(a1 + 48);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(&v9, a2);
  sub_1005C1C60(v10, a1 + 56);
  v4 = *(a1 + 96);
  v10[4] = *(a1 + 88);
  v10[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (v5 + 16));
  operator new();
}

void sub_1005B3460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1005B34C0(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_1005C1C60((a1 + 7), (a2 + 7));
  v6 = a2[12];
  a1[11] = a2[11];
  a1[12] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005B3520(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3538(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10052F844(a1 + 56);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005B3590(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v94 = a2;
  *(&v94 + 1) = a3;
  for (i = a1[10]; i; i = *i)
  {
    v11 = *(i + 7);
    if (v11 <= 0)
    {
      if ((v11 & 0x80000000) == 0)
      {
        *cf = 0u;
        *v69 = 0u;
        *&v69[20] = 0;
        v66 = 0u;
        memset(v67, 0, sizeof(v67));
        v69[8] = 2;
        *&v69[12] = 0x50000003CLL;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        memset(v60, 0, sizeof(v60));
        sub_1009BD270(v60);
        v59 = 0;
        sub_1009BEC48(v60);
        v14 = sub_1005C1B94((a1 + 15), &v94);
        if (a1 + 16 == v14)
        {
          v24 = a1[6];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            sCardSerialNumberAsString();
            if (v58 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 136315138;
            *&buf[4] = p_p;
            v26 = "#E %s not found";
            goto LABEL_41;
          }
        }

        else
        {
          v15 = a1[12];
          v16 = a1[13];
          if (v15 != v16)
          {
            v17 = v14 + 6;
            v18 = *(v14 + 71);
            if (v18 >= 0)
            {
              v19 = *(v14 + 71);
            }

            else
            {
              v19 = v14[7];
            }

            while (1)
            {
              v20 = *(v15 + 23);
              v21 = v20;
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(v15 + 8);
              }

              if (v19 == v20)
              {
                v22 = v18 >= 0 ? v17 : *v17;
                v23 = v21 >= 0 ? v15 : *v15;
                if (!memcmp(v22, v23, v19))
                {
                  break;
                }
              }

              v15 += 96;
              if (v15 == v16)
              {
                goto LABEL_36;
              }
            }
          }

          if (v15 != v16)
          {
            sub_1005B4084(*(&v61 + 1));
            PB::Data::assign(*(*(&v61 + 1) + 16), &v94, v95);
            LOWORD(cf[0]) = (*(*a1 + 240))(a1);
            std::string::operator=(v67, v15);
            goto LABEL_50;
          }

LABEL_36:
          v24 = a1[6];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            sCardSerialNumberAsString();
            if (v58 >= 0)
            {
              v27 = &__p;
            }

            else
            {
              v27 = __p;
            }

            *buf = 136315138;
            *&buf[4] = v27;
            v26 = "#E Device not found for %s";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
            if (v58 < 0)
            {
              operator delete(__p);
            }
          }
        }

        v55 = 3330;
        v84[0] = 0;
        v88 = 0;
        v28 = *(a6 + 24);
        if (!v28)
        {
          sub_100022DB4();
        }

        (*(*v28 + 48))(v28, &v55, v84);
        if (v88 == 1)
        {
          if (v87[24] == 1)
          {
            __p = v87;
            sub_100112120(&__p);
          }

          if (v86 < 0)
          {
            operator delete(v85);
          }
        }

        LOBYTE(v55) = 0;
LABEL_50:
        v29 = *a4;
        if ((*(*a4 + 23) & 0x8000000000000000) != 0)
        {
          if (!*(v29 + 8))
          {
            goto LABEL_55;
          }
        }

        else if (!*(*a4 + 23))
        {
LABEL_55:
          if ((*(v29 + 47) & 0x8000000000000000) != 0)
          {
            if (!*(v29 + 32))
            {
              goto LABEL_60;
            }
          }

          else if (!*(v29 + 47))
          {
LABEL_60:
            if ((*(v29 + 71) & 0x8000000000000000) != 0)
            {
              if (!*(v29 + 56))
              {
                goto LABEL_65;
              }
            }

            else if (!*(v29 + 71))
            {
LABEL_65:
              if ((*(v29 + 95) & 0x8000000000000000) != 0)
              {
                if (!*(v29 + 80))
                {
                  goto LABEL_70;
                }
              }

              else if (!*(v29 + 95))
              {
LABEL_70:
                v34 = *(v29 + 96);
                v35 = *(v29 + 104);
                if (v34 != v35)
                {
                  do
                  {
                    v36 = *(&v61 + 1);
                    v37 = *(*(&v61 + 1) + 32);
                    if (v37 >= *(*(&v61 + 1) + 40))
                    {
                      v38 = sub_1000053A0(*(&v61 + 1) + 24, v34);
                    }

                    else
                    {
                      sub_10011C7A4((*(&v61 + 1) + 24), v34);
                      v38 = v37 + 24;
                    }

                    *(v36 + 32) = v38;
                    v34 = (v34 + 24);
                  }

                  while (v34 != v35);
                  v29 = *a4;
                }

                v39 = *(&v61 + 1);
                v40 = *(v29 + 145);
                v41 = *(*(&v61 + 1) + 76);
                *(*(&v61 + 1) + 76) = v41 | 2;
                v39[73] = v40;
                v42 = *(*a4 + 146);
                v39[76] = v41 | 3;
                v39[72] = v42;
                v43 = a1[6];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(__p) = 0;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I [FetchNewProfilesReq]", &__p, 2u);
                }

                sub_1005ACC40(v60, buf);
                __p = cf[1];
                cf[1] = *buf;
                *buf = 0;
                sub_10002D760(&__p);
                sub_10002D760(buf);
                *&v69[12] = 120;
                v69[8] = (*(*a1 + 224))(a1, &v94);
                *buf = 0uLL;
                (*(*a1 + 248))(buf, a1);
                if (*buf)
                {
                  sub_100004AA0(&__p, a1 + 2);
                  v45 = __p;
                  v44 = v57;
                  if (v57)
                  {
                    atomic_fetch_add_explicit(&v57->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_100004A34(v44);
                  }

                  v46 = *buf;
                  if (SHIBYTE(v67[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v49, v67[0].__r_.__value_.__l.__data_, v67[0].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v49 = v67[0];
                  }

                  if (SHIBYTE(v67[1].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v50, v67[1].__r_.__value_.__l.__data_, v67[1].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v50 = v67[1];
                  }

                  v51 = cf[0];
                  v52 = cf[1];
                  if (cf[1])
                  {
                    CFRetain(cf[1]);
                  }

                  v53 = *v69;
                  if (*v69)
                  {
                    CFRetain(*v69);
                  }

                  *v54 = *&v69[8];
                  *&v54[6] = *&v69[14];
                  v71[0] = _NSConcreteStackBlock;
                  v71[1] = 1174405120;
                  v71[2] = sub_1005B40EC;
                  v71[3] = &unk_101E66650;
                  v71[4] = a1;
                  v71[5] = v45;
                  v72 = v44;
                  if (v44)
                  {
                    atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_100113AE8(v73, a6);
                  if (SHIBYTE(v67[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v74, v67[0].__r_.__value_.__l.__data_, v67[0].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v74 = v67[0];
                  }

                  if (SHIBYTE(v67[1].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v75, v67[1].__r_.__value_.__l.__data_, v67[1].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v75 = v67[1];
                  }

                  v76 = cf[0];
                  v77 = cf[1];
                  if (cf[1])
                  {
                    CFRetain(cf[1]);
                  }

                  v78 = *v69;
                  if (*v69)
                  {
                    CFRetain(*v69);
                  }

                  v48 = *a4;
                  v47 = a4[1];
                  v79[0] = *&v69[8];
                  *(v79 + 6) = *&v69[14];
                  v79[2] = v48;
                  v80 = v47;
                  if (v47)
                  {
                    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v81 = *buf;
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_1001137C4(v82, a5);
                  v82[2] = v94;
                  (*(*v46 + 48))(v46, &v49, v71);
                  sub_1002030AC(&v53);
                  sub_10002D760(&v52);
                  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v50.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v49.__r_.__value_.__l.__data_);
                  }

                  sub_10011385C(v82);
                  if (*(&v81 + 1))
                  {
                    sub_100004A34(*(&v81 + 1));
                  }

                  if (v80)
                  {
                    sub_100004A34(v80);
                  }

                  sub_1002030AC(&v78);
                  sub_10002D760(&v77);
                  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v75.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v74.__r_.__value_.__l.__data_);
                  }

                  sub_100113B80(v73);
                  if (v72)
                  {
                    std::__shared_weak_count::__release_weak(v72);
                  }

                  if (v44)
                  {
                    std::__shared_weak_count::__release_weak(v44);
                  }
                }

                else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
                {
                  sub_1017750DC();
                }

                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }

                sub_10002D760(&v59);
                sub_1009BD5D4(v60);
                sub_1002030AC(v69);
                sub_10002D760(&cf[1]);
                if (SHIBYTE(v67[1].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v67[1].__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v67[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  v13 = v67[0].__r_.__value_.__r.__words[0];
LABEL_131:
                  operator delete(v13);
                }

                return;
              }

              v33 = *(&v61 + 1);
              sub_10039EFFC(*(&v61 + 1));
              std::string::operator=(*(v33 + 8), (v29 + 72));
              v29 = *a4;
              goto LABEL_70;
            }

            v32 = *(&v61 + 1);
            sub_10039FE34(*(&v61 + 1));
            std::string::operator=(*(v32 + 48), (v29 + 48));
            v29 = *a4;
            goto LABEL_65;
          }

          v31 = *(&v61 + 1);
          sub_10039FBF0(*(&v61 + 1));
          std::string::operator=(*(v31 + 56), (v29 + 24));
          v29 = *a4;
          goto LABEL_60;
        }

        v30 = *(&v61 + 1);
        sub_10039FC64(*(&v61 + 1));
        std::string::operator=(*(v30 + 64), v29);
        v29 = *a4;
        goto LABEL_55;
      }

      ++i;
    }
  }

  v70 = 2818;
  v89[0] = 0;
  v93 = 0;
  v12 = *(a6 + 24);
  if (!v12)
  {
    sub_100022DB4();
  }

  (*(*v12 + 48))(v12, &v70, v89);
  if (v93 == 1)
  {
    if (v92[24] == 1)
    {
      *&v60[0] = v92;
      sub_100112120(v60);
    }

    if (v91 < 0)
    {
      v13 = v90;
      goto LABEL_131;
    }
  }
}