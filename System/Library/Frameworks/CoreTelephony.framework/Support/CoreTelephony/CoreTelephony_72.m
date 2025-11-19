void sub_1004999B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10001021C(&a10);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1004999E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v9 = *(a3 + 8);
  v14[1] = *a3;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 0;
  v17 = 0;
  sub_10009D4CC(a1, a2, &v16);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    sub_100010024(&v13, a5);
    (*(*v10 + 232))(v14, v10, a2, &v13);
    if (v14 != a5)
    {
      v18 = *a5;
      *a5 = v14[0];
      v14[0] = 0;
      sub_10001021C(&v18);
    }

    sub_10001021C(v14);
    sub_10001021C(&v13);
  }

  v11 = v16;
  if (v16)
  {
    sub_100010024(&v12, a5);
    (*(*v11 + 312))(v11, a4, &v12);
    sub_10001021C(&v12);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_100499B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_10001021C(&a9);
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void sub_100499B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a13)
  {
    JUMPOUT(0x100499B6CLL);
  }

  JUMPOUT(0x100499B68);
}

void sub_100499B8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 8);
  v8 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v10 = 0;
  sub_10009D4CC(a1, a2, &v9);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v9)
  {
    (*(*v9 + 336))(v9, a4, a5);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100499C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100499C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_100094EA8(*(a1 + 136)))
  {
    v10 = sub_100094F40(*(a1 + 136));
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      (*(*v11 + 216))(v11, a3, a4);
    }

    if (a4 == 5)
    {
      v15 = 0;
      v16 = 0;
      v13 = *(a2 + 8);
      v14 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000948C4(a1, 0, &v15);
      if (v14)
      {
        sub_100004A34(v14);
      }

      if (v15)
      {
        (*(*v15 + 296))(v15, a5);
      }

      if (v16)
      {
        sub_100004A34(v16);
      }
    }

    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
  {
    sub_1017723AC();
  }
}

void sub_100499DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100499E14(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    if (v3 == *a3 && (v4 = a1 + 80 * a2, v5 = *(v4 + 192), v3 = v4 + 192, v5 == 1))
    {
      if (*(v3 + 32))
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = *(v3 + 40);
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

void sub_100499E74(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 8);
  v6 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  v8 = 0;
  sub_1000948C4(a1, a2, &v7);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v7)
  {
    (*(*v7 + 352))(v7);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_100499F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100499F50(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a1 + 144);
    sub_100004A34(v3);
    if (v5 != v4)
    {
      return;
    }
  }

  else if (*(a1 + 144) != v4)
  {
    return;
  }

  v6 = *(**(a1 + 112) + 168);

  v6();
}

void sub_10049A000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v9 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 672))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10049A108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v9 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 680))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10049A240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A270(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  for (i = *(v1 + 16); v2 != i; v2 += 9)
  {
    v4 = *v2;
    if (*v2 != v2 + 1)
    {
      do
      {
        v5 = v4[4];
        v6 = v4[5];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 560))(v5);
        if (v6)
        {
          sub_100004A34(v6);
        }

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v2 + 1);
    }
  }
}

void sub_10049A34C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v7 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 728))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049A464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v7 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 736))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049A594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A5C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v7 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 744))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049A6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v11 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (lpsrc)
  {
    if (v7)
    {
      v8 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 720))(v7, a3, a4);
      if (v8)
      {
        sub_100004A34(v8);
      }
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10049A80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A83C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 1)
  {
    goto LABEL_16;
  }

  lpsrc = 0;
  v9 = 0;
  v4 = *(a3 + 8);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000948C4(a1, 1, &lpsrc);
  if (v7)
  {
    sub_100004A34(v7);
  }

  {
    v6 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 712))(v5);
    if (v6)
    {
      sub_100004A34(v6);
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v6)
  {
LABEL_16:
    (*(*a1 + 848))(a1);
  }
}

void sub_10049A9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A9D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v7 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 664))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049AAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049AB00(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  for (i = *(v1 + 16); v2 != i; v2 += 9)
  {
    v4 = *v2;
    if (*v2 != v2 + 1)
    {
      do
      {
        v6 = v4[4];
        v5 = v4[5];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!(*(*v6 + 56))(v6))
        {
          (*(*v6 + 248))(v6);
        }

        if (v5)
        {
          sub_100004A34(v5);
        }

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v2 + 1);
    }
  }
}

void sub_10049AC0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049AC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = 0;
  sub_10009D4CC(a1, 1, &v6);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v6)
  {
    v3 = (*(*v6 + 248))(v6);
  }

  else
  {
    v3 = 0;
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  return v3;
}

void sub_10049ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049ACF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v9 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 704))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10049ADF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049AE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v7 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 688))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v9 = 0;
  sub_10009D4CC(a1, 1, &lpsrc);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 696))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10049B060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049B090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100094EA8(*(a1 + 136)))
  {
    v6 = sub_100094F40(*(a1 + 136));
    v7 = v6 + 1;
    v8 = *v6;
    if (*v6 != v6 + 1)
    {
      do
      {
        v9 = v8[4];
        v10 = v8[5];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 544))(v9, a2, a3);
        if (v10)
        {
          sub_100004A34(v10);
        }

        v11 = v8[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v8[2];
            v13 = *v12 == v8;
            v8 = v12;
          }

          while (!v13);
        }

        v8 = v12;
      }

      while (v12 != v7);
    }
  }
}

void sub_10049B184(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049B19C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a3 + 8);
  v12 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v14 = 0;
  sub_10009D4CC(a1, a2, &v13);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v13)
  {
    (*(*v13 + 416))(v13, a4, a5, a6, a7);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_10049B25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B284(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 168);
  if (a2 <= 1)
  {
    v3 = &v2[80 * a2];
LABEL_6:
    v4 = *v3 ^ 1;
    return v4 & 1;
  }

  if ((*v2 & 1) == 0)
  {
    v3 = (a1 + 248);
    goto LABEL_6;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_10049B2D0(uint64_t a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    v2 = (a1 + 80 * a2 + 209);
LABEL_6:
    v3 = *v2;
    return v3 & 1;
  }

  if ((*(a1 + 209) & 1) == 0)
  {
    v2 = (a1 + 289);
    goto LABEL_6;
  }

  v3 = 1;
  return v3 & 1;
}

void sub_10049B308(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v7 = *(a3 + 8);
  v11[1] = *a3;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v14 = 0;
  sub_10009D4CC(a1, a2, &v13);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = (*(*v8 + 240))(v8, a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = v13;
  if (v13)
  {
    sub_10006F22C(v11, a4);
    (*(*v10 + 320))(v10, v11, v9);
    sub_100010250(v11);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_10049B418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100010250(&a10);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10049B440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x10049B438);
  }

  JUMPOUT(0x10049B434);
}

uint64_t sub_10049B458(uint64_t a1, void *a2)
{
  if (!*a2 || *a2 == *(a1 + 144))
  {
    return *(a1 + 184);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10049B47C(uint64_t a1, void *a2)
{
  if (!*a2 || *a2 == *(a1 + 120))
  {
    return *(a1 + 160);
  }

  else
  {
    return 2;
  }
}

void sub_10049B4B8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v6 = 0;
  sub_1000948C4(a1, a2, &v5);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v5)
  {
    (*(*v5 + 328))(v5);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10049B550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B580(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 8);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = 0;
  v12 = 0;
  sub_10009D4CC(a1, a2, &v11);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v11)
  {
    v8 = (*(*v11 + 368))(v11, a3, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  return v8;
}

void sub_10049B638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B668(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 8);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = 0;
  v12 = 0;
  sub_1000948C4(a1, a2, &v11);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v11)
  {
    v8 = (*(*v11 + 376))(v11, a3, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  return v8;
}

void sub_10049B720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B750(uint64_t a1, int a2, uint64_t *a3, int a4, int a5)
{
  v9 = a1;
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_12;
  }

  (*(*v9 + 584))(&v31, v9);
  matched = DataUtils::matchPersonality();
  if (*(&v31 + 1))
  {
    sub_100004A34(*(&v31 + 1));
  }

  if ((matched & 1) == 0)
  {
LABEL_12:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v36 = 0;
  v37 = 0;
  v11 = a3[1];
  v34 = *a3;
  v35 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10009D4CC(v9, a2, &v36);
  if (v35)
  {
    sub_100004A34(v35);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v9 + 80 * a2;
    memset(v33, 0, sizeof(v33));
    v14 = *(v13 + 208);
    v31 = *(v13 + 192);
    *v32 = v14;
    *&v32[10] = *(v13 + 218);
    if (*(v13 + 263) < 0)
    {
      sub_100005F2C(&v33[3], *(v13 + 240), *(v13 + 248));
    }

    else
    {
      *&v33[3] = *(v13 + 240);
      *&v33[11] = *(v13 + 256);
    }

    LOBYTE(v33[15]) = *(v13 + 264);
    if (v32[25] == 1)
    {
      v16 = *(v9 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = asString();
        *buf = 136315394;
        v39 = "suspendDataContext";
        v40 = 2080;
        v41 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot suspend deactivating data context %s", buf, 0x16u);
      }

      goto LABEL_52;
    }

    v19 = *(v9 + 144);
    v18 = *(v9 + 152);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v19)
    {
      if ((*(*v19 + 88))(v19, 0))
      {
        v20 = *(v9 + 72);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "suspendDataContext";
          v21 = "#I %s: Emergency PDN should not be suspended";
LABEL_27:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if ((*(*v19 + 144))(v19))
      {
        v20 = *(v9 + 72);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "suspendDataContext";
          v21 = "#I %s: PDN is configured to ignore suspension";
          goto LABEL_27;
        }

LABEL_28:
        LOBYTE(a5) = 0;
        LOBYTE(v9) = 0;
        goto LABEL_49;
      }

      if ((dataContextSuspendMask() & a4) != 0 && ((*(*v19 + 152))(v19) & 1) == 0)
      {
        a4 &= ~dataContextSuspendMask();
        if (!a4)
        {
          v20 = *(v9 + 72);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 136315138;
          v39 = "suspendDataContext";
          v21 = "#I %s: PDN is not configured to utilize BBCall suspension";
          goto LABEL_27;
        }
      }
    }

    if (!*&v32[20] && v31 == 1)
    {
      v22 = *(v9 + 72);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "suspendDataContext";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: looks like we are really suspending the context", buf, 0xCu);
      }
    }

    if (!(*(*v12 + 400))(v12))
    {
      LOBYTE(a5) = 1;
      goto LABEL_49;
    }

    v23 = *(v13 + 208);
    v31 = *(v13 + 192);
    *v32 = v23;
    *&v32[10] = *(v13 + 218);
    std::string::operator=(&v33[3], (v13 + 240));
    v24 = *(v13 + 264);
    LOBYTE(v33[15]) = v24;
    if (*&v32[20] != (*&v32[20] | a4))
    {
      *&v32[20] |= a4;
      if (v31 == 1)
      {
        v26 = v31;
        v27[0] = *v32;
        *(v27 + 10) = *&v32[10];
        if (SHIBYTE(v33[14]) < 0)
        {
          sub_100005F2C(__p, *&v33[3], *&v33[7]);
          v24 = v33[15];
        }

        else
        {
          *__p = *&v33[3];
          v29 = *&v33[11];
        }

        v30 = v24;
        sub_1004914F0(v9, a2, &v26, 0);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (!a5)
        {
          goto LABEL_48;
        }

        sub_10048C10C(v9, 6, 0, 0, 0);
      }
    }

    LOBYTE(a5) = 0;
LABEL_48:
    LOBYTE(v9) = 1;
LABEL_49:
    if (v18)
    {
      sub_100004A34(v18);
    }

    if ((a5 & 1) == 0)
    {
      v25 = 0;
LABEL_54:
      if (SHIBYTE(v33[14]) < 0)
      {
        operator delete(*&v33[3]);
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

LABEL_52:
    v25 = 1;
    goto LABEL_54;
  }

LABEL_57:
  LOBYTE(v9) = 0;
LABEL_58:
  if (v37)
  {
    sub_100004A34(v37);
  }

  return v9 & 1;
}

void sub_10049BCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v36)
  {
    sub_100004A34(v36);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 136);
  if (v39)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049BD58(void *a1, int a2, uint64_t *a3, int a4)
{
  if ((*(*a1 + 592))(a1))
  {
    (*(*a1 + 584))(&v32, a1);
    matched = DataUtils::matchPersonality();
    if (*(&v32 + 1))
    {
      sub_100004A34(*(&v32 + 1));
    }

    if (matched)
    {
      v37 = 0;
      v38 = 0;
      v9 = a3[1];
      v35 = *a3;
      v36 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10009D4CC(a1, a2, &v37);
      if (v36)
      {
        sub_100004A34(v36);
      }

      v10 = v37;
      if (!v37)
      {
        goto LABEL_38;
      }

      v11 = &a1[10 * a2];
      memset(v34, 0, sizeof(v34));
      v12 = *(v11 + 13);
      v32 = *(v11 + 12);
      *v33 = v12;
      *&v33[10] = *(v11 + 218);
      if (*(v11 + 263) < 0)
      {
        sub_100005F2C(&v34[3], v11[30], v11[31]);
      }

      else
      {
        *&v34[3] = *(v11 + 15);
        *&v34[11] = v11[32];
      }

      LOBYTE(v34[15]) = *(v11 + 264);
      if (v33[25] == 1)
      {
        v13 = a1[9];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = asString();
          *buf = 136315394;
          v40 = "resumeDataContext";
          v41 = 2080;
          *v42 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N %s: Cannot resume deactivating data context %s", buf, 0x16u);
        }
      }

      else
      {
        v15 = *&v33[20];
        v16 = *&v33[20] & a4;
        if ((*&v33[20] & a4) != 0)
        {
          v17 = a1[9];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v40 = "resumeDataContext";
            v41 = 1024;
            *v42 = v15;
            *&v42[4] = 1024;
            *&v42[6] = a4;
            v43 = 1024;
            v44 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot resume data context: current mask %d, requested mask %d, newMask %d", buf, 0x1Eu);
          }

          *&v33[20] = v16;
          if (v32 != 1)
          {
            goto LABEL_36;
          }

          v22 = v32;
          v23[0] = *v33;
          *(v23 + 10) = *&v33[10];
          if (SHIBYTE(v34[14]) < 0)
          {
            sub_100005F2C(&v24, *&v34[3], *&v34[7]);
          }

          else
          {
            v24 = *&v34[3];
            v25 = *&v34[11];
          }

          v26 = v34[15];
          sub_1004914F0(a1, a2, &v22, 0);
          if ((SHIBYTE(v25) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

          v21 = v24;
        }

        else
        {
          if (*&v33[20])
          {
            v18 = a1[9];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v40 = "resumeDataContext";
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: looks like we are really resuming the context", buf, 0xCu);
            }
          }

          (*(*v10 + 408))(v10);
          v19 = *(v11 + 13);
          v32 = *(v11 + 12);
          *v33 = v19;
          *&v33[10] = *(v11 + 218);
          std::string::operator=(&v34[3], v11 + 10);
          v20 = *(v11 + 264);
          LOBYTE(v34[15]) = v20;
          if (!*&v33[20])
          {
            goto LABEL_36;
          }

          *&v33[20] = 0;
          if (v32 != 1)
          {
            goto LABEL_36;
          }

          v27 = v32;
          v28[0] = *v33;
          *(v28 + 10) = *&v33[10];
          if (SHIBYTE(v34[14]) < 0)
          {
            sub_100005F2C(&__p, *&v34[3], *&v34[7]);
            v20 = v34[15];
          }

          else
          {
            __p = *&v34[3];
            v30 = *&v34[11];
          }

          v31 = v20;
          sub_1004914F0(a1, a2, &v27, 0);
          if ((SHIBYTE(v30) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

          v21 = __p;
        }

        operator delete(v21);
      }

LABEL_36:
      if (SHIBYTE(v34[14]) < 0)
      {
        operator delete(*&v34[3]);
      }

LABEL_38:
      if (v38)
      {
        sub_100004A34(v38);
      }
    }
  }
}

void sub_10049C1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  v48 = *(v46 - 136);
  if (v48)
  {
    sub_100004A34(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 != v7)
  {
    while (1)
    {
      v10 = *v6;
      if (*v6 != v6 + 1)
      {
        break;
      }

LABEL_20:
      v6 += 9;
      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v12 = v10[4];
      v11 = v10[5];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12 && !(*(*v12 + 56))(v12) && ((*(*v12 + 216))(v12) & 1) == 0)
      {
        break;
      }

      v13 = 1;
      if (v11)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v13 & 1) == 0)
      {
        return;
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
      if (v15 == v6 + 1)
      {
        goto LABEL_20;
      }
    }

    sub_1000224C8(v17, a4);
    (*(*v12 + 576))(v12, a2, a3, v17);
    sub_10000FF50(v17);
    v13 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_100004A34(v11);
    goto LABEL_10;
  }

LABEL_21:
  sub_10000FFD0(a4, 0);
}

void sub_10049C438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 != v7)
  {
    while (1)
    {
      v10 = *v6;
      if (*v6 != v6 + 1)
      {
        break;
      }

LABEL_20:
      v6 += 9;
      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v12 = v10[4];
      v11 = v10[5];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12 && !(*(*v12 + 56))(v12) && ((*(*v12 + 216))(v12) & 1) == 0)
      {
        break;
      }

      v13 = 1;
      if (v11)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v13 & 1) == 0)
      {
        return;
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
      if (v15 == v6 + 1)
      {
        goto LABEL_20;
      }
    }

    sub_1000224C8(v17, a4);
    (*(*v12 + 584))(v12, a2, a3, v17);
    sub_10000FF50(v17);
    v13 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_100004A34(v11);
    goto LABEL_10;
  }

