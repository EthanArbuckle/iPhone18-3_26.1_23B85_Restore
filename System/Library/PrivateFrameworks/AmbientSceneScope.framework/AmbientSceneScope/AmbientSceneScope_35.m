void sub_23F1DE834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(v2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1DE88C(uint64_t result, uint64_t a2)
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

void sub_23F1DE9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F1DE9BC(uint64_t a1, uint64_t a2)
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
  sub_23F1DEAEC(v12, &v9);
  v7 = v14;
  *a1 = v13;
  *(a1 + 16) = v7;
  *(a1 + 32) = v15;
  return sub_23F1FF324(&v9);
}

void sub_23F1DEAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(va);
  _Unwind_Resume(a1);
}

void sub_23F1DEAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

size_t sub_23F1DEAEC(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
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
  v15 = result >> 2;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v28) = v19;
  LODWORD(v28) = 4;
  *a1 = v11;
  *(a1 + 8) = v28;
  *(a1 + 16) = HIDWORD(v19);
  *(a1 + 20) = 0x400000001;
  *(a1 + 28) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = ((result >> 2) << 32) | 4;
  if (HIDWORD(v19) * v15 != -1)
  {
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v21 = qword_27E396178;
    v22 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (byte_27E3961A8 == 1)
  {
    v21 = qword_27E396178;
    v22 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_26:
        v24 = *v21;
        v23 = *(v21 + 8);
        v21 += 16;
        v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v21 != v22);
      if (byte_27E3961A0)
      {
        goto LABEL_28;
      }

LABEL_33:
      abort();
    }
  }

