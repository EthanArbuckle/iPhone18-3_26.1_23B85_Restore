void sub_23F093168(uint64_t a1, void *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a4 > a5)
  {
    v7 = 4 * a4;
    v13 = *a3;
    v14 = *(a3 + 2);
    ++*(&v13 + v7);
    sub_23EF2F9B0(a2, "[", 1);
    std::to_string(&v15, a4);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    sub_23EF2F9B0(a2, v8, size);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    sub_23EF2F9B0(a2, "d-slice #", 9);
    std::to_string(&v15, *(a3 + v7));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v15.__r_.__value_.__l.__size_;
    }

    sub_23EF2F9B0(a2, v10, v11);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    sub_23EF2F9B0(a2, ": ", 2);
    sub_23F09332C();
  }
}

void sub_23F09330C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0935A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F093630(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = *(a2 + 40);
  if (*(a2 + 32))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || v3 == 0)
  {
    return;
  }

  v7 = v3 - 1;
  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  v10 = *(a2 + 24);
  if (*(a2 + 72) == 1 && v10 != 0)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = v12;
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v12 = v15;
      }
    }

    (*(*v12 + 88))(v12, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
    v10 = *(a2 + 24);
  }

  v16 = v2 - 1;
  if (!v7)
  {
LABEL_26:
    if (v2 == 1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v2 == 1)
  {
    do
    {
      sub_23F093864(*a1, v10);
      sub_23F093864(*a1, v10 + 1);
      sub_23F093864(*a1, v10 + 2);
      v10 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_26;
  }

  for (i = 0; i != v7; ++i)
  {
    v18 = v16;
    v19 = v10;
    do
    {
      sub_23F093864(*a1, v19);
      sub_23F093864(*a1, v19 + 1);
      sub_23F093864(*a1, v19 + 2);
      v19 += v8;
      --v18;
    }

    while (v18);
    sub_23F093864(*a1, v19);
    sub_23F093864(*a1, v19 + 1);
    sub_23F093864(*a1, v19 + 2);
    v10 += v9;
  }

  do
  {
LABEL_27:
    sub_23F093864(*a1, v10);
    sub_23F093864(*a1, v10 + 1);
    sub_23F093864(*a1, v10 + 2);
    v10 += v8;
    --v16;
  }

  while (v16);
LABEL_28:
  sub_23F093864(*a1, v10);
  sub_23F093864(*a1, v10 + 1);
  v20 = *a1;

  sub_23F093864(v20, v10 + 2);
}

void sub_23F093864(uint64_t a1, unsigned __int8 *a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, *a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F093990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F0939C0(uint64_t a1, uint64_t a2, int a3)
{
  v21 = &unk_285179588;
  sub_23F0A0738(a2, &v22);
  v6 = sub_23F093D08(v24, a3);
  v7 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v6 = v8;
  }

  *a1 = v6;
  sub_23F0A0738(a2, &v17);
  v9 = v19;
  v25[6] = xmmword_23F316690;
  v25[7] = unk_23F3166A0;
  v25[8] = xmmword_23F3166B0;
  v25[9] = unk_23F3166C0;
  v25[2] = xmmword_23F316650;
  v25[3] = unk_23F316660;
  v25[4] = xmmword_23F316670;
  v25[5] = unk_23F316680;
  v25[0] = xmmword_23F316630;
  v25[1] = unk_23F316640;
  v10 = sub_23F0954F4(v25, v20);
  if (v10 == &v26)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/Serialization.cpp", 166, "maybe_format", 0xCuLL, "Format is not serializable. Must be a non-dynamic format.", 0x39uLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_14;
      }

      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
LABEL_14:
      qword_27E396190(*algn_27E396198, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      *(a1 + 8) = 0;
      *(a1 + 16) = v9;
      v11 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_18:
    abort();
  }

  *(a1 + 8) = *(&unk_23F3166D0 + 2 * (v10 - v25));
  *(a1 + 16) = v9;
  v11 = v18;
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_17:
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_285179288;
  *(a1 + 40) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 86) = *(a2 + 54);
  *(a1 + 72) = v15;
  *(a1 + 56) = v14;
  *(a1 + 96) = 1;
  return a1;
}

void sub_23F093CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF47ABC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F093D08(unsigned int a1, int a2)
{
  if ((a2 & 0x10000) == 0)
  {
    return 1;
  }

  v2 = a2;
  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      if (a1 - 1 < 2 || (a1 & 0xFFFFFFF7) - 21 < 2)
      {
        return v2;
      }
    }

    else if (a2 == 5)
    {
      if (a1 == 1 || a1 == 21)
      {
        return v2;
      }
    }

    else if (a2 == 6 && a1 <= 0x20 && ((1 << a1) & 0x1E1E0001ELL) != 0)
    {
      return 6;
    }
  }

  else if (a2 == 1)
  {
    if (a1)
    {
      return 1;
    }
  }

  else if (a2 == 2)
  {
    if (a1 - 1 < 2)
    {
      return 2;
    }
  }

  else if (a2 == 3 && a1 == 21)
  {
    return 3;
  }

  v4 = a2;
  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/Serialization.cpp", 218, "CanSerialize(to_serialize.RuntimeFormat(), *op_format)", 0x36uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (byte_27E3961A8 == 1)
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_30:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "CanSerialize(to_serialize.RuntimeFormat(), *op_format)", 54, &unk_23F3091D6, 0);
      }

      while (v5 != v6);
      if (byte_27E3961A0)
      {
        goto LABEL_32;
      }

LABEL_33:
      abort();
    }
  }

LABEL_32:
  qword_27E396190(*algn_27E396198, "CanSerialize(to_serialize.RuntimeFormat(), *op_format)", 54, &unk_23F3091D6, 0);
  return v4;
}

void sub_23F093F64(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 24);
  v8 = *(a1 + 8);
  memcpy(__dst, &unk_23F3166D0, sizeof(__dst));
  v4 = *(&xmmword_23F316630 + ((sub_23F09512C(__dst, &v8) - __dst) >> 1));
  if (v3 == 1 && v4 <= 0x26 && ((1 << v4) & 0x61826001BELL) != 0)
  {
    v8 = v2;
    sub_23F097484(v4, &v8);
  }

  v6 = *(a1 + 16);
  v8 = &v6;
  sub_23F22A284(v4, &v8);
}

uint64_t sub_23F0940B8(_DWORD *a1, _DWORD *a2)
{
  sub_23F07FC4C(a1, &v14);
  sub_23F07FC4C(a2, &v13);
  if (a1[12] != a2[12])
  {
    goto LABEL_17;
  }

  if (a1[6])
  {
    v4 = a1[7] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (a2[6])
  {
    v6 = a2[7] == 0;
    if (((v5 ^ v6) & 1) == 0)
    {
      if ((v5 & v6) == 1)
      {
        goto LABEL_11;
      }

LABEL_16:
      v9 = sub_23F203B04();
      goto LABEL_18;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((v5 & 1) != 1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v7 = *(a1 + 3);
  v8 = *(a2 + 3);
  v9 = v7 == v8 && (v8 ^ v7) >> 32 == 0;
LABEL_18:
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v9;
}

void sub_23F0941F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
    v11 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v11 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  (*(*v11 + 8))(v11);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F094288(uint64_t a1, uint64_t a2, int a3)
{
  v21 = &unk_285179588;
  sub_23F0A0738(a2, &v22);
  v6 = sub_23F093D08(v24, a3);
  v7 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v6 = v8;
  }

  *a1 = v6;
  sub_23F0A0738(a2, &v17);
  v9 = v19;
  v25[6] = xmmword_23F316690;
  v25[7] = unk_23F3166A0;
  v25[8] = xmmword_23F3166B0;
  v25[9] = unk_23F3166C0;
  v25[2] = xmmword_23F316650;
  v25[3] = unk_23F316660;
  v25[4] = xmmword_23F316670;
  v25[5] = unk_23F316680;
  v25[0] = xmmword_23F316630;
  v25[1] = unk_23F316640;
  v10 = sub_23F0954F4(v25, v20);
  if (v10 == &v26)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/Serialization.cpp", 166, "maybe_format", 0xCuLL, "Format is not serializable. Must be a non-dynamic format.", 0x39uLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_14;
      }

      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
LABEL_14:
      qword_27E396190(*algn_27E396198, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57, &unk_285179588);
      *(a1 + 8) = 0;
      *(a1 + 16) = v9;
      v11 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_18:
    abort();
  }

  *(a1 + 8) = *(&unk_23F3166D0 + 2 * (v10 - v25));
  *(a1 + 16) = v9;
  v11 = v18;
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_17:
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_285179288;
  *(a1 + 40) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 86) = *(a2 + 54);
  *(a1 + 72) = v15;
  *(a1 + 56) = v14;
  *(a1 + 96) = 1;
  return a1;
}

void sub_23F0945A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF47ABC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F0945D0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v9 = *(a2 + 52);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = *(a2 + 40);
    v8 = *(a2 + 48);
    v11 = *(a2 + 52);
  }

  v12 = (a2 + 24);
  v31 = *(a2 + 24);
  v32 = *(a2 + 32);
  v33 = v8;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = a3;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    a3 = v13;
  }

  v14 = sub_23F093D08(v33, a3);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = v14;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v14 = v15;
  }

  v34[7] = unk_23F3166A0;
  v34[8] = xmmword_23F3166B0;
  v34[9] = unk_23F3166C0;
  v34[2] = xmmword_23F316650;
  v34[3] = unk_23F316660;
  v34[4] = xmmword_23F316670;
  *a1 = v14;
  v16 = *(a2 + 48);
  v17 = *(a2 + 24);
  v34[5] = unk_23F316680;
  v34[6] = xmmword_23F316690;
  v34[0] = xmmword_23F316630;
  v34[1] = unk_23F316640;
  v18 = sub_23F0954F4(v34, v16);
  if (v18 != &v35)
  {
    v19 = *(&unk_23F3166D0 + 2 * (v18 - v34));
    goto LABEL_20;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/Serialization.cpp", 166, "maybe_format", 0xCuLL, "Format is not serializable. Must be a non-dynamic format.", 0x39uLL, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v20 = qword_27E396178;
    v21 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (byte_27E3961A8 == 1)
  {
    v20 = qword_27E396178;
    v21 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_17:
        v23 = *v20;
        v22 = *(v20 + 8);
        v20 += 16;
        v23(v22, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      }

      while (v20 != v21);
      if (byte_27E3961A0)
      {
        goto LABEL_19;
      }

LABEL_27:
      abort();
    }
  }

LABEL_19:
  qword_27E396190(*algn_27E396198, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
  v19 = 0;
LABEL_20:
  *(a1 + 8) = v19;
  *(a1 + 16) = v17;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_285179588;
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = *(a2 + 40);
    v27 = *(a2 + 48);
    v28 = *(a2 + 52);
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v26 = *(a2 + 40);
    v27 = *(a2 + 48);
    v28 = *(a2 + 52);
  }

  *(a1 + 40) = v24;
  *(a1 + 48) = v25;
  v29 = *v12;
  *(a1 + 64) = *(a2 + 32);
  *(a1 + 56) = v29;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 84) = v28;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  *(a1 + 96) = 0;
  return a1;
}

void sub_23F094964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47ABC(va);
  _Unwind_Resume(a1);
}

void sub_23F094978(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    if (v2 != 1)
    {
      sub_23EF41D6C();
    }

    *a2 = &unk_285179588;
    sub_23F0A095C(a1 + 32, a2 + 8);
  }

  else
  {
    *a2 = &unk_285179588;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v7 = *(a1 + 84);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v7 = *(a1 + 84);
    }

    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
    *(a2 + 24) = *(a1 + 56);
    *(a2 + 32) = *(a1 + 64);
    *(a2 + 40) = v5;
    *(a2 + 48) = v6;
    *(a2 + 52) = v7;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23F094AA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    *a2 = &unk_285179288;
    *(a2 + 8) = *(a1 + 40);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a2 + 24) = *(a1 + 56);
    *(a2 + 40) = *(a1 + 72);
    *(a2 + 54) = *(a1 + 86);
    return;
  }

  if (v3)
  {
    sub_23EF41D6C();
  }

  v15 = &unk_285179588;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 84);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 84);
  }

  v16 = v4;
  v17 = v5;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = v6;
  v21 = v7;
  v22 = v8;
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *a2 = &unk_285179288;
    v9 = v16;
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_19:
    v23[0] = &v24;
    v23[1] = &v15;
    sub_23F24F90C(v21, v23);
    v11 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_22;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  *a2 = &unk_285179288;
  v9 = v16;
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v9 = v16;
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v9 = v16;
    }
  }

  (*(*v9 + 32))(v23);
  v10 = (*(*v23[0] + 48))(v23[0]);
  if (v23[0])
  {
    operator new();
  }

  v12 = v21;
  v13 = v22;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v14 = v18;
  *(a2 + 24) = 0;
  *(a2 + 32) = v14;
  *(a2 + 40) = v19;
  *(a2 + 48) = v10;
  *(a2 + 56) = v12;
  *(a2 + 60) = v13;
  v11 = v17;
  if (v17)
  {
LABEL_22:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_23F094E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  sub_23EF47ABC(&a9);
  _Unwind_Resume(a1);
}

