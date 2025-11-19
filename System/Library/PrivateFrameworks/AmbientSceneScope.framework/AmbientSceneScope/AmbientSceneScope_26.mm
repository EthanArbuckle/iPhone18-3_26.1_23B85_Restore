void sub_23F1326EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13273C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394ED8))
  {
    sub_23F132854();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394EC0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F1328C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1328E0(uint64_t result)
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

void sub_23F132958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F132A10(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F132AB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 19)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F132EAC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F132E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F132EAC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394EF8))
  {
    sub_23F132FC4();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394EE0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F133034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F133050(uint64_t result)
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

void sub_23F1330C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F133180(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F133224(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 20)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13361C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F1335CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13361C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F18))
  {
    sub_23F133734();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394F00, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F1337A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1337C0(uint64_t result)
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

void sub_23F133838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1338F0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F133994(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 22)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F133D8C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F133D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F133D8C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F38))
  {
    sub_23F133EA4();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394F20, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F133F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F133F30(uint64_t result)
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

void sub_23F133FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F134060(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F134104(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 23)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1344FC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F1344AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1344FC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F58))
  {
    sub_23F134614();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394F40, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F134684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1346A0(uint64_t result)
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

void sub_23F134718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1347D0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F134874(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 24)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F134C6C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F134C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F134C6C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F78))
  {
    sub_23F134D84();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394F60, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F134DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F134E10(uint64_t result)
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

void sub_23F134E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F134F40(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F134FE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1353D8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F135388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1353D8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F98))
  {
    sub_23F1354F0();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394F80, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F135560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13557C(uint64_t result)
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

void sub_23F1355F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1356AC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F135750(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 26)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F135B48(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F135AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F135B48(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394FB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394FB8))
  {
    sub_23F135C60();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394FA0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F135CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F135CEC(uint64_t result)
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

void sub_23F135D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F135E1C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F135EC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 27)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1362B8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F136268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1362B8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394FD8))
  {
    sub_23F1363D0();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394FC0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F136440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13645C(uint64_t result)
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

void sub_23F1364D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13658C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F136630(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 28)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F136A28(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F1369D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F136A28(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394FF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394FF8))
  {
    sub_23F136B40();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394FE0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F136BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F136BCC(uint64_t result)
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

void sub_23F136C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F136CFC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F136DA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F137194(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F137144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F137194(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395018))
  {
    sub_23F1372AC();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395000, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F13731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F137338(uint64_t result)
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

void sub_23F1373B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F137468(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F13750C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 30)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F137904(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F1378B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F137904(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395038))
  {
    sub_23F137A1C();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395020, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F137A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F137AA8(uint64_t result)
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

void sub_23F137B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F137BD8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F137C7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F138074(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F138024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F138074(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395058))
  {
    sub_23F13818C();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395040, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F1381FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F138218(uint64_t result)
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

void sub_23F138290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F138348(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F1383EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1387E4(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F138794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1387E4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395078))
  {
    sub_23F1388FC();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395060, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F13896C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F138988(uint64_t result)
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

void sub_23F138A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F138AB8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F138B5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 33)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F138F50(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F138F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F138F50(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395098))
  {
    sub_23F139068();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395080, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F1390D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1390F4(uint64_t result)
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

void sub_23F13916C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F139224(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F1392C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 34)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1396C0(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F139670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1396C0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3950B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3950B8))
  {
    sub_23F1397D8();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3950A0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F139848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F139864(uint64_t result)
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

void sub_23F1398DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F139994(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F139A38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 35)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F139E30(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F139DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F139E30(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3950D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3950D8))
  {
    sub_23F139F48();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3950C0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F139FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F139FD4(uint64_t result)
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

void sub_23F13A04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13A104(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F13A1A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 36)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13A5A0(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F13A550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13A5A0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3950F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3950F8))
  {
    sub_23F13A6B8();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3950E0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F13A728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13A744(uint64_t result)
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

void sub_23F13A7BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13A874(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F13A918(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13AD0C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F13ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13AD0C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395118))
  {
    sub_23F13AE24();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395100, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F13AE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13AEB0(uint64_t result)
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

void sub_23F13AF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13AFE0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F13B084(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13B47C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F13B42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13B47C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395138))
  {
    sub_23F13B594();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395120, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F13B604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13B620(uint64_t result)
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

void sub_23F13B698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13B750(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F13B7F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 39)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13BBEC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F13BB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13BBEC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395158))
  {
    sub_23F13BD04();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395140, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F13BD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13BD90(uint64_t result)
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

void sub_23F13BE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13BEC0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F13BF64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 40)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13C35C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F13C30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13C35C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395178))
  {
    sub_23F13C474();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E395160, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F13C4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F13C500(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      v771 = &unk_28517DD38;
      sub_23F08C868(a3, &v772);
      v4 = *a2;
      v5 = v775;
      v6 = v772;
      if (!v772)
      {
        goto LABEL_957;
      }

      v7 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v772;
        v8 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v6 + 96))(&v785);
      }

      else
      {
LABEL_957:
        v785 = 0;
      }

      if (v775)
      {
        v579 = v776;
        if (v776)
        {
          v580 = v778;
          v581 = v774;
          if (v779 == 1 && v774)
          {
            v582 = v772;
            v583 = v773;
            if (v773)
            {
              atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v583->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v584 = v582;
                (v583->__on_zero_shared)(v583);
                std::__shared_weak_count::__release_weak(v583);
                v582 = v584;
              }
            }

            (*(*v582 + 88))(v582, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v581 = v774;
          }

          v585 = v579 - 1;
          if (v585)
          {
            for (i = 0; i != v585; ++i)
            {
              v587 = *(v4 + 24);
              if (*(v587 + 40) == 1)
              {
                v786 = (v587 + 16);
                if (v5)
                {
                  v588 = v5;
                  v589 = v581;
                  do
                  {
                    sub_23F2FC63C(&v786, v589++);
                    --v588;
                  }

                  while (v588);
                }
              }

              else if (v5)
              {
                for (j = 0; j != v5; ++j)
                {
                  v591 = *(v581 + j);
                  if (v591 < 0)
                  {
                    LOBYTE(v786) = -52;
                    BYTE1(v786) = v591;
                  }

                  else
                  {
                    LOBYTE(v786) = *(v581 + j);
                  }

                  v592 = *(v587 + 8);
                  std::ostream::write();
                }
              }

              v581 = (v581 + v580);
            }
          }

          v786 = v581;
          v787 = v5;
          sub_23F2F787C(v4, &v786);
        }
      }

      goto LABEL_1329;
    case 2:
      v771 = &unk_28517DFB0;
      sub_23F08DA84(a3, &v772);
      v44 = *a2;
      v162 = v775;
      v163 = v772;
      if (!v772)
      {
        goto LABEL_944;
      }

      v164 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v164->__on_zero_shared)(v164);
          std::__shared_weak_count::__release_weak(v164);
        }

        v163 = v772;
        v165 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v166 = v163;
            (v165->__on_zero_shared)(v165);
            std::__shared_weak_count::__release_weak(v165);
            v163 = v166;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v163 + 96))(&v785);
      }

      else
      {
LABEL_944:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      v572 = v776;
      if (!v776)
      {
        goto LABEL_1329;
      }

      v573 = v778;
      v310 = v774;
      if (v779 == 1 && v774)
      {
        v574 = v772;
        v575 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v575->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v576 = v574;
            (v575->__on_zero_shared)(v575);
            std::__shared_weak_count::__release_weak(v575);
            v574 = v576;
          }
        }

        (*(*v574 + 88))(v574, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v577 = v572 - 1;
      if (v577)
      {
        v578 = 2 * v573;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v578);
          --v577;
        }

        while (v577);
      }

      goto LABEL_1101;
    case 3:
      v771 = &unk_285181F28;
      sub_23F12B4EC(a3, &v772);
      v156 = *a2;
      v157 = v775;
      v158 = v772;
      if (!v772)
      {
        goto LABEL_921;
      }

      v159 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v159->__on_zero_shared)(v159);
          std::__shared_weak_count::__release_weak(v159);
        }

        v158 = v772;
        v160 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v161 = v158;
            (v160->__on_zero_shared)(v160);
            std::__shared_weak_count::__release_weak(v160);
            v158 = v161;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v158 + 96))(&v785);
      }

      else
      {
LABEL_921:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      v558 = v776;
      if (!v776)
      {
        goto LABEL_1329;
      }

      v559 = v778;
      v560 = v774;
      if (v779 == 1 && v774)
      {
        v561 = v772;
        v562 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v562->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v563 = v561;
            (v562->__on_zero_shared)(v562);
            std::__shared_weak_count::__release_weak(v562);
            v561 = v563;
          }
        }

        (*(*v561 + 88))(v561, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v560 = v774;
      }

      v564 = v558 - 1;
      if (!v564)
      {
        goto LABEL_1265;
      }

      if (v157)
      {
        v565 = 0;
        v566 = 2 * v559;
        do
        {
          for (k = 0; k != v157; ++k)
          {
            v568 = v560[k];
            v770 = v560[k];
            v569 = *(v156 + 24);
            if (*(v569 + 40) == 1)
            {
              v786 = (v569 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v568 > 0x7F)
            {
              if (v568 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v568);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v568;
              }

              v571 = *(v569 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v568;
              v570 = *(v569 + 8);
              std::ostream::write();
            }
          }

          v560 = (v560 + v566);
          ++v565;
        }

        while (v565 != v564);
LABEL_1265:
        if (v157)
        {
          v743 = 2 * v157;
          do
          {
            v744 = *v560;
            v770 = *v560;
            v745 = *(v156 + 24);
            if (*(v745 + 40) == 1)
            {
              v786 = (v745 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v744 > 0x7F)
            {
              if (v744 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v744);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v744;
              }

              v747 = *(v745 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v744;
              v746 = *(v745 + 8);
              std::ostream::write();
            }

            ++v560;
            v743 -= 2;
          }

          while (v743);
        }
      }

      goto LABEL_1329;
    case 4:
      v771 = &unk_285182020;
      sub_23F12BBC8(a3, &v772);
      v55 = *a2;
      v99 = v775;
      v100 = v772;
      if (!v772)
      {
        goto LABEL_690;
      }

      v101 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v101->__on_zero_shared)(v101);
          std::__shared_weak_count::__release_weak(v101);
        }

        v100 = v772;
        v102 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v103 = v100;
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
            v100 = v103;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v100 + 96))(&v785);
      }

      else
      {
LABEL_690:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      v417 = v776;
      if (!v776)
      {
        goto LABEL_1329;
      }

      v418 = v778;
      v331 = v774;
      if (v779 == 1 && v774)
      {
        v419 = v772;
        v420 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v420->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v421 = v419;
            (v420->__on_zero_shared)(v420);
            std::__shared_weak_count::__release_weak(v420);
            v419 = v421;
          }
        }

        (*(*v419 + 88))(v419, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v422 = v417 - 1;
      if (v422)
      {
        v423 = 0;
        v424 = 4 * v418;
        do
        {
          v425 = *(v55 + 24);
          if (*(v425 + 40) == 1)
          {
            v786 = (v425 + 16);
            if (v99)
            {
              v426 = 4 * v99;
              v427 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v427++);
                v426 -= 4;
              }

              while (v426);
            }
          }

          else if (v99)
          {
            v428 = 0;
            do
            {
              v429 = *(v331 + v428);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v429);
              v430 = *(v425 + 8);
              std::ostream::write();
              v428 += 4;
            }

            while (4 * v99 != v428);
          }

          v331 = (v331 + v424);
          ++v423;
        }

        while (v423 != v422);
      }

      goto LABEL_1199;
    case 5:
      v771 = &unk_285182118;
      sub_23F12C2A4(a3, &v772);
      v22 = *a2;
      v141 = v782;
      v142 = v772;
      if (!v772)
      {
        goto LABEL_853;
      }

      v143 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v143->__on_zero_shared)(v143);
          std::__shared_weak_count::__release_weak(v143);
        }

        v142 = v772;
        v144 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v145 = v142;
            (v144->__on_zero_shared)(v144);
            std::__shared_weak_count::__release_weak(v144);
            v142 = v145;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v142 + 96))(&v785);
      }

      else
      {
LABEL_853:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v517 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v518 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v519 = v772;
        v520 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v520->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v521 = v519;
            (v520->__on_zero_shared)(v520);
            std::__shared_weak_count::__release_weak(v520);
            v519 = v521;
          }
        }

        (*(*v519 + 88))(v519, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (2 * v141);
      v522 = v517 - 1;
      if (v522)
      {
        for (m = 0; m != v522; ++m)
        {
          v524 = *(v22 + 24);
          if (*(v524 + 40) == 1)
          {
            v786 = (v524 + 16);
            if (v256)
            {
              v525 = v256;
              v526 = v252;
              do
              {
                sub_23F2FC63C(&v786, v526++);
                --v525;
              }

              while (v525);
            }
          }

          else if (v256)
          {
            for (n = 0; n != v256; ++n)
            {
              v528 = *(v252 + n);
              if (v528 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v528;
              }

              else
              {
                LOBYTE(v786) = *(v252 + n);
              }

              v529 = *(v524 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v518);
        }
      }

      goto LABEL_1198;
    case 6:
      v771 = &unk_285182210;
      sub_23F12CA10(a3, &v772);
      v44 = *a2;
      v94 = v782;
      v95 = v772;
      if (!v772)
      {
        goto LABEL_676;
      }

      v96 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v96->__on_zero_shared)(v96);
          std::__shared_weak_count::__release_weak(v96);
        }

        v95 = v772;
        v97 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v98 = v95;
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
            v95 = v98;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v95 + 96))(&v785);
      }

      else
      {
LABEL_676:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v410 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v411 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v412 = v772;
        v413 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v413->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v414 = v412;
            (v413->__on_zero_shared)(v413);
            std::__shared_weak_count::__release_weak(v413);
            v412 = v414;
          }
        }

        (*(*v412 + 88))(v412, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (2 * v94);
      v415 = v410 - 1;
      if (v415)
      {
        v416 = 2 * v411;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v416);
          --v415;
        }

        while (v415);
      }

      goto LABEL_1101;
    case 7:
      v771 = &unk_285182308;
      sub_23F12D180(a3, &v772);
      v66 = *a2;
      v67 = v782;
      v68 = v772;
      if (!v772)
      {
        goto LABEL_576;
      }

      v69 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v69->__on_zero_shared)(v69);
          std::__shared_weak_count::__release_weak(v69);
        }

        v68 = v772;
        v70 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v71 = v68;
            (v70->__on_zero_shared)(v70);
            std::__shared_weak_count::__release_weak(v70);
            v68 = v71;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v68 + 96))(&v785);
      }

      else
      {
LABEL_576:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v351 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v352 = v781;
      v353 = v774;
      if (v783 == 1 && v774)
      {
        v354 = v772;
        v355 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v355->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v356 = v354;
            (v355->__on_zero_shared)(v355);
            std::__shared_weak_count::__release_weak(v355);
            v354 = v356;
          }
        }

        (*(*v354 + 88))(v354, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v353 = v774;
      }

      v357 = (2 * v67);
      v358 = v351 - 1;
      if (!v358)
      {
        goto LABEL_1221;
      }

      if (v357)
      {
        v359 = 0;
        v360 = 2 * v352;
        do
        {
          v361 = 0;
          do
          {
            v362 = v353[v361];
            v770 = v353[v361];
            v363 = *(v66 + 24);
            if (*(v363 + 40) == 1)
            {
              v786 = (v363 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v362 > 0x7F)
            {
              if (v362 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v362);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v362;
              }

              v365 = *(v363 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v362;
              v364 = *(v363 + 8);
              std::ostream::write();
            }

            ++v361;
          }

          while (v357 != v361);
          v353 = (v353 + v360);
          ++v359;
        }

        while (v359 != v358);
LABEL_1221:
        if (v357)
        {
          v723 = 2 * v357;
          do
          {
            v724 = *v353;
            v770 = *v353;
            v725 = *(v66 + 24);
            if (*(v725 + 40) == 1)
            {
              v786 = (v725 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v724 > 0x7F)
            {
              if (v724 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v724);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v724;
              }

              v727 = *(v725 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v724;
              v726 = *(v725 + 8);
              std::ostream::write();
            }

            ++v353;
            v723 -= 2;
          }

          while (v723);
        }
      }

      goto LABEL_1329;
    case 8:
      v771 = &unk_285182400;
      sub_23F12D8F0(a3, &v772);
      v55 = *a2;
      v151 = v782;
      v152 = v772;
      if (!v772)
      {
        goto LABEL_899;
      }

      v153 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v153->__on_zero_shared)(v153);
          std::__shared_weak_count::__release_weak(v153);
        }

        v152 = v772;
        v154 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v155 = v152;
            (v154->__on_zero_shared)(v154);
            std::__shared_weak_count::__release_weak(v154);
            v152 = v155;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v152 + 96))(&v785);
      }

      else
      {
LABEL_899:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v544 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v545 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v546 = v772;
        v547 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v547->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v548 = v546;
            (v547->__on_zero_shared)(v547);
            std::__shared_weak_count::__release_weak(v547);
            v546 = v548;
          }
        }

        (*(*v546 + 88))(v546, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (2 * v151);
      v549 = v544 - 1;
      if (v549)
      {
        v550 = 0;
        v551 = 4 * v545;
        do
        {
          v552 = *(v55 + 24);
          if (*(v552 + 40) == 1)
          {
            v786 = (v552 + 16);
            if (v99)
            {
              v553 = 4 * v99;
              v554 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v554++);
                v553 -= 4;
              }

              while (v553);
            }
          }

          else if (v99)
          {
            v555 = 0;
            do
            {
              v556 = *(v331 + v555);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v556);
              v557 = *(v552 + 8);
              std::ostream::write();
              v555 += 4;
            }

            while (4 * v99 != v555);
          }

          v331 = (v331 + v551);
          ++v550;
        }

        while (v550 != v549);
      }

      goto LABEL_1199;
    case 9:
      v771 = &unk_2851824F8;
      sub_23F12E060(a3, &v772);
      v135 = *a2;
      v136 = v782;
      v137 = v772;
      if (!v772)
      {
        goto LABEL_829;
      }

      v138 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v138->__on_zero_shared)(v138);
          std::__shared_weak_count::__release_weak(v138);
        }

        v137 = v772;
        v139 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v140 = v137;
            (v139->__on_zero_shared)(v139);
            std::__shared_weak_count::__release_weak(v139);
            v137 = v140;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v137 + 96))(&v785);
      }

      else
      {
LABEL_829:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v502 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v503 = v781;
      v504 = v774;
      if (v783 == 1 && v774)
      {
        v505 = v772;
        v506 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v506->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v507 = v505;
            (v506->__on_zero_shared)(v506);
            std::__shared_weak_count::__release_weak(v506);
            v505 = v507;
          }
        }

        (*(*v505 + 88))(v505, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v504 = v774;
      }

      v508 = (3 * v136);
      v509 = v502 - 1;
      if (v509)
      {
        for (ii = 0; ii != v509; ++ii)
        {
          v511 = *(v135 + 24);
          if (*(v511 + 40) == 1)
          {
            v786 = (v511 + 16);
            if (v136)
            {
              v512 = (3 * v136);
              v513 = v504;
              do
              {
                sub_23F2FC63C(&v786, v513++);
                --v512;
              }

              while (v512);
            }
          }

          else if (v136)
          {
            v514 = 0;
            do
            {
              v515 = *(v504 + v514);
              if (v515 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v515;
              }

              else
              {
                LOBYTE(v786) = *(v504 + v514);
              }

              v516 = *(v511 + 8);
              std::ostream::write();
              ++v514;
            }

            while (v508 != v514);
          }

          v504 = (v504 + v503);
        }
      }

      goto LABEL_1209;
    case 10:
      v771 = &unk_2851825F0;
      sub_23F12E7CC(a3, &v772);
      v44 = *a2;
      v178 = v782;
      v179 = v772;
      if (!v772)
      {
        goto LABEL_1028;
      }

      v180 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v180->__on_zero_shared)(v180);
          std::__shared_weak_count::__release_weak(v180);
        }

        v179 = v772;
        v181 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v182 = v179;
            (v181->__on_zero_shared)(v181);
            std::__shared_weak_count::__release_weak(v181);
            v179 = v182;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v179 + 96))(&v785);
      }

      else
      {
LABEL_1028:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v621 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v622 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v623 = v772;
        v624 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v624->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v625 = v623;
            (v624->__on_zero_shared)(v624);
            std::__shared_weak_count::__release_weak(v624);
            v623 = v625;
          }
        }

        (*(*v623 + 88))(v623, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (3 * v178);
      v626 = v621 - 1;
      if (v626)
      {
        v627 = 2 * v622;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v627);
          --v626;
        }

        while (v626);
      }

      goto LABEL_1101;
    case 11:
      v771 = &unk_2851826E8;
      sub_23F12EF3C(a3, &v772);
      v172 = *a2;
      v173 = v782;
      v174 = v772;
      if (!v772)
      {
        goto LABEL_1004;
      }

      v175 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v772;
        v176 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v174 + 96))(&v785);
      }

      else
      {
LABEL_1004:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v606 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v607 = v781;
      v608 = v774;
      if (v783 == 1 && v774)
      {
        v609 = v772;
        v610 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v610->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v611 = v609;
            (v610->__on_zero_shared)(v610);
            std::__shared_weak_count::__release_weak(v610);
            v609 = v611;
          }
        }

        (*(*v609 + 88))(v609, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v608 = v774;
      }

      v612 = (3 * v173);
      v613 = v606 - 1;
      if (!v613)
      {
        goto LABEL_1306;
      }

      if (v173)
      {
        v614 = 0;
        v615 = 2 * v607;
        do
        {
          v616 = 0;
          do
          {
            v617 = v608[v616];
            v770 = v608[v616];
            v618 = *(v172 + 24);
            if (*(v618 + 40) == 1)
            {
              v786 = (v618 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v617 > 0x7F)
            {
              if (v617 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v617);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v617;
              }

              v620 = *(v618 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v617;
              v619 = *(v618 + 8);
              std::ostream::write();
            }

            ++v616;
          }

          while (3 * v173 != v616);
          v608 = (v608 + v615);
          ++v614;
        }

        while (v614 != v613);
        v612 = (3 * v173);
LABEL_1306:
        if (v173)
        {
          v758 = 2 * v612;
          do
          {
            v759 = *v608;
            v770 = *v608;
            v760 = *(v172 + 24);
            if (*(v760 + 40) == 1)
            {
              v786 = (v760 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v759 > 0x7F)
            {
              if (v759 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v759);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v759;
              }

              v762 = *(v760 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v759;
              v761 = *(v760 + 8);
              std::ostream::write();
            }

            ++v608;
            v758 -= 2;
          }

          while (v758);
        }
      }

      goto LABEL_1329;
    case 12:
      v771 = &unk_2851827E0;
      sub_23F12F6AC(a3, &v772);
      v28 = *a2;
      v29 = v782;
      v30 = v772;
      if (!v772)
      {
        goto LABEL_434;
      }

      v31 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v772;
        v32 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v30 + 96))(&v785);
      }

      else
      {
LABEL_434:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v265 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v266 = v781;
      v267 = v774;
      if (v783 == 1 && v774)
      {
        v268 = v772;
        v269 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v269->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v270 = v268;
            (v269->__on_zero_shared)(v269);
            std::__shared_weak_count::__release_weak(v269);
            v268 = v270;
          }
        }

        (*(*v268 + 88))(v268, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v267 = v774;
      }

      v271 = (3 * v29);
      v272 = v265 - 1;
      if (v272)
      {
        v273 = 0;
        v274 = 4 * v266;
        do
        {
          v275 = *(v28 + 24);
          if (*(v275 + 40) == 1)
          {
            v786 = (v275 + 16);
            if (v29)
            {
              v276 = 4 * (3 * v29);
              v277 = v267;
              do
              {
                sub_23F2FE06C(&v770, &v786, v277++);
                v276 -= 4;
              }

              while (v276);
            }
          }

          else if (v29)
          {
            v278 = 0;
            do
            {
              v279 = *(v267 + v278);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v279);
              v280 = *(v275 + 8);
              std::ostream::write();
              v278 += 4;
            }

            while (4 * (3 * v29) != v278);
          }

          v267 = (v267 + v274);
          ++v273;
        }

        while (v273 != v272);
        v271 = (3 * v29);
      }

      goto LABEL_1292;
    case 13:
      v771 = &unk_2851828D8;
      sub_23F12FE1C(a3, &v772);
      v22 = *a2;
      v50 = v782;
      v51 = v772;
      if (!v772)
      {
        goto LABEL_516;
      }

      v52 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v52->__on_zero_shared)(v52);
          std::__shared_weak_count::__release_weak(v52);
        }

        v51 = v772;
        v53 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v54 = v51;
            (v53->__on_zero_shared)(v53);
            std::__shared_weak_count::__release_weak(v53);
            v51 = v54;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v51 + 96))(&v785);
      }

      else
      {
LABEL_516:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v316 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v317 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v318 = v772;
        v319 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v319->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v320 = v318;
            (v319->__on_zero_shared)(v319);
            std::__shared_weak_count::__release_weak(v319);
            v318 = v320;
          }
        }

        (*(*v318 + 88))(v318, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v50);
      v321 = v316 - 1;
      if (v321)
      {
        for (jj = 0; jj != v321; ++jj)
        {
          v323 = *(v22 + 24);
          if (*(v323 + 40) == 1)
          {
            v786 = (v323 + 16);
            if (v256)
            {
              v324 = v256;
              v325 = v252;
              do
              {
                sub_23F2FC63C(&v786, v325++);
                --v324;
              }

              while (v324);
            }
          }

          else if (v256)
          {
            for (kk = 0; kk != v256; ++kk)
            {
              v327 = *(v252 + kk);
              if (v327 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v327;
              }

              else
              {
                LOBYTE(v786) = *(v252 + kk);
              }

              v328 = *(v323 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v317);
        }
      }

      goto LABEL_1198;
    case 14:
      v771 = &unk_2851829D0;
      sub_23F130588(a3, &v772);
      v44 = *a2;
      v45 = v782;
      v46 = v772;
      if (!v772)
      {
        goto LABEL_502;
      }

      v47 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
        }

        v46 = v772;
        v48 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v49 = v46;
            (v48->__on_zero_shared)(v48);
            std::__shared_weak_count::__release_weak(v48);
            v46 = v49;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v46 + 96))(&v785);
      }

      else
      {
LABEL_502:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v308 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v309 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v311 = v772;
        v312 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v312->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v313 = v311;
            (v312->__on_zero_shared)(v312);
            std::__shared_weak_count::__release_weak(v312);
            v311 = v313;
          }
        }

        (*(*v311 + 88))(v311, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v45);
      v314 = v308 - 1;
      if (v314)
      {
        v315 = 2 * v309;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v315);
          --v314;
        }

        while (v314);
      }

      goto LABEL_1101;
    case 15:
      v771 = &unk_285182AC8;
      sub_23F130CF8(a3, &v772);
      v198 = *a2;
      v199 = v782;
      v200 = v772;
      if (!v772)
      {
        goto LABEL_1102;
      }

      v201 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v201->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v201->__on_zero_shared)(v201);
          std::__shared_weak_count::__release_weak(v201);
        }

        v200 = v772;
        v202 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v203 = v200;
            (v202->__on_zero_shared)(v202);
            std::__shared_weak_count::__release_weak(v202);
            v200 = v203;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v200 + 96))(&v785);
      }

      else
      {
LABEL_1102:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v662 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v663 = v781;
      v664 = v774;
      if (v783 == 1 && v774)
      {
        v665 = v772;
        v666 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v666->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v667 = v665;
            (v666->__on_zero_shared)(v666);
            std::__shared_weak_count::__release_weak(v666);
            v665 = v667;
          }
        }

        (*(*v665 + 88))(v665, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v664 = v774;
      }

      v668 = (4 * v199);
      v669 = v662 - 1;
      if (!v669)
      {
        goto LABEL_1276;
      }

      if (v668)
      {
        v670 = 0;
        v671 = 2 * v663;
        do
        {
          v672 = 0;
          do
          {
            v673 = v664[v672];
            v770 = v664[v672];
            v674 = *(v198 + 24);
            if (*(v674 + 40) == 1)
            {
              v786 = (v674 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v673 > 0x7F)
            {
              if (v673 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v673);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v673;
              }

              v676 = *(v674 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v673;
              v675 = *(v674 + 8);
              std::ostream::write();
            }

            ++v672;
          }

          while (v668 != v672);
          v664 = (v664 + v671);
          ++v670;
        }

        while (v670 != v669);
LABEL_1276:
        if (v668)
        {
          v748 = 2 * v668;
          do
          {
            v749 = *v664;
            v770 = *v664;
            v750 = *(v198 + 24);
            if (*(v750 + 40) == 1)
            {
              v786 = (v750 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v749 > 0x7F)
            {
              if (v749 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v749);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v749;
              }

              v752 = *(v750 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v749;
              v751 = *(v750 + 8);
              std::ostream::write();
            }

            ++v664;
            v748 -= 2;
          }

          while (v748);
        }
      }

      goto LABEL_1329;
    case 16:
      v771 = &unk_285182BC0;
      sub_23F131468(a3, &v772);
      v55 = *a2;
      v146 = v782;
      v147 = v772;
      if (!v772)
      {
        goto LABEL_877;
      }

      v148 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v148->__on_zero_shared)(v148);
          std::__shared_weak_count::__release_weak(v148);
        }

        v147 = v772;
        v149 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v150 = v147;
            (v149->__on_zero_shared)(v149);
            std::__shared_weak_count::__release_weak(v149);
            v147 = v150;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v147 + 96))(&v785);
      }

      else
      {
LABEL_877:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v530 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v531 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v532 = v772;
        v533 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v533->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v534 = v532;
            (v533->__on_zero_shared)(v533);
            std::__shared_weak_count::__release_weak(v533);
            v532 = v534;
          }
        }

        (*(*v532 + 88))(v532, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v146);
      v535 = v530 - 1;
      if (v535)
      {
        v536 = 0;
        v537 = 4 * v531;
        do
        {
          v538 = *(v55 + 24);
          if (*(v538 + 40) == 1)
          {
            v786 = (v538 + 16);
            if (v99)
            {
              v539 = 4 * v99;
              v540 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v540++);
                v539 -= 4;
              }

              while (v539);
            }
          }

          else if (v99)
          {
            v541 = 0;
            do
            {
              v542 = *(v331 + v541);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v542);
              v543 = *(v538 + 8);
              std::ostream::write();
              v541 += 4;
            }

            while (4 * v99 != v541);
          }

          v331 = (v331 + v537);
          ++v536;
        }

        while (v536 != v535);
      }

      goto LABEL_1199;
    case 17:
      v771 = &unk_285182CB8;
      sub_23F131BD8(a3, &v772);
      v135 = *a2;
      v204 = v782;
      v205 = v772;
      if (!v772)
      {
        goto LABEL_1126;
      }

      v206 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v206->__on_zero_shared)(v206);
          std::__shared_weak_count::__release_weak(v206);
        }

        v205 = v772;
        v207 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v208 = v205;
            (v207->__on_zero_shared)(v207);
            std::__shared_weak_count::__release_weak(v207);
            v205 = v208;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v205 + 96))(&v785);
      }

      else
      {
LABEL_1126:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v677 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v678 = v781;
      v504 = v774;
      if (v783 == 1 && v774)
      {
        v679 = v772;
        v680 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v680->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v681 = v679;
            (v680->__on_zero_shared)(v680);
            std::__shared_weak_count::__release_weak(v680);
            v679 = v681;
          }
        }

        (*(*v679 + 88))(v679, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v504 = v774;
      }

      v508 = (3 * v204);
      v682 = v677 - 1;
      if (v682)
      {
        for (mm = 0; mm != v682; ++mm)
        {
          v684 = *(v135 + 24);
          if (*(v684 + 40) == 1)
          {
            v786 = (v684 + 16);
            if (v204)
            {
              v685 = (3 * v204);
              v686 = v504;
              do
              {
                sub_23F2FC63C(&v786, v686++);
                --v685;
              }

              while (v685);
            }
          }

          else if (v204)
          {
            v687 = 0;
            do
            {
              v688 = *(v504 + v687);
              if (v688 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v688;
              }

              else
              {
                LOBYTE(v786) = *(v504 + v687);
              }

              v689 = *(v684 + 8);
              std::ostream::write();
              ++v687;
            }

            while (v508 != v687);
          }

          v504 = (v504 + v678);
        }
      }

      goto LABEL_1209;
    case 18:
      v771 = &unk_285182DB0;
      sub_23F132344(a3, &v772);
      v44 = *a2;
      v61 = v782;
      v62 = v772;
      if (!v772)
      {
        goto LABEL_562;
      }

      v63 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v63->__on_zero_shared)(v63);
          std::__shared_weak_count::__release_weak(v63);
        }

        v62 = v772;
        v64 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v65 = v62;
            (v64->__on_zero_shared)(v64);
            std::__shared_weak_count::__release_weak(v64);
            v62 = v65;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v62 + 96))(&v785);
      }

      else
      {
LABEL_562:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v344 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v345 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v346 = v772;
        v347 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v347->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v348 = v346;
            (v347->__on_zero_shared)(v347);
            std::__shared_weak_count::__release_weak(v347);
            v346 = v348;
          }
        }

        (*(*v346 + 88))(v346, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (3 * v61);
      v349 = v344 - 1;
      if (v349)
      {
        v350 = 2 * v345;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v350);
          --v349;
        }

        while (v349);
      }

      goto LABEL_1101;
    case 19:
      v771 = &unk_285182EA8;
      sub_23F132AB4(a3, &v772);
      v16 = *a2;
      v17 = v782;
      v18 = v772;
      if (!v772)
      {
        goto LABEL_386;
      }

      v19 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v772;
        v20 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v18 + 96))(&v785);
      }

      else
      {
LABEL_386:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v235 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v236 = v781;
      v237 = v774;
      if (v783 == 1 && v774)
      {
        v238 = v772;
        v239 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v239->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v240 = v238;
            (v239->__on_zero_shared)(v239);
            std::__shared_weak_count::__release_weak(v239);
            v238 = v240;
          }
        }

        (*(*v238 + 88))(v238, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v237 = v774;
      }

      v241 = (3 * v17);
      v242 = v235 - 1;
      if (!v242)
      {
        goto LABEL_1294;
      }

      if (v17)
      {
        v243 = 0;
        v244 = 2 * v236;
        do
        {
          v245 = 0;
          do
          {
            v246 = v237[v245];
            v770 = v237[v245];
            v247 = *(v16 + 24);
            if (*(v247 + 40) == 1)
            {
              v786 = (v247 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v246 > 0x7F)
            {
              if (v246 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v246);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v246;
              }

              v249 = *(v247 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v246;
              v248 = *(v247 + 8);
              std::ostream::write();
            }

            ++v245;
          }

          while (3 * v17 != v245);
          v237 = (v237 + v244);
          ++v243;
        }

        while (v243 != v242);
        v241 = (3 * v17);
LABEL_1294:
        if (v17)
        {
          v753 = 2 * v241;
          do
          {
            v754 = *v237;
            v770 = *v237;
            v755 = *(v16 + 24);
            if (*(v755 + 40) == 1)
            {
              v786 = (v755 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v754 > 0x7F)
            {
              if (v754 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v754);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v754;
              }

              v757 = *(v755 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v754;
              v756 = *(v755 + 8);
              std::ostream::write();
            }

            ++v237;
            v753 -= 2;
          }

          while (v753);
        }
      }

      goto LABEL_1329;
    case 20:
      v771 = &unk_285182FA0;
      sub_23F133224(a3, &v772);
      v28 = *a2;
      v188 = v782;
      v189 = v772;
      if (!v772)
      {
        goto LABEL_1066;
      }

      v190 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v190->__on_zero_shared)(v190);
          std::__shared_weak_count::__release_weak(v190);
        }

        v189 = v772;
        v191 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v192 = v189;
            (v191->__on_zero_shared)(v191);
            std::__shared_weak_count::__release_weak(v191);
            v189 = v192;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v189 + 96))(&v785);
      }

      else
      {
LABEL_1066:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v641 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v642 = v781;
      v267 = v774;
      if (v783 == 1 && v774)
      {
        v643 = v772;
        v644 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v644->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v645 = v643;
            (v644->__on_zero_shared)(v644);
            std::__shared_weak_count::__release_weak(v644);
            v643 = v645;
          }
        }

        (*(*v643 + 88))(v643, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v267 = v774;
      }

      v271 = (3 * v188);
      v646 = v641 - 1;
      if (v646)
      {
        v647 = 0;
        v648 = 4 * v642;
        do
        {
          v649 = *(v28 + 24);
          if (*(v649 + 40) == 1)
          {
            v786 = (v649 + 16);
            if (v188)
            {
              v650 = 4 * (3 * v188);
              v651 = v267;
              do
              {
                sub_23F2FE06C(&v770, &v786, v651++);
                v650 -= 4;
              }

              while (v650);
            }
          }

          else if (v188)
          {
            v652 = 0;
            do
            {
              v653 = *(v267 + v652);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v653);
              v654 = *(v649 + 8);
              std::ostream::write();
              v652 += 4;
            }

            while (4 * (3 * v188) != v652);
          }

          v267 = (v267 + v648);
          ++v647;
        }

        while (v647 != v646);
        v271 = (3 * v188);
      }

      goto LABEL_1292;
    case 21:
      v771 = &unk_28517E0A8;
      sub_23F08E4D4(a3, &v772);
      v135 = *a2;
      v215 = v782;
      v216 = v772;
      if (!v772)
      {
        goto LABEL_1174;
      }

      v217 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v772;
        v218 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v216 + 96))(&v785);
      }

      else
      {
LABEL_1174:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v705 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v706 = v781;
      v504 = v774;
      if (v783 == 1 && v774)
      {
        v707 = v772;
        v708 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v708->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v709 = v707;
            (v708->__on_zero_shared)(v708);
            std::__shared_weak_count::__release_weak(v708);
            v707 = v709;
          }
        }

        (*(*v707 + 88))(v707, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v504 = v774;
      }

      v508 = (3 * v215);
      v710 = v705 - 1;
      if (v710)
      {
        for (nn = 0; nn != v710; ++nn)
        {
          v712 = *(v135 + 24);
          if (*(v712 + 40) == 1)
          {
            v786 = (v712 + 16);
            if (v215)
            {
              v713 = (3 * v215);
              v714 = v504;
              do
              {
                sub_23F2FC63C(&v786, v714++);
                --v713;
              }

              while (v713);
            }
          }

          else if (v215)
          {
            v715 = 0;
            do
            {
              v716 = *(v504 + v715);
              if (v716 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v716;
              }

              else
              {
                LOBYTE(v786) = *(v504 + v715);
              }

              v717 = *(v712 + 8);
              std::ostream::write();
              ++v715;
            }

            while (v508 != v715);
          }

          v504 = (v504 + v706);
        }
      }

