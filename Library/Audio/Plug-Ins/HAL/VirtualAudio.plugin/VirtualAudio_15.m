void sub_115DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  os_unfair_lock_unlock(v36 + 132);
  if (*(v37 + 23) < 0)
  {
    operator delete(*v37);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void sub_115E4C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_22418(a1, 0x57uLL);
}

void sub_116104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_116190(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  *buf = a2;
  buf[8] = 1;
  sub_26C0(a2);
  for (i = *(a3 + 8); i != a3; i = i[1])
  {
    v7 = i[3];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = i[2];
        if (v10 && (v11 = sub_84A28((a2 + 312), v10)) != 0)
        {
          v12 = v11[3];
          sub_1A8C0(v9);
          if (a2 + 288 != v12)
          {
            sub_849B8();
          }
        }

        else
        {
          sub_1A8C0(v9);
        }
      }
    }
  }

  sub_3174(a2);
  if (v25 != *(a3 + 16))
  {
    v13 = sub_5544(9);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a3 + 16) - v25;
        *buf = 136315650;
        *&buf[4] = "PortManager.cpp";
        v29 = 1024;
        v30 = 1232;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Skipping %d ports from input list, as these ports are not available", buf, 0x18u);
      }
    }
  }

  sub_80C2C(v22, &v23);
  v16 = v24;
  if (&v23 != v24)
  {
    do
    {
      sub_25704(&v26, v16 + 2, "", 1239);
      v17 = v26;
      if ((*(v26 + 184) & 0x80) != 0 && sub_114ABC(v26))
      {
        sub_114A00(buf, v17);
        sub_1148F8(v22, buf);
        sub_65310(buf);
      }

      if (v27)
      {
        sub_1A8C0(v27);
      }

      v16 = v16[1];
    }

    while (&v23 != v16);
    v16 = v24;
  }

  for (; &v23 != v16; v16 = v16[1])
  {
    sub_25704(&v20, v16 + 2, "", 1249);
    v18 = v20;
    if ((*(v20 + 184) & 0x100) != 0 && sub_22D7DC(v20))
    {
      v26 = v18 + 368;
      v19 = (*(*(v18 + 368) + 16))(v18 + 368);
      LOBYTE(v27) = v19;
      sub_80C2C(buf, v18 + 344);
      if (v19)
      {
        (*(*(v18 + 368) + 24))(v18 + 368);
      }

      sub_1148F8(v22, buf);
      sub_65310(buf);
    }

    if (v21)
    {
      sub_1A8C0(v21);
    }
  }

  if (v22[2])
  {
    *buf = 1717793397;
    sub_80C2C(&buf[8], v22);
    sub_1165C0(a1, *buf);
    sub_65310(&buf[8]);
  }

  sub_65310(v22);
  sub_65310(&v23);
}

void sub_1164F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_65310(va);
  sub_D169C(*v6);
  _Unwind_Resume(a1);
}

uint64_t sub_1165C0(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *sub_1166C4(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = v5[3];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v7;
        if (v7)
        {
          v9 = v5[2];
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v7);
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v10 = a3[1];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        v12 = v11;
        if (v11)
        {
          v13 = *a3;
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v11);
          if (!v8)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
          if (!v8)
          {
LABEL_18:
            v9 = 0;
            v14 = 0;
            if (!v12)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }

      else
      {
        v13 = 0;
        v12 = 0;
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      v14 = std::__shared_weak_count::lock(v8);
      if (!v14)
      {
        v9 = 0;
      }

      if (!v12)
      {
LABEL_22:
        v16 = v9 == 0;
        if (!v14)
        {
          goto LABEL_24;
        }

LABEL_23:
        sub_1A8C0(v14);
        goto LABEL_24;
      }

LABEL_19:
      v15 = std::__shared_weak_count::lock(v12);
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = v9 == v13;
      sub_1A8C0(v15);
      if (v14)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v16)
      {
        return v5;
      }

      v5 = v5[1];
    }

    while (v5 != v3);
  }

  return v3;
}

uint64_t sub_116828(uint64_t result)
{
  if (*(result + 132) == 1)
  {
    *(result + 132) = 0;
  }

  return result;
}

std::string *sub_11683C(std::string *a1, void *a2, void *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_22170(&v16, *(a2 + 7));
      v7 = std::string::insert(&v16, 0, "'", 1uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v17.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v17, "'", 1uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v19 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (v19 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v19 >= 0)
      {
        v12 = HIBYTE(v19);
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a1, v11, v12);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v13 = a2[1];
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
          v14 = a2[2];
          v15 = *v14 == a2;
          a2 = v14;
        }

        while (!v15);
      }

      if (v14 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v14;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_1169C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_116A34()
{
  if ((atomic_load_explicit(&qword_6E8390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8390))
  {
    byte_6E838A = sub_2875C4();
    __cxa_guard_release(&qword_6E8390);
  }

  return byte_6E838A;
}

uint64_t *sub_116AA8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v6 = v5[1];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v7;
        if (v7)
        {
          v9 = *v5;
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v7);
          goto LABEL_7;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = 0;
LABEL_7:
      v11 = *a3;
      v10 = a3[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        v12 = std::__shared_weak_count::lock(v8);
        if (!v12)
        {
          v9 = 0;
        }

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v9 = 0;
        v12 = 0;
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      v13 = std::__shared_weak_count::lock(v10);
      if (v13)
      {
        v14 = v9 == v11;
        sub_1A8C0(v13);
        if (!v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_1A8C0(v12);
        goto LABEL_20;
      }

LABEL_18:
      v14 = v9 == 0;
      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (!v14)
      {
        v5 += 2;
        if (v5 != a2)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v5 == a2)
  {
    return a2;
  }

  for (i = v5 + 2; i != a2; i += 2)
  {
    v16 = i[1];
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      v18 = v17;
      if (v17)
      {
        v19 = *i;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v17);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v21 = *a3;
    v20 = a3[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v18)
    {
      v22 = std::__shared_weak_count::lock(v18);
      if (!v22)
      {
        v19 = 0;
      }

      if (!v20)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v19 = 0;
      v22 = 0;
      if (!v20)
      {
        goto LABEL_44;
      }
    }

    v23 = std::__shared_weak_count::lock(v20);
    if (v23)
    {
      v24 = v19 == v21;
      sub_1A8C0(v23);
      if (!v22)
      {
        goto LABEL_46;
      }

LABEL_45:
      sub_1A8C0(v22);
      goto LABEL_46;
    }

LABEL_44:
    v24 = v19 == 0;
    if (v22)
    {
      goto LABEL_45;
    }

LABEL_46:
    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    if (!v24)
    {
      v25 = *i;
      *i = 0;
      i[1] = 0;
      v26 = v5[1];
      *v5 = v25;
      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }

      v5 += 2;
    }
  }

  return v5;
}

uint64_t sub_116CDC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

uint64_t sub_116D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 640;
  while (2)
  {
    v10 = v8;
    v11 = *(a1 + v9);
    v12 = *(a1 + v9 + 8);
    while (v11 != v12)
    {
      if ((*(**(*v11 + 152) + 56))(*(*v11 + 152), a2, a3, a4))
      {
        return 1;
      }

      v11 += 16;
    }

    v8 = 1;
    v9 = 664;
    if ((v10 & 1) == 0)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t sub_116E58(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, unsigned int *a4)
{
  if (*(a1 + 308))
  {
    v8 = *(a1 + 128);

    return sub_D7C9C(v8, a2, a3, a4);
  }

  else
  {
    if (a3 != 4 || !a4)
    {
      v10 = sub_5544(14);
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v18 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&__p);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    mScope = a2->mScope;
    if (mScope != 1768845428 && mScope != 1869968496)
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "AggregateDevice_CommonBase.cpp";
          v23 = 1024;
          v24 = 3529;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v17, "Precondition failure.");
    }

    v6 = *a4;
    if (((*(*a1 + 368))(a1, 1685287015, *a4, 0) & 1) == 0)
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "AggregateDevice_CommonBase.cpp";
        v23 = 1024;
        v24 = 3533;
        v25 = 1024;
        LODWORD(v26) = v6;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): GetPropertyDataSizeForDSPGraphParameter() failed for parameterID = %u", buf, 0x18u);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      *v14 = &off_6DDDD0;
      v14[2] = 1852797029;
    }

    return 4;
  }
}

void sub_117234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  sub_80534(&__dst, a11);
  *buf = *(a5 + 4);
  sub_106FA0(&v13, buf);
  operator new();
}

void sub_1175F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    sub_1A8C0(a30);
  }

  sub_128368(&a23);
  if (v30)
  {
    sub_1A8C0(v30);
  }

  operator delete();
}

void sub_1176C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1176B4);
}

uint64_t sub_1176F0(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, unsigned int *a4, UInt32 a5, unsigned __int32 *a6)
{
  if (*(a1 + 308))
  {
    v15 = *(a1 + 128);

    return sub_140EB8(v15, a2, a3, a4, a5, a6);
  }

  else
  {
    if (a3 != 4 || !a4)
    {
      v16 = sub_5544(14);
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        v23 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    if ((*(*a1 + 32))(a1, a2, 4, a4) != a5)
    {
      v18 = sub_5544(14);
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        v24 = *&a2->mSelector;
        v26 = a2->mElement;
        sub_22CE0(__p);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = 561211770;
    }

    mScope = a2->mScope;
    if (mScope != 1768845428 && mScope != 1869968496)
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_CommonBase.cpp";
        v30 = 1024;
        v31 = 3589;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v22, "Precondition failure.");
    }

    v10.n128_u32[0] = *a6;
    v12 = *a4;
    v13 = *(*a1 + 384);

    return v13(a1, 1685287015, v12, 0, v10);
  }
}

void sub_117BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_117BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (((*(*a1 + 368))(a1) & 1) == 0)
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315394;
      *&v32[4] = "AggregateDevice_CommonBase.cpp";
      v33 = 1024;
      v34 = 333;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v32, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v10 = 0;
  v11 = 640;
LABEL_3:
  v12 = v10;
  v13 = *(a1 + v11);
  v14 = *(a1 + v11 + 8);
  while (1)
  {
    if (v13 == v14)
    {
      v10 = 1;
      v11 = 664;
      if (v12)
      {
        v16 = sub_5544(14);
        v17 = *v16;
        if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *v32 = 136315394;
          *&v32[4] = "AggregateDevice_CommonBase.cpp";
          v33 = 1024;
          v34 = 350;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate a DSP chain with the given parameters, but HasDSPParameter returned true.", v32, 0x12u);
        }

        v18 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v18, "Unable to locate a DSP chain with the given parameters, but HasDSPParameter returned true.");
      }

      goto LABEL_3;
    }

    v15 = *(*v13 + 152);
    if ((*(*v15 + 56))(v15, a2, a3, a4))
    {
      break;
    }

    v13 += 16;
  }

  v19 = (*(*v15 + 72))(v15, a2, a3, a4, a5);
  v20 = sub_5544(17);
  v21 = sub_5544(25);
  v22 = 0;
  *v32 = 0x100000002;
  v23 = *(v20 + 8);
  while (1)
  {
    v24 = *&v32[v22];
    if (((v23 & v24) != 0) != ((*(v21 + 8) & v24) != 0))
    {
      break;
    }

    v22 += 4;
    if (v22 == 8)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  if ((v23 & v24) == 0)
  {
    v20 = v21;
  }

  if (*(v20 + 8))
  {
LABEL_20:
    v25 = *v20;
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *v32 = 136315906;
      *&v32[4] = "AggregateDevice_CommonBase.cpp";
      v33 = 1024;
      v34 = 343;
      v35 = 2048;
      v36 = a5;
      v37 = 1024;
      v38 = v19;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d chain->SetParameter(%f): %d.", v32, 0x22u);
    }
  }

LABEL_23:
  if (v19)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26)
    {
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *v32 = 136315394;
        *&v32[4] = "AggregateDevice_CommonBase.cpp";
        v33 = 1024;
        v34 = 344;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: chain->SetParameter failed.", v32, 0x12u);
      }
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = &off_6DDDD0;
    v28[2] = v19;
  }
}

uint64_t sub_118060(int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock(&stru_6E4B50);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_4EF90(&v33, a3, a3 + 12 * a2, a2);
  v8 = off_6E4B90;
  v9 = off_6E4B98;
  if (off_6E4B90 != off_6E4B98)
  {
    v10 = v33;
    v11 = v34;
    while (1)
    {
      if (*v8 == a1)
      {
        v12 = v10;
        if (v10 != v11)
        {
          v12 = v10;
          while (!sub_15414(v12, v8 + 1))
          {
            v12 += 3;
            if (v12 == v11)
            {
              goto LABEL_10;
            }
          }
        }

        if (v12 != v11)
        {
          break;
        }
      }

LABEL_10:
      v8 += 4;
      if (v8 == v9)
      {
        goto LABEL_24;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_24:
    v20 = sub_5544(14);
    a4 = 560947818;
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_1DB6A0(&__p, v33, v34);
      v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "HALPropertySynchronizer.h";
      v40 = 1024;
      v41 = 177;
      v42 = 2080;
      v43 = v22;
      v44 = 1024;
      v45 = a1;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property change callback for property %s on expired device id %u. Ignoring.", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (a4)
  {
    v13 = sub_5544(14);
    if (*(v13 + 8))
    {
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "HALPropertySynchronizer.h";
          v40 = 1024;
          v41 = 186;
          v42 = 1024;
          LODWORD(v43) = a1;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d A property changed listener routine has been called for one or more properties on id %u", buf, 0x18u);
        }
      }
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_4F010(&v30, v33, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 2));
    v15 = v30;
    if (*a4 == a1)
    {
      v16 = v31;
      v17 = v30;
      if (v30 != v31)
      {
        v18 = *(a4 + 8);
        v17 = v30;
        while (1)
        {
          v19 = v17[2];
          *buf = *v17;
          *&buf[8] = v19;
          if (sub_15414(buf, v18))
          {
            break;
          }

          v17 += 3;
          if (v17 == v16)
          {
            goto LABEL_42;
          }
        }
      }

      if (v17 != v16)
      {
        v23 = sub_5544(14);
        if ((*(v23 + 8) & 1) != 0 && *v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = *v17;
          v37 = v17[2];
          v36 = v24;
          sub_22CE0(&__p);
        }

        v25 = *(a4 + 24);
        std::mutex::lock(v25);
        v26 = *(a4 + 32);
        if (*v26 == 1)
        {
          v27 = sub_5544(14);
          if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *v17;
            v37 = v17[2];
            v36 = v28;
            sub_22CE0(&__p);
          }
        }

        else
        {
          *v26 = 1;
          std::condition_variable::notify_all(*(a4 + 16));
        }

        std::mutex::unlock(v25);
      }
    }

LABEL_42:
    if (v15)
    {
      operator delete(v15);
    }

    a4 = 0;
  }

  if (v33)
  {
    operator delete(v33);
  }

  std::mutex::unlock(&stru_6E4B50);
  return a4;
}

void sub_118530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  std::mutex::unlock(v14);
  if (v13)
  {
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::mutex::unlock(&stru_6E4B50);
  _Unwind_Resume(a1);
}

void *sub_118590(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t *a9, uint64_t *a10, uint64_t a11, __int128 *a12)
{
  *a1 = off_6C4CF0;
  v18 = a3[1];
  if (v18 == a3)
  {
    v59 = 0;
  }

  else
  {
    v19 = 0;
    do
    {
      v20 = v18[3];
      if (v20)
      {
        v21 = std::__shared_weak_count::lock(v20);
        if (v21)
        {
          v22 = v21;
          v23 = v18[2];
          if (v23)
          {
            v19 += (*(*v23 + 88))(v23, 0);
          }

          sub_1A8C0(v22);
        }
      }

      v18 = v18[1];
    }

    while (v18 != a3);
    v59 = v19;
  }

  v24 = a4[1];
  if (v24 == a4)
  {
    v30 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = v24[3];
      if (v26)
      {
        v27 = std::__shared_weak_count::lock(v26);
        if (v27)
        {
          v28 = v27;
          v29 = v24[2];
          if (v29)
          {
            v25 = (*(*v29 + 88))(v29, 1) + v25;
          }

          sub_1A8C0(v28);
        }
      }

      v24 = v24[1];
    }

    while (v24 != a4);
    v30 = v25 << 32;
  }

  v62 = 0;
  v63 = 0;
  v31 = a10[1];
  if (v31)
  {
    v32 = std::__shared_weak_count::lock(v31);
    if (v32)
    {
      v33 = *a10;
      atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v62 = v33;
      v63 = v32;
      v61 = v32;
      sub_1A8C0(v32);
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
    }
  }

  else
  {
    v61 = 0;
  }

  v34 = *(a6 + 40);
  if (!v34)
  {
    v58 = 0;
LABEL_35:
    v39 = 64;
    goto LABEL_36;
  }

  v35 = sub_107CA4(v34, *(a7 + 20));
  if ((v35 & 0x100000000) != 0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v58 = v36;
  v37 = *(a6 + 40);
  if (!v37)
  {
    goto LABEL_35;
  }

  v38 = sub_107E40(v37, *(a7 + 20));
  if ((v38 & 0x100000000) != 0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 64;
  }

LABEL_36:
  v40 = *(a7 + 20);
  v41 = 1;
  if (v40 <= 1987077986)
  {
    if (v40 == 1768057203)
    {
      goto LABEL_44;
    }

    v42 = 1919776355;
  }

  else
  {
    if (v40 == 1987077987 || v40 == 1987081833)
    {
      goto LABEL_44;
    }

    v42 = 1987081839;
  }

  if (v40 != v42)
  {
    v41 = 0;
  }

LABEL_44:
  v43 = 1;
  if (v40 != 1986556788 && v40 != 1987208039)
  {
    v43 = v40 == 1987211117;
  }

  v44 = *(a7 + 32);
  v45 = sub_107FDC(a6, v43);
  if (*(a7 + 144) == 1919312242)
  {
    v46 = *(a7 + 148);
  }

  else
  {
    v46 = 0;
  }

  *buf = sub_F330C(a2, a6, v30 | v59, &v62, v58, v39, a8, v41, a12, v44 & 0xFFFFFFFFFFLL, v45, a7 + 80, v46);
  *&v65[4] = sub_119B9C(*buf, sub_59984, a1);
  sub_119D7C(&v65[12], a2);
  memset(v66, 0, 24);
  sub_F320C(v66, *a9, a9[1], (a9[1] - *a9) >> 4);
  v66[3] = *a7;
  v67 = *(a7 + 8);
  *v68 = *(a7 + 16);
  *&v68[13] = *(a7 + 29);
  sub_80534(v69, (a7 + 40));
  v69[32] = *(a7 + 72);
  LOBYTE(v70) = 0;
  v76 = 0;
  if (*(a7 + 136) == 1)
  {
    v70 = *(a7 + 80);
    v71 = *(a7 + 96);
    v47 = *(a7 + 112);
    v72 = *(a7 + 104);
    v73 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 16), 1uLL, memory_order_relaxed);
    }

    v74 = *(a7 + 120);
    v48 = *(a7 + 128);
    if (v48)
    {
      CFRetain(*(a7 + 128));
    }

    v75 = v48;
    v76 = 1;
  }

  v77 = *(a7 + 144);
  v78 = *(a7 + 152);
  v79[0] = v79;
  v79[1] = v79;
  v79[2] = 0;
  for (i = a2; ; sub_125F60(v79, v79, *(i + 24), i + 16))
  {
    i = *(i + 8);
    if (i == a2)
    {
      break;
    }
  }

  v50 = a10[1];
  v79[3] = *a10;
  v79[4] = v50;
  if (v50)
  {
    atomic_fetch_add_explicit((v50 + 16), 1uLL, memory_order_relaxed);
  }

  sub_44E44(v80, a11);
  sub_80534(v81, a12);
  sub_80534(v82, a12 + 2);
  sub_119E64(a1, buf);
  sub_12828C(buf);
  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  *a1 = off_6C4CF0;
  *(a1 + 199) = 0;
  *(a1 + 400) = 0;
  if (*a5 == a5[1])
  {
    sub_1283DC((a1 + 101), 0, a1 + 68, a3);
  }

  else
  {
    a1[101] = 0;
    a1[102] = 0;
    a1[103] = 0;
    v51 = a5[1];
    if (v51 != *a5)
    {
      if (((v51 - *a5) & 0x8000000000000000) == 0)
      {
        v52 = v51 - *a5;
        operator new();
      }

      sub_189A00();
    }
  }

  sub_1283DC((a1 + 104), 1, a1 + 68, a4);
  a1[115] = 0;
  *(a1 + 232) = 0;
  *(a1 + 107) = 0u;
  *(a1 + 109) = 0u;
  *(a1 + 111) = 0u;
  *(a1 + 900) = 0u;
  if (!*(a2 + 16))
  {
    v54 = sub_5544(14);
    v55 = *v54;
    if (*v54 && os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v65 = "AggregateDevice_Common.cpp";
      *&v65[8] = 1024;
      *&v65[10] = 223;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inAggregateTopology is empty.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inAggregateTopology is empty.");
  }

  if (a1 + 74 != a3)
  {
    sub_1260BC(a1 + 74, a3[1], a3);
  }

  if (a1 + 77 != a4)
  {
    sub_1260BC(a1 + 77, a4[1], a4);
  }

  return a1;
}

