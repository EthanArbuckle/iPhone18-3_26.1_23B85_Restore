uint64_t sub_23F1F073C(uint64_t a1)
{
  *a1 = &unk_2851872D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_23F1F07B4(uint64_t a1, uint64_t a2)
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

void sub_23F1F0A4C(uint64_t a1, uint64_t a2)
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

void sub_23F1F0D14(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_23F1D76C4(v4, a1);
  sub_23F1F0A4C(v3, a1);
  sub_23F1F0A4C(&v2, a1);
  operator new();
}

void sub_23F1F0E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x245CACD00](v14, 0x10A3C40ED729E16);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1F0E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

void sub_23F1F0E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1FF324(va);
  _Unwind_Resume(a1);
}

double sub_23F1F0EBC(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285188188, 0);
  if (v6)
  {
    v7 = v6;
    sub_23F1D76C4(v32, v6);
    sub_23F1F0A4C(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_285187E10;
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
    sub_23F1D6AC8(&v24, v34, v33);
    *&v24 = &unk_285187E10;
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
    *&v24 = &unk_2851872D0;
    if (v19 != -1)
    {
      (off_285188270[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 38);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x245CACD00](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_23F1F07B4(v33, a1);
  sub_23F1D753C(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F1F1178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1F11EC(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_23F1F07B4(&v7, a1);
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

void sub_23F1F1358(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_23F1F0A4C(&v7, a1);
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

uint64_t *sub_23F1F14C4()
{
  if ((atomic_load_explicit(&qword_27E395C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395C88))
  {
    sub_23F1FD968();
  }

  if (byte_27E395DDF >= 0)
  {
    return &qword_27E395DC8;
  }

  else
  {
    return qword_27E395DC8;
  }
}

void sub_23F1F1594(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_23F1D6E98(&v2, a1);
    operator new();
  }

  sub_23F1D76C4(&v2, a1);
  operator new();
}

void sub_23F1F1860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF324(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF324(&a9);
  _Unwind_Resume(a1);
}

void sub_23F1F189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23F1FF194(v13);
  sub_23F1FF570(&a12);
  MEMORY[0x245CACD00](v12, 0xA1C40711E6FFCLL);
  sub_23F1FF570(&a9);
  _Unwind_Resume(a1);
}

void *sub_23F1F1918(void *a1)
{
  *a1 = &unk_285187EA0;
  sub_23F1FF324(a1 + 1);
  return a1;
}

void sub_23F1F195C(void *a1)
{
  *a1 = &unk_285187EA0;
  sub_23F1FF324(a1 + 1);

  JUMPOUT(0x245CACD00);
}

void *sub_23F1F19C0(void *a1)
{
  *a1 = &unk_285187EC0;
  sub_23F1FF570(a1 + 1);
  return a1;
}

void sub_23F1F1A04(void *a1)
{
  *a1 = &unk_285187EC0;
  sub_23F1FF570(a1 + 1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1F1A68(uint64_t result)
{
  if (*(result + 32))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28517BD08;
    __cxa_throw(exception, &unk_28517BCE0, std::exception::~exception);
  }

  return result;
}

uint64_t sub_23F1F1AD0(uint64_t a1)
{
  *a1 = &unk_285186F70;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_23F1F1B5C(uint64_t a1)
{
  *a1 = &unk_2851871B0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_23F1F1BE8(uint64_t a1)
{
  *a1 = &unk_285187360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_23F1F1C74(uint64_t a1)
{
  *a1 = &unk_285187510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_23F1F1D00(uint64_t a1)
{
  *a1 = &unk_285187000;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F1D8C(uint64_t a1)
{
  *a1 = &unk_2851873F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F1E18(uint64_t a1)
{
  *a1 = &unk_2851875A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F1EA4(uint64_t a1)
{
  *a1 = &unk_285187090;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F1F30(uint64_t a1)
{
  *a1 = &unk_285187240;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F1FBC(uint64_t a1)
{
  *a1 = &unk_285187120;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F2048(uint64_t a1)
{
  *a1 = &unk_285187480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F20D4(uint64_t a1)
{
  *a1 = &unk_285187630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F2160(uint64_t a1)
{
  *a1 = &unk_285187120;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

uint64_t sub_23F1F21EC(uint64_t a1)
{
  *a1 = &unk_2851872D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_285188270[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x245CACD00](a1, 0x10A3C40ED729E16);
}

void sub_23F1F2278(uint64_t a1, void *a2)
{
  *a2 = &unk_285188558;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_23F1F2320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_23F1F2330(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = a3;
    (off_285188270[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = &unk_285188558;
    *(v3 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v3 + 24) = 0;
    return;
  }

  v5 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a2 + 16);
  *(a2 + 8) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

__n128 sub_23F1F2438(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_285188270[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_285188578;
    *(v3 + 24) = 1;
    return result;
  }

  sub_23F1FF228(a2, a3);
  return result;
}

__n128 sub_23F1F24F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    v6 = a3;
    (off_285188270[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_285188598;
    *(v3 + 24) = 2;
    return result;
  }

  sub_23F1FF474(a2, a3);
  return result;
}

__n128 sub_23F1F25A8(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[1].n128_i32[2];
  if (v4 == -1)
  {
    goto LABEL_8;
  }

  if (v4 != 3)
  {
    v7 = a3;
    (off_285188270[v4])(&v8, v3);
    a3 = v7;
LABEL_8:
    result = *a3;
    *v3 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v3[1].n128_u32[2] = 3;
    return result;
  }

  result = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  v6 = a2->n128_u64[1];
  *a2 = result;
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }

  return result;
}

void sub_23F1F2858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1F2AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F1F2AE8(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v9 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return result;
    }

    v12 = result[1];
    v13 = v9 - 1;
    v14 = *v1;
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(v1 + 5);
      v17 = *v12;
      if (v13)
      {
        for (i = 0; i != v15; ++i)
        {
          v19 = v13;
          v20 = v14;
          do
          {
            *v20 = v17;
            v20 += v2;
            --v19;
          }

          while (v19);
          v17 = *v12;
          *v20 = *v12;
          v14 += v16;
        }

        goto LABEL_20;
      }

      do
      {
        *v14 = v17;
        v14 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v13)
    {
LABEL_21:
      *v14 = *v12;
      return result;
    }

    v17 = *v12;
    do
    {
LABEL_20:
      *v14 = v17;
      v14 += v2;
      --v13;
    }

    while (v13);
    goto LABEL_21;
  }

  v3 = *(v1 + 5);
  v4 = *(v1 + 2);
  v5 = result[1];
  if (v3 == v4)
  {
    v6 = (*(v1 + 3) * v3);
    v7 = *v1;
    v8 = *v5;

    return memset(v7, v8, v6);
  }

  v21 = *(v1 + 3);
  if (v4)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *v1;
    v24 = v21 - 1;
    if (v21 != 1)
    {
      do
      {
        memset(v23, *v5, v4);
        v23 += v3;
        --v24;
      }

      while (v24);
    }

    v8 = *v5;
    v7 = v23;
    v6 = v4;

    return memset(v7, v8, v6);
  }

  return result;
}

_DWORD *sub_23F1F2C80(_DWORD *result, char **a2)
{
  v2 = result[4];
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v17 = result[5];
    v18 = *(a2 + 5);
    v19 = result[2];
    if (v17 == v18 && v17 == v19)
    {
      v28 = (result[3] * v17);
      if (!v28)
      {
        return result;
      }

      v29 = *a2;
      v27 = *result;
      v26 = v29;
    }

    else
    {
      v21 = result[3];
      if (v19)
      {
        v22 = v21 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        return result;
      }

      v23 = *result;
      v24 = *a2;
      v25 = v21 - 1;
      if (v21 != 1)
      {
        do
        {
          memmove(v24, v23, v19);
          v23 += v17;
          v24 += v18;
          --v25;
        }

        while (v25);
      }

      v26 = v24;
      v27 = v23;
      v28 = v19;
    }

    return memmove(v26, v27, v28);
  }

  v5 = result[2];
  v6 = result[3];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *result;
    v10 = *a2;
    v11 = v6 - 1;
    if (v11)
    {
      v12 = *(a2 + 5);
      v13 = result[5];
      if (v8)
      {
        for (i = 0; i != v11; ++i)
        {
          v15 = v8;
          v16 = v9;
          result = v10;
          do
          {
            *result = *v16;
            v16 += v2;
            result = (result + v3);
            --v15;
          }

          while (v15);
          *result = *v16;
          v9 += v13;
          v10 += v12;
        }

        goto LABEL_18;
      }

      do
      {
        *v10 = *v9;
        v9 += v13;
        v10 += v12;
        --v11;
      }

      while (v11);
    }

    if (!v8)
    {
LABEL_19:
      *v10 = *v9;
      return result;
    }

    do
    {
LABEL_18:
      *v10 = *v9;
      v9 += v2;
      v10 += v3;
      --v8;
    }

    while (v8);
    goto LABEL_19;
  }

  return result;
}

void *sub_23F1F2E3C(void *result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 24);
  if (v3 != *(*result + 20) * v2)
  {
    v12 = *(v1 + 3);
    v11 = *(v1 + 4);
    if (v2)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v12 - 1;
    v17 = *v1;
    v18 = v11 - 1;
    if (v11 != 1)
    {
      v19 = *(v1 + 7);
      if (v12 != 1)
      {
        v20 = 0;
        do
        {
          v21 = v16;
          v22 = v17;
          do
          {
            memset(v22, *v15, v2);
            v22 += v3;
            --v21;
          }

          while (v21);
          memset(v22, *v15, v2);
          v17 += v19;
          ++v20;
        }

        while (v20 != v18);
        goto LABEL_20;
      }

      do
      {
        memset(v17, *v15, v2);
        v17 += v19;
        --v18;
      }

      while (v18);
    }

    if (!v16)
    {
LABEL_21:
      v10 = *v15;
      v9 = v17;
      v8 = v2;
      goto LABEL_34;
    }

    do
    {
LABEL_20:
      memset(v17, *v15, v2);
      v17 += v3;
      --v16;
    }

    while (v16);
    goto LABEL_21;
  }

  v4 = *(v1 + 7);
  v5 = *(v1 + 3);
  v6 = result[1];
  v7 = (v5 * v2);
  if (v4 == v5 * v3)
  {
    v8 = (*(v1 + 4) * v7);
    v9 = *v1;
    v10 = *v6;
LABEL_34:

    return memset(v9, v10, v8);
  }

  v23 = *(v1 + 4);
  if (v2)
  {
    v24 = v5 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && v23 != 0)
  {
    v26 = *v1;
    v27 = v23 - 1;
    if (v23 != 1)
    {
      do
      {
        memset(v26, *v6, v7);
        v26 += v4;
        --v27;
      }

      while (v27);
    }

    v10 = *v6;
    v9 = v26;
    v8 = v7;
    goto LABEL_34;
  }

  return result;
}

size_t *sub_23F1F2FFC(size_t *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 5) != 1 || *(a2 + 20) != 1)
  {
    v5 = *(result + 3);
    v6 = *(result + 4);
    if (*(result + 2))
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && v6 != 0)
    {
      v9 = v5 - 1;
      v10 = *(result + 6);
      v11 = *(a2 + 24);
      v12 = *result;
      v13 = *a2;
      v14 = v6 - 1;
      if (v14)
      {
        v15 = *(a2 + 28);
        v16 = *(result + 7);
        if (v9)
        {
          v17 = 0;
          v18 = v12 + 1;
          result = (v13 + 1);
          do
          {
            v19 = result;
            v20 = v18;
            v21 = v9;
            do
            {
              *(v19 - 1) = *(v20 - 1);
              *v19 = *v20;
              v20 += v10;
              v19 = (v19 + v11);
              --v21;
            }

            while (v21);
            *(v19 - 1) = *(v20 - 1);
            *v19 = *v20;
            v12 += v16;
            v13 += v15;
            ++v17;
            v18 += v16;
            result = (result + v15);
          }

          while (v17 != v14);
          goto LABEL_21;
        }

        do
        {
          *v13 = *v12;
          v13[1] = v12[1];
          v12 += v16;
          v13 += v15;
          --v14;
        }

        while (v14);
      }

      if (!v9)
      {
LABEL_22:
        *v13 = *v12;
        v13[1] = v12[1];
        return result;
      }

      do
      {
LABEL_21:
        *v13 = *v12;
        v13[1] = v12[1];
        v12 += v10;
        v13 += v11;
        --v9;
      }

      while (v9);
      goto LABEL_22;
    }

    return result;
  }

  v22 = *(result + 6);
  v23 = *(result + 2);
  if (v22 != *(a2 + 24) || v22 != v23)
  {
    v39 = *(result + 2);
    if (v23)
    {
      v25 = *(result + 3) == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25 && *(result + 4) != 0)
    {
      return sub_23F1F324C(&v39, result, a2);
    }

    return result;
  }

  v27 = *(result + 7);
  v28 = *(a2 + 28);
  v29 = *(result + 3);
  v30 = (v29 * v22);
  if (v27 == v28 && v27 == v30)
  {
    v38 = (*(result + 4) * v27);
    if (!v38)
    {
      return result;
    }

    v36 = *a2;
    v37 = *v3;
    goto LABEL_50;
  }

  if (v22)
  {
    if (v29)
    {
      v32 = *(result + 4);
      if (v32)
      {
        v33 = *result;
        v34 = *a2;
        v35 = v32 - 1;
        if (v32 != 1)
        {
          if (!v30)
          {
            return result;
          }

          do
          {
            result = memmove(v34, v33, v30);
            v33 += v27;
            v34 += v28;
            --v35;
          }

          while (v35);
        }

        if (v30)
        {
          v36 = v34;
          v37 = v33;
          v38 = v30;
LABEL_50:

          return memmove(v36, v37, v38);
        }
      }
    }
  }

  return result;
}

size_t *sub_23F1F324C(size_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 6);
    v10 = *(a3 + 6);
    v11 = *a2;
    v12 = *a3;
    v30 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 7);
      v14 = *(a2 + 7);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v23 = *(a2 + 7);
        v24 = v4 - 2;
LABEL_39:
        result = memmove(v12, v11, v15);
        while (1)
        {
          v11 += v23;
          v12 += v13;
          if (!v24)
          {
            break;
          }

          v15 = *v7;
          --v24;
          if (*v7)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v28 = *(a2 + 7);
        v29 = v13;
        v25 = v3 - 1;
        v26 = *(a2 + 3);
        v16 = 0;
        v27 = v3 - 2;
        v31 = &v11[v9];
        v17 = &v12[v10];
LABEL_14:
        v18 = 0;
        v19 = 0;
        v20 = v27;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v18], &v11[v19], v15);
        }

        while (v20)
        {
          v15 = *v7;
          --v20;
          v19 += v9;
          v18 += v10;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        if (*v7)
        {
          result = memmove(&v17[v18], &v31[v19], *v7);
        }

        while (1)
        {
          v11 += v28;
          v12 += v29;
          if (++v16 == v30)
          {
            break;
          }

          v15 = *v7;
          v31 += v28;
          v17 += v29;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v8 = v25;
        v3 = v26;
      }
    }

    v21 = *v7;
    if (v8)
    {
      if (!v21)
      {
        return result;
      }

      v22 = v3 - 2;
LABEL_28:
      result = memmove(v12, v11, v21);
      while (1)
      {
        v11 += v9;
        v12 += v10;
        if (!v22)
        {
          break;
        }

        v21 = *v7;
        --v22;
        if (*v7)
        {
          goto LABEL_28;
        }
      }

      v21 = *v7;
    }

    if (v21)
    {

      return memmove(v12, v11, v21);
    }
  }

  return result;
}

unint64_t sub_23F1F3448(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) == 1)
  {
    return sub_23F1F2E3C(result);
  }

  v2 = *(v1 + 12);
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = *(result + 8);
    v7 = v2 - 1;
    v8 = *(v1 + 24);
    v9 = *v1;
    v10 = v3 - 1;
    if (v10)
    {
      v11 = *(v1 + 28);
      v12 = *v6;
      if (v7)
      {
        v13 = 0;
        v14 = v9 + 2;
        do
        {
          v15 = v14;
          LODWORD(result) = v7;
          do
          {
            *(v15 - 2) = v12;
            v12 = *v6;
            *(v15 - 1) = *v6;
            *v15 = v12;
            v15 += v8;
            result = (result - 1);
          }

          while (result);
          v16 = *v6;
          *(v15 - 2) = *v6;
          *(v15 - 1) = v16;
          v12 = *v6;
          *v15 = *v6;
          v9 += v11;
          ++v13;
          v14 += v11;
        }

        while (v13 != v10);
        goto LABEL_19;
      }

      do
      {
        *v9 = v12;
        v12 = *v6;
        v9[1] = *v6;
        v9[2] = v12;
        v9 += v11;
        --v10;
      }

      while (v10);
    }

    v12 = *v6;
    if (!v7)
    {
LABEL_21:
      *v9 = v12;
      v17 = *v6;
      v9[1] = v17;
      v9[2] = v17;
      return result;
    }

    do
    {
LABEL_19:
      *v9 = v12;
      v12 = *v6;
      v9[1] = *v6;
      v9[2] = v12;
      v9 += v8;
      --v7;
    }

    while (v7);
    v12 = *v6;
    goto LABEL_21;
  }

  return result;
}

void sub_23F1F3548(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v24 = 0;
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
      v25 = &v24;
      sub_23F1F36CC(&v25, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v25 = *(a1 + 8);
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
      sub_23F1F324C(&v25, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v23 = (*(a1 + 16) * v12);
    if (!v23)
    {
      return;
    }

    v21 = *a2;
    v22 = *a1;
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

          do
          {
            memmove(v19, v18, v15);
            v18 += v12;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v21 = v19;
          v22 = v18;
          v23 = v15;
LABEL_40:

          memmove(v21, v22, v23);
        }
      }
    }
  }
}

void sub_23F1F36CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *(a2 + 24);
    v9 = *(a3 + 24);
    v10 = *a2;
    v11 = *a3;
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 2;
        v17 = v10 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

uint64_t sub_23F1F37F4(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a3;
  if (v3)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  if (HIDWORD(v4))
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v13) = 1;
  *(&v13 + 4) = v5 | (v6 << 32);
  *result = a2;
  *(result + 8) = __PAIR64__(v4, 3);
  *(result + 16) = HIDWORD(v4);
  *(result + 20) = v13;
  *(result + 28) = v6;
  *(result + 32) = v4;
  *(result + 40) = *(&v13 + 4);
  if (v6 * HIDWORD(v4) == -1)
  {
    v7 = result;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v8 = qword_27E396178, v9 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_20:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        result = v7;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = qword_27E396178;
      v9 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v9);
    if (byte_27E3961A0)
    {
      goto LABEL_20;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE ***sub_23F1F39D0(_BYTE ***result, uint64_t a2)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *(a2 + 24);
    v8 = *a2;
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v8 + 3;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 3) = ***result;
            *(v13 - 2) = ***result;
            *(v13 - 1) = ***result;
            *v13 = ***result;
            v13 += v7;
            --v14;
          }

          while (v14);
          *(v13 - 3) = ***result;
          *(v13 - 2) = ***result;
          *(v13 - 1) = ***result;
          *v13 = ***result;
          v8 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_17;
      }

      do
      {
        *v8 = ***result;
        v8[1] = ***result;
        v8[2] = ***result;
        v8[3] = ***result;
        v8 += v10;
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_18:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      return result;
    }

    do
    {
LABEL_17:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      v8 += v7;
      --v6;
    }

    while (v6);
    goto LABEL_18;
  }

  return result;
}