void sub_23F094E7C(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 24);
  v8 = *(a1 + 8);
  memcpy(__dst, &unk_23F3166D0, sizeof(__dst));
  v4 = *(&xmmword_23F316630 + ((sub_23F09512C(__dst, &v8) - __dst) >> 1));
  if (v3 == 1 && v4 <= 0x26 && ((1 << v4) & 0x61826001BELL) != 0)
  {
    v8 = v2;
    sub_23F09F0C4(v4, &v8);
  }

  v6 = *(a1 + 16);
  v8 = &v6;
  sub_23F22A284(v4, &v8);
}

uint64_t sub_23F094FD0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  sub_23F094978(a1, v10);
  sub_23F094978(a2, v8);
  result = sub_23F0940B8(v10, v8);
  v4 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v5;
  }

  v6 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  return result;
}

void sub_23F0950FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_23EF47ABC(&a9);
  sub_23EF47ABC(&a16);
  _Unwind_Resume(a1);
}

void sub_23F095118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF47ABC(va);
  _Unwind_Resume(a1);
}

void *sub_23F09512C(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*result != *a2)
  {
    if (result[1] == v2)
    {
      ++result;
    }

    else if (result[2] == v2)
    {
      result += 2;
    }

    else if (result[3] == v2)
    {
      result += 3;
    }

    else if (result[4] == v2)
    {
      result += 4;
    }

    else if (result[5] == v2)
    {
      result += 5;
    }

    else if (result[6] == v2)
    {
      result += 6;
    }

    else if (result[7] == v2)
    {
      result += 7;
    }

    else if (result[8] == v2)
    {
      result += 8;
    }

    else if (result[9] == v2)
    {
      result += 9;
    }

    else if (result[10] == v2)
    {
      result += 10;
    }

    else if (result[11] == v2)
    {
      result += 11;
    }

    else if (result[12] == v2)
    {
      result += 12;
    }

    else if (result[13] == v2)
    {
      result += 13;
    }

    else if (result[14] == v2)
    {
      result += 14;
    }

    else if (result[15] == v2)
    {
      result += 15;
    }

    else if (result[16] == v2)
    {
      result += 16;
    }

    else if (result[17] == v2)
    {
      result += 17;
    }

    else if (result[18] == v2)
    {
      result += 18;
    }

    else if (result[19] == v2)
    {
      result += 19;
    }

    else if (result[20] == v2)
    {
      result += 20;
    }

    else if (result[21] == v2)
    {
      result += 21;
    }

    else if (result[22] == v2)
    {
      result += 22;
    }

    else if (result[23] == v2)
    {
      result += 23;
    }

    else if (result[24] == v2)
    {
      result += 24;
    }

    else if (result[25] == v2)
    {
      result += 25;
    }

    else if (result[26] == v2)
    {
      result += 26;
    }

    else if (result[27] == v2)
    {
      result += 27;
    }

    else if (result[28] == v2)
    {
      result += 28;
    }

    else if (result[29] == v2)
    {
      result += 29;
    }

    else if (result[30] == v2)
    {
      result += 30;
    }

    else if (result[31] == v2)
    {
      result += 31;
    }

    else if (result[32] == v2)
    {
      result += 32;
    }

    else if (result[33] == v2)
    {
      result += 33;
    }

    else if (result[34] == v2)
    {
      result += 34;
    }

    else if (result[35] == v2)
    {
      result += 35;
    }

    else if (result[36] == v2)
    {
      result += 36;
    }

    else if (result[37] == v2)
    {
      result += 37;
    }

    else if (result[38] == v2)
    {
      result += 38;
    }

    else if (result[39] == v2)
    {
      result += 39;
    }

    else
    {
      result += 40;
    }
  }

  return result;
}

_DWORD *sub_23F0954F4(_DWORD *a1, int a2)
{
  v2 = a1 + 40;
  if (*a1 == a2)
  {
    v3 = 0;
    return &a1[v3];
  }

  if (a1[1] == a2)
  {
    v3 = 1;
    return &a1[v3];
  }

  if (a1[2] == a2)
  {
    v3 = 2;
    return &a1[v3];
  }

  if (a1[3] == a2)
  {
    v3 = 3;
    return &a1[v3];
  }

  if (a1[4] == a2)
  {
    v3 = 4;
    return &a1[v3];
  }

  if (a1[5] == a2)
  {
    v3 = 5;
    return &a1[v3];
  }

  if (a1[6] == a2)
  {
    v3 = 6;
    return &a1[v3];
  }

  if (a1[7] == a2)
  {
    v3 = 7;
    return &a1[v3];
  }

  if (a1[8] == a2)
  {
    v3 = 8;
    return &a1[v3];
  }

  if (a1[9] == a2)
  {
    v3 = 9;
    return &a1[v3];
  }

  if (a1[10] == a2)
  {
    v3 = 10;
    return &a1[v3];
  }

  if (a1[11] == a2)
  {
    v3 = 11;
    return &a1[v3];
  }

  if (a1[12] == a2)
  {
    v3 = 12;
    return &a1[v3];
  }

  if (a1[13] == a2)
  {
    v3 = 13;
    return &a1[v3];
  }

  if (a1[14] == a2)
  {
    v3 = 14;
    return &a1[v3];
  }

  if (a1[15] == a2)
  {
    v3 = 15;
    return &a1[v3];
  }

  if (a1[16] == a2)
  {
    v3 = 16;
    return &a1[v3];
  }

  if (a1[17] == a2)
  {
    v3 = 17;
    return &a1[v3];
  }

  if (a1[18] == a2)
  {
    v3 = 18;
    return &a1[v3];
  }

  if (a1[19] == a2)
  {
    v3 = 19;
    return &a1[v3];
  }

  if (a1[20] == a2)
  {
    v3 = 20;
    return &a1[v3];
  }

  if (a1[21] == a2)
  {
    v3 = 21;
    return &a1[v3];
  }

  if (a1[22] == a2)
  {
    v3 = 22;
    return &a1[v3];
  }

  if (a1[23] == a2)
  {
    v3 = 23;
    return &a1[v3];
  }

  if (a1[24] == a2)
  {
    v3 = 24;
    return &a1[v3];
  }

  if (a1[25] == a2)
  {
    v3 = 25;
    return &a1[v3];
  }

  if (a1[26] == a2)
  {
    v3 = 26;
    return &a1[v3];
  }

  if (a1[27] == a2)
  {
    v3 = 27;
    return &a1[v3];
  }

  if (a1[28] == a2)
  {
    v3 = 28;
    return &a1[v3];
  }

  if (a1[29] == a2)
  {
    v3 = 29;
    return &a1[v3];
  }

  if (a1[30] == a2)
  {
    v3 = 30;
    return &a1[v3];
  }

  if (a1[31] == a2)
  {
    v3 = 31;
    return &a1[v3];
  }

  if (a1[32] == a2)
  {
    v3 = 32;
    return &a1[v3];
  }

  if (a1[33] == a2)
  {
    v3 = 33;
    return &a1[v3];
  }

  if (a1[34] == a2)
  {
    v3 = 34;
    return &a1[v3];
  }

  if (a1[35] == a2)
  {
    v3 = 35;
    return &a1[v3];
  }

  if (a1[36] == a2)
  {
    v3 = 36;
    return &a1[v3];
  }

  if (a1[37] == a2)
  {
    v3 = 37;
    return &a1[v3];
  }

  if (a1[38] == a2)
  {
    v3 = 38;
    return &a1[v3];
  }

  if (a1[39] == a2)
  {
    v3 = 39;
    return &a1[v3];
  }

  return v2;
}

void sub_23F095820(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  memcpy(__dst, &unk_23F3166D0, sizeof(__dst));
  v2 = *(&xmmword_23F316630 + ((sub_23F09512C(__dst, &v4) - __dst) >> 1));
  LODWORD(__dst[3]) = 0;
  sub_23F07F300();
}

void sub_23F095960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09597C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F095990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F0959A4(uint64_t *a1, _WORD *a2)
{
  if ((atomic_load_explicit(&qword_27E395BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395BC0))
  {
    sub_23F095C24();
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_23F04A2C0(a1, &__p);
  v4 = qword_27E395BE0;
  if (!qword_27E395BE0)
  {
    goto LABEL_41;
  }

  if (v22 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v22 >= 0)
  {
    v6 = HIBYTE(v22);
  }

  else
  {
    v6 = v21;
  }

  v7 = &qword_27E395BE0;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_27E395BE0)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    __cxa_allocate_exception(0x10uLL);
    sub_23F096060(&v19, &__p);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 28);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23F095BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F095C24()
{
  v0[0] = 0x3000200010000;
  *(v0 + 6) = 0x6000500040003;
  qword_27E395BE8 = 0;
  qword_27E395BE0 = 0;
  qword_27E395BD8 = &qword_27E395BE0;
  v1 = 0;
  sub_23EF56C78();
}

void sub_23F096010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_23F05CB64(qword_27E395BE0);
    _Unwind_Resume(a1);
  }

  sub_23F05CB64(qword_27E395BE0);
  _Unwind_Resume(a1);
}

void sub_23F096060(uint64_t a1, const char *a2)
{
  v4 = 0;
  v5 = v3;
  v6 = "invalid serialization format type string ";
  v7 = v3;
  v8 = "invalid serialization format type string ";
  v9 = "invalid serialization format type string ";
  v10 = &v5;
  sub_23F05B348(&v10);
  v5 = v3;
  v6 = a2;
  v7 = v3;
  v8 = a2;
  v9 = a2;
  if (v4 != -1)
  {
    v10 = &v5;
    (off_28517EF80[v4])(&v10, v3);
    v5 = v3;
    v6 = ", expected one of ";
    v7 = v3;
    v8 = ", expected one of ";
    v9 = ", expected one of ";
    if (v4 != -1)
    {
      v10 = &v5;
      (off_28517EF98[v4])(&v10, v3);
      v5 = v3;
      v6 = "{";
      v7 = v3;
      v8 = "{";
      v9 = "{";
      if (v4 != -1)
      {
        v10 = &v5;
        (*(&off_28517EFC8 + v4))(&v10, v3);
        sub_23EF56C78();
      }

      sub_23EF41D6C();
    }

    sub_23EF41D6C();
  }

  sub_23EF41D6C();
}