void sub_118C2C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_36E720(v5);
  v7 = *v3;
  if (*v3)
  {
    *(v1 + 840) = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v1 + 816) = v8;
    operator delete(v8);
  }

  sub_13A668(v1);
  _Unwind_Resume(a1);
}

void sub_118D68(uint64_t a1, char *a2, size_t a3, char *a4)
{
  if (a3)
  {
    v4 = a4;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8 - v9 >= a3)
    {
      v15 = v9 - a2;
      if (a3 <= v9 - a2)
      {
        v16 = *(a1 + 8);
        v17 = a3;
      }

      else
      {
        memset(*(a1 + 8), *a4, a3 - (v9 - a2));
        v16 = &a2[a3];
        *(a1 + 8) = &a2[a3];
        if (!v15)
        {
          return;
        }

        v17 = v9 - a2;
      }

      v18 = &a2[a3];
      v19 = v16;
      if (&v16[-a3] < v9)
      {
        if (a3 <= v15)
        {
          v20 = v9 - a2;
        }

        else
        {
          v20 = a3;
        }

        v21 = &a2[-a3];
        v22 = a2;
        do
        {
          v22[v20] = v21[v20];
          ++v21;
          ++v22;
        }

        while (&v21[v20] != v9);
        if (a3 <= v15)
        {
          v23 = v9 - a2;
        }

        else
        {
          v23 = a3;
        }

        v19 = &v22[v23];
      }

      *(a1 + 8) = v19;
      if (v16 != v18)
      {
        memmove(&a2[a3], a2, v16 - v18);
      }

      if (a2 <= v4)
      {
        if (*(a1 + 8) <= v4)
        {
          v24 = 0;
        }

        else
        {
          v24 = a3;
        }

        v4 += v24;
      }

      v25 = *v4;

      memset(a2, v25, v17);
    }

    else
    {
      v10 = *a1;
      v11 = &v9[a3 - *a1];
      if (v11 < 0)
      {
        sub_189A00();
      }

      v12 = (a2 - v10);
      v13 = v8 - v10;
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      if (v14)
      {
        operator new();
      }

      v26 = a2 - v10;
      memset(v12, *a4, a3);
      v27 = &v12[a3];
      v28 = v9 - a2;
      memcpy(v27, a2, v9 - a2);
      *(a1 + 8) = a2;
      v29 = &v12[v10 - a2];
      memcpy(v29, v10, v26);
      *a1 = v29;
      *(a1 + 8) = &v27[v28];
      *(a1 + 16) = 0;
      if (v10)
      {

        operator delete(v10);
      }
    }
  }
}

void sub_118FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  if (a3)
  {
    sub_107AA8(v33);
  }

  v33[0] = v33;
  v33[1] = v33;
  v33[2] = 0;
  if (!a4)
  {
    v32[0] = v32;
    v32[1] = v32;
    v32[2] = 0;
    sub_168238(__p, 0, 0, a8);
    sub_107B8C(&v29, a2);
    sub_118590(a1, a2, v33, v32, __p, a5, a6, 1, a7, &v29, a9, a10);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    sub_65310(v32);
    sub_65310(v33);
    *a1 = off_6C31C0;
    a1[117] = a8;
    v17 = a1 + 118;
    if (a4 && (v18 = a4[1]) != 0)
    {
      v19 = *a4;
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v20 = (a1 + 119);
      *v17 = 0;
      a1[119] = 0;
      v21 = std::__shared_weak_count::lock(v18);
      if (v21)
      {
        v22 = v21;
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v23 = *v20;
        *v17 = v19;
        *v20 = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
        }

        sub_1A8C0(v22);
      }

      else
      {
        v24 = *v20;
        *v17 = 0;
        a1[119] = 0;
        if (v24)
        {
          std::__shared_weak_count::__release_weak(v24);
        }
      }

      std::__shared_weak_count::__release_weak(v18);
    }

    else
    {
      *v17 = 0;
      a1[119] = 0;
    }

    v25 = a1 + 120;
    if (a4 && a8)
    {
      sub_128B2C(a1 + 120, a4, a8);
    }

    else
    {
      a1[120] = v25;
      a1[121] = v25;
      a1[122] = 0;
    }

    v26 = a1 + 123;
    v27 = a1[119];
    if (v27 && (v28 = std::__shared_weak_count::lock(v27)) != 0)
    {
      if (*v17)
      {
        if (a8)
        {
          sub_8D290(v33, a1 + 118, "", 254);
          sub_128E80(a1 + 123);
        }
      }

      *v26 = 0;
      a1[124] = 0;
      a1[125] = 0;
      sub_1A8C0(v28);
    }

    else
    {
      *v26 = 0;
      a1[124] = 0;
      a1[125] = 0;
    }

    sub_129038(a1 + 126);
  }

  sub_107AA8(v32);
}

void sub_119220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  v25 = *(v23 - 80);
  if (v25)
  {
    sub_1A8C0(v25);
  }

  sub_1A8C0(v21);
  sub_65310(v20);
  if (*v22)
  {
    std::__shared_weak_count::__release_weak(*v22);
  }

  sub_140A24(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1192CC(int a1)
{
  v1 = 3;
  switch(a1)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 48:
    case 68:
    case 79:
    case 82:
      return 0;
    case 1:
    case 6:
    case 7:
    case 8:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
    case 30:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 47:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 69:
    case 70:
    case 71:
    case 72:
    case 76:
    case 89:
    case 90:
    case 91:
    case 94:
    case 95:
    case 98:
    case 102:
      return v1;
    case 9:
    case 10:
    case 26:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 46:
    case 73:
    case 74:
    case 75:
    case 77:
    case 78:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 92:
    case 93:
    case 96:
    case 97:
    case 100:
    case 101:
      return 1;
    case 17:
    case 18:
    case 38:
    case 39:
    case 99:
    case 103:
      return 2;
    case 80:
    case 81:
    case 104:
    case 105:
      if (_os_feature_enabled_impl())
      {
        return 3;
      }

      else
      {
        return 2;
      }

    default:
      if ((a1 - 177) > 0x16)
      {
        goto LABEL_12;
      }

      v2 = 1 << (a1 + 79);
      if ((v2 & 0x853D) != 0)
      {
        return 1;
      }

      if ((v2 & 0x5C0000) != 0)
      {
        return 0;
      }

      else
      {
LABEL_12:
        if (a1 == 10012)
        {
          return 1;
        }
      }

      return v1;
  }
}

uint64_t sub_119534(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        sub_1A8C0(v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void sub_119590(uint64_t *a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = *(a2 + 8);
    v5 = *(v4 + 8);
    if (v5 != v4)
    {
      v6 = 0;
      do
      {
        sub_5659C(&v17, (*(v5 + 24) + 16), "", 847);
        v7 = v17;
        if ((*(*v17 + 88))(v17, 1))
        {
          if (v6 == *(a2 + 16))
          {
            v14 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v14);
            }

            *a1 = v7;
            a1[1] = v14;
            return;
          }

          ++v6;
        }

        if (v18)
        {
          sub_1A8C0(v18);
        }

        v5 = *(v5 + 8);
      }

      while (v5 != *(a2 + 8));
    }

LABEL_22:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v8 = *(a2 + 8);
  v9 = *(v8 + 8);
  if (v9 == v8)
  {
    goto LABEL_22;
  }

  v10 = 0;
LABEL_13:
  sub_F31A0(&v17, v9 + 16);
  for (i = v18; ; i = i[1])
  {
    if (i == &v17)
    {
      sub_65310(&v17);
      v9 = *(v9 + 8);
      if (v9 == *(a2 + 8))
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    sub_5659C(&v15, i + 2, "", 825);
    v12 = v15;
    if ((*(*v15 + 88))(v15, 0))
    {
      break;
    }

LABEL_18:
    if (v16)
    {
      sub_1A8C0(v16);
    }
  }

  if (v10 != *(a2 + 16))
  {
    ++v10;
    goto LABEL_18;
  }

  v13 = v16;
  *a1 = v12;
  a1[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1A8C0(v13);
  }

  sub_65310(&v17);
}

void sub_119780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_1A8C0(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1197BC(_BYTE *a1, uint64_t a2)
{
  sub_63250(&v10);
  sub_22564(&v10, "mNumberStreams: ", 16);
  v4 = *(*(a2 + 16) + 8);
  v5 = std::ostream::operator<<();
  sub_22564(v5, "; ", 2);
  sub_22564(&v10, "mStreamIsOn: [", 14);
  v6 = *(a2 + 16);
  if (*(v6 + 8))
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 4 * v7 + 12);
      std::ostream::operator<<();
      ++v7;
      v6 = *(a2 + 16);
    }

    while (v7 < *(v6 + 8));
  }

  sub_22564(&v10, "]", 1);
  sub_22B30(a1, &v11);
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_119990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DDE94(va);
  _Unwind_Resume(a1);
}

void sub_1199A8(void *a1)
{
  if (a1)
  {
    sub_1199A8(*a1);
    sub_1199A8(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      sub_1A8C0(v2);
    }

    operator delete(a1);
  }
}

os_signpost_id_t *sub_119A00(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 96;
        v11 = 2080;
        v12 = "kAggregateCreation";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_AggregateCreation", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_119B90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

AudioDeviceIOProcID sub_119B9C(AudioObjectID a1, OSStatus (__cdecl *a2)(AudioObjectID, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  outIOProcID = 0;
  v3 = AudioDeviceCreateIOProcID(a1, a2, a3, &outIOProcID);
  if (v3)
  {
    v5 = *sub_5544(14);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "AggregateDeviceUtilities.cpp";
        v14 = 1024;
        v15 = 691;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: error creating IOProc ID", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v3;
  }

  result = outIOProcID;
  if (!outIOProcID)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "AggregateDeviceUtilities.cpp";
        v14 = 1024;
        v15 = 692;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [outIOProcID is NULL]: got a NULL IOProc ID", buf, 0x12u);
      }
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "got a NULL IOProc ID");
  }

  return result;
}

void *sub_119D7C(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_119E04();
  }

  return result;
}

uint64_t sub_119E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_12644C(a1, (a2 + 40), a2 + 64, a2 + 224, (a2 + 248), a2 + 264, a2 + 288, *a2);
  *v4 = off_6B89D0;
  v4[67] = *(a2 + 8);
  sub_119D7C(v4 + 68, a2 + 16);
  *(a1 + 568) = *(a2 + 136);
  *(a1 + 576) = 0u;
  *(a1 + 592) = a1 + 592;
  *(a1 + 600) = a1 + 592;
  *(a1 + 608) = 0;
  *(a1 + 616) = a1 + 616;
  *(a1 + 624) = a1 + 616;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 688) = 850045863;
  *(a1 + 756) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 737) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = sub_45168();
  return a1;
}

void sub_119F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *(v2 + 784);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  v7 = *(v2 + 768);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  std::mutex::~mutex((v2 + 688));
  sub_F5714(va);
  sub_F5714(va);
  sub_65310(v4);
  sub_65310(v3);
  sub_128368((v2 + 544));
  sub_13C180(v2);
  _Unwind_Resume(a1);
}

void sub_119FD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *buf = *(a2 + 164);
  v12 = *(a2 + 168);
  sub_119D7C(v13, a2 + 176);
  memset(v14, 0, 24);
  sub_F320C(v14, *a3, a3[1], (a3[1] - *a3) >> 4);
  v14[3] = *a2;
  v15 = *(a2 + 8);
  *v16 = *(a2 + 16);
  *&v16[13] = *(a2 + 29);
  sub_80534(v17, (a2 + 40));
  v17[32] = *(a2 + 72);
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a2 + 136) == 1)
  {
    v18 = *(a2 + 80);
    v6 = *(a2 + 104);
    v19 = *(a2 + 96);
    v7 = *(a2 + 112);
    v20 = v6;
    v21 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }

    v22 = *(a2 + 120);
    v8 = *(a2 + 128);
    if (v8)
    {
      CFRetain(*(a2 + 128));
    }

    v23 = v8;
    v24 = 1;
  }

  v25 = *(a2 + 144);
  v26 = *(a2 + 152);
  v27[0] = v27;
  v27[1] = v27;
  v10 = *(a2 + 208);
  v9 = *(a2 + 216);
  v27[2] = 0;
  v27[3] = v10;
  v27[4] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  sub_44E44(v28, a2 + 224);
  sub_80534(v29, (a2 + 248));
  sub_80534(v30, (a2 + 280));
  sub_119E64(a1, buf);
  sub_12828C(buf);
  *a1 = off_6D0468;
  *(a1 + 793) = *(a2 + 200);
  *(a1 + 800) = 0;
  *(a1 + 816) = 0;
  *(a1 + 808) = 0;
  *buf = 0;
  *(a1 + 824) = 0;
  *(a1 + 840) = 0;
  *(a1 + 832) = 0;
  sub_1C8194();
}

void sub_11A3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  __cxa_free_exception(v58);
  sub_5D988((v53 + 936));
  sub_5D988((v53 + 920));
  v60 = *v57;
  if (*v57)
  {
    *(v53 + 904) = v60;
    operator delete(v60);
  }

  v61 = *v56;
  if (*v56)
  {
    *(v53 + 880) = v61;
    operator delete(v61);
  }

  v62 = *v55;
  if (*v55)
  {
    *(v53 + 856) = v62;
    operator delete(v62);
  }

  v63 = *v54;
  if (*v54)
  {
    *(v53 + 832) = v63;
    operator delete(v63);
  }

  v64 = *(v53 + 800);
  if (v64)
  {
    *(v53 + 808) = v64;
    operator delete(v64);
  }

  sub_13A668(v53);
  _Unwind_Resume(a1);
}

uint64_t sub_11A51C(uint64_t a1, const std::string *a2)
{
  os_unfair_lock_lock(a1);
  std::string::operator=((a1 + 8), a2);
  os_unfair_lock_unlock(a1);
  return a1;
}

void sub_11A570(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 456))
  {
    operator new();
  }

  v3 = 0;
  if (*(a1 + 488) == 1)
  {
    operator new();
  }

  sub_37F6D8(&v3);
  sub_11A69C(a2);
}

void sub_11A674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_37F6D8(va);
  _Unwind_Resume(a1);
}

void sub_11A69C(uint64_t a1)
{
  v2 = sub_8703C();
  (*(*v2 + 344))(&v5);
  if (v6)
  {
    v6(a1, v7);
  }

  else
  {
    v3 = sub_5544(16);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "SystemSettingsManager_Aspen.cpp";
      v10 = 1024;
      v11 = 701;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot find valid serialization listener - abandoning command", buf, 0x12u);
    }

    if (a1)
    {
      (*(*a1 + 8))(a1);
    }
  }
}