void sub_23F1F3B98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v24 = 0;
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
      v25 = &v24;
      sub_23F1F3D1C(&v25, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v25 = *(a1 + 8);
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
      sub_23F1F324C(&v25, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v23 = (*(a1 + 16) * v12);
    if (!v23)
    {
      return;
    }

    v21 = *a2;
    v22 = *a1;
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

          do
          {
            memmove(v19, v18, v15);
            v18 += v12;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v21 = v19;
          v22 = v18;
          v23 = v15;
LABEL_40:

          memmove(v21, v22, v23);
        }
      }
    }
  }
}

void sub_23F1F3D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *(a2 + 24);
    v9 = *(a3 + 24);
    v10 = *a2;
    v11 = *a3;
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 3;
        v17 = v10 + 1;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 3) = *(v18 - 1);
            *(v19 - 2) = *v18;
            *(v19 - 1) = v18[1];
            *v19 = v18[2];
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 3) = *(v18 - 1);
          *(v19 - 2) = *v18;
          *(v19 - 1) = v18[1];
          *v19 = v18[2];
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v11[3] = v10[3];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

void *sub_23F1F3E6C(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v10 = *(v1 + 8);
    v11 = *(v1 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v1;
    v16 = 2 * v2;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v1 + 20);
      if (!v14)
      {
        v48 = *v13;
        do
        {
          v15->i16[0] = v48;
          v15 = (v15 + 2 * v18);
          --v17;
        }

        while (v17);
        goto LABEL_50;
      }

      v19 = 0;
      v20 = *v13;
      v21 = 2 * v18;
      do
      {
        v22 = v15;
        v23 = v14;
        do
        {
          v22->i16[0] = v20;
          v22 = (v22 + v16);
          --v23;
        }

        while (v23);
        v20 = *v13;
        v22->i16[0] = *v13;
        v15 = (v15 + v21);
        ++v19;
      }

      while (v19 != v17);
    }

    else
    {
      v20 = *v13;
      if (!v14)
      {
LABEL_51:
        v15->i16[0] = v20;
        return result;
      }
    }

    do
    {
      v15->i16[0] = v20;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
LABEL_50:
    v20 = *v13;
    goto LABEL_51;
  }

  v3 = *(v1 + 20);
  v4 = *(v1 + 8);
  if (v3 != v4)
  {
    v24 = *(v1 + 12);
    if (v4)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v1;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v4 & 3);
      v30 = v27 + 1;
      v31 = 2 * v3;
      do
      {
        v32 = *v26;
        v33 = v4;
        v34 = v27;
        if (v4 >= 4)
        {
          if (v4 < 0x10)
          {
            v35 = 0;
LABEL_31:
            v34 = (v27 + 2 * (v4 & 0xFFFFFFFC));
            v39 = vdup_n_s16(v32);
            v40 = 2 * v35;
            v41 = v35 - (v4 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v33 = v4 & 3;
            if ((v4 & 0xFFFFFFFC) == v4)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v36 = vdupq_n_s16(v32);
          v37 = v4 & 0xFFFFFFF0;
          v38 = v30;
          do
          {
            v38[-1] = v36;
            *v38 = v36;
            v38 += 2;
            v37 -= 16;
          }

          while (v37);
          if ((v4 & 0xFFFFFFF0) == v4)
          {
            goto LABEL_23;
          }

          v35 = v4 & 0xFFFFFFF0;
          if ((v4 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v34 = (v27 + 2 * (v4 & 0xFFFFFFF0));
          v33 = v4 & 0xF;
        }

LABEL_36:
        v42 = v33 + 1;
        do
        {
          v34->i16[0] = v32;
          v34 = (v34 + 2);
          --v42;
        }

        while (v42 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    v43 = *v26;
    v44 = v4 - (v4 != 0) + 1;
    if (v44 < 4)
    {
      v45 = v27;
      goto LABEL_73;
    }

    if (v44 >= 0x10)
    {
      v47 = v44 & 0xFFFFFFFFFFFFFFF0;
      v55 = vdupq_n_s16(v43);
      v56 = v27 + 1;
      v57 = v44 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v56[-1] = v55;
        *v56 = v55;
        v56 += 2;
        v57 -= 16;
      }

      while (v57);
      if (v44 == v47)
      {
        return result;
      }

      if ((v44 & 0xC) == 0)
      {
        v45 = (v27 + 2 * v47);
        v4 -= v47;
        goto LABEL_73;
      }
    }

    else
    {
      v47 = 0;
    }

    v4 -= v44 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = (v27 + 2 * (v44 & 0xFFFFFFFFFFFFFFFCLL));
    v58 = vdup_n_s16(v43);
    v59 = (v27 + 2 * v47);
    v60 = v47 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v59++ = v58;
      v60 += 4;
    }

    while (v60);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_73:
    v62 = v4 + 1;
    do
    {
      v45->i16[0] = v43;
      v45 = (v45 + 2);
      --v62;
    }

    while (v62 > 1);
    return result;
  }

  v5 = (*(v1 + 12) * v3);
  if (!v5)
  {
    return result;
  }

  v6 = *v1;
  v7 = *result[1];
  if (v5 < 4)
  {
    v8 = (*(v1 + 12) * v3);
    v9 = *v1;
    goto LABEL_69;
  }

  if (v5 >= 0x10)
  {
    v46 = v5 & 0xFFFFFFF0;
    v49 = vdupq_n_s16(v7);
    v50 = v6 + 1;
    v51 = v46;
    do
    {
      v50[-1] = v49;
      *v50 = v49;
      v50 += 2;
      v51 -= 16;
    }

    while (v51);
    if (v46 == v5)
    {
      return result;
    }

    if ((v5 & 0xC) == 0)
    {
      v9 = (v6 + 2 * v46);
      v8 = v5 & 0xF;
LABEL_69:
      v61 = v8 + 1;
      do
      {
        v9->i16[0] = v7;
        v9 = (v9 + 2);
        --v61;
      }

      while (v61 > 1);
      return result;
    }
  }

  else
  {
    v46 = 0;
  }

  v8 = v5 & 3;
  v9 = (v6 + 2 * (v5 & 0xFFFFFFFC));
  v52 = vdup_n_s16(v7);
  v53 = (v6 + 2 * v46);
  v54 = v46 - (v5 & 0xFFFFFFFC);
  do
  {
    *v53++ = v52;
    v54 += 4;
  }

  while (v54);
  if ((v5 & 0xFFFFFFFC) != v5)
  {
    goto LABEL_69;
  }

  return result;
}

unint64_t sub_23F1F41BC(unint64_t result, char **a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v22 = *(result + 20);
    v23 = *(a2 + 5);
    v24 = *(result + 8);
    if (v22 == v23 && v22 == v24)
    {
      v37 = *(result + 12) * v22;
      if (!v37)
      {
        return result;
      }

      v36 = 2 * v37;
      v38 = *a2;
      v35 = *result;
      v34 = v38;
    }

    else
    {
      v26 = *(result + 12);
      if (v24)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return result;
      }

      v28 = *result;
      v29 = *a2;
      v30 = 2 * v24;
      v31 = v26 - 1;
      if (v26 != 1)
      {
        v32 = 2 * v22;
        v33 = 2 * v23;
        do
        {
          memmove(v29, v28, v30);
          v28 += v32;
          v29 += v33;
          --v31;
        }

        while (v31);
      }

      v34 = v29;
      v35 = v28;
      v36 = v30;
    }

    return memmove(v34, v35, v36);
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *result;
    v10 = *a2;
    v11 = 2 * v2;
    v12 = 2 * v3;
    v13 = v6 - 1;
    if (v13)
    {
      v14 = *(a2 + 5);
      v15 = *(result + 20);
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v9 += v15;
          v10 += 2 * v14;
          --v13;
        }

        while (v13);
        goto LABEL_38;
      }

      v16 = 0;
      v17 = 2 * v15;
      v18 = 2 * v14;
      do
      {
        v19 = v10;
        v20 = v9;
        v21 = v8;
        do
        {
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        result = *v20;
        *v19 = result;
        v9 = (v9 + v17);
        v10 += v18;
        ++v16;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_38:
      *v10 = *v9;
      return result;
    }

    do
    {
      *v10 = *v9;
      v9 = (v9 + v11);
      v10 += v12;
      --v8;
    }

    while (v8);
    goto LABEL_38;
  }

  return result;
}

void *sub_23F1F43A0(void *result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v12 == 1)
    {
      v22 = *v15;
      if (!v16)
      {
LABEL_54:
        v17->i16[0] = v22;
        v17->i16[1] = v22;
        v17->i16[2] = *v15;
        return result;
      }
    }

    else
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        v22 = *v15;
        do
        {
          v17->i16[0] = v22;
          v17->i16[1] = v22;
          v22 = *v15;
          v17->i16[2] = *v15;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_54;
      }

      v21 = 0;
      v22 = *v15;
      v23 = (v17->i64 + 4);
      do
      {
        result = v23;
        v24 = v16;
        do
        {
          *(result - 2) = v22;
          *(result - 1) = v22;
          v22 = *v15;
          *result = *v15;
          result = (result + v18);
          --v24;
        }

        while (v24);
        *(result - 2) = v22;
        *(result - 1) = v22;
        v22 = *v15;
        *result = *v15;
        v17 = (v17 + 2 * v20);
        ++v21;
        v23 = (v23 + 2 * v20);
      }

      while (v21 != v19);
    }

    do
    {
      v17->i16[0] = v22;
      v17->i16[1] = v22;
      v22 = *v15;
      v17->i16[2] = *v15;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_54;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v25 = result[1];
    v65[0] = *result;
    v65[1] = v25;
    return sub_23F1F4780(v65);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v26 = *(v1 + 16);
    if (v2)
    {
      v27 = v4 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27 || v26 == 0)
    {
      return result;
    }

    v29 = result[1];
    v30 = *v1;
    v31 = v26 - 1;
    if (v31)
    {
      if (!v5)
      {
        return result;
      }

      v32 = 0;
      result = (v5 & 3);
      v33 = v30 + 1;
      v34 = 2 * v3;
      do
      {
        v35 = *v29;
        v36 = v5;
        v37 = v30;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v38 = 0;
LABEL_41:
            v37 = (v30 + 2 * (v5 & 0xFFFFFFFC));
            v42 = vdup_n_s16(v35);
            v43 = 2 * v38;
            v44 = v38 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v30->i8[v43] = v42;
              v43 += 8;
              v44 += 4;
            }

            while (v44);
            v36 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v39 = vdupq_n_s16(v35);
          v40 = v5 & 0xFFFFFFF0;
          v41 = v33;
          do
          {
            v41[-1] = v39;
            *v41 = v39;
            v41 += 2;
            v40 -= 16;
          }

          while (v40);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v38 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v37 = (v30 + 2 * (v5 & 0xFFFFFFF0));
          v36 = v5 & 0xF;
        }

LABEL_46:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = v35;
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_33:
        v30 = (v30 + v34);
        ++v32;
        v33 = (v33 + v34);
      }

      while (v32 != v31);
    }

    if (!v5)
    {
      return result;
    }

    v46 = *v29;
    if (v5 < 4)
    {
      v47 = v5;
      v48 = v30;
      goto LABEL_83;
    }

    if (v5 >= 0x10)
    {
      v56 = v5 & 0xFFFFFFF0;
      v57 = vdupq_n_s16(v46);
      v58 = v30 + 1;
      v59 = v56;
      do
      {
        v58[-1] = v57;
        *v58 = v57;
        v58 += 2;
        v59 -= 16;
      }

      while (v59);
      if (v56 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v48 = (v30 + 2 * v56);
        v47 = v5 & 0xF;
        goto LABEL_83;
      }
    }

    else
    {
      v56 = 0;
    }

    v47 = v5 & 3;
    v48 = (v30 + 2 * (v5 & 0xFFFFFFFC));
    v60 = vdup_n_s16(v46);
    v61 = (v30 + 2 * v56);
    v62 = v56 - (v5 & 0xFFFFFFFC);
    do
    {
      *v61++ = v60;
      v62 += 4;
    }

    while (v62);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_83:
    v64 = v47 + 1;
    do
    {
      v48->i16[0] = v46;
      v48 = (v48 + 2);
      --v64;
    }

    while (v64 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = *result[1];
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = *v1;
    goto LABEL_79;
  }

  if (v6 >= 0x10)
  {
    v49 = v6 & 0xFFFFFFF0;
    v50 = vdupq_n_s16(v8);
    v51 = v7 + 1;
    v52 = v49;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 16;
    }

    while (v52);
    if (v49 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v49);
      v9 = v6 & 0xF;