LABEL_1209:
      v786 = v504;
      v787 = v508;
      sub_23F2F787C(v135, &v786);
      goto LABEL_1329;
    case 22:
      v771 = &unk_285183098;
      sub_23F133994(a3, &v772);
      v44 = *a2;
      v78 = v782;
      v79 = v772;
      if (!v772)
      {
        goto LABEL_624;
      }

      v80 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v80->__on_zero_shared)(v80);
          std::__shared_weak_count::__release_weak(v80);
        }

        v79 = v772;
        v81 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v82 = v79;
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            v79 = v82;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v79 + 96))(&v785);
      }

      else
      {
LABEL_624:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v381 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v382 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v383 = v772;
        v384 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v384->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v385 = v383;
            (v384->__on_zero_shared)(v384);
            std::__shared_weak_count::__release_weak(v384);
            v383 = v385;
          }
        }

        (*(*v383 + 88))(v383, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (3 * v78);
      v386 = v381 - 1;
      if (v386)
      {
        v387 = 2 * v382;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v387);
          --v386;
        }

        while (v386);
      }

      goto LABEL_1101;
    case 23:
      v771 = &unk_285183190;
      sub_23F134104(a3, &v772);
      v209 = *a2;
      v210 = v782;
      v211 = v772;
      if (!v772)
      {
        goto LABEL_1150;
      }

      v212 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v212->__on_zero_shared)(v212);
          std::__shared_weak_count::__release_weak(v212);
        }

        v211 = v772;
        v213 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v214 = v211;
            (v213->__on_zero_shared)(v213);
            std::__shared_weak_count::__release_weak(v213);
            v211 = v214;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v211 + 96))(&v785);
      }

      else
      {
LABEL_1150:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v690 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v691 = v781;
      v692 = v774;
      if (v783 == 1 && v774)
      {
        v693 = v772;
        v694 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v694->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v695 = v693;
            (v694->__on_zero_shared)(v694);
            std::__shared_weak_count::__release_weak(v694);
            v693 = v695;
          }
        }

        (*(*v693 + 88))(v693, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v692 = v774;
      }

      v696 = (3 * v210);
      v697 = v690 - 1;
      if (!v697)
      {
        goto LABEL_1318;
      }

      if (v210)
      {
        v698 = 0;
        v699 = 2 * v691;
        do
        {
          v700 = 0;
          do
          {
            v701 = v692[v700];
            v770 = v692[v700];
            v702 = *(v209 + 24);
            if (*(v702 + 40) == 1)
            {
              v786 = (v702 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v701 > 0x7F)
            {
              if (v701 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v701);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v701;
              }

              v704 = *(v702 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v701;
              v703 = *(v702 + 8);
              std::ostream::write();
            }

            ++v700;
          }

          while (3 * v210 != v700);
          v692 = (v692 + v699);
          ++v698;
        }

        while (v698 != v697);
        v696 = (3 * v210);
LABEL_1318:
        if (v210)
        {
          v763 = 2 * v696;
          do
          {
            v764 = *v692;
            v770 = *v692;
            v765 = *(v209 + 24);
            if (*(v765 + 40) == 1)
            {
              v786 = (v765 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v764 > 0x7F)
            {
              if (v764 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v764);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v764;
              }

              v767 = *(v765 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v764;
              v766 = *(v765 + 8);
              std::ostream::write();
            }

            ++v692;
            v763 -= 2;
          }

          while (v763);
        }
      }

      goto LABEL_1329;
    case 24:
      v771 = &unk_285183288;
      sub_23F134874(a3, &v772);
      v28 = *a2;
      v39 = v782;
      v40 = v772;
      if (!v772)
      {
        goto LABEL_480;
      }

      v41 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v41->__on_zero_shared)(v41);
          std::__shared_weak_count::__release_weak(v41);
        }

        v40 = v772;
        v42 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v43 = v40;
            (v42->__on_zero_shared)(v42);
            std::__shared_weak_count::__release_weak(v42);
            v40 = v43;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v40 + 96))(&v785);
      }

      else
      {
LABEL_480:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v294 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v295 = v781;
      v267 = v774;
      if (v783 == 1 && v774)
      {
        v296 = v772;
        v297 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v297->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v298 = v296;
            (v297->__on_zero_shared)(v297);
            std::__shared_weak_count::__release_weak(v297);
            v296 = v298;
          }
        }

        (*(*v296 + 88))(v296, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v267 = v774;
      }

      v271 = (3 * v39);
      v299 = v294 - 1;
      if (v299)
      {
        v300 = 0;
        v301 = 4 * v295;
        do
        {
          v302 = *(v28 + 24);
          if (*(v302 + 40) == 1)
          {
            v786 = (v302 + 16);
            if (v39)
            {
              v303 = 4 * (3 * v39);
              v304 = v267;
              do
              {
                sub_23F2FE06C(&v770, &v786, v304++);
                v303 -= 4;
              }

              while (v303);
            }
          }

          else if (v39)
          {
            v305 = 0;
            do
            {
              v306 = *(v267 + v305);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v306);
              v307 = *(v302 + 8);
              std::ostream::write();
              v305 += 4;
            }

            while (4 * (3 * v39) != v305);
          }

          v267 = (v267 + v301);
          ++v300;
        }

        while (v300 != v299);
        v271 = (3 * v39);
      }