uint64_t *sub_23F096458(uint64_t *a1, void *a2)
{
  if ((atomic_load_explicit(&qword_27E395BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395BC8))
  {
    sub_23F0966C4();
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_23F04A2C0(a1, &__p);
  v4 = qword_27E395BF8;
  if (!qword_27E395BF8)
  {
    goto LABEL_41;
  }

  if (v21 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v21 >= 0)
  {
    v6 = HIBYTE(v21);
  }

  else
  {
    v6 = v20;
  }

  v7 = &qword_27E395BF8;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_27E395BF8)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    __cxa_allocate_exception(0x10uLL);
    sub_23F096A38();
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = v7[7];
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23F096674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0966C4()
{
  qword_27E395C00 = 0;
  qword_27E395BF8 = 0;
  qword_27E395BF0 = &qword_27E395BF8;
  v0 = 0;
  sub_23EF56ED4();
}

void sub_23F0969E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_23F05CB64(qword_27E395BF8);
    _Unwind_Resume(a1);
  }

  sub_23F05CB64(qword_27E395BF8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F096D6C(int a1)
{
  v2 = a1;
  if ((a1 - 2) >= 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F096E54();
  }

  return (a1 - 1);
}

void sub_23F096E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void sub_23F096E54()
{
  v0[6] = 0;
  v1[0] = v0;
  v1[1] = "Invalid serialization format type: ";
  v1[2] = v0;
  v1[3] = "Invalid serialization format type: ";
  v1[4] = "Invalid serialization format type: ";
  v2 = v1;
  sub_23F082B84(&v2);
  sub_23EF56C78();
}

void sub_23F096F5C(char **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28517EFF0, 0);
  if (v6)
  {
    v17 = v6;
    sub_23F0A0F54(*(a2 + 56), &v17, a2);
  }

  else
  {
    v7 = *v4;
    v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
    if (v8)
    {
      v17 = v8;
      sub_23F0C0F64(*(a2 + 56), &v17, a2);
    }

    else
    {
      v9 = *v4;
      v10 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285180968, 0);
      if (v10)
      {
        v17 = v10;
        sub_23F0C7E5C(*(a2 + 56), &v17, a2);
      }

      else
      {
        v11 = *v4;
        v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_2851809B0, 0);
        if (v12)
        {
          v17 = v12;
          sub_23F0CED54(*(a2 + 56), &v17, a2);
        }

        else
        {
          v13 = *v4;
          v14 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
          if (v14)
          {
            v17 = v14;
            sub_23F0D83E0(*(a2 + 56), &v17, a2);
          }

          else
          {
            v15 = *v4;
            v16 = __dynamic_cast(a1, &unk_28518D8F0, &unk_2851809F8, 0);
            if (v16)
            {
              v17 = v16;
              sub_23F0E1A6C(*(a2 + 56), &v17, a2);
            }

            else if (!sub_23F0A0C0C(a1, a2) && !sub_23F0A0C98(a1, a2) && !sub_23F0A0D24(a1, a2) && !sub_23F0A0DB0(a1, a2) && !sub_23F0A0E3C(a1, a2) && !sub_23F0A0EC8(a1, a2))
            {
              v17 = a1;
              sub_23F11BBCC(*(a2 + 56), &v17, a2);
            }
          }
        }
      }
    }
  }
}

void sub_23F0971F0(char **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D908, &unk_285180B30, 0);
  if (v6)
  {
    v17 = v6;
    sub_23F123604(*(a2 + 48), &v17, a2);
  }

  else
  {
    v7 = *v4;
    v8 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
    if (v8)
    {
      v17 = v8;
      sub_23F13C500(*(a2 + 48), &v17, a2);
    }

    else
    {
      v9 = *v4;
      v10 = __dynamic_cast(a1, &unk_28518D908, &unk_285180B68, 0);
      if (v10)
      {
        v17 = v10;
        sub_23F144214(*(a2 + 48), &v17, a2);
      }

      else
      {
        v11 = *v4;
        v12 = __dynamic_cast(a1, &unk_28518D908, &unk_285180BA0, 0);
        if (v12)
        {
          v17 = v12;
          sub_23F14BF28(*(a2 + 48), &v17, a2);
        }

        else
        {
          v13 = *v4;
          v14 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
          if (v14)
          {
            v17 = v14;
            sub_23F154934(*(a2 + 48), &v17, a2);
          }

          else
          {
            v15 = *v4;
            v16 = __dynamic_cast(a1, &unk_28518D908, &unk_285180BD8, 0);
            if (v16)
            {
              v17 = v16;
              sub_23F15D340(*(a2 + 48), &v17, a2);
            }

            else if (!sub_23F1232BC(a1, a2) && !sub_23F123348(a1, a2) && !sub_23F1233D4(a1, a2) && !sub_23F123460(a1, a2) && !sub_23F1234EC(a1, a2) && !sub_23F123578(a1, a2))
            {
              v17 = a1;
              sub_23F1945A0(*(a2 + 48), &v17, a2);
            }
          }
        }
      }
    }
  }
}

void sub_23F097484(int a1, uint64_t a2)
{
  v4[16] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E1A0;
      sub_23F0984A0(v4, &v2);
    case 2:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E2B8;
      sub_23F098C8C(v4, &v2);
    case 3:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E3B0;
      sub_23F0993D4(v4, &v2);
    case 4:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E4A8;
      sub_23F099B1C(v4, &v2);
    case 5:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E5A0;
      sub_23F09A264(v4, &v2);
    case 7:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E698;
      sub_23F09AA48(v4, &v2);
    case 8:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E790;
      sub_23F09B22C(v4, &v2);
    case 21:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E888;
      sub_23F09BA10(v4, &v2);
    case 22:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E980;
      sub_23F09C1EC(v4, &v2);
    case 25:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EA78;
      sub_23F09C9C8(v4, &v2);
    case 31:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EB70;
      sub_23F09D1AC(v4, &v2);
    case 32:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EC68;
      sub_23F09D990(v4, &v2);
    case 37:
      v2 = *(*a2 + 8);
      v3 = &unk_28517ED60;
      sub_23F09E174(v4, &v2);
    case 38:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EE58;
      sub_23F09E958(v4, &v2);
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}

void sub_23F098188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F0981AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F0981D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F0981F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F098218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F098260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F098284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F0982A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F0982CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F0982F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F098314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F098338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09835C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F098428(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F0984A0(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_285181C18;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_23F1E0080(v5, v6);
  operator new();
}

void sub_23F0987D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  sub_23EF3AE8C(v12);
  sub_23EF3AE8C(&a12);
  sub_23EF3AE8C(&a10);
  sub_23F098B78(&a9);
  _Unwind_Resume(a1);
}

void sub_23F098818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F1CE000(va);
  _Unwind_Resume(a1);
}

void sub_23F09882C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0988E4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

__n128 sub_23F09898C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_285188558;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

__n128 sub_23F0989BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_285188578;
  return result;
}

__n128 sub_23F0989EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_285188598;
  return result;
}