LABEL_21:
  sub_10000FFD0(a4, 0);
}

void sub_10049C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 136);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v5 != v6)
  {
    while (1)
    {
      v8 = *v5;
      if (*v5 != v5 + 1)
      {
        break;
      }

LABEL_20:
      v5 += 9;
      if (v5 == v6)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v10 = v8[4];
      v9 = v8[5];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10 && !(*(*v10 + 56))(v10) && ((*(*v10 + 216))(v10) & 1) == 0)
      {
        break;
      }

      v11 = 1;
      if (v9)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v11 & 1) == 0)
      {
        return;
      }

      v12 = v8[1];
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
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
      if (v13 == v5 + 1)
      {
        goto LABEL_20;
      }
    }

    sub_10049F8A0(v18, a3);
    (*(*v10 + 592))(v10, a2, v18);
    sub_10049F938(v18);
    v11 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_100004A34(v9);
    goto LABEL_10;
  }

LABEL_21:
  memset(v16, 0, sizeof(v16));
  v15 = *(a3 + 24);
  if (!v15)
  {
    sub_100022DB4();
  }

  (*(*v15 + 48))(v15, v16);
  v17 = v16;
  sub_100128BB0(&v17);
}

void sub_10049C844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_100128BB0(&a13);
  _Unwind_Resume(a1);
}

void sub_10049C884(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 || *(*a3 + 49) || (*(a1 + 192) & 1) != 0)
  {
    v4 = *(a1 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I skip context release", buf, 2u);
    }

    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_13;
      }

LABEL_17:
      *buf = 0;
      v21 = 0;
      v16 = DataUtils::otherSimSlot();
      (*(*v13 + 8))(buf, v13, v16);
      if (*buf)
      {
        *v22 = 0uLL;
        v19 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000948C4(a1, 0, v22);
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (*v22)
        {
          (*(**v22 + 424))(*v22);
        }

        if (*&v22[8])
        {
          sub_100004A34(*&v22[8]);
        }
      }

      else
      {
        v17 = *(a1 + 72);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = subscriber::asString();
          *v22 = 136315138;
          *&v22[4] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I No other sim personality exist for %s", v22, 0xCu);
        }
      }

      if (v21)
      {
        sub_100004A34(v21);
      }

      goto LABEL_30;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_13:
  v15 = *(a1 + 72);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No Personality Shop !", buf, 2u);
  }

LABEL_30:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10049CB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049CBF4(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100495E20(a1, &v3);
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_10049CC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049CC64(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t sub_10049CC94(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

void sub_10049CCC4(void *a1, int a2, void *a3, BOOL a4, BOOL a5, _BOOL8 a6, int a7)
{
  v13 = a1[9];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v39 = "handlePacketContextCellChanged";
    v40 = 2080;
    v41 = subscriber::asString();
    v42 = 1024;
    *v43 = a2;
    *&v43[4] = 2080;
    *&v43[6] = asStringBool(a5);
    *&v43[14] = 2080;
    *&v43[16] = asStringBool(a6);
    v44 = 2080;
    v45 = asString();
    v46 = 2080;
    v47 = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s: type = %d isInHomeCountry = %s isDataRoamingAllowed = %s dataMode = %s dataAllowed = %s", buf, 0x44u);
  }

  v36 = 0;
  v37 = 0;
  v14 = a3[1];
  v34[2] = *a3;
  v35 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10009D4CC(a1, 0, &v36);
  if (v35)
  {
    sub_100004A34(v35);
  }

  v15 = a1[18];
  v16 = a1[19];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v36;
  if (v36)
  {
    if (a2 != 1)
    {
      if (a2 || a4)
      {
        goto LABEL_32;
      }

      v18 = (*(*v36 + 56))(v36);
      v19 = *a3;
      v20 = a3[1];
      v34[0] = v19;
      v34[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10048F648(a1, v18, v34, 4, "CommCenter");
      goto LABEL_30;
    }

    if (!v15)
    {
      goto LABEL_32;
    }

    if (!a4)
    {
      v25 = (*(*v36 + 56))(v36);
      v26 = *a3;
      v20 = a3[1];
      v33[0] = v26;
      v33[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10048F648(a1, v25, v33, 4, "CommCenter");
      goto LABEL_30;
    }

    if (a5 || !(*(*v15 + 528))(v15, 0, a6))
    {
      goto LABEL_32;
    }

    if (a7 != 10 || (*(*v17 + 656))(v17) == 10)
    {
      v21 = a1[9];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = subscriber::asString();
        *buf = 136315394;
        v39 = "handlePacketContextCellChanged";
        v40 = 2080;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: %s: International roaming contradicts current connections", buf, 0x16u);
      }

      v23 = (*(*v17 + 56))(v17);
      v24 = *a3;
      v20 = a3[1];
      v32[0] = v24;
      v32[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10048F648(a1, v23, v32, 7, "CommCenter");
LABEL_30:
      if (v20)
      {
        sub_100004A34(v20);
      }

      goto LABEL_32;
    }

    v27 = a1[9];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = subscriber::asString();
      v29 = asString();
      (*(*v17 + 656))(v17);
      v30 = asString();
      *buf = 136315906;
      v39 = "handlePacketContextCellChanged";
      v40 = 2080;
      v41 = v28;
      v42 = 2080;
      *v43 = v29;
      *&v43[8] = 2080;
      *&v43[10] = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: %s: International roaming contradicts current connections but data mode doesn't match %s != %s", buf, 0x2Au);
    }
  }

LABEL_32:
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v37)
  {
    sub_100004A34(v37);
  }
}

void sub_10049D198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049D1F4(uint64_t a1, const CSIPacketAddress *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = "ipv6ServiceUp";
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: addr = %s", buf, 0x16u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(buf, 0, sizeof(buf));
  CSIPacketAddress::CSIPacketAddress(buf, a2);
  CSIPacketAddress::CSIPacketAddress(__p, buf);
  sub_100004AA0(&v11, (a1 + 40));
  v6 = v12;
  v9 = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (a1 + 40));
  operator new();
}

void sub_10049D3F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10049D414(uint64_t a1, const CSIPacketAddress *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = "ipv4ServiceUp";
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: addr = %s", buf, 0x16u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(buf, 0, sizeof(buf));
  CSIPacketAddress::CSIPacketAddress(buf, a2);
  CSIPacketAddress::CSIPacketAddress(__p, buf);
  sub_100004AA0(&v11, (a1 + 40));
  v6 = v12;
  v9 = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (a1 + 40));
  operator new();
}

void sub_10049D610(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10049D634(uint64_t a1)
{
  v1 = (*(*a1 + 576))(a1, 0, 0, 0);

  return isSliceMask(v1);
}

uint64_t sub_10049D690(uint64_t a1)
{
  v1 = (*(*(a1 - 32) + 576))();

  return isSliceMask(v1);
}

void sub_10049D6EC(uint64_t a1, int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 72)
  {
    v9 = 0;
    v10 = 0;
    sub_1000948A8(v3, &v7);
    sub_1000948C4(a1, a2, &v9);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v9)
    {
      (*(*v9 + 448))(v9);
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10049D7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049D7D4(uint64_t a1, signed int a2)
{
  sub_10049D8EC(a1, a2, 1, 0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10049DA6C;
  v4[3] = &unk_101E4FC90;
  v4[4] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 40));
  v3 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10049F6D8;
  block[3] = &unk_101E4FEE0;
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

void sub_10049D8EC(uint64_t a1, signed int a2, int a3, _BOOL4 a4)
{
  if (a2 <= 1)
  {
    v4 = a3;
    v7 = (a1 + 80 * a2);
    v8 = v7[232];
    if (v8 != a3)
    {
      v10 = *(a1 + 72);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = asStringBool(v8);
        v12 = asStringBool(v4);
        v13 = asString();
        v14 = asStringBool(a4);
        v15 = asStringBool(v7[216]);
        v16 = 136316418;
        v17 = "setProbation";
        v18 = 2080;
        v19 = v11;
        v20 = 2080;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        v24 = 2080;
        v25 = v14;
        v26 = 2080;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s->%s (for %s, ac=%s, ho %s)", &v16, 0x3Eu);
      }

      v7[232] = v4;
      if (a4 && !v4 && v7[192] == 1 && (v7[224] & 1) == 0)
      {
        sub_100491D00(a1, a2);
      }
    }
  }
}

void sub_10049DA6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1 + 584))(&v2, v1);
  sub_100495E20(v1, &v2);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10049DAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049DB00(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    v2 = a1 + 80 * a2;
    v4 = *(v2 + 233);
    v3 = (v2 + 233);
    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 72);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = "setDeactivating";
        v8 = 2080;
        v9 = asStringBool(0);
        v10 = 2080;
        v11 = asStringBool(1);
        v12 = 2080;
        v13 = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s->%s (for %s)", &v6, 0x2Au);
      }

      *v3 = 1;
    }
  }
}

void sub_10049DC78(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "resetDataActivator";
    v14 = 2080;
    v15 = asString();
    v16 = 2080;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: resetting pdp activator on %s due to %s", &v12, 0x20u);
  }

  v7 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = 0;
  *(a1 + 352) = 0;
  do
  {
    v9 = dword_1018083B0[v8];
    if (v9 == a2 || anyContextType())
    {
      v10 = a1 + 192 + 80 * v9;
      *v10 = 0;
      *(v10 + 8) = "";
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 16) = "CommCenter";
      *(v10 + 40) = 0;
      if (*(v10 + 71) < 0)
      {
        operator delete(*(v10 + 48));
      }

      *(v10 + 72) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      if (*(a1 + 184) == v9)
      {
        *(a1 + 184) = 2;
      }

      v11 = *(a1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I reset state due to resetDataActivator", &v12, 2u);
      }

      sub_100492120(a1, v9, 0, 1);
    }

    ++v8;
  }

  while (v8 != 2);
}

uint64_t sub_10049DE70@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 112);
  if (v2)
  {
    return (*(*(v2 + *(*v2 - 56)) + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_10049DEC4(uint64_t a1, uint64_t a2)
{
  if (sub_100094EA8(*(a1 + 136)))
  {
    v4 = sub_100094F40(*(a1 + 136));
    v5 = v4 + 1;
    v6 = *v4;
    if (*v4 != v4 + 1)
    {
      do
      {
        v8 = v6[4];
        v7 = v6[5];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!(*(*v8 + 56))(v8))
        {
          v9 = *(a1 + 72);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v14 = "updateVoLTEDataCallType";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: Found BB data context! Now udpating VoLTE call type.", buf, 0xCu);
          }

          (*(*v8 + 568))(v8, a2);
        }

        if (v7)
        {
          sub_100004A34(v7);
        }

        v10 = v6[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v6[2];
            v12 = *v11 == v6;
            v6 = v11;
          }

          while (!v12);
        }

        v6 = v11;
      }

      while (v11 != v5);
    }
  }

  else if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
  {
    sub_1017723E0();
  }
}

void sub_10049E0C8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = subscriber::asString();
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Update fLastActiveProfileConnectionMask = [Sim %s, 0x%llx]", &v7, 0x16u);
  }

  *(a1 + 360) = a2;
  *(a1 + 368) = a3;
}

uint64_t sub_10049E1B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 9)
  {
    v6 = *v3;
    if (*v3 != v3 + 1)
    {
      do
      {
        result = (*(*v6[4] + 216))(v6[4]);
        if ((result & 1) == 0)
        {
          result = (*(*v6[4] + 288))(v6[4], a2);
        }

        v7 = v6[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v6[2];
            v9 = *v8 == v6;
            v6 = v8;
          }

          while (!v9);
        }

        v6 = v8;
      }

      while (v8 != v3 + 1);
    }
  }

  return result;
}

void sub_10049E2A4(void *a1, unsigned __int16 a2)
{
  v7 = 0;
  v8 = 0;
  (*(*a1 + 584))(&v7);
  if (v7)
  {
    *buf = 0uLL;
    v6 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000948C4(a1, 0, buf);
    if (v6)
    {
      sub_100004A34(v6);
    }

    if (*buf)
    {
      (*(**buf + 280))(*buf, a2);
    }

    else
    {
      v5 = a1[9];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 136315138;
        v10 = "setCoalescing";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: dataContext is empty", v9, 0xCu);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v4 = a1[9];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "setCoalescing";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: personality is empty", buf, 0xCu);
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10049E46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049E4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 8);
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v14 = 0;
  sub_1000948C4(a1, 0, &v13);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v10 = v13;
  if (v13)
  {
    sub_1000224C8(v17, a5);
    (*(*v10 + 264))(v10, a3, a4, v17);
    sub_10000FF50(v17);
  }

  else
  {
    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "queryAnbrBitrate";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: dataContext is empty", buf, 0xCu);
    }

    sub_10000FFD0(a5, 0);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_10049E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000FF50(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

void sub_10049E64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x10049E644);
  }

  JUMPOUT(0x10049E640);
}

void sub_10049E664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v10 = 0;
  sub_1000948C4(a1, 0, &v9);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v6 = v9;
  if (v9)
  {
    sub_100457284(v13, a3);
    (*(*v6 + 272))(v6, v13);
    sub_1003F2928(v13);
  }

  else
  {
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "getAnbrActivationState";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: dataContext is empty", buf, 0xCu);
    }

    sub_100447630(a3, 0, 0);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10049E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1003F2928(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

void sub_10049E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x10049E7E0);
  }

  JUMPOUT(0x10049E7DCLL);
}

void sub_10049E800(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[18];
  v5 = a1[19];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    v8 = a1[9];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 0;
    v9 = "#E sendAnbrActivationState: do not have current settings";
    v10 = &v13;
    goto LABEL_13;
  }

  if (!*a2)
  {
    v8 = a1[9];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = 0;
    v9 = "#E sendAnbrActivationState: empty personality";
    v10 = &v12;
    goto LABEL_13;
  }

  v7 = *(*a2 + 52);
  if (v7 == (*(*(v6 + *(*v6 - 56)) + 24))(v6 + *(*v6 - 56)))
  {
    (*(*v6 + 672))(v6, a3);
    goto LABEL_14;
  }

  v8 = a1[9];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    v9 = "#N sendAnbrActivationState: unmatching personality";
    v10 = &v11;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
  }

LABEL_14:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10049E984(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049E9A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[18];
  v7 = a1[19];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    v10 = a1[9];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = 0;
    v11 = "#E sendAnbrBitrateRecommendation: do not have current settings";
    v12 = &v15;
    goto LABEL_13;
  }

  if (!*a2)
  {
    v10 = a1[9];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v14 = 0;
    v11 = "#E sendAnbrBitrateRecommendation: empty personality";
    v12 = &v14;
    goto LABEL_13;
  }

  v9 = *(*a2 + 52);
  if (v9 == (*(*(v8 + *(*v8 - 56)) + 24))(v8 + *(*v8 - 56)))
  {
    (*(*v8 + 680))(v8, a3, a4);
    goto LABEL_14;
  }

  v10 = a1[9];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 0;
    v11 = "#N sendAnbrBitrateRecommendation: unmatching personality";
    v12 = &v13;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
  }

LABEL_14:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049EB30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049EB50(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100489EC0(*(v1 + 128));
    *buf = 136315138;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------- %s (PDPActivator) -------", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 144);
    if (v4)
    {
      v5 = (*(*v4 + 48))(v4, 2);
    }

    else
    {
      v5 = "NULL";
    }

    *buf = 136315138;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fSettings.fActiveDataSettings = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 160);
    if (v6)
    {
      v7 = (*(*v6 + 48))(v6, 2);
    }

    else
    {
      v7 = "NULL";
    }

    *buf = 136315138;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPendingDataSettings = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(*(v1 + 176) != 0);
    *buf = 136315138;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fHandoverBackoffTimer = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asStringBool(*(v1 + 352));
    *buf = 136315138;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fRetryScheduled = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = subscriber::asString();
    v11 = *(v1 + 368);
    *buf = 136315394;
    v29 = v10;
    v30 = 2048;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fLastActiveProfileConnectionMask = [Sim %s, 0x%llx]", buf, 0x16u);
  }

  v12 = 0;
  v25 = v1 + 192;
  do
  {
    v13 = dword_1018083B0[v12];
    v14 = *(v1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = asString();
      *buf = 136315138;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t ContextType=%s:", buf, 0xCu);
      v14 = *(v1 + 72);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v25 + 80 * v13;
      v27 = asStringBool(*v16);
      v26 = asStringBool(*(v16 + 24));
      v17 = asStringBool(*(v16 + 32));
      v18 = v1;
      v20 = *(v16 + 8);
      v19 = *(v16 + 16);
      v21 = *(v16 + 36);
      v22 = asStringBool(*(v16 + 40));
      v23 = asStringBool(*(v16 + 41));
      *buf = 136316930;
      v29 = v27;
      v30 = 2080;
      v31 = v26;
      v32 = 2080;
      v33 = v17;
      v34 = 2080;
      v35 = v20;
      v36 = 2080;
      v37 = v19;
      v1 = v18;
      v38 = 1024;
      v39 = v21;
      v40 = 2080;
      v41 = v22;
      v42 = 2080;
      v43 = v23;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fState.fActivationParams: active = %s, handover = %s, activationCompleted = %s, reason = %s, processName = %s, suspendMask = %d, probation = %s, deactivating = %s", buf, 0x4Eu);
    }

    ++v12;
  }

  while (v12 != 2);
  return (*(**(v1 + 112) + 80))(*(v1 + 112));
}

