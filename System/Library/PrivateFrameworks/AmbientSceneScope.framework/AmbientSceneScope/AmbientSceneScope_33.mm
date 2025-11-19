void sub_23F1BDB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1BDB64(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394AB8))
  {
    sub_23F0B55C4();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394AA0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1BDC7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BDD08(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285183288;
  v6 = *a3 == 0;
  if (*a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!a3[1])
  {
    v6 = 1;
  }

  v8 = !v6;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a4 << 32;
  }

  v10 = v9 | v7;
  v11 = *a3;
  if (!v8)
  {
    v11 = 0;
  }

  *(&v20 + 4) = v11;
  v12 = v11;
  LODWORD(v20) = 3;
  v13 = v20;
  v14 = HIDWORD(v11);
  LODWORD(v21) = 1;
  HIDWORD(v21) = v9 | v7;
  v15 = HIDWORD(v9);
  if (HIDWORD(v11) * HIDWORD(v9) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_19:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_20;
      }
    }

    else
    {
      v16 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_27E3961A0)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 44) = v21;
  *(a1 + 52) = v15;
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1BDF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1BDF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1BDFD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2851848D0;
  a2[1] = v2;
  return result;
}

void sub_23F1BE000(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28517FDC8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BE284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1BE2FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 24)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1BE6F4(a1);
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

void sub_23F1BE6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1BE6F4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394AD8))
  {
    sub_23F0B6074();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394AC0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1BE80C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BE898(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_285183380;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_23F1B9F5C(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_23F1BE9B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184960;
  a2[1] = v2;
  return result;
}

void sub_23F1BE9DC(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181740;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BEC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1BECD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1BF0CC(a1);
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

void sub_23F1BF07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1BF0CC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394AF8))
  {
    sub_23F0B6B24();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394AE0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1BF1E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BF270(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_285183760;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_23F1B9F5C(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

void *sub_23F1BF318(void *result, unsigned __int8 *a2, _DWORD **a3)
{
  *result = a2;
  v3 = *a3;
  result[2] = *a3;
  v4 = a2[3];
  if (v4 == 255)
  {
    *v3 = *a2;
    return result;
  }

  if (!a2[3])
  {
    *v3 = 0;
    return result;
  }

  v5 = 255.0;
  v6 = 255.0 / v4;
  v7 = &unk_23F32CCDD + 256 * v4;
  v8 = *a2;
  v9 = floorf(v6 * v8);
  if (v9 <= 255.0)
  {
    v5 = v9;
  }

  v10 = v5;
  v11 = v7[v5];
  if (v11 != v8)
  {
    if (v11 >= v8 || v10 == 255)
    {
      if (v11 <= v8 || v10 == 0)
      {
        goto LABEL_39;
      }

      LOBYTE(v10) = v10 - 1;
    }

    else
    {
      LOBYTE(v10) = v10 + 1;
    }
  }

  *v3 = v10;
  v13 = *(*result + 1);
  v14 = floorf(v6 * v13);
  if (v14 > 255.0)
  {
    v14 = 255.0;
  }

  v15 = v14;
  v16 = v7[v14];
  if (v16 != v13)
  {
    if (v16 >= v13 || v15 == 255)
    {
      if (v16 <= v13 || v15 == 0)
      {
        goto LABEL_39;
      }

      LOBYTE(v15) = v15 - 1;
    }

    else
    {
      LOBYTE(v15) = v15 + 1;
    }
  }

  *(result[2] + 1) = v15;
  v18 = *(*result + 2);
  v19 = floorf(v6 * v18);
  if (v19 > 255.0)
  {
    v19 = 255.0;
  }

  v20 = v19;
  v21 = v7[v19];
  if (v21 == v18)
  {
    goto LABEL_38;
  }

  if (v21 >= v18 || v20 == 255)
  {
    if (v21 > v18 && v20 != 0)
    {
      LOBYTE(v20) = v20 - 1;
      goto LABEL_38;
    }

LABEL_39:
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 70, &unk_23F3091D6, 0, "Should not happen", 0x11uLL, sub_23F303DA4);
    abort();
  }

  LOBYTE(v20) = v20 + 1;
LABEL_38:
  *(result[2] + 2) = v20;
  *(result[2] + 3) = *(*result + 3);
  return result;
}

uint64_t sub_23F1BF54C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2851849F0;
  a2[1] = v2;
  return result;
}

void sub_23F1BF578(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_2851801A8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BF7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1BF874(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1BFC68(a1);
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

void sub_23F1BFC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1BFC68(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394B78))
  {
    sub_23F0B94DC();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394B60, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1BFD80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BFE0C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285183858;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_16:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27E3961A0)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1C0040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1C0054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1C00D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184A80;
  a2[1] = v2;
  return result;
}

void sub_23F1C0104(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_2851802A0;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C0388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C0400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 30)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C07F8(a1);
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

void sub_23F1C07A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C07F8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394B98))
  {
    sub_23F0B9F8C();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394B80, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C0910(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1C099C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285183950;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_16:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27E3961A0)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1C0BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1C0BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1C0C68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184B10;
  a2[1] = v2;
  return result;
}