uint64_t *sub_11A7D4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_11A8B8(unsigned int *a1)
{
  memset(&v17, 0, sizeof(v17));
  std::to_string(&v14, a1[2]);
  v2 = std::string::insert(&v14, 0, "[ id: ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v16 >= 0)
  {
    v5 = HIBYTE(v16);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(&v17, v4, v5);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v14, __str);
  v6 = std::string::insert(&v14, 0, "; addr: ", 8uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v16 >= 0)
  {
    v9 = HIBYTE(v16);
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(&v17, v8, v9);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_11AB44(&v14, (a1 + 22));
  v10 = std::string::insert(&v14, 0, "; core port: ", 0xDuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v16 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v16 >= 0)
  {
    v13 = HIBYTE(v16);
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(&v17, v12, v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  std::string::append(&v17, " ]", 2uLL);
  sub_11A51C((a1 + 6), &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_11AADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_11AB44(char *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  if (!*a2)
  {
    sub_1A8C0(v5);
LABEL_8:
    a1[23] = 7;
    strcpy(a1, "expired");
    return;
  }

  sub_23148(a1, (*a2 + 8));

  sub_1A8C0(v6);
}

void sub_11ABFC(uint64_t a1, void *a2, int a3)
{
  v168 = &v168;
  v169 = &v168;
  v170 = 0;
  v165 = &v165;
  v166 = &v165;
  v167 = 0;
  v162 = &v162;
  v163 = &v162;
  v164 = 0;
  sub_114C50(a1, 0x66637275u, a2);
  sub_114C50(a1, 0x6E637275u, a2);
  if (a3)
  {
    goto LABEL_286;
  }

  if (!atomic_load((a1 + 656)))
  {
    sub_11CEE8(a1, a2, &v168, &v165);
  }

  sub_47BD8(a1);
  v160 = a1;
  sub_11D910(&v192, a2);
  sub_257F28(&v190, *(a1 + 616), a1 + 608);
  sub_257F28(&v188, *(a1 + 640), a1 + 632);
  sub_257F28(&v186, v169, &v168);
  sub_257F28(&v184, v166, &v165);
  v161 = (a1 + 592);
  v7 = *(a1 + 592);
  if (!v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v8 = *(a1 + 592);
  while (1)
  {
    v9 = *(v8 + 8);
    if (v9 <= 0x66637275)
    {
      break;
    }

LABEL_8:
    v8 = *v8;
    if (!v8)
    {
      v10 = 0;
      goto LABEL_14;
    }
  }

  if (v9 != 1717793397)
  {
    ++v8;
    goto LABEL_8;
  }

  v10 = sub_257FA8(v7, 0x66637275u);
  v7 = *v161;
  if (!*v161)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_27;
  }

LABEL_14:
  v12 = v7;
  while (1)
  {
    v13 = *(v12 + 8);
    if (v13 <= 0x6E637275)
    {
      break;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      v11 = 0;
      goto LABEL_21;
    }
  }

  if (v13 != 1852011125)
  {
    ++v12;
    goto LABEL_18;
  }

  v11 = sub_257FA8(v7, 0x6E637275u);
  v7 = *v161;
LABEL_21:
  if (!v7)
  {
    goto LABEL_27;
  }

  v14 = v7;
  while (2)
  {
    v15 = *(v14 + 8);
    if (v15 > 0x70707570)
    {
LABEL_26:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  if (v15 != 1886418288)
  {
    ++v14;
    goto LABEL_26;
  }

  v138 = v193[0];
  if (!v193[0])
  {
    goto LABEL_27;
  }

  while (2)
  {
    v139 = *(v138 + 8);
    if (v139 > 0x70707570)
    {
LABEL_291:
      v138 = *v138;
      if (!v138)
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  if (v139 != 1886418288)
  {
    ++v138;
    goto LABEL_291;
  }

  v140 = sub_257FA8(v7, 0x70707570u)[1];
  v141 = sub_257FA8(*v161, 0x70707570u);
  sub_257F28(&v194, v140, v141);
  v142 = sub_257FA8(v193[0], 0x70707570u)[1];
  v143 = sub_257FA8(v193[0], 0x70707570u);
  sub_257F28(&v181, v142, v143);
  *&v180.__r_.__value_.__r.__words[1] = 0uLL;
  v180.__r_.__value_.__r.__words[0] = &v180.__r_.__value_.__l.__size_;
  sub_257FF4(buf, v194, &v195, v181, &v182, &v180, &v180.__r_.__value_.__l.__size_);
  v144 = v180.__r_.__value_.__r.__words[0];
  if (v180.__r_.__value_.__l.__data_ != &v180.__r_.__value_.__r.__words[1])
  {
    do
    {
      v145 = sub_257FA8(*v161, 0x70707570u);
      sub_24D780(v145, &v144[1].__words[1]);
      v146 = v144->__words[1];
      if (v146)
      {
        do
        {
          v147 = v146;
          v146 = v146->__r_.__value_.__r.__words[0];
        }

        while (v146);
      }

      else
      {
        do
        {
          v147 = v144->__words[2];
          v27 = v147->__r_.__value_.__r.__words[0] == v144;
          v144 = v147;
        }

        while (!v27);
      }

      v144 = v147;
    }

    while (v147 != &v180.__r_.__value_.__r.__words[1]);
  }

  sub_4B0F4(v180.__r_.__value_.__l.__size_);
  sub_4B0F4(v182);
  sub_4B0F4(v195);
LABEL_27:
  if (!(v170 | v167))
  {
    goto LABEL_140;
  }

  v182 = 0;
  v183 = 0;
  v181 = &v182;
  sub_257FF4(buf, v190, v191, v186, v187, &v181, &v182);
  sub_257FF4(buf, v188, v189, v184, v185, &v181, v181);
  if (v183)
  {
    v16 = sub_5544(9);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v181;
      memset(&v180, 0, sizeof(v180));
      std::string::append(&v180, "{ ", 2uLL);
      if (v18 != &v182)
      {
        while (1)
        {
          sub_11AB44(&v194, (v18 + 4));
          if (v196 >= 0)
          {
            v19 = &v194;
          }

          else
          {
            v19 = v194;
          }

          if (v196 >= 0)
          {
            v20 = HIBYTE(v196);
          }

          else
          {
            v20 = v195;
          }

          std::string::append(&v180, v19, v20);
          if (SHIBYTE(v196) < 0)
          {
            operator delete(v194);
          }

          v21 = v18[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v18[2];
              v27 = *v22 == v18;
              v18 = v22;
            }

            while (!v27);
          }

          if (v22 == &v182)
          {
            break;
          }

          std::string::append(&v180, ", ", 2uLL);
          v18 = v22;
        }
      }

      std::string::append(&v180, " }", 2uLL);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v180;
      }

      else
      {
        v23 = v180.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1015;
      v198 = 2080;
      v199 = v23;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d The following ports are being redundantly connected or disconnected. Ignoring prior connections/disconnections. %s", buf, 0x1Cu);
      if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v180.__r_.__value_.__l.__data_);
      }
    }

    v24 = 0;
    *buf = v10;
    *&buf[8] = v11;
    do
    {
      v25 = *&buf[v24];
      v26 = v181;
      if (v25)
      {
        v27 = v181 == &v182;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        do
        {
          sub_24D780(v25, v26 + 4);
          v28 = v26[1];
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
              v29 = v26[2];
              v27 = *v29 == v26;
              v26 = v29;
            }

            while (!v27);
          }

          v26 = v29;
        }

        while (v29 != &v182);
      }

      v24 += 8;
    }

    while (v24 != 16);
  }

  sub_4B0F4(v182);
  if (v167)
  {
    v195 = 0;
    v196 = 0;
    v194 = &v195;
    sub_257FF4(buf, v190, v191, v184, v185, &v194, &v195);
    v30 = v194;
    if (v194 != &v195)
    {
      do
      {
        sub_24D780((a1 + 608), v30 + 4);
        sub_24D780(&v165, v30 + 4);
        v31 = *(v30 + 1);
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v32 = *(v30 + 2);
            v27 = *v32 == v30;
            v30 = v32;
          }

          while (!v27);
        }

        v30 = v32;
      }

      while (v32 != &v195);
    }

    v33 = 0;
    *buf = v10;
    *&buf[8] = v11;
    do
    {
      v34 = *&buf[v33];
      v35 = v194;
      if (v34)
      {
        v36 = v194 == &v195;
      }

      else
      {
        v36 = 1;
      }

      if (!v36)
      {
        do
        {
          sub_24D780(v34, v35 + 4);
          v37 = *(v35 + 1);
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = *(v35 + 2);
              v27 = *v38 == v35;
              v35 = v38;
            }

            while (!v27);
          }

          v35 = v38;
        }

        while (v38 != &v195);
      }

      v33 += 8;
    }

    while (v33 != 16);
    v39 = 0;
    *buf = 0x6E63727566637275;
    while (1)
    {
      if (!v193[0])
      {
        goto LABEL_100;
      }

      v40 = *&buf[v39];
      v41 = v193[0];
      while (1)
      {
        v42 = *(v41 + 8);
        if (v40 >= v42)
        {
          break;
        }

LABEL_90:
        v41 = *v41;
        if (!v41)
        {
          goto LABEL_100;
        }
      }

      if (v42 < v40)
      {
        break;
      }

      v43 = sub_257FA8(v193[0], v40);
      v44 = v194;
      if (v194 != &v195)
      {
        v45 = v43;
        do
        {
          sub_24D780(v45, v44 + 4);
          v46 = *(v44 + 1);
          if (v46)
          {
            do
            {
              v47 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = *(v44 + 2);
              v27 = *v47 == v44;
              v44 = v47;
            }

            while (!v27);
          }

          v44 = v47;
        }

        while (v47 != &v195);
      }

LABEL_100:
      v39 += 4;
      if (v39 == 8)
      {
        sub_4B0F4(v195);
        goto LABEL_102;
      }
    }

    ++v41;
    goto LABEL_90;
  }

LABEL_102:
  if (!v170)
  {
    goto LABEL_140;
  }

  v195 = 0;
  v196 = 0;
  v194 = &v195;
  sub_257FF4(buf, v188, v189, v186, v187, &v194, &v195);
  v48 = v194;
  if (v194 != &v195)
  {
    do
    {
      sub_24D780((a1 + 632), v48 + 4);
      sub_24D780(&v168, v48 + 4);
      v49 = *(v48 + 1);
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = *(v48 + 2);
          v27 = *v50 == v48;
          v48 = v50;
        }

        while (!v27);
      }

      v48 = v50;
    }

    while (v50 != &v195);
  }

  v51 = 0;
  *buf = v10;
  *&buf[8] = v11;
  do
  {
    v52 = *&buf[v51];
    v53 = v194;
    if (v52)
    {
      v54 = v194 == &v195;
    }

    else
    {
      v54 = 1;
    }

    if (!v54)
    {
      do
      {
        sub_24D780(v52, v53 + 4);
        v55 = *(v53 + 1);
        if (v55)
        {
          do
          {
            v56 = v55;
            v55 = *v55;
          }

          while (v55);
        }

        else
        {
          do
          {
            v56 = *(v53 + 2);
            v27 = *v56 == v53;
            v53 = v56;
          }

          while (!v27);
        }

        v53 = v56;
      }

      while (v56 != &v195);
    }

    v51 += 8;
  }

  while (v51 != 16);
  v57 = 0;
  *buf = 0x6E63727566637275;
  do
  {
    if (!v193[0])
    {
      goto LABEL_138;
    }

    v58 = *&buf[v57];
    v59 = v193[0];
    while (1)
    {
      v60 = *(v59 + 8);
      if (v58 >= v60)
      {
        break;
      }

LABEL_128:
      v59 = *v59;
      if (!v59)
      {
        goto LABEL_138;
      }
    }

    if (v60 < v58)
    {
      ++v59;
      goto LABEL_128;
    }

    v61 = sub_257FA8(v193[0], v58);
    v62 = v194;
    if (v194 != &v195)
    {
      v63 = v61;
      do
      {
        sub_24D780(v63, v62 + 4);
        v64 = *(v62 + 1);
        if (v64)
        {
          do
          {
            v65 = v64;
            v64 = *v64;
          }

          while (v64);
        }

        else
        {
          do
          {
            v65 = *(v62 + 2);
            v27 = *v65 == v62;
            v62 = v65;
          }

          while (!v27);
        }

        v62 = v65;
      }

      while (v65 != &v195);
    }

LABEL_138:
    v57 += 4;
  }

  while (v57 != 8);
  sub_4B0F4(v195);
LABEL_140:
  if (v164)
  {
    v66 = 0;
    *buf = v10;
    *&buf[8] = v11;
    do
    {
      v67 = *&buf[v66];
      v68 = v163;
      if (v67 && v163 != &v162)
      {
        do
        {
          sub_24D780(v67, v68 + 2);
          v68 = v68[1];
        }

        while (v68 != &v162);
      }

      v66 += 8;
    }

    while (v66 != 16);
  }

  v69 = (a1 + 584);
  v70 = v192;
  if (v192 != v193)
  {
    do
    {
      v71 = *v161;
      if (!*v161)
      {
LABEL_154:
        sub_11D890();
      }

      v72 = *(v70 + 8);
      while (1)
      {
        while (1)
        {
          v73 = v71;
          v74 = *(v71 + 8);
          if (v72 >= v74)
          {
            break;
          }

          v71 = *v73;
          if (!*v73)
          {
            goto LABEL_154;
          }
        }

        if (v74 >= v72)
        {
          break;
        }

        v71 = v73[1];
        if (!v71)
        {
          goto LABEL_154;
        }
      }

      if (v70[6] != (v70 + 5))
      {
        operator new();
      }

      v75 = v70[1];
      if (v75)
      {
        do
        {
          v76 = v75;
          v75 = *v75;
        }

        while (v75);
      }

      else
      {
        do
        {
          v76 = v70[2];
          v27 = *v76 == v70;
          v70 = v76;
        }

        while (!v27);
      }

      v70 = v76;
    }

    while (v76 != v193);
  }

  sub_11D910(&v194, v69);
  v77 = v194;
  v78 = a1;
  if (v194 != &v195)
  {
    do
    {
      if (!*(v77 + 7))
      {
        v81 = *v161;
        if (*v161)
        {
          v82 = *(v77 + 8);
          v83 = (a1 + 592);
          v84 = *v161;
          do
          {
            v85 = *(v84 + 8);
            v86 = v85 >= v82;
            v87 = v85 < v82;
            if (v86)
            {
              v83 = v84;
            }

            v84 = v84[v87];
          }

          while (v84);
          if (v83 != v161 && v82 >= *(v83 + 8))
          {
            v88 = v83[1];
            v89 = v83;
            if (v88)
            {
              do
              {
                v90 = v88;
                v88 = *v88;
              }

              while (v88);
            }

            else
            {
              do
              {
                v90 = v89[2];
                v27 = *v90 == v89;
                v89 = v90;
              }

              while (!v27);
            }

            if (*v69 == v83)
            {
              *v69 = v90;
            }

            --*(a1 + 600);
            sub_75234(v81, v83);
            sub_65310(v83 + 5);
            operator delete(v83);
          }
        }
      }

      v79 = *(v77 + 1);
      if (v79)
      {
        do
        {
          v80 = v79;
          v79 = *v79;
        }

        while (v79);
      }

      else
      {
        do
        {
          v80 = *(v77 + 2);
          v27 = *v80 == v77;
          v77 = v80;
        }

        while (!v27);
      }

      v77 = v80;
    }

    while (v80 != &v195);
  }

  sub_257280(a1 + 608, a1 + 608, v169, &v168);
  sub_257280(a1 + 632, a1 + 632, v166, &v165);
  v91 = sub_8703C();
  if (!(*(*v91 + 264))(v91))
  {
    goto LABEL_285;
  }

  v92 = *v161;
  if (!*v161)
  {
    v95 = 0;
    goto LABEL_205;
  }

  v93 = *v161;
  do
  {
    v94 = *(v93 + 8);
    if (v94 > 0x66637275)
    {
      goto LABEL_195;
    }

    if (v94 == 1717793397)
    {
      v95 = sub_257FA8(v92, 0x66637275u);
      v92 = *v161;
      if (*v161)
      {
        goto LABEL_200;
      }

LABEL_205:
      v98 = 0;
      goto LABEL_206;
    }

    ++v93;
LABEL_195:
    v93 = *v93;
  }

  while (v93);
  v95 = 0;
  if (!v92)
  {
    goto LABEL_205;
  }

LABEL_200:
  v96 = v92;
  while (2)
  {
    v97 = *(v96 + 8);
    if (v97 > 0x6E637275)
    {
LABEL_204:
      v96 = *v96;
      if (!v96)
      {
        goto LABEL_205;
      }

      continue;
    }

    break;
  }

  if (v97 != 1852011125)
  {
    ++v96;
    goto LABEL_204;
  }

  v98 = sub_257FA8(v92, 0x6E637275u);
LABEL_206:
  sub_2580CC(&v181, *(a1 + 616), a1 + 608);
  sub_2580CC(&v180, *(a1 + 640), a1 + 632);
  v99 = &v177;
  v178 = 0;
  v179 = 0;
  v177 = &v178;
  v100 = v181;
  v101 = v180.__r_.__value_.__r.__words[0];
  v175 = &v177;
  v176[0] = &v178;
  if (v181 != &v182)
  {
    while (2)
    {
      if (v101 == &v180.__r_.__value_.__r.__words[1])
      {
        sub_258148(buf, v100, &v182, v175, v176[0]);
        goto LABEL_253;
      }

      v102 = v101[1].__r_.__value_.__r.__words[2];
      if (v102)
      {
        v103 = std::__shared_weak_count::lock(v102);
        size = v101[1].__r_.__value_.__l.__size_;
        if (v103)
        {
          v105 = v101[1].__r_.__value_.__l.__size_;
        }

        else
        {
          v105 = 0;
        }
      }

      else
      {
        v105 = 0;
        v103 = 0;
      }

      v106 = v100[5];
      if (v106 && (v107 = std::__shared_weak_count::lock(v106)) != 0)
      {
        v108 = v100[4];
        sub_1A8C0(v107);
        if (!v103)
        {
LABEL_219:
          if (v105 < v108)
          {
            sub_2581DC(&v175, &v101[1].__r_.__value_.__l.__size_);
            v109 = v101->__r_.__value_.__l.__size_;
            if (v109)
            {
              do
              {
                v101 = v109;
                v109 = v109->__r_.__value_.__r.__words[0];
              }

              while (v109);
            }

            else
            {
              do
              {
                v110 = v101;
                v101 = v101->__r_.__value_.__r.__words[2];
              }

              while (v101->__r_.__value_.__l.__data_ != v110);
            }

            goto LABEL_248;
          }

          v111 = v100[5];
          if (v111)
          {
            v112 = std::__shared_weak_count::lock(v111);
            v113 = v100[4];
            if (v112)
            {
              v114 = v100[4];
            }

            else
            {
              v114 = 0;
            }
          }

          else
          {
            v114 = 0;
            v112 = 0;
          }

          v115 = v101[1].__r_.__value_.__r.__words[2];
          if (v115 && (v116 = std::__shared_weak_count::lock(v115)) != 0)
          {
            v117 = v101[1].__r_.__value_.__l.__size_;
            sub_1A8C0(v116);
            if (!v112)
            {
              goto LABEL_236;
            }

LABEL_235:
            sub_1A8C0(v112);
          }

          else
          {
            v117 = 0;
            if (v112)
            {
              goto LABEL_235;
            }
          }

LABEL_236:
          if (v114 >= v117)
          {
            v119 = v101->__r_.__value_.__l.__size_;
            if (v119)
            {
              do
              {
                v118 = v119;
                v119 = v119->__r_.__value_.__r.__words[0];
              }

              while (v119);
            }

            else
            {
              do
              {
                v118 = v101->__r_.__value_.__r.__words[2];
                v27 = v118->__r_.__value_.__r.__words[0] == v101;
                v101 = v118;
              }

              while (!v27);
            }
          }

          else
          {
            v118 = v101;
          }

          sub_2581DC(&v175, v100 + 4);
          v120 = v100[1];
          if (v120)
          {
            do
            {
              v100 = v120;
              v120 = *v120;
            }

            while (v120);
          }

          else
          {
            do
            {
              v121 = v100;
              v100 = v100[2];
            }

            while (*v100 != v121);
          }

          v101 = v118;
LABEL_248:
          if (v100 == &v182)
          {
            v99 = v175;
            v122 = v176[0];
            goto LABEL_251;
          }

          continue;
        }
      }

      else
      {
        v108 = 0;
        if (!v103)
        {
          goto LABEL_219;
        }
      }

      break;
    }

    sub_1A8C0(v103);
    goto LABEL_219;
  }

  v122 = &v178;