void sub_10049EFA4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 104);
  *(a1 + 96) = v3;
  *(a1 + 104) = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

BOOL sub_10049EFD0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    result = sub_10049F048(&v3[20 * dword_1018083B0[v2]], &v4[20 * dword_1018083B0[v2]]);
  }

  while (result && v2++ != 1);
  return result;
}

BOOL sub_10049F048(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[24] != a2[24] || *(a1 + 7) != *(a2 + 7) || a1[32] != a2[32] || *(a1 + 9) != *(a2 + 9) || a1[40] != a2[40] || a1[41] != a2[41] || strcmp(*(a1 + 1), *(a2 + 1)) || strcmp(*(a1 + 2), *(a2 + 2)))
  {
    return 0;
  }

  result = sub_100071DF8(a1 + 6, a2 + 6);
  if (result)
  {
    return a1[72] == a2[72];
  }

  return result;
}

void sub_10049F1B0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[7], v1, sub_10049F284);
  __cxa_rethrow();
}

void sub_10049F1F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10049F244(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10049F284(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_10049F2B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_10049F4D8(v4, a2);
  for (i = 0; i != 4; i += 2)
  {
    v7 = *(a2 + 24 + i * 8);
    *&v4[i + 3] = v7;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  v8 = *(a2 + 64);
  v4[7] = *(a2 + 56);
  v4[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 8) = v4 + 9;
  return result;
}

uint64_t sub_10049F344(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
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

  v20 = a1;
  if (v6)
  {
    sub_10049F530(a1, v6);
  }

  v17 = 0;
  v18 = 72 * v2;
  v19 = 72 * v2;
  v7 = sub_10049F4D8((72 * v2), a2);
  for (i = 0; i != 4; i += 2)
  {
    v9 = *(a2 + 24 + i * 8);
    *&v7[i + 3] = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  v10 = *(a2 + 64);
  v7[7] = *(a2 + 56);
  v7[8] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *&v19 = v19 + 72;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  sub_10049F58C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10049F688(&v17);
  return v16;
}

void sub_10049F4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10049F688(va);
  _Unwind_Resume(a1);
}

void *sub_10049F4D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001177B0(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10049F530(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10049F58C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a4 - 9;
    v8 = a2;
    v9 = a4;
    do
    {
      result = sub_10049F4D8(v9, v8);
      for (i = 3; i != 7; i += 2)
      {
        v12 = *(v8 + i * 8);
        *&v9[i] = v12;
        if (*(&v12 + 1))
        {
          atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
        }
      }

      v13 = *(v8 + 64);
      v9[7] = *(v8 + 56);
      v9[8] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v8 += 72;
      v9 += 9;
      v6 -= 72;
      v7 += 9;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      result = sub_100117ED8(v5);
      v5 += 72;
    }
  }

  return result;
}

uint64_t sub_10049F688(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_100117ED8(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10049F6E8(uint64_t result, uint64_t a2)
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

void sub_10049F704(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_10049F714(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_10049F7F0(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10049F860(a1, v4);
  return 1;
}

uint64_t *sub_10049F860(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1000194D8(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_10049F8A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10049F938(uint64_t a1)
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

uint64_t *sub_10049F9B8(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 24);
      if (v5 && ((*(*v5 + 592))(*(v1 + 24)) & 1) != 0)
      {
        v6 = v5[17];
        (*(*v5 + 584))(&v21, v5);
        v7 = sub_100094EA8(v6);
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (v7)
        {
          v8 = v5[17];
          (*(*v5 + 584))(&v21, v5);
          v9 = sub_100094F40(v8);
          if (v22)
          {
            sub_100004A34(v22);
          }

          v12 = *v9;
          v10 = v9 + 1;
          v11 = v12;
          if (v12 != v10)
          {
            do
            {
              v13 = v11[4];
              v14 = v11[5];
              if (v14)
              {
                atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v13 + 456))(v13, v1);
              if (v14)
              {
                sub_100004A34(v14);
              }

              v15 = v11[1];
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
                  v16 = v11[2];
                  v17 = *v16 == v11;
                  v11 = v16;
                }

                while (!v17);
              }

              v11 = v16;
            }

            while (v16 != v10);
          }
        }
      }

      sub_100004A34(v4);
    }
  }

  sub_10049FBF0(&v20);
  return sub_1000049E0(&v19);
}

void sub_10049FB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  sub_10049FBF0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10049FBF0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10049FC44(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 24);
      if (v5 && ((*(*v5 + 592))(*(v1 + 24)) & 1) != 0)
      {
        v6 = v5[17];
        (*(*v5 + 584))(&v19, v5);
        v7 = sub_100094EA8(v6);
        if (v20)
        {
          sub_100004A34(v20);
        }

        if (v7)
        {
          v8 = v5[17];
          (*(*v5 + 584))(&v19, v5);
          v9 = sub_100094F40(v8);
          if (v20)
          {
            sub_100004A34(v20);
          }

          v12 = *v9;
          v10 = v9 + 1;
          v11 = v12;
          if (v12 != v10)
          {
            do
            {
              (*(*v11[4] + 464))(v11[4], v1);
              v13 = v11[1];
              if (v13)
              {
                do
                {
                  v14 = v13;
                  v13 = *v13;
                }

                while (v13);
              }

              else
              {
                do
                {
                  v14 = v11[2];
                  v15 = *v14 == v11;
                  v11 = v14;
                }

                while (!v15);
              }

              v11 = v14;
            }

            while (v14 != v10);
          }
        }
      }

      sub_100004A34(v4);
    }
  }

  sub_10049FBF0(&v18);
  return sub_1000049E0(&v17);
}

void sub_10049FE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  sub_10049FBF0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1004A010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BootstrapNetworkMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1004A069C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v39 - 96));
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_100004A34(v36);

  _Unwind_Resume(a1);
}

void sub_1004A0C58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attributedEntity];
  [v2 logMetrics:v3 processName:*(a1 + 48) inBytes:objc_msgSend(*(a1 + 56) outBytes:{"deltaRxCellularBytes"), objc_msgSend(*(a1 + 56), "deltaTxCellularBytes")}];
}

void sub_1004A0E04(void *a1)
{
  *a1 = off_101E4FF98;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1004A0E64(void *a1)
{
  sub_1004A0E04(a1);

  operator delete();
}

void *sub_1004A0E9C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, "cp.bootstrap.accnt");
  sub_1004A1030(a1, "BootstrapAccountingManager", QOS_CLASS_UTILITY, &v19);
  ctu::OsLogContext::~OsLogContext(&v19);
  v10 = [BootstrapNetworkMonitor alloc];
  v11 = a1[2];
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = a2[1];
  v16 = *a2;
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v15 = *(a3 + 16);
  }

  a1[5] = [(BootstrapNetworkMonitor *)v10 initWithQueue:&object registry:&v16 operatorName:__p isRoaming:a4 withUsereSIM:a5];
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1004A0FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object, char a18)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 4));
  sub_1000C0544(v18);
  _Unwind_Resume(a1);
}

void *sub_1004A1030(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_1004A1098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

void *sub_1004A1174(void *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4FFD0;
  sub_1004A1250(a1 + 3, a2, a3, a4, a5);
  return a1;
}

void sub_1004A11F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4FFD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004A1250(void *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  sub_1004A0E9C(a1, a2, __p, *a4, *a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1004A12E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004A12FC(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 32));

  return sub_1000C0544(a1);
}

void sub_1004A1340()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_1004A144C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50030;
  sub_1004A1544((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1004A14C8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004A1544(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  sub_1004A0E00(a1, a2, __p, *a4, *a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1004A15D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::discoveryByAccount(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_101FBA418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA418))
  {
    sub_1001C7FB0(&unk_101FBA3D8, "^(\\*|[1-8])\\.([0-9]+)(\\..*)?$", 0);
  }

  memset(v48, 0, sizeof(v48));
  *__p = 0u;
  v47 = 0u;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (sub_100200C08(v5, v5 + v4, __p, &unk_101FBA3D8, 0))
  {
    buf = 0uLL;
    v56 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
    v7 = __p[0] + 64;
    if (v6 <= 2)
    {
      v7 = v48 + 8;
    }

    if (*v7 == 1)
    {
      v8 = v6 > 2;
      if (v6 <= 2)
      {
        v9 = &v47 + 8;
      }

      else
      {
        v9 = __p[0] + 48;
      }

      v10 = (__p[0] + 56);
      if (!v8)
      {
        v10 = v48;
      }

      sub_1001CD6B4(&buf, *v9, *v10, &(*v10)[-*v9]);
      if (v56 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }
    }

    else
    {
      p_buf = &buf;
    }

    v45 = strtoull(p_buf, 0, 10);
    if (!v45)
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        LODWORD(v53) = 136315138;
        *(&v53 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E Cannot do discovery by account, appCategory=%s (2)", &v53, 0xCu);
      }

      goto LABEL_61;
    }

    v14 = (*(*a1 + 1120))(a1);
    if (!(*(*a1 + 2272))(a1, v14, 0))
    {
LABEL_61:
      if (SHIBYTE(v56) < 0)
      {
        operator delete(buf);
      }

      goto LABEL_63;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v16 = ServiceMap;
    if (v17 < 0)
    {
      v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = 5381;
      do
      {
        v17 = v19;
        v20 = *v18++;
        v19 = (33 * v19) ^ v20;
      }

      while (v20);
    }

    std::mutex::lock(ServiceMap);
    *&v53 = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &v53);
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v24 = 0;
        if (!v23)
        {
          goto LABEL_33;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
LABEL_33:
      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v53) = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "slice persona featureState: phone service empty", &v53, 2u);
      }

LABEL_59:
      if ((v24 & 1) == 0)
      {
        sub_100004A34(v22);
      }

      goto LABEL_61;
    }

LABEL_42:
    v43 = 0;
    v44 = 0;
    v28 = (*(*a1 + 1120))(a1);
    (*(*v23 + 8))(&v43, v23, v28);
    if (v43)
    {
      *(&v53 + 1) = 0;
      v54 = 0;
      *&v53 = &v53 + 8;
      sub_1004C12FC(&v53, &v45);
      v29 = *(a1 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        *v49 = 136315394;
        *&v49[4] = v30;
        v50 = 2048;
        v51 = v45;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I discovery by account, appCategory=%s, genre=%llu", v49, 0x16u);
      }

      v31 = v43;
      sub_10000501C(v49, "xr");
      v32 = *(a1 + 5088);
      v41 = *(a1 + 5080);
      v42 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v31 + 184))(v31, v49, &v53, &v41);
      if (v42)
      {
        sub_100004A34(v42);
      }

      if (v52 < 0)
      {
        operator delete(*v49);
      }

      sub_10006DCAC(&v53, *(&v53 + 1));
    }

    else
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_101772484(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    if (v44)
    {
      sub_100004A34(v44);
    }

    goto LABEL_59;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E Cannot do discovery by account, appCategory=%s (1)", &buf, 0xCu);
  }

LABEL_63:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t DataServiceController::match(DataServiceController *this, const TrafficDescriptor *a2, const TrafficDescriptor *a3)
{
  if (TrafficDescriptor::hasAccountInfo(a2))
  {
    result = TrafficDescriptor::hasAccountInfo(a3);
    if (!result)
    {
      return result;
    }

    if (TrafficDescriptor::hasTrafficClassInfo(a2))
    {
      v7 = *(a2 + 232);
      v8 = *(a3 + 232);
      if (v7 == v8 && *(a2 + 232))
      {
        v7 = *(a2 + 57);
        v8 = *(a3 + 57);
      }

      if (v7 != v8)
      {
        return 0;
      }
    }

    if (*(a2 + 136) & 1) != 0 && (*(a3 + 136))
    {
      v9 = *(a2 + 135);
      if (v9 >= 0)
      {
        v10 = *(a2 + 135);
      }

      else
      {
        v10 = *(a2 + 15);
      }

      v11 = *(a3 + 135);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a3 + 15);
      }

      if (v10 == v11)
      {
        v13 = v9 >= 0 ? (a2 + 112) : *(a2 + 14);
        v14 = v12 >= 0 ? (a3 + 112) : *(a3 + 14);
        if (!memcmp(v13, v14, v10))
        {
          if (*(a2 + 104) == 1)
          {
            DataServiceController::discoveryByAccount(this, a2 + 80);
          }

          return 1;
        }
      }

      return 0;
    }