__n128 sub_23F098A1C(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void sub_23F098A34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F098A6C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285186F70;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F098B18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F098B78(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285186F70;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

uint64_t sub_23F098C14(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F098C8C(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_285181C50;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_23F1E14A0(v5, v6);
  operator new();
}

void sub_23F098FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  sub_23EF3AE8C(v12);
  sub_23EF3AE8C(&a12);
  sub_23EF3AE8C(&a10);
  sub_23F0992C0(&a9);
  _Unwind_Resume(a1);
}

void sub_23F099004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F1D3D3C(va);
  _Unwind_Resume(a1);
}

void sub_23F099018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0990D0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09917C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0991B4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2851871B0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F099260(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F0992C0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2851871B0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

uint64_t sub_23F09935C(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F0993D4(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_285181C88;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_23F1E28C0(v5, v6);
  operator new();
}

void sub_23F09970C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  sub_23EF3AE8C(v12);
  sub_23EF3AE8C(&a12);
  sub_23EF3AE8C(&a10);
  sub_23F099A08(&a9);
  _Unwind_Resume(a1);
}

void sub_23F09974C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F1D7EA0(va);
  _Unwind_Resume(a1);
}

void sub_23F099760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F099818(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F0998C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0998FC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187360;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F0999A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F099A08(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187360;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

uint64_t sub_23F099AA4(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F099B1C(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_285181CC0;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_23F1E3CE0(v5, v6);
  operator new();
}

void sub_23F099E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  sub_23EF3AE8C(v12);
  sub_23EF3AE8C(&a12);
  sub_23EF3AE8C(&a10);
  sub_23F09A150(&a9);
  _Unwind_Resume(a1);
}

void sub_23F099E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F1DC270(va);
  _Unwind_Resume(a1);
}

void sub_23F099EA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F099F60(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09A00C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09A044(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187510;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09A0F0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09A150(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187510;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

uint64_t sub_23F09A1EC(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09A264(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181CF8;
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 2;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1E5100(v4, &v5);
  operator new();
}

void sub_23F09A614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09A68C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09A744(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09A7F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09A828(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187000;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09A8D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09A934(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187000;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09A9D0(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09AA48(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181D30;
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 2;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1E6530(v4, &v5);
  operator new();
}

void sub_23F09ADF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09AE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09AF28(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09AFD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09B00C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2851873F0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09B0B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09B118(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2851873F0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09B1B4(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09B22C(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181D68;
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 2;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1E7968(v4, &v5);
  operator new();
}

void sub_23F09B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09B654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09B70C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09B7B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09B7F0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2851875A0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09B89C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09B8FC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2851875A0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09B998(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09BA10(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181DA0;
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 3;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1E8D98(v4, &v5);
  operator new();
}

void sub_23F09BDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09BE30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09BEE8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09BF94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09BFCC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187090;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09C078(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09C0D8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187090;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09C174(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09C1EC(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181DD8;
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 3;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1EA0D0(v4, &v5);
  operator new();
}

void sub_23F09C594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09C60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09C6C4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09C770(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09C7A8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187240;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09C854(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09C8B4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187240;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09C950(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09C9C8(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181E10;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1EB408(v4, &v5);
  operator new();
}

void sub_23F09CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09CDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09CEA8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09CF54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09CF8C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187120;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09D038(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09D098(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187120;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09D134(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09D1AC(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181E48;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1EC844(v4, &v5);
  operator new();
}

void sub_23F09D55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09D5D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09D68C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09D738(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09D770(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187480;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09D81C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09D87C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187480;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09D918(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09D990(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181E80;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1EDC7C(v4, &v5);
  operator new();
}

void sub_23F09DD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09DDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09DE70(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09DF1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09DF54(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187630;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09E000(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09E060(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187630;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09E0FC(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09E174(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181EB8;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1EF0AC(v4, &v5);
  operator new();
}

void sub_23F09E524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09E59C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09E654(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09E700(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09E738(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_285187120;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09E7E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09E844(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285187120;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

uint64_t sub_23F09E8E0(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F09E958(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_285181EF0;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_23F1F04E8(v4, &v5);
  operator new();
}

void sub_23F09ED08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09ED80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09EE38(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_23F09EEE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F09EF1C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2851872D0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_285188270[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F09EFC8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F09F028(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2851872D0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_285188270[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x245CACD00](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_23F09F0C4(int a1, uint64_t a2)
{
  v4[16] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E1A0;
      sub_23F0984A0(v4, &v2);
    case 2:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E2B8;
      sub_23F098C8C(v4, &v2);
    case 3:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E3B0;
      sub_23F0993D4(v4, &v2);
    case 4:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E4A8;
      sub_23F099B1C(v4, &v2);
    case 5:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E5A0;
      sub_23F09A264(v4, &v2);
    case 7:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E698;
      sub_23F09AA48(v4, &v2);
    case 8:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E790;
      sub_23F09B22C(v4, &v2);
    case 21:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E888;
      sub_23F09BA10(v4, &v2);
    case 22:
      v2 = *(*a2 + 8);
      v3 = &unk_28517E980;
      sub_23F09C1EC(v4, &v2);
    case 25:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EA78;
      sub_23F09C9C8(v4, &v2);
    case 31:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EB70;
      sub_23F09D1AC(v4, &v2);
    case 32:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EC68;
      sub_23F09D990(v4, &v2);
    case 37:
      v2 = *(*a2 + 8);
      v3 = &unk_28517ED60;
      sub_23F09E174(v4, &v2);
    case 38:
      v2 = *(*a2 + 8);
      v3 = &unk_28517EE58;
      sub_23F09E958(v4, &v2);
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}

void sub_23F09FDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F09FF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(v5 + 8);
  _Unwind_Resume(a1);
}

void sub_23F0A02C0(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28517EF50[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F0A0484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0A04DC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F0A071C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F0A0738(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v13 = 0;
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  if (v4)
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v8;
      }
    }

    v9 = (*(*v4 + 104))(v4);
    *(a2 + 44) = v9 & ((v9 >> 1) >> 15);
    v5 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 44) = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v10 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = v14;
  if (!v14)
  {
    return;
  }

LABEL_13:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_23F0A0938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_23EF3AE8C(v3);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23F0A095C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v13 = 0;
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  if (v4)
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v8;
      }
    }

    v9 = (*(*v4 + 104))(v4);
    *(a2 + 44) = v9 & ((v9 >> 1) >> 15);
    v5 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 44) = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v10 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = v14;
  if (!v14)
  {
    return;
  }

LABEL_13:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_23F0A0B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_23EF3AE8C(v3);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23F0A0BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23F0A0C0C(char **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285180A30, 0);
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    sub_23F0EB0F8(*(a2 + 56), &v7, a2);
  }

  return v5 != 0;
}

BOOL sub_23F0A0C98(char **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    sub_23F0F4784(*(a2 + 56), &v7, a2);
  }

  return v5 != 0;
}

BOOL sub_23F0A0D24(char **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285180A68, 0);
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    sub_23F0FDE10(*(a2 + 56), &v7, a2);
  }

  return v5 != 0;
}

BOOL sub_23F0A0DB0(char **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285180AB0, 0);
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    sub_23F10749C(*(a2 + 56), &v7, a2);
  }

  return v5 != 0;
}

BOOL sub_23F0A0E3C(char **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    sub_23F10E1AC(*(a2 + 56), &v7, a2);
  }

  return v5 != 0;
}

BOOL sub_23F0A0EC8(char **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285180AF8, 0);
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    sub_23F114EBC(*(a2 + 56), &v7, a2);
  }

  return v5 != 0;
}

void sub_23F0A0F54(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      v770 = &unk_28517D9A8;
      sub_23F0A7E4C(&v771, a3);
      v4 = *a2;
      v5 = v774;
      v6 = v771;
      if (!v771)
      {
        goto LABEL_873;
      }

      v7 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v771;
        v8 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v6 + 96))(&v784);
      }

      else
      {
LABEL_873:
        v784 = 0;
      }

      if (v774)
      {
        v590 = v775;
        if (v775)
        {
          v591 = v777;
          v592 = v773;
          if (v778 == 1 && v773)
          {
            v593 = v771;
            v594 = v772;
            if (v772)
            {
              atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v594->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v595 = v593;
                (v594->__on_zero_shared)(v594);
                std::__shared_weak_count::__release_weak(v594);
                v593 = v595;
              }
            }

            (*(*v593 + 88))(v593, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v592 = v773;
          }

          v596 = v590 - 1;
          if (v590 != 1)
          {
            v597 = 0;
            do
            {
              if (v5)
              {
                v598 = *(v4 + 48);
                v599 = v5;
                v600 = v592;
                do
                {
                  sub_23F2F7BA4(v598, v600++);
                  --v599;
                }

                while (v599);
              }

              v592 += v591;
              ++v597;
            }

            while (v597 != v596);
          }

          if (v5)
          {
            v748 = *(v4 + 48);
            do
            {
              sub_23F2F7BA4(v748, v592++);
              --v5;
            }

            while (v5);
          }
        }
      }

      break;
    case 2:
      v770 = &unk_28517DAA0;
      sub_23F0A82B4(&v771, a3);
      v178 = *a2;
      v179 = v774;
      v180 = v771;
      if (!v771)
      {
        goto LABEL_857;
      }

      v181 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v771;
        v182 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v180 + 96))(&v784);
      }

      else
      {
LABEL_857:
        v784 = 0;
      }

      if (v774)
      {
        v578 = v775;
        if (v775)
        {
          v579 = v777;
          v580 = v773;
          if (v778 == 1 && v773)
          {
            v581 = v771;
            v582 = v772;
            if (v772)
            {
              atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v582->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v583 = v581;
                (v582->__on_zero_shared)(v582);
                std::__shared_weak_count::__release_weak(v582);
                v581 = v583;
              }
            }

            (*(*v581 + 88))(v581, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v580 = v773;
          }

          v584 = 2 * v179;
          v585 = v578 - 1;
          if (v578 != 1)
          {
            v586 = 0;
            do
            {
              if (v179)
              {
                v587 = *(v178 + 48);
                v588 = 2 * v179;
                v589 = v580;
                do
                {
                  sub_23F2F7D50(v587, v589++);
                  v588 -= 2;
                }

                while (v588);
              }

              v580 += v579;
              ++v586;
            }

            while (v586 != v585);
          }

          if (v179)
          {
            v747 = *(v178 + 48);
            do
            {
              sub_23F2F7D50(v747, v580++);
              v584 -= 2;
            }

            while (v584);
          }
        }
      }

      break;
    case 3:
      v770 = &unk_285181170;
      sub_23F0A8794(&v771, a3);
      v172 = *a2;
      v173 = v774;
      v174 = v771;
      if (!v771)
      {
        goto LABEL_838;
      }

      v175 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v771;
        v176 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v174 + 96))(&v784);
      }

      else
      {
LABEL_838:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      v567 = v775;
      if (!v775)
      {
        break;
      }

      v568 = v777;
      v569 = v773;
      if (v778 == 1 && v773)
      {
        v570 = v771;
        v571 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v571->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v572 = v570;
            (v571->__on_zero_shared)(v571);
            std::__shared_weak_count::__release_weak(v571);
            v570 = v572;
          }
        }

        (*(*v570 + 88))(v570, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v569 = v773;
      }

      v573 = v567 - 1;
      if (!v573)
      {
        goto LABEL_853;
      }

      if (v173)
      {
        v574 = 0;
        v575 = 2 * v568;
        do
        {
          for (i = 0; i != v173; ++i)
          {
            v769 = 0;
            sub_23F2F7D50(*(v172 + 48), &v769);
            v569[i] = v769;
          }

          v569 = (v569 + v575);
          ++v574;
        }

        while (v574 != v573);
LABEL_853:
        if (v173)
        {
          v577 = 2 * v173;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v172 + 48), &v769);
            *v569++ = v769;
            v577 -= 2;
          }

          while (v577);
        }
      }

      break;
    case 4:
      v770 = &unk_285181268;
      sub_23F0A9244(&v771, a3);
      v106 = *a2;
      v107 = v774;
      v108 = v771;
      if (!v771)
      {
        goto LABEL_649;
      }

      v109 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }

        v108 = v771;
        v110 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v111 = v108;
            (v110->__on_zero_shared)(v110);
            std::__shared_weak_count::__release_weak(v110);
            v108 = v111;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v108 + 96))(&v784);
      }

      else
      {
LABEL_649:
        v784 = 0;
      }

      if (v774)
      {
        v435 = v775;
        if (v775)
        {
          v436 = v777;
          v437 = v773;
          if (v778 == 1 && v773)
          {
            v438 = v771;
            v439 = v772;
            if (v772)
            {
              atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v439->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v440 = v438;
                (v439->__on_zero_shared)(v439);
                std::__shared_weak_count::__release_weak(v439);
                v438 = v440;
              }
            }

            (*(*v438 + 88))(v438, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v437 = v773;
          }

          v441 = 4 * v107;
          v442 = v435 - 1;
          if (v435 != 1)
          {
            v443 = 0;
            do
            {
              if (v107)
              {
                v444 = *(v106 + 48);
                v445 = 4 * v107;
                v446 = v437;
                do
                {
                  sub_23F2F81EC(v444, v446++);
                  v445 -= 4;
                }

                while (v445);
              }

              v437 += v436;
              ++v443;
            }

            while (v443 != v442);
          }

          if (v107)
          {
            v730 = *(v106 + 48);
            do
            {
              sub_23F2F81EC(v730, v437++);
              v441 -= 4;
            }

            while (v441);
          }
        }
      }

      break;
    case 5:
      v770 = &unk_285181360;
      sub_23F0A9CF4(&v771, a3);
      v154 = *a2;
      v155 = v781;
      v156 = v771;
      if (!v771)
      {
        goto LABEL_787;
      }

      v157 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v771;
        v158 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v156 + 96))(&v784);
      }

      else
      {
LABEL_787:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v531 = v776;
          if (v776)
          {
            v532 = v780;
            v533 = v773;
            if (v782 == 1 && v773)
            {
              v534 = v771;
              v535 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v535->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v536 = v534;
                  (v535->__on_zero_shared)(v535);
                  std::__shared_weak_count::__release_weak(v535);
                  v534 = v536;
                }
              }

              (*(*v534 + 88))(v534, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v533 = v773;
            }

            v537 = (2 * v155);
            v538 = v531 - 1;
            if (v531 != 1)
            {
              v539 = 0;
              do
              {
                if (v537)
                {
                  v540 = *(v154 + 48);
                  v541 = v537;
                  v542 = v533;
                  do
                  {
                    sub_23F2F7BA4(v540, v542++);
                    --v541;
                  }

                  while (v541);
                }

                v533 += v532;
                ++v539;
              }

              while (v539 != v538);
            }

            if (v537)
            {
              v742 = *(v154 + 48);
              do
              {
                sub_23F2F7BA4(v742, v533++);
                --v537;
              }

              while (v537);
            }
          }
        }
      }

      break;
    case 6:
      v770 = &unk_28517F038;
      sub_23F0AA74C(&v771, a3);
      v100 = *a2;
      v101 = v781;
      v102 = v771;
      if (!v771)
      {
        goto LABEL_632;
      }

      v103 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v103->__on_zero_shared)(v103);
          std::__shared_weak_count::__release_weak(v103);
        }

        v102 = v771;
        v104 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v105 = v102;
            (v104->__on_zero_shared)(v104);
            std::__shared_weak_count::__release_weak(v104);
            v102 = v105;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v102 + 96))(&v784);
      }

      else
      {
LABEL_632:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v423 = v776;
          if (v776)
          {
            v424 = v780;
            v425 = v773;
            if (v782 == 1 && v773)
            {
              v426 = v771;
              v427 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v427->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v428 = v426;
                  (v427->__on_zero_shared)(v427);
                  std::__shared_weak_count::__release_weak(v427);
                  v426 = v428;
                }
              }

              (*(*v426 + 88))(v426, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v425 = v773;
            }

            v429 = (2 * v101);
            v430 = v423 - 1;
            if (v423 != 1)
            {
              v431 = 0;
              do
              {
                if (v429)
                {
                  v432 = *(v100 + 48);
                  v433 = 2 * v429;
                  v434 = v425;
                  do
                  {
                    sub_23F2F7D50(v432, v434++);
                    v433 -= 2;
                  }

                  while (v433);
                }

                v425 += v424;
                ++v431;
              }

              while (v431 != v430);
            }

            if (v429)
            {
              v728 = *(v100 + 48);
              v729 = 2 * v429;
              do
              {
                sub_23F2F7D50(v728, v425++);
                v729 -= 2;
              }

              while (v729);
            }
          }
        }
      }

      break;
    case 7:
      v770 = &unk_285181458;
      sub_23F0AB1A4(&v771, a3);
      v70 = *a2;
      v71 = v781;
      v72 = v771;
      if (!v771)
      {
        goto LABEL_538;
      }

      v73 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v771;
        v74 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v72 + 96))(&v784);
      }

      else
      {
LABEL_538:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v363 = v776;
      if (!v776)
      {
        break;
      }

      v364 = v780;
      v365 = v773;
      if (v782 == 1 && v773)
      {
        v366 = v771;
        v367 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v367->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v368 = v366;
            (v367->__on_zero_shared)(v367);
            std::__shared_weak_count::__release_weak(v367);
            v366 = v368;
          }
        }

        (*(*v366 + 88))(v366, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v365 = v773;
      }

      v369 = (2 * v71);
      v370 = v363 - 1;
      if (!v370)
      {
        goto LABEL_554;
      }

      if (v369)
      {
        v371 = 0;
        v372 = 2 * v364;
        do
        {
          v373 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v70 + 48), &v769);
            v365[v373++] = v769;
          }

          while (v369 != v373);
          v365 = (v365 + v372);
          ++v371;
        }

        while (v371 != v370);