void sub_23F1C0C94(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181838;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C0F18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C0F90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C1388(a1);
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

void sub_23F1C1338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C1388(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394BB8))
  {
    sub_23F0BAA3C();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394BA0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C14A0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1C152C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285183A48;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_16:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27E3961A0)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1C1760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1C1774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1C17F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184BA0;
  a2[1] = v2;
  return result;
}

void sub_23F1C1824(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181930;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C1AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C1B20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C1F18(a1);
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

void sub_23F1C1EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C1F18(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394BD8))
  {
    sub_23F0BB4EC();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394BC0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C2030(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1C20BC(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_285183B40;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_23F1B9F5C(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_23F1C21D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184C30;
  a2[1] = v2;
  return result;
}

void sub_23F1C2200(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285180398;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C2484(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C24FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 33)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C28F0(a1);
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

void sub_23F1C28A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C28F0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394BF8))
  {
    sub_23F0BBF9C();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394BE0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C2A08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1C2A94(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_285183F20;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_23F1B9F5C(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_23F1C2BAC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184CC0;
  a2[1] = v2;
  return result;
}

void sub_23F1C2BD8(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181A28;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C2E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C2ED4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C32C8(a1);
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

void sub_23F1C3278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C32C8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394C78))
  {
    sub_23F0BE954();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394C60, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C33E0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1C346C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285184018;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_16:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27E3961A0)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1C36A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1C36B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1C3738(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184D50;
  a2[1] = v2;
  return result;
}

void sub_23F1C3764(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181B20;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C39E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C3A60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C3E58(a1);
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

void sub_23F1C3E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C3E58(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394C98))
  {
    sub_23F0BF404();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394C80, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C3F70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1C3FFC(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285184110;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_16:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27E3961A0)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1C4230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1C4244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1C42C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184DE0;
  a2[1] = v2;
  return result;
}

void sub_23F1C42F4(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285180778;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C4578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C45F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 39)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C49E8(a1);
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

void sub_23F1C4998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C49E8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394CB8))
  {
    sub_23F0BFEB4();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394CA0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C4B00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1C4B8C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285184208;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_16:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27E3961A0)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1C4DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1C4DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1C4E58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184E70;
  a2[1] = v2;
  return result;
}

void sub_23F1C4E84(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285180870;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1C5108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1C5180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 40)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1C5578(a1);
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