LABEL_82:
    sub_1000D1644();
  }

  if (*(a2 + 214) == 1 && (*(a3 + 214) != 1 || *(a2 + 106) != *(a3 + 106)) || TrafficDescriptor::hasDnnInfo(a2) && sub_1004A2010(a2 + 30, a3 + 30))
  {
    return 0;
  }

  if (*(a2 + 220) != 1)
  {
    goto LABEL_37;
  }

  if (*(a3 + 220) != 1 || (result = 0, *(a2 + 108) == *(a3 + 108)) && *(a2 + 109) == *(a3 + 109))
  {
    if (*(a3 + 214) != 1)
    {
      return 0;
    }

    result = 0;
    v15 = *(a3 + 106);
    if (v15 >= *(a2 + 108) && v15 <= *(a2 + 109))
    {
LABEL_37:
      if (*(a2 + 208) == 1)
      {
        if (*(a3 + 208) != 1)
        {
          return 0;
        }

        result = CSIPacketAddress::matchSubnet((a3 + 184), (a2 + 184));
        if (!result)
        {
          return result;
        }
      }

      if ((*(a2 + 224) != 1 || *(a3 + 224) == 1 && *(a2 + 111) == *(a3 + 111)) && (*(a2 + 232) != 1 || *(a3 + 232) == 1 && *(a2 + 57) == *(a3 + 57)) && (*(a2 + 8) != 1 || *(a3 + 8) == 1 && *(a2 + 1) == *(a3 + 1)))
      {
        if (TrafficDescriptor::hasAppCategoryInfo(a2) && TrafficDescriptor::hasBundleInfo(a3))
        {
          if ((*(a2 + 104) & 1) == 0 || (*(a3 + 72) & 1) == 0)
          {
            goto LABEL_82;
          }

          if (sub_100071DF8(a2 + 10, a3 + 6))
          {
            goto LABEL_62;
          }
        }

        if ((*(a2 + 40) != 1 || !sub_1004A2010(a2 + 2, a3 + 2)) && (!TrafficDescriptor::hasBundleInfo(a2) || !sub_1004A2010(a2 + 6, a3 + 6)))
        {
LABEL_62:
          if (*(a2 + 176) != 1)
          {
            return 1;
          }

          v16 = *(a2 + 175);
          v17 = v16 >= 0 ? *(a2 + 175) : *(a2 + 20);
          if (!v17)
          {
            return 1;
          }

          if (*(a3 + 176) == 1)
          {
            v18 = *(a3 + 175);
            v19 = v18 >= 0 ? *(a3 + 175) : *(a3 + 20);
            if (v19 >= v17)
            {
              if (v16 >= 0)
              {
                v20 = a2 + 152;
              }

              else
              {
                v20 = *(a2 + 19);
              }

              if (v18 >= 0)
              {
                v21 = a3 + 152;
              }

              else
              {
                v21 = *(a3 + 19);
              }

              v22 = v20 - 1;
              while (1)
              {
                v23 = __tolower(v22[v17]);
                if (v23 != __tolower(v21[v19 - 1]))
                {
                  break;
                }

                --v19;
                if (!--v17)
                {
                  return !v19 || v21[v19 - 1] == 46;
                }
              }
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_1004A2010(void *a1, void *a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 24);
  v5 = v3 == v2;
  v4 = v3 != v2;
  v5 = !v5 || v3 == 0;
  if (!v5)
  {
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = *(a2 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a2[1];
    }

    if (v7 == v8)
    {
      if (v6 < 0)
      {
        a1 = *a1;
      }

      if (v9 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v7) != 0;
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

uint64_t DataServiceController::isAppWithBundleIdActiveForSlice(uint64_t a1, uint64_t a2)
{
  if (!DataServiceController::isAppWithBundleIdActive(a1, a2))
  {
    goto LABEL_23;
  }

  v4 = *(a1 + 1136);
  v5 = *(a1 + 1144);
  if (v4 != v5)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    while (1)
    {
      v9 = *(v4 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v4 + 8);
      }

      if (v9 == v7)
      {
        v11 = v10 >= 0 ? v4 : *v4;
        if (!memcmp(v11, v8, v7))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_20;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_20:
    v13 = sub_100007A6C(a1 + 4984, a2);
    if (a1 + 4992 != v13 && *(v13 + 121) == 1)
    {
      v12 = *(v13 + 120);
      return v12 & 1;
    }

LABEL_23:
    v12 = 0;
    return v12 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t DataServiceController::mustKeepSliceAliveAll_sync(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a5 > 0x10000 && a5 >> 3 > a6)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Unbalanced traffic: in < out", buf, 2u);
    }
  }

  if (a6 > 0x10000 && a6 >> 3 > a5)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Unbalanced traffic: in > out", buf, 2u);
    }
  }

  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v53 = a3;
  v16 = (a3 + 1);
  v15 = *a3;
  if (v15 != v16)
  {
    rep = v14.__d_.__rep_;
    while (1)
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(buf, (v15 + 4));
        v19 = buf;
        if (v61 < 0)
        {
          v19 = *buf;
        }

        *v54 = 136446210;
        *&v54[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: %{public}s", v54, 0xCu);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(*buf);
        }
      }

      if (TrafficDescriptor::hasBundleInfo((v15 + 4)))
      {
        if ((v15[13] & 1) == 0)
        {
          goto LABEL_98;
        }

        v20 = sub_100007A6C(a1 + 5200, v15 + 10);
        if (a1 + 5208 != v20)
        {
          v21 = rep - *(v20 + 56);
          if (v21 <= 0x6FC23ABFFLL)
          {
            break;
          }
        }
      }

      isInternalSliceApp_sync = DataServiceController::isInternalSliceApp_sync(a1, (v15 + 4));
      if (isInternalSliceApp_sync)
      {
        v34 = *(a1 + 40);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        v35 = asString();
        TrafficDescriptor::toString(buf, (v15 + 4));
        if (v61 >= 0)
        {
          v36 = buf;
        }

        else
        {
          v36 = *buf;
        }

        *v54 = 136315394;
        *&v54[4] = v35;
        v55 = 2082;
        v56 = v36;
        v37 = "#I mustKeepSliceAlive: do not forcefully deactivate slice connection %s because it has active test traffic descriptor: %{public}s";
LABEL_92:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v37, v54, 0x16u);
        if ((SHIBYTE(v61) & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        v46 = *buf;
LABEL_94:
        operator delete(v46);
        goto LABEL_95;
      }

      if (*(a1 + 5320) == 1)
      {
        isInternalSliceApp_sync = TrafficDescriptor::hasAccountInfo((v15 + 4));
        if (isInternalSliceApp_sync)
        {
          v38 = *(a1 + 40);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = asString();
            TrafficDescriptor::toString(buf, (v15 + 4));
            v40 = v61 >= 0 ? buf : *buf;
            *v54 = 136315394;
            *&v54[4] = v39;
            v55 = 2082;
            v56 = v40;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active connected device: %{public}s", v54, 0x16u);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(*buf);
            }
          }

          v31 = 1;
          *a4 = 1;
LABEL_96:
          v32 = 1;
          return v31 | (v32 << 8);
        }
      }

      if (a7 && DataServiceController::specialAppPossiblyActive(isInternalSliceApp_sync, (v15 + 4)))
      {
        v34 = *(a1 + 40);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        v41 = asString();
        TrafficDescriptor::toString(buf, (v15 + 4));
        if (v61 >= 0)
        {
          v42 = buf;
        }

        else
        {
          v42 = *buf;
        }

        *v54 = 136315394;
        *&v54[4] = v41;
        v55 = 2082;
        v56 = v42;
        v37 = "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active special app: %{public}s";
        goto LABEL_92;
      }

      if ((*(a1 + 4928) & 1) == 0 && TrafficDescriptor::hasBundleInfo((v15 + 4)))
      {
        if ((v15[13] & 1) == 0)
        {
          goto LABEL_98;
        }

        if ((*(*a1 + 2432))(a1, v15 + 10))
        {
          if ((v15[13] & 1) == 0)
          {
            goto LABEL_98;
          }

          if ((*(*a1 + 2440))(a1, v15 + 10))
          {
            v34 = *(a1 + 40);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_95;
            }

            v49 = asString();
            TrafficDescriptor::toString(buf, (v15 + 4));
            if (v61 >= 0)
            {
              v50 = buf;
            }

            else
            {
              v50 = *buf;
            }

            *v54 = 136315394;
            *&v54[4] = v49;
            v55 = 2082;
            v56 = v50;
            v37 = "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active call kit call: %{public}s";
            goto LABEL_92;
          }
        }

        if ((v15[13] & 1) == 0)
        {
LABEL_98:
          sub_1000D1644();
        }

        if (DataServiceController::isAppWithBundleIdActiveForSlice(a1, (v15 + 10)))
        {
          v34 = *(a1 + 40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v47 = asString();
            TrafficDescriptor::toString(buf, (v15 + 4));
            if (v61 >= 0)
            {
              v48 = buf;
            }

            else
            {
              v48 = *buf;
            }

            *v54 = 136315394;
            *&v54[4] = v47;
            v55 = 2082;
            v56 = v48;
            v37 = "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active bundle id: %{public}s";
            goto LABEL_92;
          }

LABEL_95:
          v31 = 1;
          goto LABEL_96;
        }
      }

      v23 = v15[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v15[2];
          v25 = *v24 == v15;
          v15 = v24;
        }

        while (!v25);
      }

      v15 = v24;
      if (v24 == v16)
      {
        goto LABEL_39;
      }
    }

    v43 = *(a1 + 40);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    v44 = asString();
    TrafficDescriptor::toString(v54, (v15 + 4));
    v45 = v57 >= 0 ? v54 : *v54;
    *buf = 136315650;
    *&buf[4] = v44;
    v59 = 2082;
    v60 = v45;
    v61 = 2048;
    v62 = v21 / 1000000000;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: do not deactivate slice connection %s: recently forwarded app: %{public}s, age %llu secs", buf, 0x20u);
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    v46 = *v54;
    goto LABEL_94;
  }

LABEL_39:
  if (*(a1 + 4928) == 1)
  {
    v26 = *v53;
    if (*v53 == v16)
    {
      goto LABEL_56;
    }

    v27 = 0;
    v28 = 0;
    do
    {
      if (!TrafficDescriptor::hasBundleInfo((v26 + 4)))
      {
        goto LABEL_47;
      }

      if ((v26[13] & 1) == 0)
      {
        goto LABEL_98;
      }

      if ((*(*a1 + 2432))(a1, v26 + 10))
      {
        if ((v26[13] & 1) == 0)
        {
          goto LABEL_98;
        }

        v28 |= (*(*a1 + 2440))(a1, v26 + 10);
      }

      else
      {
LABEL_47:
        v27 = 1;
      }

      v29 = v26[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v26[2];
          v25 = *v30 == v26;
          v26 = v30;
        }

        while (!v25);
      }

      v26 = v30;
    }

    while (v30 != v16);
    if (((v27 | v28) & 1) == 0)
    {
LABEL_56:
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: deactivate slice in Wi-Fi because only call kit app(s) are using it and no active call", buf, 2u);
      }

      v31 = 0;
      goto LABEL_96;
    }
  }

  v31 = 0;
  v32 = 0;
  return v31 | (v32 << 8);
}

uint64_t DataServiceController::isInternalSliceApp_sync(DataServiceController *this, const TrafficDescriptor *a2)
{
  v2 = *(this + 671);
  v3 = this + 5376;
  if (v2 == this + 5376)
  {
    return 0;
  }

  v5 = (a2 + 48);
  v6 = (a2 + 16);
  while (*(a2 + 8) != 1 || *(a2 + 1) != *(v2 + 8))
  {
    if (TrafficDescriptor::hasBundleInfo(a2))
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        sub_1000D1644();
      }

      v7 = *(a2 + 71);
      if (v7 >= 0)
      {
        v8 = *(a2 + 71);
      }

      else
      {
        v8 = *(a2 + 7);
      }

      v9 = v2[95];
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v2 + 10);
      }

      if (v8 == v9)
      {
        v11 = v7 >= 0 ? v5 : *v5;
        v12 = v10 >= 0 ? v2 + 72 : *(v2 + 9);
        if (!memcmp(v11, v12, v8))
        {
          break;
        }
      }
    }

    if (*(a2 + 40) == 1)
    {
      v13 = *(a2 + 39);
      if (v13 >= 0)
      {
        v14 = *(a2 + 39);
      }

      else
      {
        v14 = *(a2 + 3);
      }

      v15 = v2[119];
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v2 + 13);
      }

      if (v14 == v15)
      {
        v17 = v13 >= 0 ? v6 : *v6;
        v18 = v16 >= 0 ? v2 + 96 : *(v2 + 12);
        if (!memcmp(v17, v18, v14))
        {
          break;
        }
      }
    }

    v19 = *(v2 + 1);
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
        v20 = *(v2 + 2);
        v21 = *v20 == v2;
        v2 = v20;
      }

      while (!v21);
    }

    v2 = v20;
    if (v20 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t DataServiceController::specialAppPossiblyActive(DataServiceController *this, const TrafficDescriptor *a2)
{
  result = TrafficDescriptor::hasBundleInfo(a2);
  if (result)
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      sub_1000D1644();
    }

    v4 = a2 + 48;
    v5 = *(a2 + 71);
    if (*(a2 + 71) < 0)
    {
      v7 = *(a2 + 7);
      if (v7 != 18)
      {
        if (v7 == 15)
        {
          v4 = *v4;
          goto LABEL_23;
        }

        return 0;
      }

      v6 = *v4;
    }

    else
    {
      if (v5 == 15)
      {
        goto LABEL_23;
      }

      v6 = a2 + 48;
      if (v5 != 18)
      {
        return 0;
      }
    }

    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 8);
    if (v8 == 0x6C7070612E6D6F63 && v9 == 0x6974656361662E65 && v10 == 25965)
    {
      return 1;
    }

    if ((v5 & 0x80) == 0)
    {
      if (v5 != 15)
      {
        return 0;
      }

      goto LABEL_23;
    }

    if (*(a2 + 7) == 15)
    {
      v4 = *(a2 + 6);
LABEL_23:
      v13 = *v4;
      v14 = *(v4 + 7);
      return v13 == 0x6C7070612E6D6F63 && v14 == 0x64656D61672E656CLL;
    }

    return 0;
  }

  return result;
}

uint64_t DataServiceController::mustKeepSliceAlive_sync(DataServiceController *this, int a2, unsigned int a3, uint64_t a4)
{
  v36 = 0;
  v8 = *(this + 14);
  __p = *(this + 13);
  v29 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v29)
  {
    sub_100004A34(v29);
  }

  v9 = *buf;
  v10 = v34;
  if (*buf == v34)
  {
    goto LABEL_42;
  }

  do
  {
    if (v35(*v9))
    {
      break;
    }

    ++v9;
  }

  while (v9 != v34);
  v25 = v34;
  if (v9 == v34)
  {
    goto LABEL_42;
  }

  v27 = 0;
  v24 = v35;
  do
  {
    v11 = *v9;
    v12 = 28;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      DataServiceController::getConnection_sync(this, v11, v12, &v31);
      if (v31 && ((*(*v31 + 168))(v31) & 1) != 0 && (*(*v31 + 200))(v31) == a2)
      {
        __p = 0;
        v29 = 0;
        v30 = 0;
        v13 = (*(*v31 + 416))(v31, &__p);
        mustKeepSliceAliveAll_sync = DataServiceController::mustKeepSliceAliveAll_sync(this, v12, v13, &v36, a3, a4, 0);
        v15 = a4;
        v16 = mustKeepSliceAliveAll_sync & 0x100;
        v17 = v16 == 0;
        v18 = v26;
        if ((mustKeepSliceAliveAll_sync & 0x100) != 0)
        {
          v18 = mustKeepSliceAliveAll_sync;
        }

        v26 = v18;
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }

        v19 = v16 >> 8;
        v27 |= v17;
        a4 = v15;
      }

      else
      {
        v19 = 6;
      }

      if (v32)
      {
        sub_100004A34(v32);
      }

      if (v19 != 6 && v19)
      {
        break;
      }

      v12 = (v12 + 1);
      if (v12 == 36)
      {
        goto LABEL_27;
      }
    }

    if ((v19 & 3) != 0)
    {
      v21 = 1;
      v20 = v26;
      return v20 | (v21 << 8);
    }

LABEL_27:
    for (++v9; v9 != v10; ++v9)
    {
      if (v24(*v9))
      {
        break;
      }
    }
  }

  while (v9 != v25);
  if ((v27 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v36 == 1)
  {
    v20 = 0;
    if (!(a4 | a3))
    {
      v21 = 0;
      return v20 | (v21 << 8);
    }

    v21 = 0;
    if (*(this + 5320))
    {
      return v20 | (v21 << 8);
    }
  }

  else
  {
    v21 = a4 | a3;
    if (!(a4 | a3))
    {
      v20 = 0;
      return v20 | (v21 << 8);
    }
  }

  if (a4 + a3 > 0x1FF)
  {
LABEL_42:
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = *(this + 5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: Slice is not used properly, deactivating", buf, 2u);
    }

    v20 = 0;
    v21 = 1;
  }

  return v20 | (v21 << 8);
}

void sub_1004A2F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::canUseInternetSlicing_sync(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 2288))(a1);
  if (result)
  {
    v10 = a2;
    result = **sub_100007DEC(a1 + 4960, &v10);
    if (result == 1 && a3 != 0)
    {
      v8 = (*(*a1 + 1120))(a1);
      v9 = (*(*a1 + 1064))(a1, a2);
      v12 = 0;
      LOBYTE(v8) = DataServiceController::SlicesDataContainer::configured(a1 + 4960, a2, v8, v9, v11);
      sub_100007E44(v11);
      return (v8 & 1) != 0 && DataServiceController::isDataModeGoodForInternetSlicing_sync(a1, a2);
    }
  }

  return result;
}

void sub_1004A30F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

BOOL DataServiceController::isDataModeGoodForInternetSlicing_sync(uint64_t a1, int a2)
{
  v10 = a2;
  v4 = sub_100007DEC(a1 + 4960, &v10);
  v5 = *v4;
  v6 = *(*v4 + 4);
  RawDataMode = DataServiceController::getRawDataMode(a1, a2);
  v8 = RawDataMode;
  if (!v6)
  {
    return RawDataMode == 17;
  }

  result = 0;
  if (v8 > 13)
  {
    if (v8 == 14 || v8 == 16)
    {
      return (*(v5 + 4) >> 3) & 1;
    }

    else if (v8 == 17)
    {
      return (*(v5 + 4) >> 4) & 1;
    }
  }

  else if ((v8 - 1) < 5)
  {
    return *(v5 + 4) & 1;
  }

  return result;
}

uint64_t DataServiceController::useInternetSlicing_sync(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1 + 4096;
  if (*(a1 + 4928) != 1 || (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  DataServiceController::makeDataSimSlotRange(a1, a2, &__p);
  v7 = __p;
  v8 = v17;
  if (__p == v17)
  {
    v9 = 0;
    if (__p)
    {
LABEL_10:
      v17 = v7;
      operator delete(v7);
    }
  }

  else
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        v9 = 1;
      }

      else
      {
        v18 = *v7;
        v9 = *(*sub_100007DEC(a1 + 4960, &v18) + 21);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = __p;
    if (__p)
    {
      goto LABEL_10;
    }
  }

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (*(v6 + 1176) == 1 && (*(v6 + 1177) & 1) == 0 && !*(a1 + 5296))
  {
    DataServiceController::makeDataSimSlotRange(a1, a2, &__p);
    v10 = __p;
    v11 = v17;
    if (__p == v17)
    {
      v12 = 0;
      if (__p)
      {
LABEL_28:
        v17 = v10;
        operator delete(v10);
      }
    }

    else
    {
      LOBYTE(v12) = 0;
      do
      {
        v18 = *v10;
        v13 = sub_100007DEC(a1 + 4960, &v18);
        if (v12 || (v14 = *v13, *(*v13 + 12) == 1) && ((*(v14 + 13) & 1) != 0 || (*(v14 + 14) & 1) != 0))
        {
          v12 = 1;
        }

        else
        {
          v12 = ((*(v14 + 1) & 1) != 0 || *(v14 + 2) == 1) && *(v14 + 152) != 0;
        }

        ++v10;
      }

      while (v10 != v11);
      v10 = __p;
      if (__p)
      {
        goto LABEL_28;
      }
    }

    if (v12)
    {
      goto LABEL_30;
    }

    return 0;
  }

LABEL_30:
  result = (*(*a1 + 2280))(a1, a2, a3 ^ 1u);
  if (result)
  {
    result = (*(*a1 + 1152))(a1, a2);
    if (result)
    {
      result = (*(*a1 + 1904))(a1);
      if (result)
      {
        return (*(*a1 + 1896))(a1, a2) ^ 1;
      }
    }
  }

  return result;
}

void sub_1004A3474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::makeDataSimSlotRange@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = (*(*a1 + 1120))(a1);
  if (a2 == 3 || result == a2)
  {
    sub_100016740(a3, 1uLL);
  }

  return result;
}

void sub_1004A3550(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::resetSlicePoliciesOnDataModeChange_sync(uint64_t a1, uint64_t a2)
{
  isDataModeGoodForInternetSlicing_sync = DataServiceController::isDataModeGoodForInternetSlicing_sync(a1, a2);
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = asStringBool(isDataModeGoodForInternetSlicing_sync);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Slice connectivity: Data Mode changed to: %s", &v7, 0xCu);
  }

  v7 = a2;
  v6 = sub_100007DEC(a1 + 4960, &v7);
  DataServiceController::resetSlicePolicies_sync(a1, a2, 0, *(*v6 + 22) & ~isDataModeGoodForInternetSlicing_sync & 1);
}