LABEL_79:
      v63 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v63;
      }

      while (v63 > 1);
      return result;
    }
  }

  else
  {
    v49 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v53 = vdup_n_s16(v8);
  v54 = (v7 + 2 * v49);
  v55 = v49 - (v6 & 0xFFFFFFFC);
  do
  {
    *v54++ = v53;
    v55 += 4;
  }

  while (v55);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_79;
  }

  return result;
}

unint64_t sub_23F1F4780(unint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 12);
  v4 = *(*result + 16);
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = *(result + 8);
    v8 = v3 - 1;
    v9 = *v1;
    v10 = 2 * *(v1 + 6);
    v11 = v4 - 1;
    if (v11)
    {
      v12 = *(v1 + 7);
      v13 = v2 & 0xFFFFFFF0;
      v14 = 2 * v13;
      result = v2 & 0xFFFFFFFC;
      v15 = 2 * result;
      v16 = 0;
      v17 = v9 + 1;
      v18 = 2 * v12;
      if (!v8)
      {
        while (1)
        {
          v43 = *v7;
          v44 = v2;
          v45 = v9;
          if (v2 >= 4)
          {
            if (v2 < 0x10)
            {
              v46 = 0;
LABEL_53:
              v45 = (v9 + v15);
              v50 = vdup_n_s16(v43);
              v51 = 2 * v46;
              v52 = v46 - (v2 & 0xFFFFFFFC);
              do
              {
                *&v9->i8[v51] = v50;
                v51 += 8;
                v52 += 4;
              }

              while (v52);
              v44 = (v2 & 3);
              if (result == v2)
              {
                goto LABEL_45;
              }

              goto LABEL_58;
            }

            v47 = vdupq_n_s16(v43);
            v48 = v2 & 0xFFFFFFF0;
            v49 = v17;
            do
            {
              v49[-1] = v47;
              *v49 = v47;
              v49 += 2;
              v48 -= 16;
            }

            while (v48);
            if (v13 == v2)
            {
              goto LABEL_45;
            }

            v46 = v2 & 0xFFFFFFF0;
            if ((v2 & 0xC) != 0)
            {
              goto LABEL_53;
            }

            v45 = (v9 + v14);
            v44 = (v2 & 0xF);
          }

LABEL_58:
          v53 = v44 + 1;
          do
          {
            v45->i16[0] = v43;
            v45 = (v45 + 2);
            --v53;
          }

          while (v53 > 1);
LABEL_45:
          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            goto LABEL_61;
          }
        }
      }

LABEL_12:
      v19 = 0;
      v20 = v9;
      v21 = v17;
      while (1)
      {
        v22 = *v7;
        v23 = v2;
        v24 = v20;
        if (v2 >= 4)
        {
          if (v2 < 0x10)
          {
            v25 = 0;
LABEL_21:
            v24 = (v20 + v15);
            v29 = vdup_n_s16(v22);
            v30 = 2 * v25;
            v31 = v25 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v30] = v29;
              v30 += 8;
              v31 += 4;
            }

            while (v31);
            v23 = (v2 & 3);
            if (result == v2)
            {
              goto LABEL_13;
            }

            goto LABEL_26;
          }

          v26 = vdupq_n_s16(v22);
          v27 = v2 & 0xFFFFFFF0;
          v28 = v21;
          do
          {
            v28[-1] = v26;
            *v28 = v26;
            v28 += 2;
            v27 -= 16;
          }

          while (v27);
          if (v13 == v2)
          {
            goto LABEL_13;
          }

          v25 = v2 & 0xFFFFFFF0;
          if ((v2 & 0xC) != 0)
          {
            goto LABEL_21;
          }

          v24 = (v20 + v14);
          v23 = (v2 & 0xF);
        }

LABEL_26:
        v32 = v23 + 1;
        do
        {
          v24->i16[0] = v22;
          v24 = (v24 + 2);
          --v32;
        }

        while (v32 > 1);
LABEL_13:
        v20 = (v20 + v10);
        ++v19;
        v21 = (v21 + v10);
        if (v19 == v8)
        {
          v33 = *v7;
          if (v2 < 4)
          {
            v34 = v2;
            v35 = v20;
            goto LABEL_42;
          }

          if (v2 >= 0x10)
          {
            v37 = 0;
            v38 = vdupq_n_s16(v33);
            do
            {
              v20[v37 / 0x10] = v38;
              v21[v37 / 0x10] = v38;
              v37 += 32;
            }

            while (v14 != v37);
            if (v13 != v2)
            {
              v36 = v2 & 0xFFFFFFF0;
              if ((v2 & 0xC) == 0)
              {
                v35 = (v20 + v14);
                v34 = (v2 & 0xF);
                goto LABEL_42;
              }

              goto LABEL_37;
            }
          }

          else
          {
            v36 = 0;
LABEL_37:
            v35 = (v20 + v15);
            v39 = vdup_n_s16(v33);
            v40 = 2 * v36;
            v41 = v36 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v34 = (v2 & 3);
            if (result != v2)
            {
LABEL_42:
              v42 = v34 + 1;
              do
              {
                v35->i16[0] = v33;
                v35 = (v35 + 2);
                --v42;
              }

              while (v42 > 1);
            }
          }

          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            break;
          }

          goto LABEL_12;
        }
      }
    }

LABEL_61:
    if (v8)
    {
      v54 = 0;
      v55 = v2 - (v2 != 0) + 1;
      result = v55 & 0xC;
      v56 = v9 + 1;
      do
      {
        v57 = *v7;
        v58 = v2;
        v59 = v9;
        if (v55 >= 4)
        {
          if (v55 < 0x10)
          {
            v60 = 0;
LABEL_71:
            v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFFCLL));
            v64 = vdup_n_s16(v57);
            v65 = 2 * v60;
            v66 = v60 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v9->i8[v65] = v64;
              v65 += 8;
              v66 += 4;
            }

            while (v66);
            v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            if (v55 == (v55 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_63;
            }

            goto LABEL_76;
          }

          v61 = vdupq_n_s16(v57);
          v62 = v55 & 0xFFFFFFFFFFFFFFF0;
          v63 = v56;
          do
          {
            v63[-1] = v61;
            *v63 = v61;
            v63 += 2;
            v62 -= 16;
          }

          while (v62);
          if (v55 == (v55 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_63;
          }

          v60 = v55 & 0xFFFFFFFFFFFFFFF0;
          if ((v55 & 0xC) != 0)
          {
            goto LABEL_71;
          }

          v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFF0));
          v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFF0);
        }

LABEL_76:
        v67 = (v58 + 1);
        do
        {
          v59->i16[0] = v57;
          v59 = (v59 + 2);
          --v67;
        }

        while (v67 > 1);
LABEL_63:
        v9 = (v9 + v10);
        ++v54;
        v56 = (v56 + v10);
      }

      while (v54 != v8);
    }

    v68 = *v7;
    v69 = v2 - (v2 != 0) + 1;
    if (v69 < 4)
    {
      v70 = v9;
      goto LABEL_92;
    }

    if (v69 >= 0x10)
    {
      v71 = v69 & 0xFFFFFFFFFFFFFFF0;
      v72 = vdupq_n_s16(v68);
      v73 = v9 + 1;
      v74 = v69 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v73[-1] = v72;
        *v73 = v72;
        v73 += 2;
        v74 -= 16;
      }

      while (v74);
      if (v69 == v71)
      {
        return result;
      }

      if ((v69 & 0xC) == 0)
      {
        v70 = (v9 + 2 * v71);
        v2 = (v2 - v71);
LABEL_92:
        v78 = v2 + 1;
        do
        {
          v70->i16[0] = v68;
          v70 = (v70 + 2);
          --v78;
        }

        while (v78 > 1);
        return result;
      }
    }

    else
    {
      v71 = 0;
    }

    v2 = (v2 - (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v70 = (v9 + 2 * (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v75 = vdup_n_s16(v68);
    v76 = (v9 + 2 * v71);
    v77 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v76++ = v75;
      v77 += 4;
    }

    while (v77);
    if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_92;
    }
  }

  return result;
}

void sub_23F1F4BE0(uint64_t a1, uint64_t a2)
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
      v28 = &v27;
      sub_23F1F4FB8(&v28, a1, a2);
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
      sub_23F1F4D70(&v28, a1, a2);
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

    v23 = 2 * v26;
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

          v21 = 2 * v12;
          v22 = 2 * v13;
          do
          {
            memmove(v19, v18, 2 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 2 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

uint64_t *sub_23F1F4D70(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 6);
    v10 = *(a3 + 6);
    v11 = *a2;
    v12 = *a3;
    v35 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 7);
      v14 = *(a2 + 7);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v30 = 0;
        v31 = *(a2 + 3);
        v25 = v4 - 2;
LABEL_27:
        result = memmove(v12, v11, 2 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 2 * v14;
          v12 += 2 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 2 * v14;
        v12 += 2 * v13;
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v30 = v3 - 1;
        v31 = *(a2 + 3);
        v16 = 0;
        v32 = v3 - 2;
        v28 = *(a3 + 6);
        v29 = *(a2 + 6);
        v17 = 2 * v9;
        v18 = &v11[2 * v9];
        v19 = 2 * v14;
        v20 = 2 * v10;
        v21 = &v12[2 * v10];
        v33 = 2 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 2 * v15);
        }

        while (v24)
        {
          v15 = *v7;
          --v24;
          v23 += v17;
          v22 += v20;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        v18 = v36;
        if (*v7)
        {
          result = memmove(&v21[v22], &v36[v23], 2 * *v7);
        }

        while (1)
        {
          v11 += v34;
          v12 += v33;
          if (++v16 == v35)
          {
            break;
          }

          v15 = *v7;
          v18 += v34;
          v21 += v33;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v10 = v28;
        v9 = v29;
      }

      v8 = v30;
      v3 = v31;
    }

    v26 = *v7;
    if (v8)
    {
      if (!v26)
      {
        return result;
      }

      v27 = v3 - 2;
LABEL_36:
      result = memmove(v12, v11, 2 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 2 * v9;
        v12 += 2 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 2 * v9;
      v12 += 2 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 2 * v26);
    }
  }

  return result;
}

void sub_23F1F4FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      return;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }
}

unint64_t sub_23F1F50FC(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = *(result + 8);
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        do
        {
          v51 = *v15;
          v17->i16[0] = *v15;
          v17->i16[1] = v51;
          v52 = *v15;
          v17->i16[2] = *v15;
          v17->i16[3] = v52;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_53;
      }

      v21 = 0;
      v22 = &v17->i16[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        result = *v15;
        *v23 = result;
        v23[1] = result;
        v17 = (v17 + 2 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_53:
      v53 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v53;
      v54 = *v15;
      v17->i16[2] = v54;
      v17->i16[3] = v54;
      return result;
    }

    do
    {
      v49 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v49;
      v50 = *v15;
      v17->i16[2] = *v15;
      v17->i16[3] = v50;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_53;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v28 = *(result + 8);
    v74[0] = *result;
    v74[1] = v28;
    return sub_23F1F4780(v74);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v29 = *(v1 + 16);
    if (v2)
    {
      v30 = v4 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30 || v29 == 0)
    {
      return result;
    }

    v32 = *(result + 8);
    v33 = *v1;
    v34 = v29 - 1;
    if (v34)
    {
      if (!v5)
      {
        return result;
      }

      v35 = 0;
      result = v5 & 3;
      v36 = v33 + 1;
      v37 = 2 * v3;
      do
      {
        v38 = *v32;
        v39 = v5;
        v40 = v33;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v41 = 0;
LABEL_41:
            v40 = (v33 + 2 * (v5 & 0xFFFFFFFC));
            v45 = vdup_n_s16(v38);
            v46 = 2 * v41;
            v47 = v41 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v33->i8[v46] = v45;
              v46 += 8;
              v47 += 4;
            }

            while (v47);
            v39 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v42 = vdupq_n_s16(v38);
          v43 = v5 & 0xFFFFFFF0;
          v44 = v36;
          do
          {
            v44[-1] = v42;
            *v44 = v42;
            v44 += 2;
            v43 -= 16;
          }

          while (v43);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v41 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v40 = (v33 + 2 * (v5 & 0xFFFFFFF0));
          v39 = v5 & 0xF;
        }

LABEL_46:
        v48 = v39 + 1;
        do
        {
          v40->i16[0] = v38;
          v40 = (v40 + 2);
          --v48;
        }

        while (v48 > 1);
LABEL_33:
        v33 = (v33 + v37);
        ++v35;
        v36 = (v36 + v37);
      }

      while (v35 != v34);
    }

    if (!v5)
    {
      return result;
    }

    v55 = *v32;
    if (v5 < 4)
    {
      v56 = v5;
      v57 = v33;
      goto LABEL_82;
    }

    if (v5 >= 0x10)
    {
      v65 = v5 & 0xFFFFFFF0;
      v66 = vdupq_n_s16(v55);
      v67 = v33 + 1;
      v68 = v65;
      do
      {
        v67[-1] = v66;
        *v67 = v66;
        v67 += 2;
        v68 -= 16;
      }

      while (v68);
      if (v65 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v57 = (v33 + 2 * v65);
        v56 = v5 & 0xF;
        goto LABEL_82;
      }
    }

    else
    {
      v65 = 0;
    }

    v56 = v5 & 3;
    v57 = (v33 + 2 * (v5 & 0xFFFFFFFC));
    v69 = vdup_n_s16(v55);
    v70 = (v33 + 2 * v65);
    v71 = v65 - (v5 & 0xFFFFFFFC);
    do
    {
      *v70++ = v69;
      v71 += 4;
    }

    while (v71);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_82:
    v73 = v56 + 1;
    do
    {
      v57->i16[0] = v55;
      v57 = (v57 + 2);
      --v73;
    }

    while (v73 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = **(result + 8);
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = v7;
    goto LABEL_78;
  }

  if (v6 >= 0x10)
  {
    v58 = v6 & 0xFFFFFFF0;
    v59 = vdupq_n_s16(v8);
    v60 = v7 + 1;
    v61 = v58;
    do
    {
      v60[-1] = v59;
      *v60 = v59;
      v60 += 2;
      v61 -= 16;
    }

    while (v61);
    if (v58 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v58);
      v9 = v6 & 0xF;
LABEL_78:
      v72 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v72;
      }

      while (v72 > 1);
      return result;
    }
  }

  else
  {
    v58 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v62 = vdup_n_s16(v8);
  v63 = (v7 + 2 * v58);
  v64 = v58 - (v6 & 0xFFFFFFFC);
  do
  {
    *v63++ = v62;
    v64 += 4;
  }

  while (v64);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_78;
  }

  return result;
}

void sub_23F1F54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v9[3] = v8[3];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      return;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }
}

void *sub_23F1F5664(void *result, int16x4_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3 != 1)
  {
    v10 = *(v2 + 8);
    v11 = *(v2 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v2;
    v16 = 2 * v3;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v2 + 20);
      v19 = *v13;
      if (v14)
      {
        v20 = 0;
        v21 = 2 * v18;
        do
        {
          v22 = v15;
          v23 = v14;
          do
          {
            v22->i16[0] = v19;
            v22 = (v22 + v16);
            --v23;
          }

          while (v23);
          v19 = *v13;
          v22->i16[0] = *v13;
          v15 = (v15 + v21);
          ++v20;
        }

        while (v20 != v17);
        goto LABEL_48;
      }

      do
      {
        v15->i16[0] = v19;
        v15 = (v15 + 2 * v18);
        --v17;
      }

      while (v17);
    }

    if (!v14)
    {
LABEL_49:
      v15->i16[0] = *v13;
      return result;
    }

    v19 = *v13;
    do
    {
LABEL_48:
      v15->i16[0] = v19;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
    goto LABEL_49;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 != v5)
  {
    v24 = *(v2 + 12);
    if (v5)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v2;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v5 & 3);
      v30 = v27 + 1;
      v31 = 2 * v4;
      do
      {
        a2.i16[0] = *v26;
        v32 = v5;
        v33 = v27;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v34 = 0;
LABEL_31:
            v33 = (v27 + 2 * (v5 & 0xFFFFFFFC));
            v38 = vdup_lane_s16(a2, 0);
            v39 = 2 * v34;
            v40 = v34 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v39] = v38;
              v39 += 8;
              v40 += 4;
            }

            while (v40);
            v32 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v35 = vdupq_lane_s16(a2, 0);
          v36 = v5 & 0xFFFFFFF0;
          v37 = v30;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 16;
          }

          while (v36);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_23;
          }

          v34 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v33 = (v27 + 2 * (v5 & 0xFFFFFFF0));
          v32 = v5 & 0xF;
        }