LABEL_554:
        if (v369)
        {
          v374 = 2 * v369;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v70 + 48), &v769);
            *v365++ = v769;
            v374 -= 2;
          }

          while (v374);
        }
      }

      break;
    case 8:
      v770 = &unk_285181550;
      sub_23F0ABBFC(&v771, a3);
      v166 = *a2;
      v167 = v781;
      v168 = v771;
      if (!v771)
      {
        goto LABEL_821;
      }

      v169 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v771;
        v170 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v168 + 96))(&v784);
      }

      else
      {
LABEL_821:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v555 = v776;
          if (v776)
          {
            v556 = v780;
            v557 = v773;
            if (v782 == 1 && v773)
            {
              v558 = v771;
              v559 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v559->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v560 = v558;
                  (v559->__on_zero_shared)(v559);
                  std::__shared_weak_count::__release_weak(v559);
                  v558 = v560;
                }
              }

              (*(*v558 + 88))(v558, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v557 = v773;
            }

            v561 = (2 * v167);
            v562 = v555 - 1;
            if (v555 != 1)
            {
              v563 = 0;
              do
              {
                if (v561)
                {
                  v564 = *(v166 + 48);
                  v565 = 4 * v561;
                  v566 = v557;
                  do
                  {
                    sub_23F2F81EC(v564, v566++);
                    v565 -= 4;
                  }

                  while (v565);
                }

                v557 += v556;
                ++v563;
              }

              while (v563 != v562);
            }

            if (v561)
            {
              v745 = *(v166 + 48);
              v746 = 4 * v561;
              do
              {
                sub_23F2F81EC(v745, v557++);
                v746 -= 4;
              }

              while (v746);
            }
          }
        }
      }

      break;
    case 9:
      v770 = &unk_28517F130;
      sub_23F0AC654(&v771, a3);
      v148 = *a2;
      v149 = v781;
      v150 = v771;
      if (!v771)
      {
        goto LABEL_770;
      }

      v151 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v771;
        v152 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v150 + 96))(&v784);
      }

      else
      {
LABEL_770:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v519 = v776;
          if (v776)
          {
            v520 = v780;
            v521 = v773;
            if (v782 == 1 && v773)
            {
              v522 = v771;
              v523 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v523->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v524 = v522;
                  (v523->__on_zero_shared)(v523);
                  std::__shared_weak_count::__release_weak(v523);
                  v522 = v524;
                }
              }

              (*(*v522 + 88))(v522, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v521 = v773;
            }

            v525 = (3 * v149);
            v526 = v519 - 1;
            if (v519 != 1)
            {
              v527 = 0;
              do
              {
                if (v149)
                {
                  v528 = *(v148 + 48);
                  v529 = (3 * v149);
                  v530 = v521;
                  do
                  {
                    sub_23F2F7BA4(v528, v530++);
                    --v529;
                  }

                  while (v529);
                }

                v521 += v520;
                ++v527;
              }

              while (v527 != v526);
            }

            if (3 * v149)
            {
              v741 = *(v148 + 48);
              do
              {
                sub_23F2F7BA4(v741, v521++);
                --v525;
              }

              while (v525);
            }
          }
        }
      }

      break;
    case 10:
      v770 = &unk_28517F228;
      sub_23F0AD0AC(&v771, a3);
      v196 = *a2;
      v197 = v781;
      v198 = v771;
      if (!v771)
      {
        goto LABEL_926;
      }

      v199 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v199->__on_zero_shared)(v199);
          std::__shared_weak_count::__release_weak(v199);
        }

        v198 = v771;
        v200 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v198;
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
            v198 = v201;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v198 + 96))(&v784);
      }

      else
      {
LABEL_926:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v624 = v776;
          if (v776)
          {
            v625 = v780;
            v626 = v773;
            if (v782 == 1 && v773)
            {
              v627 = v771;
              v628 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v628->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v629 = v627;
                  (v628->__on_zero_shared)(v628);
                  std::__shared_weak_count::__release_weak(v628);
                  v627 = v629;
                }
              }

              (*(*v627 + 88))(v627, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v626 = v773;
            }

            v630 = (3 * v197);
            v631 = v624 - 1;
            if (v624 != 1)
            {
              v632 = 0;
              do
              {
                if (v197)
                {
                  v633 = *(v196 + 48);
                  v634 = 2 * (3 * v197);
                  v635 = v626;
                  do
                  {
                    sub_23F2F7D50(v633, v635++);
                    v634 -= 2;
                  }

                  while (v634);
                }

                v626 += v625;
                ++v632;
              }

              while (v632 != v631);
              v630 = (3 * v197);
            }

            if (v630)
            {
              v763 = *(v196 + 48);
              v764 = 2 * v630;
              do
              {
                sub_23F2F7D50(v763, v626++);
                v764 -= 2;
              }

              while (v764);
            }
          }
        }
      }

      break;
    case 11:
      v770 = &unk_28517F320;
      sub_23F0ADB04(&v771, a3);
      v190 = *a2;
      v191 = v781;
      v192 = v771;
      if (!v771)
      {
        goto LABEL_906;
      }

      v193 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v771;
        v194 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v192 + 96))(&v784);
      }

      else
      {
LABEL_906:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v613 = v776;
      if (!v776)
      {
        break;
      }

      v614 = v780;
      v615 = v773;
      if (v782 == 1 && v773)
      {
        v616 = v771;
        v617 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v617->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v618 = v616;
            (v617->__on_zero_shared)(v617);
            std::__shared_weak_count::__release_weak(v617);
            v616 = v618;
          }
        }

        (*(*v616 + 88))(v616, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v615 = v773;
      }

      v619 = v613 - 1;
      if (!v619)
      {
        goto LABEL_922;
      }

      if (v191)
      {
        v620 = 0;
        v621 = 2 * v614;
        do
        {
          v622 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v190 + 48), &v769);
            v615[v622++] = v769;
          }

          while (3 * v191 != v622);
          v615 = (v615 + v621);
          ++v620;
        }

        while (v620 != v619);
LABEL_922:
        if (v191)
        {
          v623 = 2 * (3 * v191);
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v190 + 48), &v769);
            *v615++ = v769;
            v623 -= 2;
          }

          while (v623);
        }
      }

      break;
    case 12:
      v770 = &unk_28517F418;
      sub_23F0AE55C(&v771, a3);
      v28 = *a2;
      v29 = v781;
      v30 = v771;
      if (!v771)
      {
        goto LABEL_419;
      }

      v31 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v771;
        v32 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v30 + 96))(&v784);
      }

      else
      {
LABEL_419:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v279 = v776;
          if (v776)
          {
            v280 = v780;
            v281 = v773;
            if (v782 == 1 && v773)
            {
              v282 = v771;
              v283 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v284 = v282;
                  (v283->__on_zero_shared)(v283);
                  std::__shared_weak_count::__release_weak(v283);
                  v282 = v284;
                }
              }

              (*(*v282 + 88))(v282, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v281 = v773;
            }

            v285 = (3 * v29);
            v286 = v279 - 1;
            if (v279 != 1)
            {
              v287 = 0;
              do
              {
                if (v29)
                {
                  v288 = *(v28 + 48);
                  v289 = 4 * (3 * v29);
                  v290 = v281;
                  do
                  {
                    sub_23F2F81EC(v288, v290++);
                    v289 -= 4;
                  }

                  while (v289);
                }

                v281 += v280;
                ++v287;
              }

              while (v287 != v286);
              v285 = (3 * v29);
            }

            if (v285)
            {
              v755 = *(v28 + 48);
              v756 = 4 * v285;
              do
              {
                sub_23F2F81EC(v755, v281++);
                v756 -= 4;
              }

              while (v756);
            }
          }
        }
      }

      break;
    case 13:
      v770 = &unk_28517F510;
      sub_23F0AEFB4(&v771, a3);
      v52 = *a2;
      v53 = v781;
      v54 = v771;
      if (!v771)
      {
        goto LABEL_487;
      }

      v55 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v771;
        v56 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v54 + 96))(&v784);
      }

      else
      {
LABEL_487:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v327 = v776;
          if (v776)
          {
            v328 = v780;
            v329 = v773;
            if (v782 == 1 && v773)
            {
              v330 = v771;
              v331 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v331->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v332 = v330;
                  (v331->__on_zero_shared)(v331);
                  std::__shared_weak_count::__release_weak(v331);
                  v330 = v332;
                }
              }

              (*(*v330 + 88))(v330, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v329 = v773;
            }

            v333 = (4 * v53);
            v334 = v327 - 1;
            if (v327 != 1)
            {
              v335 = 0;
              do
              {
                if (v333)
                {
                  v336 = *(v52 + 48);
                  v337 = v333;
                  v338 = v329;
                  do
                  {
                    sub_23F2F7BA4(v336, v338++);
                    --v337;
                  }

                  while (v337);
                }

                v329 += v328;
                ++v335;
              }

              while (v335 != v334);
            }

            if (v333)
            {
              v723 = *(v52 + 48);
              do
              {
                sub_23F2F7BA4(v723, v329++);
                --v333;
              }

              while (v333);
            }
          }
        }
      }

      break;
    case 14:
      v770 = &unk_28517F608;
      sub_23F0AFA0C(&v771, a3);
      v46 = *a2;
      v47 = v781;
      v48 = v771;
      if (!v771)
      {
        goto LABEL_470;
      }

      v49 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v771;
        v50 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v48 + 96))(&v784);
      }

      else
      {
LABEL_470:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v315 = v776;
          if (v776)
          {
            v316 = v780;
            v317 = v773;
            if (v782 == 1 && v773)
            {
              v318 = v771;
              v319 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v319->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v320 = v318;
                  (v319->__on_zero_shared)(v319);
                  std::__shared_weak_count::__release_weak(v319);
                  v318 = v320;
                }
              }

              (*(*v318 + 88))(v318, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v317 = v773;
            }

            v321 = (4 * v47);
            v322 = v315 - 1;
            if (v315 != 1)
            {
              v323 = 0;
              do
              {
                if (v321)
                {
                  v324 = *(v46 + 48);
                  v325 = 2 * v321;
                  v326 = v317;
                  do
                  {
                    sub_23F2F7D50(v324, v326++);
                    v325 -= 2;
                  }

                  while (v325);
                }

                v317 += v316;
                ++v323;
              }

              while (v323 != v322);
            }

            if (v321)
            {
              v721 = *(v46 + 48);
              v722 = 2 * v321;
              do
              {
                sub_23F2F7D50(v721, v317++);
                v722 -= 2;
              }

              while (v722);
            }
          }
        }
      }

      break;
    case 15:
      v770 = &unk_28517F700;
      sub_23F0B0464(&v771, a3);
      v220 = *a2;
      v221 = v781;
      v222 = v771;
      if (!v771)
      {
        goto LABEL_994;
      }

      v223 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v223->__on_zero_shared)(v223);
          std::__shared_weak_count::__release_weak(v223);
        }

        v222 = v771;
        v224 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v222;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v222 = v225;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v222 + 96))(&v784);
      }

      else
      {
LABEL_994:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v672 = v776;
      if (!v776)
      {
        break;
      }

      v673 = v780;
      v674 = v773;
      if (v782 == 1 && v773)
      {
        v675 = v771;
        v676 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v676->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v677 = v675;
            (v676->__on_zero_shared)(v676);
            std::__shared_weak_count::__release_weak(v676);
            v675 = v677;
          }
        }

        (*(*v675 + 88))(v675, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v674 = v773;
      }

      v678 = (4 * v221);
      v679 = v672 - 1;
      if (!v679)
      {
        goto LABEL_1010;
      }

      if (v678)
      {
        v680 = 0;
        v681 = 2 * v673;
        do
        {
          v682 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v220 + 48), &v769);
            v674[v682++] = v769;
          }

          while (v678 != v682);
          v674 = (v674 + v681);
          ++v680;
        }

        while (v680 != v679);