void DataServiceController::resetSlicePolicies_sync(uint64_t a1, int a2, int a3, int a4)
{
  DataServiceController::sliceTrafficDescriptors_sync(a1, a2, "reset policies");
  v6 = *(a1 + 112);
  *buf = *(a1 + 104);
  v51[0] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v51[0])
  {
    sub_100004A34(v51[0]);
  }

  v8 = v52;
  v7 = v53;
  if (v52 != v53)
  {
    v41 = a3 | a4;
    v9 = v54;
    do
    {
      if (v54(*v8))
      {
        break;
      }

      ++v8;
    }

    while (v8 != v53);
    v40 = v53;
    while (v8 != v40)
    {
      v10 = *v8;
      v44 = (*(**(a1 + 48) + 16))(*(a1 + 48), v10);
      *buf = v10;
      v11 = *sub_100007DEC(a1 + 4960, buf);
      v12 = *v44;
      if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I we are clearing cached traffic descriptors", buf, 2u);
      }

      v14 = *(v11 + 56);
        ;
      }

      *(v11 + 64) = v14;
      v51[0] = 0;
      v51[1] = 0;
      *buf = v51;
      LODWORD(__p) = 0;
      sub_1000C4284(buf, &__p);
      if (v41 || (*(v11 + 18) & 1) != 0)
      {
        for (j = 28; j != 36; ++j)
        {
          LODWORD(__p) = j;
          sub_1000C4284(buf, &__p);
        }
      }

      else
      {
        for (k = 28; k != 36; ++k)
        {
          *v55 = 0;
          *&v55[8] = 0;
          DataServiceController::getConnection_sync(a1, v10, k, v55);
          if (*v55 && ((*(**v55 + 168))(*v55) & 1) != 0)
          {
            __p = 0;
            v48 = 0;
            v49 = 0;
            v17 = (*(**v55 + 416))(*v55, &__p);
            v19 = v17 + 1;
            v18 = *v17;
            if (*v17 == v17 + 1)
            {
LABEL_36:
              LODWORD(p_p) = k;
              sub_1000C4284(buf, &p_p);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              v20 = 0;
              while (1)
              {
                hasAccountInfo = TrafficDescriptor::hasAccountInfo((v18 + 4));
                if (hasAccountInfo)
                {
                  break;
                }

                v22 = v18[1];
                if (v22)
                {
                  do
                  {
                    v23 = v22;
                    v22 = *v22;
                  }

                  while (v22);
                }

                else
                {
                  do
                  {
                    v23 = v18[2];
                    v24 = *v23 == v18;
                    v18 = v23;
                  }

                  while (!v24);
                }

                v20 |= hasAccountInfo;
                v18 = v23;
                if (v23 == v19)
                {
                  if ((v20 & 1) == 0)
                  {
                    goto LABEL_36;
                  }

                  break;
                }
              }

              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (*&v55[8])
          {
            sub_100004A34(*&v55[8]);
          }
        }
      }

      v25 = *buf;
      if (*buf != v51)
      {
        do
        {
          v26 = *(v25 + 7);
          *v55 = 0;
          *&v55[8] = 0;
          DataServiceController::getConnection_sync(a1, v10, v26, v55);
          if (*v55)
          {
            __p = 0;
            v48 = 0;
            v49 = 0;
            sub_100127C2C(*(a1 + 152), v10, &__p);
            if (0x6DB6DB6DB6DB6DB7 * ((v48 - __p) >> 3) > v26)
            {
              v27 = *(__p + 14 * v26);
              ActiveNetworkByConnection_sync = DataServiceController::getActiveNetworkByConnection_sync(a1, v10, v26);
              (*(**v55 + 440))(*v55, ActiveNetworkByConnection_sync, v27 == 0, 1);
            }

            p_p = &__p;
            sub_10009C118(&p_p);
          }

          if (*&v55[8])
          {
            sub_100004A34(*&v55[8]);
          }

          v29 = v25[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v25[2];
              v24 = *v30 == v25;
              v25 = v30;
            }

            while (!v24);
          }

          v25 = v30;
        }

        while (v30 != v51);
      }

      if (a4)
      {
        __p = 0;
        v48 = 0;
        v49 = 0;
        sub_10000501C(&__p, "resetSlicePolicies_sync: forced shutdown");
        v31 = *buf;
        if (*buf != v51)
        {
          do
          {
            v32 = *(v31 + 7);
            if (v32)
            {
              p_p = 0;
              v46 = 0;
              DataServiceController::getConnection_sync(a1, v10, v32, &p_p);
              if (p_p && (*(*p_p + 21))(p_p))
              {
                v33 = *v44;
                if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = asString();
                  *v55 = 136315394;
                  *&v55[4] = "resetSlicePolicies_sync";
                  *&v55[12] = 2080;
                  *&v55[14] = v34;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: Deactivating %s...", v55, 0x16u);
                }

                if (v49 >= 0)
                {
                  v35 = &__p;
                }

                else
                {
                  v35 = __p;
                }

                DataServiceController::enableContextStateChangeNotificationRepost(a1, a2, v32, v35, 1);
                (*(*p_p + 12))(p_p, "resetSlicePolicies_sync", "CommCenter");
              }

              if (v46)
              {
                sub_100004A34(v46);
              }
            }

            v36 = v31[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v31[2];
                v24 = *v37 == v31;
                v31 = v37;
              }

              while (!v24);
            }

            v31 = v37;
          }

          while (v37 != v51);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p);
        }
      }

      if ((*(*a1 + 2272))(a1, v10, 0))
      {
        v48 = 0;
        v49 = 0;
        __p = &v48;
        v38 = *(a1 + 1136);
        v39 = *(a1 + 1144);
        while (v38 != v39)
        {
          if (DataServiceController::sliceApp(a1, v10, v38))
          {
            sub_100005BA0(&__p, v38);
          }

          v38 += 3;
        }

        DataServiceController::addFrontPolicies(a1, v10, &__p);
        DataServiceController::activateLlphs(a1, v10);
        sub_100009970(&__p, v48);
      }

      DataServiceController::updateNrSliceConfigured_sync(a1);
      sub_10006DCAC(buf, v51[0]);
      do
      {
        ++v8;
      }

      while (v8 != v7 && (v9(*v8) & 1) == 0);
    }
  }
}

void sub_1004A3DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::resetSlicePoliciesOnWiFiChange_sync(DataServiceController *this, BOOL a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Slice connectivity: Wi-Fi changed to: %s", &buf, 0xCu);
  }

  v5 = *(this + 14);
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v10)
  {
    sub_100004A34(v10);
  }

  v7 = *(&buf + 1);
  v6 = buf;
  if (buf != *(&buf + 1))
  {
    v8 = v12;
    do
    {
      if (v8(*v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != v7);
    v9 = *(&buf + 1);
    while (v6 != v9)
    {
      DataServiceController::resetSlicePolicies_sync(this, *v6, 0, 0);
      do
      {
        ++v6;
      }

      while (v6 != v7 && (v8(*v6) & 1) == 0);
    }
  }
}

void sub_1004A3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::resetSlicePoliciesOnVpnChange_sync(DataServiceController *this, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if (*(this + 5272) != a2 || *(this + 5273) != a3)
  {
    *(this + 5272) = a2;
    *(this + 5273) = a3;
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = asStringBool(v4);
      *&buf[12] = 2080;
      *&buf[14] = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Slice connectivity: VPN changed to: %s, usesPolicyBasedRouting: %s", buf, 0x16u);
    }

    v7 = *(this + 14);
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (v12)
    {
      sub_100004A34(v12);
    }

    v8 = *buf;
    v9 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v10 = *&buf[16];
      do
      {
        if (v10(*v8))
        {
          break;
        }

        ++v8;
      }

      while (v8 != v9);
      v11 = *&buf[8];
      while (v8 != v11)
      {
        DataServiceController::resetSlicePolicies_sync(this, *v8, 1, 0);
        do
        {
          ++v8;
        }

        while (v8 != v9 && (v10(*v8) & 1) == 0);
      }
    }
  }
}

void sub_1004A4190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *DataServiceController::sliceTrafficDescriptors_sync(uint64_t a1, int a2, uint64_t a3)
{
  DataServiceController::makeDataSimSlotRange(a1, a2, &v107);
  v4 = v107;
  v5 = v108;
  if (v107 == v108)
  {
    v6 = &unk_1018086F0;
    goto LABEL_221;
  }

  v6 = &unk_1018086F0;
  while (1)
  {
    v7 = *v4;
    v93 = (*(**(a1 + 48) + 16))(*(a1 + 48), v7);
    LODWORD(buf) = v7;
    v8 = sub_100007DEC(a1 + 4960, &buf);
    v94 = *v8;
    if (*(*v8 + 56) != *(*v8 + 64))
    {
      v6 = (v94 + 56);
      v10 = *v93;
      if (os_log_type_enabled(*v93, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I we are using cached traffic descriptors", &buf, 2u);
      }

      goto LABEL_221;
    }

    if (sub_100097DB0(*(a1 + 144), v7))
    {
      v9 = *(sub_1000A8A0C(*(a1 + 144), v7) + 24);
      if (v9)
      {
        break;
      }
    }

    if (++v4 == v5)
    {
      goto LABEL_221;
    }
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  v11 = (*(*v9 + 936))(v9);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  sub_1004BE904(&v104, *v11, v11[1], 0x86BCA1AF286BCA1BLL * ((v11[1] - *v11) >> 4));
  LODWORD(v101) = v7;
  v12 = sub_100007DEC(a1 + 4960, &v101);
  v13 = v93;
  v15 = *(*v12 + 32);
  v14 = *(*v12 + 40);
  while (v15 != v14)
  {
    sub_1004A6280(&v104, v15);
    v15 = (v15 + 304);
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v16 = v104;
  v91 = v105;
  if (v104 == v105)
  {
    goto LABEL_176;
  }

  v92 = (v94 + 144);
  while (2)
  {
    if (!TrafficDescriptor::hasBundleInfo(v16))
    {
      goto LABEL_24;
    }

    if ((*(v16 + 72) & 1) == 0)
    {
      sub_1000D1644();
    }

    v17 = (v16 + 48);
    if (a1 + 4992 == sub_100007A6C(a1 + 4984, (v16 + 48)))
    {
LABEL_24:
      v95 = 0;
      v96 = 0;
      v97 = 0;
      TrafficDescriptor::TrafficDescriptor(&buf, v16);
      v95 = 0;
      v96 = 0;
      v97 = 0;
      sub_1004BEA68(&v95, &buf, &v131, 1uLL);
      TrafficDescriptor::~TrafficDescriptor(&buf);
      if (TrafficDescriptor::hasDnnInfo(v16))
      {
        if (*(v94 + 152))
        {
          v20 = v95;
            ;
          }

          v96 = v20;
          v23 = *(v94 + 136);
          if (v23 != v92)
          {
            while (1)
            {
              if ((TrafficDescriptor::hasBundleInfo(v16) & 1) == 0)
              {
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                buf = 0u;
                TrafficDescriptor::TrafficDescriptor(&buf, v16);
                sub_1001696A4(&v115, (v23 + 4));
                v24 = v96;
                if (v96 >= v97)
                {
                  v25 = sub_1001C1784(&v95, &buf);
                }

                else
                {
                  TrafficDescriptor::TrafficDescriptor(v96, &buf);
                  v25 = (v24 + 304);
                }

                v96 = v25;
                TrafficDescriptor::~TrafficDescriptor(&buf);
                goto LABEL_60;
              }

              memset(&__p, 0, sizeof(__p));
              if ((*(v16 + 72) & 1) == 0)
              {
                sub_1000D1644();
              }

              if (*(v16 + 71) < 0)
              {
                sub_100005F2C(&__p, *(v16 + 48), *(v16 + 56));
              }

              else
              {
                __p = *(v16 + 48);
              }

              v26 = *(v23 + 79);
              if (v26 >= 0)
              {
                v27 = *(v23 + 79);
              }

              else
              {
                v27 = v23[8];
              }

              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __p.__r_.__value_.__l.__size_;
              }

              if (v27 == size)
              {
                v30 = v26 >= 0 ? v23 + 7 : v23[7];
                v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                if (!memcmp(v30, v31, v27))
                {
                  break;
                }
              }

              if (v29 < 0)
              {
                goto LABEL_59;
              }

LABEL_60:
              v32 = v23[1];
              if (v32)
              {
                do
                {
                  v33 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v33 = v23[2];
                  v34 = *v33 == v23;
                  v23 = v33;
                }

                while (!v34);
              }

              v23 = v33;
              if (v33 == v92)
              {
                v20 = v96;
                goto LABEL_72;
              }
            }

            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            buf = 0u;
            TrafficDescriptor::TrafficDescriptor(&buf, v16);
            sub_1001696A4(&v115, (v23 + 4));
            sub_1001696A4(&v117, &__p);
            v35 = v96;
            if (v96 >= v97)
            {
              v36 = sub_1001C1784(&v95, &buf);
            }

            else
            {
              TrafficDescriptor::TrafficDescriptor(v96, &buf);
              v36 = (v35 + 304);
            }

            v96 = v36;
            TrafficDescriptor::~TrafficDescriptor(&buf);
            if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_60;
            }

LABEL_59:
            operator delete(__p.__r_.__value_.__l.__data_);
            goto LABEL_60;
          }

LABEL_72:
          if (v95 != v20)
          {
            goto LABEL_73;
          }

          v54 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_115;
          }

          TrafficDescriptor::toString(&buf, v16);
          if ((SBYTE7(v113) & 0x80u) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
          *(__p.__r_.__value_.__r.__words + 4) = p_buf;
          v56 = v54;
          v57 = "#N We do not know what to do with this Enterprise traffic descriptor, wrong bundle id or else: %{public}s";
LABEL_135:
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, v57, &__p, 0xCu);
          if (SBYTE7(v113) < 0)
          {
            v58 = buf;
LABEL_137:
            operator delete(v58);
          }

LABEL_115:
          *&buf = &v95;
          sub_1001B8A7C(&buf);
          goto LABEL_116;
        }

        v52 = *v13;
        if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        TrafficDescriptor::toString(&buf, v16);
        if ((SBYTE7(v113) & 0x80u) == 0)
        {
          v53 = &buf;
        }

        else
        {
          v53 = buf;
        }

LABEL_134:
        LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
        *(__p.__r_.__value_.__r.__words + 4) = v53;
        v56 = v52;
        v57 = "#E We do not know what to do with this Enterprise traffic descriptor: %{public}s if no managedAllowedApps configured. We are not going to set a broad all-inclusive traffic interception and examination for that purpose.";
        goto LABEL_135;
      }

      if (*(v16 + 72) == 1 && v94 + 168 != sub_100007A6C(v94 + 160, (v16 + 48)))
      {
        if (!*(v94 + 152))
        {
          v52 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_115;
          }

          TrafficDescriptor::toString(&buf, v16);
          if ((SBYTE7(v113) & 0x80u) == 0)
          {
            v53 = &buf;
          }

          else
          {
            v53 = buf;
          }

          goto LABEL_134;
        }

        v22 = v95;
          ;
        }

        v96 = v22;
        memset(&__p, 0, sizeof(__p));
        if ((*(v16 + 72) & 1) == 0)
        {
          sub_1000D1644();
        }

        if (*(v16 + 71) < 0)
        {
          sub_100005F2C(&__p, *(v16 + 48), *(v16 + 56));
        }

        else
        {
          __p = *(v16 + 48);
        }

        v59 = *(v94 + 136);
        if (v59 != v92)
        {
          do
          {
            v60 = *(v59 + 79);
            if (v60 >= 0)
            {
              v61 = *(v59 + 79);
            }

            else
            {
              v61 = v59[8];
            }

            v62 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v62 = __p.__r_.__value_.__l.__size_;
            }

            if (v61 == v62)
            {
              v63 = v60 >= 0 ? v59 + 7 : v59[7];
              v64 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              if (!memcmp(v63, v64, v61))
              {
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                buf = 0u;
                TrafficDescriptor::TrafficDescriptor(&buf, v16);
                sub_1001696A4(&v115, (v59 + 4));
                sub_1001696A4(&v117, &__p);
                v65 = v96;
                if (v96 >= v97)
                {
                  v66 = sub_1001C1784(&v95, &buf);
                }

                else
                {
                  TrafficDescriptor::TrafficDescriptor(v96, &buf);
                  v66 = (v65 + 304);
                }

                v96 = v66;
                TrafficDescriptor::~TrafficDescriptor(&buf);
              }
            }

            v67 = v59[1];
            if (v67)
            {
              do
              {
                v68 = v67;
                v67 = *v67;
              }

              while (v67);
            }

            else
            {
              do
              {
                v68 = v59[2];
                v34 = *v68 == v59;
                v59 = v68;
              }

              while (!v34);
            }

            v59 = v68;
          }

          while (v68 != v92);
        }

        if (v95 == v96)
        {
          v69 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(&buf, v16);
            v70 = (SBYTE7(v113) & 0x80u) == 0 ? &buf : buf;
            *v109 = 136446210;
            v110 = v70;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#E We do not know what to do with this Enterprise traffic descriptor, wrong bundle id or else: %{public}s", v109, 0xCu);
            if (SBYTE7(v113) < 0)
            {
              operator delete(buf);
            }
          }

          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_115;
          }

          v58 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_137;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_73:
      if (*(v94 + 12) == 1 && ((*(v94 + 13) & 1) != 0 || *(v94 + 14) == 1))
      {
        v38 = v95;
        v37 = v96;
        while (v38 != v37)
        {
          if (TrafficDescriptor::hasBundleInfo(v38))
          {
            v109[0] = 0;
            memset(&__p, 0, sizeof(__p));
            if ((*(v38 + 72) & 1) == 0)
            {
              sub_1000D1644();
            }

            DataServiceController::convertBundleIdToAccountIds(a1, v38 + 48, v109, v94, &__p);
            v40 = __p.__r_.__value_.__l.__size_;
            v39 = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_ && ((v109[0] & 1) != 0 || (*(v94 + 20) & 1) == 0))
            {
              do
              {
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                buf = 0u;
                TrafficDescriptor::TrafficDescriptor(&buf);
                sub_1001696A4(&v119, (v39 + 8));
                if ((*(v38 + 72) & 1) == 0)
                {
LABEL_224:
                  sub_1000D1644();
                }

                sub_1001696A4(&v117, v38 + 2);
                if (v109[0])
                {
                  v41 = 257;
                }

                else
                {
                  v41 = 0;
                }

                LOWORD(v121) = v41;
                if (TrafficDescriptor::hasRsDnnInfo(v38))
                {
                  if (*(v38 + 296) != 1)
                  {
                    goto LABEL_224;
                  }

                  sub_1001696A4(&v129, (v38 + 272));
                }

                v42 = v99;
                if (v99 >= v100)
                {
                  v43 = sub_1001C1784(&v98, &buf);
                }

                else
                {
                  TrafficDescriptor::TrafficDescriptor(v99, &buf);
                  v43 = (v42 + 304);
                }

                v99 = v43;
                TrafficDescriptor::~TrafficDescriptor(&buf);
                v39 += 32;
              }

              while (v39 != v40);
            }

            *&buf = &__p;
            sub_10001E200(&buf);
            v13 = v93;
          }

          v38 = (v38 + 304);
        }
      }

      buf = 0uLL;
      *&v113 = 0;
      DataServiceController::matchAndConvertCategorySlice(a1, v7, &v95, &buf, a3);
      v44 = *(&buf + 1);
      for (k = buf; ; k += 38)
      {
        if (k == v44)
        {
          __p.__r_.__value_.__r.__words[0] = &buf;
          sub_1001B8A7C(&__p);
          goto LABEL_115;
        }

        if (!DataServiceController::trafficClassAllowed_sync(a1, k))
        {
          break;
        }

        if (DataServiceController::sliceAllowed(a1, v7, k, 1, 1))
        {
          sub_1004A6280(&v101, k);
          continue;
        }

        v50 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(&__p, k);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *v109 = 136446210;
          v110 = p_p;
          v48 = v50;
          v49 = "#N slice not allowed: %{public}s";
LABEL_111:
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, v109, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          continue;
        }