LABEL_36:
        v41 = v32 + 1;
        do
        {
          v33->i16[0] = a2.i16[0];
          v33 = (v33 + 2);
          --v41;
        }

        while (v41 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    a2.i16[0] = *v26;
    v42 = v5 - (v5 != 0) + 1;
    if (v42 < 4)
    {
      v43 = v27;
      goto LABEL_71;
    }

    if (v42 >= 0x10)
    {
      v45 = v42 & 0xFFFFFFFFFFFFFFF0;
      v52 = vdupq_lane_s16(a2, 0);
      v53 = v27 + 1;
      v54 = v42 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v53[-1] = v52;
        *v53 = v52;
        v53 += 2;
        v54 -= 16;
      }

      while (v54);
      if (v42 == v45)
      {
        return result;
      }

      if ((v42 & 0xC) == 0)
      {
        v43 = (v27 + 2 * v45);
        v5 -= v45;
        goto LABEL_71;
      }
    }

    else
    {
      v45 = 0;
    }

    v5 -= v42 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v27 + 2 * (v42 & 0xFFFFFFFFFFFFFFFCLL));
    v55 = vdup_lane_s16(a2, 0);
    v56 = (v27 + 2 * v45);
    v57 = v45 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v56++ = v55;
      v57 += 4;
    }

    while (v57);
    if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_71:
    v59 = v5 + 1;
    do
    {
      v43->i16[0] = a2.i16[0];
      v43 = (v43 + 2);
      --v59;
    }

    while (v59 > 1);
    return result;
  }

  v6 = (*(v2 + 12) * v4);
  if (!v6)
  {
    return result;
  }

  v7 = *v2;
  a2.i16[0] = *result[1];
  if (v6 < 4)
  {
    v8 = (*(v2 + 12) * v4);
    v9 = *v2;
    goto LABEL_67;
  }

  if (v6 >= 0x10)
  {
    v44 = v6 & 0xFFFFFFF0;
    v46 = vdupq_lane_s16(a2, 0);
    v47 = v7 + 1;
    v48 = v44;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 16;
    }

    while (v48);
    if (v44 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v9 = (v7 + 2 * v44);
      v8 = v6 & 0xF;
LABEL_67:
      v58 = v8 + 1;
      do
      {
        v9->i16[0] = a2.i16[0];
        v9 = (v9 + 2);
        --v58;
      }

      while (v58 > 1);
      return result;
    }
  }

  else
  {
    v44 = 0;
  }

  v8 = v6 & 3;
  v9 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v49 = vdup_lane_s16(a2, 0);
  v50 = (v7 + 2 * v44);
  v51 = v44 - (v6 & 0xFFFFFFFC);
  do
  {
    *v50++ = v49;
    v51 += 4;
  }

  while (v51);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_67;
  }

  return result;
}

__int16 sub_23F1F59A0@<H0>(void *a1@<X0>, int16x4_t a2@<D0>)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v12 = *(v2 + 12);
    v13 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || v13 == 0)
    {
      return a2.i16[0];
    }

    v16 = a1[1];
    v17 = v12 - 1;
    v18 = *v2;
    v19 = 2 * *(v2 + 24);
    v20 = v13 - 1;
    if (v20)
    {
      v21 = *(v2 + 28);
      v22 = *v16;
      if (v17)
      {
        v23 = 0;
        v24 = &v18->i16[1];
        do
        {
          v25 = v24;
          v26 = v17;
          do
          {
            *(v25 - 1) = v22;
            v22 = *v16;
            *v25 = *v16;
            v25 = (v25 + v19);
            --v26;
          }

          while (v26);
          *(v25 - 1) = v22;
          v22 = *v16;
          *v25 = *v16;
          v18 = (v18 + 2 * v21);
          ++v23;
          v24 += v21;
        }

        while (v23 != v20);
        goto LABEL_60;
      }

      v52 = 2 * v21;
      do
      {
        v18->i16[0] = v22;
        v22 = *v16;
        v18->i16[1] = *v16;
        v18 = (v18 + v52);
        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = *v16;
    }

    if (!v17)
    {
LABEL_61:
      v18->i16[0] = v22;
      a2.i16[0] = *v16;
      v18->i16[1] = *v16;
      return a2.i16[0];
    }

    do
    {
LABEL_60:
      v18->i16[0] = v22;
      v22 = *v16;
      v18->i16[1] = *v16;
      v18 = (v18 + v19);
      --v17;
    }

    while (v17);
    goto LABEL_61;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v27 = a1[1];
    v73 = 0;
    v72 = v4;
    v74[0] = &v73;
    v74[1] = &v72;
    v74[2] = v27;
    v29 = *(v2 + 12);
    v28 = *(v2 + 16);
    if (v4)
    {
      v30 = v29 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30 && v28 != 0)
    {
      v75[0] = 0;
      v75[1] = v4 - 1;
      v75[2] = 1;
      v75[3] = v29 - 1;
      v75[4] = v3;
      v75[5] = v28 - 1;
      v75[6] = *(v2 + 28);
      v32 = *v2;
      v76[0] = 0;
      v76[1] = 0;
      sub_23F1F5DB8(v75, v76, v74, v32, a2);
    }

    return a2.i16[0];
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v33 = *(v2 + 16);
    if (v3)
    {
      v34 = v6 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34 || v33 == 0)
    {
      return a2.i16[0];
    }

    v36 = a1[1];
    v37 = *v2;
    v38 = v33 - 1;
    if (v38)
    {
      if (!v7)
      {
        return a2.i16[0];
      }

      v39 = 0;
      v40 = v37 + 1;
      v41 = 2 * v5;
      do
      {
        a2.i16[0] = *v36;
        v42 = v7;
        v43 = v37;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v44 = 0;
LABEL_48:
            v43 = (v37 + 2 * (v7 & 0xFFFFFFFC));
            v48 = vdup_lane_s16(a2, 0);
            v49 = 2 * v44;
            v50 = v44 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v37->i8[v49] = v48;
              v49 += 8;
              v50 += 4;
            }

            while (v50);
            v42 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_40;
            }

            goto LABEL_53;
          }

          v45 = vdupq_lane_s16(a2, 0);
          v46 = v7 & 0xFFFFFFF0;
          v47 = v40;
          do
          {
            v47[-1] = v45;
            *v47 = v45;
            v47 += 2;
            v46 -= 16;
          }

          while (v46);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_40;
          }

          v44 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_48;
          }

          v43 = (v37 + 2 * (v7 & 0xFFFFFFF0));
          v42 = v7 & 0xF;
        }

LABEL_53:
        v51 = v42 + 1;
        do
        {
          v43->i16[0] = a2.i16[0];
          v43 = (v43 + 2);
          --v51;
        }

        while (v51 > 1);
LABEL_40:
        v37 = (v37 + v41);
        ++v39;
        v40 = (v40 + v41);
      }

      while (v39 != v38);
    }

    if (!v7)
    {
      return a2.i16[0];
    }

    a2.i16[0] = *v36;
    if (v7 < 4)
    {
      v53 = v7;
      v54 = v37;
      goto LABEL_90;
    }

    if (v7 >= 0x10)
    {
      v62 = v7 & 0xFFFFFFF0;
      v63 = vdupq_lane_s16(a2, 0);
      v64 = v37 + 1;
      v65 = v62;
      do
      {
        v64[-1] = v63;
        *v64 = v63;
        v64 += 2;
        v65 -= 16;
      }

      while (v65);
      if (v62 == v7)
      {
        return a2.i16[0];
      }

      if ((v7 & 0xC) == 0)
      {
        v54 = (v37 + 2 * v62);
        v53 = v7 & 0xF;
        goto LABEL_90;
      }
    }

    else
    {
      v62 = 0;
    }

    v53 = v7 & 3;
    v54 = (v37 + 2 * (v7 & 0xFFFFFFFC));
    v66 = vdup_lane_s16(a2, 0);
    v67 = (v37 + 2 * v62);
    v68 = v62 - (v7 & 0xFFFFFFFC);
    do
    {
      *v67++ = v66;
      v68 += 4;
    }

    while (v68);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return a2.i16[0];
    }

LABEL_90:
    v70 = v53 + 1;
    do
    {
      v54->i16[0] = a2.i16[0];
      v54 = (v54 + 2);
      --v70;
    }

    while (v70 > 1);
    return a2.i16[0];
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return a2.i16[0];
  }

  v9 = *v2;
  a2.i16[0] = *a1[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = v9;
    goto LABEL_86;
  }

  if (v8 >= 0x10)
  {
    v55 = v8 & 0xFFFFFFF0;
    v56 = vdupq_lane_s16(a2, 0);
    v57 = v9 + 1;
    v58 = v55;
    do
    {
      v57[-1] = v56;
      *v57 = v56;
      v57 += 2;
      v58 -= 16;
    }

    while (v58);
    if (v55 == v8)
    {
      return a2.i16[0];
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v55);
      v10 = v8 & 0xF;
LABEL_86:
      v69 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v69;
      }

      while (v69 > 1);
      return a2.i16[0];
    }
  }

  else
  {
    v55 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v59 = vdup_lane_s16(a2, 0);
  v60 = (v9 + 2 * v55);
  v61 = v55 - (v8 & 0xFFFFFFFC);
  do
  {
    *v60++ = v59;
    v61 += 4;
  }

  while (v61);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_86;
  }

  return a2.i16[0];
}