void sub_23F1C5528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_23F1C5578(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394CD8))
  {
    sub_23F0C0964();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394CC0, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1C5690(uint64_t result)
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

void sub_23F1C5708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C57C0(uint64_t a1)
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

void sub_23F1C5850(_DWORD *a1)
{
  v1[10] = &unk_2851859E8;
  sub_23F24A0DC(a1, v1);
  operator new();
}

void sub_23F1C5A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F1C5E88(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1C5AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F22DEA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F1C5AF4()
{
  if ((atomic_load_explicit(&qword_27E395198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395198))
  {
    sub_23F1C5B90();
  }

  if (byte_27E395197 >= 0)
  {
    return &qword_27E395180;
  }

  else
  {
    return qword_27E395180;
  }
}

void sub_23F1C5C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C5C8C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray16f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C5D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C5DAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C5DE4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F22DEA8(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C5E28(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_23F1C5E88(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F22DEA8(v2);
    MEMORY[0x245CACD00](v4, 0x1091C406A8758A4);
    return v3;
  }

  return v1;
}

uint64_t sub_23F1C5EDC(uint64_t result)
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

void sub_23F1C5F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C600C(uint64_t a1)
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

void sub_23F1C609C(_DWORD *a1)
{
  v1[10] = &unk_285185B68;
  sub_23F24A1C8(a1, v1);
  operator new();
}

void sub_23F1C62C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F085E00(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1C630C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1C6344()
{
  if ((atomic_load_explicit(&qword_27E3951B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3951B8))
  {
    sub_23F1C63E0();
  }

  if (byte_27E3951B7 >= 0)
  {
    return &qword_27E3951A0;
  }

  else
  {
    return qword_27E3951A0;
  }
}

void sub_23F1C64AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C64DC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray32f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C65C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C65FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C6634(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 48) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C6698(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1C66F8(uint64_t result)
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

void sub_23F1C6770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C6828(uint64_t a1)
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

void sub_23F1C68B8(_DWORD *a1)
{
  v10 = &unk_285185CE8;
  sub_23F272344(v11, a1);
  v2 = v11[0];
  v1 = &unk_285185018;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_23F1C6B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_23EF3AE8C(v2);
  sub_23EF3AE8C(va1);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1C6BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1C6BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1C6BEC()
{
  if ((atomic_load_explicit(&qword_27E3951D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3951D8))
  {
    sub_23F1C6C88();
  }

  if (byte_27E3951D7 >= 0)
  {
    return &qword_27E3951C0;
  }

  else
  {
    return qword_27E3951C0;
  }
}

void sub_23F1C6D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C6D84(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb16u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C6E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C6EA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C6EDC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C6F40(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1C6FA0(uint64_t result)
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

void sub_23F1C7018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C70D0(uint64_t a1)
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

void sub_23F1C7160(_DWORD *a1)
{
  v1[14] = &unk_285185E68;
  sub_23F24B29C(a1, v1);
  operator new();
}

void sub_23F1C73A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F1C77B8(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1C73F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F23DAA0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F1C7424()
{
  if ((atomic_load_explicit(&qword_27E3951F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3951F8))
  {
    sub_23F1C74C0();
  }

  if (byte_27E3951F7 >= 0)
  {
    return &qword_27E3951E0;
  }

  else
  {
    return qword_27E3951E0;
  }
}

void sub_23F1C758C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C75BC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb16f]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C76A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C76DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C7714(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F23DAA0(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C7758(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_23F1C77B8(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F23DAA0(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t sub_23F1C780C(uint64_t result)
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

void sub_23F1C7884(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C793C(uint64_t a1)
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

void sub_23F1C79CC(_DWORD *a1)
{
  v10 = &unk_285185FE8;
  sub_23F272508(v11, a1);
  v2 = v11[0];
  v1 = &unk_285185118;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_23F1C7C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_23EF3AE8C(v2);
  sub_23EF3AE8C(va1);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1C7CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1C7CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1C7D00()
{
  if ((atomic_load_explicit(&qword_27E395218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395218))
  {
    sub_23F1C7D9C();
  }

  if (byte_27E395217 >= 0)
  {
    return &qword_27E395200;
  }

  else
  {
    return qword_27E395200;
  }
}

void sub_23F1C7E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C7E98(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb32f]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C7F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C7FB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C7FF0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C8054(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1C80B4(uint64_t result)
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

void sub_23F1C812C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C81E4(uint64_t a1)
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

void sub_23F1C8274(_DWORD *a1)
{
  v1[14] = &unk_285186168;
  sub_23F24B438(a1, v1);
  operator new();
}

void sub_23F1C84C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F086620(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1C8508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1C8540()
{
  if ((atomic_load_explicit(&qword_27E395238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395238))
  {
    sub_23F1C85DC();
  }

  if (byte_27E395237 >= 0)
  {
    return &qword_27E395220;
  }

  else
  {
    return qword_27E395220;
  }
}

void sub_23F1C86A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C86D8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra8u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C87BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C87F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C8830(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C8894(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1C88F4(uint64_t result)
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

void sub_23F1C896C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C8A24(uint64_t a1)
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

void sub_23F1C8AB4(_DWORD *a1)
{
  v1[14] = &unk_2851862E8;
  sub_23F24B7B4(a1, v1);
  operator new();
}

void sub_23F1C8D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F086620(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1C8D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1C8D80()
{
  if ((atomic_load_explicit(&qword_27E395258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395258))
  {
    sub_23F1C8E1C();
  }

  if (byte_27E395257 >= 0)
  {
    return &qword_27E395240;
  }

  else
  {
    return qword_27E395240;
  }
}

void sub_23F1C8EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C8F18(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba8u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C8FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C9038(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C9070(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C90D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1C9134(uint64_t result)
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

void sub_23F1C91AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C9264(uint64_t a1)
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

void sub_23F1C92F4(_DWORD *a1)
{
  v10 = &unk_285186468;
  sub_23F2726CC(v11, a1);
  v2 = v11[0];
  v1 = &unk_285185298;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_23F1C95A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_23EF3AE8C(v2);
  sub_23EF3AE8C(va1);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1C95DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1C95F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1C9628()
{
  if ((atomic_load_explicit(&qword_27E395278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395278))
  {
    sub_23F1C96C4();
  }

  if (byte_27E395277 >= 0)
  {
    return &qword_27E395260;
  }

  else
  {
    return qword_27E395260;
  }
}

void sub_23F1C9790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C97C0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba16u]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1C98A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1C98E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C9918(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1C997C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1C99DC(uint64_t result)
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

void sub_23F1C9A54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1C9B0C(uint64_t a1)
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

void sub_23F1C9B9C(_DWORD *a1)
{
  v1[14] = &unk_2851865E8;
  sub_23F24B98C(a1, v1);
  operator new();
}

void sub_23F1C9DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F1CA1F4(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1C9E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F243120(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F1C9E60()
{
  if ((atomic_load_explicit(&qword_27E395298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395298))
  {
    sub_23F1C9EFC();
  }

  if (byte_27E395297 >= 0)
  {
    return &qword_27E395280;
  }

  else
  {
    return qword_27E395280;
  }
}

void sub_23F1C9FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1C9FF8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba16f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1CA0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1CA118(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CA150(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F243120(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1CA194(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_23F1CA1F4(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F243120(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t sub_23F1CA248(uint64_t result)
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

void sub_23F1CA2C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CA378(uint64_t a1)
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

void sub_23F1CA408(_DWORD *a1)
{
  v10 = &unk_285186768;
  sub_23F272898(v11, a1);
  v2 = v11[0];
  v1 = &unk_285185398;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_23F1CA6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_23EF3AE8C(v2);
  sub_23EF3AE8C(va1);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1CA6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1CA704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1CA73C()
{
  if ((atomic_load_explicit(&qword_27E3952B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3952B8))
  {
    sub_23F1CA7D8();
  }

  if (byte_27E3952B7 >= 0)
  {
    return &qword_27E3952A0;
  }

  else
  {
    return qword_27E3952A0;
  }
}

void sub_23F1CA8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1CA8D4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba32f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1CA9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1CA9F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CAA2C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1CAA90(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1CAAF0(uint64_t result)
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

void sub_23F1CAB68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CAC20(uint64_t a1)
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

void sub_23F1CACB0(_DWORD *a1)
{
  v1[14] = &unk_2851868E8;
  sub_23F24BB30(a1, v1);
  operator new();
}

void sub_23F1CAEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F086620(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1CAF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1CAF7C()
{
  if ((atomic_load_explicit(&qword_27E3952D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3952D8))
  {
    sub_23F1CB018();
  }

  if (byte_27E3952D7 >= 0)
  {
    return &qword_27E3952C0;
  }

  else
  {
    return qword_27E3952C0;
  }
}

void sub_23F1CB0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1CB114(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr8u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1CB1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1CB234(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CB26C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1CB2D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1CB330(uint64_t result)
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

void sub_23F1CB3A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CB460(uint64_t a1)
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

void sub_23F1CB4F0(_DWORD *a1)
{
  v1[14] = &unk_285186A68;
  sub_23F24BEAC(a1, v1);
  operator new();
}

void sub_23F1CB73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F086620(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1CB784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1CB7BC()
{
  if ((atomic_load_explicit(&qword_27E3952F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3952F8))
  {
    sub_23F1CB858();
  }

  if (byte_27E3952F7 >= 0)
  {
    return &qword_27E3952E0;
  }

  else
  {
    return qword_27E3952E0;
  }
}

void sub_23F1CB924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1CB954(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Argb8u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1CBA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1CBA74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CBAAC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1CBB10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1CBB70(uint64_t result)
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

void sub_23F1CBBE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CBCA0(uint64_t a1)
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

void sub_23F1CBD30(_DWORD *a1)
{
  v10 = &unk_285186BE8;
  sub_23F2726CC(v11, a1);
  v2 = v11[0];
  v1 = &unk_285185518;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_23F1CBFE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_23EF3AE8C(v2);
  sub_23EF3AE8C(va1);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1CC018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1CC02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1CC064()
{
  if ((atomic_load_explicit(&qword_27E395318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395318))
  {
    sub_23F1CC100();
  }

  if (byte_27E395317 >= 0)
  {
    return &qword_27E395300;
  }

  else
  {
    return qword_27E395300;
  }
}

void sub_23F1CC1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1CC1FC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Argb16u]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1CC2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1CC31C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CC354(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1CC3B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1CC418(uint64_t result)
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

void sub_23F1CC490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CC548(uint64_t a1)
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

void sub_23F1CC5D8(_DWORD *a1)
{
  v1[14] = &unk_285186D68;
  sub_23F24C084(a1, v1);
  operator new();
}

void sub_23F1CC820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F1CCC30(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1CC868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F2487A8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F1CC89C()
{
  if ((atomic_load_explicit(&qword_27E395338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395338))
  {
    sub_23F1CC938();
  }

  if (byte_27E395337 >= 0)
  {
    return &qword_27E395320;
  }

  else
  {
    return qword_27E395320;
  }
}

void sub_23F1CCA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1CCA34(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Argb16f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1CCB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1CCB54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CCB8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F2487A8(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1CCBD0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_23F1CCC30(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F2487A8(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t sub_23F1CCC84(uint64_t result)
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

void sub_23F1CCCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CCDB4(uint64_t a1)
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

void sub_23F1CCE44(_DWORD *a1)
{
  v10 = &unk_285186EE8;
  sub_23F272898(v11, a1);
  v2 = v11[0];
  v1 = &unk_285185618;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_23F1CD0F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_23EF3AE8C(v2);
  sub_23EF3AE8C(va1);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1CD12C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F086620(va);
  _Unwind_Resume(a1);
}

void sub_23F1CD140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23F1CD178()
{
  if ((atomic_load_explicit(&qword_27E395358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395358))
  {
    sub_23F1CD214();
  }

  if (byte_27E395357 >= 0)
  {
    return &qword_27E395340;
  }

  else
  {
    return qword_27E395340;
  }
}

void sub_23F1CD2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1CD310(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Argb32f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1CD3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1CD430(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1CD468(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F1CD4CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_23F1CD53C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F1B8D6C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23F1CD63C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285184428[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F1CD730(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_285184428[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F1CD8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1CD93C(uint64_t result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = a2[1] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_285188558;
  *(result + 24) = 0;
  return result;
}

void sub_23F1CDA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1CDA6C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_23EF41D6C();
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v8 = v1;
  v9 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    v1 = v8;
  }

  v7 = &unk_285188578;
  if (v1)
  {
    v4 = *v1;
    v3 = v1[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    if (v4)
    {
LABEL_8:
      sub_23F2034EC(v8);
    }
  }

LABEL_9:
  sub_23F1CDB88(v10, &v7);
  v5 = v10[1];
  sub_23F1FF324(&v7);
  return v5;
}

size_t sub_23F1CDB88(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 761, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_12:
        qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_23F1FEE90(a2, 0);
  v12 = sub_23F200988(a2);
  v13 = sub_23F200BC4(a2);
  result = sub_23F200E00(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v18;
  a1[2] = (result << 32) | 1;
  if (HIDWORD(v18) * result == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_27:
        v24 = qword_27E396190;
        v23 = *algn_27E396198;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_23F1CDE7C(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_285188558;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_285188558;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 223, &unk_23F3091D6, 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_23F303DA4);
    abort();
  }
}

uint64_t sub_23F1CE000(uint64_t a1)
{
  *a1 = &unk_285186F70;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_23F1CE078(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_23F1CE0D4(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_285186F70;
  *(a1 + 8) = 0;
  sub_23F1CD93C(a1 + 16, a2);
  if (*a2)
  {
    v6 = a2[1] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_23F1CDA6C(a1 + 16);
    *(a1 + 56) = v7;
  }

  v9 = *a3;
  v10 = *(a3 + 2);
  if (!sub_23F1CE49C(a1))
  {
    sub_23F1CE6D4(v12, a1);
    sub_23F1CEAE0(v11, a1);
    sub_23F1F2C80(&v9, v11);
    sub_23F1FF570(v12);
  }

  return a1;
}

void sub_23F1CE1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF570(va);
  sub_23F1CE000(v8);
  _Unwind_Resume(a1);
}

void sub_23F1CE1F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_23EF41D6C();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_285188558;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_285188558;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_285188558;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_23F2007C8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_28518B6D8;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_285188558;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

BOOL sub_23F1CE49C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 1)
  {
    if (v1 >= 2)
    {
LABEL_25:
      sub_23EF41D6C();
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
LABEL_10:
    v4 = *(a1 + 32);
    v9 = *(a1 + 24);
    v10 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v1 != 3)
  {
    goto LABEL_25;
  }

  if (!*(a1 + 24))
  {
    v3 = 0;
    goto LABEL_22;
  }

  v3 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v3 || !*(a1 + 16))
  {
LABEL_22:
    v9 = 0;
    v10 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v9 = *(a1 + 16);
  v10 = v3;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_23:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_12:
  if (v9)
  {
    v6 = *v9;
    v5 = v9[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6 == 0;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return v6 == 0;
}

void sub_23F1CE6D4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_23F2035F0(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_23EF41D6C();
    }

    sub_23F1CDE7C(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_285188558;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_23F2035F0(a1[1]);
      }
    }

    v21[0] = &unk_285188558;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_23F2035F0(a1[1]);
      }
    }
  }
}

void sub_23F1CEA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(v2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1CEAE0(uint64_t *a1, uint64_t a2)
{
  if (sub_23F1CE49C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v13 = qword_27E396178, v14 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_35:
        v19 = qword_27E396190;
        v18 = *algn_27E396198;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27E396178;
      v14 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27E3961A0)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_23EF41D6C();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v20 = &unk_285188558;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v20 = &unk_285188558;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_285188558;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_23F1CDB88(a1, &v20);
  v20 = &unk_285188558;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1CEE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1CEE38(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_285188578;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_23F2034EC(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_285188578;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_23EF41D6C();
    }

    sub_23F1CDE7C(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_285188558;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_285188578;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_23F2034EC(a1[1]);
      }
    }

    v21[0] = &unk_285188558;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_285188578;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_23F2034EC(a1[1]);
      }
    }
  }
}

void sub_23F1CF1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(v2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1CF244(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = *(a2 + 28) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_285188558;
  *(result + 24) = 0;
  return result;
}

void sub_23F1CF358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F1CF374(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_23EF41D6C();
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v10 = v3;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = v10;
  }

  v9 = &unk_285188578;
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    if (v6)
    {
LABEL_8:
      sub_23F2034EC(v10);
    }
  }

LABEL_9:
  sub_23F1CF4A4(v12, &v9);
  v7 = v14;
  *a1 = v13;
  *(a1 + 16) = v7;
  *(a1 + 32) = v15;
  return sub_23F1FF324(&v9);
}

void sub_23F1CF47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(va);
  _Unwind_Resume(a1);
}

void sub_23F1CF490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

size_t sub_23F1CF4A4(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 761, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_12:
        qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_23F1FEE90(a2, 0);
  v12 = sub_23F200988(a2);
  v13 = sub_23F200BC4(a2);
  result = sub_23F200E00(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v27) = v18;
  LODWORD(v27) = 2;
  *a1 = v11;
  *(a1 + 8) = v27;
  *(a1 + 16) = HIDWORD(v18);
  *(a1 + 20) = 0x200000001;
  *(a1 + 28) = result;
  *(a1 + 32) = v18;
  *(a1 + 40) = (result << 32) | 2;
  if (HIDWORD(v18) * result != -1)
  {
    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v20 = qword_27E396178;
    v21 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (byte_27E3961A8 == 1)
  {
    v20 = qword_27E396178;
    v21 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_26:
        v23 = *v20;
        v22 = *(v20 + 8);
        v20 += 16;
        v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v20 != v21);
      if (byte_27E3961A0)
      {
        goto LABEL_28;
      }

LABEL_33:
      abort();
    }
  }

LABEL_28:
  v25 = qword_27E396190;
  v24 = *algn_27E396198;
  v26 = *MEMORY[0x277D85DE8];

  return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

void sub_23F1CF82C(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_285188558;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_285188558;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 223, &unk_23F3091D6, 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_23F303DA4);
    abort();
  }
}

uint64_t sub_23F1CF9B0(uint64_t a1)
{
  *a1 = &unk_285187000;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_23F1CFA28(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_285187000;
  *(a1 + 8) = 0;
  sub_23F1CF244(a1 + 16, a2);
  if (*(a2 + 24))
  {
    v6 = *(a2 + 28) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = *(a2 + 16);
    *(a1 + 80) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_23F1CF374(a1 + 48, a1 + 16);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_23F1CE49C(a1))
  {
    sub_23F1CFDF8(v13, a1);
    sub_23F1D0204(v12, a1);
    sub_23F1F2FFC(v11, v12);
    sub_23F1FF570(v13);
  }

  return a1;
}

void sub_23F1CFB18(_Unwind_Exception *a1)
{
  sub_23F1FF570((v2 - 56));
  sub_23F1CF9B0(v1);
  _Unwind_Resume(a1);
}

void sub_23F1CFB50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_23EF41D6C();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_285188558;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_285188558;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_285188558;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_23F2007C8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_28518B6D8;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_285188558;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_23F1CFDF8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_23F2035F0(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_23EF41D6C();
    }

    sub_23F1CF82C(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_285188558;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_23F2035F0(a1[1]);
      }
    }

    v21[0] = &unk_285188558;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_285188558;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_285188598;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_23F2035F0(a1[1]);
      }
    }
  }
}

void sub_23F1D01AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(v2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1D0204(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_23F1CE49C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v20), 2);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_23EF41D6C();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_285188558;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_285188558;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_23F1CF4A4(a1, &v20);
  *&v20 = &unk_285188558;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}