LABEL_113:
        ;
      }

      v46 = *v13;
      if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_113;
      }

      TrafficDescriptor::toString(&__p, k);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      *v109 = 136446210;
      v110 = v47;
      v48 = v46;
      v49 = "#N traffic descriptor not allowed: %{public}s";
      goto LABEL_111;
    }

    v18 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(v16 + 72) & 1) == 0)
      {
        sub_1000D1644();
      }

      if (*(v16 + 71) < 0)
      {
        v17 = *v17;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N we do not allow specific bundle ids in the URSP rules: %s, skipping this definition", &buf, 0xCu);
    }

LABEL_116:
    v16 += 304;
    if (v16 != v91)
    {
      continue;
    }

    break;
  }

  v72 = v98;
  for (m = v99; v72 != m; v72 = (v72 + 304))
  {
    sub_1004A6280(&v101, v72);
  }

LABEL_176:
  v73 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I we are setting new cached traffic descriptors", &buf, 2u);
  }

  buf = 0uLL;
  *&v113 = 0;
  if (*(v94 + 1) == 1)
  {
    v75 = v101;
    v74 = v102;
    while (v75 != v74)
    {
      if (sub_1004AA0B4(v94, v75))
      {
        sub_1004A6280(&buf, v75);
      }

      v75 = (v75 + 304);
    }
  }

  if (*(v94 + 12) == 1 && ((*(v94 + 13) & 1) != 0 || *(v94 + 14) == 1))
  {
    v77 = v101;
    v76 = v102;
    while (v77 != v76)
    {
      if (!sub_1004AA0B4(v94, v77) && TrafficDescriptor::isXR(v77))
      {
        sub_1004A6280(&buf, v77);
      }

      v77 = (v77 + 304);
    }
  }

  v79 = v101;
  v78 = v102;
  if (v101 != v102)
  {
    do
    {
      if (!sub_1004AA0B4(v94, v79) && TrafficDescriptor::dualXR(v79))
      {
        sub_1004A6280(&buf, v79);
      }

      v79 = (v79 + 304);
    }

    while (v79 != v78);
    v79 = v101;
    v78 = v102;
  }

  while (v79 != v78)
  {
    if (!sub_1004AA0B4(v94, v79) && TrafficDescriptor::notXR(v79))
    {
      sub_1004A6280(&buf, v79);
    }

    v79 = (v79 + 304);
  }

  v81 = *(&buf + 1);
  v80 = buf;
  if (*(&buf + 1) == buf)
  {
    v84 = 0x86BCA1AF286BCA1BLL * ((*(&buf + 1) - buf) >> 4);
  }

  else
  {
    v82 = 0;
    v83 = 0;
    do
    {
      DataServiceController::adjustProtocol(a1, (v80 + v82));
      v80 = buf;
      *(buf + v82) = v83++;
      v81 = *(&buf + 1);
      v84 = 0x86BCA1AF286BCA1BLL * ((*(&buf + 1) - v80) >> 4);
      v82 += 304;
    }

    while (v83 < v84);
  }

  if (v81 != v80)
  {
    v85 = 0;
    v86 = 0;
    do
    {
      v87 = *v93;
      if (os_log_type_enabled(*v93, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(&v95, (v80 + v85));
        v88 = &v95;
        if ((v97 & 0x8000000000000000) != 0)
        {
          v88 = v95;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v86;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v88;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I tds: ret[%d] = %s", &__p, 0x12u);
        if (SHIBYTE(v97) < 0)
        {
          operator delete(v95);
        }

        v81 = *(&buf + 1);
        v80 = buf;
      }

      ++v86;
      v84 = 0x86BCA1AF286BCA1BLL * ((v81 - v80) >> 4);
      v85 += 304;
    }

    while (v86 < v84);
  }

  v6 = (v94 + 56);
  if ((v94 + 56) != &buf)
  {
    sub_1001C18CC(v94 + 56, v80, v81, v84);
  }

  DataServiceController::notifyLLPHS_sync(a1, 0, 0, 1);
  v95 = &buf;
  sub_1001B8A7C(&v95);
  *&buf = &v98;
  sub_1001B8A7C(&buf);
  *&buf = &v101;
  sub_1001B8A7C(&buf);
  *&buf = &v104;
  sub_1001B8A7C(&buf);
LABEL_221:
  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  return v6;
}

void sub_1004A5128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char *a46)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  a46 = &a22;
  sub_1001B8A7C(&a46);
  a46 = &a25;
  sub_1001B8A7C(&a46);
  a46 = &a28;
  sub_1001B8A7C(&a46);
  a46 = &a31;
  sub_1001B8A7C(&a46);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::addFrontPolicies(DataServiceController *a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 671);
  v7 = (a1 + 5376);
  if (v6 != (a1 + 5376))
  {
    while (1)
    {
      v8 = *(a1 + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v6 + 9;
        if (*(v6 + 95) < 0)
        {
          v9 = *v9;
        }

        v10 = v6 + 12;
        if (*(v6 + 119) < 0)
        {
          v10 = *v10;
        }

        v11 = v6 + 6;
        if (*(v6 + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = *(v6 + 8);
        v13 = v6[5];
        *buf = 67110146;
        *&buf[4] = v12;
        *&buf[8] = 2080;
        *&buf[10] = v9;
        *&buf[18] = 2080;
        *&buf[20] = v10;
        v30 = 2080;
        v31 = v11;
        v32 = 2048;
        v33 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Front policies adding (test): pid=%d bundleId=%s uuid=%s procName=%s category=%lu", buf, 0x30u);
      }

      v26 = 0uLL;
      v27 = 0;
      if ((*(v6 + 95) & 0x8000000000000000) == 0)
      {
        if (*(v6 + 95))
        {
          break;
        }

        goto LABEL_25;
      }

      if (v6[10])
      {
        break;
      }

LABEL_25:
      *buf = &v26;
      sub_1001B8A7C(buf);
      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
      if (v19 == v7)
      {
        goto LABEL_31;
      }
    }

    DataServiceController::getTrafficDescriptorsForBundleId(a1, a2, (v6 + 9), 1, buf);
    sub_1001C1A74(&v26);
    v26 = *buf;
    v14 = *&buf[16];
    memset(buf, 0, 24);
    v27 = v14;
    v28 = buf;
    sub_1001B8A7C(&v28);
    v16 = *(&v26 + 1);
    for (i = v26; ; i += 304)
    {
      if (i == v16)
      {
        goto LABEL_25;
      }

      buf[0] = 0;
      buf[24] = 0;
      v17 = sub_10016A270(i + 240, buf);
      if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((*(v6 + 119) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v6 + 119))
      {
        goto LABEL_23;
      }

LABEL_24:
      *(i + 4) = *(v6 + 8);
      *(i + 8) = 1;
      (*(*a1 + 2312))(a1, i, v17);
    }

    if (!v6[13])
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_1001696A4((i + 16), v6 + 4);
    goto LABEL_24;
  }

LABEL_31:
  *buf = a2;
  if (*(*sub_100007DEC(a1 + 4960, buf) + 120))
  {
    v20 = a3[2] == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v23 = *a3;
    v21 = a3 + 1;
    v22 = v23;
    if (v23 != v21)
    {
      do
      {
        DataServiceController::addFrontPolicies(a1, a2, (v22 + 4));
        v24 = v22[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v22[2];
            v20 = *v25 == v22;
            v22 = v25;
          }

          while (!v20);
        }

        v22 = v25;
      }

      while (v25 != v21);
    }
  }
}

uint64_t DataServiceController::activateLlphs(uint64_t result, uint64_t a2)
{
  if (*(result + 5320) == 1)
  {
    v3 = result;
    result = DataServiceController::sliceTrafficDescriptors_sync(result, a2, "llphs");
    v4 = *result;
    v5 = *(result + 8);
    while (v4 != v5)
    {
      result = TrafficDescriptor::hasAccountInfo(v4);
      if (result)
      {
        result = DataServiceController::sliceAllowed(v3, a2, v4, 0, 1);
        if (result)
        {
          result = (*(*v3 + 2312))(v3, v4);
        }
      }

      v4 = (v4 + 304);
    }
  }

  return result;
}

void DataServiceController::updateNrSliceConfigured_sync(void *a1)
{
  if ((*(*a1 + 2288))(a1))
  {
    v2 = a1[14];
    v7 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (v7)
    {
      sub_100004A34(v7);
    }

    v3 = v8;
    if (v8 != v9)
    {
      do
      {
        if (v10(*v3))
        {
          break;
        }

        ++v3;
      }

      while (v3 != v9);
      while (v3 != v9)
      {
        v4 = *v3;
        v5 = *(sub_1000A8A0C(a1[18], *v3) + 24);
        if (v5)
        {
          isNrSliceConfigured_sync = DataServiceController::isNrSliceConfigured_sync(a1, v4);
          (*(*v5 + 768))(v5, isNrSliceConfigured_sync);
        }

        do
        {
          ++v3;
        }

        while (v3 != v9 && (v10(*v3) & 1) == 0);
      }
    }
  }
}

void sub_1004A5848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::isNrSliceConfigured_sync(void *a1, uint64_t a2)
{
  v4 = a1[14];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v10)
  {
    sub_100004A34(v10);
  }

  if ((isValidSimSlot & 1) == 0 || (*(*a1 + 1120))(a1) != a2 || !(*(*a1 + 2288))(a1))
  {
    return 0;
  }

  v6 = (*(*a1 + 1120))(a1);
  v7 = (*(*a1 + 1064))(a1, a2);
  v12 = 0;
  v8 = DataServiceController::SlicesDataContainer::configured((a1 + 620), a2, v6, v7, v11);
  sub_100007E44(v11);
  return v8;
}

void sub_1004A5A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

void DataServiceController::getTrafficDescriptorsForBundleId(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  isManagedApp = DataServiceController::isManagedApp(a1, a2, a3);
  v11 = DataServiceController::sliceTrafficDescriptors_sync(a1, a2, "bundle id");
  v12 = v11[1];
  if (*v11 != v12)
  {
    v13 = *v11 + 48;
    do
    {
      if (isManagedApp & 1 | ((TrafficDescriptor::hasDnnInfo((v13 - 48)) & 1) == 0) && ((TrafficDescriptor::hasDnnInfo((v13 - 48)) | isManagedApp ^ 1) & 1) != 0)
      {
        if (TrafficDescriptor::hasBundleInfo((v13 - 48)))
        {
          if ((*(v13 + 24) & 1) == 0)
          {
            sub_1000D1644();
          }

          v14 = *(v13 + 23);
          if (v14 >= 0)
          {
            v15 = *(v13 + 23);
          }

          else
          {
            v15 = *(v13 + 8);
          }

          v16 = *(a3 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(a3 + 8);
          }

          if (v15 == v16)
          {
            v18 = v14 >= 0 ? v13 : *v13;
            v19 = v17 >= 0 ? a3 : *a3;
            if (!memcmp(v18, v19, v15))
            {
              sub_1004A6280(a5, (v13 - 48));
            }
          }
        }

        else if (a4 && (TrafficDescriptor::hasAccountInfo((v13 - 48)) & 1) == 0)
        {
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
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v21 = 0u;
          TrafficDescriptor::TrafficDescriptor(&v21, (v13 - 48));
          sub_1001696A4(&v24, a3);
          sub_1004A6280(a5, &v21);
          TrafficDescriptor::~TrafficDescriptor(&v21);
        }
      }

      v20 = v13 + 256;
      v13 += 304;
    }

    while (v20 != v12);
  }

  if ((isManagedApp & 1) != 0 && *v11 == v11[1])
  {
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
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    TrafficDescriptor::TrafficDescriptor(&v21);
    sub_1001696A4(&v24, a3);
    sub_1004A6280(a5, &v21);
    TrafficDescriptor::~TrafficDescriptor(&v21);
  }
}

