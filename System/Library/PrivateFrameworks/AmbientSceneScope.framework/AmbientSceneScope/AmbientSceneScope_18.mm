void sub_23F0A6EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 - 88);
  *(v4 - 88) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_23F08FF34(va);
  _Unwind_Resume(a1);
}

void sub_23F0A7E4C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0A801C(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0A8128(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0A7FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0A801C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394738))
  {
    sub_23F08F4A4();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394720, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

uint64_t *sub_23F0A8128(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v12);
  v6 = *(v12 + 16);
  *(a1 + 1) = *v12;
  a1[4] = v6;
  v12 = 0;
  MEMORY[0x245CACD00]();
  v7 = *a1;
  v8 = a1[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v7;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = v9;
    }
  }

  v10 = (*(*v7 + 104))(v7);
  *(a1 + 20) = v10 & ((v10 >> 1) >> 15);
  return a1;
}

void sub_23F0A82B4(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0A8484(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0A8590(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0A8430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0A8484(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394778))
  {
    sub_23F08FEAC();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394760, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

uint64_t *sub_23F0A8590(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v12);
  v6 = *(v12 + 16);
  *(a1 + 1) = *v12;
  a1[4] = v6;
  v12 = 0;
  MEMORY[0x245CACD00]();
  v7 = *a1;
  v8 = a1[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v7;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = v9;
    }
  }

  v10 = (*(*v7 + 104))(v7);
  *(a1 + 20) = v10 & ((v10 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0A871C(uint64_t result)
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

void sub_23F0A8794(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0A8AC0(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0A9040(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0A8910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0A8964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0A8A1C(uint64_t a1)
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

void sub_23F0A8AC0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394858))
  {
    sub_23F0A8BCC();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394840, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0A8C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0A8C54()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0A8EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0A9040(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v12);
  v6 = *(v12 + 16);
  *(a1 + 1) = *v12;
  a1[4] = v6;
  v12 = 0;
  MEMORY[0x245CACD00]();
  v7 = *a1;
  v8 = a1[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v7;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = v9;
    }
  }

  v10 = (*(*v7 + 104))(v7);
  *(a1 + 20) = v10 & ((v10 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0A91CC(uint64_t result)
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

void sub_23F0A9244(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 4)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0A9570(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0A9AF0(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0A93C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0A9414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0A94CC(uint64_t a1)
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

void sub_23F0A9570(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394878))
  {
    sub_23F0A967C();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394860, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0A96E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0A9704()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0A99A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0A9AF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v12);
  v6 = *(v12 + 16);
  *(a1 + 1) = *v12;
  a1[4] = v6;
  v12 = 0;
  MEMORY[0x245CACD00]();
  v7 = *a1;
  v8 = a1[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v7;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = v9;
    }
  }

  v10 = (*(*v7 + 104))(v7);
  *(a1 + 20) = v10 & ((v10 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0A9C7C(uint64_t result)
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

void sub_23F0A9CF4(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AA154(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0A9F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0A9FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0AA0B0(uint64_t a1)
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

void sub_23F0AA154(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394898))
  {
    sub_23F0AA260();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394880, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AA2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AA2E8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two8u]", 29, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0AA58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0AA6D4(uint64_t result)
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

void sub_23F0AA74C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 6)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AABAC(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0AA9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0AAA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0AAB08(uint64_t a1)
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

void sub_23F0AABAC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E3948B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3948B8))
  {
    sub_23F0AACB8();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3948A0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AAD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AAD40()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two16u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0AAFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0AB12C(uint64_t result)
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

void sub_23F0AB1A4(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 7)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AB604(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0AB44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0AB4A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0AB560(uint64_t a1)
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

void sub_23F0AB604(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E3948D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3948D8))
  {
    sub_23F0AB710();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3948C0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AB77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AB798()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two16f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0ABA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0ABB84(uint64_t result)
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

void sub_23F0ABBFC(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 8)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AC05C(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0ABEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0ABF00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0ABFB8(uint64_t a1)
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

void sub_23F0AC05C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E3948F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3948F8))
  {
    sub_23F0AC168();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3948E0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AC1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AC1F0()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two32f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0AC494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0AC5DC(uint64_t result)
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

void sub_23F0AC654(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 9)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0ACAB4(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0AC8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0AC958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0ACA10(uint64_t a1)
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

void sub_23F0ACAB4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394918))
  {
    sub_23F0ACBC0();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394900, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0ACC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0ACC48()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three8u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0ACEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0AD034(uint64_t result)
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

void sub_23F0AD0AC(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 10)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AD50C(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0AD354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0AD3B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0AD468(uint64_t a1)
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

void sub_23F0AD50C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394938))
  {
    sub_23F0AD618();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394920, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AD684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AD6A0()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three16u]", 32, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0AD944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0ADA8C(uint64_t result)
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

void sub_23F0ADB04(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 11)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0ADF64(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0ADDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0ADE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0ADEC0(uint64_t a1)
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

void sub_23F0ADF64(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394958))
  {
    sub_23F0AE070();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394940, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AE0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AE0F8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three16f]", 32, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0AE39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0AE4E4(uint64_t result)
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

void sub_23F0AE55C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 12)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AE9BC(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0AE804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0AE860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0AE918(uint64_t a1)
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

void sub_23F0AE9BC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394978))
  {
    sub_23F0AEAC8();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394960, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AEB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AEB50()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three32f]", 32, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0AEDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0AEF3C(uint64_t result)
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

void sub_23F0AEFB4(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 13)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AF414(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0AF25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0AF2B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0AF370(uint64_t a1)
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

void sub_23F0AF414(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394998))
  {
    sub_23F0AF520();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394980, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AF58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0AF5A8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0AF84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0AF994(uint64_t result)
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

void sub_23F0AFA0C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 14)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0AFE6C(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0AFCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0AFD10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0AFDC8(uint64_t a1)
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

void sub_23F0AFE6C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E3949B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3949B8))
  {
    sub_23F0AFF78();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3949A0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0AFFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B0000()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four16u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B02A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B03EC(uint64_t result)
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

void sub_23F0B0464(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 15)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B08C4(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B070C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B0768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B0820(uint64_t a1)
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

void sub_23F0B08C4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E3949D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3949D8))
  {
    sub_23F0B09D0();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3949C0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B0A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B0A58()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B0CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B0E44(uint64_t result)
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

void sub_23F0B0EBC(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 16)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B131C(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B1164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B11C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B1278(uint64_t a1)
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

void sub_23F0B131C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E3949F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3949F8))
  {
    sub_23F0B1428();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3949E0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B1494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B14B0()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B1754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B189C(uint64_t result)
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

void sub_23F0B1914(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 17)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B1D74(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B1BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B1C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B1CD0(uint64_t a1)
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

void sub_23F0B1D74(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394A18))
  {
    sub_23F0B1E80();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394A00, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B1EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B1F08()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr8u]", 29, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B21AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B22F4(uint64_t result)
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

void sub_23F0B236C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 18)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B27CC(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B2614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B2670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B2728(uint64_t a1)
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

void sub_23F0B27CC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394A38))
  {
    sub_23F0B28D8();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394A20, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B2944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B2960()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr16u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B2C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B2D4C(uint64_t result)
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

void sub_23F0B2DC4(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 19)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B3224(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B306C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B30C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B3180(uint64_t a1)
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

void sub_23F0B3224(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394A58))
  {
    sub_23F0B3330();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394A40, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B339C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B33B8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr16f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B37A4(uint64_t result)
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

void sub_23F0B381C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 20)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B3C7C(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B3AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B3B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B3BD8(uint64_t a1)
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

void sub_23F0B3C7C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394A78))
  {
    sub_23F0B3D88();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394A60, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B3DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B3E10()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr32f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B40B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_23F0B41FC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 21)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B43CC(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0B44D8(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0B4378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0B43CC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394798))
  {
    sub_23F090614();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394780, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

uint64_t *sub_23F0B44D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0B4664(uint64_t result)
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

void sub_23F0B46DC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 22)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B4A08(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0B4F88(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0B4858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0B48AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B4964(uint64_t a1)
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

void sub_23F0B4A08(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394A98))
  {
    sub_23F0B4B14();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394A80, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B4B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B4B9C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb16u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B4E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0B4F88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0B5114(uint64_t result)
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

void sub_23F0B518C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 23)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B54B8(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0B5A38(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0B5308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0B535C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B5414(uint64_t a1)
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

void sub_23F0B54B8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394AB8))
  {
    sub_23F0B55C4();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394AA0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B5630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B564C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb16f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B58F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0B5A38(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0B5BC4(uint64_t result)
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

void sub_23F0B5C3C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 24)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B5F68(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0B64E8(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0B5DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0B5E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B5EC4(uint64_t a1)
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

void sub_23F0B5F68(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394AD8))
  {
    sub_23F0B6074();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394AC0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B60E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B60FC()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb32f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B63A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0B64E8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0B6674(uint64_t result)
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

void sub_23F0B66EC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B6A18(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0B6F98(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0B6868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0B68BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B6974(uint64_t a1)
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

void sub_23F0B6A18(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394AF8))
  {
    sub_23F0B6B24();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394AE0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B6B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B6BAC()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B6E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0B6F98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0B7124(uint64_t result)
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

void sub_23F0B719C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 26)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B75FC(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B7444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B74A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B7558(uint64_t a1)
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

void sub_23F0B75FC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394B18))
  {
    sub_23F0B7708();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394B00, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B7774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B7790()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra16u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B7A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B7B7C(uint64_t result)
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

void sub_23F0B7BF4(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 27)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B8054(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B7E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B7EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B7FB0(uint64_t a1)
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

void sub_23F0B8054(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394B38))
  {
    sub_23F0B8160();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394B20, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B81CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B81E8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B848C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B85D4(uint64_t result)
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

void sub_23F0B864C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 28)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B8AAC(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0B88F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0B8950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B8A08(uint64_t a1)
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

void sub_23F0B8AAC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394B58))
  {
    sub_23F0B8BB8();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394B40, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B8C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B8C40()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B8EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0B902C(uint64_t result)
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

void sub_23F0B90A4(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B93D0(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0B9950(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0B9220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0B9274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B932C(uint64_t a1)
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

void sub_23F0B93D0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394B78))
  {
    sub_23F0B94DC();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394B60, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B9548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0B9564()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0B9808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0B9950(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0B9ADC(uint64_t result)
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

void sub_23F0B9B54(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 30)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0B9E80(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0BA400(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0B9CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0B9D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0B9DDC(uint64_t a1)
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

void sub_23F0B9E80(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394B98))
  {
    sub_23F0B9F8C();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394B80, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0B9FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BA014()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba16u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BA2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0BA400(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0BA58C(uint64_t result)
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

void sub_23F0BA604(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BA930(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0BAEB0(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0BA780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0BA7D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BA88C(uint64_t a1)
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

void sub_23F0BA930(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394BB8))
  {
    sub_23F0BAA3C();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394BA0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BAAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BAAC4()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BAD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0BAEB0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0BB03C(uint64_t result)
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

void sub_23F0BB0B4(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BB3E0(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0BB960(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0BB230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0BB284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BB33C(uint64_t a1)
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

void sub_23F0BB3E0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394BD8))
  {
    sub_23F0BB4EC();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394BC0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BB558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BB574()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgba32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BB818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0BB960(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0BBAEC(uint64_t result)
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

void sub_23F0BBB64(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 33)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BBE90(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0BC410(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0BBCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0BBD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BBDEC(uint64_t a1)
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

void sub_23F0BBE90(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394BF8))
  {
    sub_23F0BBF9C();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394BE0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BC008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BC024()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BC2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0BC410(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0BC59C(uint64_t result)
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

void sub_23F0BC614(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 34)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BCA74(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0BC8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0BC918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BC9D0(uint64_t a1)
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

void sub_23F0BCA74(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394C18))
  {
    sub_23F0BCB80();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394C00, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BCBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BCC08()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr16u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BCEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0BCFF4(uint64_t result)
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

void sub_23F0BD06C(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 35)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BD4CC(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0BD314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0BD370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BD428(uint64_t a1)
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

void sub_23F0BD4CC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394C38))
  {
    sub_23F0BD5D8();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394C20, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BD644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BD660()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BD904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0BDA4C(uint64_t result)
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

void sub_23F0BDAC4(std::string::size_type *a1, uint64_t a2)
{
  if (*(a2 + 56) != 36)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BDF24(&v15, a2);
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15.__r_.__value_.__r.__words[0] = v3;
  v15.__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    v14 = 0;
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v16);
  v6 = v16;
  v8 = v16[1];
  v7 = v16[2];
  *(a1 + 1) = *v16;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;
  v16 = 0;
  MEMORY[0x245CACD00](v6);
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v12 = (*(*v9 + 104))(v9);
  *(a1 + 32) = v12 & ((v12 >> 1) >> 15);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v15.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v15.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v15.__r_.__value_.__l.__size_ + 16))(v15.__r_.__value_.__l.__size_);
      std::__shared_weak_count::__release_weak(v15.__r_.__value_.__l.__size_);
    }
  }
}

void sub_23F0BDD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  _Unwind_Resume(a1);
}

void sub_23F0BDDC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BDE80(uint64_t a1)
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

void sub_23F0BDF24(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394C58))
  {
    sub_23F0BE030();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394C40, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BE09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BE0B8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BE35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_23F0BE4A4(uint64_t result)
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

void sub_23F0BE51C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BE848(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0BEDC8(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0BE698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0BE6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BE7A4(uint64_t a1)
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

void sub_23F0BE848(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394C78))
  {
    sub_23F0BE954();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394C60, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BE9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BE9DC()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Argb8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BEC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0BEDC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0BEF54(uint64_t result)
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

void sub_23F0BEFCC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BF2F8(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0BF878(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0BF148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0BF19C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BF254(uint64_t a1)
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

void sub_23F0BF2F8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394C98))
  {
    sub_23F0BF404();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394C80, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BF470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BF48C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Argb16u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0BF730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0BF878(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

uint64_t sub_23F0BFA04(uint64_t result)
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

void sub_23F0BFA7C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 56) != 39)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0BFDA8(&v9, a2);
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v9.__r_.__value_.__r.__words[0] = v2;
  v9.__r_.__value_.__l.__size_ = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v7 = v2;
    v8 = v3;
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = v2;
    v8 = 0;
  }

  sub_23F0C0328(a1, &v7);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  size = v9.__r_.__value_.__l.__size_;
  if (v9.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v9.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }
}

void sub_23F0BFBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

void sub_23F0BFC4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0BFD04(uint64_t a1)
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

void sub_23F0BFDA8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27E394CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394CB8))
  {
    sub_23F0BFEB4();
  }

  if ((atomic_load_explicit(&qword_27E395BD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395BD0))
    {
      sub_23F0A0B80();
    }
  }

  v3 = *(a2 + 56);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394CA0, " from an ", &qword_27E395C08, " but the image is of incompatible format ");
}

void sub_23F0BFF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0BFF3C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Argb16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23F0C01E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t *sub_23F0C0328(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x245CACD00]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}