_DWORD *sub_23F1F5DB8(_DWORD *result, int16x8_t **a2, uint64_t a3, int16x8_t *a4, int16x4_t a5)
{
  if (result[5])
  {
    for (i = 0; i < result[5]; ++i)
    {
      *a2 = a4;
      v6 = result[3];
      v7 = *(a3 + 8);
      if (!v6)
      {
        v9 = a4;
        *a2 = a4;
        v22 = *v7;
        if (v22 >= 1)
        {
          goto LABEL_30;
        }

        goto LABEL_3;
      }

      if (*v7 < 1)
      {
        v9 = (a4 + (2 * (v6 - 1) + 2) * result[4]);
        *a2 = v9;
        v22 = *v7;
        if (v22 < 1)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }

      v8 = 0;
      v9 = a4;
      do
      {
        *a2 = v9;
        v10 = **(a3 + 8);
        if (v10 >= 1)
        {
          a5.i16[0] = **(a3 + 16);
          v11 = **(a3 + 8);
          v12 = v9;
          if (v10 < 4)
          {
            goto LABEL_22;
          }

          if (v10 >= 0x10)
          {
            v13 = v10 & 0x7FFFFFFFFFFFFFF0;
            v14 = vdupq_lane_s16(a5, 0);
            v15 = v9 + 1;
            v16 = v10 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v15[-1] = v14;
              *v15 = v14;
              v15 += 2;
              v16 -= 16;
            }

            while (v16);
            if (v10 != v13)
            {
              if ((v10 & 0xC) != 0)
              {
                goto LABEL_17;
              }

              v12 = (v9 + 2 * v13);
              v11 = v10 & 0xF;
LABEL_22:
              v20 = v11 + 1;
              do
              {
                v12->i16[0] = a5.i16[0];
                v12 = (v12 + 2);
                --v20;
              }

              while (v20 > 1);
            }
          }

          else
          {
            v13 = 0;
LABEL_17:
            v11 = v10 & 3;
            v12 = (v9 + 2 * (v10 & 0x7FFFFFFFFFFFFFFCLL));
            v17 = vdup_lane_s16(a5, 0);
            v18 = (v9 + 2 * v13);
            v19 = v13 - (v10 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v18++ = v17;
              v19 += 4;
            }

            while (v19);
            if (v10 != (v10 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_22;
            }
          }

          v6 = result[3];
        }

        v9 = (v9 + 2 * result[4]);
        ++v8;
      }

      while (v8 < v6);
      v21 = *(a3 + 8);
      *a2 = v9;
      v22 = *v21;
      if (v22 < 1)
      {
        goto LABEL_3;
      }

LABEL_30:
      a5.i16[0] = **(a3 + 16);
      if (v22 < 4)
      {
        v23 = v22;
        v24 = v9;
        goto LABEL_43;
      }

      if (v22 >= 0x10)
      {
        v25 = v22 & 0x7FFFFFFFFFFFFFF0;
        v26 = vdupq_lane_s16(a5, 0);
        v27 = v9 + 1;
        v28 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v27[-1] = v26;
          *v27 = v26;
          v27 += 2;
          v28 -= 16;
        }

        while (v28);
        if (v22 != v25)
        {
          if ((v22 & 0xC) == 0)
          {
            v24 = (v9 + 2 * v25);
            v23 = v22 & 0xF;
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v25 = 0;
LABEL_38:
        v23 = v22 & 3;
        v24 = (v9 + 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL));
        v29 = vdup_lane_s16(a5, 0);
        v30 = (v9 + 2 * v25);
        v31 = v25 - (v22 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          *v30++ = v29;
          v31 += 4;
        }

        while (v31);
        if (v22 != (v22 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_43:
          v32 = v23 + 1;
          do
          {
            v24->i16[0] = a5.i16[0];
            v24 = (v24 + 2);
            --v32;
          }

          while (v32 > 1);
        }
      }

LABEL_3:
      a4 = (a4 + 2 * result[6]);
    }
  }

  *a2 = a4;
  v33 = result[3];
  if (v33)
  {
    if (**(a3 + 8) >= 1)
    {
      v34 = 0;
      while (1)
      {
        *a2 = a4;
        v35 = **(a3 + 8);
        if (v35 < 1)
        {
          goto LABEL_50;
        }

        a5.i16[0] = **(a3 + 16);
        v36 = **(a3 + 8);
        v37 = a4;
        if (v35 >= 4)
        {
          if (v35 < 0x10)
          {
            v38 = 0;
LABEL_59:
            v36 = v35 & 3;
            v37 = (a4 + 2 * (v35 & 0x7FFFFFFFFFFFFFFCLL));
            v42 = vdup_lane_s16(a5, 0);
            v43 = (a4 + 2 * v38);
            v44 = v38 - (v35 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v43++ = v42;
              v44 += 4;
            }

            while (v44);
            if (v35 == (v35 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_49;
            }

            goto LABEL_64;
          }

          v38 = v35 & 0x7FFFFFFFFFFFFFF0;
          v39 = vdupq_lane_s16(a5, 0);
          v40 = a4 + 1;
          v41 = v35 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v40[-1] = v39;
            *v40 = v39;
            v40 += 2;
            v41 -= 16;
          }

          while (v41);
          if (v35 == v38)
          {
            goto LABEL_49;
          }

          if ((v35 & 0xC) != 0)
          {
            goto LABEL_59;
          }

          v37 = (a4 + 2 * v38);
          v36 = v35 & 0xF;
        }

LABEL_64:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = a5.i16[0];
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_49:
        v33 = result[3];
LABEL_50:
        a4 = (a4 + 2 * result[4]);
        if (++v34 >= v33)
        {
          goto LABEL_68;
        }
      }
    }

    a4 = (a4 + (2 * (v33 - 1) + 2) * result[4]);
  }

LABEL_68:
  *a2 = a4;
  v46 = **(a3 + 8);
  if (v46 >= 1)
  {
    a5.i16[0] = **(a3 + 16);
    if (v46 < 4)
    {
      v47 = **(a3 + 8);
      v48 = a4;
      goto LABEL_82;
    }

    if (v46 >= 0x10)
    {
      v49 = v46 & 0x7FFFFFFFFFFFFFF0;
      v50 = vdupq_lane_s16(a5, 0);
      v51 = a4 + 1;
      v52 = v46 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v51[-1] = v50;
        *v51 = v50;
        v51 += 2;
        v52 -= 16;
      }

      while (v52);
      if (v46 == v49)
      {
        return result;
      }

      if ((v46 & 0xC) == 0)
      {
        v48 = (a4 + 2 * v49);
        v47 = v46 & 0xF;
LABEL_82:
        v56 = v47 + 1;
        do
        {
          v48->i16[0] = a5.i16[0];
          v48 = (v48 + 2);
          --v56;
        }

        while (v56 > 1);
        return result;
      }
    }

    else
    {
      v49 = 0;
    }

    v47 = v46 & 3;
    v48 = (a4 + 2 * (v46 & 0x7FFFFFFFFFFFFFFCLL));
    v53 = vdup_lane_s16(a5, 0);
    v54 = (a4 + 2 * v49);
    v55 = v49 - (v46 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      *v54++ = v53;
      v55 += 4;
    }

    while (v55);
    if (v46 != (v46 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_82;
    }
  }

  return result;
}

__int16 sub_23F1F61A4@<H0>(void *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20) == 1 && *(v2 + 20) == 1;
  if (v3)
  {
    v22 = *(v1 + 24);
    v23 = *(v2 + 24);
    v24 = *(v1 + 8);
    if (v22 != v23 || v22 != v24)
    {
      v26 = *(v1 + 12);
      v27 = *(v1 + 16);
      if (v24)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28 || v27 == 0)
      {
        return v99;
      }

      v30 = v26 - 1;
      v31 = *v1;
      v32 = *v2;
      v33 = 2 * v23;
      v34 = v27 - 1;
      v202 = *(v2 + 24);
      v203 = *(v1 + 24);
      v201 = *(v1 + 12);
      if (v27 != 1)
      {
        v35 = *(v2 + 28);
        v36 = *(v1 + 28);
        if (v26 != 1)
        {
          v37 = 0;
          v38 = 2 * v22;
          v206 = &v32[v33 / 2] - v31 - 2 * v22;
          v205 = 2 * (v35 - v36);
          v204 = v33 - 2 * v22;
          v39 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v40 = v39 + 1;
          v41 = 2 * v35;
          v42 = 2 * v36;
          v43 = &v32[v24 + v23 * (v26 - 2)];
          v44 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
          v45 = v44;
          v46 = (v39 + 1) & 0xC;
          v47 = (v39 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v48 = v47;
          v49 = &v31[v24 + v22 * (v26 - 2)];
          while (1)
          {
            v50 = 0;
            v52 = v32 < (v49 + v42 * v37) && v31 < (v43 + v41 * v37);
            v53 = v32;
            v54 = v31;
            do
            {
              v55 = v50;
              v56 = v53;
              v57 = v54;
              if (v39 < 3 || v52)
              {
                goto LABEL_54;
              }

              if (v39 >= 0xF)
              {
                v59 = 0;
                v60 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v61 = &v53[v59];
                  v62 = *&v54[v59 + 8];
                  *v61 = *&v54[v59];
                  *(v61 + 1) = v62;
                  v59 += 16;
                  v60 -= 16;
                }

                while (v60);
                if (v40 == v44)
                {
                  goto LABEL_41;
                }

                v58 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v57 = &v54[v45];
                  v56 = &v53[v45];
                  do
                  {
LABEL_54:
                    v65 = *v57++;
                    *v56++ = v65;
                  }

                  while (v57 != &v54[v24]);
                  goto LABEL_41;
                }
              }

              else
              {
                v58 = 0;
              }

              v56 = &v53[v48];
              v57 = &v54[v48];
              v63 = v58;
              v64 = v58 - v47;
              do
              {
                *&v53[v63] = *&v54[v63];
                v63 += 4;
                v64 += 4;
              }

              while (v64);
              if (v40 != v47)
              {
                goto LABEL_54;
              }

LABEL_41:
              v54 = (v54 + v38);
              v53 = (v53 + v33);
              v50 = v55 + 1;
            }

            while (v55 + 1 != v30);
            if (v39 < 3 || (v206 + v205 * v37 + v204 * v55) < 0x20)
            {
              v66 = v53;
              v67 = v54;
              goto LABEL_59;
            }

            if (v39 >= 0xF)
            {
              v71 = 0;
              v72 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v73 = &v53[v71];
                v74 = *&v54[v71 + 8];
                *v73 = *&v54[v71];
                *(v73 + 1) = v74;
                v71 += 16;
                v72 -= 16;
              }

              while (v72);
              if (v40 != v44)
              {
                v70 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v67 = &v54[v45];
                  v66 = &v53[v45];
                  goto LABEL_59;
                }

                goto LABEL_68;
              }
            }

            else
            {
              v70 = 0;
LABEL_68:
              v66 = &v53[v48];
              v67 = &v54[v48];
              v75 = v70;
              v76 = v70 - v47;
              do
              {
                *&v53[v75] = *&v54[v75];
                v75 += 4;
                v76 += 4;
              }

              while (v76);
              if (v40 != v47)
              {
LABEL_59:
                v68 = &v54[v24];
                do
                {
                  v69 = *v67++;
                  *v66++ = v69;
                }

                while (v67 != v68);
              }
            }

            v31 = (v31 + v42);
            v32 = (v32 + v41);
            if (++v37 == v34)
            {
              goto LABEL_145;
            }
          }
        }

        v121 = 0;
        v122 = v27 - 2;
        v123 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v124 = v123 + 1;
        v125 = v32 >= &v31[v24 + v36 * v122] || v31 >= &v32[v24 + v35 * v122];
        v126 = v124 & 0xFFFFFFFFFFFFFFF0;
        v127 = v124 & 0xFFFFFFFFFFFFFFFCLL;
        v128 = v124 & 0xFFFFFFFFFFFFFFFCLL;
        v129 = !v125;
        v130 = 2 * v36;
        do
        {
          v131 = v32;
          v132 = v31;
          if (!((v123 < 3) | v129 & 1))
          {
            if (v123 < 0xF)
            {
              v133 = 0;
LABEL_138:
              v131 = &v32[v128];
              v132 = &v31[v128];
              v138 = v133;
              v139 = v133 - v127;
              do
              {
                *&v32[v138] = *&v31[v138];
                v138 += 4;
                v139 += 4;
              }

              while (v139);
              if (v124 == v127)
              {
                goto LABEL_130;
              }

              goto LABEL_143;
            }

            v134 = 0;
            v135 = v124 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v136 = &v32[v134];
              v137 = *&v31[v134 + 8];
              *v136 = *&v31[v134];
              *(v136 + 1) = v137;
              v134 += 16;
              v135 -= 16;
            }

            while (v135);
            if (v124 == (v124 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_130;
            }

            v133 = v124 & 0xFFFFFFFFFFFFFFF0;
            if ((v124 & 0xC) != 0)
            {
              goto LABEL_138;
            }

            v132 = &v31[v126];
            v131 = &v32[v126];
          }

          do
          {
LABEL_143:
            v140 = *v132++;
            *v131++ = v140;
          }

          while (v132 != &v31[v24]);
LABEL_130:
          v31 = (v31 + v130);
          v32 += v35;
          ++v121;
        }

        while (v121 != v34);
      }

LABEL_145:
      if (v30)
      {
        v141 = 0;
        v142 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v143 = v142 + 1;
        v145 = v32 < &v31[v24 + v203 * (v201 - 2)] && v31 < &v32[v24 + v202 * (v201 - 2)];
        v146 = v143 & 0xFFFFFFFFFFFFFFF0;
        v147 = v143 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v148 = v32;
          v149 = v31;
          if (v142 >= 3 && !v145)
          {
            if (v142 < 0xF)
            {
              v150 = 0;
LABEL_161:
              v148 = &v32[v147];
              v149 = &v31[v147];
              v155 = v150;
              v156 = v150 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v32[v155] = *&v31[v155];
                v155 += 4;
                v156 += 4;
              }

              while (v156);
              if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_153;
              }

              goto LABEL_166;
            }

            v151 = 0;
            v152 = v143 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v153 = &v32[v151];
              v154 = *&v31[v151 + 8];
              *v153 = *&v31[v151];
              *(v153 + 1) = v154;
              v151 += 16;
              v152 -= 16;
            }

            while (v152);
            if (v143 == (v143 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_153;
            }

            v150 = v143 & 0xFFFFFFFFFFFFFFF0;
            if ((v143 & 0xC) != 0)
            {
              goto LABEL_161;
            }

            v149 = &v31[v146];
            v148 = &v32[v146];
          }

          do
          {
LABEL_166:
            v157 = *v149++;
            *v148++ = v157;
          }

          while (v149 != &v31[v24]);
LABEL_153:
          v31 += v203;
          v32 = (v32 + v33);
          ++v141;
        }

        while (v141 != v30);
      }

      v158 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v158 < 3 || (v32 - v31) < 0x20)
      {
        v161 = v32;
        v162 = v31;
        goto LABEL_200;
      }

      v159 = v158 + 1;
      if (v158 >= 0xF)
      {
        v160 = v159 & 0xFFFFFFFFFFFFFFF0;
        v163 = (v31 + 8);
        v164 = v32 + 8;
        v165 = v159 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v99 = *(v163 - 1);
          v166 = *v163;
          *(v164 - 1) = v99;
          *v164 = v166;
          v163 += 2;
          v164 += 2;
          v165 -= 16;
        }

        while (v165);
        if (v159 == v160)
        {
          return v99;
        }

        if ((v159 & 0xC) == 0)
        {
          v193 = v160;
          v162 = &v31[v193];
          v161 = &v32[v193];
          goto LABEL_200;
        }
      }

      else
      {
        v160 = 0;
      }

      v167 = v159 & 0xFFFFFFFFFFFFFFFCLL;
      v161 = &v32[v167];
      v162 = &v31[v167];
      v168 = &v31[v160];
      v169 = &v32[v160];
      v170 = v160 - (v159 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v171 = *v168++;
        LOWORD(v99) = v171;
        *v169 = v171;
        v169 += 4;
        v170 += 4;
      }

      while (v170);
      if (v159 == (v159 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v99;
      }

LABEL_200:
      v194 = &v31[v24];
      do
      {
        v195 = *v162++;
        LOWORD(v99) = v195;
        *v161++ = v195;
      }

      while (v162 != v194);
      return v99;
    }

    v77 = *(v1 + 28);
    v78 = *(v2 + 28);
    v79 = *(v1 + 12);
    v80 = (v79 * v22);
    if (v77 != v78 || v77 != v80)
    {
      v82 = *(v1 + 16);
      if (v22)
      {
        v83 = v79 == 0;
      }

      else
      {
        v83 = 1;
      }

      if (v83 || v82 == 0)
      {
        return v99;
      }

      v85 = *v1;
      v86 = *v2;
      if (v82 == 1)
      {
LABEL_85:
        if (!v80)
        {
          return v99;
        }

        v87 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v87 < 3 || (v86 - v85) < 0x20)
        {
          v182 = v86;
          v183 = v85;
          goto LABEL_208;
        }

        v88 = v87 + 1;
        if (v87 >= 0xF)
        {
          v89 = v88 & 0xFFFFFFFFFFFFFFF0;
          v184 = (v85 + 8);
          v185 = v86 + 8;
          v186 = v88 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = *(v184 - 1);
            v187 = *v184;
            *(v185 - 1) = v99;
            *v185 = v187;
            v184 += 2;
            v185 += 2;
            v186 -= 16;
          }

          while (v186);
          if (v88 == v89)
          {
            return v99;
          }

          if ((v88 & 0xC) == 0)
          {
            v183 = &v85[v89];
            v182 = &v86[v89];
            goto LABEL_208;
          }
        }

        else
        {
          v89 = 0;
        }

        v188 = v88 & 0xFFFFFFFFFFFFFFFCLL;
        v182 = &v86[v188];
        v183 = &v85[v188];
        v189 = &v85[v89];
        v190 = &v86[v89];
        v191 = v89 - (v88 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v192 = *v189++;
          LOWORD(v99) = v192;
          *v190 = v192;
          v190 += 4;
          v191 += 4;
        }

        while (v191);
        if (v88 == (v88 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v99;
        }

LABEL_208:
        v198 = &v85[v80];
        do
        {
          v199 = *v183++;
          LOWORD(v99) = v199;
          *v182++ = v199;
        }

        while (v183 != v198);
        return v99;
      }

      if (!v80)
      {
        return v99;
      }

      v100 = 0;
      v101 = v82 - 2;
      v102 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v103 = v102 + 1;
      v104 = v86 >= &v85[v80 + v77 * v101] || v85 >= &v86[v80 + v78 * v101];
      v105 = v103 & 0xFFFFFFFFFFFFFFF0;
      v106 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v107 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v108 = !v104;
      v109 = 2 * v77;
      v110 = 2 * v78;
      while (1)
      {
        v111 = v86;
        v112 = v85;
        if (!((v102 < 3) | v108 & 1))
        {
          if (v102 < 0xF)
          {
            v113 = 0;
LABEL_116:
            v111 = &v86[v107];
            v112 = &v85[v107];
            v118 = v113;
            v119 = v113 - v106;
            do
            {
              *&v99 = *&v85[v118];
              *&v86[v118] = v99;
              v118 += 4;
              v119 += 4;
            }

            while (v119);
            if (v103 == v106)
            {
              goto LABEL_108;
            }

            goto LABEL_121;
          }

          v114 = 0;
          v115 = v103 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v116 = &v86[v114];
            v99 = *&v85[v114];
            v117 = *&v85[v114 + 8];
            *v116 = v99;
            *(v116 + 1) = v117;
            v114 += 16;
            v115 -= 16;
          }

          while (v115);
          if (v103 == (v103 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_108;
          }

          v113 = v103 & 0xFFFFFFFFFFFFFFF0;
          if ((v103 & 0xC) != 0)
          {
            goto LABEL_116;
          }

          v112 = &v85[v105];
          v111 = &v86[v105];
        }

        do
        {
LABEL_121:
          v120 = *v112++;
          LOWORD(v99) = v120;
          *v111++ = v120;
        }

        while (v112 != &v85[v80]);
LABEL_108:
        v85 = (v85 + v109);
        v86 = (v86 + v110);
        v3 = v100++ == v101;
        if (v3)
        {
          goto LABEL_85;
        }
      }
    }

    v90 = (*(v1 + 16) * v77);
    if (!v90)
    {
      return v99;
    }

    v91 = *v1;
    v92 = *v2;
    v93 = (v90 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v93 < 3)
    {
      v94 = *v1;
      goto LABEL_204;
    }

    v94 = *v1;
    if ((v92 - v91) < 0x20)
    {
      goto LABEL_204;
    }

    v95 = v93 + 1;
    if (v93 >= 0xF)
    {
      v96 = v95 & 0xFFFFFFFFFFFFFFF0;
      v172 = (v91 + 8);
      v173 = v92 + 8;
      v174 = v95 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v99 = *(v172 - 1);
        v175 = *v172;
        *(v173 - 1) = v99;
        *v173 = v175;
        v172 += 2;
        v173 += 2;
        v174 -= 16;
      }

      while (v174);
      if (v95 == v96)
      {
        return v99;
      }

      if ((v95 & 0xC) == 0)
      {
        v94 = &v91[v96];
        v92 += v96;
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
    }

    v176 = v95 & 0xFFFFFFFFFFFFFFFCLL;
    v177 = &v92[v176];
    v94 = &v91[v176];
    v178 = &v91[v96];
    v179 = &v92[v96];
    v180 = v96 - (v95 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v181 = *v178++;
      LOWORD(v99) = v181;
      *v179 = v181;
      v179 += 4;
      v180 += 4;
    }

    while (v180);
    v92 = v177;
    if (v95 == (v95 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v99;
    }

LABEL_204:
    v196 = &v91[v90];
    do
    {
      v197 = *v94++;
      LOWORD(v99) = v197;
      *v92++ = v197;
    }

    while (v94 != v196);
    return v99;
  }

  v4 = *(v1 + 12);
  v5 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v4 - 1;
    v9 = *v1;
    v10 = *v2;
    v11 = 2 * *(v1 + 24);
    v12 = 2 * *(v2 + 24);
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 28);
      v15 = *(v1 + 28);
      if (v8)
      {
        v16 = 0;
        v17 = v9 + 1;
        v18 = v10 + 1;
        do
        {
          v19 = v18;
          v20 = v17;
          v21 = v8;
          do
          {
            *(v19 - 1) = *(v20 - 1);
            *v19 = *v20;
            v20 = (v20 + v11);
            v19 = (v19 + v12);
            --v21;
          }

          while (v21);
          *(v19 - 1) = *(v20 - 1);
          *v19 = *v20;
          v9 += v15;
          v10 += v14;
          ++v16;
          v17 += v15;
          v18 += v14;
        }

        while (v16 != v13);
        goto LABEL_98;
      }

      v97 = 2 * v15;
      v98 = 2 * v14;
      do
      {
        *v10 = *v9;
        v10[1] = v9[1];
        v9 = (v9 + v97);
        v10 = (v10 + v98);
        --v13;
      }

      while (v13);
    }

    if (!v8)
    {
LABEL_99:
      *v10 = *v9;
      LOWORD(v99) = v9[1];
      v10[1] = v99;
      return v99;
    }

    do
    {
LABEL_98:
      *v10 = *v9;
      v10[1] = v9[1];
      v9 = (v9 + v11);
      v10 = (v10 + v12);
      --v8;
    }

    while (v8);
    goto LABEL_99;
  }

  return v99;
}