void DataServiceController::addFrontPolicies(DataServiceController *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Front policies adding: %s", buf, 0xCu);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  DataServiceController::getTrafficDescriptorsForBundleId(a1, a2, a3, 0, &v16);
  v8 = v16;
  for (i = v17; v8 != i; v8 = (v8 + 304))
  {
    buf[0] = 0;
    v20[0].__r_.__value_.__s.__data_[8] = 0;
    sub_10016A270(v8 + 240, buf);
    if (v20[0].__r_.__value_.__s.__data_[8] == 1 && v20[0].__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(*buf);
    }

    if (DataServiceController::sliceAllowed(a1, a2, v8, 0, 0))
    {
      if (*(v8 + 40) == 1)
      {
        (*(*a1 + 2312))(a1, v8);
      }

      else
      {
        memset(v20, 0, sizeof(v20));
        *buf = 0u;
        TrafficDescriptor::TrafficDescriptor(buf, v8);
        AppUuids = DataServiceController::getAppUuids(a1, a3);
        v11 = AppUuids + 1;
        v12 = *AppUuids;
        if (*AppUuids != AppUuids + 1)
        {
          do
          {
            sub_1001696A4(v20, (v12 + 4));
            (*(*a1 + 2312))(a1, buf);
            v13 = v12[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v12[2];
                v15 = *v14 == v12;
                v12 = v14;
              }

              while (!v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
        }

        TrafficDescriptor::~TrafficDescriptor(buf);
      }
    }
  }

  *buf = &v16;
  sub_1001B8A7C(buf);
}

BOOL DataServiceController::sliceAllowed(DataServiceController *a1, uint64_t a2, void **this, uint64_t a4, char a5)
{
  if ((TrafficDescriptor::empty(this) & 1) == 0)
  {
    v11 = *(a1 + 14);
    v16 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    isValidSimSlot = subscriber::isValidSimSlot();
    if (v16)
    {
      sub_100004A34(v16);
    }

    if ((isValidSimSlot & 1) == 0)
    {
      v15 = *(a1 + 5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1017724BC(a2, v15);
      }

      return 0;
    }

    v13 = (*(*a1 + 1120))(a1);
    v14 = (*(*a1 + 1064))(a1, a2);
    v18 = 0;
    LOBYTE(v13) = DataServiceController::SlicesDataContainer::configured(a1 + 4960, a2, v13, v14, v17);
    sub_100007E44(v17);
    if (v13)
    {
      if (DataServiceController::isInternalSliceApp_sync(a1, this))
      {
        return 1;
      }

      if (!TrafficDescriptor::hasAccountInfo(this))
      {
        if (!TrafficDescriptor::hasBundleInfo(this))
        {
          return a4;
        }

        if ((this[9] & 1) == 0)
        {
          sub_1000D1644();
        }

        return DataServiceController::isAllowedApp(a1, a2, this + 6);
      }

      if (a5)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1004A614C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

uint64_t *DataServiceController::getAppUuids(uint64_t a1, void **a2)
{
  v3 = sub_100007A6C(a1 + 4984, a2);
  if (a1 + 4992 != v3 && (*(v3 + 112) & 1) != 0)
  {
    return (v3 + 88);
  }

  if (atomic_load_explicit(&qword_101FBA7B0, memory_order_acquire))
  {
    return &qword_101FBA7B8;
  }

  sub_10177254C(&v5);
  return v5;
}

uint64_t DataServiceController::isManagedApp(uint64_t a1, int a2, void **a3)
{
  v9 = a2;
  v6 = sub_100007DEC(a1 + 4960, &v9);
  if (*(*v6 + 1) != 1)
  {
    return 0;
  }

  v7 = *v6;
  if (v7 + 144 == sub_100007A6C(v7 + 136, a3))
  {
    return 0;
  }

  else
  {
    return DataServiceController::isGoodAppCategory(a1, a2, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t sub_1004A6280(uint64_t a1, const TrafficDescriptor *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1001C1BA8(a1, a2);
  }

  else
  {
    TrafficDescriptor::TrafficDescriptor(*(a1 + 8), a2);
    result = v3 + 304;
    *(a1 + 8) = v3 + 304;
  }

  *(a1 + 8) = result;
  return result;
}

void DataServiceController::convertAppCategoryToApps(std::string *this@<X2>, uint64_t a2@<X0>, _BYTE *a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (TrafficDescriptor::hasBundleInfo(this))
  {
    v62[0] = 0;
    v62[1] = 0;
    v60[1] = 0;
    v61 = v62;
    *a3 = 0;
    v59 = 0;
    v60[0] = 0;
    if ((this[3].__r_.__value_.__s.__data_[0] & 1) == 0)
    {
      sub_1000D1644();
    }

    v34 = a2;
    DataServiceController::convertAppCategoryToApps(a2, &this[2], a3, &v59);
    v8 = v59;
    if (v59 != v60)
    {
      do
      {
        *(v58 + 3) = 0;
        v58[0] = 0;
        if (*(v8 + 48) == 1)
        {
          v9 = v8[5] & 0xFFFFFFFFFFFFFF00;
          v10 = v8[5];
          v11 = 1;
        }

        else
        {
          v11 = 0;
          v9 = 0;
          v10 = 0;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        TrafficDescriptor::TrafficDescriptor(&v39, this);
        if (*(v8 + 36) == 1)
        {
          v12 = *(v8 + 8);
          DWORD1(v53) = v12;
          BYTE8(v53) = 1;
          v13 = v12 != 0;
          v14 = v12 >> 8;
          if (v8[10])
          {
            sub_1001696A4(&v42, (v8 + 7));
          }

          if (v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (*(v8 + 80) != 1)
          {
            if (v11)
            {
              __p = (v10 | v9);
              v36 = v11;
              memset(v37, 0, sizeof(v37));
              sub_1004C1438(&v61, &__p);
            }

            goto LABEL_22;
          }

          sub_1001696A4(&v42, (v8 + 7));
          v13 = 0;
          LOBYTE(v12) = 0;
          v14 = 0;
          if (v11)
          {
LABEL_15:
            __p = (v10 | v9);
            v36 = v11;
            *v37 = v58[0];
            *&v37[3] = *(v58 + 3);
            v15 = v12 | (v14 << 8);
            v16 = &_mh_execute_header;
            if (!v13)
            {
              v16 = 0;
            }

            *&v37[7] = v16 | v15;
            sub_1004C1438(&v61, &__p);
            goto LABEL_18;
          }
        }

        if (v13)
        {
          goto LABEL_15;
        }

LABEL_18:
        sub_10012BF3C(&v44, this + 2);
        LOBYTE(__p) = 0;
        v38 = 0;
        sub_10016A270(&v40, &__p);
        if (v38 == 1 && (v37[14] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        BYTE4(v39) = 0;
        BYTE8(v39) = 0;
        sub_1004A6280(a4, &v39);
LABEL_22:
        TrafficDescriptor::~TrafficDescriptor(&v39);
        v17 = v8[1];
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
            v18 = v8[2];
            v19 = *v18 == v8;
            v8 = v18;
          }

          while (!v19);
        }

        v8 = v18;
      }

      while (v18 != v60);
    }

    v20 = v61;
    if (v61 == v62)
    {
      v21 = v34;
    }

    else
    {
      v21 = v34;
      v22 = (v34 + 5376);
      do
      {
        if (*(v20 + 52) == 1 && (v20[5] & 1) == 0)
        {
          v23 = *(v34 + 5368);
          if (v23 != v22)
          {
            do
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v39 = 0u;
              TrafficDescriptor::TrafficDescriptor(&v39, this);
              DWORD1(v39) = *(v23 + 8);
              BYTE8(v39) = 1;
              sub_10012BF3C(&v44, this + 2);
              LOBYTE(__p) = 0;
              v38 = 0;
              sub_10016A270(&v42, &__p);
              if (v38 == 1 && (v37[14] & 0x80000000) != 0)
              {
                operator delete(__p);
              }

              if ((*(v23 + 119) & 0x8000000000000000) != 0)
              {
                if (!v23[13])
                {
LABEL_43:
                  LOBYTE(__p) = 0;
                  v38 = 0;
                  sub_10016A270(&v40, &__p);
                  if (v38 == 1 && (v37[14] & 0x80000000) != 0)
                  {
                    operator delete(__p);
                  }

                  goto LABEL_46;
                }
              }

              else if (!*(v23 + 119))
              {
                goto LABEL_43;
              }

              sub_1001696A4(&v40, v23 + 4);
LABEL_46:
              if ((*(v20 + 52) & 1) == 0)
              {
                sub_1000D1644();
              }

              DWORD1(v53) = *(v20 + 12);
              BYTE8(v53) = 1;
              sub_1004A70E4(a4, *a4, &v39);
              TrafficDescriptor::~TrafficDescriptor(&v39);
              v24 = v23[1];
              if (v24)
              {
                do
                {
                  v25 = v24;
                  v24 = *v24;
                }

                while (v24);
              }

              else
              {
                do
                {
                  v25 = v23[2];
                  v19 = *v25 == v23;
                  v23 = v25;
                }

                while (!v19);
              }

              v23 = v25;
            }

            while (v25 != v22);
          }
        }

        v26 = v20[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v20[2];
            v19 = *v27 == v20;
            v20 = v27;
          }

          while (!v19);
        }

        v20 = v27;
      }

      while (v27 != v62);
      v20 = v61;
    }

    if (v20 != v62)
    {
      v28 = (v21 + 5376);
      while (1)
      {
        if (*(v20 + 40) == 1)
        {
          v29 = *(v21 + 5368);
          if (v29 != v28)
          {
            break;
          }
        }

LABEL_86:
        v32 = v20[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v20[2];
            v19 = *v33 == v20;
            v20 = v33;
          }

          while (!v19);
        }

        v20 = v33;
        if (v33 == v62)
        {
          goto LABEL_92;
        }
      }

      while (1)
      {
        if ((v20[5] & 1) == 0)
        {
          sub_1000D1644();
        }

        if (v29[5] != v20[4])
        {
          goto LABEL_80;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        TrafficDescriptor::TrafficDescriptor(&v39, this);
        DWORD1(v39) = *(v29 + 8);
        BYTE8(v39) = 1;
        sub_10012BF3C(&v44, this + 2);
        LOBYTE(__p) = 0;
        v38 = 0;
        sub_10016A270(&v42, &__p);
        if (v38 == 1 && (v37[14] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if ((*(v29 + 119) & 0x8000000000000000) != 0)
        {
          if (!v29[13])
          {
LABEL_74:
            LOBYTE(__p) = 0;
            v38 = 0;
            sub_10016A270(&v40, &__p);
            if (v38 == 1 && (v37[14] & 0x80000000) != 0)
            {
              operator delete(__p);
            }

            goto LABEL_77;
          }
        }

        else if (!*(v29 + 119))
        {
          goto LABEL_74;
        }

        sub_1001696A4(&v40, v29 + 4);
LABEL_77:
        if (*(v20 + 52) == 1)
        {
          DWORD1(v53) = *(v20 + 12);
          BYTE8(v53) = 1;
        }

        sub_1004A70E4(a4, *a4, &v39);
        TrafficDescriptor::~TrafficDescriptor(&v39);
LABEL_80:
        v30 = v29[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v29[2];
            v19 = *v31 == v29;
            v29 = v31;
          }

          while (!v19);
        }

        v29 = v31;
        if (v31 == v28)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_92:
    sub_1004C13C8(&v59, v60[0]);
    sub_10006DCAC(&v61, v62[0]);
  }
}

void sub_1004A6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10006DCAC(v7 - 120, *(v7 - 112));
  sub_1001B8A7C(va);
  _Unwind_Resume(a1);
}

void DataServiceController::convertAppCategoryToApps(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X3>, uint64_t a4@<X8>)
{
  if ((atomic_load_explicit(&qword_101FBA460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA460))
  {
    sub_1001C7FB0(&unk_101FBA420, "^(\\*|[1-8])(\\.((\\*|[0-9]+)(\\.(\\*|[0-9]+)?)?)?)?$", 0);
  }

  *a3 = 0;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  *v44 = 0u;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  v10 = sub_100200C08(v9, v9 + v8, v44, &unk_101FBA420, 0);
  v11 = v44[0];
  if (!v10 || (v44[1] - v44[0]) != 168)
  {
    goto LABEL_50;
  }

  *a3 = 1;
  __p = 0;
  v42 = 0;
  v43 = 0;
  if (*(v11 + 40) == 1)
  {
    sub_1001CD6B4(&__p, v11[3], v11[4], v11[4] - v11[3]);
    if (SHIBYTE(v43) < 0)
    {
      if (v42 == 1 && *__p == 42)
      {
        *__p = 0;
        v42 = 0;
      }
    }

    else if (SHIBYTE(v43) == 1 && __p == 42)
    {
      LOBYTE(__p) = 0;
      HIBYTE(v43) = 0;
    }
  }

  v12 = v46 + 8;
  *__str = 0;
  v39 = 0;
  v40 = 0;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v44[1] - v44[0]) >> 3);
  if (v13 > 4)
  {
    v12 = v44[0] + 112;
  }

  if (*v12 != 1)
  {
    v17 = 0;
LABEL_29:
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__p);
    goto LABEL_30;
  }

  v14 = &v45 + 8;
  if (v13 > 4)
  {
    v14 = v44[0] + 96;
  }

  v15 = *v14;
  v16 = (v44[0] + 104);
  if (v13 <= 4)
  {
    v16 = v46;
  }

  sub_1001CD6B4(__str, v15, *v16, *v16 - v15);
  v17 = HIBYTE(v40);
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    if (HIBYTE(v40) == 1 && __str[0] == 42)
    {
      v17 = 0;
      __str[0] = 0;
      HIBYTE(v40) = 0;
    }

    goto LABEL_29;
  }

  if (v39 == 1 && **__str == 42)
  {
    **__str = 0;
    v39 = 0;
    v17 = HIBYTE(v40);
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__p);
    if ((v17 & 0x80) == 0)
    {
LABEL_30:
      if (v17)
      {
        v19 = __str;
LABEL_32:
        v20 = strtoull(v19, 0, 10);
        v17 = HIBYTE(v40);
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else
  {
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__p);
  }

  if (v39)
  {
    v19 = *__str;
    goto LABEL_32;
  }

LABEL_40:
  v20 = 0;
LABEL_41:
  if ((TrafficClassFromString & 0x100000000) != 0)
  {
    v21 = v39;
  }

  else
  {
    v21 = v39;
    if ((v17 & 0x80u) == 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v39;
    }

    if (!v22)
    {
      if ((v17 & 0x80) == 0)
      {
LABEL_47:
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p);
        }

        v11 = v44[0];
LABEL_50:
        if (v11)
        {
          v44[1] = v11;
          operator delete(v11);
        }

        *(a4 + 16) = 0;
        *(a4 + 8) = 0;
        *a4 = a4 + 8;
        return;
      }

LABEL_92:
      operator delete(*__str);
      goto LABEL_47;
    }
  }

  if ((v17 & 0x80u) == 0)
  {
    v23 = v17;
  }

  else
  {
    v23 = v21;
  }

  if (!v23)
  {
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
    *a4 = a4 + 8;
    memset(&v37[1], 0, 48);
    LOBYTE(v34[0]) = 0;
    v36 = 0;
    v37[0] = (TrafficClassFromString & 0xFFFFFFFFFFLL);
    LOBYTE(v37[2]) = 0;
    sub_10006F264(&v37[3], v34);
    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34[0]);
    }

    sub_1004C15FC(a4, v37);
    if (LOBYTE(v37[6]) == 1 && SHIBYTE(v37[5]) < 0)
    {
      operator delete(v37[3]);
    }

    goto LABEL_76;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  DataServiceController::getAllApps(a1, v20, &v31);
  v25 = v31;
  v24 = v32;
  if (v32 == v31)
  {
    goto LABEL_83;
  }

  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = a4 + 8;
  do
  {
    memset(&v37[2], 0, 40);
    v37[0] = (TrafficClassFromString & 0xFFFFFFFFFFLL);
    v37[1] = v20;
    LOBYTE(v37[2]) = 1;
    if (*(v25 + 23) < 0)
    {
      sub_100005F2C(&v37[3], *v25, *(v25 + 1));
    }

    else
    {
      v26 = *v25;
      v37[5] = *(v25 + 2);
      *&v37[3] = v26;
    }

    LOBYTE(v37[6]) = 1;
    sub_1004C15FC(a4, v37);
    if (LOBYTE(v37[6]) == 1 && SHIBYTE(v37[5]) < 0)
    {
      operator delete(v37[3]);
    }

    v25 = (v25 + 24);
  }

  while (v25 != v24);
  if (!*(a4 + 16))
  {
    sub_1004C13C8(a4, *(a4 + 8));
LABEL_83:
    v27 = *(a1 + 5368);
    if (v27 == (a1 + 5376))
    {
LABEL_91:
      v37[0] = &v31;
      sub_1000087B4(v37);
      if ((v40 & 0x8000000000000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_92;
    }

    while (v27[5] != v20)
    {
      v28 = v27[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v27[2];
          v30 = *v29 == v27;
          v27 = v29;
        }

        while (!v30);
      }

      v27 = v29;
      if (v29 == (a1 + 5376))
      {
        goto LABEL_91;
      }
    }

    memset(&v37[2], 0, 40);
    LOBYTE(v34[0]) = 0;
    v36 = 0;
    v37[0] = (TrafficClassFromString & 0xFFFFFFFFFFLL);
    v37[1] = v20;
    LOBYTE(v37[2]) = 1;
    sub_10006F264(&v37[3], v34);
    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34[0]);
    }

    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
    *a4 = a4 + 8;
    sub_1004C15FC(a4, v37);
    if (LOBYTE(v37[6]) == 1 && SHIBYTE(v37[5]) < 0)
    {
      operator delete(v37[3]);
    }
  }

  v37[0] = &v31;
  sub_1000087B4(v37);
LABEL_76:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }
}

TrafficDescriptor *sub_1004A70E4(uint64_t a1, uint64_t a2, const TrafficDescriptor *a3)
{
  v3 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v6 >= v5)
  {
    v7 = *a1;
    v8 = 0x86BCA1AF286BCA1BLL * ((v6 - *a1) >> 4) + 1;
    if (v8 > 0xD79435E50D7943)
    {
      sub_1000CE3D4();
    }

    v9 = a2 - v7;
    v10 = 0x86BCA1AF286BCA1BLL * ((v5 - v7) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v8)
    {
      v11 = 0x86BCA1AF286BCA1BLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v10 >= 0x6BCA1AF286BCA1)
    {
      v12 = 0xD79435E50D7943;
    }

    else
    {
      v12 = v11;
    }

    v18 = a1;
    if (v12)
    {
      sub_1001C1634(a1, v12);
    }

    v14 = 0;
    v15 = 16 * (v9 >> 4);
    v16 = v15;
    v17 = 0;
    sub_1004BE6A0(&v14, a3);
    v3 = sub_1004BE848(a1, &v14, v3);
    sub_1001C1734(&v14);
  }

  else if (a2 == v6)
  {
    TrafficDescriptor::TrafficDescriptor(*(a1 + 8), a3);
    *(a1 + 8) = v6 + 304;
  }

  else
  {
    sub_1004BE5E0(a1, a2, *(a1 + 8), a2 + 304);
    TrafficDescriptor::operator=();
  }

  return v3;
}

uint64_t DataServiceController::getAllApps@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(this + 5064);
  if (v3)
  {
    v5 = (this + 5064);
    do
    {
      v6 = v3[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = v3[v8];
    }

    while (v3);
    if (v5 != (this + 5064) && v5[4] <= a2)
    {
      v9 = v5[5];
      v10 = (v5 + 6);
      if (v9 != (v5 + 6))
      {
        do
        {
          this = sub_100005308(a3, v9 + 2);
          v11 = *(v9 + 1);
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = *(v9 + 2);
              v13 = *v12 == v9;
              v9 = v12;
            }

            while (!v13);
          }

          v9 = v12;
        }

        while (v12 != v10);
      }
    }
  }

  return this;
}