LABEL_251:
  sub_258148(buf, v101, &v180.__r_.__value_.__l.__size_, v99, v122);
LABEL_253:
  v123 = 0;
  v176[0] = 0;
  v176[1] = 0;
  v175 = v176;
  *buf = v95;
  *&buf[8] = v98;
  do
  {
    v124 = *&buf[v123];
    if (v124 && *(v124 + 8) != v124)
    {
      sub_85034();
    }

    v123 += 8;
  }

  while (v123 != 16);
  if (v179 != v180.__r_.__value_.__r.__words[2] + v183)
  {
    v154 = sub_5544(14);
    v155 = *v154;
    if (*v154)
    {
      if (os_log_type_enabled(*v154, OS_LOG_TYPE_ERROR))
      {
        sub_2560B8(&v174, *(v160 + 616), v160 + 608);
        v156 = SHIBYTE(v174.__r_.__value_.__r.__words[2]);
        v157 = v174.__r_.__value_.__r.__words[0];
        sub_2560B8(&v173, *(v160 + 640), v160 + 632);
        v158 = &v174;
        if (v156 < 0)
        {
          v158 = v157;
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v159 = &v173;
        }

        else
        {
          v159 = v173.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1197;
        v198 = 2080;
        v199 = v158;
        v200 = 2080;
        v201 = v159;
        _os_log_impl(&dword_0, v155, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Batch notification corruption: overlap between port connectins and disconnections. Connection list: %s; Disconnection list: %s", buf, 0x26u);
        if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v173.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v174.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v125 = v177;
  if (v177 != &v178)
  {
    v126 = v175;
    while (1)
    {
      v127 = v125[5];
      if (v127)
      {
        v128 = std::__shared_weak_count::lock(v127);
        v129 = v125[4];
        v130 = v128 ? v125[4] : 0;
      }

      else
      {
        v130 = 0;
        v128 = 0;
      }

      v131 = v126[5];
      if (!v131)
      {
        break;
      }

      v132 = std::__shared_weak_count::lock(v131);
      if (!v132)
      {
        break;
      }

      v133 = v130 == v126[4];
      sub_1A8C0(v132);
      if (v128)
      {
        goto LABEL_271;
      }

LABEL_272:
      if (!v133)
      {
        v148 = sub_5544(14);
        v149 = *v148;
        if (*v148 && os_log_type_enabled(*v148, OS_LOG_TYPE_ERROR))
        {
          sub_2560B8(&v174, *(v160 + 616), v160 + 608);
          if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v150 = &v174;
          }

          else
          {
            v150 = v174.__r_.__value_.__r.__words[0];
          }

          v151 = &v173;
          sub_2560B8(&v173, *(v160 + 640), v160 + 632);
          if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v151 = v173.__r_.__value_.__r.__words[0];
          }

          if (v95)
          {
            v152 = &v172;
            sub_2560B8(&v172, v95[1], v95);
            if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v152 = v172.__r_.__value_.__r.__words[0];
            }
          }

          else
          {
            v152 = "NULL";
          }

          if (v98)
          {
            sub_2560B8(&__p, v98[1], v98);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136316418;
            *&buf[4] = "PortManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1207;
            v198 = 2080;
            v199 = v150;
            v200 = 2080;
            v201 = v151;
            v202 = 2080;
            v203 = v152;
            v204 = 2080;
            v205 = p_p;
            _os_log_impl(&dword_0, v149, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Batch notification corruption: connection/disconnection list contents do not match cached PortUpdateMap. Connection list: %s; Disconnection list: %s; Cacheable update list: %s; NonCacheable update list: %s", buf, 0x3Au);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *buf = 136316418;
            *&buf[4] = "PortManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1207;
            v198 = 2080;
            v199 = v150;
            v200 = 2080;
            v201 = v151;
            v202 = 2080;
            v203 = v152;
            v204 = 2080;
            v205 = "NULL";
            _os_log_impl(&dword_0, v149, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Batch notification corruption: connection/disconnection list contents do not match cached PortUpdateMap. Connection list: %s; Disconnection list: %s; Cacheable update list: %s; NonCacheable update list: %s", buf, 0x3Au);
          }

          if (v95 && SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v172.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v173.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v174.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_284;
      }

      v134 = v125[1];
      v135 = v125;
      if (v134)
      {
        do
        {
          v125 = v134;
          v134 = *v134;
        }

        while (v134);
      }

      else
      {
        do
        {
          v125 = v135[2];
          v27 = *v125 == v135;
          v135 = v125;
        }

        while (!v27);
      }

      v136 = v126[1];
      if (v136)
      {
        do
        {
          v137 = v136;
          v136 = *v136;
        }

        while (v136);
      }

      else
      {
        do
        {
          v137 = v126[2];
          v27 = *v137 == v126;
          v126 = v137;
        }

        while (!v27);
      }

      v126 = v137;
      if (v125 == &v178)
      {
        goto LABEL_284;
      }
    }

    v133 = v130 == 0;
    if (!v128)
    {
      goto LABEL_272;
    }

LABEL_271:
    sub_1A8C0(v128);
    goto LABEL_272;
  }

LABEL_284:
  sub_4B0F4(v176[0]);
  sub_4B0F4(v178);
  sub_4B0F4(v180.__r_.__value_.__l.__size_);
  sub_4B0F4(v182);
  v78 = v160;
LABEL_285:
  sub_D169C(v195);
  sub_4B0F4(v185[0]);
  sub_4B0F4(v187[0]);
  sub_4B0F4(v189[0]);
  sub_4B0F4(v191[0]);
  sub_D169C(v193[0]);
  sub_47C90(v78);
LABEL_286:
  sub_65310(&v162);
  sub_65310(&v165);
  sub_65310(&v168);
}

void sub_11C044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_4B0F4(a37);
  sub_4B0F4(a40);
  sub_4B0F4(a43);
  sub_4B0F4(a46);
  sub_D169C(*(v55 - 192));
  sub_4B0F4(a49);
  sub_4B0F4(a52);
  sub_4B0F4(a55);
  sub_4B0F4(*(v55 - 240));
  sub_D169C(*(v55 - 216));
  sub_47C90(a9);
  sub_65310(&a12);
  sub_65310(&a15);
  sub_65310(&a18);
  _Unwind_Resume(a1);
}

void sub_11C288(void *a1, uint64_t **a2)
{
  v2 = a1[9];
  if (!*&v2)
  {
    goto LABEL_17;
  }

  v5 = (*a2)[2];
  v6 = *(v5 + 144);
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = *(v5 + 144);
    if (*&v2 <= v6)
    {
      v8 = v6 % v2.i32[0];
    }
  }

  else
  {
    v8 = (v2.i32[0] - 1) & v6;
  }

  v9 = *(a1[8] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    sub_DE7DC("unordered_map::at: key not found");
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v2)
      {
        v11 %= *&v2;
      }
    }

    else
    {
      v11 &= *&v2 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 4) != v6)
  {
    goto LABEL_16;
  }

  v12 = v10 + 3;
  for (i = v10[4]; ; i = i[1])
  {
    if (i == v12)
    {
      goto LABEL_53;
    }

    if (i[2] == v5)
    {
      break;
    }
  }

  if (v12 == i)
  {
LABEL_53:
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      v32 = (*a2)[2];
      v34 = 136315650;
      v35 = "PortManager.cpp";
      v36 = 1024;
      v37 = 293;
      v38 = 2048;
      v39 = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not find port at %p in port type to port iter map", &v34, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find port at %p in port type to port iter map");
  }

  v15 = *i;
  v14 = i[1];
  *(v15 + 8) = v14;
  *v14 = v15;
  --v10[5];
  operator delete(i);
  v16 = *a2;
  v17 = sub_4740(a1 + 3, v16[2]);
  if (v17)
  {
    v18 = a1[4];
    v19 = v17[1];
    v20 = vcnt_s8(v18);
    v20.i16[0] = vaddlv_u8(v20);
    if (v20.u32[0] > 1uLL)
    {
      if (v19 >= *&v18)
      {
        v19 %= *&v18;
      }
    }

    else
    {
      v19 &= *&v18 - 1;
    }

    v21 = a1[3];
    v22 = *(v21 + 8 * v19);
    do
    {
      v23 = v22;
      v22 = *v22;
    }

    while (v22 != v17);
    if (v23 == a1 + 5)
    {
      goto LABEL_40;
    }

    v24 = v23[1];
    if (v20.u32[0] > 1uLL)
    {
      if (v24 >= *&v18)
      {
        v24 %= *&v18;
      }
    }

    else
    {
      v24 &= *&v18 - 1;
    }

    if (v24 != v19)
    {
LABEL_40:
      if (!*v17)
      {
        goto LABEL_41;
      }

      v25 = *(*v17 + 8);
      if (v20.u32[0] > 1uLL)
      {
        if (v25 >= *&v18)
        {
          v25 %= *&v18;
        }
      }

      else
      {
        v25 &= *&v18 - 1;
      }

      if (v25 != v19)
      {
LABEL_41:
        *(v21 + 8 * v19) = 0;
      }
    }

    v26 = *v17;
    if (*v17)
    {
      v27 = *(v26 + 8);
      if (v20.u32[0] > 1uLL)
      {
        if (v27 >= *&v18)
        {
          v27 %= *&v18;
        }
      }

      else
      {
        v27 &= *&v18 - 1;
      }

      if (v27 != v19)
      {
        *(a1[3] + 8 * v27) = v23;
        v26 = *v17;
      }
    }

    *v23 = v26;
    *v17 = 0;
    --a1[6];
    operator delete(v17);
  }

  v29 = *v16;
  v28 = v16[1];
  *(v29 + 8) = v28;
  *v28 = v29;
  --a1[2];

  operator delete(v16);
}

void sub_11C624(uint64_t a1, os_unfair_lock_s *a2)
{
  if (sub_115164(a1, a2) == a1)
  {
    if (!sub_84A28((a1 + 24), a2))
    {
      operator new();
    }

    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        buf_4 = "FastLookupList.h";
        v15 = 1024;
        v16 = 101;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = sub_5544(14);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    sub_23148(__p, a2 + 2);
    v6 = v12 >= 0 ? __p : __p[0];
    buf = 136315650;
    buf_4 = "PortManager.cpp";
    v15 = 1024;
    v16 = 279;
    v17 = 2080;
    v18 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Port %s is already in the container", &buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v7, "Port %s is already in the container");
}

void sub_11CEE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = sub_8703C();
  if ((*(*v8 + 336))(v8))
  {
    _os_feature_enabled_impl();
    sub_8703C();
    operator new();
  }

  sub_255810(&v15, a1);
  v9 = sub_5544(9);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
  {
    sub_11DCE8(&__p, a2);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    buf[0] = 136315650;
    *&buf[1] = "PortManager.cpp";
    v18 = 1024;
    v19 = 834;
    v20 = 2080;
    v21 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d synchronously updating Ports: %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (!a2[2])
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "PortManager.cpp";
        v18 = 1024;
        v19 = 835;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: called with empty port update map.", buf, 0x12u);
      }
    }
  }

  sub_1833B4(a1, a3);
  sub_1826A8(a1, a2, a3, a4);
  for (i = a3[1]; i != a3; i = i[1])
  {
    sub_2558E0(a1, i + 2);
  }

  sub_8703C();
  operator new();
}

void sub_11D5F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_65310((v19 + 72));
  sub_65310((v19 + 48));
  sub_D169C(*(v19 + 32));
  operator delete();
}

void *sub_11D6C8(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 8) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 32);
        if (v15 <= a3)
        {
          break;
        }

        v13 = *v14;
        v3 = v14;
        if (!*v14)
        {
          goto LABEL_38;
        }
      }

      if (v15 >= a3)
      {
        break;
      }

      v3 = v14 + 1;
      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v8 = v3;
    goto LABEL_19;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 8) <= a3)
  {
    v17 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = *(v17 + 32);
        if (v19 <= a3)
        {
          break;
        }

        v17 = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_40;
      }

      v3 = v18 + 1;
      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v8)
  {
LABEL_38:
    sub_11D890();
  }

  return result;
}

void *sub_11D910(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_11D6C8(a1, v3, *(v5 + 8));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t sub_11D9BC(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1684370275)
  {
    if (mSelector == 1651664739)
    {
      return 1;
    }

    if (mSelector != 1684365924)
    {
      goto LABEL_12;
    }

LABEL_11:
    mScope = a2->mScope;
    LODWORD(v11) = 1634689389;
    HIDWORD(v11) = mScope;
    LODWORD(v12) = 0;
    return (*(*a1 + 24))(a1, &v11);
  }

  if (mSelector == 1684370276)
  {
    goto LABEL_11;
  }

  if (mSelector == 1885631346)
  {
    sub_4BCD68(&v11);
    v3 = v12;
    if (!v12)
    {
      return 0;
    }

    v4 = std::__shared_weak_count::lock(v12);
    if (v4)
    {
      v5 = v4;
      v6 = v11;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v3);
      sub_1A8C0(v5);
      v7 = std::__shared_weak_count::lock(v5);
      if (v7)
      {
        v8 = v6 != 0;
        sub_1A8C0(v7);
      }

      else
      {
        v8 = 0;
      }

      v3 = v5;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_weak(v3);
    return v8;
  }

LABEL_12:

  return sub_BE734(a1, a2);
}

void sub_11DB30(uint64_t *a1, uint64_t *a2)
{
  sub_65310(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

_BYTE **sub_11DB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 456))
  {
    operator new();
  }

  v3 = 0;
  *a2 = *(a1 + 432);
  *(a2 + 16) = *(a1 + 448);
  return sub_37F6D8(&v3);
}

void sub_11DC68(char *a1)
{
  if (a1)
  {
    sub_11DC68(*a1);
    sub_11DC68(*(a1 + 1));
    v2 = *(a1 + 18);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    if (a1[135] < 0)
    {
      operator delete(*(a1 + 14));
    }

    sub_477A0(*(a1 + 11));
    v3 = *(a1 + 4);
    if (v3)
    {
      *(a1 + 5) = v3;
      operator delete(v3);
    }

    operator delete(a1);
  }
}