LABEL_28:
  v26 = qword_27E396190;
  v25 = *algn_27E396198;
  v27 = *MEMORY[0x277D85DE8];

  return v26(v25, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

void sub_23F1DEE7C(void *a1, uint64_t *a2)
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

uint64_t sub_23F1DF000(uint64_t a1)
{
  *a1 = &unk_285187630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_23F1DF078(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_285187630;
  *(a1 + 8) = 0;
  sub_23F1DE88C(a1 + 16, a2);
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
    sub_23F1DE9BC(a1 + 48, a1 + 16);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_23F1CE49C(a1))
  {
    sub_23F1DF448(v13, a1);
    sub_23F1DF854(v12, a1);
    sub_23F1DFAEC(v11, v12);
    sub_23F1FF570(v13);
  }

  return a1;
}

void sub_23F1DF168(_Unwind_Exception *a1)
{
  sub_23F1FF570((v2 - 56));
  sub_23F1DF000(v1);
  _Unwind_Resume(a1);
}

void sub_23F1DF1A0(uint64_t a1, uint64_t a2)
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

void sub_23F1DF448(void *a1, uint64_t a2)
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

    sub_23F1DEE7C(v21, (a2 + 16));
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

void sub_23F1DF7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(v2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1DF854(uint64_t a1, uint64_t a2)
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

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
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
  sub_23F1DEAEC(a1, &v20);
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

void sub_23F1DFAEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v27 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      sub_23F1F8CE0(&v27, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v28 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_23F1F87BC(&v28, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v26 = *(a1 + 16) * v12;
    if (!v26)
    {
      return;
    }

    v23 = 4 * v26;
    v24 = *a2;
    v25 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          v21 = 4 * v12;
          v22 = 4 * v13;
          do
          {
            memmove(v19, v18, 4 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 4 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

void sub_23F1DFC74(void *a1, uint64_t a2)
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

    sub_23F1DEE7C(v21, (a2 + 16));
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

void sub_23F1E0028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F1FF194(v2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E0080(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2851876C0;
  LODWORD(v3) = *(a2 + 12);
  if (v3 <= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = v3;
  }

  v4 = *(a2 + 8) | (v3 << 32);
  *&v12 = *a2;
  *(&v12 + 1) = v4;
  *a1 = &unk_285186F70;
  *(a1 + 8) = 0;
  sub_23F1CD93C(a1 + 16, &v12);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_285188578;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_23F2034EC(v14);
    }
  }

LABEL_14:
  sub_23F1CDB88(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_23F1FF324(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_2851876C0;
  return a1;
}

void sub_23F1E020C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF194(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E0228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF324(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E0258(uint64_t a1)
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

void sub_23F1E02D0(uint64_t *a1, uint64_t a2)
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

void sub_23F1E0614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E0628(void *a1, uint64_t a2)
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
    v22 = &unk_285188558;
    v23 = v11;
    v24 = v10;
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
        v22 = &unk_285188558;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_285188558;
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
  sub_23F1CDB88(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_285188558;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1E097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E09A4(uint64_t a1)
{
  sub_23F1CEE38(v4, a1);
  sub_23F1E0628(&v3, a1);
  sub_23F1E0628(&v2, a1);
  operator new();
}

void sub_23F1E0A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x245CACD00](v8, 0x10A3C40A1F8E8FFLL);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E0AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E0AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E0AE0(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188050, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 1);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v13);
    sub_23F1E02D0(&v23, a1);
    sub_23F1F2C80(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_23F1CEE38(v22, v6);
  sub_23F1E0628(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_2851876C0;
  if (HIDWORD(v21) <= 0x20)
  {
    v8 = 32;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_23F1CE0D4(&v16, v25, &v23);
  *&v16 = &unk_2851876C0;
  sub_23F1FF324(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_285188270[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2851882B0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_285186F70;
  if (v15 != -1)
  {
    (off_285188270[v15])(&v23, v17);
  }

  return result;
}

void sub_23F1E0D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E0D74(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_23F1E02D0(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E0EE0(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_23F1E0628(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E104C()
{
  if ((atomic_load_explicit(&qword_27E395C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C20))
  {
    sub_23F1FC8E0();
  }

  if (byte_27E395CA7 >= 0)
  {
    return &qword_27E395C90;
  }

  else
  {
    return qword_27E395C90;
  }
}

void sub_23F1E111C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1CE6D4(&v2, a1);
    operator new();
  }

  sub_23F1CEE38(&v2, a1);
  operator new();
}

void sub_23F1E13E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1E1424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E14A0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285187750;
  LODWORD(v3) = *(a2 + 12);
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = v3;
  }

  v4 = *(a2 + 8) | (v3 << 32);
  *&v12 = *a2;
  *(&v12 + 1) = v4;
  *a1 = &unk_2851871B0;
  *(a1 + 8) = 0;
  sub_23F1D3674(a1 + 16, &v12);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_285188578;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_23F2034EC(v14);
    }
  }

LABEL_14:
  sub_23F1D38C0(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_23F1FF324(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_285187750;
  return a1;
}

void sub_23F1E162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF194(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E1648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF324(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E1678(uint64_t a1)
{
  *a1 = &unk_2851871B0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1E16F0(uint64_t *a1, uint64_t a2)
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
  sub_23F1D38C0(a1, &v20);
  v20 = &unk_285188558;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1E1A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E1A48(void *a1, uint64_t a2)
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
    v22 = &unk_285188558;
    v23 = v11;
    v24 = v10;
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
        v22 = &unk_285188558;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_285188558;
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
  sub_23F1D38C0(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_285188558;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1E1D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E1DC4(uint64_t a1)
{
  sub_23F1D48E0(v4, a1);
  sub_23F1E1A48(&v3, a1);
  sub_23F1E1A48(&v2, a1);
  operator new();
}

void sub_23F1E1EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x245CACD00](v8, 0x10A3C40A1F8E8FFLL);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E1ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E1EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E1F00(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188068, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 2);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v13);
    sub_23F1E16F0(&v23, a1);
    sub_23F1F41BC(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_23F1D48E0(v22, v6);
  sub_23F1E1A48(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_285187750;
  if (HIDWORD(v21) <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_23F1D3DB4(&v16, v25, &v23);
  *&v16 = &unk_285187750;
  sub_23F1FF324(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_285188270[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2851882B0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_2851871B0;
  if (v15 != -1)
  {
    (off_285188270[v15])(&v23, v17);
  }

  return result;
}

void sub_23F1E2154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E2194(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_23F1E16F0(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E2300(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_23F1E1A48(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E246C()
{
  if ((atomic_load_explicit(&qword_27E395C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C28))
  {
    sub_23F1FC9E4();
  }

  if (byte_27E395CBF >= 0)
  {
    return &qword_27E395CA8;
  }

  else
  {
    return qword_27E395CA8;
  }
}

void sub_23F1E253C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D417C(&v2, a1);
    operator new();
  }

  sub_23F1D48E0(&v2, a1);
  operator new();
}

void sub_23F1E2808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1E2844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E28C0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2851877E0;
  LODWORD(v3) = *(a2 + 12);
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = v3;
  }

  v4 = *(a2 + 8) | (v3 << 32);
  *&v12 = *a2;
  *(&v12 + 1) = v4;
  *a1 = &unk_285187360;
  *(a1 + 8) = 0;
  sub_23F1D7AD0(a1 + 16, &v12);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_285188578;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_23F2034EC(v14);
    }
  }

LABEL_14:
  sub_23F1D38C0(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_23F1FF324(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_2851877E0;
  return a1;
}

void sub_23F1E2A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF194(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E2A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF324(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E2A98(uint64_t a1)
{
  *a1 = &unk_285187360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1E2B10(uint64_t *a1, uint64_t a2)
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
  sub_23F1D38C0(a1, &v20);
  v20 = &unk_285188558;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1E2E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E2E68(void *a1, uint64_t a2)
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
    v22 = &unk_285188558;
    v23 = v11;
    v24 = v10;
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
        v22 = &unk_285188558;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_285188558;
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
  sub_23F1D38C0(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_285188558;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1E31BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E31E4(uint64_t a1)
{
  sub_23F1D8E44(v4, a1);
  sub_23F1E2E68(&v3, a1);
  sub_23F1E2E68(&v2, a1);
  operator new();
}

void sub_23F1E32C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x245CACD00](v8, 0x10A3C40A1F8E8FFLL);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E32EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E3300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E3320(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188080, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 3);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v13);
    sub_23F1E2B10(&v23, a1);
    *&result = sub_23F1D8A44(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_23F1D8E44(v22, v6);
  sub_23F1E2E68(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_2851877E0;
  if (HIDWORD(v21) <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_23F1D7F18(&v16, v25, &v23);
  *&v16 = &unk_2851877E0;
  sub_23F1FF324(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_285188270[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2851882B0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_285187360;
  if (v15 != -1)
  {
    (off_285188270[v15])(&v23, v17);
  }

  return result;
}

void sub_23F1E3574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E35B4(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_23F1E2B10(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E3720(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_23F1E2E68(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E388C()
{
  if ((atomic_load_explicit(&qword_27E395C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C30))
  {
    sub_23F1FCAE8();
  }

  if (byte_27E395CD7 >= 0)
  {
    return &qword_27E395CC0;
  }

  else
  {
    return qword_27E395CC0;
  }
}

void sub_23F1E395C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D82E0(&v2, a1);
    operator new();
  }

  sub_23F1D8E44(&v2, a1);
  operator new();
}

void sub_23F1E3C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1E3C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E3CE0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285187870;
  LODWORD(v3) = *(a2 + 12);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = v3;
  }

  v4 = *(a2 + 8) | (v3 << 32);
  *&v12 = *a2;
  *(&v12 + 1) = v4;
  *a1 = &unk_285187510;
  *(a1 + 8) = 0;
  sub_23F1DBBA8(a1 + 16, &v12);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_285188578;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_23F2034EC(v14);
    }
  }

LABEL_14:
  sub_23F1DBDF4(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_23F1FF324(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_285187870;
  return a1;
}

void sub_23F1E3E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF194(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E3E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F1FF324(va);
  sub_23F1CE078(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E3EB8(uint64_t a1)
{
  *a1 = &unk_285187510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1E3F30(uint64_t *a1, uint64_t a2)
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
  sub_23F1DBDF4(a1, &v20);
  v20 = &unk_285188558;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1E4274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E4288(void *a1, uint64_t a2)
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
    v22 = &unk_285188558;
    v23 = v11;
    v24 = v10;
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
        v22 = &unk_285188558;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_285188558;
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
  sub_23F1DBDF4(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_285188558;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_23F1E45DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E4604(uint64_t a1)
{
  sub_23F1DCE14(v4, a1);
  sub_23F1E4288(&v3, a1);
  sub_23F1E4288(&v2, a1);
  operator new();
}

void sub_23F1E46E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x245CACD00](v8, 0x10A3C40A1F8E8FFLL);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E470C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E4720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E4740(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188098, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 4);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v13);
    sub_23F1E3F30(&v23, a1);
    *&result = sub_23F1F7DE8(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_23F1DCE14(v22, v6);
  sub_23F1E4288(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_285187870;
  if (HIDWORD(v21) <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_23F1DC2E8(&v16, v25, &v23);
  *&v16 = &unk_285187870;
  sub_23F1FF324(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_285188270[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2851882B0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_285187510;
  if (v15 != -1)
  {
    (off_285188270[v15])(&v23, v17);
  }

  return result;
}

void sub_23F1E4994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E49D4(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_23F1E3F30(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E4B40(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_23F1E4288(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E4CAC()
{
  if ((atomic_load_explicit(&qword_27E395C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C38))
  {
    sub_23F1FCBEC();
  }

  if (byte_27E395CEF >= 0)
  {
    return &qword_27E395CD8;
  }

  else
  {
    return qword_27E395CD8;
  }
}

void sub_23F1E4D7C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1DC6B0(&v2, a1);
    operator new();
  }

  sub_23F1DCE14(&v2, a1);
  operator new();
}

void sub_23F1E5048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1E5084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E5100(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187900;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 2;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_285187000;
  *(a1 + 8) = 0;
  sub_23F1CF244(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1CF4A4(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187900;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1E5304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E5320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E5354(uint64_t a1)
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

void sub_23F1E53CC(uint64_t a1, uint64_t a2)
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

void sub_23F1E5664(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
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

    *v24 = 2;
    *&v24[4] = v6;
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
    v10 = __PAIR64__(*&v24[4], 2);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
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
    v21 = &unk_285188558;
    v22 = v16;
    v23 = v15;
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
        v21 = &unk_285188558;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_23F1CF4A4(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_285188558;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F1E592C(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1D049C(v4, a1);
  sub_23F1E5664(v3, a1);
  sub_23F1E5664(&v2, a1);
  operator new();
}

void sub_23F1E5A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E5A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E5AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E5AD4(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851880B0, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1D049C(v32, v6);
    sub_23F1E5664(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187900;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 2;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1CFA28(&v24, v34, v33);
    *&v24 = &unk_285187900;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_285187000;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 5);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1E53CC(v33, a1);
  sub_23F1F2FFC(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1E5D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1E5E04(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_23F1E53CC(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E5F70(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_23F1E5664(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E60DC()
{
  if ((atomic_load_explicit(&qword_27E395C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C40))
  {
    sub_23F1FCCF0();
  }

  if (byte_27E395D07 >= 0)
  {
    return &qword_27E395CF0;
  }

  else
  {
    return qword_27E395CF0;
  }
}

void sub_23F1E61AC(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1CFDF8(&v2, a1);
    operator new();
  }

  sub_23F1D049C(&v2, a1);
  operator new();
}

void sub_23F1E6478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1E64B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E6530(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187990;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 2;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_2851873F0;
  *(a1 + 8) = 0;
  sub_23F1D9250(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1D94B0(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187990;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1E6734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E6750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E6784(uint64_t a1)
{
  *a1 = &unk_2851873F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1E67FC(uint64_t a1, uint64_t a2)
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
  sub_23F1D94B0(a1, &v20);
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

void sub_23F1E6A94(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
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

    *v24 = 2;
    *&v24[4] = v6;
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
    v10 = __PAIR64__(*&v24[4], 2);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
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
    v21 = &unk_285188558;
    v22 = v16;
    v23 = v15;
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
        v21 = &unk_285188558;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_23F1D94B0(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_285188558;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F1E6D5C(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1DA4B8(v4, a1);
  sub_23F1E6A94(v3, a1);
  sub_23F1E6A94(&v2, a1);
  operator new();
}

void sub_23F1E6EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E6ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E6EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E6F04(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851880C8, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1DA4B8(v32, v6);
    sub_23F1E6A94(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187990;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 2;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1D9A3C(&v24, v34, v33);
    *&v24 = &unk_285187990;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2851873F0;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 7);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1E67FC(v33, a1);
  *&v30[0] = &v24;
  *(&v30[0] + 1) = v33;
  *&result = sub_23F1F61A4(v30);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1E71C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1E723C(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_23F1E67FC(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E73A8(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_23F1E6A94(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E7514()
{
  if ((atomic_load_explicit(&qword_27E395C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C48))
  {
    sub_23F1FCF10();
  }

  if (byte_27E395D1F >= 0)
  {
    return &qword_27E395D08;
  }

  else
  {
    return qword_27E395D08;
  }
}

void sub_23F1E75E4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D9E14(&v2, a1);
    operator new();
  }

  sub_23F1DA4B8(&v2, a1);
  operator new();
}

void sub_23F1E78B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1E78EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E7968(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187A20;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 2;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_2851875A0;
  *(a1 + 8) = 0;
  sub_23F1DD220(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1DD480(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187A20;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1E7B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E7B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E7BBC(uint64_t a1)
{
  *a1 = &unk_2851875A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1E7C34(uint64_t a1, uint64_t a2)
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
  sub_23F1DD480(a1, &v20);
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

void sub_23F1E7ECC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
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

    *v24 = 2;
    *&v24[4] = v6;
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
    v10 = __PAIR64__(*&v24[4], 2);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
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
    v21 = &unk_285188558;
    v22 = v16;
    v23 = v15;
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
        v21 = &unk_285188558;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_23F1DD480(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_285188558;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F1E8194(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1DE480(v4, a1);
  sub_23F1E7ECC(v3, a1);
  sub_23F1E7ECC(&v2, a1);
  operator new();
}

void sub_23F1E82D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E8304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E833C(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851880E0, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1DE480(v32, v6);
    sub_23F1E7ECC(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187A20;
    if (HIDWORD(v31) <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 2;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1DDA0C(&v24, v34, v33);
    *&v24 = &unk_285187A20;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2851875A0;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 8);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1E7C34(v33, a1);
  *&result = sub_23F1F8548(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1E85F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1E866C(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_23F1E7C34(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E87D8(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_23F1E7ECC(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E8944()
{
  if ((atomic_load_explicit(&qword_27E395C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C50))
  {
    sub_23F1FD130();
  }

  if (byte_27E395D37 >= 0)
  {
    return &qword_27E395D20;
  }

  else
  {
    return qword_27E395D20;
  }
}

void sub_23F1E8A14(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1DDDDC(&v2, a1);
    operator new();
  }

  sub_23F1DE480(&v2, a1);
  operator new();
}

void sub_23F1E8CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1E8D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E8D98(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187AB0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 3;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_285187090;
  *(a1 + 8) = 0;
  sub_23F1D08A8(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1D0B04(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187AB0;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1E8F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1E8FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1E8FEC(uint64_t a1)
{
  *a1 = &unk_285187090;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1E9064(uint64_t a1, uint64_t a2)
{
  if (sub_23F1CE49C(a2))
  {

    sub_23F1F37F4(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_23EF41D6C();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v11 = &unk_285188558;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v11 = &unk_285188558;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_285188558;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_23F1D0B04(a1, &v11);
  v11 = &unk_285188558;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_23F1E926C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1E9280(uint64_t a1, uint64_t a2)
{
  if (sub_23F1CE49C(a2))
  {

    sub_23F1F37F4(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_23EF41D6C();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_285188558;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_285188558;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_285188558;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_23F1D0B04(&v12, &v16);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_285188558;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_23F1E94CC(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1D1A80(v4, a1);
  sub_23F1E9280(v3, a1);
  sub_23F1E9280(&v2, a1);
  operator new();
}

void sub_23F1E9610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E963C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1E9654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1E9674(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851880F8, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1D1A80(v32, v6);
    sub_23F1E9280(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187AB0;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 3;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1D1088(&v24, v34, v33);
    *&v24 = &unk_285187AB0;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_285187090;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 21);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1E9064(v33, a1);
  sub_23F1F3548(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1E9930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1E99A4(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_23F1E9064(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1E9B10(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_23F1E9280(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1E9C7C()
{
  if ((atomic_load_explicit(&qword_27E395C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C58))
  {
    sub_23F1FD350();
  }

  if (byte_27E395D4F >= 0)
  {
    return &qword_27E395D38;
  }

  else
  {
    return qword_27E395D38;
  }
}

void sub_23F1E9D4C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D1458(&v2, a1);
    operator new();
  }

  sub_23F1D1A80(&v2, a1);
  operator new();
}

void sub_23F1EA018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1EA054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EA0D0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187B40;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 3;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_285187240;
  *(a1 + 8) = 0;
  sub_23F1D4CEC(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1D4F4C(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187B40;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1EA2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1EA2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EA324(uint64_t a1)
{
  *a1 = &unk_285187240;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1EA39C(uint64_t a1, uint64_t a2)
{
  if (sub_23F1CE49C(a2))
  {

    sub_23F1F37F4(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_23EF41D6C();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v11 = &unk_285188558;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v11 = &unk_285188558;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_285188558;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_23F1D4F4C(a1, &v11);
  v11 = &unk_285188558;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_23F1EA5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2004E4(va);
  _Unwind_Resume(a1);
}

void sub_23F1EA5B8(uint64_t a1, uint64_t a2)
{
  if (sub_23F1CE49C(a2))
  {

    sub_23F1F37F4(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_23EF41D6C();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_285188558;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_285188558;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_285188558;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_23F1D4F4C(&v12, &v16);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_285188558;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_23F1EA804(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1D5ED0(v4, a1);
  sub_23F1EA5B8(v3, a1);
  sub_23F1EA5B8(&v2, a1);
  operator new();
}

void sub_23F1EA948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EA974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EA98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1EA9AC(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188110, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1D5ED0(v32, v6);
    sub_23F1EA5B8(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187B40;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 3;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1D54D8(&v24, v34, v33);
    *&v24 = &unk_285187B40;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_285187240;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 22);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1EA39C(v33, a1);
  sub_23F1F4BE0(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1EAC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1EACDC(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_23F1EA39C(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1EAE48(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_23F1EA5B8(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1EAFB4()
{
  if ((atomic_load_explicit(&qword_27E395C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C60))
  {
    sub_23F1FD454();
  }

  if (byte_27E395D67 >= 0)
  {
    return &qword_27E395D50;
  }

  else
  {
    return qword_27E395D50;
  }
}

void sub_23F1EB084(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D58A8(&v2, a1);
    operator new();
  }

  sub_23F1D5ED0(&v2, a1);
  operator new();
}

void sub_23F1EB350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1EB38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EB408(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187BD0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_285187120;
  *(a1 + 8) = 0;
  sub_23F1D1E8C(a1 + 16, 25, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1D2120(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187BD0;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1EB610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1EB62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EB660(uint64_t a1)
{
  *a1 = &unk_285187120;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1EB6D8(uint64_t a1, uint64_t a2)
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

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
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
  sub_23F1D2120(a1, &v20);
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

void sub_23F1EB970(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
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

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
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
    v21 = &unk_285188558;
    v22 = v16;
    v23 = v15;
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
        v21 = &unk_285188558;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_23F1D2120(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_285188558;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F1EBC38(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1D3268(v4, a1);
  sub_23F1EB970(v3, a1);
  sub_23F1EB970(&v2, a1);
  operator new();
}

void sub_23F1EBD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EBDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EBDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1EBDE4(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188128, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1D3268(v32, v6);
    sub_23F1EB970(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187BD0;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1D27F4(&v24, 25, v34, v33);
    *&v24 = &unk_285187BD0;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_285187120;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 25);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1EB6D8(v33, a1);
  sub_23F1F3B98(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1EC0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1EC118(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_23F1EB6D8(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1EC284(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_23F1EB970(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1EC3F0()
{
  if ((atomic_load_explicit(&qword_27E395C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C68))
  {
    sub_23F1FD558();
  }

  if (byte_27E395D7F >= 0)
  {
    return &qword_27E395D68;
  }

  else
  {
    return qword_27E395D68;
  }
}

void sub_23F1EC4C0(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D2BC4(&v2, a1);
    operator new();
  }

  sub_23F1D3268(&v2, a1);
  operator new();
}

void sub_23F1EC78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1EC7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EC844(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187C60;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_285187480;
  *(a1 + 8) = 0;
  sub_23F1DA8C4(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1D653C(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187C60;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1ECA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1ECA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1ECA98(uint64_t a1)
{
  *a1 = &unk_285187480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1ECB10(uint64_t a1, uint64_t a2)
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

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
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
  sub_23F1D653C(a1, &v20);
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

void sub_23F1ECDA8(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
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

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
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
    v21 = &unk_285188558;
    v22 = v16;
    v23 = v15;
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
        v21 = &unk_285188558;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_23F1D653C(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_285188558;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F1ED070(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1DB79C(v4, a1);
  sub_23F1ECDA8(v3, a1);
  sub_23F1ECDA8(&v2, a1);
  operator new();
}

void sub_23F1ED1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1ED1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1ED1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1ED218(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188140, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1DB79C(v32, v6);
    sub_23F1ECDA8(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187C60;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1DAD20(&v24, v34, v33);
    *&v24 = &unk_285187C60;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_285187480;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 31);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1ECB10(v33, a1);
  *&v30[0] = &v24;
  *(&v30[0] + 1) = v33;
  *&result = sub_23F1F70F8(v30);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1ED4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1ED550(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_23F1ECB10(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1ED6BC(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_23F1ECDA8(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1ED828()
{
  if ((atomic_load_explicit(&qword_27E395C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C70))
  {
    sub_23F1FD65C();
  }

  if (byte_27E395D97 >= 0)
  {
    return &qword_27E395D80;
  }

  else
  {
    return qword_27E395D80;
  }
}

void sub_23F1ED8F8(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1DB0F8(&v2, a1);
    operator new();
  }

  sub_23F1DB79C(&v2, a1);
  operator new();
}

void sub_23F1EDBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1EDC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EDC7C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187CF0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_285187630;
  *(a1 + 8) = 0;
  sub_23F1DE88C(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1DEAEC(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187CF0;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1EDE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1EDE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EDED0(uint64_t a1)
{
  *a1 = &unk_285187630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1EDF48(uint64_t a1, uint64_t a2)
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

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
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
  sub_23F1DEAEC(a1, &v20);
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

void sub_23F1EE1E0(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
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

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
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
    v21 = &unk_285188558;
    v22 = v16;
    v23 = v15;
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
        v21 = &unk_285188558;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_23F1DEAEC(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_285188558;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F1EE4A8(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1DFC74(v4, a1);
  sub_23F1EE1E0(v3, a1);
  sub_23F1EE1E0(&v2, a1);
  operator new();
}

void sub_23F1EE5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EE618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EE630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1EE650(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188158, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1DFC74(v32, v6);
    sub_23F1EE1E0(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187CF0;
    if (HIDWORD(v31) <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1DF078(&v24, v34, v33);
    *&v24 = &unk_285187CF0;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_285187630;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 32);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1EDF48(v33, a1);
  sub_23F1DFAEC(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1EE90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1EE980(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_23F1EDF48(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1EEAEC(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_23F1EE1E0(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1EEC58()
{
  if ((atomic_load_explicit(&qword_27E395C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C78))
  {
    sub_23F1FD760();
  }

  if (byte_27E395DAF >= 0)
  {
    return &qword_27E395D98;
  }

  else
  {
    return qword_27E395D98;
  }
}

void sub_23F1EED28(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1DF448(&v2, a1);
    operator new();
  }

  sub_23F1DFC74(&v2, a1);
  operator new();
}

void sub_23F1EEFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1EF030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EF0AC(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187D80;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_285187120;
  *(a1 + 8) = 0;
  sub_23F1D1E8C(a1 + 16, 37, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1D2120(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187D80;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1EF2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1EF2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1EF304(uint64_t a1)
{
  *a1 = &unk_285187120;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1EF37C(uint64_t a1, uint64_t a2)
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

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
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
  sub_23F1D2120(a1, &v20);
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

void sub_23F1EF614(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
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

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
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
    v21 = &unk_285188558;
    v22 = v16;
    v23 = v15;
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
        v21 = &unk_285188558;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_285188558;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_23F1D2120(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_285188558;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F1EF8DC(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1D3268(v4, a1);
  sub_23F1EF614(v3, a1);
  sub_23F1EF614(&v2, a1);
  operator new();
}

void sub_23F1EFA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EFA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1EFA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1EFA88(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188170, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1D3268(v32, v6);
    sub_23F1EF614(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187D80;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_23F1D27F4(&v24, 37, v34, v33);
    *&v24 = &unk_285187D80;
    sub_23F1FF324(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_285188270[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2851882B0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_285187120;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 37);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1EF37C(v33, a1);
  sub_23F1F3B98(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1EFD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1EFDBC(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_23F1EF37C(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F1EFF28(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_23F1EF614(&v7, a1);
    operator new();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_23F1F0094()
{
  if ((atomic_load_explicit(&qword_27E395C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C80))
  {
    sub_23F1FD864();
  }

  if (byte_27E395DC7 >= 0)
  {
    return &qword_27E395DB0;
  }

  else
  {
    return qword_27E395DB0;
  }
}

void sub_23F1F0164(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D2BC4(&v2, a1);
    operator new();
  }

  sub_23F1D3268(&v2, a1);
  operator new();
}

void sub_23F1F0430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1F046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1F04E8(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285187E10;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_2851872D0;
  *(a1 + 8) = 0;
  sub_23F1D62DC(a1 + 16, v14);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_23EF41D6C();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_285188578;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_23F2034EC(v17);
    }
  }

LABEL_14:
  sub_23F1D653C(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_23F1FF324(&v16);
LABEL_16:
  *a1 = &unk_285187E10;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1F06EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF194(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_23F1F0708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F1FF324(va);
  sub_23F1CE078(v7 + 16);
  _Unwind_Resume(a1);
}