LABEL_1010:
        if (v678)
        {
          v683 = 2 * v678;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v220 + 48), &v769);
            *v674++ = v769;
            v683 -= 2;
          }

          while (v683);
        }
      }

      break;
    case 16:
      v770 = &unk_28517F7F8;
      sub_23F0B0EBC(&v771, a3);
      v160 = *a2;
      v161 = v781;
      v162 = v771;
      if (!v771)
      {
        goto LABEL_804;
      }

      v163 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v771;
        v164 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v162 + 96))(&v784);
      }

      else
      {
LABEL_804:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v543 = v776;
          if (v776)
          {
            v544 = v780;
            v545 = v773;
            if (v782 == 1 && v773)
            {
              v546 = v771;
              v547 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v547->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v548 = v546;
                  (v547->__on_zero_shared)(v547);
                  std::__shared_weak_count::__release_weak(v547);
                  v546 = v548;
                }
              }

              (*(*v546 + 88))(v546, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v545 = v773;
            }

            v549 = (4 * v161);
            v550 = v543 - 1;
            if (v543 != 1)
            {
              v551 = 0;
              do
              {
                if (v549)
                {
                  v552 = *(v160 + 48);
                  v553 = 4 * v549;
                  v554 = v545;
                  do
                  {
                    sub_23F2F81EC(v552, v554++);
                    v553 -= 4;
                  }

                  while (v553);
                }

                v545 += v544;
                ++v551;
              }

              while (v551 != v550);
            }

            if (v549)
            {
              v743 = *(v160 + 48);
              v744 = 4 * v549;
              do
              {
                sub_23F2F81EC(v743, v545++);
                v744 -= 4;
              }

              while (v744);
            }
          }
        }
      }

      break;
    case 17:
      v770 = &unk_28517F8F0;
      sub_23F0B1914(&v771, a3);
      v226 = *a2;
      v227 = v781;
      v228 = v771;
      if (!v771)
      {
        goto LABEL_1014;
      }

      v229 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v229->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v229->__on_zero_shared)(v229);
          std::__shared_weak_count::__release_weak(v229);
        }

        v228 = v771;
        v230 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v231 = v228;
            (v230->__on_zero_shared)(v230);
            std::__shared_weak_count::__release_weak(v230);
            v228 = v231;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v228 + 96))(&v784);
      }

      else
      {
LABEL_1014:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v684 = v776;
          if (v776)
          {
            v685 = v780;
            v686 = v773;
            if (v782 == 1 && v773)
            {
              v687 = v771;
              v688 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v688->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v689 = v687;
                  (v688->__on_zero_shared)(v688);
                  std::__shared_weak_count::__release_weak(v688);
                  v687 = v689;
                }
              }

              (*(*v687 + 88))(v687, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v686 = v773;
            }

            v690 = (3 * v227);
            v691 = v684 - 1;
            if (v684 != 1)
            {
              v692 = 0;
              do
              {
                if (v227)
                {
                  v693 = *(v226 + 48);
                  v694 = (3 * v227);
                  v695 = v686;
                  do
                  {
                    sub_23F2F7BA4(v693, v695++);
                    --v694;
                  }

                  while (v694);
                }

                v686 += v685;
                ++v692;
              }

              while (v692 != v691);
            }

            if (3 * v227)
            {
              v753 = *(v226 + 48);
              do
              {
                sub_23F2F7BA4(v753, v686++);
                --v690;
              }

              while (v690);
            }
          }
        }
      }

      break;
    case 18:
      v770 = &unk_28517F9E8;
      sub_23F0B236C(&v771, a3);
      v64 = *a2;
      v65 = v781;
      v66 = v771;
      if (!v771)
      {
        goto LABEL_521;
      }

      v67 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        v66 = v771;
        v68 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v66;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v66 = v69;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v66 + 96))(&v784);
      }

      else
      {
LABEL_521:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v351 = v776;
          if (v776)
          {
            v352 = v780;
            v353 = v773;
            if (v782 == 1 && v773)
            {
              v354 = v771;
              v355 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v355->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v356 = v354;
                  (v355->__on_zero_shared)(v355);
                  std::__shared_weak_count::__release_weak(v355);
                  v354 = v356;
                }
              }

              (*(*v354 + 88))(v354, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v353 = v773;
            }

            v357 = (3 * v65);
            v358 = v351 - 1;
            if (v351 != 1)
            {
              v359 = 0;
              do
              {
                if (v65)
                {
                  v360 = *(v64 + 48);
                  v361 = 2 * (3 * v65);
                  v362 = v353;
                  do
                  {
                    sub_23F2F7D50(v360, v362++);
                    v361 -= 2;
                  }

                  while (v361);
                }

                v353 += v352;
                ++v359;
              }

              while (v359 != v358);
              v357 = (3 * v65);
            }

            if (v357)
            {
              v759 = *(v64 + 48);
              v760 = 2 * v357;
              do
              {
                sub_23F2F7D50(v759, v353++);
                v760 -= 2;
              }

              while (v760);
            }
          }
        }
      }

      break;
    case 19:
      v770 = &unk_28517FAE0;
      sub_23F0B2DC4(&v771, a3);
      v16 = *a2;
      v17 = v781;
      v18 = v771;
      if (!v771)
      {
        goto LABEL_382;
      }

      v19 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v771;
        v20 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v18 + 96))(&v784);
      }

      else
      {
LABEL_382:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v256 = v776;
      if (!v776)
      {
        break;
      }

      v257 = v780;
      v258 = v773;
      if (v782 == 1 && v773)
      {
        v259 = v771;
        v260 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v260->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v261 = v259;
            (v260->__on_zero_shared)(v260);
            std::__shared_weak_count::__release_weak(v260);
            v259 = v261;
          }
        }

        (*(*v259 + 88))(v259, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v258 = v773;
      }

      v262 = v256 - 1;
      if (!v262)
      {
        goto LABEL_398;
      }

      if (v17)
      {
        v263 = 0;
        v264 = 2 * v257;
        do
        {
          v265 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v16 + 48), &v769);
            v258[v265++] = v769;
          }

          while (3 * v17 != v265);
          v258 = (v258 + v264);
          ++v263;
        }

        while (v263 != v262);
LABEL_398:
        if (v17)
        {
          v266 = 2 * (3 * v17);
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v16 + 48), &v769);
            *v258++ = v769;
            v266 -= 2;
          }

          while (v266);
        }
      }

      break;
    case 20:
      v770 = &unk_28517FBD8;
      sub_23F0B381C(&v771, a3);
      v208 = *a2;
      v209 = v781;
      v210 = v771;
      if (!v771)
      {
        goto LABEL_960;
      }

      v211 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v211->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v211->__on_zero_shared)(v211);
          std::__shared_weak_count::__release_weak(v211);
        }

        v210 = v771;
        v212 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v210;
            (v212->__on_zero_shared)(v212);
            std::__shared_weak_count::__release_weak(v212);
            v210 = v213;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v210 + 96))(&v784);
      }

      else
      {
LABEL_960:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v648 = v776;
          if (v776)
          {
            v649 = v780;
            v650 = v773;
            if (v782 == 1 && v773)
            {
              v651 = v771;
              v652 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v652->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v653 = v651;
                  (v652->__on_zero_shared)(v652);
                  std::__shared_weak_count::__release_weak(v652);
                  v651 = v653;
                }
              }

              (*(*v651 + 88))(v651, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v650 = v773;
            }

            v654 = (3 * v209);
            v655 = v648 - 1;
            if (v648 != 1)
            {
              v656 = 0;
              do
              {
                if (v209)
                {
                  v657 = *(v208 + 48);
                  v658 = 4 * (3 * v209);
                  v659 = v650;
                  do
                  {
                    sub_23F2F81EC(v657, v659++);
                    v658 -= 4;
                  }

                  while (v658);
                }

                v650 += v649;
                ++v656;
              }

              while (v656 != v655);
              v654 = (3 * v209);
            }

            if (v654)
            {
              v765 = *(v208 + 48);
              v766 = 4 * v654;
              do
              {
                sub_23F2F81EC(v765, v650++);
                v766 -= 4;
              }

              while (v766);
            }
          }
        }
      }

      break;
    case 21:
      v770 = &unk_28517DB98;
      sub_23F0B41FC(&v771, a3);
      v238 = *a2;
      v239 = v781;
      v240 = v771;
      if (!v771)
      {
        goto LABEL_1051;
      }

      v241 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v241->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v241->__on_zero_shared)(v241);
          std::__shared_weak_count::__release_weak(v241);
        }

        v240 = v771;
        v242 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v242->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v240;
            (v242->__on_zero_shared)(v242);
            std::__shared_weak_count::__release_weak(v242);
            v240 = v243;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v240 + 96))(&v784);
      }

      else
      {
LABEL_1051:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v707 = v776;
          if (v776)
          {
            v708 = v780;
            v709 = v773;
            if (v782 == 1 && v773)
            {
              v710 = v771;
              v711 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v711->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v712 = v710;
                  (v711->__on_zero_shared)(v711);
                  std::__shared_weak_count::__release_weak(v711);
                  v710 = v712;
                }
              }

              (*(*v710 + 88))(v710, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v709 = v773;
            }

            v713 = (3 * v239);
            v714 = v707 - 1;
            if (v707 != 1)
            {
              v715 = 0;
              do
              {
                if (v239)
                {
                  v716 = *(v238 + 48);
                  v717 = (3 * v239);
                  v718 = v709;
                  do
                  {
                    sub_23F2F7BA4(v716, v718++);
                    --v717;
                  }

                  while (v717);
                }

                v709 += v708;
                ++v715;
              }

              while (v715 != v714);
            }

            if (3 * v239)
            {
              v754 = *(v238 + 48);
              do
              {
                sub_23F2F7BA4(v754, v709++);
                --v713;
              }

              while (v713);
            }
          }
        }
      }

      break;
    case 22:
      v770 = &unk_285181648;
      sub_23F0B46DC(&v771, a3);
      v82 = *a2;
      v83 = v781;
      v84 = v771;
      if (!v771)
      {
        goto LABEL_578;
      }

      v85 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v771;
        v86 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v84 + 96))(&v784);
      }

      else
      {
LABEL_578:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v387 = v776;
          if (v776)
          {
            v388 = v780;
            v389 = v773;
            if (v782 == 1 && v773)
            {
              v390 = v771;
              v391 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v391->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v392 = v390;
                  (v391->__on_zero_shared)(v391);
                  std::__shared_weak_count::__release_weak(v391);
                  v390 = v392;
                }
              }

              (*(*v390 + 88))(v390, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v389 = v773;
            }

            v393 = (3 * v83);
            v394 = v387 - 1;
            if (v387 != 1)
            {
              v395 = 0;
              do
              {
                if (v83)
                {
                  v396 = *(v82 + 48);
                  v397 = 2 * (3 * v83);
                  v398 = v389;
                  do
                  {
                    sub_23F2F7D50(v396, v398++);
                    v397 -= 2;
                  }

                  while (v397);
                }

                v389 += v388;
                ++v395;
              }

              while (v395 != v394);
              v393 = (3 * v83);
            }

            if (v393)
            {
              v761 = *(v82 + 48);
              v762 = 2 * v393;
              do
              {
                sub_23F2F7D50(v761, v389++);
                v762 -= 2;
              }

              while (v762);
            }
          }
        }
      }

      break;
    case 23:
      v770 = &unk_28517FCD0;
      sub_23F0B518C(&v771, a3);
      v232 = *a2;
      v233 = v781;
      v234 = v771;
      if (!v771)
      {
        goto LABEL_1031;
      }

      v235 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v235->__on_zero_shared)(v235);
          std::__shared_weak_count::__release_weak(v235);
        }

        v234 = v771;
        v236 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v236->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v237 = v234;
            (v236->__on_zero_shared)(v236);
            std::__shared_weak_count::__release_weak(v236);
            v234 = v237;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v234 + 96))(&v784);
      }

      else
      {
LABEL_1031:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v696 = v776;
      if (!v776)
      {
        break;
      }

      v697 = v780;
      v698 = v773;
      if (v782 == 1 && v773)
      {
        v699 = v771;
        v700 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v700->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v701 = v699;
            (v700->__on_zero_shared)(v700);
            std::__shared_weak_count::__release_weak(v700);
            v699 = v701;
          }
        }

        (*(*v699 + 88))(v699, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v698 = v773;
      }

      v702 = v696 - 1;
      if (!v702)
      {
        goto LABEL_1047;
      }

      if (v233)
      {
        v703 = 0;
        v704 = 2 * v697;
        do
        {
          v705 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v232 + 48), &v769);
            v698[v705++] = v769;
          }

          while (3 * v233 != v705);
          v698 = (v698 + v704);
          ++v703;
        }

        while (v703 != v702);