void sub_1004A7340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

BOOL DataServiceController::getTrafficClassFromIndex(DataServiceController *this, _DWORD *a2, unsigned int *a3)
{
  v3 = this - 1;
  if ((this - 1) <= 7)
  {
    *a2 = dword_1018086D0[v3];
  }

  return v3 < 8;
}

unint64_t DataServiceController::getTrafficClassFromString(char *a1)
{
  if (a1[23] < 0)
  {
    v1 = *(a1 + 1);
    if (!v1)
    {
      goto LABEL_8;
    }

    a1 = *a1;
  }

  else if (!a1[23])
  {
    v1 = 0;
LABEL_8:
    v3 = 0;
    v4 = 0;
    return v3 | v1 | v4;
  }

  v2 = *a1 - 49;
  if (v2 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1018086D0[v2] | &_mh_execute_header;
  }

  v1 = v3 & &_mh_execute_header;
  v4 = v3 & 0xFFFFFF00;
  v3 = v3;
  return v3 | v1 | v4;
}

void DataServiceController::sliceTrafficDescriptorsForPolicies_sync(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  DataServiceController::makeDataSimSlotRange(a1, a2, &v11);
  v5 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    do
    {
      v7 = *v5;
      v8 = DataServiceController::sliceTrafficDescriptors_sync(a1, *v5, "policies");
      memset(v10, 0, sizeof(v10));
      v9 = sub_1004BE904(v10, *v8, v8[1], 0x86BCA1AF286BCA1BLL * ((v8[1] - *v8) >> 4));
      v14[0] = off_101E50180;
      v14[1] = a1;
      v14[2] = v7;
      v14[3] = v14;
      DataServiceController::normalizeTrafficDescriptorsForPolicies_sync(v9, v10, a3, v14);
      sub_1004C1A0C(v14);
      v13 = v10;
      sub_1001B8A7C(&v13);
      ++v5;
    }

    while (v5 != v6);
    v5 = v11;
  }

  if (v5)
  {
    v12 = v5;
    operator delete(v5);
  }
}

void DataServiceController::normalizeTrafficDescriptorsForPolicies_sync(uint64_t a1, const TrafficDescriptor **a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v18 = &v19;
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v7 != *a2)
  {
    v10 = 0x86BCA1AF286BCA1BLL * (v8 >> 4) - 1;
    v11 = v8 - 304;
    do
    {
      v12 = *a2;
      if (0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 4) <= v10)
      {
        sub_1002030E0();
      }

      v13 = v20;
      v16[0] = 0;
      v16[1] = 0;
      v17 = 0;
      TrafficDescriptor::toKey(v16, (v12 + v11));
      sub_100005BA0(&v18, v16);
      if (v20 == v13)
      {
        TrafficDescriptor::TrafficDescriptor(v15);
        TrafficDescriptor::operator=();
        TrafficDescriptor::~TrafficDescriptor(v15);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      --v10;
      v11 -= 304;
    }

    while (v10 != -1);
    v6 = *a2;
    v7 = a2[1];
  }

  while (v6 != v7)
  {
    if ((TrafficDescriptor::empty(v6) & 1) == 0)
    {
      v14 = *(a4 + 24);
      if (!v14)
      {
        sub_100022DB4();
      }

      if ((*(*v14 + 48))(v14, v6))
      {
        sub_1004A6280(a3, v6);
      }
    }

    v6 = (v6 + 304);
  }

  sub_100009970(&v18, v19);
}

void sub_1004A771C(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  sub_100009970(v1 - 104, *(v1 - 96));
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::allowSocketAPIWithTrafficClasses(uint64_t a1, int a2)
{
  if ((*(*a1 + 1120))(a1) == a2)
  {
    v6 = a2;
    v4 = *(*sub_100007DEC(a1 + 4960, &v6) + 24);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t DataServiceController::sliceInactivityTimeoutSecs(uint64_t a1, int a2, char a3)
{
  if (a3)
  {
    return 5;
  }

  v6 = *(a1 + 112);
  v8 = *(a1 + 104);
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!isValidSimSlot)
  {
    return 30;
  }

  LODWORD(v8) = a2;
  return *(*sub_100007DEC(a1 + 4960, &v8) + 8);
}

void sub_1004A78A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::supportsLLPHS(uint64_t a1, int a2)
{
  v4 = *(a1 + 112);
  v10 = *(a1 + 104);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (isValidSimSlot && (LODWORD(v10) = a2, v6 = sub_100007DEC(a1 + 4960, &v10), v7 = *v6, *(*v6 + 12) == 1))
  {
    if (*(v7 + 13))
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v7 + 14);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1004A7970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::calculateEntitledLLPHS(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v28 = 0;
  v29 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 8))(&v28, v13, a2);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!v28)
  {
    goto LABEL_30;
  }

  v15 = sub_100007A6C(a1 + 1096, (v28 + 24));
  if (a1 + 1104 == v15)
  {
    goto LABEL_30;
  }

  if ((*(v15 + 58) & 0x10) == 0)
  {
    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS not supported, assume allowed", buf, 2u);
    }

    LOBYTE(v17) = 1;
    goto LABEL_32;
  }

  v20 = *(v15 + 72);
  v18 = v15 + 72;
  v19 = v20;
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = v18;
  do
  {
    if (*(v19 + 28) >= 20)
    {
      v21 = v19;
    }

    v19 = *(v19 + 8 * (*(v19 + 28) < 20));
  }

  while (v19);
  if (v21 == v18 || *(v21 + 28) > 20)
  {
LABEL_27:
    v24 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v25 = "#I entitledLLPHS: Hera not found";
    goto LABEL_29;
  }

  v22 = *(v21 + 32);
  if (v22 - 5 <= 0xFFFFFFFD)
  {
    v17 = (v22 > 6) | (0x1Du >> v22);
    v23 = *v4;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v17 & 1;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS: result = %{BOOL}d", buf, 8u);
    }

    goto LABEL_32;
  }

  v24 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v25 = "#N entitledLLPHS: unknown state";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
  }

LABEL_30:
  v26 = *v4;
  LOBYTE(v17) = 0;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS could not calculate, assume not allowed", buf, 2u);
    LOBYTE(v17) = 0;
  }

LABEL_32:
  if (v29)
  {
    sub_100004A34(v29);
  }

  return v17 & 1;
}

void sub_1004A7CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::updateSlicingStateOnEntitlementsChange_sync(DataServiceController *this)
{
  v2 = *(this + 14);
  *buf = *(this + 13);
  v13 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v13)
  {
    sub_100004A34(v13);
  }

  v3 = v9;
  if (v9 != v10)
  {
    do
    {
      if (v11(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v10);
    while (v3 != v10)
    {
      v4 = *v3;
      v5 = (*(**(this + 6) + 16))(*(this + 6), v4);
      *buf = v4;
      v6 = *sub_100007DEC(this + 4960, buf);
      v7 = DataServiceController::calculateEntitledLLPHS(this, v4);
      if (v6[13] != v7)
      {
        v8 = *v5;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS: new value: %{BOOL}d", buf, 8u);
        }

        if (v6[12] == 1 && (v6[14] & 1) == 0)
        {
          sub_10000501C(buf, "entitlements update");
          (*(*this + 2424))(this, v4, buf, 0);
          if (v14 < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v6[13] = v7;
        }
      }

      do
      {
        ++v3;
      }

      while (v3 != v10 && (v11(*v3) & 1) == 0);
    }
  }
}

void sub_1004A7F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::setStatisticsData(_BYTE *a1, int a2, void *a3, uint64_t a4)
{
  *(a4 + 104) = a1[5272];
  v5 = a3 + 1;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    v7 = a2;
    v53 = a4 + 136;
    v54 = (a4 + 112);
    v52 = a3 + 1;
    do
    {
      if (!TrafficDescriptor::hasBundleInfo((v4 + 4)))
      {
        goto LABEL_33;
      }

      if ((v4[13] & 1) == 0)
      {
        goto LABEL_159;
      }

      v9 = v4 + 10;
      if (*(v4 + 103) < 0)
      {
        if (v4[11] == 18)
        {
          v13 = **v9 == 0x6C7070612E6D6F63 && *(*v9 + 8) == 0x6974656361662E65;
          if (v13 && *(*v9 + 16) == 25965)
          {
LABEL_32:
            *(a4 + 105) = 1;
            goto LABEL_33;
          }
        }

        if (v4[11] != 15)
        {
          goto LABEL_33;
        }

        v9 = *v9;
      }

      else
      {
        v10 = *(v4 + 103);
        if (v10 != 15)
        {
          if (v10 == 18)
          {
            v11 = *v9 == 0x6C7070612E6D6F63 && v4[11] == 0x6974656361662E65;
            if (v11 && *(v4 + 48) == 25965)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_33;
        }
      }

      v15 = *v9;
      v16 = *(v9 + 7);
      if (v15 == 0x6C7070612E6D6F63 && v16 == 0x64656D61672E656CLL)
      {
        goto LABEL_32;
      }

LABEL_33:
      v18 = *(a4 + 23);
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a4 + 8);
      }

      if (!v18 && (TrafficDescriptor::hasBundleInfo((v4 + 4)) & 1) == 0 && *(v4 + 72) == 1)
      {
        (*(*a1 + 2368))(__s, a1, v4 + 6);
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = *__s;
        *(a4 + 16) = v61;
      }

      v19 = *(a4 + 135);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a4 + 120);
      }

      if (!v19 && TrafficDescriptor::hasAccountInfo((v4 + 4)))
      {
        if (*(a4 + 135) < 0)
        {
          *(a4 + 120) = 5;
          v20 = *(a4 + 112);
        }

        else
        {
          *(a4 + 135) = 5;
          v20 = v54;
        }

        strcpy(v20, "llphs");
      }

      v21 = *(a4 + 23);
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a4 + 8);
      }

      if (v21 || !TrafficDescriptor::hasBundleInfo((v4 + 4)))
      {
        goto LABEL_137;
      }

      if ((v4[13] & 1) == 0)
      {
LABEL_159:
        sub_1000D1644();
      }

      std::string::operator=(a4, (v4 + 10));
      if (*(a4 + 135) < 0)
      {
        *(a4 + 120) = 8;
        v22 = *(a4 + 112);
      }

      else
      {
        *(a4 + 135) = 8;
        v22 = v54;
      }

      strcpy(v22, "consumer");
      DataServiceController::makeDataSimSlotRange(a1, v7, __s);
      v24 = *__s;
      v23 = *&__s[8];
      if (*__s != *&__s[8])
      {
        do
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = *v24;
          v25 = sub_100007DEC((a1 + 4960), &__dst);
          if ((v4[13] & 1) == 0)
          {
            sub_1000D1644();
          }

          v26 = *v25;
          if (v26 + 144 != sub_100007A6C(*v25 + 136, v4 + 10))
          {
            if (*(a4 + 135) < 0)
            {
              *(a4 + 120) = 10;
              v27 = *(a4 + 112);
            }

            else
            {
              *(a4 + 135) = 10;
              v27 = v54;
            }

            strcpy(v27, "enterprise");
            v28 = *(a4 + 159);
            if (*(v4 + 136) == 1)
            {
              if (v28 < 0)
              {
                *(a4 + 144) = 12;
                v29 = *(a4 + 136);
              }

              else
              {
                *(a4 + 159) = 12;
                v29 = v53;
              }

              *(v29 + 8) = 2037542759;
              *v29 = *"app_category";
              v31 = (v29 + 12);
            }

            else
            {
              if (v28 < 0)
              {
                *(a4 + 144) = 3;
                v30 = *(a4 + 136);
              }

              else
              {
                *(a4 + 159) = 3;
                v30 = v53;
              }

              *(v30 + 2) = 110;
              *v30 = 28260;
              v31 = (v30 + 3);
            }

            *v31 = 0;
          }

          ++v24;
        }

        while (v24 != v23);
        v24 = *__s;
      }

      if (v24)
      {
        *&__s[8] = v24;
        operator delete(v24);
      }

      v56 = 0;
      v57 = 0;
      v58 = 0;
      (*(*a1 + 2360))(&v56, a1, a4);
      if (v58)
      {
        v32 = v56;
        memset(&v55, 0, sizeof(v55));
        if (v56 == &v57)
        {
          goto LABEL_133;
        }

        v76 = 0;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        *__p = 0u;
        v65 = 0u;
        v62 = 0u;
        *__src = 0u;
        *__s = 0u;
        v61 = 0u;
        sub_10000D518(__s);
        std::ostream::operator<<();
        if ((BYTE8(v66) & 0x10) != 0)
        {
          v34 = v66;
          if (v66 < __src[1])
          {
            *&v66 = __src[1];
            v34 = __src[1];
          }

          v35 = __src[0];
        }

        else
        {
          if ((BYTE8(v66) & 8) == 0)
          {
            v33 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_92:
            __dst.__r_.__value_.__s.__data_[v33] = 0;
            *__s = v50;
            *&__s[*(v50 - 24)] = v49;
            if (SHIBYTE(v65) < 0)
            {
              operator delete(__p[1]);
            }

            std::locale::~locale(&v61);
            std::ostream::~ostream();
            std::ios::~ios();
            if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v55.__r_.__value_.__l.__data_);
            }

            v55 = __dst;
            v36 = v32[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v32[2];
                v11 = *v37 == v32;
                v32 = v37;
              }

              while (!v11);
            }

            if (v37 != &v57)
            {
              while (1)
              {
                BYTE7(v61) = 1;
                strcpy(__s, ",");
                std::string::append(&v55, __s, 1uLL);
                if (SBYTE7(v61) < 0)
                {
                  operator delete(*__s);
                }

                v76 = 0;
                v74 = 0u;
                v75 = 0u;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                *__p = 0u;
                v65 = 0u;
                v62 = 0u;
                *__src = 0u;
                *__s = 0u;
                v61 = 0u;
                sub_10000D518(__s);
                std::ostream::operator<<();
                if ((BYTE8(v66) & 0x10) != 0)
                {
                  break;
                }

                if ((BYTE8(v66) & 8) != 0)
                {
                  v40 = *(&v61 + 1);
                  v39 = *(&v62 + 1);
LABEL_111:
                  v38 = v39 - v40;
                  if ((v39 - v40) > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_1000A2378();
                  }

                  if (v38 >= 0x17)
                  {
                    operator new();
                  }

                  *(&__dst.__r_.__value_.__s + 23) = v39 - v40;
                  if (v38)
                  {
                    memmove(&__dst, v40, v38);
                  }

                  goto LABEL_117;
                }

                v38 = 0;
                *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_117:
                __dst.__r_.__value_.__s.__data_[v38] = 0;
                *__s = v50;
                *&__s[*(v50 - 24)] = v49;
                if (SHIBYTE(v65) < 0)
                {
                  operator delete(__p[1]);
                }

                std::locale::~locale(&v61);
                std::ostream::~ostream();
                std::ios::~ios();
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_dst = &__dst;
                }

                else
                {
                  p_dst = __dst.__r_.__value_.__r.__words[0];
                }

                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __dst.__r_.__value_.__l.__size_;
                }

                std::string::append(&v55, p_dst, size);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                v43 = v37[1];
                if (v43)
                {
                  do
                  {
                    v44 = v43;
                    v43 = *v43;
                  }

                  while (v43);
                }

                else
                {
                  do
                  {
                    v44 = v37[2];
                    v11 = *v44 == v37;
                    v37 = v44;
                  }

                  while (!v11);
                }

                v37 = v44;
                if (v44 == &v57)
                {
                  goto LABEL_133;
                }
              }

              v39 = v66;
              if (v66 < __src[1])
              {
                *&v66 = __src[1];
                v39 = __src[1];
              }

              v40 = __src[0];
              goto LABEL_111;
            }

LABEL_133:
            if (*(a4 + 79) < 0)
            {
              operator delete(*(a4 + 56));
            }

            *(a4 + 56) = v55;
            v5 = v52;
            v7 = a2;
            goto LABEL_136;
          }

          v35 = *(&v61 + 1);
          v34 = *(&v62 + 1);
        }

        v33 = v34 - v35;
        if ((v34 - v35) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1000A2378();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v34 - v35;
        if (v33)
        {
          memmove(&__dst, v35, v33);
        }

        goto LABEL_92;
      }

LABEL_136:
      sub_10006DCAC(&v56, v57);
LABEL_137:
      if (!*(a4 + 24) && *(v4 + 264) == 1)
      {
        *(a4 + 24) = *(v4 + 65);
      }

      v45 = *(a4 + 55);
      if ((v45 & 0x80u) != 0)
      {
        v45 = *(a4 + 40);
      }

      if (!v45 && *(v4 + 296) == 1)
      {
        std::string::operator=((a4 + 32), (v4 + 34));
      }

      v46 = *(a4 + 103);
      if ((v46 & 0x80u) != 0)
      {
        v46 = *(a4 + 88);
      }

      if (!v46 && *(v4 + 136) == 1)
      {
        std::string::operator=((a4 + 80), (v4 + 14));
      }

      v47 = v4[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v4[2];
          v11 = *v48 == v4;
          v4 = v48;
        }

        while (!v11);
      }

      v4 = v48;
    }

    while (v48 != v5);
  }
}