std::string *sub_11DCE8(std::string *a1, void *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    while (1)
    {
      std::string::append(a1, "'", 1uLL);
      sub_22170(&__p, *(v5 + 8));
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

      std::string::append(a1, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a1, "': ", 3uLL);
      sub_8E920(&__p, (v5 + 5), 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, v9, v10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = v5[1];
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
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      if (v12 == v4)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      v5 = v12;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_11DE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DEAC(void *a1, char **a2, void *a3)
{
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v52 = sub_5544(14);
    v53 = *v52;
    if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6212;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_B0484(&v60, a3);
  v5 = v61;
  if (v61 == &v60)
  {
    goto LABEL_106;
  }

  v56 = a2 + 66;
  do
  {
    if (sub_108CA8(*(v5[2] + 144)))
    {
      goto LABEL_93;
    }

    v6 = (*(*v5[2] + 152))(v5[2]);
    v7 = (*(*v5[2] + 160))(v5[2]);
    if (!(v6 & 1 | ((v7 & 1) == 0)))
    {
      v8 = sub_5544(8);
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          sub_23148(__p, (v5[2] + 8));
          v10 = __p;
          if (v59 < 0)
          {
            v10 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 6231;
          v63 = 2080;
          v64[0] = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Inconsistent state - Port is routable but not connected : %s", buf, 0x1Cu);
          if (v59 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    v11 = sub_5544(8);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      sub_23148(__p, (v5[2] + 8));
      v13 = __p;
      if (v59 < 0)
      {
        v13 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6233;
      v63 = 2080;
      v64[0] = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port update: %s.", buf, 0x1Cu);
      if (v59 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v14 = v6 & v7;
    if ((v6 & v7 & 1) == 0)
    {
      v15 = v5[2];
      v16 = v5[3];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    if ((*(v5[2] + 184) & 2) == 0)
    {
      goto LABEL_93;
    }

    v17 = a2[66];
    v18 = a2[67];
    if (v17 == v18)
    {
      goto LABEL_50;
    }

    do
    {
      v19 = *(v17 + 1);
      if (v19)
      {
        v20 = std::__shared_weak_count::lock(v19);
        v21 = v20;
        if (v20)
        {
          v22 = *v17;
          atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v20);
          goto LABEL_29;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = 0;
LABEL_29:
      v23 = v5[2];
      v24 = v5[3];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v21)
      {
        v25 = std::__shared_weak_count::lock(v21);
        if (!v25)
        {
          v22 = 0;
        }

        if (!v24)
        {
LABEL_40:
          v27 = v22 == 0;
          if (!v25)
          {
            goto LABEL_42;
          }

LABEL_41:
          sub_1A8C0(v25);
          goto LABEL_42;
        }
      }

      else
      {
        v22 = 0;
        v25 = 0;
        if (!v24)
        {
          goto LABEL_40;
        }
      }

      v26 = std::__shared_weak_count::lock(v24);
      if (!v26)
      {
        goto LABEL_40;
      }

      v27 = v22 == v23;
      sub_1A8C0(v26);
      if (v25)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (v27)
      {
        goto LABEL_49;
      }

      v17 += 16;
    }

    while (v17 != v18);
    v17 = v18;
LABEL_49:
    v18 = a2[67];
LABEL_50:
    if (v17 != v18)
    {
      v28 = sub_5544(8);
      if (*(v28 + 8))
      {
        v29 = *v28;
        if (*v28)
        {
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
          {
            sub_23148(__p, (v5[2] + 8));
            v30 = __p;
            if (v59 < 0)
            {
              v30 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6247;
            v63 = 2080;
            v64[0] = v30;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found and removed port from mCachedPortStack: %s", buf, 0x1Cu);
            if (v59 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v31 = a2[67];
      if (v17 + 16 == v31)
      {
        v18 = v17;
      }

      else
      {
        do
        {
          v32 = *(v17 + 1);
          *(v17 + 2) = 0;
          *(v17 + 3) = 0;
          v33 = *(v17 + 1);
          *v17 = v32;
          if (v33)
          {
            std::__shared_weak_count::__release_weak(v33);
          }

          v18 = v17 + 16;
          v34 = v17 + 32;
          v17 += 16;
        }

        while (v34 != v31);
        v31 = a2[67];
      }

      while (v31 != v18)
      {
        v35 = *(v31 - 1);
        if (v35)
        {
          std::__shared_weak_count::__release_weak(v35);
        }

        v31 -= 16;
      }

      a2[67] = v18;
    }

    if (v14)
    {
      v36 = *(*a2 + 16);
      if (!v36)
      {
        goto LABEL_78;
      }

      v37 = *(v5[2] + 144);
      v38 = (*a2 + 128);
      do
      {
        v39 = *(v36 + 28);
        v40 = v39 >= v37;
        v41 = v39 < v37;
        if (v40)
        {
          v38 = v36;
        }

        v36 = *(v36 + 8 * v41);
      }

      while (v36);
      if (v38 != *a2 + 128 && *(v38 + 28) <= v37)
      {
        for (i = *v56; ; i += 16)
        {
          if (i == v18)
          {
            goto LABEL_79;
          }

          v50 = *(i + 1);
          __p[0] = *i;
          __p[1] = v50;
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_25704(buf, __p, "", 6258);
          v51 = *(*buf + 184);
          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          if (v50)
          {
            std::__shared_weak_count::__release_weak(v50);
          }

          if ((v51 & 0x40) == 0)
          {
            break;
          }
        }

        v18 = i;
      }

      else
      {
LABEL_78:
        v18 = *v56;
      }

LABEL_79:
      v42 = sub_5544(8);
      if (*(v42 + 8))
      {
        v43 = *v42;
        if (*v42)
        {
          if (os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
          {
            v44 = *v56;
            sub_23148(__p, (v5[2] + 8));
            v45 = __p;
            if (v59 < 0)
            {
              v45 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6261;
            v63 = 1024;
            LODWORD(v64[0]) = (v18 - v44) >> 4;
            WORD2(v64[0]) = 2080;
            *(v64 + 6) = v45;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Inserting port into mCachedPortStack at position %d: %s", buf, 0x22u);
            if (v59 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v46 = v5[3];
      *buf = v5[2];
      *&buf[8] = v46;
      if (v46)
      {
        atomic_fetch_add_explicit((v46 + 16), 1uLL, memory_order_relaxed);
      }

      sub_11E738(v56, v18, buf);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_weak(*&buf[8]);
      }

      v47 = v5[2];
      v48 = v5[3];
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

LABEL_93:
    v5 = v5[1];
  }

  while (v5 != &v60);
LABEL_106:
  sub_87980(&v60);
}

void sub_11E698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_87980(va);
  sub_65310(a5);
  _Unwind_Resume(a1);
}

void sub_11E738(void *a1, char *a2, __int128 *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      sub_189A00();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v27 = a1;
    if (v14)
    {
      sub_1DC690(v14);
    }

    v16 = (16 * v15);
    v24 = 0;
    v25 = 16 * v15;
    v26 = (16 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == a2)
        {
          v17 = 1;
        }

        else
        {
          v17 = v12 >> 3;
        }

        v28 = a1;
        sub_1DC690(v17);
      }

      v16 = (v16 - (((v12 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v25 = v16;
      *&v26 = v16;
    }

    *v16 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    *&v26 = v26 + 16;
    memcpy(v26, a2, a1[1] - a2);
    v18 = *a1;
    v19 = v25;
    *&v26 = v26 + a1[1] - a2;
    a1[1] = a2;
    v20 = a2 - v18;
    v21 = (v19 - (a2 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v22;
    *(&v26 + 1) = v23;
    v24 = v22;
    v25 = v22;
    sub_B1540(&v24);
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    a1[1] = v6 + 16;
  }

  else
  {
    sub_11E988(a1, a2, v6, a2 + 16);
    v8 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v9 = *(a2 + 1);
    *a2 = v8;
    if (v9)
    {

      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_11E988(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 1) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = &v5[v9];
      v11 = *&v5[v9];
      *v10 = 0;
      *(v10 + 1) = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

void sub_11EA10(uint64_t a1, int a2)
{
  v4 = sub_5544(23);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 616);
        v10 = "VirtualStream.cpp";
        v9 = 136316162;
        if (v6 == a2)
        {
          v7 = "(Redundant) ";
        }

        else
        {
          v7 = "";
        }

        v8 = "false";
        v11 = 1024;
        v12 = 1036;
        v14 = v7;
        v13 = 2080;
        if (a2)
        {
          v8 = "true";
        }

        v15 = 2080;
        v16 = v8;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %ssetting trustworthiness flag to %s on stream at %p", &v9, 0x30u);
      }
    }
  }

  *(a1 + 616) = a2;
}

uint64_t sub_11EB3C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a3 + 2) == 1819304813 && *(a2 + 8) == 1819304813)
  {
    v7 = sub_10C354(a1) / *a2;
    v8 = sub_F5EFC(a1);
    v9 = *(a1 + 152);
    if (v8)
    {
      v11 = a3[1];
      v12 = *(a3 + 4);
      v13 = *a3;
      sub_638B0();
    }

    *buf = *a2;
    v18 = *(a2 + 16);
    v19 = *(a2 + 32);
    v14 = *a3;
    v15 = a3[1];
    v16 = *(a3 + 4);
    sub_638B0();
  }

  return 0;
}

void sub_11ED9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11EDC8(uint64_t a1)
{
  v232 = a1 + 656;
  v233 = 1;
  sub_47BD8(a1 + 656);
  v230[0] = 0;
  v230[1] = 0;
  v231 = 0;
  if ((*(**(a1 + 152) + 192))(*(a1 + 152)))
  {
    sub_5EE3C(buf, (a1 + 80), "", 1210);
    v2 = *buf;
    v3 = *(a1 + 152);
    if (v3)
    {
      (*(*v3 + 192))(v3);
    }

    v4 = (*(*v2 + 112))(v2, v230, 1936092513);
  }

  else
  {
    sub_5EE3C(buf, (a1 + 80), "", 1215);
    v5 = *buf;
    v6 = *(a1 + 152);
    if (v6 && ((*(*v6 + 192))(v6) & 1) != 0)
    {
      v7 = 1936092513;
    }

    else
    {
      v7 = 1885762657;
    }

    v4 = (*(*v5 + 112))(v5, v230, v7);
  }

  v8 = v4;
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v8)
  {
    v9 = sub_5544(23);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v242, v8);
      v11 = v242[23];
      v12 = *v242;
      sub_23148(__p, (a1 + 8));
      v13 = v242;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (__p[23] >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = *__p;
      }

      v15 = *(a1 + 96);
      *buf = 136316162;
      *&buf[4] = "VirtualStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1221;
      *&buf[18] = 2080;
      *&buf[20] = v13;
      *&buf[28] = 2080;
      *&buf[30] = v14;
      *&buf[38] = 2048;
      *&buf[40] = v15;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' getting physical stream formats from actual stream for virtual stream '%s' of aggregate device %p.", buf, 0x30u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v242[23] & 0x80000000) != 0)
      {
        v16 = *v242;
LABEL_454:
        operator delete(v16);
        goto LABEL_455;
      }
    }

    goto LABEL_455;
  }

  if (sub_123DE4(a1) && (_os_feature_enabled_impl() & 1) != 0)
  {
    v17 = sub_5544(23);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1237;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Skipping format cullings on this device. Culling happens internally", buf, 0x12u);
    }

    goto LABEL_266;
  }

  v19 = *(a1 + 112);
  if (v19 && (v20 = std::__shared_weak_count::lock(v19)) != 0)
  {
    v228 = v20;
    v21 = *(a1 + 104);
  }

  else
  {
    v228 = 0;
    v21 = 0;
  }

  v22 = *(a1 + 96);
  strcpy(buf, "3cadbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v23 = sub_59410(v22);
  *(&v26 + 1) = v24;
  *&v26 = v23;
  v25 = v26 >> 32;
  v27 = HIDWORD(v23) != 0;
  if (!v21)
  {
    v34 = 0;
LABEL_38:
    v35 = 0;
    if (v34)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  strcpy(buf, "+btmbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v28 = sub_59410(v21);
  *(&v31 + 1) = v29;
  *&v31 = v28;
  v30 = v31 >> 32;
  strcpy(buf, "+ctmbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v23 = sub_59410(v21);
  *(&v31 + 1) = v32;
  *&v31 = v23;
  v33 = v31 >> 32;
  v34 = BYTE4(v30) & (v30 != 0);
  if ((v33 & 0x100000000) == 0)
  {
    goto LABEL_38;
  }

  v35 = v33 != 0;
  if ((BYTE4(v30) & (v30 != 0)) != 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  if (!v35)
  {
    v36 = 0;
    goto LABEL_42;
  }

LABEL_41:
  v36 = caulk::product::get_device_class(v23) == 4;
LABEL_42:
  if ((sub_F5EFC(a1) & 1) == 0)
  {
    goto LABEL_166;
  }

  v37 = BYTE4(v25) & v27;
  v38 = sub_CE3DC((*(a1 + 96) + 272));
  if ((HIDWORD(v25) & v27) != 0)
  {
    v39 = sub_5544(23);
    if (*(v39 + 8))
    {
      v40 = *v39;
      if (*v39)
      {
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1165;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d AC-3 formats are simulated", buf, 0x12u);
        }
      }
    }
  }

  v41 = sub_8703C();
  v42 = (*(*v41 + 8))(v41);
  v226 = *(a1 + 617);
  v43 = sub_123DE4(a1);
  v44 = *(a1 + 944);
  buf[16] = 0;
  buf[24] = 0;
  *buf = 0;
  buf[4] = 0;
  *&buf[32] = v42;
  *&buf[40] = v230;
  LOBYTE(v245) = 0;
  BYTE4(v245) = 0;
  v246 = v38;
  v247 = v43;
  *v242 = 0;
  if (sub_1235F4(@"OverrideLPCMChannelCount", @"com.apple.audio.virtualaudio", v242))
  {
    v45 = *v242;
    v46 = *sub_5544(14);
    v47 = v46;
    if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *v242 = 136315906;
      *&v242[4] = "RunTimeDefaults.mm";
      *&v242[12] = 1024;
      *&v242[14] = 2086;
      *&v242[18] = 2080;
      *&v242[20] = "OverrideLPCMChannelCount";
      *&v242[28] = 1024;
      *&v242[30] = v45;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", v242, 0x22u);
    }

    v48 = v230[0];
    if (v230[0] != v230[1])
    {
      while (1)
      {
        v49 = v48[2] == 1819304813 && (v48[3] & 1) == 0;
        if (v49 && v48[7] == v45)
        {
          break;
        }

        v48 += 14;
        if (v48 == v230[1])
        {
          goto LABEL_60;
        }
      }

      v63 = sub_5544(23);
      v64 = *v63;
      if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_DEFAULT))
      {
        *v242 = 136315650;
        *&v242[4] = "VirtualStream.cpp";
        *&v242[12] = 1024;
        *&v242[14] = 1656;
        *&v242[18] = 1024;
        *&v242[20] = v45;
        _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LPCM format with channel count %u is available. Forcing this format", v242, 0x18u);
      }

      LODWORD(v245) = v45;
      BYTE4(v245) = BYTE4(v45) | 1;
      goto LABEL_138;
    }

LABEL_60:
    v50 = sub_5544(23);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
    {
      *v242 = 136315650;
      *&v242[4] = "VirtualStream.cpp";
      *&v242[12] = 1024;
      *&v242[14] = 1665;
      *&v242[18] = 1024;
      *&v242[20] = v45;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LPCM format with channel count %u is not available.", v242, 0x18u);
    }
  }

  if (v38)
  {
    if (v43 && (_os_feature_enabled_impl() & 1) != 0)
    {
      v52 = 0;
    }

    else
    {
      v52 = 3;
    }

    *&buf[8] = v52;
  }

  v53 = 0;
  if (v42 <= 4)
  {
    if (v42)
    {
      if (v42 != 3)
      {
        if (v42 != 4)
        {
          goto LABEL_117;
        }

        v53 = 0;
        *&buf[3] = 257;
        buf[1] = 1;
        *&buf[8] = 3;
        goto LABEL_116;
      }

LABEL_97:
      if (v230[0] == v230[1])
      {
        LOBYTE(v60) = 1;
        buf[3] = 1;
        v62 = 1;
      }

      else
      {
        v59 = v230[0] + 56;
        do
        {
          v60 = (*(v59 - 12) != 1819304813) | *(v59 - 11) | (*(v59 - 7) != 6);
          if (!((*(v59 - 12) != 1819304813) | *(v59 - 11) & 1 | (*(v59 - 7) != 6)))
          {
            break;
          }

          v49 = v59 == v230[1];
          v59 += 56;
        }

        while (!v49);
        buf[3] = v60 & 1;
        v61 = v230[0] + 56;
        do
        {
          v62 = (*(v61 - 12) != 1819304813) | *(v61 - 44) | (*(v61 - 7) != 8);
          if (!((*(v61 - 12) != 1819304813) | *(v61 - 44) & 1 | (*(v61 - 7) != 8)))
          {
            break;
          }

          v49 = v61 == v230[1];
          v61 += 56;
        }

        while (!v49);
      }

      buf[4] = v62 & 1;
      if ((v62 & 1 & v60) != 0)
      {
        v53 = v37;
      }

      else
      {
        v53 = 1;
      }

      buf[0] = v53;
      buf[1] = 1;
LABEL_116:
      buf[2] = v226;
LABEL_117:
      if (v36)
      {
        goto LABEL_119;
      }

      goto LABEL_118;
    }

    buf[0] = v37;
    buf[2] = v226;
    v53 = v37;
    if (v36)
    {
      goto LABEL_119;
    }

LABEL_118:
    *&buf[8] = 3;
    goto LABEL_119;
  }

  switch(v42)
  {
    case 5:
      *buf = 257;
      *&buf[3] = 257;
      v58 = 3;
LABEL_93:
      *&buf[8] = v58;
      break;
    case 6:
      *&buf[8] = 3;
      goto LABEL_97;
    case 7:
      *buf = 257;
      *&buf[3] = 257;
      v54 = v230[0];
      if (v230[0] != v230[1])
      {
        v55 = v230[0] + 56;
        do
        {
          v56 = *(v55 - 12);
          v57 = v56 == 1836343851 || v55 == v230[1];
          v55 += 56;
        }

        while (!v57);
        while (1)
        {
          if (v54 == v230[1])
          {
            if (v56 != 1836343851)
            {
              goto LABEL_94;
            }

            goto LABEL_461;
          }

          if (v54[2] == 1836344107)
          {
            break;
          }

          v54 += 14;
        }

        if (v56 != 1836343851)
        {
          v58 = 2;
          goto LABEL_93;
        }

LABEL_461:
        v53 = 1;
        *&buf[8] = 1;
        if (!v36)
        {
          goto LABEL_118;
        }

        goto LABEL_119;
      }

      break;
    default:
      goto LABEL_117;
  }

LABEL_94:
  v53 = 1;
  if (!v36)
  {
    goto LABEL_118;
  }

LABEL_119:
  if ((v53 & 1) == 0)
  {
    v65 = v230[0];
    if (v230[0] != v230[1])
    {
      while (1)
      {
        v66 = *(v65 + 2);
        v67 = v66 == 1633889587 || v66 == 1667588915;
        v68 = v67 || v66 == 1667326771;
        if (v68 && v65[6] >= 48000.0 && v65[5] <= 48000.0)
        {
          break;
        }

        v65 += 7;
        if (v65 == v230[1])
        {
          goto LABEL_134;
        }
      }

      *&buf[16] = 0x40E7700000000000;
      buf[24] = 1;
    }
  }

LABEL_134:
  if (v44)
  {
    *&buf[8] = 3;
    buf[0] = 1;
  }

  if (v38)
  {
    buf[0] = 1;
  }

LABEL_138:
  if ((sub_123DE4(a1) & v38) == 1)
  {
    v69 = sub_5544(23);
    v70 = *v69;
    if (*v69)
    {
      if (os_log_type_enabled(*v69, OS_LOG_TYPE_DEFAULT))
      {
        sub_3B6C40(__p, buf);
        v71 = __p[23] >= 0 ? __p : *__p;
        *v242 = 136315650;
        *&v242[4] = "VirtualStream.cpp";
        *&v242[12] = 1024;
        *&v242[14] = 1176;
        *&v242[18] = 2080;
        *&v242[20] = v71;
        _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parrot and call: {%s}", v242, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

  v72 = sub_5544(23);
  if (*(v72 + 8))
  {
    v73 = *v72;
    if (*v72)
    {
      if (os_log_type_enabled(*v72, OS_LOG_TYPE_DEBUG))
      {
        sub_3B6C40(__p, buf);
        v74 = __p[23] >= 0 ? __p : *__p;
        *v242 = 136315650;
        *&v242[4] = "VirtualStream.cpp";
        *&v242[12] = 1024;
        *&v242[14] = 1177;
        *&v242[18] = 2080;
        *&v242[20] = v74;
        _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEBUG, "%25s:%-5d {%s}", v242, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

  if (v230[1] != v230[0])
  {
    v75 = 0x6DB6DB6DB6DB6DB7 * ((v230[1] - v230[0]) >> 3);
    if (v75 < 0x492492492492493)
    {
      sub_2AE238(v75);
    }

    sub_189A00();
  }

  v209 = sub_5544(14);
  v210 = *v209;
  if (*v209 && os_log_type_enabled(*v209, OS_LOG_TYPE_ERROR))
  {
    *v242 = 136315394;
    *&v242[4] = "VirtualStream.cpp";
    *&v242[12] = 1024;
    *&v242[14] = 1861;
    _os_log_impl(&dword_0, v210, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: No remaining stream formats after applying multi-channel culling policy", v242, 0x12u);
  }

  if (buf[2] == 1)
  {
    v76 = sub_5544(23);
    if (*(v76 + 8))
    {
      v77 = *v76;
      if (*v76)
      {
        if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEBUG))
        {
          *v242 = 136315394;
          *&v242[4] = "VirtualStream.cpp";
          *&v242[12] = 1024;
          *&v242[14] = 1879;
          _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d Skipped culling of stereo and mono LPCM stream formats", v242, 0x12u);
        }
      }
    }
  }

  if (v230[0])
  {
    v230[1] = v230[0];
    operator delete(v230[0]);
  }

  *v230 = 0u;
  v231 = 0;
LABEL_166:
  if (v228)
  {
    sub_1A8C0(v228);
  }

  if (*(a1 + 144) != 1)
  {
    if (*(a1 + 624) != 1)
    {
      if (sub_136D10())
      {
        v90 = sub_5544(23);
        v91 = *v90;
        if (*v90 && os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 129;
          _os_log_impl(&dword_0, v91, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Forcing use of 24-bit stream formats when available", buf, 0x12u);
        }

LABEL_196:
        v81 = 0;
        goto LABEL_207;
      }

      v92 = sub_8703C();
      if ((*(*v92 + 24))(v92) == 1752260981)
      {
        for (i = *(a1 + 128); i != (a1 + 120); i = i[1])
        {
          v94 = i[3];
          if (v94)
          {
            v95 = std::__shared_weak_count::lock(v94);
            if (v95)
            {
              v96 = v95;
              v97 = i[2];
              if (v97 && (*(v97 + 184) & 0x200) != 0)
              {
                v203 = sub_5544(23);
                v204 = *v203;
                if (*v203 && os_log_type_enabled(*v203, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "VirtualStream.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 120;
                  _os_log_impl(&dword_0, v204, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Format culling policy is using kCullLessThan24Bit based on GetHighQualityPCMPreferenceState()", buf, 0x12u);
                }

                sub_1A8C0(v96);
                goto LABEL_196;
              }

              sub_1A8C0(v95);
            }
          }
        }
      }

      goto LABEL_206;
    }

    v82 = sub_5544(23);
    v83 = *v82;
    if (*v82 && os_log_type_enabled(*v82, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 624) != 1)
      {
        goto LABEL_487;
      }

      v84 = "kCullLessThan24Bit";
      v85 = *(a1 + 620);
      *&buf[4] = "VirtualStream.cpp";
      *buf = 136315650;
      if (v85 == 1)
      {
        v84 = "kCullGreaterThan16Bit";
      }

      *&buf[12] = 1024;
      *&buf[14] = 103;
      *&buf[18] = 2080;
      *&buf[20] = v84;
      _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Format culling policy is using %s based on mCullingPolicyOption", buf, 0x1Cu);
    }

    if (*(a1 + 624))
    {
      v81 = *(a1 + 620);
      v86 = sub_136D10();
      if (v81 == 1)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }

      if (v87 != 1)
      {
        goto LABEL_207;
      }

      v88 = sub_5544(23);
      v89 = *v88;
      if (*v88 && os_log_type_enabled(*v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 105;
        _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring preference to force 24-bit stream formats because 16-bit stream formats were specified in the routing database.", buf, 0x12u);
      }

LABEL_206:
      v81 = 1;
      goto LABEL_207;
    }

LABEL_487:
    sub_1EC054();
  }

  v78 = sub_5544(23);
  v79 = *v78;
  if (*v78 && os_log_type_enabled(*v78, OS_LOG_TYPE_DEFAULT))
  {
    sub_8E920(v242, a1 + 120, 1);
    v80 = v242[23] >= 0 ? v242 : *v242;
    *buf = 136315650;
    *&buf[4] = "VirtualStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 97;
    *&buf[18] = 2080;
    *&buf[20] = v80;
    _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Not culling any formats for port '%s'", buf, 0x1Cu);
    if ((v242[23] & 0x80000000) != 0)
    {
      operator delete(*v242);
    }
  }

  v81 = 2;
LABEL_207:
  v98 = sub_5544(23);
  v99 = *v98;
  if (*v98 && os_log_type_enabled(*v98, OS_LOG_TYPE_DEFAULT))
  {
    v100 = v81 > 2 ? "????" : off_6D1800[v81];
    sub_53E8(v242, v100);
    v101 = v242[23] >= 0 ? v242 : *v242;
    v102 = *(a1 + 96);
    *buf = 136316162;
    *&buf[4] = "VirtualStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1232;
    *&buf[18] = 2080;
    *&buf[20] = v101;
    *&buf[28] = 2048;
    *&buf[30] = a1;
    *&buf[38] = 2048;
    *&buf[40] = v102;
    _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d culling policy is %s for virtual stream %p of aggregate device %p.", buf, 0x30u);
    if ((v242[23] & 0x80000000) != 0)
    {
      operator delete(*v242);
    }
  }

  v104 = v230[0];
  v103 = v230[1];
  if (v230[1] == v230[0])
  {
    goto LABEL_266;
  }

  do
  {
    if (v81 == 2)
    {
      goto LABEL_256;
    }

    if (v81 == 1)
    {
      if (*(v104 + 8) <= 0x10u)
      {
        goto LABEL_256;
      }

      if (*(v104 + 2) != 1819304813 || (*(v104 + 3) & 1) != 0)
      {
        goto LABEL_256;
      }
    }

    else
    {
      if (v81)
      {
        v110 = sub_5544(14);
        v111 = *v110;
        if (*v110 && os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 152;
          _os_log_impl(&dword_0, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unhandled case in switch", buf, 0x12u);
        }

LABEL_256:
        v104 += 56;
        v103 = v230[1];
        continue;
      }

      if (*(v104 + 8) > 0x17u || *(v104 + 2) != 1819304813 || (*(v104 + 3) & 1) != 0)
      {
        goto LABEL_256;
      }
    }

    v106 = v230[0];
    if (v103 == v230[0])
    {
      goto LABEL_256;
    }

    while (v81 != 1)
    {
      if (*(v106 + 8) >= 0x18u)
      {
        goto LABEL_236;
      }

LABEL_251:
      v106 += 7;
      if (v106 == v230[1])
      {
        goto LABEL_256;
      }
    }

    if (*(v106 + 8) >= 0x11u)
    {
      goto LABEL_251;
    }

LABEL_236:
    if (*(v106 + 2) != 1819304813 || (*(v106 + 3) & 1) != 0)
    {
      goto LABEL_251;
    }

    v108 = *(v104 + 5) < v106[5] || *(v104 + 6) > v106[6];
    v109 = !v108 && *v104 == *v106;
    if (!v109 || *(v104 + 7) != *(v106 + 7))
    {
      goto LABEL_251;
    }

    v112 = sub_5544(23);
    if ((*(v112 + 8) & 1) != 0 && *v112 && os_log_type_enabled(*v112, OS_LOG_TYPE_DEBUG))
    {
      sub_1243E4(v242);
    }

    v113 = (v230[1] - (v104 + 56));
    if (v230[1] != v104 + 56)
    {
      memmove(v104, v104 + 56, v230[1] - (v104 + 56));
    }

    v103 = &v113[v104];
    v230[1] = &v113[v104];
  }

  while (v103 != v104);
LABEL_266:
  v114 = *(a1 + 112);
  if (v114)
  {
    v115 = std::__shared_weak_count::lock(v114);
    if (v115)
    {
      v116 = v115;
      v117 = *(a1 + 104);
      if (v117)
      {
        v118 = (*(*&v117->_os_unfair_lock_opaque + 208))(*(a1 + 104));
        if ((v118 & 0x100000000) != 0)
        {
          v119 = sub_5544(23);
          v120 = *v119;
          if (*v119)
          {
            if (os_log_type_enabled(*v119, OS_LOG_TYPE_DEFAULT))
            {
              sub_23148(v242, v117 + 2);
              v121 = v242[23] >= 0 ? v242 : *v242;
              *buf = 136315650;
              *&buf[4] = "VirtualStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1243;
              *&buf[18] = 2080;
              *&buf[20] = v121;
              _os_log_impl(&dword_0, v120, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying sample rate culling policy to device %s", buf, 0x1Cu);
              if ((v242[23] & 0x80000000) != 0)
              {
                operator delete(*v242);
              }
            }
          }
        }

        sub_136F58(v230, v118 & 0xFFFFFFFFFFLL, *(a1 + 96));
      }

      sub_1A8C0(v116);
    }
  }

  v122 = (*(**(a1 + 96) + 568))(*(a1 + 96));
  if ((v122 & 0x100000000) != 0)
  {
    (*(**(a1 + 96) + 136))(buf);
    if (*&buf[8])
    {
      v123 = std::__shared_weak_count::lock(*&buf[8]);
      if (v123)
      {
        v124 = v123;
        atomic_fetch_add_explicit(&v123->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v126 = *buf;
        v125 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        if (v125)
        {
          std::__shared_weak_count::__release_weak(v125);
        }

        sub_1A8C0(v124);
        v127 = std::__shared_weak_count::lock(v124);
        v128 = 0;
        if (!v127)
        {
          v126 = 0;
        }

LABEL_292:
        v130 = *(a1 + 112);
        if (v130 && (v131 = std::__shared_weak_count::lock(v130)) != 0)
        {
          v132 = v126 == *(a1 + 104);
          sub_1A8C0(v131);
          if (!v127)
          {
LABEL_298:
            if ((v128 & 1) == 0)
            {
              std::__shared_weak_count::__release_weak(v124);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_weak(*&buf[8]);
            }

            if (v132)
            {
              v133 = sub_5544(23);
              v134 = *v133;
              if (*v133 && os_log_type_enabled(*v133, OS_LOG_TYPE_DEFAULT))
              {
                v135 = v242;
                sub_23148(v242, (*(a1 + 96) + 8));
                if (v242[23] < 0)
                {
                  v135 = *v242;
                }

                sub_8D290(v237, (a1 + 104), "", 1252);
                sub_23148(__p, (*v237 + 8));
                if (__p[23] >= 0)
                {
                  v136 = __p;
                }

                else
                {
                  v136 = *__p;
                }

                *buf = 136315906;
                *&buf[4] = "VirtualStream.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1252;
                *&buf[18] = 2080;
                *&buf[20] = v135;
                *&buf[28] = 2080;
                *&buf[30] = v136;
                _os_log_impl(&dword_0, v134, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying aggregate device %s sample rate culling policy to device %s", buf, 0x26u);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                if (*&v237[8])
                {
                  sub_1A8C0(*&v237[8]);
                }

                if ((v242[23] & 0x80000000) != 0)
                {
                  operator delete(*v242);
                }
              }

              sub_136F58(v230, v122 & 0xFFFFFFFFFFLL, *(a1 + 96));
            }

            goto LABEL_317;
          }
        }

        else
        {
          v132 = v126 == 0;
          if (!v127)
          {
            goto LABEL_298;
          }
        }

        sub_1A8C0(v127);
        goto LABEL_298;
      }

      v129 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      if (v129)
      {
        std::__shared_weak_count::__release_weak(v129);
      }

      v124 = 0;
      v126 = 0;
      v127 = 0;
    }

    else
    {
      v124 = 0;
      v126 = 0;
      v127 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    v128 = 1;
    goto LABEL_292;
  }

LABEL_317:
  if ((*(**(a1 + 96) + 152))(*(a1 + 96)) && sub_F5EFC(a1) && *(a1 + 632) == 1)
  {
    if (*(a1 + 628) != 1)
    {
      v223 = sub_5544(14);
      v224 = *v223;
      if (*v223 && os_log_type_enabled(*v223, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1109;
        _os_log_impl(&dword_0, v224, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v137 = v230[0];
    if (v230[0] != v230[1])
    {
      while (1)
      {
        v138 = fabs(*v137);
        if (v138 < 48000.0)
        {
          v138 = 48000.0;
        }

        if (v138 < 1.0)
        {
          v138 = 1.0;
        }

        if (fabs(*v137 + -48000.0) <= fabs(v138 * 2.22044605e-16))
        {
          break;
        }

        v137 += 7;
        if (v137 == v230[1])
        {
          goto LABEL_334;
        }
      }
    }

    if (v137 == v230[1])
    {
LABEL_334:
      v142 = sub_5544(23);
      v143 = *v142;
      if (*v142 && os_log_type_enabled(*v142, OS_LOG_TYPE_ERROR))
      {
        v144 = *(a1 + 96);
        *buf = 136315650;
        *&buf[4] = "VirtualStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1124;
        *&buf[18] = 2048;
        *&buf[20] = v144;
        _os_log_impl(&dword_0, v143, OS_LOG_TYPE_ERROR, "%25s:%-5d Expanse preferred sample rate of 48KHz is unavailable for device %p - we may have errors!!", buf, 0x1Cu);
      }
    }

    else
    {
      v139 = sub_5544(23);
      v140 = *v139;
      if (*v139 && os_log_type_enabled(*v139, OS_LOG_TYPE_DEFAULT))
      {
        v141 = *(a1 + 96);
        *buf = 136315650;
        *&buf[4] = "VirtualStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1118;
        *&buf[18] = 2048;
        *&buf[20] = v141;
        _os_log_impl(&dword_0, v140, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying sample rate culling policy to device %p for expanse", buf, 0x1Cu);
      }

      sub_136F58(v230, *(a1 + 628), *(a1 + 96));
    }
  }

  v145 = (a1 + 224);
  *(a1 + 232) = *(a1 + 224);
  v229 = (a1 + 248);
  *(a1 + 256) = *(a1 + 248);
  if (v230[1] != v230[0])
  {
    v146 = 0;
    v147 = 0;
    v227 = 0x6DB6DB6DB6DB6DB7 * ((v230[1] - v230[0]) >> 3);
    do
    {
      v148 = v230[0];
      v149 = v230[0] + 56 * v146;
      *buf = *v149;
      *&buf[16] = *(v149 + 1);
      *&buf[32] = *(v149 + 2);
      v245 = *(v149 + 6);
      *v242 = *v149;
      *&v242[16] = *(v149 + 1);
      *&v242[32] = *(v149 + 4);
      if (*&buf[8] == 1819304813)
      {
        v150 = *(a1 + 204);
        if (v150)
        {
          v151 = 1;
        }

        else
        {
          v150 = *&buf[28];
          if (v230[0] == v230[1])
          {
LABEL_364:
            v151 = 0;
          }

          else
          {
            while (*(v148 + 7) != *(a1 + 200) || *v148 != *buf)
            {
              v148 += 7;
              if (v148 == v230[1])
              {
                goto LABEL_364;
              }
            }

            v151 = 1;
            v150 = *(a1 + 200);
          }
        }

        if (*(*(a1 + 152) + 448) != 1)
        {
          goto LABEL_385;
        }

        v162 = BYTE12(xmmword_6F5E40);
        if ((v151 & 1) == 0)
        {
          if ((sub_F5EFC(a1) & 1) == 0 && sub_8DA94(*(a1 + 152)))
          {
            v150 = sub_EAE3C(*(a1 + 152));
          }

          if (sub_F5EFC(a1) && (*(**(a1 + 152) + 80))(*(a1 + 152)) && sub_136678(*(a1 + 152)))
          {
            v163 = *(a1 + 152);
            if ((sub_136678(v163) & 1) == 0)
            {
              v215 = sub_5544(14);
              v216 = sub_468EC(1, *v215, *(v215 + 8));
              v217 = v216;
              if (v216 && os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "DSPChain.mm";
                *&__p[12] = 1024;
                *&__p[14] = 1938;
                _os_log_impl(&dword_0, v217, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v218 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v218, "Precondition failure.");
            }

            *v237 = v163 + 48;
            v237[8] = 1;
            sub_26C0(v163 + 48);
            LODWORD(v234[0]) = 0;
            v164 = *(v163 + 24);
            v165 = *(v163 + 32);
            if (v164 != v165)
            {
              while (1)
              {
                v236 = 0;
                v166 = (*(**(v164 + 8) + 256))(*(v164 + 8), 1, 0, &v236);
                if (v166)
                {
                  v205 = sub_5544(14);
                  v206 = sub_468EC(1, *v205, *(v205 + 8));
                  v207 = v206;
                  if (v206 && os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "DSPChain.mm";
                    *&__p[12] = 1024;
                    *&__p[14] = 1947;
                    _os_log_impl(&dword_0, v207, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stat) [error stat is an error]: Unexpected error from HasStaticChannelCountForBus", __p, 0x12u);
                  }

                  v208 = __cxa_allocate_exception(0x10uLL);
                  *v208 = &off_6DDDD0;
                  v208[2] = v166;
                }

                if (v236)
                {
                  break;
                }

                v164 += 24;
                if (v164 == v165)
                {
                  v164 = v165;
                  break;
                }
              }

              v165 = *(v163 + 32);
            }

            if (v164 == v165)
            {
              v219 = sub_5544(14);
              v220 = sub_468EC(1, *v219, *(v219 + 8));
              v221 = v220;
              if (v220 && os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "DSPChain.mm";
                *&__p[12] = 1024;
                *&__p[14] = 1951;
                _os_log_impl(&dword_0, v221, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v222 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v222, "Precondition failure.");
            }

            v167 = (*(**(v164 + 8) + 264))(*(v164 + 8), 1, 0, v234);
            if (v167)
            {
              v211 = sub_5544(14);
              v212 = sub_468EC(1, *v211, *(v211 + 8));
              v213 = v212;
              if (v212 && os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "DSPChain.mm";
                *&__p[12] = 1024;
                *&__p[14] = 1953;
                _os_log_impl(&dword_0, v213, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stat) [error stat is an error]: Unexpected error from GetChannelCountForBus", __p, 0x12u);
              }

              v214 = __cxa_allocate_exception(0x10uLL);
              *v214 = &off_6DDDD0;
              v214[2] = v167;
            }

            v150 = v234[0];
            sub_3174(v163 + 48);
          }
        }

        if ((v162 & 0x20) != 0)
        {
          v168 = 4;
          v169 = 41;
        }

        else
        {
LABEL_385:
          v168 = 4 * v150;
          v169 = 9;
        }

        *&buf[8] = 1819304813;
        *&buf[12] = v169;
        *&buf[16] = v168;
        *&buf[20] = 1;
        *&buf[24] = v168;
        *&buf[28] = v150;
        *&buf[32] = 32;
        goto LABEL_388;
      }

      if (*&buf[8] > 1836343850)
      {
        if (*&buf[8] == 1836344107)
        {
          goto LABEL_348;
        }

        v152 = 1836343851;
      }

      else
      {
        if (*&buf[8] == 1667443507)
        {
          goto LABEL_348;
        }

        v152 = 1667509043;
      }

      if (*&buf[8] == v152)
      {
LABEL_348:
        sub_8D290(__p, (a1 + 104), "", 1421);
        strcpy(v237, "rrapbolg");
        v237[9] = 0;
        *&v237[10] = 0;
        v153 = sub_59410(*__p);
        *(&v156 + 1) = v154;
        *&v156 = v153;
        v155 = v156 >> 32;
        v157 = 1;
        if ((v155 & 0x100000000) != 0 && v155)
        {
          v157 = _os_feature_enabled_impl() ^ 1;
        }

        if (*&__p[8])
        {
          sub_1A8C0(*&__p[8]);
        }

        if (v157)
        {
          v158 = *buf;
          v159 = fabs(*buf);
          if (v159 >= 1.0)
          {
            v160 = v159;
          }

          else
          {
            v160 = 1.0;
          }

          if (v159 <= fabs(v160 * 2.22044605e-16))
          {
            v158 = v245;
          }

          *buf = v158 * 0.0625;
          *&buf[28] *= 16;
          LODWORD(v161) = vshr_n_u32(*&buf[20], 4uLL).u32[0];
          HIDWORD(v161) = vshl_n_s32(*(buf + 20), 4uLL).i32[1];
          *&buf[20] = v161;
          *&buf[40] = v158 * 0.0625;
          v245 = v158 * 0.0625;
        }
      }

LABEL_388:
      v170 = sub_5544(23);
      if ((*(v170 + 8) & 1) != 0 && *v170 && os_log_type_enabled(*v170, OS_LOG_TYPE_DEBUG))
      {
        sub_618A4(v237);
      }

      v171 = *(a1 + 248);
      v172 = *(a1 + 256) - v171;
      if (!v172)
      {
        goto LABEL_414;
      }

      v173 = 0;
      v174 = 0;
      v175 = 0x6DB6DB6DB6DB6DB7 * (v172 >> 3);
      v177 = *&buf[40];
      v176 = v245;
      do
      {
        v178 = v171 + 56 * v173;
        if (sub_5FB04(buf, v178) && (v179 = *(v178 + 40), v176 >= v179) && ((v180 = *(v178 + 48), v177 < v179) ? (v181 = v176 > v180) : (v181 = 1), v181 && (v177 < v179 ? (v182 = v176 <= v180) : (v182 = 1), v182)))
        {
          v183 = v177 == v179;
          if (v176 != v180)
          {
            v183 = 0;
          }

          v184 = !v183;
        }

        else
        {
          v183 = 0;
          v184 = 1;
        }

        v173 = (v174 + v184);
        if (v183)
        {
          break;
        }

        v174 += v184;
      }

      while (v175 > v173);
      if (v183 && (*(a1 + 144) & 1) == 0)
      {
        memset(__p, 0, 24);
        sub_1242B8(__p, (*v145 + 56 * v173));
        sub_1242B8(__p, v149);
        v185 = *__p;
        sub_169084(v242, *__p, *&__p[8], buf);
        v186 = *v145 + 56 * v173;
        *v186 = *v242;
        *(v186 + 16) = *&v242[16];
        *(v186 + 32) = *&v242[32];
        *(v186 + 48) = v243;
        if (v185)
        {
          operator delete(v185);
        }
      }

      else
      {
LABEL_414:
        sub_1242B8(a1 + 224, v149);
        sub_1242B8(v229, buf);
      }

      v146 = ++v147;
    }

    while (v227 > v147);
  }

  v187 = sub_5544(23);
  v188 = *v187;
  if (*v187 && os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
  {
    v189 = *(a1 + 96);
    *buf = 136315906;
    *&buf[4] = "VirtualStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1311;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 2048;
    *&buf[30] = v189;
    _os_log_impl(&dword_0, v188, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Virtualized-to-physical format mappings for virtual stream %p of aggregate device %p:", buf, 0x26u);
  }

  if (*(a1 + 232) != *(a1 + 224))
  {
    v190 = 1;
    do
    {
      v191 = sub_5544(23);
      if (*v191 && os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
      {
        v192 = *v229;
        sub_1243E4(v242);
      }

      v193 = sub_5544(23);
      if (*v193 && os_log_type_enabled(*v193, OS_LOG_TYPE_DEFAULT))
      {
        v194 = *v145;
        sub_1243E4(v242);
      }

      v108 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 232) - *(a1 + 224)) >> 3) > v190++;
    }

    while (v108);
  }

  v8 = sub_124C38(a1, buf);
  if (v8)
  {
    v195 = sub_5544(23);
    v196 = *v195;
    if (*v195 && os_log_type_enabled(*v195, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v8);
      v197 = __p[23] >= 0 ? __p : *__p;
      *v242 = 136315650;
      *&v242[4] = "VirtualStream.cpp";
      *&v242[12] = 1024;
      *&v242[14] = 1326;
      *&v242[18] = 2080;
      *&v242[20] = v197;
      _os_log_impl(&dword_0, v196, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' ensuring valid physical stream format", v242, 0x1Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        v16 = *__p;
        goto LABEL_454;
      }
    }
  }

  else
  {
    v8 = sub_5EFE0(a1, buf, v242);
    if (v8)
    {
      v198 = sub_5544(23);
      if (*v198 && os_log_type_enabled(*v198, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v237, v8);
        sub_618A4(v234);
      }
    }

    else
    {
      *__p = *buf;
      *&__p[16] = *&buf[16];
      v241 = *&buf[32];
      if (*&buf[8] == 1819304813 && (__p[12] & 0x40) == 0)
      {
        *&__p[12] = 9;
        *&__p[16] = 4 * *&__p[28];
        *&__p[20] = 1;
        *&__p[24] = 4 * *&__p[28];
        LODWORD(v241) = 32;
      }

      v8 = sub_11EB3C(a1, __p, v242);
      if (v8)
      {
        v199 = sub_5544(23);
        v200 = *v199;
        if (*v199)
        {
          if (os_log_type_enabled(*v199, OS_LOG_TYPE_ERROR))
          {
            sub_22170(v234, v8);
            v201 = v235 >= 0 ? v234 : v234[0];
            *v237 = 136315650;
            *&v237[4] = "VirtualStream.cpp";
            *&v237[12] = 1024;
            *&v237[14] = 1347;
            v238 = 2080;
            v239 = v201;
            _os_log_impl(&dword_0, v200, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' configuring the DSP chain", v237, 0x1Cu);
            if (v235 < 0)
            {
              v16 = v234[0];
              goto LABEL_454;
            }
          }
        }
      }
    }
  }

LABEL_455:
  if (v230[0])
  {
    v230[1] = v230[0];
    operator delete(v230[0]);
  }

  if (v233 == 1)
  {
    sub_47C90(v232);
  }

  return v8;
}

void sub_12185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a13)
  {
    operator delete(a13);
  }

  if (a14)
  {
    sub_1A8C0(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_216C10(&a20);
  _Unwind_Resume(a1);
}

void sub_121A84(uint64_t a1)
{
  v2 = sub_11EDC8(a1);
  if (v2)
  {
    v38 = v2;
    v39 = sub_5544(14);
    v40 = *v39;
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v38);
      v41 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "VirtualStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 434;
      v48 = 2080;
      v49 = v41;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (err): Aborting initialization due to error '%s' while attempting to initialize stream formats", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v38;
  }

  sub_11EA10(a1, 1);
  v3 = sub_5544(23);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23148(&__p, (a1 + 8));
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v6 = *(a1 + 96);
    *buf = 136315906;
    *&buf[4] = "VirtualStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 438;
    v48 = 2080;
    v49 = v5;
    v50 = 2048;
    v51 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d VirtualStream created: %s for aggregate device %p.", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = sub_5544(23);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    sub_3B7FA4(&__p, *(a1 + 248), *(a1 + 256));
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "VirtualStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 439;
    v48 = 2080;
    v49 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d - mClientStreamFormats: %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = sub_5544(23);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    sub_3B7FA4(&__p, *(a1 + 224), *(a1 + 232));
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "VirtualStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 440;
    v48 = 2080;
    v49 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d - mPhysicalStreamFormats: %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v13 = *(a1 + 152);
  if ((*(v13 + 392) & 1) == 0)
  {
    (*(*v13 + 16))(v13, *(a1 + 640));
    v13 = *(a1 + 152);
  }

  v14 = *(v13 + 1048);
  v15 = *(v13 + 1056);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v43 = v14;
    sub_1A8C0(v15);
    v14 = v43;
  }

  v16 = *(a1 + 176);
  *(a1 + 168) = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(*(a1 + 152) + 1064);
  v18 = *(*(a1 + 152) + 1072);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  v19 = *(a1 + 192);
  *(a1 + 184) = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(a1 + 152);
  if ((*(v20 + 448) & 1) == 0 && !*(v20 + 584) && !*(v20 + 672))
  {
    v21 = *(v20 + 1160);
    if ((!v21 || (*(v21 + 104) & 1) == 0) && !*(v20 + 1168))
    {
      if (*(a1 + 136))
      {
        v22 = *(a1 + 128);
        v23 = *(v22 + 24);
        if (v23)
        {
          v24 = std::__shared_weak_count::lock(v23);
          if (v24)
          {
            v25 = v24;
            v26 = *(v22 + 16);
            if (v26)
            {
              if (*(v26 + 144) == 1886745455)
              {
                v27 = *(v26 + 200);
                __p.__r_.__value_.__r.__words[0] = *(v26 + 192);
                __p.__r_.__value_.__l.__size_ = v27;
                if (v27)
                {
                  atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                sub_5659C(buf, &__p, "", 459);
                v28 = *buf;
                v29 = (*(**buf + 448))(*buf, 1);
                v30 = (*(*v28 + 88))(v28, 1);
                v31 = v29 <= 2 && v30 == 1 || *(v26 + 304) == 1970496068;
                if (*&buf[8])
                {
                  sub_1A8C0(*&buf[8]);
                }

                if (v27)
                {
                  std::__shared_weak_count::__release_weak(v27);
                }

                if (!v31)
                {
                  goto LABEL_86;
                }

                goto LABEL_58;
              }

              if (*(v26 + 304) == 1970496068)
              {
LABEL_58:
                sub_1F82A0();
                sub_251248(buf, v26);
                if (SBYTE3(v49) >= 0)
                {
                  v32 = buf;
                }

                else
                {
                  v32 = *buf;
                }

                if (v32)
                {
                  if (SBYTE3(v49) >= 0)
                  {
                    v33 = BYTE3(v49);
                  }

                  else
                  {
                    v33 = *&buf[8];
                  }

                  v45 = CFStringCreateWithBytes(0, v32, v33, 0x8000100u, 0);
                  if (!v45)
                  {
                    v34 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v34, "Could not construct");
                  }
                }

                else
                {
                  v45 = 0;
                }

                (*(*v26 + 144))(&__p, v26);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                if (p_p)
                {
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = __p.__r_.__value_.__l.__size_;
                  }

                  cf = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
                  if (!cf)
                  {
                    v37 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v37, "Could not construct");
                  }
                }

                else
                {
                  cf = 0;
                }

                (*(qword_6E6648 + 56))();
                if (cf)
                {
                  CFRelease(cf);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v45)
                {
                  CFRelease(v45);
                }

                if (SBYTE3(v49) < 0)
                {
                  operator delete(*buf);
                }
              }
            }

LABEL_86:
            sub_1A8C0(v25);
          }
        }
      }
    }
  }

  sub_F7240(a1);
}

void sub_1221D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_20B45C(&a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_452F0(&a13);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1A8C0(v25);
  _Unwind_Resume(a1);
}

void sub_1222C0(uint64_t a1, unsigned int a2, _OWORD *a3, int a4, unsigned int a5, uint64_t *a6, unsigned int *a7, int a8)
{
  sub_5659C(&v67, a6, "", 348);
  (*(*v67 + 264))(v81);
  sub_5EE3C(&v66, v81, "", 350);
  if (*&v81[8])
  {
    std::__shared_weak_count::__release_weak(*&v81[8]);
  }

  if (!v66)
  {
    v49 = sub_5544(14);
    v50 = *v49;
    if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      *v81 = 136315394;
      *&v81[4] = "StreamUtilities.cpp";
      *&v81[12] = 1024;
      *&v81[14] = 351;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [physicalStream is NULL]: physical stream is NULL", v81, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "physical stream is NULL");
  }

  v15 = 2;
  if (a4)
  {
    v15 = 5;
  }

  v16 = &a6[v15];
  if (0xAAAAAAAAAAAAAAABLL * ((a6[v15 + 1] - a6[v15]) >> 3) <= a5)
  {
    v52 = sub_5544(14);
    v53 = *v52;
    if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
    {
      *v81 = 136315394;
      *&v81[4] = "StreamUtilities.cpp";
      *&v81[12] = 1024;
      *&v81[14] = 355;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): invalid stream index", v81, 0x12u);
    }

    v54 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v54, "invalid stream index");
  }

  if (a4)
  {
    v62 = 0;
  }

  else
  {
    v17 = *(a1 + 288);
    (*(*a1 + 504))(v81, a1);
    v62 = sub_179F8C(v17, 0, v81);
    sub_477A0(*&v81[8]);
  }

  v65 = 0;
  kdebug_trace();
  v18 = *(a1 + 288);
  v19 = *(a1 + 424);
  sub_129608(v73, a4, a5, a6, a7);
  if (!v74)
  {
LABEL_88:
    sub_4E0BC(v73);
    sub_129608(buf, a4, a5, a6, a7);
    if (*&buf[16])
    {
      if (*&buf[16] == 1)
      {
        v48 = *(*(*&buf[8] + 16) + 56);
      }

      else
      {
        v48 = &qword_709380;
      }

      sub_C9A60(v81, v48, *(a7 + 5), *a7, a2);
    }

    else
    {
      v81[16] = 0;
      v82 = 0;
      LOBYTE(v83) = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      *v81 = 0;
      v81[8] = 0;
    }

    sub_4E0BC(buf);
    operator new();
  }

  v64 = a2;
  if (v74 != 1 && (a4 & 1) == 0)
  {
    v55 = sub_5544(14);
    v56 = *v55;
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      *v81 = 136315394;
      *&v81[4] = "StreamUtilities.cpp";
      *&v81[12] = 1024;
      *&v81[14] = 411;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): input stream has more than one associated connection", v81, 0x12u);
    }

    v57 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v57, "input stream has more than one associated connection");
  }

  v20 = *(v73[1] + 2);
  v21 = (*v16 + 24 * a5);
  if (a4)
  {
    if (v20)
    {
      v22 = v20[7];
    }

    else
    {
      v22 = &qword_709380;
    }

    a2 = v64;
    sub_123680(v81, v18, v64, a3, v21, v22, *(a7 + 5), a7, &v65);
    goto LABEL_88;
  }

  v23 = v20[1];
  v71 = *v20;
  v72 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = sub_C4FD4((a6 + 8), &v71);
  v61 = v19;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  if (a6 + 9 != v24)
  {
    sub_46980(&v68, *(v24 + 48), *(v24 + 56), (*(v24 + 56) - *(v24 + 48)) >> 2);
  }

  v60 = 0;
  v25 = 0;
  v26 = v20[7];
  v78 = v18;
  v27 = v64;
  v77 = v64;
  *v76 = 0uLL;
  if (a8)
  {
    sub_1C2688(v81, v18, v64, v21, a7, v62, v61, 1);
    *v76 = *v81;
    v60 = *&v81[8];
    v25 = *v81;
    v27 = v64;
  }

  sub_CFA20(v81, v27, a3, v26, v21[1], v21[2], &v68);
  a2 = v64;
  if (v25)
  {
    goto LABEL_25;
  }

  if (v82 == 1)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v80 = 0;
    sub_C9184(__dst, *v81, *&v81[8], (*&v81[8] - *v81) >> 3);
    __p = __dst[0];
    v33 = __dst[1] - __dst[0];
    if ((__dst[1] - __dst[0]) >= (&dword_8 + 1))
    {
      v34 = sub_5544(21);
      v35 = sub_5544(25);
      v36 = 0;
      *buf = 0x100000002;
      v37 = *(v34 + 8);
      while (1)
      {
        v38 = *&buf[v36];
        if (((v37 & v38) != 0) != ((*(v35 + 8) & v38) != 0))
        {
          break;
        }

        v36 += 4;
        if (v36 == 8)
        {
          goto LABEL_46;
        }
      }

      if ((v37 & v38) == 0)
      {
        v34 = v35;
      }

LABEL_46:
      v39 = *v34;
      if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "RouteUtilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1474;
        *&buf[18] = 2048;
        *&buf[20] = v33 >> 3;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "%25s:%-5d Get DSP properties returned a list of %lu entries. We currently base DSP on the first entry only.", buf, 0x1Cu);
      }
    }

    v40 = __p;
    v41 = *__p;
    if (!*__p || *v41 == *(v41 + 8) || (v69 - v68) > 8)
    {
      operator delete(__p);
    }

    else
    {
      v65 = *__p;
      if (*(v41 + 52) == 1)
      {
        v75[0] = *a7;
        v75[1] = v41;
        sub_134A00();
        sub_1F9814(buf, v75);
        if (buf[16] == 1)
        {
          if (*buf)
          {
            sub_2CCCCC(*buf, 1);
          }

          v42 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
            sub_1A8C0(v42);
          }

          operator delete(__p);
          v43 = v60;
          goto LABEL_80;
        }

        sub_12B604(buf, __dst, v21, a7, &v77, &v78, 0, 0);
        v58 = *buf;
        *v76 = *buf;
        if (v60)
        {
          sub_1A8C0(v60);
        }

        sub_134A00();
        sub_1F9AB4(v75, v76);
        v60 = *(&v58 + 1);
        v25 = v58;
      }

      else
      {
        v44 = sub_5544(25);
        v45 = *v44;
        if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "RouteUtilities.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1501;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "%25s:%-5d Creating input DSP Chain, not caching.", buf, 0x12u);
        }

        sub_12B604(buf, __dst, v21, a7, &v77, &v78, 0, 0);
        *v76 = *buf;
        v46 = *&buf[8];
        v25 = *buf;
        if (v60)
        {
          sub_1A8C0(v60);
        }

        v60 = v46;
        v40 = __p;
      }

      operator delete(v40);
      if (v25)
      {
        goto LABEL_25;
      }
    }
  }

  sub_1C2688(buf, v18, v64, v21, a7, v62, v61, 0);
  *v76 = *buf;
  if (v60)
  {
    sub_1A8C0(v60);
    v25 = v76[0];
    if (!v76[0])
    {
LABEL_78:
      *v76 = 0uLL;
      if ((v82 & 1) == 0)
      {
LABEL_84:
        if (v68)
        {
          operator delete(v68);
        }

        if (v72)
        {
          std::__shared_weak_count::__release_weak(v72);
        }

        goto LABEL_88;
      }

      v43 = 0;
LABEL_80:
      if (*v81)
      {
        operator delete(*v81);
      }

      if (v43)
      {
        sub_1A8C0(v43);
      }

      goto LABEL_84;
    }
  }

  else
  {
    v25 = *buf;
    if (!*buf)
    {
      goto LABEL_78;
    }
  }

LABEL_25:
  *(v25 + 800) = v62;
  if (*(v25 + 392) == 1)
  {
    sub_2C1F48(v25);
    v25 = v76[0];
  }

  if (sub_7E96C())
  {
    v28 = *sub_5544(25);
    v29 = v28;
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3901;
      *&buf[18] = 1024;
      *&buf[20] = v61;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d EnableInputMetering: %d", buf, 0x18u);
    }

    if (v61)
    {
      if (!*(v25 + 1168))
      {
        v30 = *sub_5544(25);
        v31 = v30;
        if (v30)
        {
          v32 = v30;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v25 + 735) < 0)
            {
              sub_54A0(__dst, *(v25 + 712), *(v25 + 720));
            }

            else
            {
              *__dst = *(v25 + 712);
              v80 = *(v25 + 728);
            }

            v47 = __dst;
            if (v80 < 0)
            {
              v47 = __dst[0];
            }

            *buf = 136315650;
            *&buf[4] = "DSPChain.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3907;
            *&buf[18] = 2080;
            *&buf[20] = v47;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enabling InputMeters for dsp chain '%s'", buf, 0x1Cu);
            if (SHIBYTE(v80) < 0)
            {
              operator delete(__dst[0]);
            }
          }
        }

        operator new();
      }
    }

    else
    {
      sub_13B8C8((v25 + 1168), 0);
    }
  }

  goto LABEL_78;
}

void sub_12333C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  v55 = *(v53 - 136);
  if (v55)
  {
    sub_1A8C0(v55);
  }

  operator delete(__p);
  if (*(v53 - 216) == 1)
  {
    v56 = *(v53 - 240);
    if (v56)
    {
      operator delete(v56);
    }
  }

  if (a45)
  {
    sub_1A8C0(a45);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_weak(a35);
  }

  sub_4E0BC(&a36);
  if (a28)
  {
    sub_1A8C0(a28);
  }

  if (a30)
  {
    sub_1A8C0(a30);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1235F4(CFStringRef key, CFStringRef applicationID, _DWORD *a3)
{
  result = 0;
  keyExistsAndHasValidFormat = 0;
  if (key && applicationID)
  {
    *a3 = CFPreferencesGetAppIntegerValue(key, applicationID, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      return 1;
    }

    else
    {
      *a3 = CFPreferencesGetAppBooleanValue(key, applicationID, &keyExistsAndHasValidFormat);
      return keyExistsAndHasValidFormat != 0;
    }
  }

  return result;
}

void sub_123680(uint64_t *a1, int a2, unsigned int a3, _OWORD *a4, void *a5, uint64_t a6, uint64_t a7, unsigned int *a8, void *a9)
{
  v40 = a2;
  v39 = a3;
  *a1 = 0;
  a1[1] = 0;
  sub_C8914(&__p, a3, a4, a5[1], a5[2], a6, a7);
  if (v38 != 1)
  {
    return;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_C9184(&v33, __p, v37, (v37 - __p) >> 3);
  v12 = v33;
  if (v33 == v34)
  {
    v19 = sub_5544(21);
    v20 = sub_5544(25);
    v21 = 0;
    *buf = 0x100000002;
    v22 = *(v19 + 8);
    while (1)
    {
      v23 = *&buf[v21];
      if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
      {
        break;
      }

      v21 += 4;
      if (v21 == 8)
      {
        goto LABEL_14;
      }
    }

    if ((v22 & v23) == 0)
    {
      v19 = v20;
    }

LABEL_14:
    v24 = *v19;
    if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RouteUtilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1411;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Empty DSPChainConfigVector (expected during bringup)", buf, 0x12u);
    }

    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = v34 - v33;
    if ((v34 - v33) >= 0x11)
    {
      v14 = sub_5544(21);
      v15 = sub_5544(25);
      v16 = 0;
      *buf = 0x100000002;
      v17 = *(v14 + 8);
      while (1)
      {
        v18 = *&buf[v16];
        if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
        {
          break;
        }

        v16 += 4;
        if (v16 == 8)
        {
          goto LABEL_21;
        }
      }

      if ((v17 & v18) == 0)
      {
        v14 = v15;
      }

LABEL_21:
      v25 = *v14;
      if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "RouteUtilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1380;
        v42 = 2048;
        v43 = v13 >> 3;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d Get DSP properties returned a list of %lu entries. We currently base DSP on the first entry only.", buf, 0x1Cu);
      }
    }

    v26 = *v12;
    if (*v12)
    {
      *a9 = v26;
      if (*(v26 + 52) == 1)
      {
        v32[0] = *a8;
        v32[1] = v26;
        sub_134A00();
        sub_1F9814(buf, v32);
        if (buf[16] == 1)
        {
          v27 = *buf;
          v28 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          }

          *a1 = v27;
          a1[1] = v28;
          if (v27)
          {
            sub_2CCCCC(v27, 1);
          }

          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }
        }

        else
        {
          sub_12B604(&v31, &v33, a5, a8, &v39, &v40, 0, 0);
          *a1 = v31;
          sub_134A00();
          sub_1F9AB4(v32, a1);
        }
      }

      else
      {
        v29 = sub_5544(25);
        v30 = *v29;
        if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "RouteUtilities.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1404;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%25s:%-5d Creating output DSP Chain, not caching.", buf, 0x12u);
        }

        sub_12B604(buf, &v33, a5, a8, &v39, &v40, 0, 0);
        *a1 = *buf;
      }
    }
  }

  operator delete(v12);
LABEL_39:
  if (v38)
  {
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }
  }
}

void sub_123A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  v25 = *(v23 - 88);
  if (v25)
  {
    sub_1A8C0(v25);
  }

  operator delete(v21);
  if (a21 == 1 && __p)
  {
    operator delete(__p);
  }

  if (v22)
  {
    sub_1A8C0(v22);
  }

  _Unwind_Resume(a1);
}

void sub_123CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_761AC(&__p);
  std::recursive_mutex::~recursive_mutex((v14 + 104));
  sub_98A08(*(v14 + 88));
  v17 = *(v14 + 64);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *v15;
  *v15 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v14 + 32);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_123D6C(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_DDC34(a1, *a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_123DE4(uint64_t *a1)
{
  v1 = a1 + 15;
  v2 = a1[16];
  if (v2 == a1 + 15)
  {
    return 0;
  }

  while (1)
  {
    v4 = v2[3];
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = std::__shared_weak_count::lock(v4);
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v2[2];
    if (!v6)
    {
      sub_1A8C0(v5);
      goto LABEL_8;
    }

    v7 = *(v6 + 144);
    sub_1A8C0(v5);
    if (v7 == 1885889645)
    {
      break;
    }

LABEL_8:
    v2 = v2[1];
    if (v2 == v1)
    {
      return 0;
    }
  }

  sub_8D290(&v14, a1 + 13, "", 1194);
  v16 = 0x676C6F6270617272;
  v17 = 0;
  v10 = sub_59410(v14);
  *(&v12 + 1) = v11;
  *&v12 = v10;
  v13 = (v12 >> 32) >> 32;
  v8 = v13 & (HIDWORD(v10) != 0);
  if (v15)
  {
    sub_1A8C0(v15);
  }

  return v8;
}

uint64_t sub_123ED8(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 1065353216;
  *a1 = off_6CE4D0;
  v13 = a2[1];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = *a4;
  v14 = a4[1];
  *(a1 + 96) = a3;
  *(a1 + 104) = v15;
  *(a1 + 112) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  sub_65234((a1 + 120), a5);
  for (i = *(a5 + 8); i != a5; i = i[1])
  {
    v17 = i[3];
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = i[2];
        if (v20)
        {
          v21 = sub_108CA8(*(v20 + 144));
          sub_1A8C0(v19);
          if (v21)
          {
            v30 = 1;
            goto LABEL_15;
          }
        }

        else
        {
          sub_1A8C0(v18);
        }
      }
    }
  }

  v30 = 0;
LABEL_15:
  *(a1 + 144) = v30;
  if (!*a6)
  {
    sub_16AAB0(&__p, a5);
    memset(v32, 0, sizeof(v32));
    sub_1696DC((a1 + 152), &__p, 1684434036, v32, 0);
  }

  v22 = a6[1];
  *(a1 + 152) = *a6;
  *(a1 + 160) = v22;
  *a6 = 0;
  a6[1] = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = *a8;
  v23 = *(a8 + 8);
  *(a1 + 224) = 0u;
  *(a1 + 208) = v23;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  sub_165D0C(a1 + 272);
  *(a1 + 616) = 0;
  *(a1 + 620) = *(a8 + 24);
  *(a1 + 628) = *(a8 + 32);
  *(a1 + 640) = a7;
  v24 = *(a1 + 152);
  if (v24 && ((*(v24 + 448) & 1) != 0 || *(v24 + 584) || *(v24 + 672) || (v25 = *(v24 + 1160)) != 0 && (*(v25 + 104) & 1) != 0 || *(v24 + 1168)) && (v26 = sub_8C10C(v24), v27 = HIDWORD(v26), (v26 & 0x100000000) != 0))
  {
    v28 = v26 >> 8;
  }

  else
  {
    v26 = *(a8 + 40) | (*(a8 + 44) << 32);
    v28 = v26 >> 8;
    LOBYTE(v27) = *(a8 + 44);
  }

  *(a1 + 652) = v27;
  *(a1 + 648) = v26 | (v28 << 8);
  sub_49BE8(a1 + 656);
  *(a1 + 944) = 0;
  return a1;
}

void sub_124158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_65310(v14 + 15);
  v16 = v14[14];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v14[11];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_13BFA8(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_124214(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  sub_1FB4B0(&v6, a1);
  v2 = v6 ? sub_1FB770(v6) ^ 1 : 1;
  if (v7)
  {
    sub_1A8C0(v7);
  }

  if ((v2 & 1) == 0)
  {
    v4 = 0x100000000;
    v3 = 2;
  }

  else
  {
LABEL_8:
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

void sub_1242A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1242B8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x492492492492492)
    {
      sub_189A00();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_2AE238(v12);
    }

    v13 = 56 * v9;
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    *(v13 + 48) = *(a2 + 6);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v8 = 56 * v9 + 56;
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
  }

  *(a1 + 8) = v8;
}

void sub_1243E4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_22418(a1, 0x67uLL);
}

void sub_124A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v48 - 57) < 0)
  {
    operator delete(*(v48 - 80));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_124C38(uint64_t *a1, uint64_t a2)
{
  sub_5EE3C(buf, a1 + 10, "", 1520);
  v4 = *buf;
  v5 = a1[19];
  if (v5 && ((*(*v5 + 192))(v5) & 1) != 0)
  {
    v6 = 1936092532;
  }

  else
  {
    v6 = 1885762592;
  }

  v7 = (*(*v4 + 128))(v4, &v23, v6);
  if (v27)
  {
    sub_1A8C0(v27);
  }

  if (!v7)
  {
    v9 = a1[28];
    v8 = a1[29];
    if (v9 != v8)
    {
      v10 = *&v23;
      v11 = a1[28];
      while (!sub_5FB04(v11, &v23) || *(v11 + 40) > v10 || *(v11 + 48) < v10)
      {
        v11 += 56;
        if (v11 == v8)
        {
          goto LABEL_17;
        }
      }

      if (v8 != v11)
      {
        v7 = 0;
        if (!a2)
        {
          return v7;
        }

        goto LABEL_27;
      }
    }

LABEL_17:
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_3B86DC(&v20, v9, v8, &v23);
    v13 = sub_5544(23);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_618A4(&v19);
    }

    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_5EE3C(buf, a1 + 10, "", 1539);
    v14 = *buf;
    v15 = a1[19];
    if (v15 && ((*(*v15 + 192))(v15) & 1) != 0)
    {
      v16 = 1936092532;
    }

    else
    {
      v16 = 1885762592;
    }

    v7 = (*(*v14 + 160))(v14, &v23, v16);
    if (v27)
    {
      sub_1A8C0(v27);
    }

    if (a2)
    {
LABEL_27:
      if (!v7)
      {
        v17 = v24;
        *a2 = v23;
        *(a2 + 16) = v17;
        *(a2 + 32) = v25;
      }
    }
  }

  return v7;
}

void sub_124FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_12500C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }
}

void sub_12505C(void *a1, uint64_t a2)
{
  sub_53E8(__p, "");
  sub_1250D4(a1, *(a2 + 16), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1250B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1250D4(void *result, uint64_t a2, const void **a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2)
  {
    sub_12A9BC(v43, *(a2 + 24));
    if ((v44 - 7) < 3)
    {
      sub_129E80(&v40, v43);
      v5 = std::string::append(&v40, " { ", 3uLL);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (*(a3 + 23) >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = a3[1];
      }

      sub_B0848(&v38, v7 + 1);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v38;
      }

      else
      {
        v8 = v38.__r_.__value_.__r.__words[0];
      }

      if (v7)
      {
        if (*(a3 + 23) >= 0)
        {
          v9 = a3;
        }

        else
        {
          v9 = *a3;
        }

        memmove(v8, v9, v7);
      }

      *(&v8->__r_.__value_.__l.__data_ + v7) = 91;
      sub_22170(&__p, *(a2 + 16));
      if ((v37 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v37 & 0x80u) == 0)
      {
        v11 = v37;
      }

      else
      {
        v11 = v36;
      }

      v12 = std::string::append(&v38, p_p, v11);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(&v39, "]: ", 3uLL);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v41;
      }

      else
      {
        v16 = v41.__r_.__value_.__r.__words[0];
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v41.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v40, v16, size);
      v19 = v18->__r_.__value_.__r.__words[0];
      v42[0] = v18->__r_.__value_.__l.__size_;
      *(v42 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
      v20 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      operator new();
    }

    if (*(a3 + 23) >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = a3[1];
    }

    sub_B0848(&v39, v21 + 1);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if (*(a3 + 23) >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      memmove(v22, v23, v21);
    }

    *(&v22->__r_.__value_.__l.__data_ + v21) = 91;
    sub_22170(&v38, *(a2 + 16));
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v38;
    }

    else
    {
      v24 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v38.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v39, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v40, "]: ", 3uLL);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    sub_1257B8(&__p, v43);
    if ((v37 & 0x80u) == 0)
    {
      v30 = &__p;
    }

    else
    {
      v30 = __p;
    }

    if ((v37 & 0x80u) == 0)
    {
      v31 = v37;
    }

    else
    {
      v31 = v36;
    }

    v32 = std::string::append(&v41, v30, v31);
    v33 = v32->__r_.__value_.__r.__words[0];
    v42[0] = v32->__r_.__value_.__l.__size_;
    *(v42 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
    v34 = SHIBYTE(v32->__r_.__value_.__r.__words[2]);
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    operator new();
  }

  return result;
}

void sub_125628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_EF868(v48 - 152);
  sub_20BC1C(v47);
  _Unwind_Resume(a1);
}

uint64_t sub_1257B8(_BYTE *a1, uint64_t a2)
{
  sub_2288C(v11);
  v10[0] = v11;
  v10[1] = v11;
  v10[2] = v11;
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v11;
  v10[6] = v11;
  v10[7] = v11;
  v10[8] = v11;
  v10[9] = v11;
  v10[10] = v11;
  v10[11] = v11;
  v10[12] = v11;
  v10[13] = v11;
  v10[14] = v11;
  v10[15] = a2;
  v4 = *(a2 + 40);
  if (v4 == -1)
  {
    sub_20B4EC();
  }

  v19 = v10;
  (off_6B8D60[v4])(&v19, a2);
  if ((v18 & 0x10) != 0)
  {
    v6 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v6 = v14;
    }

    locale = v13[4].__locale_;
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v5 = 0;
      a1[23] = 0;
      goto LABEL_15;
    }

    locale = v13[1].__locale_;
    v6 = v13[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a1[23] = v5;
  if (v5)
  {
    memmove(a1, locale, v5);
  }

LABEL_15:
  a1[v5] = 0;
  v11[2] = v8;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_125A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1D3DAC(va);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_125A5C(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = v3;
  (*(**(v2 + 32) + 56))(*(v2 + 32), **(v2 + 40), &v4, 8, 0, 0);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t sub_125AFC(void *a1, int a2)
{
  v2 = sub_130F70(a1, a2);
  if (v2 && (v3 = v2[3], !*(v3 + 10)))
  {
    v4 = *v3;
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 | (v5 << 8);
}

void sub_125B3C(uint64_t a1, int a2, int a3, void *a4, uint64_t *a5)
{
  v8 = sub_130F70(a4, a2);
  if (v8)
  {
    v9 = v8[3];
    if (*(v9 + 40) != 7)
    {
      sub_20B4EC();
    }

    sub_129D90(&v20, v9);
    v10 = v21;
    if (v21)
    {
      do
      {
        v11 = v10[3];
        if (*(v11 + 40) != 6)
        {
          sub_20B4EC();
        }

        if (!*v11)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        sub_125D8(v18, *v11);
        v12 = sub_5544(25);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v18;
          if (v19 < 0)
          {
            v14 = v18[0];
          }

          *buf = 136315650;
          v26 = "RouteUtilities.cpp";
          v27 = 1024;
          v28 = 387;
          v29 = 2080;
          v30 = v14;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding conditional overlay tuning %s", buf, 0x1Cu);
        }

        v23[0] = *(v10 + 4) != 0;
        v24 = 0;
        sub_344ADC(buf, a1, a3, v18, v22);
        sub_344400(a5, buf);
        if (v32 < 0)
        {
          operator delete(__p);
        }

        sub_DD7C4(&v28 + 2);
        sub_DD7C4(v23);
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        v10 = *v10;
      }

      while (v10);
      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

    sub_EF820(v15);
    v16 = v20;
    v20 = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }
}

uint64_t sub_125DEC(void *a1, uint64_t *a2)
{
  if (sub_907D4(a1) >= 2)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "DSPGraphChain.cpp";
      v14 = 1024;
      v15 = 114;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Only one DSPProcessorInstance allowed in graph-based chain", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Only one DSPProcessorInstance allowed in graph-based chain");
  }

  v4 = *a2;
  v5 = a2[1];
  v11[0] = v4;
  v11[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_134E90(a1, v11);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return v6;
}

void sub_125F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_12607C(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void sub_1260BC(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      v8 = v4[2];
      v7 = v4[3];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = v6[3];
      v6[2] = v8;
      v6[3] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v4 = v4[1];
      v6 = v6[1];
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    sub_125F60(a1, a1, v4, a3);
  }

  else
  {
    v11 = *(*a1 + 8);
    v12 = *v6;
    *(v12 + 8) = v11;
    *v11 = v12;
    do
    {
      v13 = v6[1];
      --a1[2];
      v14 = v6[3];
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      operator delete(v6);
      v6 = v13;
    }

    while (v13 != a1);
  }
}