LABEL_1047:
        if (v233)
        {
          v706 = 2 * (3 * v233);
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v232 + 48), &v769);
            *v698++ = v769;
            v706 -= 2;
          }

          while (v706);
        }
      }

      break;
    case 24:
      v770 = &unk_28517FDC8;
      sub_23F0B5C3C(&v771, a3);
      v40 = *a2;
      v41 = v781;
      v42 = v771;
      if (!v771)
      {
        goto LABEL_453;
      }

      v43 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v771;
        v44 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v42 + 96))(&v784);
      }

      else
      {
LABEL_453:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v303 = v776;
          if (v776)
          {
            v304 = v780;
            v305 = v773;
            if (v782 == 1 && v773)
            {
              v306 = v771;
              v307 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v307->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v308 = v306;
                  (v307->__on_zero_shared)(v307);
                  std::__shared_weak_count::__release_weak(v307);
                  v306 = v308;
                }
              }

              (*(*v306 + 88))(v306, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v305 = v773;
            }

            v309 = (3 * v41);
            v310 = v303 - 1;
            if (v303 != 1)
            {
              v311 = 0;
              do
              {
                if (v41)
                {
                  v312 = *(v40 + 48);
                  v313 = 4 * (3 * v41);
                  v314 = v305;
                  do
                  {
                    sub_23F2F81EC(v312, v314++);
                    v313 -= 4;
                  }

                  while (v313);
                }

                v305 += v304;
                ++v311;
              }

              while (v311 != v310);
              v309 = (3 * v41);
            }

            if (v309)
            {
              v757 = *(v40 + 48);
              v758 = 4 * v309;
              do
              {
                sub_23F2F81EC(v757, v305++);
                v758 -= 4;
              }

              while (v758);
            }
          }
        }
      }

      break;
    case 25:
      v770 = &unk_285181740;
      sub_23F0B66EC(&v771, a3);
      v22 = *a2;
      v23 = v781;
      v24 = v771;
      if (!v771)
      {
        goto LABEL_402;
      }

      v25 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v771;
        v26 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v24 + 96))(&v784);
      }

      else
      {
LABEL_402:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v267 = v776;
          if (v776)
          {
            v268 = v780;
            v269 = v773;
            if (v782 == 1 && v773)
            {
              v270 = v771;
              v271 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v272 = v270;
                  (v271->__on_zero_shared)(v271);
                  std::__shared_weak_count::__release_weak(v271);
                  v270 = v272;
                }
              }

              (*(*v270 + 88))(v270, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v269 = v773;
            }

            v273 = (4 * v23);
            v274 = v267 - 1;
            if (v267 != 1)
            {
              v275 = 0;
              do
              {
                if (v273)
                {
                  v276 = *(v22 + 48);
                  v277 = v273;
                  v278 = v269;
                  do
                  {
                    sub_23F2F7BA4(v276, v278++);
                    --v277;
                  }

                  while (v277);
                }

                v269 += v268;
                ++v275;
              }

              while (v275 != v274);
            }

            if (v273)
            {
              v719 = *(v22 + 48);
              do
              {
                sub_23F2F7BA4(v719, v269++);
                --v273;
              }

              while (v273);
            }
          }
        }
      }

      break;
    case 26:
      v770 = &unk_28517FEC0;
      sub_23F0B719C(&v771, a3);
      v88 = *a2;
      v89 = v781;
      v90 = v771;
      if (!v771)
      {
        goto LABEL_595;
      }

      v91 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v771;
        v92 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v90 + 96))(&v784);
      }

      else
      {
LABEL_595:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v399 = v776;
          if (v776)
          {
            v400 = v780;
            v401 = v773;
            if (v782 == 1 && v773)
            {
              v402 = v771;
              v403 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v403->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v404 = v402;
                  (v403->__on_zero_shared)(v403);
                  std::__shared_weak_count::__release_weak(v403);
                  v402 = v404;
                }
              }

              (*(*v402 + 88))(v402, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v401 = v773;
            }

            v405 = (4 * v89);
            v406 = v399 - 1;
            if (v399 != 1)
            {
              v407 = 0;
              do
              {
                if (v405)
                {
                  v408 = *(v88 + 48);
                  v409 = 2 * v405;
                  v410 = v401;
                  do
                  {
                    sub_23F2F7D50(v408, v410++);
                    v409 -= 2;
                  }

                  while (v409);
                }

                v401 += v400;
                ++v407;
              }

              while (v407 != v406);
            }

            if (v405)
            {
              v726 = *(v88 + 48);
              v727 = 2 * v405;
              do
              {
                sub_23F2F7D50(v726, v401++);
                v727 -= 2;
              }

              while (v727);
            }
          }
        }
      }

      break;
    case 27:
      v770 = &unk_28517FFB8;
      sub_23F0B7BF4(&v771, a3);
      v10 = *a2;
      v11 = v781;
      v12 = v771;
      if (!v771)
      {
        goto LABEL_362;
      }

      v13 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v771;
        v14 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v12 + 96))(&v784);
      }

      else
      {
LABEL_362:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v244 = v776;
      if (!v776)
      {
        break;
      }

      v245 = v780;
      v246 = v773;
      if (v782 == 1 && v773)
      {
        v247 = v771;
        v248 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v248->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v249 = v247;
            (v248->__on_zero_shared)(v248);
            std::__shared_weak_count::__release_weak(v248);
            v247 = v249;
          }
        }

        (*(*v247 + 88))(v247, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v246 = v773;
      }

      v250 = (4 * v11);
      v251 = v244 - 1;
      if (!v251)
      {
        goto LABEL_378;
      }

      if (v250)
      {
        v252 = 0;
        v253 = 2 * v245;
        do
        {
          v254 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v10 + 48), &v769);
            v246[v254++] = v769;
          }

          while (v250 != v254);
          v246 = (v246 + v253);
          ++v252;
        }

        while (v252 != v251);
LABEL_378:
        if (v250)
        {
          v255 = 2 * v250;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v10 + 48), &v769);
            *v246++ = v769;
            v255 -= 2;
          }

          while (v255);
        }
      }

      break;
    case 28:
      v770 = &unk_2851800B0;
      sub_23F0B864C(&v771, a3);
      v112 = *a2;
      v113 = v781;
      v114 = v771;
      if (!v771)
      {
        goto LABEL_665;
      }

      v115 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v771;
        v116 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v114 + 96))(&v784);
      }

      else
      {
LABEL_665:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v447 = v776;
          if (v776)
          {
            v448 = v780;
            v449 = v773;
            if (v782 == 1 && v773)
            {
              v450 = v771;
              v451 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v451->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v452 = v450;
                  (v451->__on_zero_shared)(v451);
                  std::__shared_weak_count::__release_weak(v451);
                  v450 = v452;
                }
              }

              (*(*v450 + 88))(v450, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v449 = v773;
            }

            v453 = (4 * v113);
            v454 = v447 - 1;
            if (v447 != 1)
            {
              v455 = 0;
              do
              {
                if (v453)
                {
                  v456 = *(v112 + 48);
                  v457 = 4 * v453;
                  v458 = v449;
                  do
                  {
                    sub_23F2F81EC(v456, v458++);
                    v457 -= 4;
                  }

                  while (v457);
                }

                v449 += v448;
                ++v455;
              }

              while (v455 != v454);
            }

            if (v453)
            {
              v731 = *(v112 + 48);
              v732 = 4 * v453;
              do
              {
                sub_23F2F81EC(v731, v449++);
                v732 -= 4;
              }

              while (v732);
            }
          }
        }
      }

      break;
    case 29:
      v770 = &unk_2851801A8;
      sub_23F0B90A4(&v771, a3);
      v34 = *a2;
      v35 = v781;
      v36 = v771;
      if (!v771)
      {
        goto LABEL_436;
      }

      v37 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v771;
        v38 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v36 + 96))(&v784);
      }

      else
      {
LABEL_436:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v291 = v776;
          if (v776)
          {
            v292 = v780;
            v293 = v773;
            if (v782 == 1 && v773)
            {
              v294 = v771;
              v295 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v295->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v296 = v294;
                  (v295->__on_zero_shared)(v295);
                  std::__shared_weak_count::__release_weak(v295);
                  v294 = v296;
                }
              }

              (*(*v294 + 88))(v294, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v293 = v773;
            }

            v297 = (4 * v35);
            v298 = v291 - 1;
            if (v291 != 1)
            {
              v299 = 0;
              do
              {
                if (v297)
                {
                  v300 = *(v34 + 48);
                  v301 = v297;
                  v302 = v293;
                  do
                  {
                    sub_23F2F7BA4(v300, v302++);
                    --v301;
                  }

                  while (v301);
                }

                v293 += v292;
                ++v299;
              }

              while (v299 != v298);
            }

            if (v297)
            {
              v720 = *(v34 + 48);
              do
              {
                sub_23F2F7BA4(v720, v293++);
                --v297;
              }

              while (v297);
            }
          }
        }
      }

      break;
    case 30:
      v770 = &unk_2851802A0;
      sub_23F0B9B54(&v771, a3);
      v130 = *a2;
      v131 = v781;
      v132 = v771;
      if (!v771)
      {
        goto LABEL_719;
      }

      v133 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v771;
        v134 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v132 + 96))(&v784);
      }

      else
      {
LABEL_719:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v483 = v776;
          if (v776)
          {
            v484 = v780;
            v485 = v773;
            if (v782 == 1 && v773)
            {
              v486 = v771;
              v487 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v487->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v488 = v486;
                  (v487->__on_zero_shared)(v487);
                  std::__shared_weak_count::__release_weak(v487);
                  v486 = v488;
                }
              }

              (*(*v486 + 88))(v486, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v485 = v773;
            }

            v489 = (4 * v131);
            v490 = v483 - 1;
            if (v483 != 1)
            {
              v491 = 0;
              do
              {
                if (v489)
                {
                  v492 = *(v130 + 48);
                  v493 = 2 * v489;
                  v494 = v485;
                  do
                  {
                    sub_23F2F7D50(v492, v494++);
                    v493 -= 2;
                  }

                  while (v493);
                }

                v485 += v484;
                ++v491;
              }

              while (v491 != v490);
            }

            if (v489)
            {
              v735 = *(v130 + 48);
              v736 = 2 * v489;
              do
              {
                sub_23F2F7D50(v735, v485++);
                v736 -= 2;
              }

              while (v736);
            }
          }
        }
      }

      break;
    case 31:
      v770 = &unk_285181838;
      sub_23F0BA604(&v771, a3);
      v94 = *a2;
      v95 = v781;
      v96 = v771;
      if (!v771)
      {
        goto LABEL_612;
      }

      v97 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v771;
        v98 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v96 + 96))(&v784);
      }

      else
      {
LABEL_612:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v411 = v776;
      if (!v776)
      {
        break;
      }

      v412 = v780;
      v413 = v773;
      if (v782 == 1 && v773)
      {
        v414 = v771;
        v415 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v415->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v416 = v414;
            (v415->__on_zero_shared)(v415);
            std::__shared_weak_count::__release_weak(v415);
            v414 = v416;
          }
        }

        (*(*v414 + 88))(v414, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v413 = v773;
      }

      v417 = (4 * v95);
      v418 = v411 - 1;
      if (!v418)
      {
        goto LABEL_628;
      }

      if (v417)
      {
        v419 = 0;
        v420 = 2 * v412;
        do
        {
          v421 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v94 + 48), &v769);
            v413[v421++] = v769;
          }

          while (v417 != v421);
          v413 = (v413 + v420);
          ++v419;
        }

        while (v419 != v418);