void sub_23F1F6BB8(uint64_t *a1, int16x4_t a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v59[0] = a1[1];
    if (*(v2 + 8))
    {
      v12 = *(v2 + 12) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && *(v2 + 16) != 0)
    {
      v60 = v59;
      sub_23F1F6F24(&v60, v2);
    }

    return;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v14 = a1[1];
    v58 = 0;
    v57 = v4;
    v59[0] = &v58;
    v59[1] = &v57;
    v59[2] = v14;
    v16 = *(v2 + 12);
    v15 = *(v2 + 16);
    if (v4)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 && v15 != 0)
    {
      LODWORD(v60) = 0;
      HIDWORD(v60) = v4 - 1;
      v61 = 1;
      v62 = v16 - 1;
      v63 = v3;
      v64 = v15 - 1;
      v65 = *(v2 + 28);
      v19 = *v2;
      v66[0] = 0;
      v66[1] = 0;
      sub_23F1F5DB8(&v60, v66, v59, v19, a2);
    }

    return;
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v20 = *(v2 + 16);
    if (v3)
    {
      v21 = v6 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21 || v20 == 0)
    {
      return;
    }

    v23 = a1[1];
    v24 = *v2;
    v25 = v20 - 1;
    if (v25)
    {
      if (!v7)
      {
        return;
      }

      v26 = 0;
      v27 = v24 + 1;
      v28 = 2 * v5;
      do
      {
        a2.i16[0] = *v23;
        v29 = v7;
        v30 = v24;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v31 = 0;
LABEL_42:
            v30 = (v24 + 2 * (v7 & 0xFFFFFFFC));
            v35 = vdup_lane_s16(a2, 0);
            v36 = 2 * v31;
            v37 = v31 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v24->i8[v36] = v35;
              v36 += 8;
              v37 += 4;
            }

            while (v37);
            v29 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_34;
            }

            goto LABEL_47;
          }

          v32 = vdupq_lane_s16(a2, 0);
          v33 = v7 & 0xFFFFFFF0;
          v34 = v27;
          do
          {
            v34[-1] = v32;
            *v34 = v32;
            v34 += 2;
            v33 -= 16;
          }

          while (v33);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_34;
          }

          v31 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_42;
          }

          v30 = (v24 + 2 * (v7 & 0xFFFFFFF0));
          v29 = v7 & 0xF;
        }

LABEL_47:
        v38 = v29 + 1;
        do
        {
          v30->i16[0] = a2.i16[0];
          v30 = (v30 + 2);
          --v38;
        }

        while (v38 > 1);
LABEL_34:
        v24 = (v24 + v28);
        ++v26;
        v27 = (v27 + v28);
      }

      while (v26 != v25);
    }

    if (!v7)
    {
      return;
    }

    a2.i16[0] = *v23;
    if (v7 < 4)
    {
      v39 = v7;
      v40 = v24;
      goto LABEL_78;
    }

    if (v7 >= 0x10)
    {
      v48 = v7 & 0xFFFFFFF0;
      v49 = vdupq_lane_s16(a2, 0);
      v50 = v24 + 1;
      v51 = v48;
      do
      {
        v50[-1] = v49;
        *v50 = v49;
        v50 += 2;
        v51 -= 16;
      }

      while (v51);
      if (v48 == v7)
      {
        return;
      }

      if ((v7 & 0xC) == 0)
      {
        v40 = (v24 + 2 * v48);
        v39 = v7 & 0xF;
        goto LABEL_78;
      }
    }

    else
    {
      v48 = 0;
    }

    v39 = v7 & 3;
    v40 = (v24 + 2 * (v7 & 0xFFFFFFFC));
    v52 = vdup_lane_s16(a2, 0);
    v53 = (v24 + 2 * v48);
    v54 = v48 - (v7 & 0xFFFFFFFC);
    do
    {
      *v53++ = v52;
      v54 += 4;
    }

    while (v54);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return;
    }

LABEL_78:
    v56 = v39 + 1;
    do
    {
      v40->i16[0] = a2.i16[0];
      v40 = (v40 + 2);
      --v56;
    }

    while (v56 > 1);
    return;
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return;
  }

  v9 = *v2;
  a2.i16[0] = *a1[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = *v2;
    goto LABEL_74;
  }

  if (v8 >= 0x10)
  {
    v41 = v8 & 0xFFFFFFF0;
    v42 = vdupq_lane_s16(a2, 0);
    v43 = v9 + 1;
    v44 = v41;
    do
    {
      v43[-1] = v42;
      *v43 = v42;
      v43 += 2;
      v44 -= 16;
    }

    while (v44);
    if (v41 == v8)
    {
      return;
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v41);
      v10 = v8 & 0xF;
LABEL_74:
      v55 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v55;
      }

      while (v55 > 1);
      return;
    }
  }

  else
  {
    v41 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v45 = vdup_lane_s16(a2, 0);
  v46 = (v9 + 2 * v41);
  v47 = v41 - (v8 & 0xFFFFFFFC);
  do
  {
    *v46++ = v45;
    v47 += 4;
  }

  while (v47);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_74;
  }
}

__int16 sub_23F1F6F24@<H0>(__int16 ***a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *a2;
    v8 = 2 * *(a2 + 24);
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v7 + 2;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 2) = ***a1;
            *(v13 - 1) = ***a1;
            *v13 = ***a1;
            v13[1] = ***a1;
            v13 = (v13 + v8);
            --v14;
          }

          while (v14);
          *(v13 - 2) = ***a1;
          *(v13 - 1) = ***a1;
          *v13 = ***a1;
          v13[1] = ***a1;
          v7 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_18;
      }

      v15 = 2 * v10;
      do
      {
        *v7 = ***a1;
        v7[1] = ***a1;
        v7[2] = ***a1;
        v7[3] = ***a1;
        v7 = (v7 + v15);
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_19:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v16 = **a1;
      result = *v16;
      v7[3] = *v16;
      return result;
    }

    do
    {
LABEL_18:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v7[3] = ***a1;
      v7 = (v7 + v8);
      --v6;
    }

    while (v6);
    goto LABEL_19;
  }

  return result;
}

__int16 sub_23F1F70F8@<H0>(uint64_t *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20) == 1 && *(v2 + 20) == 1;
  if (!v3)
  {
    v191 = 0;
    if (*(v1 + 8))
    {
      v4 = *(v1 + 12) == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && *(v1 + 16) != 0)
    {
      v192 = &v191;
      LOWORD(v6) = sub_23F1F7A28(&v192, v1, v2);
    }

    return v6;
  }

  v7 = *(v1 + 24);
  v8 = *(v2 + 24);
  v9 = *(v1 + 8);
  if (v7 == v8 && v7 == v9)
  {
    v63 = *(v1 + 28);
    v64 = *(v2 + 28);
    v65 = *(v1 + 12);
    v66 = (v65 * v7);
    if (v63 != v64 || v63 != v66)
    {
      v68 = *(v1 + 16);
      if (v7)
      {
        v69 = v65 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (v69 || v68 == 0)
      {
        return v6;
      }

      v71 = *v1;
      v72 = *v2;
      if (v68 == 1)
      {
LABEL_79:
        if (!v66)
        {
          return v6;
        }

        v73 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v73 < 3 || (v72 - v71) < 0x20)
        {
          v166 = v72;
          v167 = v71;
          goto LABEL_197;
        }

        v74 = v73 + 1;
        if (v73 >= 0xF)
        {
          v75 = v74 & 0xFFFFFFFFFFFFFFF0;
          v168 = (v71 + 8);
          v169 = v72 + 8;
          v170 = v74 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v6 = *(v168 - 1);
            v171 = *v168;
            *(v169 - 1) = v6;
            *v169 = v171;
            v168 += 2;
            v169 += 2;
            v170 -= 16;
          }

          while (v170);
          if (v74 == v75)
          {
            return v6;
          }

          if ((v74 & 0xC) == 0)
          {
            v167 = &v71[v75];
            v166 = &v72[v75];
            goto LABEL_197;
          }
        }

        else
        {
          v75 = 0;
        }

        v172 = v74 & 0xFFFFFFFFFFFFFFFCLL;
        v166 = &v72[v172];
        v167 = &v71[v172];
        v173 = &v71[v75];
        v174 = &v72[v75];
        v175 = v75 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v176 = *v173++;
          LOWORD(v6) = v176;
          *v174 = v176;
          v174 += 4;
          v175 += 4;
        }

        while (v175);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v6;
        }

LABEL_197:
        v182 = &v71[v66];
        do
        {
          v183 = *v167++;
          LOWORD(v6) = v183;
          *v166++ = v183;
        }

        while (v167 != v182);
        return v6;
      }

      if (!v66)
      {
        return v6;
      }

      v83 = 0;
      v84 = v68 - 2;
      v85 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v86 = v85 + 1;
      v87 = v72 >= &v71[v66 + v63 * v84] || v71 >= &v72[v66 + v64 * v84];
      v88 = v86 & 0xFFFFFFFFFFFFFFF0;
      v89 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v91 = !v87;
      v92 = 2 * v63;
      v93 = 2 * v64;
      while (1)
      {
        v94 = v72;
        v95 = v71;
        if (!((v85 < 3) | v91 & 1))
        {
          if (v85 < 0xF)
          {
            v96 = 0;
LABEL_105:
            v94 = &v72[v90];
            v95 = &v71[v90];
            v101 = v96;
            v102 = v96 - v89;
            do
            {
              *&v6 = *&v71[v101];
              *&v72[v101] = v6;
              v101 += 4;
              v102 += 4;
            }

            while (v102);
            if (v86 == v89)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }

          v97 = 0;
          v98 = v86 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = &v72[v97];
            v6 = *&v71[v97];
            v100 = *&v71[v97 + 8];
            *v99 = v6;
            *(v99 + 1) = v100;
            v97 += 16;
            v98 -= 16;
          }

          while (v98);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_97;
          }

          v96 = v86 & 0xFFFFFFFFFFFFFFF0;
          if ((v86 & 0xC) != 0)
          {
            goto LABEL_105;
          }

          v95 = &v71[v88];
          v94 = &v72[v88];
        }

        do
        {
LABEL_110:
          v103 = *v95++;
          LOWORD(v6) = v103;
          *v94++ = v103;
        }

        while (v95 != &v71[v66]);
LABEL_97:
        v71 = (v71 + v92);
        v72 = (v72 + v93);
        v3 = v83++ == v84;
        if (v3)
        {
          goto LABEL_79;
        }
      }
    }

    v76 = (*(v1 + 16) * v63);
    if (!v76)
    {
      return v6;
    }

    v77 = *v1;
    v78 = *v2;
    v79 = (v76 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v79 < 3)
    {
      v80 = *v1;
      goto LABEL_193;
    }

    v80 = *v1;
    if ((v78 - v77) < 0x20)
    {
      goto LABEL_193;
    }

    v81 = v79 + 1;
    if (v79 >= 0xF)
    {
      v82 = v81 & 0xFFFFFFFFFFFFFFF0;
      v156 = (v77 + 8);
      v157 = v78 + 8;
      v158 = v81 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v156 - 1);
        v159 = *v156;
        *(v157 - 1) = v6;
        *v157 = v159;
        v156 += 2;
        v157 += 2;
        v158 -= 16;
      }

      while (v158);
      if (v81 == v82)
      {
        return v6;
      }

      if ((v81 & 0xC) == 0)
      {
        v80 = &v77[v82];
        v78 += v82;
        goto LABEL_193;
      }
    }

    else
    {
      v82 = 0;
    }

    v160 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = &v78[v160];
    v80 = &v77[v160];
    v162 = &v77[v82];
    v163 = &v78[v82];
    v164 = v82 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      LOWORD(v6) = v165;
      *v163 = v165;
      v163 += 4;
      v164 += 4;
    }

    while (v164);
    v78 = v161;
    if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_193:
    v180 = &v77[v76];
    do
    {
      v181 = *v80++;
      LOWORD(v6) = v181;
      *v78++ = v181;
    }

    while (v80 != v180);
    return v6;
  }

  v12 = *(v1 + 12);
  v11 = *(v1 + 16);
  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v11 != 0)
  {
    v15 = v12 - 1;
    v16 = *v1;
    v17 = *v2;
    v18 = 2 * v8;
    v19 = v11 - 1;
    v186 = *(v2 + 24);
    v187 = *(v1 + 24);
    v185 = *(v1 + 12);
    if (v11 != 1)
    {
      v20 = *(v2 + 28);
      v21 = *(v1 + 28);
      if (v12 != 1)
      {
        v22 = 0;
        v23 = 2 * v7;
        v190 = v18 + v17 - v16 - 2 * v7;
        v189 = 2 * (v20 - v21);
        v188 = v18 - 2 * v7;
        v24 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v25 = v24 + 1;
        v26 = v12 - 2;
        v27 = 2 * v20;
        v28 = 2 * v21;
        v29 = v17 + 2 * (v9 + v8 * v26);
        v30 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
        v31 = v30;
        v32 = (v24 + 1) & 0xC;
        v33 = (v24 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v34 = v33;
        v35 = v16 + 2 * (v9 + v7 * v26);
        while (1)
        {
          v36 = 0;
          v38 = v17 < v35 + v28 * v22 && v16 < v29 + v27 * v22;
          v39 = v17;
          v40 = v16;
          do
          {
            v41 = v36;
            v42 = v39;
            v43 = v40;
            if (v24 < 3 || v38)
            {
              goto LABEL_48;
            }

            if (v24 >= 0xF)
            {
              v45 = 0;
              v46 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v47 = &v39[v45];
                v48 = *&v40[v45 + 8];
                *v47 = *&v40[v45];
                v47[1] = v48;
                v45 += 16;
                v46 -= 16;
              }

              while (v46);
              if (v25 == v30)
              {
                goto LABEL_35;
              }

              v44 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v43 = &v40[v31];
                v42 = &v39[v31];
                do
                {
LABEL_48:
                  v51 = *v43++;
                  *v42++ = v51;
                }

                while (v43 != &v40[v9]);
                goto LABEL_35;
              }
            }

            else
            {
              v44 = 0;
            }

            v42 = &v39[v34];
            v43 = &v40[v34];
            v49 = v44;
            v50 = v44 - v33;
            do
            {
              *&v39[v49] = *&v40[v49];
              v49 += 4;
              v50 += 4;
            }

            while (v50);
            if (v25 != v33)
            {
              goto LABEL_48;
            }

LABEL_35:
            v40 = (v40 + v23);
            v39 = (v39 + v18);
            v36 = v41 + 1;
          }

          while (v41 + 1 != v15);
          if (v24 < 3 || (v190 + v189 * v22 + v188 * v41) < 0x20)
          {
            v52 = v39;
            v53 = v40;
            goto LABEL_53;
          }

          if (v24 >= 0xF)
          {
            v57 = 0;
            v58 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v59 = &v39[v57];
              v60 = *&v40[v57 + 8];
              *v59 = *&v40[v57];
              v59[1] = v60;
              v57 += 16;
              v58 -= 16;
            }

            while (v58);
            if (v25 != v30)
            {
              v56 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v53 = &v40[v31];
                v52 = &v39[v31];
                goto LABEL_53;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v56 = 0;
LABEL_62:
            v52 = &v39[v34];
            v53 = &v40[v34];
            v61 = v56;
            v62 = v56 - v33;
            do
            {
              *&v39[v61] = *&v40[v61];
              v61 += 4;
              v62 += 4;
            }

            while (v62);
            if (v25 != v33)
            {
LABEL_53:
              v54 = &v40[v9];
              do
              {
                v55 = *v53++;
                *v52++ = v55;
              }

              while (v53 != v54);
            }
          }

          v16 += v28;
          v17 += v27;
          if (++v22 == v19)
          {
            goto LABEL_134;
          }
        }
      }

      v104 = 0;
      v105 = v11 - 2;
      v106 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v107 = v106 + 1;
      v108 = v17 >= v16 + 2 * (v9 + v21 * v105) || v16 >= v17 + 2 * (v9 + v20 * v105);
      v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFF0);
      v110 = v107 & 0xFFFFFFFFFFFFFFFCLL;
      v111 = 2 * (v107 & 0xFFFFFFFFFFFFFFFCLL);
      v112 = !v108;
      v113 = 2 * v21;
      v114 = 2 * v20;
      do
      {
        v115 = v17;
        v116 = v16;
        if (!((v106 < 3) | v112 & 1))
        {
          if (v106 < 0xF)
          {
            v117 = 0;
LABEL_127:
            v115 = (v17 + v111);
            v116 = (v16 + v111);
            v122 = 2 * v117;
            v123 = v117 - v110;
            do
            {
              *(v17 + v122) = *(v16 + v122);
              v122 += 8;
              v123 += 4;
            }

            while (v123);
            if (v107 == v110)
            {
              goto LABEL_119;
            }

            goto LABEL_132;
          }

          v118 = 0;
          v119 = v107 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = (v17 + v118);
            v121 = *(v16 + v118 + 16);
            *v120 = *(v16 + v118);
            v120[1] = v121;
            v118 += 32;
            v119 -= 16;
          }

          while (v119);
          if (v107 == (v107 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_119;
          }

          v117 = v107 & 0xFFFFFFFFFFFFFFF0;
          if ((v107 & 0xC) != 0)
          {
            goto LABEL_127;
          }

          v116 = (v16 + v109);
          v115 = (v17 + v109);
        }

        do
        {
LABEL_132:
          v124 = *v116++;
          *v115++ = v124;
        }

        while (v116 != (v16 + 2 * v9));
LABEL_119:
        v16 += v113;
        v17 += v114;
        ++v104;
      }

      while (v104 != v19);
    }