LABEL_1292:
      v786 = v267;
      v787 = v271;
      sub_23F2F7A44(v28, &v786);
      goto LABEL_1329;
    case 25:
      v771 = &unk_285183380;
      sub_23F134FE4(a3, &v772);
      v22 = *a2;
      v23 = v782;
      v24 = v772;
      if (!v772)
      {
        goto LABEL_410;
      }

      v25 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v772;
        v26 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v24 + 96))(&v785);
      }

      else
      {
LABEL_410:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v250 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v251 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v253 = v772;
        v254 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v254->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v255 = v253;
            (v254->__on_zero_shared)(v254);
            std::__shared_weak_count::__release_weak(v254);
            v253 = v255;
          }
        }

        (*(*v253 + 88))(v253, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v23);
      v257 = v250 - 1;
      if (v257)
      {
        for (i1 = 0; i1 != v257; ++i1)
        {
          v259 = *(v22 + 24);
          if (*(v259 + 40) == 1)
          {
            v786 = (v259 + 16);
            if (v256)
            {
              v260 = v256;
              v261 = v252;
              do
              {
                sub_23F2FC63C(&v786, v261++);
                --v260;
              }

              while (v260);
            }
          }

          else if (v256)
          {
            for (i2 = 0; i2 != v256; ++i2)
            {
              v263 = *(v252 + i2);
              if (v263 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v263;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i2);
              }

              v264 = *(v259 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v251);
        }
      }

      goto LABEL_1198;
    case 26:
      v771 = &unk_285183478;
      sub_23F135750(a3, &v772);
      v44 = *a2;
      v83 = v782;
      v84 = v772;
      if (!v772)
      {
        goto LABEL_638;
      }

      v85 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v772;
        v86 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v84 + 96))(&v785);
      }

      else
      {
LABEL_638:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v388 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v389 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v390 = v772;
        v391 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v391->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v392 = v390;
            (v391->__on_zero_shared)(v391);
            std::__shared_weak_count::__release_weak(v391);
            v390 = v392;
          }
        }

        (*(*v390 + 88))(v390, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v83);
      v393 = v388 - 1;
      if (v393)
      {
        v394 = 2 * v389;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v394);
          --v393;
        }

        while (v393);
      }

      goto LABEL_1101;
    case 27:
      v771 = &unk_285183570;
      sub_23F135EC0(a3, &v772);
      v10 = *a2;
      v11 = v782;
      v12 = v772;
      if (!v772)
      {
        goto LABEL_362;
      }

      v13 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v772;
        v14 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v12 + 96))(&v785);
      }

      else
      {
LABEL_362:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v220 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v221 = v781;
      v222 = v774;
      if (v783 == 1 && v774)
      {
        v223 = v772;
        v224 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v223;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v223 = v225;
          }
        }

        (*(*v223 + 88))(v223, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v222 = v774;
      }

      v226 = (4 * v11);
      v227 = v220 - 1;
      if (!v227)
      {
        goto LABEL_1210;
      }

      if (v226)
      {
        v228 = 0;
        v229 = 2 * v221;
        do
        {
          v230 = 0;
          do
          {
            v231 = v222[v230];
            v770 = v222[v230];
            v232 = *(v10 + 24);
            if (*(v232 + 40) == 1)
            {
              v786 = (v232 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v231 > 0x7F)
            {
              if (v231 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v231);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v231;
              }

              v234 = *(v232 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v231;
              v233 = *(v232 + 8);
              std::ostream::write();
            }

            ++v230;
          }

          while (v226 != v230);
          v222 = (v222 + v229);
          ++v228;
        }

        while (v228 != v227);
LABEL_1210:
        if (v226)
        {
          v718 = 2 * v226;
          do
          {
            v719 = *v222;
            v770 = *v222;
            v720 = *(v10 + 24);
            if (*(v720 + 40) == 1)
            {
              v786 = (v720 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v719 > 0x7F)
            {
              if (v719 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v719);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v719;
              }

              v722 = *(v720 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v719;
              v721 = *(v720 + 8);
              std::ostream::write();
            }

            ++v222;
            v718 -= 2;
          }

          while (v718);
        }
      }

      goto LABEL_1329;
    case 28:
      v771 = &unk_285183668;
      sub_23F136630(a3, &v772);
      v55 = *a2;
      v104 = v782;
      v105 = v772;
      if (!v772)
      {
        goto LABEL_711;
      }

      v106 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        v105 = v772;
        v107 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v108 = v105;
            (v107->__on_zero_shared)(v107);
            std::__shared_weak_count::__release_weak(v107);
            v105 = v108;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v105 + 96))(&v785);
      }

      else
      {
LABEL_711:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v431 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v432 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v433 = v772;
        v434 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v434->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v435 = v433;
            (v434->__on_zero_shared)(v434);
            std::__shared_weak_count::__release_weak(v434);
            v433 = v435;
          }
        }

        (*(*v433 + 88))(v433, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v104);
      v436 = v431 - 1;
      if (v436)
      {
        v437 = 0;
        v438 = 4 * v432;
        do
        {
          v439 = *(v55 + 24);
          if (*(v439 + 40) == 1)
          {
            v786 = (v439 + 16);
            if (v99)
            {
              v440 = 4 * v99;
              v441 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v441++);
                v440 -= 4;
              }

              while (v440);
            }
          }

          else if (v99)
          {
            v442 = 0;
            do
            {
              v443 = *(v331 + v442);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v443);
              v444 = *(v439 + 8);
              std::ostream::write();
              v442 += 4;
            }

            while (4 * v99 != v442);
          }

          v331 = (v331 + v438);
          ++v437;
        }

        while (v437 != v436);
      }

      goto LABEL_1199;
    case 29:
      v771 = &unk_285183760;
      sub_23F136DA0(a3, &v772);
      v22 = *a2;
      v34 = v782;
      v35 = v772;
      if (!v772)
      {
        goto LABEL_456;
      }

      v36 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }

        v35 = v772;
        v37 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v38 = v35;
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
            v35 = v38;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v35 + 96))(&v785);
      }

      else
      {
LABEL_456:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v281 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v282 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v283 = v772;
        v284 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v284->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v285 = v283;
            (v284->__on_zero_shared)(v284);
            std::__shared_weak_count::__release_weak(v284);
            v283 = v285;
          }
        }

        (*(*v283 + 88))(v283, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v34);
      v286 = v281 - 1;
      if (v286)
      {
        for (i3 = 0; i3 != v286; ++i3)
        {
          v288 = *(v22 + 24);
          if (*(v288 + 40) == 1)
          {
            v786 = (v288 + 16);
            if (v256)
            {
              v289 = v256;
              v290 = v252;
              do
              {
                sub_23F2FC63C(&v786, v290++);
                --v289;
              }

              while (v289);
            }
          }

          else if (v256)
          {
            for (i4 = 0; i4 != v256; ++i4)
            {
              v292 = *(v252 + i4);
              if (v292 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v292;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i4);
              }

              v293 = *(v288 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v282);
        }
      }

      goto LABEL_1198;
    case 30:
      v771 = &unk_285183858;
      sub_23F13750C(a3, &v772);
      v44 = *a2;
      v120 = v782;
      v121 = v772;
      if (!v772)
      {
        goto LABEL_779;
      }

      v122 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
        }

        v121 = v772;
        v123 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v124 = v121;
            (v123->__on_zero_shared)(v123);
            std::__shared_weak_count::__release_weak(v123);
            v121 = v124;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v121 + 96))(&v785);
      }

      else
      {
LABEL_779:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v474 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v475 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v476 = v772;
        v477 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v477->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v478 = v476;
            (v477->__on_zero_shared)(v477);
            std::__shared_weak_count::__release_weak(v477);
            v476 = v478;
          }
        }

        (*(*v476 + 88))(v476, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v120);
      v479 = v474 - 1;
      if (v479)
      {
        v480 = 2 * v475;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v480);
          --v479;
        }

        while (v479);
      }

      goto LABEL_1101;
    case 31:
      v771 = &unk_285183950;
      sub_23F137C7C(a3, &v772);
      v88 = *a2;
      v89 = v782;
      v90 = v772;
      if (!v772)
      {
        goto LABEL_652;
      }

      v91 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v772;
        v92 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v90 + 96))(&v785);
      }

      else
      {
LABEL_652:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v395 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v396 = v781;
      v397 = v774;
      if (v783 == 1 && v774)
      {
        v398 = v772;
        v399 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v399->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v400 = v398;
            (v399->__on_zero_shared)(v399);
            std::__shared_weak_count::__release_weak(v399);
            v398 = v400;
          }
        }

        (*(*v398 + 88))(v398, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v397 = v774;
      }

      v401 = (4 * v89);
      v402 = v395 - 1;
      if (!v402)
      {
        goto LABEL_1243;
      }

      if (v401)
      {
        v403 = 0;
        v404 = 2 * v396;
        do
        {
          v405 = 0;
          do
          {
            v406 = v397[v405];
            v770 = v397[v405];
            v407 = *(v88 + 24);
            if (*(v407 + 40) == 1)
            {
              v786 = (v407 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v406 > 0x7F)
            {
              if (v406 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v406);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v406;
              }

              v409 = *(v407 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v406;
              v408 = *(v407 + 8);
              std::ostream::write();
            }

            ++v405;
          }

          while (v401 != v405);
          v397 = (v397 + v404);
          ++v403;
        }

        while (v403 != v402);
LABEL_1243:
        if (v401)
        {
          v733 = 2 * v401;
          do
          {
            v734 = *v397;
            v770 = *v397;
            v735 = *(v88 + 24);
            if (*(v735 + 40) == 1)
            {
              v786 = (v735 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v734 > 0x7F)
            {
              if (v734 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v734);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v734;
              }

              v737 = *(v735 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v734;
              v736 = *(v735 + 8);
              std::ostream::write();
            }

            ++v397;
            v733 -= 2;
          }

          while (v733);
        }
      }

      goto LABEL_1329;
    case 32:
      v771 = &unk_285183A48;
      sub_23F1383EC(a3, &v772);
      v55 = *a2;
      v130 = v782;
      v131 = v772;
      if (!v772)
      {
        goto LABEL_807;
      }

      v132 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v132->__on_zero_shared)(v132);
          std::__shared_weak_count::__release_weak(v132);
        }

        v131 = v772;
        v133 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v134 = v131;
            (v133->__on_zero_shared)(v133);
            std::__shared_weak_count::__release_weak(v133);
            v131 = v134;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v131 + 96))(&v785);
      }

      else
      {
LABEL_807:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v488 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v489 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v490 = v772;
        v491 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v491->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v492 = v490;
            (v491->__on_zero_shared)(v491);
            std::__shared_weak_count::__release_weak(v491);
            v490 = v492;
          }
        }

        (*(*v490 + 88))(v490, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v130);
      v493 = v488 - 1;
      if (v493)
      {
        v494 = 0;
        v495 = 4 * v489;
        do
        {
          v496 = *(v55 + 24);
          if (*(v496 + 40) == 1)
          {
            v786 = (v496 + 16);
            if (v99)
            {
              v497 = 4 * v99;
              v498 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v498++);
                v497 -= 4;
              }

              while (v497);
            }
          }

          else if (v99)
          {
            v499 = 0;
            do
            {
              v500 = *(v331 + v499);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v500);
              v501 = *(v496 + 8);
              std::ostream::write();
              v499 += 4;
            }

            while (4 * v99 != v499);
          }

          v331 = (v331 + v495);
          ++v494;
        }

        while (v494 != v493);
      }

      goto LABEL_1199;
    case 33:
      v771 = &unk_285183B40;
      sub_23F138B5C(a3, &v772);
      v22 = *a2;
      v183 = v782;
      v184 = v772;
      if (!v772)
      {
        goto LABEL_1042;
      }

      v185 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v185->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v185->__on_zero_shared)(v185);
          std::__shared_weak_count::__release_weak(v185);
        }

        v184 = v772;
        v186 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v187 = v184;
            (v186->__on_zero_shared)(v186);
            std::__shared_weak_count::__release_weak(v186);
            v184 = v187;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v184 + 96))(&v785);
      }

      else
      {
LABEL_1042:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v628 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v629 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v630 = v772;
        v631 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v631->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v632 = v630;
            (v631->__on_zero_shared)(v631);
            std::__shared_weak_count::__release_weak(v631);
            v630 = v632;
          }
        }

        (*(*v630 + 88))(v630, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v183);
      v633 = v628 - 1;
      if (v633)
      {
        for (i5 = 0; i5 != v633; ++i5)
        {
          v635 = *(v22 + 24);
          if (*(v635 + 40) == 1)
          {
            v786 = (v635 + 16);
            if (v256)
            {
              v636 = v256;
              v637 = v252;
              do
              {
                sub_23F2FC63C(&v786, v637++);
                --v636;
              }

              while (v636);
            }
          }

          else if (v256)
          {
            for (i6 = 0; i6 != v256; ++i6)
            {
              v639 = *(v252 + i6);
              if (v639 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v639;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i6);
              }

              v640 = *(v635 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v629);
        }
      }

      goto LABEL_1198;
    case 34:
      v771 = &unk_285183C38;
      sub_23F1392C8(a3, &v772);
      v44 = *a2;
      v125 = v782;
      v126 = v772;
      if (!v772)
      {
        goto LABEL_793;
      }

      v127 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v772;
        v128 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v126 + 96))(&v785);
      }

      else
      {
LABEL_793:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v481 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v482 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v483 = v772;
        v484 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v484->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v485 = v483;
            (v484->__on_zero_shared)(v484);
            std::__shared_weak_count::__release_weak(v484);
            v483 = v485;
          }
        }

        (*(*v483 + 88))(v483, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v125);
      v486 = v481 - 1;
      if (v486)
      {
        v487 = 2 * v482;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v487);
          --v486;
        }

        while (v486);
      }

      goto LABEL_1101;
    case 35:
      v771 = &unk_285183D30;
      sub_23F139A38(a3, &v772);
      v114 = *a2;
      v115 = v782;
      v116 = v772;
      if (!v772)
      {
        goto LABEL_755;
      }

      v117 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
        }

        v116 = v772;
        v118 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v119 = v116;
            (v118->__on_zero_shared)(v118);
            std::__shared_weak_count::__release_weak(v118);
            v116 = v119;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v116 + 96))(&v785);
      }

      else
      {
LABEL_755:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v459 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v460 = v781;
      v461 = v774;
      if (v783 == 1 && v774)
      {
        v462 = v772;
        v463 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v464 = v462;
            (v463->__on_zero_shared)(v463);
            std::__shared_weak_count::__release_weak(v463);
            v462 = v464;
          }
        }

        (*(*v462 + 88))(v462, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v461 = v774;
      }

      v465 = (4 * v115);
      v466 = v459 - 1;
      if (!v466)
      {
        goto LABEL_1254;
      }

      if (v465)
      {
        v467 = 0;
        v468 = 2 * v460;
        do
        {
          v469 = 0;
          do
          {
            v470 = v461[v469];
            v770 = v461[v469];
            v471 = *(v114 + 24);
            if (*(v471 + 40) == 1)
            {
              v786 = (v471 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v470 > 0x7F)
            {
              if (v470 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v470);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v470;
              }

              v473 = *(v471 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v470;
              v472 = *(v471 + 8);
              std::ostream::write();
            }

            ++v469;
          }

          while (v465 != v469);
          v461 = (v461 + v468);
          ++v467;
        }

        while (v467 != v466);
LABEL_1254:
        if (v465)
        {
          v738 = 2 * v465;
          do
          {
            v739 = *v461;
            v770 = *v461;
            v740 = *(v114 + 24);
            if (*(v740 + 40) == 1)
            {
              v786 = (v740 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v739 > 0x7F)
            {
              if (v739 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v739);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v739;
              }

              v742 = *(v740 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v739;
              v741 = *(v740 + 8);
              std::ostream::write();
            }

            ++v461;
            v738 -= 2;
          }

          while (v738);
        }
      }

      goto LABEL_1329;
    case 36:
      v771 = &unk_285183E28;
      sub_23F13A1A8(a3, &v772);
      v55 = *a2;
      v109 = v782;
      v110 = v772;
      if (!v772)
      {
        goto LABEL_733;
      }

      v111 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v111->__on_zero_shared)(v111);
          std::__shared_weak_count::__release_weak(v111);
        }

        v110 = v772;
        v112 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v113 = v110;
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
            v110 = v113;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v110 + 96))(&v785);
      }

      else
      {
LABEL_733:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v445 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v446 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v447 = v772;
        v448 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v448->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v449 = v447;
            (v448->__on_zero_shared)(v448);
            std::__shared_weak_count::__release_weak(v448);
            v447 = v449;
          }
        }

        (*(*v447 + 88))(v447, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v109);
      v450 = v445 - 1;
      if (v450)
      {
        v451 = 0;
        v452 = 4 * v446;
        do
        {
          v453 = *(v55 + 24);
          if (*(v453 + 40) == 1)
          {
            v786 = (v453 + 16);
            if (v99)
            {
              v454 = 4 * v99;
              v455 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v455++);
                v454 -= 4;
              }

              while (v454);
            }
          }

          else if (v99)
          {
            v456 = 0;
            do
            {
              v457 = *(v331 + v456);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v457);
              v458 = *(v453 + 8);
              std::ostream::write();
              v456 += 4;
            }

            while (4 * v99 != v456);
          }

          v331 = (v331 + v452);
          ++v451;
        }

        while (v451 != v450);
      }

      goto LABEL_1199;
    case 37:
      v771 = &unk_285183F20;
      sub_23F13A918(a3, &v772);
      v22 = *a2;
      v167 = v782;
      v168 = v772;
      if (!v772)
      {
        goto LABEL_980;
      }

      v169 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v772;
        v170 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v168 + 96))(&v785);
      }

      else
      {
LABEL_980:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v593 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v594 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v595 = v772;
        v596 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v596->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v597 = v595;
            (v596->__on_zero_shared)(v596);
            std::__shared_weak_count::__release_weak(v596);
            v595 = v597;
          }
        }

        (*(*v595 + 88))(v595, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v167);
      v598 = v593 - 1;
      if (v598)
      {
        for (i7 = 0; i7 != v598; ++i7)
        {
          v600 = *(v22 + 24);
          if (*(v600 + 40) == 1)
          {
            v786 = (v600 + 16);
            if (v256)
            {
              v601 = v256;
              v602 = v252;
              do
              {
                sub_23F2FC63C(&v786, v602++);
                --v601;
              }

              while (v601);
            }
          }

          else if (v256)
          {
            for (i8 = 0; i8 != v256; ++i8)
            {
              v604 = *(v252 + i8);
              if (v604 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v604;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i8);
              }

              v605 = *(v600 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v594);
        }
      }

LABEL_1198:
      v786 = v252;
      v787 = v256;
      sub_23F2F787C(v22, &v786);
      goto LABEL_1329;
    case 38:
      v771 = &unk_285184018;
      sub_23F13B084(a3, &v772);
      v44 = *a2;
      v193 = v782;
      v194 = v772;
      if (!v772)
      {
        goto LABEL_1088;
      }

      v195 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v195->__on_zero_shared)(v195);
          std::__shared_weak_count::__release_weak(v195);
        }

        v194 = v772;
        v196 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v197 = v194;
            (v196->__on_zero_shared)(v196);
            std::__shared_weak_count::__release_weak(v196);
            v194 = v197;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v194 + 96))(&v785);
      }

      else
      {
LABEL_1088:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v655 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v656 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v657 = v772;
        v658 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v658->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v659 = v657;
            (v658->__on_zero_shared)(v658);
            std::__shared_weak_count::__release_weak(v658);
            v657 = v659;
          }
        }

        (*(*v657 + 88))(v657, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v193);
      v660 = v655 - 1;
      if (v660)
      {
        v661 = 2 * v656;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v661);
          --v660;
        }

        while (v660);
      }