LABEL_628:
        if (v417)
        {
          v422 = 2 * v417;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v94 + 48), &v769);
            *v413++ = v769;
            v422 -= 2;
          }

          while (v422);
        }
      }

      break;
    case 32:
      v770 = &unk_285181930;
      sub_23F0BB0B4(&v771, a3);
      v142 = *a2;
      v143 = v781;
      v144 = v771;
      if (!v771)
      {
        goto LABEL_753;
      }

      v145 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v771;
        v146 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v144 + 96))(&v784);
      }

      else
      {
LABEL_753:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v507 = v776;
          if (v776)
          {
            v508 = v780;
            v509 = v773;
            if (v782 == 1 && v773)
            {
              v510 = v771;
              v511 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v511->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v512 = v510;
                  (v511->__on_zero_shared)(v511);
                  std::__shared_weak_count::__release_weak(v511);
                  v510 = v512;
                }
              }

              (*(*v510 + 88))(v510, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v509 = v773;
            }

            v513 = (4 * v143);
            v514 = v507 - 1;
            if (v507 != 1)
            {
              v515 = 0;
              do
              {
                if (v513)
                {
                  v516 = *(v142 + 48);
                  v517 = 4 * v513;
                  v518 = v509;
                  do
                  {
                    sub_23F2F81EC(v516, v518++);
                    v517 -= 4;
                  }

                  while (v517);
                }

                v509 += v508;
                ++v515;
              }

              while (v515 != v514);
            }

            if (v513)
            {
              v739 = *(v142 + 48);
              v740 = 4 * v513;
              do
              {
                sub_23F2F81EC(v739, v509++);
                v740 -= 4;
              }

              while (v740);
            }
          }
        }
      }

      break;
    case 33:
      v770 = &unk_285180398;
      sub_23F0BBB64(&v771, a3);
      v202 = *a2;
      v203 = v781;
      v204 = v771;
      if (!v771)
      {
        goto LABEL_943;
      }

      v205 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v205->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v205->__on_zero_shared)(v205);
          std::__shared_weak_count::__release_weak(v205);
        }

        v204 = v771;
        v206 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v207 = v204;
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
            v204 = v207;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v204 + 96))(&v784);
      }

      else
      {
LABEL_943:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v636 = v776;
          if (v776)
          {
            v637 = v780;
            v638 = v773;
            if (v782 == 1 && v773)
            {
              v639 = v771;
              v640 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v640->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v641 = v639;
                  (v640->__on_zero_shared)(v640);
                  std::__shared_weak_count::__release_weak(v640);
                  v639 = v641;
                }
              }

              (*(*v639 + 88))(v639, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v638 = v773;
            }

            v642 = (4 * v203);
            v643 = v636 - 1;
            if (v636 != 1)
            {
              v644 = 0;
              do
              {
                if (v642)
                {
                  v645 = *(v202 + 48);
                  v646 = v642;
                  v647 = v638;
                  do
                  {
                    sub_23F2F7BA4(v645, v647++);
                    --v646;
                  }

                  while (v646);
                }

                v638 += v637;
                ++v644;
              }

              while (v644 != v643);
            }

            if (v642)
            {
              v750 = *(v202 + 48);
              do
              {
                sub_23F2F7BA4(v750, v638++);
                --v642;
              }

              while (v642);
            }
          }
        }
      }

      break;
    case 34:
      v770 = &unk_285180490;
      sub_23F0BC614(&v771, a3);
      v136 = *a2;
      v137 = v781;
      v138 = v771;
      if (!v771)
      {
        goto LABEL_736;
      }

      v139 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v771;
        v140 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v138 + 96))(&v784);
      }

      else
      {
LABEL_736:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v495 = v776;
          if (v776)
          {
            v496 = v780;
            v497 = v773;
            if (v782 == 1 && v773)
            {
              v498 = v771;
              v499 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v499->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v500 = v498;
                  (v499->__on_zero_shared)(v499);
                  std::__shared_weak_count::__release_weak(v499);
                  v498 = v500;
                }
              }

              (*(*v498 + 88))(v498, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v497 = v773;
            }

            v501 = (4 * v137);
            v502 = v495 - 1;
            if (v495 != 1)
            {
              v503 = 0;
              do
              {
                if (v501)
                {
                  v504 = *(v136 + 48);
                  v505 = 2 * v501;
                  v506 = v497;
                  do
                  {
                    sub_23F2F7D50(v504, v506++);
                    v505 -= 2;
                  }

                  while (v505);
                }

                v497 += v496;
                ++v503;
              }

              while (v503 != v502);
            }

            if (v501)
            {
              v737 = *(v136 + 48);
              v738 = 2 * v501;
              do
              {
                sub_23F2F7D50(v737, v497++);
                v738 -= 2;
              }

              while (v738);
            }
          }
        }
      }

      break;
    case 35:
      v770 = &unk_285180588;
      sub_23F0BD06C(&v771, a3);
      v124 = *a2;
      v125 = v781;
      v126 = v771;
      if (!v771)
      {
        goto LABEL_699;
      }

      v127 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v771;
        v128 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v126 + 96))(&v784);
      }

      else
      {
LABEL_699:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v471 = v776;
      if (!v776)
      {
        break;
      }

      v472 = v780;
      v473 = v773;
      if (v782 == 1 && v773)
      {
        v474 = v771;
        v475 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v475->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v476 = v474;
            (v475->__on_zero_shared)(v475);
            std::__shared_weak_count::__release_weak(v475);
            v474 = v476;
          }
        }

        (*(*v474 + 88))(v474, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v473 = v773;
      }

      v477 = (4 * v125);
      v478 = v471 - 1;
      if (!v478)
      {
        goto LABEL_715;
      }

      if (v477)
      {
        v479 = 0;
        v480 = 2 * v472;
        do
        {
          v481 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v124 + 48), &v769);
            v473[v481++] = v769;
          }

          while (v477 != v481);
          v473 = (v473 + v480);
          ++v479;
        }

        while (v479 != v478);
LABEL_715:
        if (v477)
        {
          v482 = 2 * v477;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v124 + 48), &v769);
            *v473++ = v769;
            v482 -= 2;
          }

          while (v482);
        }
      }

      break;
    case 36:
      v770 = &unk_285180680;
      sub_23F0BDAC4(&v771, a3);
      v118 = *a2;
      v119 = v781;
      v120 = v771;
      if (!v771)
      {
        goto LABEL_682;
      }

      v121 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v771;
        v122 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v120 + 96))(&v784);
      }

      else
      {
LABEL_682:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v459 = v776;
          if (v776)
          {
            v460 = v780;
            v461 = v773;
            if (v782 == 1 && v773)
            {
              v462 = v771;
              v463 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v464 = v462;
                  (v463->__on_zero_shared)(v463);
                  std::__shared_weak_count::__release_weak(v463);
                  v462 = v464;
                }
              }

              (*(*v462 + 88))(v462, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v461 = v773;
            }

            v465 = (4 * v119);
            v466 = v459 - 1;
            if (v459 != 1)
            {
              v467 = 0;
              do
              {
                if (v465)
                {
                  v468 = *(v118 + 48);
                  v469 = 4 * v465;
                  v470 = v461;
                  do
                  {
                    sub_23F2F81EC(v468, v470++);
                    v469 -= 4;
                  }

                  while (v469);
                }

                v461 += v460;
                ++v467;
              }

              while (v467 != v466);
            }

            if (v465)
            {
              v733 = *(v118 + 48);
              v734 = 4 * v465;
              do
              {
                sub_23F2F81EC(v733, v461++);
                v734 -= 4;
              }

              while (v734);
            }
          }
        }
      }

      break;
    case 37:
      v770 = &unk_285181A28;
      sub_23F0BE51C(&v771, a3);
      v184 = *a2;
      v185 = v781;
      v186 = v771;
      if (!v771)
      {
        goto LABEL_889;
      }

      v187 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v771;
        v188 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v186 + 96))(&v784);
      }

      else
      {
LABEL_889:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v601 = v776;
          if (v776)
          {
            v602 = v780;
            v603 = v773;
            if (v782 == 1 && v773)
            {
              v604 = v771;
              v605 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v605->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v606 = v604;
                  (v605->__on_zero_shared)(v605);
                  std::__shared_weak_count::__release_weak(v605);
                  v604 = v606;
                }
              }

              (*(*v604 + 88))(v604, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v603 = v773;
            }

            v607 = (4 * v185);
            v608 = v601 - 1;
            if (v601 != 1)
            {
              v609 = 0;
              do
              {
                if (v607)
                {
                  v610 = *(v184 + 48);
                  v611 = v607;
                  v612 = v603;
                  do
                  {
                    sub_23F2F7BA4(v610, v612++);
                    --v611;
                  }

                  while (v611);
                }

                v603 += v602;
                ++v609;
              }

              while (v609 != v608);
            }

            if (v607)
            {
              v749 = *(v184 + 48);
              do
              {
                sub_23F2F7BA4(v749, v603++);
                --v607;
              }

              while (v607);
            }
          }
        }
      }

      break;
    case 38:
      v770 = &unk_285181B20;
      sub_23F0BEFCC(&v771, a3);
      v214 = *a2;
      v215 = v781;
      v216 = v771;
      if (!v771)
      {
        goto LABEL_977;
      }

      v217 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v771;
        v218 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v216 + 96))(&v784);
      }

      else
      {
LABEL_977:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v660 = v776;
          if (v776)
          {
            v661 = v780;
            v662 = v773;
            if (v782 == 1 && v773)
            {
              v663 = v771;
              v664 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v664->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v665 = v663;
                  (v664->__on_zero_shared)(v664);
                  std::__shared_weak_count::__release_weak(v664);
                  v663 = v665;
                }
              }

              (*(*v663 + 88))(v663, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v662 = v773;
            }

            v666 = (4 * v215);
            v667 = v660 - 1;
            if (v660 != 1)
            {
              v668 = 0;
              do
              {
                if (v666)
                {
                  v669 = *(v214 + 48);
                  v670 = 2 * v666;
                  v671 = v662;
                  do
                  {
                    sub_23F2F7D50(v669, v671++);
                    v670 -= 2;
                  }

                  while (v670);
                }

                v662 += v661;
                ++v668;
              }

              while (v668 != v667);
            }

            if (v666)
            {
              v751 = *(v214 + 48);
              v752 = 2 * v666;
              do
              {
                sub_23F2F7D50(v751, v662++);
                v752 -= 2;
              }

              while (v752);
            }
          }
        }
      }

      break;
    case 39:
      v770 = &unk_285180778;
      sub_23F0BFA7C(&v771, a3);
      v76 = *a2;
      v77 = v781;
      v78 = v771;
      if (!v771)
      {
        goto LABEL_558;
      }

      v79 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v771;
        v80 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v78 + 96))(&v784);
      }

      else
      {
LABEL_558:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v375 = v776;
      if (!v776)
      {
        break;
      }

      v376 = v780;
      v377 = v773;
      if (v782 == 1 && v773)
      {
        v378 = v771;
        v379 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v379->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v380 = v378;
            (v379->__on_zero_shared)(v379);
            std::__shared_weak_count::__release_weak(v379);
            v378 = v380;
          }
        }

        (*(*v378 + 88))(v378, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v377 = v773;
      }

      v381 = (4 * v77);
      v382 = v375 - 1;
      if (!v382)
      {
        goto LABEL_574;
      }

      if (v381)
      {
        v383 = 0;
        v384 = 2 * v376;
        do
        {
          v385 = 0;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v76 + 48), &v769);
            v377[v385++] = v769;
          }

          while (v381 != v385);
          v377 = (v377 + v384);
          ++v383;
        }

        while (v383 != v382);
LABEL_574:
        if (v381)
        {
          v386 = 2 * v381;
          do
          {
            v769 = 0;
            sub_23F2F7D50(*(v76 + 48), &v769);
            *v377++ = v769;
            v386 -= 2;
          }

          while (v386);
        }
      }

      break;
    case 40:
      v770 = &unk_285180870;
      sub_23F0C052C(&v771, a3);
      v58 = *a2;
      v59 = v781;
      v60 = v771;
      if (!v771)
      {
        goto LABEL_504;
      }

      v61 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }

        v60 = v771;
        v62 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v63 = v60;
            (v62->__on_zero_shared)(v62);
            std::__shared_weak_count::__release_weak(v62);
            v60 = v63;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v60 + 96))(&v784);
      }

      else
      {
LABEL_504:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v339 = v776;
          if (v776)
          {
            v340 = v780;
            v341 = v773;
            if (v782 == 1 && v773)
            {
              v342 = v771;
              v343 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v343->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v344 = v342;
                  (v343->__on_zero_shared)(v343);
                  std::__shared_weak_count::__release_weak(v343);
                  v342 = v344;
                }
              }

              (*(*v342 + 88))(v342, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v341 = v773;
            }

            v345 = (4 * v59);
            v346 = v339 - 1;
            if (v339 != 1)
            {
              v347 = 0;
              do
              {
                if (v345)
                {
                  v348 = *(v58 + 48);
                  v349 = 4 * v345;
                  v350 = v341;
                  do
                  {
                    sub_23F2F81EC(v348, v350++);
                    v349 -= 4;
                  }

                  while (v349);
                }

                v341 += v340;
                ++v347;
              }

              while (v347 != v346);
            }

            if (v345)
            {
              v724 = *(v58 + 48);
              v725 = 4 * v345;
              do
              {
                sub_23F2F81EC(v724, v341++);
                v725 -= 4;
              }

              while (v725);
            }
          }
        }
      }

      break;
    default:
      return;
  }

  v767 = v784;
  v784 = 0;
  if (v767)
  {
    (*(*v767 + 8))(v767);
  }

  v768 = v772;
  if (v772)
  {
    if (!atomic_fetch_add(&v772->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v768->__on_zero_shared)(v768);
      std::__shared_weak_count::__release_weak(v768);
    }
  }
}