LABEL_134:
    if (v15)
    {
      v125 = 0;
      v126 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v127 = v126 + 1;
      v129 = v17 < v16 + 2 * (v9 + v187 * (v185 - 2)) && v16 < v17 + 2 * (v9 + v186 * (v185 - 2));
      v130 = 2 * (v127 & 0xFFFFFFFFFFFFFFF0);
      v131 = 2 * (v127 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v132 = v17;
        v133 = v16;
        if (v126 >= 3 && !v129)
        {
          if (v126 < 0xF)
          {
            v134 = 0;
LABEL_150:
            v132 = (v17 + v131);
            v133 = (v16 + v131);
            v139 = 2 * v134;
            v140 = v134 - (v127 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *(v17 + v139) = *(v16 + v139);
              v139 += 8;
              v140 += 4;
            }

            while (v140);
            if (v127 == (v127 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_142;
            }

            goto LABEL_155;
          }

          v135 = 0;
          v136 = v127 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v137 = (v17 + v135);
            v138 = *(v16 + v135 + 16);
            *v137 = *(v16 + v135);
            v137[1] = v138;
            v135 += 32;
            v136 -= 16;
          }

          while (v136);
          if (v127 == (v127 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_142;
          }

          v134 = v127 & 0xFFFFFFFFFFFFFFF0;
          if ((v127 & 0xC) != 0)
          {
            goto LABEL_150;
          }

          v133 = (v16 + v130);
          v132 = (v17 + v130);
        }

        do
        {
LABEL_155:
          v141 = *v133++;
          *v132++ = v141;
        }

        while (v133 != (v16 + 2 * v9));
LABEL_142:
        v16 += 2 * v187;
        v17 += v18;
        ++v125;
      }

      while (v125 != v15);
    }

    v142 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v142 < 3 || v17 - v16 < 0x20)
    {
      v145 = v17;
      v146 = v16;
      goto LABEL_189;
    }

    v143 = v142 + 1;
    if (v142 >= 0xF)
    {
      v144 = v143 & 0xFFFFFFFFFFFFFFF0;
      v147 = (v16 + 16);
      v148 = (v17 + 16);
      v149 = v143 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v147 - 1);
        v150 = *v147;
        *(v148 - 1) = v6;
        *v148 = v150;
        v147 += 2;
        v148 += 2;
        v149 -= 16;
      }

      while (v149);
      if (v143 == v144)
      {
        return v6;
      }

      if ((v143 & 0xC) == 0)
      {
        v177 = 2 * v144;
        v146 = (v16 + v177);
        v145 = (v17 + v177);
        goto LABEL_189;
      }
    }

    else
    {
      v144 = 0;
    }

    v151 = 2 * (v143 & 0xFFFFFFFFFFFFFFFCLL);
    v145 = (v17 + v151);
    v146 = (v16 + v151);
    v152 = (v16 + 2 * v144);
    v153 = (v17 + 2 * v144);
    v154 = v144 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v155 = *v152++;
      LOWORD(v6) = v155;
      *v153++ = v155;
      v154 += 4;
    }

    while (v154);
    if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_189:
    v178 = (v16 + 2 * v9);
    do
    {
      v179 = *v146++;
      LOWORD(v6) = v179;
      *v145++ = v179;
    }

    while (v146 != v178);
  }

  return v6;
}

__int16 sub_23F1F7A28@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v9 + 2;
        v17 = v8 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19[1] = v18[1];
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v8 += v14;
          v9 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_18;
      }

      v21 = 2 * v14;
      v22 = 2 * v13;
      do
      {
        *v9 = *v8;
        v9[1] = v8[1];
        v9[2] = v8[2];
        v9[3] = v8[3];
        v8 = (v8 + v21);
        v9 = (v9 + v22);
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      result = v8[3];
      v9[3] = result;
      return result;
    }

    do
    {
LABEL_18:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_23F1F7B90(uint64_t result, int32x2_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3 != 1)
  {
    v11 = *(v2 + 8);
    v12 = *(v2 + 12);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return result;
    }

    v14 = *(result + 8);
    v15 = v11 - 1;
    v16 = *v2;
    v17 = 4 * v3;
    v18 = v12 - 1;
    if (v18)
    {
      v19 = *(v2 + 20);
      if (!v15)
      {
        v48 = *v14;
        do
        {
          v16->i32[0] = v48;
          v16 = (v16 + 4 * v19);
          --v18;
        }

        while (v18);
        goto LABEL_50;
      }

      v20 = 0;
      v21 = *v14;
      v22 = 4 * v19;
      do
      {
        v23 = v16;
        v24 = v15;
        do
        {
          v23->i32[0] = v21;
          v23 = (v23 + v17);
          --v24;
        }

        while (v24);
        v21 = *v14;
        v23->i32[0] = *v14;
        v16 = (v16 + v22);
        ++v20;
      }

      while (v20 != v18);
    }

    else
    {
      v21 = *v14;
      if (!v15)
      {
LABEL_51:
        v16->i32[0] = v21;
        return result;
      }
    }

    do
    {
      v16->i32[0] = v21;
      v16 = (v16 + v17);
      --v15;
    }

    while (v15);
LABEL_50:
    v21 = *v14;
    goto LABEL_51;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 == v5)
  {
    v6 = *(v2 + 12);
    v7 = (v6 * v4);
    if (!v7)
    {
      return result;
    }

    v8 = *v2;
    a2.i32[0] = **(result + 8);
    if (v7 < 8)
    {
      v9 = (v6 * v4);
      v10 = *v2;
LABEL_39:
      v43 = v9 + 1;
      do
      {
        v10->i32[0] = a2.i32[0];
        v10 = (v10 + 4);
        --v43;
      }

      while (v43 > 1);
      return result;
    }

    v9 = (v6 * v4) & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v40 = vdupq_lane_s32(a2, 0);
    v41 = v8 + 1;
    v42 = v7 & 0xFFFFFFF8;
    do
    {
      v41[-1] = v40;
      *v41 = v40;
      v41 += 2;
      v42 -= 8;
    }

    while (v42);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v25 = *(v2 + 12);
    if (v5)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = *(result + 8);
      v28 = *v2;
      v29 = v25 - 1;
      if (v29)
      {
        v30 = 0;
        v31 = v28 + 1;
        result = 4 * v4;
        do
        {
          a2.i32[0] = *v27;
          v32 = v5;
          v33 = v28;
          if (v5 < 8)
          {
            goto LABEL_28;
          }

          v33 = (v28 + 4 * (v5 & 0xFFFFFFF8));
          v34 = vdupq_lane_s32(a2, 0);
          v35 = v5 & 0xFFFFFFF8;
          v36 = v31;
          do
          {
            v36[-1] = v34;
            *v36 = v34;
            v36 += 2;
            v35 -= 8;
          }

          while (v35);
          v32 = v5 & 7;
          if ((v5 & 0xFFFFFFF8) != v5)
          {
LABEL_28:
            v37 = v32 + 1;
            do
            {
              v33->i32[0] = a2.i32[0];
              v33 = (v33 + 4);
              --v37;
            }

            while (v37 > 1);
          }

          v28 = (v28 + 4 * v4);
          ++v30;
          v31 = (v31 + result);
        }

        while (v30 != v29);
      }

      a2.i32[0] = *v27;
      v38 = v5 - (v5 != 0) + 1;
      if (v38 >= 8)
      {
        v5 -= v38 & 0xFFFFFFFFFFFFFFF8;
        v39 = (v28 + 4 * (v38 & 0xFFFFFFFFFFFFFFF8));
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v28 + 1;
        v46 = v38 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45[-1] = v44;
          *v45 = v44;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      else
      {
        v39 = v28;
      }

      v47 = v5 + 1;
      do
      {
        v39->i32[0] = a2.i32[0];
        v39 = (v39 + 4);
        --v47;
      }

      while (v47 > 1);
    }
  }

  return result;
}

float sub_23F1F7DE8(char **a1, char **a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v22 = *(a1 + 5);
    v23 = *(a2 + 5);
    v24 = *(a1 + 2);
    if (v22 == v23 && v22 == v24)
    {
      v38 = *(a1 + 3) * v22;
      if (!v38)
      {
        return result;
      }

      v36 = 4 * v38;
      v39 = *a2;
      v35 = *a1;
      v34 = v39;
    }

    else
    {
      v26 = *(a1 + 3);
      if (v24)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return result;
      }

      v28 = *a1;
      v29 = *a2;
      v30 = 4 * v24;
      v31 = v26 - 1;
      if (v26 != 1)
      {
        v32 = 4 * v22;
        v33 = 4 * v23;
        do
        {
          memmove(v29, v28, v30);
          v28 += v32;
          v29 += v33;
          --v31;
        }

        while (v31);
      }

      v34 = v29;
      v35 = v28;
      v36 = v30;
    }

    memmove(v34, v35, v36);
    return result;
  }

  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *a1;
    v10 = *a2;
    v11 = 4 * v2;
    v12 = 4 * v3;
    v13 = v6 - 1;
    if (v13)
    {
      v14 = *(a2 + 5);
      v15 = *(a1 + 5);
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v9 += v15;
          v10 += 4 * v14;
          --v13;
        }

        while (v13);
        goto LABEL_38;
      }

      v16 = 0;
      v17 = 4 * v15;
      v18 = 4 * v14;
      do
      {
        v19 = v10;
        v20 = v9;
        v21 = v8;
        do
        {
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        *v19 = *v20;
        v9 = (v9 + v17);
        v10 += v18;
        ++v16;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_38:
      result = *v9;
      *v10 = *v9;
      return result;
    }

    do
    {
      *v10 = *v9;
      v9 = (v9 + v11);
      v10 += v12;
      --v8;
    }

    while (v8);
    goto LABEL_38;
  }

  return result;
}

float sub_23F1F7FCC(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v43 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v43;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[1];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 1) = *v15;
          *v23 = v25;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v26 = *v15;
        *(v23 - 1) = *v15;
        *v23 = v26;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      LODWORD(a2) = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v42 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v42;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v27 = a1[1];
    v55[0] = *a1;
    v55[1] = v27;
    sub_23F1F8280(v55, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v49 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v49;
      }

      while (v49 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v46 = vdupq_lane_s32(*&a2, 0);
    v47 = v8 + 1;
    v48 = v7 & 0xFFFFFFF8;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 8;
    }

    while (v48);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v28 = *(v2 + 16);
    if (v3)
    {
      v29 = v5 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29 && v28 != 0)
    {
      v31 = a1[1];
      v32 = *v2;
      v33 = v28 - 1;
      if (v33)
      {
        if (!v6)
        {
          return *&a2;
        }

        v34 = 0;
        v35 = v32 + 1;
        do
        {
          LODWORD(a2) = *v31;
          v36 = v6;
          v37 = v32;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v37 = (v32 + 4 * (v6 & 0xFFFFFFF8));
          v38 = vdupq_lane_s32(*&a2, 0);
          v39 = v6 & 0xFFFFFFF8;
          v40 = v35;
          do
          {
            v40[-1] = v38;
            *v40 = v38;
            v40 += 2;
            v39 -= 8;
          }

          while (v39);
          v36 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v41 = v36 + 1;
            do
            {
              v37->i32[0] = LODWORD(a2);
              v37 = (v37 + 4);
              --v41;
            }

            while (v41 > 1);
          }

          v32 = (v32 + 4 * v4);
          ++v34;
          v35 = (v35 + 4 * v4);
        }

        while (v34 != v33);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v31;
      if (v6 >= 8)
      {
        v44 = v6 & 7;
        v45 = (v32 + 4 * (v6 & 0xFFFFFFF8));
        v50 = vdupq_lane_s32(*&a2, 0);
        v51 = v32 + 1;
        v52 = v6 & 0xFFFFFFF8;
        do
        {
          v51[-1] = v50;
          *v51 = v50;
          v51 += 2;
          v52 -= 8;
        }

        while (v52);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v44 = v6;
        v45 = v32;
      }

      v53 = v44 + 1;
      do
      {
        v45->i32[0] = LODWORD(a2);
        v45 = (v45 + 4);
        --v53;
      }

      while (v53 > 1);
    }
  }

  return *&a2;
}