LABEL_1101:
      v786 = v310;
      v787 = v162;
      sub_23F2F7948(v44, &v786);
      goto LABEL_1329;
    case 39:
      v771 = &unk_285184110;
      sub_23F13B7F4(a3, &v772);
      v72 = *a2;
      v73 = v782;
      v74 = v772;
      if (!v772)
      {
        goto LABEL_600;
      }

      v75 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v75->__on_zero_shared)(v75);
          std::__shared_weak_count::__release_weak(v75);
        }

        v74 = v772;
        v76 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v77 = v74;
            (v76->__on_zero_shared)(v76);
            std::__shared_weak_count::__release_weak(v76);
            v74 = v77;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v74 + 96))(&v785);
      }

      else
      {
LABEL_600:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v366 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v367 = v781;
      v368 = v774;
      if (v783 == 1 && v774)
      {
        v369 = v772;
        v370 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v370->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v371 = v369;
            (v370->__on_zero_shared)(v370);
            std::__shared_weak_count::__release_weak(v370);
            v369 = v371;
          }
        }

        (*(*v369 + 88))(v369, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v368 = v774;
      }

      v372 = (4 * v73);
      v373 = v366 - 1;
      if (!v373)
      {
        goto LABEL_1232;
      }

      if (v372)
      {
        v374 = 0;
        v375 = 2 * v367;
        do
        {
          v376 = 0;
          do
          {
            v377 = v368[v376];
            v770 = v368[v376];
            v378 = *(v72 + 24);
            if (*(v378 + 40) == 1)
            {
              v786 = (v378 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v377 > 0x7F)
            {
              if (v377 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v377);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v377;
              }

              v380 = *(v378 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v377;
              v379 = *(v378 + 8);
              std::ostream::write();
            }

            ++v376;
          }

          while (v372 != v376);
          v368 = (v368 + v375);
          ++v374;
        }

        while (v374 != v373);
LABEL_1232:
        if (v372)
        {
          v728 = 2 * v372;
          do
          {
            v729 = *v368;
            v770 = *v368;
            v730 = *(v72 + 24);
            if (*(v730 + 40) == 1)
            {
              v786 = (v730 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v729 > 0x7F)
            {
              if (v729 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v729);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v729;
              }

              v732 = *(v730 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v729;
              v731 = *(v730 + 8);
              std::ostream::write();
            }

            ++v368;
            v728 -= 2;
          }

          while (v728);
        }
      }

LABEL_1329:
      v768 = v785;
      v785 = 0;
      if (v768)
      {
        (*(*v768 + 8))(v768);
      }

      v769 = v773;
      if (v773)
      {
        if (!atomic_fetch_add(&v773->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v769->__on_zero_shared)(v769);
          std::__shared_weak_count::__release_weak(v769);
        }
      }

      return;
    case 40:
      v771 = &unk_285184208;
      sub_23F13BF64(a3, &v772);
      v55 = *a2;
      v56 = v782;
      v57 = v772;
      if (!v772)
      {
        goto LABEL_540;
      }

      v58 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v58->__on_zero_shared)(v58);
          std::__shared_weak_count::__release_weak(v58);
        }

        v57 = v772;
        v59 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v60 = v57;
            (v59->__on_zero_shared)(v59);
            std::__shared_weak_count::__release_weak(v59);
            v57 = v60;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v57 + 96))(&v785);
      }

      else
      {
LABEL_540:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v329 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v330 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v332 = v772;
        v333 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v333->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v334 = v332;
            (v333->__on_zero_shared)(v333);
            std::__shared_weak_count::__release_weak(v333);
            v332 = v334;
          }
        }

        (*(*v332 + 88))(v332, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v56);
      v335 = v329 - 1;
      if (v335)
      {
        v336 = 0;
        v337 = 4 * v330;
        do
        {
          v338 = *(v55 + 24);
          if (*(v338 + 40) == 1)
          {
            v786 = (v338 + 16);
            if (v99)
            {
              v339 = 4 * v99;
              v340 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v340++);
                v339 -= 4;
              }

              while (v339);
            }
          }

          else if (v99)
          {
            v341 = 0;
            do
            {
              v342 = *(v331 + v341);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v342);
              v343 = *(v338 + 8);
              std::ostream::write();
              v341 += 4;
            }

            while (4 * v99 != v341);
          }

          v331 = (v331 + v337);
          ++v336;
        }

        while (v336 != v335);
      }

LABEL_1199:
      v786 = v331;
      v787 = v99;
      sub_23F2F7A44(v55, &v786);
      goto LABEL_1329;
    default:
      return;
  }
}