unint64_t sub_23F1F8280(unint64_t result, int32x2_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 12);
  v5 = *(*result + 16);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = *(result + 8);
    v9 = v4 - 1;
    v10 = *(v2 + 6);
    v11 = *v2;
    v12 = 4 * v10;
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 7);
      v15 = v3 & 0xFFFFFFF8;
      v16 = 4 * v15;
      LODWORD(result) = 0;
      v17 = v11 + 1;
      if (v9)
      {
        v18 = 4 * v14;
        do
        {
          v19 = 0;
          v20 = v11;
          v21 = v17;
          v22 = v11;
          do
          {
            a2.i32[0] = *v8;
            v23 = v3;
            v24 = v22;
            if (v3 < 8)
            {
              goto LABEL_18;
            }

            v24 = (v22 + v16);
            v25 = vdupq_lane_s32(a2, 0);
            v26 = v3 & 0xFFFFFFF8;
            v27 = v21;
            do
            {
              v27[-1] = v25;
              *v27 = v25;
              v27 += 2;
              v26 -= 8;
            }

            while (v26);
            v23 = v3 & 7;
            if (v15 != v3)
            {
LABEL_18:
              v28 = v23 + 1;
              do
              {
                v24->i32[0] = a2.i32[0];
                v24 = (v24 + 4);
                --v28;
              }

              while (v28 > 1);
            }

            v22 = (v22 + 4 * v10);
            ++v19;
            v21 = (v21 + v12);
            v20 = (v20 + v12);
          }

          while (v19 != v9);
          a2.i32[0] = *v8;
          v29 = v3;
          if (v3 < 8)
          {
            goto LABEL_25;
          }

          v30 = 0;
          v22 = (v22 + v16);
          v31 = vdupq_lane_s32(a2, 0);
          do
          {
            v20[v30 / 0x10] = v31;
            v21[v30 / 0x10] = v31;
            v30 += 32;
          }

          while (v16 != v30);
          v29 = v3 & 7;
          if (v15 != v3)
          {
LABEL_25:
            v32 = v29 + 1;
            do
            {
              v22->i32[0] = a2.i32[0];
              v22 = (v22 + 4);
              --v32;
            }

            while (v32 > 1);
          }

          v11 = (v11 + v18);
          result = (result + 1);
          v17 = (v17 + v18);
        }

        while (result != v13);
      }

      else
      {
        do
        {
          a2.i32[0] = *v8;
          v33 = v3;
          v34 = v11;
          if (v3 < 8)
          {
            goto LABEL_34;
          }

          v34 = (v11 + v16);
          v35 = vdupq_lane_s32(a2, 0);
          v36 = v3 & 0xFFFFFFF8;
          v37 = v17;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 8;
          }

          while (v36);
          v33 = v3 & 7;
          if (v15 != v3)
          {
LABEL_34:
            v38 = v33 + 1;
            do
            {
              v34->i32[0] = a2.i32[0];
              v34 = (v34 + 4);
              --v38;
            }

            while (v38 > 1);
          }

          v11 = (v11 + 4 * v14);
          result = (result + 1);
          v17 = (v17 + 4 * v14);
        }

        while (result != v13);
      }
    }

    if (v9)
    {
      v39 = 0;
      v40 = v3 - (v3 != 0) + 1;
      result = 4 * (v40 & 0xFFFFFFFFFFFFFFF8);
      v41 = v11 + 1;
      do
      {
        a2.i32[0] = *v8;
        v42 = v3;
        v43 = v11;
        if (v40 < 8)
        {
          goto LABEL_44;
        }

        v43 = (v11 + result);
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v40 & 0xFFFFFFFFFFFFFFF8;
        v46 = v41;
        do
        {
          v46[-1] = v44;
          *v46 = v44;
          v46 += 2;
          v45 -= 8;
        }

        while (v45);
        v42 = v3 - (v40 & 0xFFFFFFFFFFFFFFF8);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_44:
          v47 = v42 + 1;
          do
          {
            v43->i32[0] = a2.i32[0];
            v43 = (v43 + 4);
            --v47;
          }

          while (v47 > 1);
        }

        v11 = (v11 + 4 * v10);
        ++v39;
        v41 = (v41 + v12);
      }

      while (v39 != v9);
    }

    a2.i32[0] = *v8;
    v48 = v3 - (v3 != 0) + 1;
    if (v48 < 8)
    {
      v49 = v11;
LABEL_52:
      v53 = v3 + 1;
      do
      {
        v49->i32[0] = a2.i32[0];
        v49 = (v49 + 4);
        --v53;
      }

      while (v53 > 1);
      return result;
    }

    v3 -= v48 & 0xFFFFFFFFFFFFFFF8;
    v49 = (v11 + 4 * (v48 & 0xFFFFFFFFFFFFFFF8));
    v50 = vdupq_lane_s32(a2, 0);
    v51 = v11 + 1;
    v52 = v48 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 8;
    }

    while (v52);
    if (v48 != (v48 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_52;
    }
  }

  return result;
}

float sub_23F1F8548(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 1 && *(a2 + 20) == 1)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 8);
    if (v23 != *(a2 + 24) || v23 != v24)
    {
      v45 = *(a1 + 8);
      if (v24)
      {
        v26 = *(a1 + 12) == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26 && *(a1 + 16) != 0)
      {
        sub_23F1F87BC(&v45, a1, a2);
      }

      return result;
    }

    v29 = *(a1 + 28);
    v30 = *(a2 + 28);
    v31 = *(a1 + 12);
    v32 = (v31 * v23);
    if (v29 == v30 && v29 == v32)
    {
      v43 = *(a1 + 16) * v29;
      if (!v43)
      {
        return result;
      }

      v40 = 4 * v43;
      v41 = *a2;
      v42 = *a1;
    }

    else
    {
      if (!v23)
      {
        return result;
      }

      if (!v31)
      {
        return result;
      }

      v34 = *(a1 + 16);
      if (!v34)
      {
        return result;
      }

      v35 = *a1;
      v36 = *a2;
      v37 = v34 - 1;
      if (v34 != 1)
      {
        if (!v32)
        {
          return result;
        }

        v38 = 4 * v29;
        v39 = 4 * v30;
        do
        {
          memmove(v36, v35, 4 * v32);
          v35 += v38;
          v36 += v39;
          --v37;
        }

        while (v37);
      }

      if (!v32)
      {
        return result;
      }

      v40 = 4 * v32;
      v41 = v36;
      v42 = v35;
    }

    memmove(v41, v42, v40);
    return result;
  }

  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v9 = v5 - 1;
    v10 = *a1;
    v11 = *a2;
    v12 = 4 * *(a1 + 24);
    v13 = 4 * *(a2 + 24);
    v14 = v6 - 1;
    if (v14)
    {
      v15 = *(a2 + 28);
      v16 = *(a1 + 28);
      if (!v9)
      {
        v44 = 4 * v15;
        do
        {
          *v11 = *v10;
          *(v11 + 1) = *(v10 + 1);
          v10 += 4 * v16;
          v11 += v44;
          --v14;
        }

        while (v14);
        goto LABEL_54;
      }

      v17 = 0;
      v18 = v10 + 4;
      v19 = v11 + 4;
      do
      {
        v20 = v19;
        v21 = v18;
        v22 = v9;
        do
        {
          *(v20 - 1) = *(v21 - 1);
          *v20 = *v21;
          v21 = (v21 + v12);
          v20 = (v20 + v13);
          --v22;
        }

        while (v22);
        *(v20 - 1) = *(v21 - 1);
        *v20 = *v21;
        v10 += 4 * v16;
        v11 += 4 * v15;
        ++v17;
        v18 += 4 * v16;
        v19 += 4 * v15;
      }

      while (v17 != v14);
    }

    else if (!v9)
    {
LABEL_54:
      *v11 = *v10;
      result = *(v10 + 1);
      *(v11 + 1) = result;
      return result;
    }

    do
    {
      *v11 = *v10;
      *(v11 + 1) = *(v10 + 1);
      v10 += v12;
      v11 += v13;
      --v9;
    }

    while (v9);
    goto LABEL_54;
  }

  return result;
}

uint64_t *sub_23F1F87BC(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 6);
    v10 = *(a3 + 6);
    v11 = *a2;
    v12 = *a3;
    v35 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 7);
      v14 = *(a2 + 7);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v30 = 0;
        v31 = *(a2 + 3);
        v25 = v4 - 2;
LABEL_27:
        result = memmove(v12, v11, 4 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 4 * v14;
          v12 += 4 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 4 * v14;
        v12 += 4 * v13;
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v30 = v3 - 1;
        v31 = *(a2 + 3);
        v16 = 0;
        v32 = v3 - 2;
        v28 = *(a3 + 6);
        v29 = *(a2 + 6);
        v17 = 4 * v9;
        v18 = &v11[4 * v9];
        v19 = 4 * v14;
        v20 = 4 * v10;
        v21 = &v12[4 * v10];
        v33 = 4 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 4 * v15);
        }

        while (v24)
        {
          v15 = *v7;
          --v24;
          v23 += v17;
          v22 += v20;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        v18 = v36;
        if (*v7)
        {
          result = memmove(&v21[v22], &v36[v23], 4 * *v7);
        }

        while (1)
        {
          v11 += v34;
          v12 += v33;
          if (++v16 == v35)
          {
            break;
          }

          v15 = *v7;
          v18 += v34;
          v21 += v33;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v10 = v28;
        v9 = v29;
      }

      v8 = v30;
      v3 = v31;
    }

    v26 = *v7;
    if (v8)
    {
      if (!v26)
      {
        return result;
      }

      v27 = v3 - 2;
LABEL_36:
      result = memmove(v12, v11, 4 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 4 * v9;
        v12 += 4 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 4 * v9;
      v12 += 4 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 4 * v26);
    }
  }

  return result;
}

float sub_23F1F8A04(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v46 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v46;
          v47 = *v15;
          v17->i32[2] = *v15;
          v17->i32[3] = v47;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        v28 = *v15;
        *v23 = *v15;
        v23[1] = v28;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      v48 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v48;
      LODWORD(a2) = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v44 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v44;
      v45 = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = v45;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v29 = a1[1];
    v60[0] = *a1;
    v60[1] = v29;
    sub_23F1F8280(v60, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v54 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v54;
      }

      while (v54 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v51 = vdupq_lane_s32(*&a2, 0);
    v52 = v8 + 1;
    v53 = v7 & 0xFFFFFFF8;
    do
    {
      v52[-1] = v51;
      *v52 = v51;
      v52 += 2;
      v53 -= 8;
    }

    while (v53);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v30 = *(v2 + 16);
    if (v3)
    {
      v31 = v5 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (!v31 && v30 != 0)
    {
      v33 = a1[1];
      v34 = *v2;
      v35 = v30 - 1;
      if (v35)
      {
        if (!v6)
        {
          return *&a2;
        }

        v36 = 0;
        v37 = v34 + 1;
        do
        {
          LODWORD(a2) = *v33;
          v38 = v6;
          v39 = v34;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v39 = (v34 + 4 * (v6 & 0xFFFFFFF8));
          v40 = vdupq_lane_s32(*&a2, 0);
          v41 = v6 & 0xFFFFFFF8;
          v42 = v37;
          do
          {
            v42[-1] = v40;
            *v42 = v40;
            v42 += 2;
            v41 -= 8;
          }

          while (v41);
          v38 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v43 = v38 + 1;
            do
            {
              v39->i32[0] = LODWORD(a2);
              v39 = (v39 + 4);
              --v43;
            }

            while (v43 > 1);
          }

          v34 = (v34 + 4 * v4);
          ++v36;
          v37 = (v37 + 4 * v4);
        }

        while (v36 != v35);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v33;
      if (v6 >= 8)
      {
        v49 = v6 & 7;
        v50 = (v34 + 4 * (v6 & 0xFFFFFFF8));
        v55 = vdupq_lane_s32(*&a2, 0);
        v56 = v34 + 1;
        v57 = v6 & 0xFFFFFFF8;
        do
        {
          v56[-1] = v55;
          *v56 = v55;
          v56 += 2;
          v57 -= 8;
        }

        while (v57);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v49 = v6;
        v50 = v34;
      }

      v58 = v49 + 1;
      do
      {
        v50->i32[0] = LODWORD(a2);
        v50 = (v50 + 4);
        --v58;
      }

      while (v58 > 1);
    }
  }

  return *&a2;
}

float sub_23F1F8CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 4 * *(a2 + 24);
    v11 = 4 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v9[3] = v8[3];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      result = v8[3];
      v9[3] = result;
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

void sub_23F1F8E90(uint64_t a1, int a2, unint64_t a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v33[0] = &unk_285181C18;
      v3 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v3 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v3 << 32);
      sub_23F1E0080(&v27, v29);
      operator new();
    case 2:
      v33[0] = &unk_285181C50;
      v17 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v17 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v17 << 32);
      sub_23F1E14A0(&v27, v29);
      operator new();
    case 3:
      v33[0] = &unk_285181C88;
      v8 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v8 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v8 << 32);
      sub_23F1E28C0(&v27, v29);
      operator new();
    case 4:
      v33[0] = &unk_285181CC0;
      v20 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v20 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v20 << 32);
      sub_23F1E3CE0(&v27, v29);
      operator new();
    case 5:
      v13 = 2 * (a3 != 0);
      LODWORD(v14) = v13 * a3;
      if (HIDWORD(a3))
      {
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      *v29 = 2;
      *&v29[4] = a3;
      v28 = &unk_285181CF8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v14;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1E5100(&v27, v29);
      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, &unk_23F3091D6, 0, "The buffer does not support the given format", 0x2CuLL, sub_23F303DA4);
      abort();
    case 7:
      v21 = 2 * (a3 != 0);
      LODWORD(v22) = v21 * a3;
      if (HIDWORD(a3))
      {
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      *v29 = 2;
      *&v29[4] = a3;
      v28 = &unk_285181D30;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v21 & 0x1FFFFFFFFLL | ((v22 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v22;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1E6530(&v27, v29);
      operator new();
    case 8:
      v15 = 2 * (a3 != 0);
      LODWORD(v16) = v15 * a3;
      if (HIDWORD(a3))
      {
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      *v29 = 2;
      *&v29[4] = a3;
      v28 = &unk_285181D68;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v15 & 0x1FFFFFFFFLL | ((v16 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v16;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1E7968(&v27, v29);
      operator new();
    case 21:
      if (a3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v7) = v6 * a3;
      if (HIDWORD(a3))
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

      *v29 = 3;
      *&v29[4] = a3;
      v28 = &unk_285181DA0;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v6 | (v7 << 32);
      *&v29[12] = v33[0];
      v30 = v7;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1E8D98(&v27, v29);
      operator new();
    case 22:
      if (a3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      LODWORD(v10) = v9 * a3;
      if (HIDWORD(a3))
      {
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      *v29 = 3;
      *&v29[4] = a3;
      v28 = &unk_285181DD8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v9 | (v10 << 32);
      *&v29[12] = v33[0];
      v30 = v10;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1EA0D0(&v27, v29);
      operator new();
    case 25:
      v11 = 4 * (a3 != 0);
      LODWORD(v12) = v11 * a3;
      if (HIDWORD(a3))
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_285181E10;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v12;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1EB408(&v27, v29);
      operator new();
    case 31:
      v18 = 4 * (a3 != 0);
      LODWORD(v19) = v18 * a3;
      if (HIDWORD(a3))
      {
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_285181E48;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v18 & 0x3FFFFFFFFLL | ((v19 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v19;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1EC844(&v27, v29);
      operator new();
    case 32:
      v25 = 4 * (a3 != 0);
      LODWORD(v26) = v25 * a3;
      if (HIDWORD(a3))
      {
        v26 = v26;
      }

      else
      {
        v26 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_285181E80;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v25 & 0x3FFFFFFFFLL | ((v26 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v26;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1EDC7C(&v27, v29);
      operator new();
    case 37:
      v23 = 4 * (a3 != 0);
      LODWORD(v24) = v23 * a3;
      if (HIDWORD(a3))
      {
        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_285181EB8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v23 & 0x3FFFFFFFFLL | ((v24 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v24;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1EF0AC(&v27, v29);
      operator new();
    case 38:
      v4 = 4 * (a3 != 0);
      LODWORD(v5) = v4 * a3;
      if (HIDWORD(a3))
      {
        v5 = v5;
      }

      else
      {
        v5 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_285181EF0;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v4 & 0x3FFFFFFFFLL | ((v5 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v5;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_23F1F04E8(&v27, v29);
      operator new();
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}