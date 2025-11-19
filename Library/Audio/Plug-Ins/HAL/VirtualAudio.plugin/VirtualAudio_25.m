void sub_20815C(uint64_t a1, _DWORD *a2, CFDictionaryRef *a3)
{
  v6 = (*(*a1 + 376))(a1, 1685287015, 1852076912, 0);
  v7 = (*(*a1 + 376))(a1, 1685287015, 1835623283, 0);
  v8 = (*(*a1 + 376))(a1, 1685287015, 1919247987, 0);
  sub_88CE8(&v17, "DSP channels");
  valuePtr = v6;
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr = v7;
  sub_D293C(&v19, "mics", &valuePtr);
  v14 = v8;
  sub_D293C(v20, "refs", &v14);
  v15[0] = &v17;
  v15[1] = 3;
  v9 = sub_69CE8(v15);
  for (i = 0; i != -48; i -= 16)
  {
    v11 = *&v20[i + 8];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *&v20[i];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  *a2 = 8;
  *a3 = v9;
}

void sub_2083C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1D5FAC((v6 + 8));
  sub_1D5FE0(va);
  _Unwind_Resume(a1);
}

void sub_208460(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, unsigned int *a4, UInt32 *a5, float *a6)
{
  if (*(a1 + 308))
  {
    v12 = *(a1 + 128);

    sub_615C8(v12, a2, a3, a4, a5, a6);
  }

  else
  {
    if (a3 != 4 || !a4)
    {
      v13 = sub_5544(14);
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v20 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v10 = *a5;
    if (v10 != (*(*a1 + 32))(a1, a2, 4, a4))
    {
      v15 = sub_5544(14);
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v21 = *&a2->mSelector;
        v23 = a2->mElement;
        sub_22CE0(__p);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = &off_6DDDD0;
      v16[2] = 561211770;
    }

    mScope = a2->mScope;
    if (mScope != 1768845428 && mScope != 1869968496)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "AggregateDevice_CommonBase.cpp";
          v27 = 1024;
          v28 = 3571;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v19, "Precondition failure.");
    }

    *a6 = (*(*a1 + 376))(a1, 1685287015, *a4, 0);
  }
}

void sub_208924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_208958(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, unsigned int *a4, UInt32 *a5, void *a6)
{
  if (*(a1 + 308))
  {
    v12 = *(a1 + 128);

    return sub_615C8(v12, a2, a3, a4, a5, a6);
  }

  else
  {
    if (a3 != 4 || !a4)
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *&a2->mSelector;
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
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "AggregateDevice_CommonBase.cpp";
          v24 = 1024;
          v25 = 3442;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v18, "Precondition failure.");
    }

    v8 = *a4;
    v9 = a2->mElement;
    v10 = *(*a1 + 424);

    return v10();
  }
}

uint64_t sub_208C80(_BYTE *a1, uint64_t *a2, int a3, unsigned int *a4, int *a5, _DWORD *a6)
{
  if (a1[308])
  {
    result = 1;
  }

  else
  {
    if (a3 != 4 || !a4)
    {
      v13 = sub_5544(14);
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v20 = *a2;
        v22 = *(a2 + 2);
        sub_22CE0(__p);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v10 = *a5;
    if (v10 != (*(*a1 + 32))(a1, a2, 4, a4))
    {
      v15 = sub_5544(14);
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v21 = *a2;
        v23 = *(a2 + 2);
        sub_22CE0(__p);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = &off_6DDDD0;
      v16[2] = 561211770;
    }

    v11 = *(a2 + 1);
    if (v11 != 1768845428 && v11 != 1869968496)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "AggregateDevice_CommonBase.cpp";
        v27 = 1024;
        v28 = 3513;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v19, "Precondition failure.");
    }

    result = (*(*a1 + 400))(a1, 1685287015, *a4, 0);
  }

  *a6 = result;
  return result;
}

void sub_2090F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_209124(_BYTE *__src, _BYTE *a2, _DWORD *a3, void *__dst)
{
  v5 = a2 - __src;
  v6 = *a3;
  if ((a2 - __src) >> 3 > v6 >> 3)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "StandardUtilities.h";
      v15 = 1024;
      v16 = 238;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): provided vector exceeds the size of the provided array.", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "provided vector exceeds the size of the provided array.");
  }

  if (!v6)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "StandardUtilities.h";
      v15 = 1024;
      v16 = 239;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): ioDataSize is 0.", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "ioDataSize is 0.");
  }

  if (a2 != __src)
  {
    *a3 = v5 & 0xFFFFFFF8;

    return memmove(__dst, __src, v5);
  }

  return __src;
}

void sub_209354(CFDictionaryRef *a1, uint64_t a2)
{
  sub_1FB4B0(&v58, a2);
  v4 = v58;
  if (!v58)
  {
    goto LABEL_97;
  }

  v5 = (*(*&v58->_os_unfair_lock_opaque + 88))(v58, 0);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  if (!v5 || (v6 = sub_202804(v4), (*(*&v4->_os_unfair_lock_opaque + 256))(v62, v4, 0, v6), !*&v62[8]))
  {
    v8 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v7 = std::__shared_weak_count::lock(*&v62[8]);
  if (v7)
  {
    v8 = *v62;
  }

  else
  {
    v8 = 0;
  }

  if (*&v62[8])
  {
    std::__shared_weak_count::__release_weak(*&v62[8]);
  }

  if (v8)
  {
    v50 = a1;
    (*(*v8 + 144))(v62, v8);
    v9 = *v62;
    v10 = *&v62[8];
    if (*v62 == *&v62[8])
    {
      v8 = 0;
      v11 = 0;
    }

    else
    {
      v8 = 0;
      v11 = 0;
      do
      {
        v12 = v9[1];
        if (v12)
        {
          v13 = std::__shared_weak_count::lock(v12);
          if (v13)
          {
            v14 = v13;
            v15 = *v9;
            if (*v9 && (*(*v15 + 152))(*v9))
            {
              strcpy(valuePtr, "mlovbolg");
              valuePtr[9] = 0;
              *&valuePtr[10] = 0;
              v16 = sub_59410(v15);
              *(&v18 + 1) = v17;
              *&v18 = v16;
              if (((v18 >> 32) & 0x100000000) != 0)
              {
                v19 = *(&v16 + 1);
              }

              else
              {
                v19 = 0.0;
              }

              v20 = v11;
              v2 = v11 >> 2;
              if (((v11 >> 2) + 1) >> 62)
              {
                v56 = v11;
                v57 = 0;
                v55 = 0;
                sub_189A00();
              }

              if (v11 >> 2 != -1)
              {
                sub_1D7C28((v11 >> 2) + 1);
              }

              *(4 * v2) = v19;
              v11 = 4 * v2 + 4;
              memcpy(0, 0, v20);
              v8 = 0;
            }

            sub_1A8C0(v14);
          }
        }

        v9 += 2;
      }

      while (v9 != v10);
      v56 = v11;
      v57 = 0;
      v55 = 0;
    }

    *valuePtr = v62;
    sub_202B60(valuePtr);
    a1 = v50;
    if (v7)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 0;
    if (v7)
    {
LABEL_31:
      sub_1A8C0(v7);
    }
  }

LABEL_32:
  strcpy(__p, "#rsnbolg");
  BYTE1(__p[1]) = 0;
  WORD1(__p[1]) = 0;
  if ((sub_5BA08(v4) & 1) == 0)
  {
    v22 = 0;
    v23 = 0;
    LOBYTE(v60) = 0;
    goto LABEL_37;
  }

  *v62 = 2003329396;
  v62[8] = 0;
  LOBYTE(v64) = 0;
  v21 = sub_59580(v4);
  LODWORD(v54[0]) = v21;
  if (!v21)
  {
    v2 = 0;
    v60 = 0uLL;
    goto LABEL_40;
  }

  sub_1E62AC(valuePtr, v21 >> 4);
  *v62 = sub_5C060(v4);
  if (*v62)
  {
    LOBYTE(v60) = 0;
LABEL_44:
    v25 = *valuePtr;
    if (*valuePtr)
    {
      v22 = 0;
      goto LABEL_46;
    }

    v22 = 0;
    v23 = 0;
LABEL_37:
    v62[0] = 0;
LABEL_38:
    v24 = valuePtr;
    goto LABEL_52;
  }

  sub_20A4D8(&v62[8], valuePtr);
  LOBYTE(v60) = 0;
  if ((v64 & 1) == 0)
  {
    goto LABEL_44;
  }

  v60 = *&v62[8];
  v2 = v63;
  *&v62[16] = 0;
  v63 = 0;
  *&v62[8] = 0;
  v25 = *valuePtr;
  if (!*valuePtr)
  {
LABEL_40:
    v62[0] = 0;
    v22 = 1;
    goto LABEL_51;
  }

  v22 = 1;
LABEL_46:
  *&valuePtr[8] = v25;
  operator delete(v25);
  if ((v64 & 1) != 0 && *&v62[8])
  {
    *&v62[16] = *&v62[8];
    operator delete(*&v62[8]);
    v62[0] = 0;
    if ((v22 & 1) == 0)
    {
LABEL_49:
      v23 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v62[0] = 0;
    if (!v22)
    {
      goto LABEL_49;
    }
  }

LABEL_51:
  *v62 = v60;
  *&v62[16] = v2;
  LOBYTE(v63) = 1;
  v23 = *(&v60 + 1);
  v24 = v62;
LABEL_52:
  memset(valuePtr, 0, sizeof(valuePtr));
  v26 = *v24;
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *v24 = 0;
  if (!*valuePtr)
  {
    if (!v22)
    {
      goto LABEL_58;
    }

LABEL_56:
    if (*v62)
    {
      operator delete(*v62);
    }

    goto LABEL_58;
  }

  operator delete(*valuePtr);
  if (v22)
  {
    goto LABEL_56;
  }

LABEL_58:
  *&v62[8] = 0;
  *&v62[16] = 0;
  *v62 = &v62[8];
  if (v26 != v23)
  {
    v27 = v26;
    do
    {
      *valuePtr = *v27;
      v51 = *&valuePtr[8];
      sub_20A0E8(v62, *valuePtr);
      sub_20A0E8(v62, v51);
      ++v27;
    }

    while (v27 != v23);
    if (*v62 != &v62[8])
    {
      v28 = 0;
      v29 = *v62;
      do
      {
        v30 = v28;
        v31 = *(v29 + 1);
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
            v32 = *(v29 + 2);
            v33 = *v32 == v29;
            v29 = v32;
          }

          while (!v33);
        }

        ++v28;
        v29 = v32;
      }

      while (v32 != &v62[8]);
      if (v30 < 0x1FFFFFFFFFFFFFFFLL)
      {
        sub_1E2544(v28);
      }

      sub_189A00();
    }
  }

  sub_477A0(*&v62[8]);
  if (v26)
  {
    operator delete(v26);
  }

  v34 = v11 != v8;
  (*(*&v4->_os_unfair_lock_opaque + 128))(__p, v4);
  sub_88CE8(v62, "accessory UID");
  if ((v53 & 0x80u) == 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  if ((v53 & 0x80u) == 0)
  {
    v36 = v53;
  }

  else
  {
    v36 = __p[1];
  }

  *&v62[8] = CFStringCreateWithBytes(0, v35, v36, 0x8000100u, 0);
  if (!*&v62[8])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_88CE8(&v62[16], "accessory capabilities");
  *valuePtr = 2 * v34;
  v63 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!v63)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Could not construct");
  }

  if (((*(*&v4->_os_unfair_lock_opaque + 400))(v4) & 1) == 0)
  {
    v45 = sub_5544(14);
    v46 = *v45;
    if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315394;
      *&valuePtr[4] = "PhysicalDevice.h";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 416;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", valuePtr, 0x12u);
    }

    v47 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v47, "Precondition failure.");
  }

  if (sub_1FB770(v4))
  {
    os_unfair_lock_opaque = 0;
  }

  else
  {
    os_unfair_lock_opaque = v4[64]._os_unfair_lock_opaque;
  }

  sub_88CE8(&v64, "accessory available control token");
  *valuePtr = os_unfair_lock_opaque;
  if (!CFNumberCreate(0, kCFNumberIntType, valuePtr))
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v48, "Could not construct");
  }

  sub_88CE8(v66, "accessory supported sample rates");
  v60 = 0uLL;
  v61 = 0;
  sub_47A08(&v60, 0);
  v38 = sub_477F0(&v60);
  *valuePtr = &v60;
  sub_47988(valuePtr);
  v66[1] = v38;
  v39 = (*(*&v4->_os_unfair_lock_opaque + 104))(v4);
  sub_88CE8(&v67, "accessory current sample rate");
  *valuePtr = v39;
  if (!CFNumberCreate(0, kCFNumberDoubleType, valuePtr))
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v49, "Could not construct");
  }

  sub_88CE8(&v69, "accessory input channel gains");
  v70 = sub_20A1B4(&v55);
  v54[0] = v62;
  v54[1] = 6;
  v40 = 0;
  *a1 = sub_69CE8(v54);
  do
  {
    v41 = *&valuePtr[v40 - 8];
    if (v41)
    {
      CFRelease(v41);
    }

    v42 = *(&v69 + v40);
    if (v42)
    {
      CFRelease(v42);
    }

    v40 -= 16;
  }

  while (v40 != -96);
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55)
  {
    operator delete(v55);
  }

LABEL_97:
  if (v59)
  {
    sub_1A8C0(v59);
  }

  if (!v4)
  {
    *a1 = 0;
  }
}

void sub_209E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31)
{
  sub_1A8C0(v32);
  *(v33 - 176) = &a30;
  sub_202B60((v33 - 176));
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (a25)
  {
    sub_1A8C0(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_20A070(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_868A0(result, a4);
  }

  return result;
}

uint64_t sub_20A0E8(uint64_t result, double a2)
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
      v4 = *(v2 + 4);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

CFArrayRef sub_20A1B4(float **a1)
{
  v2 = a1[1] - *a1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_47A08(&v12, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v13;
    do
    {
      v6 = *v3;
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          sub_189A00();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          sub_1DB8DC(v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        sub_20A34C((8 * v7), v6);
        v16 += 8;
        sub_49FBC(&v12, v15);
        v5 = v13;
        sub_4A06C(v15);
      }

      else
      {
        sub_20A34C(v5++, *v3);
      }

      v13 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v10 = sub_477F0(&v12);
  v15[0] = &v12;
  sub_47988(v15);
  return v10;
}

void sub_20A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_47988(&a13);
  _Unwind_Resume(a1);
}

CFNumberRef sub_20A34C(CFNumberRef *a1, float a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

const void **sub_20A3F8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFNumberRef sub_20A42C(CFNumberRef *a1, double a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

uint64_t sub_20A4D8(uint64_t a1, const void **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = v4 - *a2;
      v6 = *(a1 + 16);
      v7 = *a1;
      if (v6 - *a1 < v5)
      {
        v8 = v5 >> 4;
        if (v7)
        {
          *(a1 + 8) = v7;
          operator delete(v7);
          v6 = 0;
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        if (!(v8 >> 60))
        {
          v9 = v6 >> 3;
          if (v6 >> 3 <= v8)
          {
            v9 = v5 >> 4;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFF0)
          {
            v10 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v10 = v9;
          }

          sub_1E6324(a1, v10);
        }

        sub_189A00();
      }

      v11 = *(a1 + 8);
      v12 = v11 - v7;
      if (v11 - v7 >= v5)
      {
        if (v4 != v3)
        {
          memmove(v7, v3, v5);
        }

        v15 = &v7[v5];
      }

      else
      {
        if (v11 != v7)
        {
          memmove(*a1, *a2, v11 - v7);
          v11 = *(a1 + 8);
        }

        v13 = &v3[v12];
        v14 = v4 - &v3[v12];
        if (v14)
        {
          memmove(v11, v13, v14);
        }

        v15 = &v11[v14];
      }

      *(a1 + 8) = v15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_20A634(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_20A634(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1E6324(result, a4);
  }

  return result;
}

void sub_20A694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef sub_20A6B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_47A08(&v12, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = v13;
    v6 = 4 * v3;
    do
    {
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          sub_189A00();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          sub_1DB8DC(v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        sub_49CF4((8 * v7), *v4);
        v16 += 8;
        sub_49FBC(&v12, v15);
        v5 = v13;
        sub_4A06C(v15);
      }

      else
      {
        sub_49CF4(v5++, *v4);
      }

      v13 = v5;
      ++v4;
      v6 -= 4;
    }

    while (v6);
  }

  v10 = sub_477F0(&v12);
  v15[0] = &v12;
  sub_47988(v15);
  return v10;
}

void sub_20A7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_47988(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_20A838(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "peak power budget range");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_20A884(unsigned int a1)
{
  result = 20 * a1;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_20A96C(exception, "arithmetic multiplication overflow");
  }

  return result;
}

uint64_t sub_20A8FC(int a1)
{
  v1 = __CFADD__(a1, 12);
  result = (a1 + 12);
  if (v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_20A96C(exception, "arithmetic addition overflow");
  }

  return result;
}

std::runtime_error *sub_20A96C(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  return result;
}

uint64_t sub_20A9A0(const __CFString *cf)
{
  if (cf)
  {
    CFRetain(cf);
    v7[1] = cf;
    v2 = CFGetTypeID(cf);
    if (v2 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  v7[0] = @"loudness normalizer reset";
  if (sub_A5790(cf, v7))
  {
    v6 = @"haptics protection mode";
    if (sub_A5790(cf, &v6))
    {
      v7[0] = @"dsp chain name";
      if (sub_A5790(cf, v7))
      {
        v7[0] = @"dsp chain active";
        v3 = 8 * (sub_A5790(cf, v7) == kCFCompareEqualTo);
        if (!cf)
        {
          return v3;
        }
      }

      else
      {
        v3 = 8;
        if (!cf)
        {
          return v3;
        }
      }

      goto LABEL_9;
    }
  }

  v3 = 4;
  if (cf)
  {
LABEL_9:
    CFRelease(cf);
  }

  return v3;
}

void sub_20AACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  sub_1DB0E0(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_20AAFC(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, unsigned int *a4)
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
        sub_22CE0(__p);
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
          v24 = 3480;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v17, "Precondition failure.");
    }

    LODWORD(__p[0]) = 0;
    LOBYTE(v18) = 0;
    v6 = *a4;
    if (((*(*a1 + 408))(a1, 1685287015, v6, __p, &v18, 0, mScope != 1768845428) & 1) == 0)
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "AggregateDevice_CommonBase.cpp";
        v23 = 1024;
        v24 = 3492;
        v25 = 1024;
        LODWORD(v26) = v6;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): GetPropertyDataSizeForDSPGraphProperty() failed for propertyID = %u", buf, 0x18u);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      *v14 = &off_6DDDD0;
      v14[2] = 1852797029;
    }

    return LODWORD(__p[0]);
  }
}

uint64_t sub_20AEF0(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 == 1936876644 || *a2 == 1936879204;
  if (!v2)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *v13 = 136315394;
        *&v13[4] = "AggregateDevice_CommonBase.cpp";
        *&v13[12] = 1024;
        *&v13[14] = 3161;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v13, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = a2[1];
  if (v4 != 1869968496 && v4 != 1768845428)
  {
    return 0;
  }

  v2 = v4 == 1768845428;
  v6 = 616;
  if (v2)
  {
    v6 = 592;
  }

  v7 = a1 + v6;
  if (*(v7 + 16) != 1)
  {
    return 0;
  }

  sub_5659C(v13, (*(v7 + 8) + 16), "", 3170);
  v8 = (*(**v13 + 24))(*v13, a2);
  if (*&v13[8])
  {
    sub_1A8C0(*&v13[8]);
  }

  return v8;
}

uint64_t sub_20B0E0(uint64_t a1)
{
  if (!MGGetBoolAnswer() || !(*(*a1 + 368))(a1, 1685287015, 1852076912, 0) || !(*(*a1 + 368))(a1, 1685287015, 1835623283, 0))
  {
    return 0;
  }

  v2 = *(*a1 + 368);

  return v2(a1, 1685287015, 1919247987, 0);
}

uint64_t sub_20B200(uint64_t a1)
{
  (*(*a1 + 432))(v3);
  v1 = 0;
  if (v4 == 1)
  {
    v1 = sub_DDE9C(v3, 2);
    if (v4)
    {
      sub_DDE50(v3);
    }
  }

  return v1;
}

void sub_20B290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_DDE50(&a9);
  }

  _Unwind_Resume(exception_object);
}

size_t *sub_20B2B8(size_t *result, __int128 *a2, __int128 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = v5[31];
      v7 = v5[32];
      if (v6 != v7)
      {
        while (*v6 != *v4)
        {
          v6 += 2;
          if (v6 == v7)
          {
            goto LABEL_8;
          }
        }
      }

      if (v6 == v7)
      {
LABEL_8:
        result = sub_A0540(v5 + 31, v4);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_20B340(uint64_t a1)
{
  if (*(a1 + 8) == 1819304813)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if ((*(a1 + 12) & 0x20) != 0)
      {
        v2 = 1;
      }

      else
      {
        v2 = *(a1 + 28);
        if (!v2)
        {
          v1 = 0;
          return v1 != *(a1 + 32);
        }
      }

      v1 = 8 * (v1 / v2);
    }

    return v1 != *(a1 + 32);
  }

  v4 = CAVerboseAbort();
  return sub_20B3A8(v4);
}

uint64_t sub_20B3A8(_DWORD *a1, int a2)
{
  result = a1[3];
  if (a1[2] == 1819304813)
  {
    v4 = result & 0x7FFFFFFF;
    if ((result & 0x7FFFFFFF) == 0)
    {
      v4 = result;
    }

    if (a2)
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFBF;
    }

    if (!sub_20B340(a1))
    {
      v5 |= 8u;
    }

    v6 = sub_20B340(a1);
    v7 = a1[8];
    if ((v6 & 1) == 0 && (v7 & 7) == 0)
    {
      v5 &= ~0x10u;
    }

    v8 = v5 & 0xFFFFFFFB;
    if ((v5 & 1) == 0)
    {
      v8 = v5;
    }

    v9 = (v8 & 8) == 0 || v7 > 8;
    v10 = v8 & 2;
    if (v9)
    {
      v10 = v8;
    }

    if (a1[7] == 1)
    {
      v10 &= ~0x20u;
    }

    if (v10)
    {
      return v10;
    }

    else
    {
      return 0x80000000;
    }
  }

  return result;
}

const void **sub_20B45C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_20B490(caulk::concurrent::message *this)
{
  *this = off_6B8D48;
  v2 = *(this + 4);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_20B4EC()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_20B538(uint64_t a1)
{
  v1 = *(*a1 + 120);
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    sub_129E80(__p, v1);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v8 = "VAVariant.cpp";
    v9 = 1024;
    v10 = 46;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to return a single string for Variant %s.", buf, 0x1Cu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_20B640(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 56);
  if (*(v4 + 23) < 0)
  {
    v4[1] = 4;
    v4 = *v4;
  }

  else
  {
    *(v4 + 23) = 4;
  }

  strcpy(v4, "func");
  if (v3)
  {
    sub_1A8C0(v3);
  }
}

void sub_20B698(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_12AFB0(v4, a2);
  v3 = *(v2 + 72);
  if (*(v3 + 23) < 0)
  {
    v3[1] = 4;
    v3 = *v3;
  }

  else
  {
    *(v3 + 23) = 4;
  }

  strcpy(v3, "list");
  sub_87980(v4);
}

void sub_20B704(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_1A8C0(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_20B75C(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *(v2 + 48);
  if (*(v4 + 23) < 0)
  {
    v4[1] = 3;
    v4 = *v4;
  }

  else
  {
    *(v4 + 23) = 3;
  }

  *v4 = 7500915;
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_20B7D0(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *(v2 + 40);
  if (*(v4 + 23) < 0)
  {
    v4[1] = 4;
    v4 = *v4;
  }

  else
  {
    *(v4 + 23) = 4;
  }

  strcpy(v4, "dict");
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t sub_20B848(uint64_t result)
{
  v1 = *(*result + 32);
  if (*(v1 + 23) < 0)
  {
    v1[1] = 5;
    v1 = *v1;
  }

  else
  {
    *(v1 + 23) = 5;
  }

  strcpy(v1, "void*");
  return result;
}

uint64_t sub_20B888(uint64_t result)
{
  v1 = *(*result + 24);
  if (*(v1 + 23) < 0)
  {
    v1[1] = 3;
    v1 = *v1;
  }

  else
  {
    *(v1 + 23) = 3;
  }

  *v1 = 3421798;
  return result;
}

uint64_t sub_20B8C0(uint64_t result)
{
  v1 = *(*result + 16);
  if (*(v1 + 23) < 0)
  {
    v1[1] = 3;
    v1 = *v1;
  }

  else
  {
    *(v1 + 23) = 3;
  }

  *v1 = 3289958;
  return result;
}

uint64_t sub_20B8F8(uint64_t result)
{
  v1 = *(*result + 8);
  if (*(v1 + 23) < 0)
  {
    v1[1] = 3;
    v1 = *v1;
  }

  else
  {
    *(v1 + 23) = 3;
  }

  *v1 = 3289973;
  return result;
}

uint64_t ***sub_20B930(uint64_t ***result)
{
  v1 = **result;
  if (*(v1 + 23) < 0)
  {
    v1[1] = 4;
    v1 = *v1;
  }

  else
  {
    *(v1 + 23) = 4;
  }

  strcpy(v1, "BOOL");
  return result;
}

void sub_20B96C(uint64_t a1)
{
  v1 = *(*a1 + 120);
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    sub_129E80(__p, v1);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v8 = "VAVariant.cpp";
    v9 = 1024;
    v10 = 46;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to return a single string for Variant %s.", buf, 0x1Cu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_20BA74(uint64_t a1)
{
  v1 = *(*a1 + 120);
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    sub_129E80(__p, v1);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v8 = "VAVariant.cpp";
    v9 = 1024;
    v10 = 46;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to return a single string for Variant %s.", buf, 0x1Cu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_20BB7C(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *(v2 + 96);
  std::ostream::operator<<();
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_20BBDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BA7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_20BBF0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 80);
  return std::ostream::operator<<();
}

uint64_t sub_20BC04(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 72);
  return std::ostream::operator<<();
}

void *sub_20BC1C(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    v3[1] = v2;
    *v2 = v3;
    v1[2] = 0;
    while (result != v1)
    {
      v4 = result[1];
      sub_D16F0(result);
      result = v4;
    }
  }

  return result;
}

void sub_20BC7C(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_20BD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_20BDB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return a1;
}

void *sub_20BE18(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

double sub_20BE54(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

float sub_20BE64(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void sub_20BE74(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_20BF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_20BFB0(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_20C0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_20C0EC(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_20C1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_20C228(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_20C32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_20C364(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_20C468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_20C4A0(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_20C5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_20C5DC(float a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    *(a3 + 92) = a1;
LABEL_5:
    sub_30C0CC(a3);
    return 0;
  }

  if (a4 >= 0x3E8)
  {
    v4 = a4 % 0x3E8;
    if (a4 % 0x3E8 >= *(a3 + 88))
    {
      return 4294956418;
    }

    a4 = 1000 * (a4 / 0x3E8);
  }

  else
  {
    v4 = 0;
  }

  result = 4294956418;
  if (a4 <= 2999)
  {
    if (a4 == 1000)
    {
      *(*(a3 + 64) + 20 * v4) = a1;
      goto LABEL_5;
    }

    if (a4 == 2000)
    {
      *(*(a3 + 64) + 20 * v4 + 4) = a1;
      goto LABEL_5;
    }
  }

  else
  {
    switch(a4)
    {
      case 0xBB8u:
        *(*(a3 + 64) + 20 * v4 + 8) = a1;
        goto LABEL_5;
      case 0xFA0u:
        *(*(a3 + 64) + 20 * v4 + 12) = a1;
        goto LABEL_5;
      case 0x1388u:
        *(*(a3 + 64) + 20 * v4 + 16) = a1;
        goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_20C6F0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, float *a6)
{
  if (a3)
  {
    if (a3 >= 0x3E8)
    {
      v6 = a3 % 0x3E8;
      if (a3 % 0x3E8 >= *(a2 + 88))
      {
        return 4294956418;
      }

      a3 = 1000 * (a3 / 0x3E8);
    }

    else
    {
      v6 = 0;
    }

    result = 4294956418;
    if (a3 <= 2999)
    {
      if (a3 == 1000)
      {
        v9 = *(*(a2 + 64) + 20 * v6);
      }

      else
      {
        if (a3 != 2000)
        {
          return result;
        }

        v9 = *(*(a2 + 64) + 20 * v6 + 4);
      }

      v7 = v9;
    }

    else
    {
      switch(a3)
      {
        case 0xBB8u:
          v7 = *(*(a2 + 64) + 20 * v6 + 8);
          break;
        case 0xFA0u:
          v7 = *(*(a2 + 64) + 20 * v6 + 12);
          break;
        case 0x1388u:
          v7 = *(*(a2 + 64) + 20 * v6 + 16);
          break;
        default:
          return result;
      }
    }
  }

  else
  {
    v7 = *(a2 + 92);
  }

  result = 0;
  *a6 = v7;
  return result;
}

uint64_t sub_20C7E8(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a4)
  {
    return 4294956430;
  }

  if (a3)
  {
    if (a3 != 36)
    {
      if (a3 == 21)
      {
        *(a2 + 96) = *a6;
        sub_30C0CC(a2);
        return 0;
      }

      return 4294956417;
    }

    if (a7 == 16 && *(a6 + 8))
    {
      CFRelease(*(a2 + 184));
      *(a2 + 176) = *a6;
      CFRetain(*(a2 + 184));
      return 0;
    }

    return 4294956445;
  }

  else
  {
    if (a7 != 8)
    {
      return 4294956417;
    }

    v10 = *a6;

    return sub_30BDE4(a2, v10);
  }
}

uint64_t sub_20C8A8(int a1, uint64_t a2, int a3, int a4, unsigned int a5, char *buffer, _DWORD *a7)
{
  if (a4)
  {
    return 4294956430;
  }

  result = 4294956417;
  if (a3 <= 10)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        v20 = *(a2 + 88);
        if (*a7 != 4 * (5 * v20 + 1))
        {
          return 4294956445;
        }

        if (buffer)
        {
          *buffer = 0;
          v20 = *(a2 + 88);
        }

        if (!v20)
        {
          return 0;
        }

        v21 = 0;
        v22 = 5;
        do
        {
          if (buffer)
          {
            *&buffer[4 * (v22 - 4)] = v21 + 1000;
            *&buffer[4 * (v22 - 3)] = v21 + 2000;
            *&buffer[4 * (v22 - 2)] = v21 + 3000;
            *&buffer[4 * (v22 - 1)] = v21 + 4000;
            *&buffer[4 * v22] = v21 + 5000;
            v20 = *(a2 + 88);
          }

          result = 0;
          ++v21;
          v22 += 5;
        }

        while (v21 < v20);
        return result;
      }

      if (a3 != 4)
      {
        return result;
      }

      *(buffer + 24) = 0;
      *(buffer + 7) = 0;
      if (!a5)
      {
        *(buffer + 9) = @"global gain";
        *(buffer + 24) = 0x8000000;
        CFStringGetCString(@"global gain", buffer, 64, 0x8000100u);
        *(buffer + 20) = 13;
        *(buffer + 84) = 0x41C00000C2C00000;
        *(buffer + 23) = 0;
        v23 = *(buffer + 24) | 0xC0000000;
LABEL_71:
        result = 0;
        *(buffer + 24) = v23;
        return result;
      }

      if (a5 >= 0x3E8)
      {
        v11 = a5 % 0x3E8;
        if (a5 % 0x3E8 >= *(a2 + 88))
        {
          return 4294956418;
        }

        a5 = 1000 * (a5 / 0x3E8);
      }

      else
      {
        v11 = 0;
      }

      v24 = v11 + 1;
      result = 4294956418;
      if (a5 <= 2999)
      {
        if (a5 != 1000)
        {
          if (a5 != 2000)
          {
            return result;
          }

          *(buffer + 9) = @"type";
          *(buffer + 24) = 0x8000000;
          CFStringGetCString(@"type", buffer, 64, 0x8000100u);
          *(buffer + 16) = v24;
          v25 = *(buffer + 24);
          *(buffer + 20) = 1;
          v27 = 0x4120000000000000;
          goto LABEL_67;
        }

        *(buffer + 9) = @"bypass";
        *(buffer + 24) = 0x8000000;
        CFStringGetCString(@"bypass", buffer, 64, 0x8000100u);
        *(buffer + 16) = v24;
        v25 = *(buffer + 24);
        *(buffer + 20) = 2;
        *(buffer + 84) = 0x3F80000000000000;
        v26 = 1065353216;
      }

      else
      {
        if (a5 != 3000)
        {
          if (a5 != 4000)
          {
            if (a5 != 5000)
            {
              return result;
            }

            *(buffer + 9) = @"bandwidth";
            *(buffer + 24) = 0x8000000;
            CFStringGetCString(@"bandwidth", buffer, 64, 0x8000100u);
            *(buffer + 16) = v24;
            v25 = *(buffer + 24);
            *(buffer + 20) = 21;
            *(buffer + 84) = 0x40A000003D4CCCCDLL;
            v26 = 1056964608;
            goto LABEL_69;
          }

          *(buffer + 9) = @"gain";
          *(buffer + 24) = 0x8000000;
          CFStringGetCString(@"gain", buffer, 64, 0x8000100u);
          *(buffer + 16) = v24;
          v25 = *(buffer + 24);
          *(buffer + 20) = 13;
          v27 = 0x41C00000C2C00000;
LABEL_67:
          *(buffer + 84) = v27;
          *(buffer + 23) = 0;
LABEL_70:
          v23 = v25 | 0xC0100000;
          goto LABEL_71;
        }

        *(buffer + 9) = @"frequency";
        *(buffer + 24) = 0x8000000;
        CFStringGetCString(@"frequency", buffer, 64, 0x8000100u);
        *(buffer + 16) = v24;
        v25 = *(buffer + 24);
        *(buffer + 10) = 0x4120000000000008;
        v28 = *(a2 + 16) * 0.49000001;
        *(buffer + 22) = v28;
        v26 = 1148846080;
      }

LABEL_69:
      *(buffer + 23) = v26;
      goto LABEL_70;
    }

    *buffer = 0;
    values = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    LOWORD(v34) = 257;
    sub_A1CA4(&values, @"version", 0);
    sub_A1CA4(&values, @"type", 1635083896);
    sub_A1CA4(&values, @"subtype", 1936286821);
    sub_A1CA4(&values, @"manufacturer", 1634758764);
    Mutable = CFDataCreateMutable(0, 0);
    *bytes = 0;
    CFDataAppendBytes(Mutable, bytes, 8);
    *v31 = bswap32(((*(a2 + 72) - *(a2 + 64)) >> 2) + 1);
    CFDataAppendBytes(Mutable, v31, 4);
    v13 = bswap32(*(a2 + 92));
    *v29 = 0;
    v30 = v13;
    CFDataAppendBytes(Mutable, v29, 8);
    if (*(a2 + 88))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        *v29 = bswap32(v15 + 1000);
        v30 = bswap32(COERCE_UNSIGNED_INT(*(*(a2 + 64) + v14)));
        CFDataAppendBytes(Mutable, v29, 8);
        *v29 = bswap32(v15 + 2000);
        v30 = bswap32(COERCE_UNSIGNED_INT(*(*(a2 + 64) + v14 + 4)));
        CFDataAppendBytes(Mutable, v29, 8);
        *v29 = bswap32(v15 + 3000);
        v30 = bswap32(*(*(a2 + 64) + v14 + 8));
        CFDataAppendBytes(Mutable, v29, 8);
        *v29 = bswap32(v15 + 4000);
        v30 = bswap32(*(*(a2 + 64) + v14 + 12));
        CFDataAppendBytes(Mutable, v29, 8);
        *v29 = bswap32(v15 + 5000);
        v30 = bswap32(*(*(a2 + 64) + v14 + 16));
        CFDataAppendBytes(Mutable, v29, 8);
        ++v15;
        v14 += 20;
      }

      while (v15 < *(a2 + 88));
    }

    if (BYTE1(v34) == 1 && Mutable && values)
    {
      CFDictionarySetValue(values, @"data", Mutable);
    }

    CFRelease(Mutable);
    if (BYTE1(v34) == 1)
    {
      v16 = *(a2 + 184);
      v17 = values;
      if (!v16 || !values)
      {
LABEL_35:
        if (v17)
        {
          CFRetain(v17);
          v18 = values;
        }

        else
        {
          v18 = 0;
        }

        *buffer = v18;
        sub_A1D30(&values);
        return 0;
      }

      CFDictionarySetValue(values, @"name", v16);
    }

    v17 = values;
    goto LABEL_35;
  }

  if (a3 > 20)
  {
    if (a3 == 21)
    {
      result = 0;
      v19 = *(a2 + 96);
      goto LABEL_39;
    }

    if (a3 != 36)
    {
      return result;
    }

    *buffer = *(a2 + 176);
    result = *(a2 + 184);
    if (!result)
    {
      return result;
    }

    CFRetain(result);
    return 0;
  }

  if (a3 == 11)
  {
    result = 0;
    v19 = 1;
LABEL_39:
    *buffer = v19;
    return result;
  }

  if (a3 != 16)
  {
    return result;
  }

  if (a5 < 0x3E8)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a5 % 0x3E8 < *(a2 + 88) && 1000 * (a5 / 0x3E8) == 2000)
  {
    if (buffer)
    {
      values = @"Parametric";
      v34 = @"Butterworth Low Pass";
      v35 = @"Butterworth High Pass";
      v36 = @"Resonant Low Pass";
      v37 = @"Resonant High Pass";
      v38 = @"Band Pass";
      v39 = @"Band Stop";
      v40 = @"Low Shelf";
      v41 = @"High Shelf";
      v42 = @"Resonant Low Shelf";
      v43 = @"Resonant High Shelf";
      v10 = CFArrayCreate(0, &values, 11, 0);
      result = 0;
      *buffer = v10;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_20D030(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int *a6, char *a7)
{
  v7 = 0;
  if (a4)
  {
    result = 4294956430;
    goto LABEL_22;
  }

  result = 4294956417;
  if (a3 <= 10)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        v7 = 0;
        v9 = 20 * *(a2 + 88) + 4;
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_22;
        }

        v9 = 104;
      }

      goto LABEL_21;
    }

    v7 = 1;
    goto LABEL_16;
  }

  if (a3 <= 20)
  {
    if (a3 != 11)
    {
      if (a3 != 16)
      {
        goto LABEL_22;
      }

      v7 = 0;
LABEL_16:
      v9 = 8;
      goto LABEL_21;
    }

    v7 = 0;
LABEL_19:
    v9 = 4;
    goto LABEL_21;
  }

  if (a3 == 21)
  {
    v7 = 1;
    goto LABEL_19;
  }

  if (a3 != 36)
  {
    goto LABEL_22;
  }

  v7 = 1;
  v9 = 16;
LABEL_21:
  result = 0;
  *a6 = v9;
LABEL_22:
  if (a7)
  {
    *a7 = v7;
  }

  return result;
}

void sub_20D0EC(uint64_t a1, char **a2)
{
  v2 = *a2;
  a2[1] = *a2;
  v3 = a2[2];
  if (v2 >= v3)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 2);
    v5 = 2 * v4;
    if (2 * v4 <= 1)
    {
      v5 = 1;
    }

    if (v4 >= 0xAAAAAAAAAAAAAAALL)
    {
      v6 = 0x1555555555555555;
    }

    else
    {
      v6 = v5;
    }

    sub_1E6598(v6);
  }

  qmemcpy(v2, "xfuaedislppa", 12);
  a2[1] = v2 + 12;
}

void sub_20D1D0(uint64_t a1)
{
  sub_20D208(a1);

  operator delete();
}

void *sub_20D208(uint64_t a1)
{
  *a1 = off_6B8F28;
  v2 = *(a1 + 24);
  if (v2 != *(a1 + 32))
  {
    v3 = *(a1 + 16);
    v4 = *(v2 + 16);
    AUPBUnregisterAU();
    v6 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v5 != v6)
    {
      v7 = v5 - (v6 + 24);
      if (v5 != v6 + 24)
      {
        memmove(*(a1 + 24), (v6 + 24), v5 - (v6 + 24));
      }

      *(a1 + 32) = v6 + v7;
    }
  }

  return sub_37EB84(a1);
}

uint64_t sub_20D2E4(int a1, AudioObjectID inObjectID, AudioObjectPropertyAddress *inAddress, UInt32 inQualifierDataSize, void *inQualifierData)
{
  outDataSize = 0;
  if (AudioObjectGetPropertyDataSize(inObjectID, inAddress, inQualifierDataSize, inQualifierData, &outDataSize))
  {
    return 0;
  }

  else
  {
    return outDataSize;
  }
}

BOOL sub_20D32C(int a1, AudioObjectID inObjectID, AudioObjectPropertyAddress *inAddress)
{
  outIsSettable = 0;
  IsPropertySettable = AudioObjectIsPropertySettable(inObjectID, inAddress, &outIsSettable);
  return outIsSettable && IsPropertySettable == 0;
}

void sub_20D644(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x20D638);
}

void sub_20D6B8(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x20D6ACLL);
}

void sub_20D714(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B8FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_20D788(caulk::concurrent::message *this)
{
  *this = off_6B9118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_20D7F8(caulk::concurrent::message *this)
{
  *this = off_6B9118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_20D854(void *a1)
{
  if (a1)
  {
    sub_20D854(*a1);
    sub_20D854(a1[1]);
    sub_ED13C((a1 + 4));

    operator delete(a1);
  }
}

void sub_20D8A8()
{
  sub_921B4(&v11);
  v0 = v11;
  atomic_store(FigCaptureSpeakerInterferenceMitigationIsRequired() != 0, &v11[1].__m_.__opaque[16]);
  v1 = sub_5544(25);
  v2 = *v1;
  if (*v1 && os_log_type_enabled(*v1, OS_LOG_TYPE_INFO))
  {
    v3 = atomic_load(&v0[1].__m_.__opaque[16]);
    *&buf[4] = "SpeakerInterferenceMitigationIODelegate.cpp";
    *buf = 136315650;
    if (v3)
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }

    *&buf[12] = 1024;
    *&buf[14] = 36;
    *&buf[18] = 2080;
    *&buf[20] = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d The speaker interference mitigation requirement was set to %s", buf, 0x1Cu);
  }

  std::mutex::lock(v0);
  sig = v0[1].__m_.__sig;
  if (sig != v0[1].__m_.__opaque)
  {
    do
    {
      if (sig[55] < 0)
      {
        sub_54A0(buf, *(sig + 4), *(sig + 5));
      }

      else
      {
        *buf = *(sig + 2);
        *&buf[16] = *(sig + 6);
      }

      v6 = *(sig + 8);
      *&buf[24] = *(sig + 7);
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (v14)
        {
          v7 = std::__shared_weak_count::lock(v14);
          if (v7)
          {
            if (*&buf[24])
            {
              atomic_load(&v0[1].__m_.__opaque[16]);
              sub_92664(*&buf[24]);
            }

            sub_1A8C0(v7);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v8 = *(sig + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(sig + 2);
          v10 = *v9 == sig;
          sig = v9;
        }

        while (!v10);
      }

      sig = v9;
    }

    while (v9 != v0[1].__m_.__opaque);
  }

  std::mutex::unlock(v0);
  if (v12)
  {
    sub_1A8C0(v12);
  }
}

void sub_20DD68(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, (a1 + 24), kFigCaptureNotification_SpeakerInterferenceMitigationRequiredChanged, 0);
  v3 = sub_5544(25);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "SpeakerInterferenceMitigationIODelegate.cpp";
    v7 = 1024;
    v8 = 98;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Central speaker interference mitigation handler is destroyed", &v5, 0x12u);
  }

  sub_20D854(*(a1 + 96));
  std::mutex::~mutex((a1 + 24));
}

void sub_20DE54(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_20DE60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B9080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_20DED4(caulk::concurrent::message *this)
{
  *this = off_6B9118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_20DF44(caulk::concurrent::message *this)
{
  *this = off_6B9118;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_20DFA0(uint64_t a1)
{
  sub_13F174(a1);

  operator delete();
}

uint64_t sub_20DFDC(uint64_t a1, uint64_t a2)
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

void sub_20E05C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B90B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_20E0D0(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886742895 && a2 != 1886742889)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_USB_IDAM_Aspen.cpp";
      v15 = 1024;
      v16 = 133;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_USB_IDAM_Aspen.cpp";
        v15 = 1024;
        v16 = 134;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

uint64_t sub_20E2B0(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if ((sub_289EC4() & 1) != 0 && (*(*a1 + 88))(a1, 0))
  {
    sub_15DCEC();
  }

  if ((*(*a1 + 88))(a1, 1))
  {
    sub_15DCEC();
  }

  return 1;
}

void sub_20E900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25)
{
  if (*(v25 - 113) < 0)
  {
    operator delete(*(v25 - 136));
  }

  sub_1E19A0(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_20E9DC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_318678(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_1A8C0(*(&v4 + 1));
  }

  return v3;
}

void sub_20EA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_20EA40(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_318678(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_1A8C0(*(&v4 + 1));
  }

  return v3;
}

void sub_20EA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_20EC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  _Unwind_Resume(a1);
}

void sub_20ECC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD3E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_20ED38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_20EDAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_20EE20(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

float sub_20EE5C(uint64_t a1, float a2)
{
  v7 = a2;
  v6 = 4;
  v2 = *(a1 + 96);
  v4 = 0x676C6F6264623276;
  v5 = 0;
  (*(*v2 + 40))(v2, &v4, 0, 0, &v6, &v7);
  return v7;
}

float sub_20EED4(uint64_t a1, float a2)
{
  v7 = a2;
  v6 = 4;
  v2 = *(a1 + 96);
  v4 = 0x676C6F6276326462;
  v5 = 0;
  (*(*v2 + 40))(v2, &v4, 0, 0, &v6, &v7);
  return v7;
}

uint64_t sub_20EF4C(uint64_t a1, float a2)
{
  v6 = a2;
  v2 = *(a1 + 96);
  v4 = 0x676C6F62766F6C64;
  v5 = 0;
  return (*(*v2 + 48))(v2, &v4, 0, 0, 4, &v6);
}

float sub_20EFB8(uint64_t a1)
{
  v5 = 4;
  v6 = 0.0;
  v1 = *(a1 + 96);
  v3 = 0x676C6F62766F6C64;
  v4 = 0;
  (*(*v1 + 40))(v1, &v3, 0, 0, &v5, &v6);
  return v6;
}

float sub_20F02C(uint64_t a1)
{
  v7 = 0;
  v8 = 0.0;
  v6 = 16;
  v1 = *(a1 + 96);
  strcpy(buf, "#bdvbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  (*(*v1 + 40))(v1, buf, 0, 0, &v6, &v7);
  if (v8 > 3.40282347e38)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Control.cpp";
      v10 = 1024;
      v11 = 79;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::overflow_error): value exceeded the MAXFLOAT.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_20A96C(exception, "value exceeded the MAXFLOAT.");
  }

  return v8;
}

float sub_20F1B0(uint64_t a1)
{
  v7[0] = 0.0;
  v7[1] = 0.0;
  v6 = 16;
  v1 = *(a1 + 96);
  strcpy(buf, "#bdvbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  (*(*v1 + 40))(v1, buf, 0, 0, &v6, v7);
  if (v7[0] > 3.40282347e38)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Control.cpp";
      v9 = 1024;
      v10 = 67;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::overflow_error): value exceeded the MAXFLOAT.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_20A96C(exception, "value exceeded the MAXFLOAT.");
  }

  return v7[0];
}

_BYTE *sub_20F334(_BYTE *result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = a2;
LABEL_3:
    v16 = v8;
    v10 = 12 * v7;
    do
    {
      v11 = *(a3 + v10);
      if (v11 <= 1919774834)
      {
        if (v11 != 1064725619 && v11 != 1684633187)
        {
LABEL_23:
          ++v7;
          v8 = 1;
          v15 = a2;
          if (v7 != v9)
          {
            goto LABEL_3;
          }

          return sub_421B5C(v6, v15, a3, a4);
        }
      }

      else if (v11 != 1919774835 && v11 != 1986817377 && v11 != 1986229104)
      {
        goto LABEL_23;
      }

      *v18 = *(a3 + v10);
      *&v18[4] = *(v6 + 104);
      if (!a4)
      {
        v19 = *v18;
        v20 = *&v18[8];
        sub_68E60();
        operator new();
      }

      result = (*(**(v6 + 80) + 88))(*(v6 + 80), 1, v18, 1);
      ++v7;
      v10 += 12;
    }

    while (v9 != v7);
    v15 = a2;
    if ((v16 & 1) == 0)
    {
      return result;
    }

    return sub_421B5C(v6, v15, a3, a4);
  }

  return result;
}

void sub_20F4EC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = *(a1 + 4);
  (*(**(v2 + 80) + 88))(*(v2 + 80), 1, &v3, 1);
  operator delete();
}

uint64_t sub_20FAE4(uint64_t a1, int a2)
{
  v6 = a2;
  v2 = *(a1 + 96);
  v4 = 0x676C6F626D757465;
  v5 = 0;
  return (*(*v2 + 48))(v2, &v4, 0, 0, 4, &v6);
}

void *sub_20FB54(void *a1)
{
  *a1 = off_6B9370;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_20FBA4(void *a1, float a2)
{
  v5 = a1[14];
  v4 = a1[15];
  v6 = a1[10];
  if (v6)
  {
    (*(*v6 + 112))(__p);
  }

  else
  {
    sub_53E8(__p, "unknown");
  }

  if (!v5)
  {
    v12 = sub_5544(0);
    v13 = sub_5544(39);
    v14 = 0;
    *buf = 0x100000002;
    v15 = *(v12 + 8);
    while (1)
    {
      v16 = *&buf[v14];
      if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
      {
        break;
      }

      v14 += 4;
      if (v14 == 8)
      {
        if ((v15 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }
    }

    if ((v15 & v16) == 0)
    {
      v12 = v13;
    }

    if ((*(v12 + 8) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    v23 = *v12;
    if (!v23 || !os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_30;
    }

    v24 = __p;
    if (v26 < 0)
    {
      v24 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "VirtualAudio_Control.cpp";
    v28 = 1024;
    v29 = 488;
    v30 = 2080;
    v31 = v24;
    v32 = 2048;
    v33 = a2;
    v20 = "%25s:%-5d No external volume handler registered for VAD '%s'. Dropping volume change of %f on the floor.";
    v21 = v23;
    v22 = 38;
    goto LABEL_29;
  }

  (v5)(*(a1[10] + 8), v4, a2);
  v7 = sub_5544(0);
  v8 = sub_5544(39);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_16;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_16:
  v17 = *v7;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1[10] + 8);
    v19 = __p;
    if (v26 < 0)
    {
      v19 = __p[0];
    }

    *buf = 136316418;
    *&buf[4] = "VirtualAudio_Control.cpp";
    v28 = 1024;
    v29 = 484;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = a2;
    v34 = 1024;
    v35 = v18;
    v36 = 2080;
    v37 = v19;
    v20 = "%25s:%-5d Calling external volume handler %p with volume %f for object ID %u. VAD '%s'.";
    v21 = v17;
    v22 = 54;
LABEL_29:
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
  }

LABEL_30:
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_20FE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_20FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 112);
    if (v4 && v4 != a2)
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "VirtualAudio_Control.cpp";
          v16 = 1024;
          v17 = 359;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Attempt to register an external volume handler when one is already registered.", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      v10 = 1852797029;
      goto LABEL_18;
    }
  }

  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  result = sub_1763B8(a1);
  if (a2 && result)
  {
    v13 = result;
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "VirtualAudio_Control.cpp";
      v16 = 1024;
      v17 = 365;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result): error configuring external volume handler on dispatch control", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v10 = v13;
LABEL_18:
    exception[2] = v10;
  }

  return result;
}

uint64_t sub_210088(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 336))(a2, *(result + 16), *(result + 24));
  }

  return result;
}

uint64_t sub_2100E0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 352))(a2, *(result + 16));
  }

  return result;
}

uint64_t sub_210138(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 432))(a2, *(result + 16), *(result + 24), *(result + 28), *(result + 32));
  }

  return result;
}

void sub_210184(void *a1)
{
  *a1 = off_6B9418;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    operator delete[]();
  }

  operator delete();
}

void *sub_210204(void *a1)
{
  *a1 = off_6B9418;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_21026C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 416))(a2);
  }

  return result;
}

uint64_t sub_2102BC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(result + 12);
    if (*(a2 + 272) != v3)
    {
      v4 = *(result + 16);
      *(a2 + 272) = v3;
      v5 = *(a2 + 248);
      if (v5)
      {
        for (i = *(v5 + 8); i != *(v5 + 16); ++i)
        {
          v7 = *i;
          sub_55360(v5, v7);
        }

        sub_5540C(v5);
      }

      v8 = *(a2 + 256);
      if (v8)
      {
        for (j = *(v8 + 8); j != *(v8 + 16); ++j)
        {
          v10 = *j;
          sub_212460(v8, v10);
        }

        sub_21250C(v8);
      }

      if (v4)
      {
        operator new();
      }

      v11 = *(*a2 + 568);

      return v11(a2, 0, 0);
    }
  }

  return result;
}

void sub_21051C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21056C(uint64_t a1)
{
  sub_13CF84(a1);

  operator delete();
}

uint64_t sub_2105A8(uint64_t a1)
{
  result = *(a1 + 872);
  if (result)
  {
    return (*(*result + 520))();
  }

  return result;
}

double sub_2105E0(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (!v1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v9 = 1024;
      v10 = 3914;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to get actual sample rate without an active device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v7 = 0.0;
  v6 = 8;
  strcpy(buf, "trsabolg");
  buf[9] = 0;
  *&buf[10] = 0;
  (*(*v1 + 40))(v1, buf, 0, 0, &v6, &v7);
  return v7;
}

_BYTE **sub_210748(_BOOL8 *a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 528))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "VirtualAudio_Device.cpp";
      v17 = 1024;
      v18 = 3876;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareNotRunningError): can't because there isn't anything running yet", v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1937010544;
  }

  if ((~a3 & 6) == 0)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "VirtualAudio_Device.cpp";
      v17 = 1024;
      v18 = 3877;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): can't because the start time flags are conflicting", v16, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = 1852797029;
  }

  if (!a1[109])
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "VirtualAudio_Device.cpp";
      v17 = 1024;
      v18 = 3880;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to get nearest start time without an active device", v16, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = &off_6DDDD0;
    v9[2] = 2003329396;
  }

  if (!sub_4DF80(a1[57]))
  {
    operator new();
  }

  *v16 = 0;
  (*(*a1[109] + 312))(a1[109], a2, a3);
  return sub_210C08(v16);
}

_BYTE **sub_210C08(_BYTE **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_210C50(v2);
    operator delete();
  }

  return a1;
}

_BYTE *sub_210C50(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_27A4();
    (*(qword_6E94F8 + 24))();
  }

  return a1;
}

_BYTE **sub_210CB4(_BOOL8 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 56) & 3) == 0)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "VirtualAudio_Device.cpp";
      v15 = 1024;
      v16 = 3837;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): have to have either sample time or host time valid on the input", v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (((*(*a1 + 528))(a1) & 1) == 0)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    *v7 = &off_6DDDD0;
    v7[2] = 1937010544;
  }

  if (!a1[109])
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "VirtualAudio_Device.cpp";
      v15 = 1024;
      v16 = 3844;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to translate time without an active device", v14, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = &off_6DDDD0;
    v10[2] = 2003329396;
  }

  if (!sub_4DF80(a1[57]))
  {
    operator new();
  }

  *v14 = 0;
  (*(*a1[109] + 304))(a1[109], a2, a3);
  return sub_210C08(v14);
}

_BYTE **sub_211130(_BOOL8 *a1, uint64_t a2)
{
  if (((*(*a1 + 528))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1937010544;
  }

  if (!a1[109])
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 136315394;
      *&v9[4] = "VirtualAudio_Device.cpp";
      v10 = 1024;
      v11 = 3793;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to get current time without an active device", v9, 0x12u);
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    *v8 = &off_6DDDD0;
    v8[2] = 2003329396;
  }

  if (!sub_4DF80(a1[57]))
  {
    operator new();
  }

  *v9 = 0;
  (*(*a1[109] + 296))(a1[109], a2);
  return sub_210C08(v9);
}

uint64_t *sub_2114B8(std::string::size_type a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 872))
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "VirtualAudio_Device.cpp";
      v26 = 1024;
      v27 = 4164;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v8 = atomic_load((a1 + 560));
  if (v8 != pthread_self())
  {
    v9 = atomic_load((a1 + 664));
    if (v9 != pthread_self())
    {
      v10 = sub_5544(1);
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 384);
          sub_68108(&__p, &v21);
          v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          v25 = "VirtualAudio_Device.cpp";
          v26 = 1024;
          v27 = 4166;
          v28 = 2080;
          v29 = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d The IO monitor should be held prior to calling StartIOEngine on VAD: '%s'.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  __p.__r_.__value_.__r.__words[0] = a1;
  sub_27A4();
  __p.__r_.__value_.__s.__data_[8] = sub_2E6B94();
  *(a1 + 940) = 0;
  (*(**(a1 + 872) + 264))(*(a1 + 872), a2, a3, a4);
  v21 = 0x676C6F626E6E696FLL;
  v22 = 0;
  v13 = *(a1 + 16);
  v14 = *(a1 + 8);
  if (AudioObjectPropertiesChanged())
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "VirtualAudio_Device.cpp";
        v26 = 1024;
        v27 = 4182;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theError): got an error calling the listeners", buf, 0x12u);
      }
    }
  }

  result = sub_6A300(&__p);
  *(a1 + 776) = 0;
  return result;
}

void sub_2118F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_211910()
{
  v0 = sub_5544(1);
  v1 = *v0;
  if (*v0 && os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "VirtualAudio_Device.cpp";
    v7 = 1024;
    v8 = 4122;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IOBufferFrameSizeChanged not implemented. Unexpected code path.", &v5, 0x12u);
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "VirtualAudio_Device.cpp";
      v7 = 1024;
      v8 = 4123;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): function not implemented", &v5, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 1970171760;
}

uint64_t sub_211A84(uint64_t a1, int a2)
{
  v3 = *(a1 + 872);
  if (!v3)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "VirtualAudio_Device.cpp";
      v17 = 1024;
      v18 = 3715;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: mDevice is NULL", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  if (a2)
  {
    v4 = 1768845428;
  }

  else
  {
    v4 = 1869968496;
  }

  buf.mSelector = 1935763060;
  *&buf.mScope = v4;
  v5 = sub_1380B0(v3, &buf);
  if (!HIDWORD(v5) || (v15 = v5, buf.mSelector = 1935763060, *&buf.mScope = v4, v6 = sub_542F0(&v15, &buf, 0, 0), *(&v9 + 1) = v7, *&v9 = v6, result = v9 >> 32, (result & 0x100000000) == 0))
  {
    v14 = 4;
    v15 = 0;
    v10 = *(a1 + 872);
    buf.mSelector = 1935763060;
    *&buf.mScope = v4;
    (*(*v10 + 40))(v10, &buf, 0, 0, &v14, &v15);
    return v15;
  }

  return result;
}

void sub_211C54(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int *a5)
{
  v10 = a4;
  sub_128080(&__p, a4);
  if (a4)
  {
    v11 = __p;
    v12 = a5;
    do
    {
      v13 = *v12++;
      *v11++ = v13;
      --v10;
    }

    while (v10);
  }

  (*(**(a1 + 872) + 280))(*(a1 + 872), a3 ^ 1u, &__p);
  sub_3E0580(a1, a2);
}

void sub_211D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_211D44(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *(a1 + 256);
  for (i = *(v8 + 8); ; i += 8)
  {
    if (i == *(v8 + 16))
    {
      goto LABEL_9;
    }

    if (*i == a2)
    {
      break;
    }

    if (*(*i + 8) == a2)
    {
      goto LABEL_7;
    }
  }

  if (!a2)
  {
LABEL_9:
    result = *(a1 + 248);
    v13 = *(result + 8);
    v14 = *(result + 16);
    if (v13 == v14)
    {
      v16 = 0;
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      while (1)
      {
        v15 = *v13;
        if (*v13 == a2)
        {
          break;
        }

        if (*(v15 + 8) == a2)
        {
          goto LABEL_17;
        }

        if (++v13 == v14)
        {
          v15 = 0;
          goto LABEL_17;
        }
      }

      v15 = a2;
LABEL_17:
      v16 = v15 != 0;
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    if (!v16)
    {
      return result;
    }

LABEL_19:
    sub_2122CC(result, a2, a3, a4);
    sub_5064C(a1);
    v17 = **(a1 + 872);
    if (a2)
    {
      result = (*(v17 + 480))();
      v18 = *(*(a1 + 248) + 112);
    }

    else
    {
      result = (*(v17 + 472))();
      v18 = *(*(a1 + 248) + 116);
    }

    if (v18 == 1 && (result & 1) == 0)
    {
      return (*(*a1 + 584))(a1, a3, a4, a2 == 0);
    }

    return result;
  }

LABEL_7:
  sub_2121BC(v8, a2, a3, a4);
  sub_5064C(a1);
  v10 = **(a1 + 872);
  if (a2)
  {
    result = (*(v10 + 480))();
    v12 = *(*(a1 + 248) + 112);
  }

  else
  {
    result = (*(v10 + 472))();
    v12 = *(*(a1 + 248) + 116);
  }

  if (v12 == 1 && (result & 1) == 0)
  {
    return (*(*a1 + 584))(a1, a3, a4, a2 == 0);
  }

  return result;
}

void sub_2121BC(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  if (a2)
  {
    for (i = *(a1 + 8); i != *(a1 + 16); ++i)
    {
      v6 = *i;
      if (*i == a2 || *(v6 + 8) == a2)
      {
        if ((*(v6 + 54) & 1) == 0)
        {
          *(v6 + 54) = 1;
          v7 = *a3;
          v8 = a3[1];
          v9 = a3[2];
          *(v6 + 104) = a3[3];
          *(v6 + 88) = v9;
          *(v6 + 72) = v8;
          *(v6 + 56) = v7;
          *(v6 + 120) = a4;
          ++*(a1 + 112);
          sub_212460(a1, v6);

          sub_21250C(a1);
        }

        return;
      }
    }
  }

  else
  {
    ++*(a1 + 116);
  }
}

void sub_212280(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    for (i = *(a1 + 8); i != *(a1 + 16); ++i)
    {
      if (*i == a2 || *(*i + 8) == a2)
      {
        sub_212408(a1, *i);
        return;
      }
    }
  }

  else
  {
    v3 = *(a1 + 116);
    if (v3)
    {
      *(a1 + 116) = v3 - 1;
    }
  }
}

void sub_2122CC(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  if (a2)
  {
    for (i = *(a1 + 8); i != *(a1 + 16); ++i)
    {
      v6 = *i;
      if (*i == a2 || *(v6 + 8) == a2)
      {
        if ((*(v6 + 54) & 1) == 0)
        {
          *(v6 + 54) = 1;
          v7 = *a3;
          v8 = a3[1];
          v9 = a3[2];
          *(v6 + 104) = a3[3];
          *(v6 + 88) = v9;
          *(v6 + 72) = v8;
          *(v6 + 56) = v7;
          *(v6 + 120) = a4;
          ++*(a1 + 112);
          sub_55360(a1, v6);

          sub_5540C(a1);
        }

        return;
      }
    }
  }

  else
  {
    ++*(a1 + 116);
  }
}

_DWORD *sub_212390(_DWORD *result, int a2)
{
  if (*(result + 54) == 1)
  {
    v2 = result;
    v3 = *result;
    v4 = 38;
    if (a2)
    {
      v4 = 32;
    }

    v5 = 52;
    if (a2)
    {
      v5 = 44;
      v6 = 50;
    }

    else
    {
      v6 = 58;
    }

    result = sub_54E5C(v3, a2, &v2[v4], v2[12], &v2[v5], *(v2 + 53), *(v2 + 52));
    *&v2[v6] = result;
  }

  return result;
}

void sub_212408(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 54) == 1)
  {
    *(a2 + 54) = 0;
    --*(a1 + 112);
    sub_212460(a1, a2);

    sub_21250C(a1);
  }
}

void sub_212460(uint64_t a1, uint64_t a2)
{
  sub_54C20(*a2, 1, *(a2 + 48), *(a2 + 200), (a2 + 176), *(a2 + 53));
  *(a2 + 200) = 0;
  if (*(a1 + 40) == 2)
  {
    sub_212998(a2, 1);
  }

  sub_54C20(*a2, 0, *(a2 + 48), *(a2 + 232), (a2 + 208), *(a2 + 53));
  *(a2 + 232) = 0;
  if (*(a1 + 44) == 2)
  {

    sub_212998(a2, 0);
  }
}

void sub_21250C(_DWORD **a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_54C20(*a1, 1, *(a1 + 8), v2, a1 + 6, *(a1 + 36));
    a1[9] = 0;
  }

  if (*(a1 + 10) <= 1u)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    sub_54D38(a1, 1, &__p);
    a1[9] = sub_212658(*a1, 1, &__p, *(a1 + 8), a1 + 6, *(a1 + 36), *(a1 + 10) == 1);
    if (__p)
    {
      operator delete(__p);
    }
  }

  v3 = a1[13];
  if (v3)
  {
    sub_54C20(*a1, 0, *(a1 + 8), v3, a1 + 10, *(a1 + 36));
    a1[13] = 0;
  }

  if (*(a1 + 11) <= 1u)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    sub_54D38(a1, 0, &__p);
    a1[13] = sub_212658(*a1, 0, &__p, *(a1 + 8), a1 + 10, *(a1 + 36), *(a1 + 11) == 1);
    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_212634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_212658(_DWORD *a1, int a2, void *a3, unsigned int a4, void *a5, int a6, int a7)
{
  a5[1] = *a5;
  v10 = a1[68];
  v33 = (*(*a1 + 496))(a1);
  v11 = 76;
  if (a2)
  {
    v11 = 70;
  }

  v12 = 78;
  if (a2)
  {
    v12 = 72;
  }

  v13 = &a1[v11];
  v14 = *&a1[v12] - *&a1[v11];
  v15 = v14 >> 3;
  v16 = malloc_type_calloc(1uLL, 24 * (v14 >> 3) + 8, 0x108004031C47316uLL);
  if (v16)
  {
    *v16 = v15;
  }

  v28 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = (v16 + 6);
    do
    {
      if (v17 >= (v13[1] - *v13) >> 3)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(*v13 + 8 * v17);
      }

      v20 = sub_5519C(v19[13], v10);
      v21 = sub_5519C(v19[13], v33);
      if (a3[1] <= v17)
      {
        if (a7)
        {
          goto LABEL_15;
        }
      }

      else if ((*(*a3 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) != 0 && (a7)
      {
LABEL_15:
        v22 = (v21 + v20);
        address = 0;
        if (vm_allocate(mach_task_self_, &address, (v22 + 16), 1))
        {
          v23 = sub_5544(14);
          v24 = *v23;
          if (*v23)
          {
            if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HP_IOProcList.h";
              v36 = 1024;
              v37 = 873;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theKernelError): vm_allocate failed", buf, 0x12u);
            }
          }
        }

        if (address)
        {
          bzero(address, (v22 + 16));
          v25 = address;
          *address = v20;
          v25[1] = v10;
          v25[2] = v22;
          v25[3] = v20;
          if (a6)
          {
            (*(*v19 + 22))(v19, a4, (v22 + 16));
          }

          else
          {
            (*(*v19 + 22))(v19, a4, v22, v25 + 4);
          }

          sub_5318(a5, &address);
          *(v18 - 2) = v19[13][11];
          v26 = address + 16;
          *(v18 - 1) = *address;
          *v18 = v26;
        }

        goto LABEL_26;
      }

      *buf = 0;
      sub_5318(a5, buf);
      *(v18 - 2) = v19[13][11];
      *(v18 - 1) = v20;
      *v18 = 0;
LABEL_26:
      ++v17;
      v18 += 3;
    }

    while ((v14 >> 3) != v17);
  }

  return v28;
}

_DWORD *sub_212998(_DWORD *result, int a2)
{
  if (*(result + 54) == 1)
  {
    v2 = result;
    v3 = *result;
    v4 = 38;
    if (a2)
    {
      v4 = 32;
    }

    v5 = 52;
    if (a2)
    {
      v5 = 44;
      v6 = 50;
    }

    else
    {
      v6 = 58;
    }

    result = sub_212658(v3, a2, &v2[v4], v2[12], &v2[v5], *(v2 + 53), *(v2 + 52));
    *&v2[v6] = result;
  }

  return result;
}

void sub_212A14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    for (i = *(a1 + 8); i != *(a1 + 16); ++i)
    {
      v4 = *i;
      if (*i == a2 || *(v4 + 8) == a2)
      {
        if ((*(v4 + 54) & 1) == 0)
        {
          *(v4 + 54) = 1;
          *(v4 + 56) = 0u;
          *(v4 + 72) = 0u;
          *(v4 + 88) = 0u;
          *(v4 + 104) = 0u;
          *(v4 + 120) = 0;
          ++*(a1 + 112);
          sub_212460(a1, v4);

          sub_21250C(a1);
        }

        return;
      }
    }
  }

  else
  {
    ++*(a1 + 116);
  }
}

void sub_212AD4(uint64_t a1)
{
  if (((*(*(a1 + 248) + 16) - *(*(a1 + 248) + 8)) & 0x7FFFFFFF8) == 0)
  {

    sub_1898F8();
  }

  v1 = sub_5544(14);
  v2 = *v1;
  if (*v1 && os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "VirtualAudio_Device.cpp";
    v6 = 1024;
    v7 = 3513;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): only a single IOProc is supported", &v4, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 1852797029;
}

void sub_212C04(uint64_t a1, uint64_t a2)
{
  if (((*(*(a1 + 248) + 16) - *(*(a1 + 248) + 8)) & 0x7FFFFFFF8) == 0)
  {

    sub_3E19C8(a1, a2);
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "VirtualAudio_Device.cpp";
    v7 = 1024;
    v8 = 3506;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): only a single IOProc is supported", &v5, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 1852797029;
}

uint64_t sub_212D30(void *a1, uint64_t a2, uint64_t a3)
{
  if (((*(a1[31] + 16) - *(a1[31] + 8)) & 0x7FFFFFFF8) != 0 || ((*(a1[32] + 16) - *(a1[32] + 8)) & 0x7FFFFFFF8) != 0)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_Device.cpp";
      v9 = 1024;
      v10 = 3499;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): only a single IOProc is supported", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  return sub_3E22A4(a1, a2, a3);
}

uint64_t sub_212ECC(uint64_t a1)
{
  v1 = sub_59410(a1);
  *(&v4 + 1) = v2;
  *&v4 = v1;
  v3 = v4 >> 32;
  result = 1;
  if ((v3 & 0x100000000) != 0)
  {
    if (v3)
    {
      return _os_feature_enabled_impl() ^ 1;
    }
  }

  return result;
}

_BYTE *sub_212F34(_BYTE *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = atomic_load((a2 + 560));
  if (v4 == pthread_self())
  {
    v5 = 1;
  }

  else
  {
    v6 = atomic_load((a2 + 664));
    v5 = v6 == pthread_self();
  }

  a1[8] = v5;
  a1[9] = *(*a1 + 936) ^ 1;
  v7 = sub_5544(1);
  if (*(v7 + 8))
  {
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = *a1;
        v10 = a1[8];
        v11 = a1[9];
        sub_27A4();
        v12 = atomic_load(&qword_6E9558);
        v14 = 136316418;
        v15 = "VirtualAudio_Device.cpp";
        v16 = 1024;
        v17 = 124;
        v18 = 2048;
        v19 = v9;
        v20 = 1024;
        v21 = v10;
        v22 = 1024;
        v23 = v11;
        v24 = 1024;
        v25 = v12 == pthread_self();
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Owning device: %p; mIOMonitorWasHeld: %u; mDoConfigChange: %u; state mutex is held: %u.", &v14, 0x2Eu);
      }
    }
  }

  if (a1[9] == 1)
  {
    sub_14385C(*a1, (a1[8] & 1) == 0, 0);
  }

  return a1;
}

void sub_2130CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2130E8(unint64_t *a1, uint64_t *a2)
{
  sub_27A4();
  v4 = atomic_load(a1 + 70);
  if (v4 != pthread_self())
  {
    v5 = atomic_load(a1 + 83);
    if (v5 != pthread_self())
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "VirtualAudio_Device.cpp";
        v23 = 1024;
        v24 = 5326;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }
  }

  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "VirtualAudio_Device.cpp";
      v23 = 1024;
      v24 = 5327;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v13, "Precondition failure.");
  }

  sub_9650C(a1 + 58);
  sub_2143EC(buf);
  sub_DED5C(*a2, a2[1]);
  sub_214518(buf);
  result = sub_21457C((a1 + 58), &v20);
  if (!result)
  {
    v8 = 20;
    do
    {
      (*(qword_6E94F8 + 24))(&qword_6E94F8);
      usleep(0x1388u);
      (*(qword_6E94F8 + 16))(&qword_6E94F8);
      result = sub_21457C((a1 + 58), &v20);
      v10 = v8-- < 2 || result;
    }

    while ((v10 & 1) == 0);
    if (!result)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "VirtualAudio_Device.cpp";
          v23 = 1024;
          v24 = 5363;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to re-lock the IOMonitor. Please file a radar against \\Audio - Routing\\"", buf, 0x12u);
        }
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v19, "Unable to re-lock the IOMonitor. Please file a radar against Audio - Routing");
    }
  }

  return result;
}

uint64_t sub_213484(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    sub_184994(*a1, 0, 1, (*(a1 + 8) & 1) == 0, 1);
  }

  v2 = sub_5544(1);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v4 = *a1;
        v5 = *(a1 + 8);
        v6 = *(a1 + 9);
        sub_27A4();
        v7 = atomic_load(&qword_6E9558);
        v8 = pthread_self();
        v9 = *a1;
        v10 = atomic_load((*a1 + 560));
        if (v10 == pthread_self())
        {
          v11 = 1;
        }

        else
        {
          v12 = atomic_load(v9 + 83);
          v11 = v12 == pthread_self();
        }

        v14 = 136316674;
        v15 = "VirtualAudio_Device.cpp";
        v16 = 1024;
        v17 = 141;
        v18 = 2048;
        v19 = v4;
        v20 = 1024;
        v21 = v5;
        v22 = 1024;
        v23 = v6;
        v24 = 1024;
        v25 = v7 == v8;
        v26 = 1024;
        v27 = v11;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Owning device: %p; mIOMonitorWasHeld: %u; mDoConfigChange: %u; IO monitor is held: %u; state mutex is held: %u.", &v14, 0x34u);
      }
    }
  }

  return a1;
}

void sub_213628(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_213648(void *a1, uint64_t a2)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_AuditTokenManagement", 0x17uLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        (*(*a2 + 112))(__p, a2);
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *buf = 136315138;
        v11 = v6;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VA_AuditTokenManagement", "adding audit token to VAD %s", buf, 0xCu);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return sub_2142C8(a1, v4);
}

uint64_t sub_213830(int a1, int a2)
{
  if (a1 > 1668313714)
  {
    result = 1;
    if (a1 == 1668703084 || a1 == 1668576377)
    {
      return result;
    }

    v3 = 29299;
    goto LABEL_8;
  }

  if (a1 != 1668301427 && a1 != 1668309362)
  {
    v3 = 29250;
LABEL_8:
    if (a1 != (v3 | 0x63700000))
    {
      return 0;
    }
  }

  result = 1;
  if (a2 <= 1987077986)
  {
    if (a2 == 1768057203)
    {
      return result;
    }

    v5 = 1919776355;
LABEL_15:
    if (a2 == v5)
    {
      return result;
    }

    return 0;
  }

  if (a2 != 1987077987 && a2 != 1987081833)
  {
    v5 = 1987081839;
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_21390C(uint64_t a1)
{
  if (!a1)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 136315394;
      *&v8[1] = "VirtualAudio_Device.cpp";
      v9 = 1024;
      v10 = 1338;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  strcpy(v8, "ertmtpni");
  BYTE1(v8[2]) = 0;
  HIWORD(v8[2]) = 0;
  v1 = sub_59410(a1);
  *(&v3 + 1) = v2;
  *&v3 = v1;
  return ((v3 >> 32) >> 32) & (HIDWORD(v1) != 0);
}

uint64_t sub_213A58(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = bswap64(*a2);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = bswap64(*(v2 + 28));
      if (v3 == v5)
      {
        break;
      }

      v6 = v3;
LABEL_11:
      if (v6 < v5)
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_25;
      }
    }

    v6 = bswap64(a2[1]);
    v5 = bswap64(*(v4 + 36));
    if (v6 != v5)
    {
      goto LABEL_11;
    }

    v6 = bswap64(a2[2]);
    v5 = bswap64(*(v4 + 44));
    if (v6 != v5)
    {
      goto LABEL_11;
    }

    v6 = bswap64(a2[3]);
    v5 = bswap64(*(v4 + 52));
    if (v6 != v5)
    {
      goto LABEL_11;
    }

    v8 = bswap64(*(v4 + 28));
    v9 = bswap64(*a2);
    if (v8 != v9)
    {
      goto LABEL_20;
    }

LABEL_15:
    v8 = bswap64(*(v4 + 36));
    v9 = bswap64(a2[1]);
    if (v8 == v9 && (v8 = bswap64(*(v4 + 44)), v9 = bswap64(a2[2]), v8 == v9) && (v8 = bswap64(*(v4 + 52)), v9 = bswap64(a2[3]), v8 == v9))
    {
      v10 = 0;
    }

    else
    {
LABEL_20:
      v10 = v8 < v9 ? -1 : 1;
    }

    if ((v10 & 0x80000000) == 0)
    {
      return 0;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_213C14()
{
  if ((atomic_load_explicit(&qword_6E6A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6A78))
  {
    sub_1E9770();

    __cxa_guard_release(&qword_6E6A78);
  }
}

uint64_t sub_213C90(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_179F8C(a1, a2, a3))
  {
    return 2;
  }

  if (a1 > 1668313714)
  {
    result = 0;
    if (a1 == 1668703084 || a1 == 1668576377)
    {
      return result;
    }

    v5 = 29299;
    goto LABEL_11;
  }

  if (a1 != 1668301427 && a1 != 1668309362)
  {
    v5 = 29250;
LABEL_11:
    if (a1 != (v5 | 0x63700000))
    {
      return 1;
    }
  }

  result = 0;
  if (SHIDWORD(a1) <= 1987077986)
  {
    if (HIDWORD(a1) == 1768057203)
    {
      return result;
    }

    v6 = 1919776355;
  }

  else
  {
    if (HIDWORD(a1) == 1987077987 || HIDWORD(a1) == 1987081833)
    {
      return result;
    }

    v6 = 1987081839;
  }

  if (HIDWORD(a1) != v6)
  {
    return 1;
  }

  return result;
}

os_signpost_id_t *sub_213D94(os_signpost_id_t *a1)
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
        v10 = 111;
        v11 = 2080;
        v12 = "kAuditTokenManagement";
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
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_AuditTokenManagement", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_213F24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void *sub_213F30(void *a1, uint64_t a2)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_AuditTokenManagement", 0x17uLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        (*(*a2 + 112))(__p, a2);
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *buf = 136315138;
        v11 = v6;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VA_AuditTokenManagement", "removing audit token from VAD %s", buf, 0xCu);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return sub_2142C8(a1, v4);
}

uint64_t *sub_214118(uint64_t **a1, unint64_t *a2)
{
  v4 = (a1 + 1);
  result = a1[1];
  if (!result)
  {
    return result;
  }

  v5 = bswap64(*a2);
  v6 = v4;
  v7 = result;
  do
  {
    v8 = bswap64(*(v7 + 28));
    if (v8 == v5)
    {
      v8 = bswap64(*(v7 + 36));
      v9 = bswap64(a2[1]);
      if (v8 == v9)
      {
        v8 = bswap64(*(v7 + 44));
        v9 = bswap64(a2[2]);
        if (v8 == v9)
        {
          v8 = bswap64(*(v7 + 52));
          v9 = bswap64(a2[3]);
          if (v8 == v9)
          {
            v10 = 0;
            goto LABEL_12;
          }
        }
      }
    }

    else
    {
      v9 = v5;
    }

    if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

LABEL_12:
    if (v10 >= 0)
    {
      v6 = v7;
    }

    v7 = *(v7 + ((v10 >> 28) & 8));
  }

  while (v7);
  if (v6 == v4)
  {
    return 0;
  }

  v11 = bswap64(*a2);
  v12 = bswap64(*(v6 + 28));
  if (v11 != v12)
  {
    goto LABEL_21;
  }

  v11 = bswap64(a2[1]);
  v12 = bswap64(*(v6 + 36));
  if (v11 == v12 && (v11 = bswap64(a2[2]), v12 = bswap64(*(v6 + 44)), v11 == v12) && (v11 = bswap64(a2[3]), v12 = bswap64(*(v6 + 52)), v11 == v12))
  {
    v13 = 0;
  }

  else
  {
LABEL_21:
    v13 = v11 < v12 ? -1 : 1;
  }

  if (v13 < 0)
  {
    return 0;
  }

  v14 = v6[1];
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
    v16 = v6;
    do
    {
      v15 = v16[2];
      v17 = *v15 == v16;
      v16 = v15;
    }

    while (!v17);
  }

  if (*a1 == v6)
  {
    *a1 = v15;
  }

  a1[2] = (a1[2] - 1);
  sub_75234(result, v6);
  operator delete(v6);
  return (&dword_0 + 1);
}

void *sub_2142C8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v3 = sub_5544(43);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = 136315650;
        v7 = "SignpostUtilities.h";
        v8 = 1024;
        v9 = 111;
        v10 = 2080;
        v11 = "kAuditTokenManagement";
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &v6, 0x1Cu);
      }
    }
  }

  return a1;
}

_BYTE *sub_2143AC(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    sub_9650C((*a1 + 464));
  }

  return a1;
}

_BYTE *sub_2143EC(_BYTE *a1)
{
  *a1 = 0;
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "RoutingMutex.h";
        v8 = 1024;
        v9 = 130;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Major problem: Unlocker attempted to unlock a mutex not owned by the current thread!", &v6, 0x12u);
      }
    }
  }

  sub_27A4();
  (*(qword_6E94F8 + 24))();
  *a1 = 1;
  return a1;
}

void sub_21450C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_214518(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_27A4();
    (*(qword_6E94F8 + 16))();
  }

  return a1;
}

BOOL sub_21457C(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  v4 = atomic_load((a1 + 200));
  if (v4 == pthread_self())
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    result = sub_42A2A8(a1, a2);
    if (result)
    {
      if (sub_42A2A8(a1 + 104, a2))
      {
        result = 1;
      }

      else
      {
        sub_42A318(a1);
        result = 0;
      }

      *a2 = result;
    }
  }

  return result;
}

void sub_214644(uint64_t a1, uint64_t a2)
{
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 == pthread_self())
  {
    memset(v21, 0, sizeof(v21));
    sub_212F34(v17, a1);
    v5 = atomic_load((a1 + 560));
    if (v5 == pthread_self() || (v6 = atomic_load((a1 + 664)), v6 == pthread_self()))
    {
      v7 = (*(**(a1 + 872) + 216))(*(a1 + 872), a2);
      if (!v7)
      {
        sub_2149F0(a1, v21);
        sub_1C76AC(a1);
        sub_13738C(*(a1 + 440));
      }

      v8 = sub_5544(14);
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136315394;
          *&buf[1] = "VirtualAudio_Device.cpp";
          v19 = 1024;
          v20 = 1553;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting the sample rate on the underlying device", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }

    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "VirtualAudio_Device.cpp";
      v19 = 1024;
      v20 = 1536;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "Invariant failure.");
  }

  v11 = sub_5544(14);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    *v21 = 136315394;
    *&v21[4] = "VirtualAudio_Device.cpp";
    *&v21[12] = 1024;
    *&v21[14] = 1528;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v21, 0x12u);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v13, "Precondition failure.");
}

void sub_214978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_213484(&a9);
  a11 = &a15;
  sub_DECD0(&a11);
  _Unwind_Resume(a1);
}

void sub_2149F0(void *a1, uint64_t *a2)
{
  if (((a1[36] - a1[35]) & 0x7FFFFFFF8) == 0 && ((a1[39] - a1[38]) & 0x7FFFFFFF8) == 0)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315394;
      v26 = "VirtualAudio_Device.cpp";
      v27 = 1024;
      v28 = 4731;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v25, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315394;
      v26 = "VirtualAudio_Device.cpp";
      v27 = 1024;
      v28 = 4732;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v25, 0x12u);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v18, "Precondition failure.");
  }

  v5 = atomic_load(a1 + 70);
  if (v5 != pthread_self())
  {
    v6 = atomic_load(a1 + 83);
    if (v6 != pthread_self())
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315394;
        v26 = "VirtualAudio_Device.cpp";
        v27 = 1024;
        v28 = 4733;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v25, 0x12u);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v21, "Precondition failure.");
    }
  }

  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v7 & 1) == 0;
    if (v7)
    {
      v10 = 35;
    }

    else
    {
      v10 = 38;
    }

    if (v9)
    {
      v11 = 39;
    }

    else
    {
      v11 = 36;
    }

    v12 = &a1[v10];
    v13 = a1[v10];
    if (((a1[v11] - v13) & 0x7FFFFFFF8) != 0)
    {
      v14 = 0;
      do
      {
        if (v14 >= (v12[1] - v13) >> 3)
        {
          v15 = 0;
        }

        else
        {
          v15 = *(v13 + 8 * v14);
        }

        sub_23B39C(v15, a1[109], v14++, a2, 0);
        v13 = *v12;
      }

      while (v14 < ((a1[v11] - *v12) >> 3));
    }

    v7 = 0;
  }

  while ((v8 & 1) != 0);
}

void *sub_214D98(void *a1, double *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_D7ED0(a1, v4, *a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_214E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 872);
  if (!v3)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "VirtualAudio_Device.cpp";
      v19 = 1024;
      v20 = 1490;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to calculate buffer frame size without an active device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v4 = a2;
  v15 = 0;
  v16 = a2;
  v14 = 0x676C6F626366737ALL;
  if ((*(*v3 + 16))(v3, &v14))
  {
    *buf = 4;
    (*(**(a1 + 872) + 40))(*(a1 + 872), &v14, 0, 0, buf, &v16);
    return v16;
  }

  else
  {
    v5 = sub_5544(1);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      (*(**(a1 + 872) + 128))(__p);
      if (v13 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315650;
      v18 = "VirtualAudio_Device.cpp";
      v19 = 1024;
      v20 = 1504;
      v21 = 2080;
      v22 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Active device with UID '%s' does not implement the property kAudioDevicePropertyCalculateBufferFrameSize", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v4;
}

void *sub_215088(void *result, _DWORD *a2, _OWORD *a3)
{
  v3 = result[2];
  v4 = *a2;
  if (v3 > v4 >> 4)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 238;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): provided vector exceeds the size of the provided array.", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "provided vector exceeds the size of the provided array.");
  }

  if (!v4)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 239;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): ioDataSize is 0.", &v16, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "ioDataSize is 0.");
  }

  if (v3)
  {
    *a2 = 16 * v3;
    v6 = *result++;
    v5 = v6;
    if (v6 != result)
    {
      do
      {
        *a3 = *(v5 + 2);
        v7 = v5[1];
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
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        ++a3;
        v5 = v8;
      }

      while (v8 != result);
    }
  }

  return result;
}

void *sub_2152B8(void *result, int a2)
{
  v2 = *result;
  v3 = 304;
  if (a2)
  {
    v3 = 280;
  }

  v4 = 312;
  if (a2)
  {
    v4 = 288;
  }

  v5 = (v2 + v3);
  v6 = *(v2 + v3);
  v7 = *(v2 + v4) - *v5;
  if ((v7 & 0x7FFFFFFF8) != 0)
  {
    v8 = result;
    v9 = 0;
    v10 = (v7 >> 3);
    do
    {
      if (v9 >= (v5[1] - *v5) >> 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(*v5 + 8 * v9);
      }

      v12 = v8[1];
      v13 = *v12;
      v14 = v12[1];
      v15 = *v12;
      if (*v12 != v14)
      {
        while (1)
        {
          result = sub_1C7F9C(*(v11 + 120), *v15);
          if (result)
          {
            break;
          }

          if (++v15 == v14)
          {
            goto LABEL_15;
          }
        }
      }

      result = sub_75788(v8[2], *(v11 + 8));
LABEL_15:
      ++v9;
    }

    while (v9 != v10);
  }

  return result;
}

CFArrayRef sub_2153AC(CFArrayRef result, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  if (!a2)
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v57 = 1024;
      v58 = 430;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inDevice is NULL]: inDevice is NULL.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inDevice is NULL.");
  }

  if (a3->mScope != 1735159650)
  {
    goto LABEL_50;
  }

  v3 = result;
  mElement = a3->mElement;
  if (a3->mSelector == 1885434722)
  {
    if (!mElement)
    {
      goto LABEL_5;
    }

LABEL_50:
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v57 = 1024;
      v58 = 433;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inSubPortsAddress must be kVirtualAudioPortPropertyAvailableSubPorts or kVirtualAudioPortPropertyActiveSubPorts.", buf, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v27, "inSubPortsAddress must be kVirtualAudioPortPropertyAvailableSubPorts or kVirtualAudioPortPropertyActiveSubPorts.");
  }

  if (a3->mSelector != 1885430643 || mElement != 0)
  {
    goto LABEL_50;
  }

LABEL_5:
  *result = 0;
  *(result + 1) = 0;
  *(result + 2) = 0;
  v5 = *(a2 + 280);
  v6 = *(a2 + 288);
  if (((v6 - v5) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    do
    {
      v45 = v7;
      if (v7 >= (v6 - v5) >> 3 || (v8 = *(v5 + 8 * v7)) == 0)
      {
        v40 = sub_5544(14);
        v41 = *v40;
        if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v57 = 1024;
          v58 = 439;
          v59 = 1024;
          LODWORD(v60) = v45;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [theStream is NULL]: inDevice->GetStreamByIndex(kVAInputStream, %u) returned NULL.", buf, 0x18u);
        }

        v42 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v42, "inDevice->GetStreamByIndex(kVAInputStream, %u) returned NULL.");
      }

      theArray = 0;
      v54 = 8;
      strcpy(buf, "spasbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v8 + 72))(v8, buf, 0, 0, &v54, &theArray);
      result = theArray;
      if (theArray)
      {
        goto LABEL_14;
      }

      v9 = sub_5544(1);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v57 = 1024;
        v58 = 443;
        v59 = 2048;
        v60 = v8;
        v61 = 1024;
        v62 = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d An input stream (%p / index %u) reports having no associated ports.", buf, 0x22u);
      }

      result = theArray;
      if (theArray)
      {
LABEL_14:
        v11 = 0;
        v52 = result;
        v53 = 1;
        if (!result)
        {
          goto LABEL_16;
        }

LABEL_15:
        LODWORD(result) = CFArrayGetCount(result);
LABEL_16:
        while (v11 < result)
        {
          inObjectID = 0;
          if ((sub_2E4528(&v52, v11, &inObjectID) & 1) == 0)
          {
            v37 = sub_5544(14);
            v38 = *v37;
            if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_Device.cpp";
              v57 = 1024;
              v58 = 451;
              _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Associated ports CFArray contained a non-UInt32 value.", buf, 0x12u);
            }

            v39 = __cxa_allocate_exception(0x10uLL);
            *v39 = &off_6DDDD0;
            v39[2] = 2003329396;
          }

          if (inObjectID)
          {
            outData = 0;
            ioDataSize = 8;
            PropertyData = AudioObjectGetPropertyData(inObjectID, a3, 0, 0, &ioDataSize, &outData);
            if (PropertyData)
            {
              v28 = sub_5544(14);
              v29 = *v28;
              if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "VirtualAudio_Device.cpp";
                v57 = 1024;
                v58 = 459;
                v59 = 1024;
                LODWORD(v60) = inObjectID;
                _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Failed to get subports for port ID %u.", buf, 0x18u);
              }

              v30 = __cxa_allocate_exception(0x10uLL);
              *v30 = &off_6DDDD0;
              v30[2] = PropertyData;
            }

            v13 = outData;
            if (outData)
            {
              v14 = 0;
              v47 = outData;
              v48 = 1;
LABEL_22:
              LODWORD(v13) = CFArrayGetCount(v13);
              while (v14 < v13)
              {
                v46 = 0;
                if ((sub_2E4528(&v47, v14, &v46) & 1) == 0)
                {
                  v31 = sub_5544(14);
                  v32 = *v31;
                  if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "VirtualAudio_Device.cpp";
                    v57 = 1024;
                    v58 = 467;
                    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Sub-port CFArray contained a non-UInt32 value.", buf, 0x12u);
                  }

                  v33 = __cxa_allocate_exception(0x10uLL);
                  *v33 = &off_6DDDD0;
                  v33[2] = 2003329396;
                }

                v16 = *(v3 + 1);
                v15 = *(v3 + 2);
                if (v16 >= v15)
                {
                  v18 = *v3;
                  v19 = v16 - *v3;
                  v20 = (v19 >> 2) + 1;
                  if (v20 >> 62)
                  {
                    sub_189A00();
                  }

                  v21 = v15 - v18;
                  if (v21 >> 1 > v20)
                  {
                    v20 = v21 >> 1;
                  }

                  if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v22 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v22 = v20;
                  }

                  if (v22)
                  {
                    sub_1D7C28(v22);
                  }

                  v23 = (4 * (v19 >> 2));
                  *v23 = v46;
                  v17 = v23 + 1;
                  memcpy(0, v18, v19);
                  *v3 = 0;
                  *(v3 + 2) = 0;
                  if (v18)
                  {
                    operator delete(v18);
                  }
                }

                else
                {
                  *v16 = v46;
                  v17 = v16 + 1;
                }

                *(v3 + 1) = v17;
                ++v14;
                v13 = v47;
                if (v47)
                {
                  goto LABEL_22;
                }
              }

              sub_A0804(&v47);
            }

            v7 = v45;
          }

          ++v11;
          result = v52;
          if (v52)
          {
            goto LABEL_15;
          }
        }

        result = sub_A0804(&v52);
      }

      ++v7;
      v5 = *(a2 + 280);
      v6 = *(a2 + 288);
    }

    while (v7 < ((v6 - v5) >> 3));
  }

  return result;
}

float sub_215C1C(void **a1)
{
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2959;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = 0;
  v4 = *(a1[109] + 72);
  do
  {
    if (*&aGnrcpnrcmlacam[v3] == v4)
    {
      v27 = sub_5544(1);
      v28 = *v27;
      v21 = 1.0;
      if (!*v27 || !os_log_type_enabled(*v27, OS_LOG_TYPE_INFO))
      {
        return v21;
      }

      v42 = a1[48];
      sub_68108(&__p, &v42);
      v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v30 = __p.__r_.__value_.__r.__words[0];
      sub_22170(v40, v4);
      p_p = &__p;
      if (v29 < 0)
      {
        p_p = v30;
      }

      if (v41 >= 0)
      {
        *&v32 = COERCE_DOUBLE(v40);
      }

      else
      {
        v32 = v40[0];
      }

      *buf = 136315906;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2966;
      v45 = 2080;
      v46 = p_p;
      v47 = 2080;
      v48 = *&v32;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%25s:%-5d Returning 1.0 for SystemSoundVolumeCap for VAD '%s' since we're in broadcast category '%s'.", buf, 0x26u);
      if (v41 < 0)
      {
        operator delete(v40[0]);
      }

      goto LABEL_47;
    }

    v3 += 4;
  }

  while (v3 != 20);
  v5 = a1[113];
  v6 = 0.0;
  if (v5 != a1 + 114)
  {
    do
    {
      sub_2820();
      v7 = sub_3D90(*(v5 + 7));
      v8 = *(v7 + 96);
      __p.__r_.__value_.__r.__words[0] = *(v7 + 88);
      __p.__r_.__value_.__l.__size_ = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_25704(buf, &__p, "", 2974);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      sub_67EA8();
      v9 = qword_6E8D60;
      if (qword_6E8D60 == qword_6E8D68)
      {
        v11 = 0.0;
      }

      else
      {
        v10 = *(*buf + 144);
        v11 = 0.0;
        while (1)
        {
          v12 = *(v9 + 1);
          v13 = *(v9 + 2);
          v14 = v12 == v10 && v13 == *(*buf + 304);
          if (v14)
          {
            break;
          }

          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v12 == v10;
          }

          v16 = *v9;
          v9 += 3;
          v17 = v16;
          if (v15)
          {
            v11 = v17;
          }

          if (v9 == qword_6E8D68)
          {
            goto LABEL_27;
          }
        }

        v11 = *v9;
      }

LABEL_27:
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      v18 = v5[1];
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
          v19 = v5[2];
          v14 = *v19 == v5;
          v5 = v19;
        }

        while (!v14);
      }

      v6 = fminf(v6, v11);
      v5 = v19;
    }

    while (v19 != a1 + 114);
  }

  v20 = fabsf(v6);
  v21 = 1.0;
  if (v20 >= 1.0)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1.0;
  }

  if (v20 > fabsf(v22 * 0.00000011921))
  {
    v23 = a1[99];
    if (!v23)
    {
      v37 = sub_5544(14);
      v38 = *v37;
      if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2982;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v39 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v39, "Precondition failure.");
    }

    v21 = (*(*v23 + 280))(v23, v6);
  }

  v24 = sub_5544(1);
  v25 = *v24;
  if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
  {
    v40[0] = a1[48];
    sub_68108(&__p, v40);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136316162;
    *&buf[4] = "VirtualAudio_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2987;
    v45 = 2080;
    v46 = v26;
    v47 = 2048;
    v48 = v6;
    v49 = 2048;
    v50 = v21;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d SystemSoundVolumeCap for VAD '%s' is %f dB, %f scalar.", buf, 0x30u);
LABEL_47:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v21;
}

void sub_216150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2161C0(_DWORD *a1, double *a2, double a3)
{
  if (*a1 <= 7u)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "StandardUtilities.h";
        v10 = 1024;
        v11 = 175;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) <= ioDataSize", &v8, 0x12u);
      }
    }
  }

  *a1 = 8;
  *a2 = a3;
}

uint64_t sub_2162B4(uint64_t a1)
{
  v2 = sub_9F278(a1, 0);
  sub_44E44(v29, v2);
  v3 = sub_9F278(a1, 1);
  sub_44E44(v30, v3);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    sub_44E44(&v25, &v29[v6]);
    v7 = v25;
    if (v25 != v26)
    {
      break;
    }

LABEL_19:
    sub_477A0(v26[0]);
    v6 += 3;
    if (v6 == 6)
    {
      v22 = 0;
      goto LABEL_22;
    }
  }

  while (1)
  {
    v8 = *(v7 + 7);
    sub_2820();
    v9 = sub_3D90(v8);
    v27 = 0x676C6F6270767072;
    v28 = 0;
    v10 = sub_18953C(v9);
    *(&v13 + 1) = v11;
    *&v13 = v10;
    v12 = v13 >> 32;
    if ((v12 & 0x100000000) != 0)
    {
      if (v12)
      {
        break;
      }
    }

    v27 = 0x676C6F6270747970;
    v28 = 0;
    v14 = sub_18953C(v9);
    *(&v17 + 1) = v15;
    *&v17 = v14;
    v16 = v17 >> 32;
    if ((v16 & 0x100000000) == 0)
    {
      LODWORD(v16) = 0;
    }

    if (v16 == 1886613611)
    {
      v18 = 1;
    }

    else
    {
      v18 = v5;
    }

    if (v16 == 1886216809)
    {
      v4 = 1;
    }

    else
    {
      v5 = v18;
    }

    v19 = v7[1];
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
        v20 = v7[2];
        v21 = *v20 == v7;
        v7 = v20;
      }

      while (!v21);
    }

    v7 = v20;
    if (v20 == v26)
    {
      goto LABEL_19;
    }
  }

  sub_477A0(v26[0]);
  v22 = 1;
LABEL_22:
  for (i = 4; i != -2; i -= 3)
  {
    sub_477A0(v29[i]);
  }

  return (v22 | v4 & v5) & 1;
}

void sub_2164F0(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

BOOL sub_216534()
{
  sub_27A4();
  v0 = atomic_load(&qword_6E9558);
  return v0 == pthread_self();
}

uint64_t sub_216570()
{
  sub_27A4();
  v0 = *(qword_6E94F8 + 24);

  return v0();
}

uint64_t sub_2165C0()
{
  sub_27A4();
  v0 = *(qword_6E94F8 + 16);

  return v0();
}

uint64_t sub_216610()
{
  if ((atomic_load_explicit(&qword_6E6A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6A38))
  {
    qword_6E6A30 = 0;
    __cxa_guard_release(&qword_6E6A38);
  }

  result = qword_6E6A30;
  if (!qword_6E6A30)
  {
    v1 = dispatch_queue_create("AVHIDEventListenerQueue", 0);
    v2 = qword_6E6A30;
    qword_6E6A30 = v1;
    if (v2)
    {
      dispatch_release(v2);
      v1 = qword_6E6A30;
    }

    dispatch_queue_set_specific(v1, "AVHIDEventListenerQueueKey", "AVHIDEventListenerQueueKey", 0);
    return qword_6E6A30;
  }

  return result;
}

void sub_2166AC(IOHIDDeviceRef *a1, int a2)
{
  v4 = sub_216610();
  dispatch_assert_queue_V2(v4);
  report = 2;
  if (a2)
  {
    if ((atomic_load_explicit(&qword_6E6A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6A50))
    {
      v11 = sub_28AD88();
      dword_6E6A48 = v11;
      byte_6E6A4C = BYTE4(v11);
      __cxa_guard_release(&qword_6E6A50);
    }

    if (byte_6E6A4C == 1)
    {
      if ((byte_6E6A58 & 1) == 0)
      {
        v5 = sub_5544(42);
        v6 = *v5;
        if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v15 = "AVHIDEventListener.h";
          v16 = 1024;
          v17 = 350;
          v18 = 1024;
          v19 = dword_6E6A48;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Logging interval overridden to %ums", buf, 0x18u);
        }

        byte_6E6A58 = 1;
      }

      v7 = dword_6E6A48;
    }

    else
    {
      v7 = 50;
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  v8 = IOHIDDeviceSetReport(*a1, kIOHIDReportTypeFeature, 2, &report, 5);
  if (v8)
  {
    v9 = sub_5544(42);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v15 = "AVHIDEventListener.h";
        v16 = 1024;
        v17 = 306;
        v18 = 1024;
        v19 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %u setting device report", buf, 0x18u);
      }
    }
  }
}

BOOL sub_216BD0(uint64_t a1)
{
  sub_26C0(a1 + 24);
  v2 = *(a1 + 328);
  sub_3174(a1 + 24);
  return v2 != 0;
}

uint64_t sub_216C10(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_47C90(*a1);
  }

  return a1;
}

void sub_216C4C()
{
  qword_6E68D8 = IONotificationPortCreate(kIOMainPortDefault);
  dword_6E68E0 = 0;
  qword_6E68E8 = 0;
  sub_49BE8(&unk_6E68F0);
  qword_6E6A20 = 0;
  qword_6E6A18 = 0;
  qword_6E6A10 = &qword_6E6A18;
  v0 = sub_5544(42);
  v1 = *v0;
  if (*v0 && os_log_type_enabled(*v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AVHIDEventListener.h";
    *&buf[12] = 1024;
    *&buf[14] = 388;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding matching HID device notification handler.", buf, 0x12u);
  }

  v2 = qword_6E68D8;
  v3 = sub_216610();
  IONotificationPortSetDispatchQueue(v2, v3);
  cf = CFStringCreateWithBytes(0, "IOHIDDevice", 11, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_88CE8(buf, "IOProviderClass");
  CFRetain(cf);
  *&buf[8] = cf;
  LODWORD(valuePtr) = 65333;
  v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v15)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  sub_88CE8(&buf[16], "PrimaryUsagePage");
  v4 = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  v21 = v4;
  v19 = 1;
  valuePtr = CFNumberCreate(0, kCFNumberIntType, &v19);
  if (!valuePtr)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
  }

  sub_88CE8(&v22, "PrimaryUsage");
  v5 = valuePtr;
  if (valuePtr)
  {
    CFRetain(valuePtr);
  }

  v23[0] = v5;
  v17[0] = buf;
  v17[1] = 3;
  v6 = sub_69CE8(v17);
  v7 = 0;
  v18 = v6;
  do
  {
    v8 = v23[v7];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = v23[v7 - 1];
    if (v9)
    {
      CFRelease(v9);
    }

    v7 -= 2;
  }

  while (v7 != -6);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v18 = 0;
  IOServiceAddMatchingNotification(qword_6E68D8, "IOServiceMatched", v6, sub_2189FC, &qword_6E68D8, &dword_6E68E0);
  v10 = sub_216610();
  v17[0] = &qword_6E68D8;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_21793C;
  v21 = &unk_6B9908;
  v22 = v17;
  dispatch_sync(v10, buf);
}

void sub_217004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1DB924(&a10);
  sub_21794C(&a11);
  sub_452F0(&a12);
  do
  {
    v17 -= 16;
    sub_1D5D20(v17);
  }

  while (v17 != &a17);
  sub_477A0(qword_6E6A18);
  sub_13AB3C(&unk_6E68F0);
  sub_217178(&qword_6E68E8, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_217178(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = v2;
    v3 = sub_216610();
    if (dispatch_get_specific("AVHIDEventListenerQueueKey") == "AVHIDEventListenerQueueKey")
    {
      v4 = atomic_load((v2 + 72));
      if (v4)
      {
        sub_2166AC(v2, 0);
        IOHIDDeviceClose(*v2, 0);
        IOHIDDeviceCancel(*v2);
        *v2 = 0;
        atomic_store(0, (v2 + 72));
      }
    }

    else
    {
      v6 = &v5;
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_21758C;
      block[3] = &unk_6B9880;
      block[4] = &v6;
      dispatch_sync(v3, block);
    }

    sub_2178BC(v2 + 40);

    operator delete();
  }

  return result;
}

void sub_21758C(uint64_t a1)
{
  v1 = ***(a1 + 32);
  v2 = atomic_load((v1 + 72));
  if (v2)
  {
    sub_2166AC(***(a1 + 32), 0);
    IOHIDDeviceClose(*v1, 0);
    IOHIDDeviceCancel(*v1);
    *v1 = 0;
    atomic_store(0, (v1 + 72));
  }
}

uint64_t sub_2178BC(uint64_t a1)
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

const void **sub_21794C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_217980(uint64_t a1, io_iterator_t a2)
{
  v3 = sub_216610();
  dispatch_assert_queue_V2(v3);
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315650;
    *&buf[1] = "AVHIDEventListener.h";
    v25 = 1024;
    v26 = 411;
    v27 = 2048;
    v28 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Match iterator %lu.", buf, 0x1Cu);
  }

  MatchingService = 0;
  while (1)
  {
    v7 = IOIteratorNext(a2);
    v8 = v7;
    if (!v7)
    {
      break;
    }

    if (MatchingService)
    {
      v9 = sub_5544(42);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315394;
        *&buf[1] = "AVHIDEventListener.h";
        v25 = 1024;
        v26 = 427;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = "%25s:%-5d Found multiple matched services.";
        v14 = 18;
LABEL_13:
        _os_log_impl(&dword_0, v11, v12, v13, buf, v14);
      }
    }

    else
    {
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v7, &entryID);
      v15 = IORegistryEntryIDMatching(entryID);
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v15);
      v16 = sub_5544(42);
      v17 = *v16;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315650;
        *&buf[1] = "AVHIDEventListener.h";
        v25 = 1024;
        v26 = 423;
        v27 = 1024;
        LODWORD(v28) = MatchingService;
        v11 = v17;
        v12 = OS_LOG_TYPE_DEBUG;
        v13 = "%25s:%-5d Found matched service %u.";
        v14 = 24;
        goto LABEL_13;
      }
    }

    IOObjectRelease(v8);
  }

  if (MatchingService)
  {
    if (*(a1 + 16))
    {
      sub_217178((a1 + 16), 0);
    }

    operator new();
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = atomic_load((v18 + 72));
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = sub_216BD0(a1);
      sub_2166AC(v20, v21);
    }
  }
}

void sub_217E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2178BC(v6);
  sub_2178BC(va);
  operator delete();
}

void sub_217EE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = sub_216610();
  dispatch_assert_queue_V2(v10);
  if (a2)
  {
    v11 = sub_5544(42);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "AVHIDEventListener.h";
      v23 = 1024;
      v24 = 321;
      v25 = 1024;
      v26 = a2;
      v13 = "%25s:%-5d Input report I/O error: %d";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_5:
      _os_log_impl(&dword_0, v14, v15, v13, &v21, 0x18u);
    }
  }

  else if (a5 == 3)
  {
    v19 = *(a1 + 64);
    if (!v19)
    {
      sub_46A74();
    }

    v20 = *(*v19 + 48);

    v20();
  }

  else if (a5 == 2)
  {
    v16 = sub_5544(42);
    v17 = *v16;
    if (*v16)
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a6 + 1);
        v21 = 136315650;
        v22 = "AVHIDEventListener.h";
        v23 = 1024;
        v24 = 328;
        v25 = 1024;
        v26 = v18;
        v13 = "%25s:%-5d Received error status input report %d.";
        v14 = v17;
        v15 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_5;
      }
    }
  }
}

void sub_2180C4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  v4 = qword_6E6A40 + 1;
  v5 = qword_6E6A40 == 19;
  v6 = qword_6E6A40 == 19;
  if (qword_6E6A40 == 19)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_6E6A40 + 1;
  }

  qword_6E6A40 = v7;
  if (v5)
  {
    v8 = sub_5544(42);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v26 = "AVHIDEventListener.h";
        v27 = 1024;
        v28 = 477;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Received AVClient DRC payload.", buf, 0x12u);
      }
    }
  }

  v10 = *a2;
  v11 = a2[1];
  if ((v11 & 2) != 0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  if (v4 == 20)
  {
    v13 = sub_5544(42);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "1";
        v26 = "AVHIDEventListener.h";
        v27 = 1024;
        v28 = 484;
        v29 = 2048;
        if (v11)
        {
          v16 = "1";
        }

        else
        {
          v16 = "0";
        }

        *buf = 136316162;
        if (v12 <= 0.0)
        {
          v15 = "0";
        }

        v30 = v10;
        v31 = 2080;
        v32 = v16;
        v33 = 2080;
        v34 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d dBA estimate: %.2f, wind flag: %s, self voice: %s", buf, 0x30u);
      }
    }
  }

  v24[0] = v6;
  v17 = v3 + 24;
  sub_26C0(v3 + 24);
  v18 = *(v3 + 312);
  v19 = (v3 + 320);
  if (v18 != v19)
  {
    v20 = v10;
    do
    {
      v21 = v18[4];
      sub_218610(v24, v21, 1701735534, v20);
      sub_218610(v24, v21, 1937140846, v12);
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
          v5 = *v23 == v18;
          v18 = v23;
        }

        while (!v5);
      }

      v18 = v23;
    }

    while (v23 != v19);
  }

  sub_3174(v17);
}

void sub_218334(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_218598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  sub_2185D4(&a9);
  JUMPOUT(0x218348);
}

uint64_t sub_2185D4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_3174(*a1);
  }

  return a1;
}

void sub_218610(_BYTE *a1, void **a2, uint64_t a3, float a4)
{
  if ((*(*a2[109] + 368))(a2[109], 1685287015, a3, 0))
  {
    if (*a1 == 1)
    {
      v8 = sub_5544(42);
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v22, a3);
          v10 = v23;
          v11 = v22[0];
          ((*a2)[14])(__p, a2);
          v12 = v22;
          if (v10 < 0)
          {
            v12 = v11;
          }

          if (v21 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136316162;
          v25 = "AVHIDEventListener.h";
          v26 = 1024;
          v27 = 490;
          v28 = 2080;
          v29 = v12;
          v30 = 2048;
          v31 = a4;
          v32 = 2080;
          v33 = v13;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting param '%s' to '%.2f' on VAD '%s'.", buf, 0x30u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }
        }
      }
    }

    (*(*a2[109] + 384))(a2[109], 1685287015, a3, 0, a4);
  }

  else
  {
    v14 = sub_5544(42);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      ((*a2)[14])(v22, a2);
      v16 = v23;
      v17 = v22[0];
      sub_22170(__p, a3);
      v18 = v22;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v21 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *buf = 136315906;
      v25 = "AVHIDEventListener.h";
      v26 = 1024;
      v27 = 497;
      v28 = 2080;
      v29 = v18;
      v30 = 2080;
      v31 = *&v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VAD '%s' does not support param '%s'", buf, 0x26u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }
  }
}

void sub_21892C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_218968(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6B98B0;
  a2[1] = v2;
  return result;
}

void sub_2189FC(uint64_t a1, io_iterator_t a2)
{
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "AVHIDEventListener.h";
    v8 = 1024;
    v9 = 399;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Matched device callback.", &v6, 0x12u);
  }

  sub_217980(a1, a2);
}

__n128 sub_218AD4(__n128 *a1)
{
  result = *a1;
  v2 = a1->n128_u64[1];
  v3 = a1->n128_u64[0];
  if (a1->n128_u64[0] != v2)
  {
    do
    {
      sub_2820();
      v4 = *v3++;
      sub_3C3570(*(v4 + 8));
    }

    while (v3 != v2);
    sub_8703C();
    operator new();
  }

  return result;
}

void sub_218BEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_218FC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_218C34(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_189A00();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      sub_1DC9A4(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_218DD4(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void sub_218D2C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_218DD4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_218E4C(void *a1, __n128 *a2)
{
  *a1 = off_6CDCF8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  if (a1[2] == a1[1])
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v7 = "VirtualAudio_Utilities.h";
        v8 = 1024;
        v9 = 179;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return result;
}

void sub_218F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  a11 = a10;
  sub_218D2C(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_218FC8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_218D2C(&v2);
    operator delete();
  }

  return result;
}

void sub_219028(uint64_t a1)
{
  v1 = *(a1 + 16);
  memset(&v10, 0, sizeof(v10));
  std::string::append(&v10, "{ ", 2uLL);
  v2 = *(v1 + 8);
  if (v2 != *(v1 + 16))
  {
    do
    {
      std::to_string(&v11, *(*v2 + 8));
      v3 = std::string::insert(&v11, 0, "'", 1uLL);
      v4 = *&v3->__r_.__value_.__l.__data_;
      v12.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
      *&v12.__r_.__value_.__l.__data_ = v4;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      v5 = std::string::append(&v12, "'", 1uLL);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v14 = v5->__r_.__value_.__r.__words[2];
      *__p = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (v14 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v14 >= 0)
      {
        v8 = HIBYTE(v14);
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(&v10, v7, v8);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v2 += 8;
      v9 = *(v1 + 16);
      if (v2 != v9)
      {
        std::string::append(&v10, ", ", 2uLL);
        v9 = *(v1 + 16);
      }
    }

    while (v2 != v9);
  }

  std::string::append(&v10, " }", 2uLL);
  std::operator+<char>();
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2191B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_219228(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21926C(*(a1 + 16));

  sub_21991C(a2, 1920099684);
}

uint64_t sub_21926C(uint64_t a1)
{
  atomic_store(1u, byte_6FCF18);
  v22[0] = off_6CDD20;
  v22[3] = v22;
  sub_51FD0(v23, 0, v22);
  sub_4C70(v22);
  sub_1DB7C8(&v18);
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v2 != v1)
  {
    do
    {
      v3 = sub_5544(5);
      if (*(v3 + 8))
      {
        v4 = *v3;
        if (*v3)
        {
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
          {
            v5 = *v2;
            v6 = *(*v2 + 8);
            *buf = 136315906;
            *&buf[4] = "VirtualAudio_Utilities.h";
            *&buf[12] = 1024;
            *&buf[14] = 201;
            *&buf[18] = 2048;
            *&buf[20] = v6;
            *&buf[28] = 2048;
            *&buf[30] = v5;
            _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying HP object with ID %lu at address %p.", buf, 0x26u);
          }
        }
      }

      sub_2820();
      v21 = *(*v2 + 8);
      v19 = &unk_6FCDC8;
      v20 = 1;
      sub_26C0(&unk_6FCDC8);
      v7 = sub_23B090(&xmmword_6FCEE8, v21);
      if (v7)
      {
        v8 = v7;
        v9 = v7[4];
        if (v9)
        {
          if (*(v9 + 8) >= 1)
          {
            v10 = sub_5544(5);
            v11 = *v10;
            if (*v10)
            {
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "HP_ObjectManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 195;
                *&buf[18] = 2048;
                *&buf[20] = v21;
                _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Object with ID %lu has other references.", buf, 0x1Cu);
              }
            }
          }
        }

        sub_47BD8(v8[3] + 24);
        *buf = off_6CEEC0;
        *&buf[8] = &unk_6FCDC8;
        *&buf[16] = &v21;
        *&buf[24] = buf;
        v12 = *v2;
        *v2 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        sub_4650(buf);
      }

      sub_3174(&unk_6FCDC8);
      ++v2;
    }

    while (v2 != v1);
    v2 = *(a1 + 8);
    v1 = *(a1 + 16);
  }

  while (v2 != v1)
  {
    if (*v2)
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.h";
        *&buf[12] = 1024;
        *&buf[14] = 207;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Postcondition failure.");
    }

    ++v2;
  }

  sub_1DB63C(&v18);
  return sub_53BA4(v23);
}

void sub_219890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1DB63C(&a20);
  sub_53BA4(&a31);
  _Unwind_Resume(a1);
}

void sub_21991C(uint64_t a1, signed int a2)
{
  if (a2 <= 1920099683)
  {
    if (a2 <= 1919186543)
    {
      if (a2 > 1919050850)
      {
        if (a2 <= 1919181935)
        {
          if (a2 == 1919050851)
          {
            goto LABEL_35;
          }

          v3 = 1919118966;
        }

        else
        {
          if (a2 == 1919181936 || a2 == 1919184754)
          {
            goto LABEL_35;
          }

          v3 = 1919185776;
        }
      }

      else if (a2 <= 1667327074)
      {
        if (!a2)
        {
          goto LABEL_35;
        }

        v3 = 1651799408;
      }

      else
      {
        if (a2 == 1667327075 || a2 == 1918989155)
        {
          goto LABEL_35;
        }

        v3 = 1919050611;
      }

      goto LABEL_34;
    }

    if (a2 > 1919842147)
    {
      if (a2 > 1919970402)
      {
        if (a2 == 1919970403 || a2 == 1919971427)
        {
          goto LABEL_35;
        }

        v3 = 1919971701;
      }

      else
      {
        if (a2 == 1919842148 || a2 == 1919904885)
        {
          goto LABEL_35;
        }

        v3 = 1919907442;
      }

      goto LABEL_34;
    }

    if (a2 != 1919186544)
    {
LABEL_39:
      v8 = sub_5544(20);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, a2);
        v10 = v15 >= 0 ? __p : __p[0];
        *buf = 136315650;
        v17 = "RoutingManager_Utilities.h";
        v18 = 1024;
        v19 = 131;
        v20 = 2080;
        v21 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported VirtualAudioPlugInRouteChangeReason %s", buf, 0x1Cu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_35:
      v4 = sub_5544(14);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "RoutingManager_Utilities.h";
          v18 = 1024;
          v19 = 169;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }
  }

  else if (a2 > 1920360818)
  {
    if (a2 != 1920360819)
    {
      v3 = 1920429155;
LABEL_34:
      if (a2 == v3)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }
  }

  else if (a2 != 1920099684)
  {
    v3 = 1920168053;
    goto LABEL_34;
  }

  v11[0] = 0;
  v13 = 0;
  *a1 = 0;
  *(a1 + 4) = a2;
  sub_20309C(a1 + 8, v11);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v13 == 1)
  {
    sub_175F78(v12);
  }
}

void sub_219CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    sub_175F78(&a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_219DA0(uint64_t a1)
{
  sub_218FC8((a1 + 16));

  operator delete();
}

void sub_219E18(uint64_t a1)
{
  v1 = (a1 + 8);
  sub_218D2C(&v1);

  operator delete();
}

uint64_t sub_219E74(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_218D2C(&v3);
  return a1;
}

uint64_t sub_219EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *(a2 + 8);
  v5 = *(a1 + 328);
  v4 = *(a1 + 336);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      if (++v5 == v4)
      {
        goto LABEL_11;
      }
    }
  }

  if (v5 != v4)
  {
    *buf = *v5;
    sub_218C34(a3, buf);
    if (*buf)
    {
      (*(**buf + 8))(*buf);
    }

    v6 = *(a1 + 336);
    v7 = v6 - (v5 + 1);
    if (v6 != (v5 + 1))
    {
      memmove(v5, v5 + 1, v6 - (v5 + 1));
    }

    *(a1 + 336) = v5 + v7;
  }

LABEL_11:
  v8 = *(a1 + 376);
  v9 = *(a1 + 8);
  result = AudioObjectsPublishedAndDied();
  v11 = result;
  if (result)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v17 = 1024;
        v18 = 4971;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theError) [error theError is an error]: couldn't tell the HAL about the controls", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v11;
  }

  return result;
}

NSObject *sub_21A308(int a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v4 = 2003329396;
  if (!a4)
  {
    goto LABEL_16;
  }

  if (*a4 != a1 || a2 == 0)
  {
    goto LABEL_16;
  }

  v8 = (a4 + 16);
  v9 = a2;
  do
  {
    if (sub_15414((a4 + 4), a3))
    {
      v10 = sub_5544(32);
      v4 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = a4 + 16;
          if (*(a4 + 39) < 0)
          {
            v11 = *v8;
          }

          *buf = 136315650;
          v16 = "VirtualAudio_Device.cpp";
          v17 = 1024;
          v18 = 409;
          v19 = 2080;
          v20 = v11;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", buf, 0x1Cu);
        }

        v4 = 0;
      }
    }

    a3 += 3;
    --v9;
  }

  while (v9);
  if (v4)
  {
LABEL_16:
    v12 = sub_5544(32);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "VirtualAudio_Device.cpp";
      v17 = 1024;
      v18 = 416;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encountered one or more unexpected notification parameters", buf, 0x12u);
    }
  }

  return v4;
}

void sub_21A4D4(uint64_t a1, uint64_t a2)
{
  qword_709F08 = 0;
  qword_709F00 = 0;
  qword_709EF8 = &qword_709F00;
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_21A6A0(uint64_t a1)
{
  sub_42A4D8(a1 + 208);
  sub_42A4D8(a1 + 104);

  return sub_42A4D8(a1);
}

void sub_21A6E4(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v208 = sub_5544(14);
    v209 = *v208;
    if (*v208 && os_log_type_enabled(*v208, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 748;
      _os_log_impl(&dword_0, v209, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v7 = atomic_load(a1 + 70);
  if (v7 != pthread_self())
  {
    v8 = atomic_load(a1 + 83);
    if (v8 != pthread_self())
    {
      v235 = sub_5544(14);
      v236 = *v235;
      if (*v235 && os_log_type_enabled(*v235, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 749;
        _os_log_impl(&dword_0, v236, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v237 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v237, "Precondition failure.");
    }
  }

  if ((*(*a1 + 528))(a1))
  {
    v211 = sub_5544(14);
    v212 = *v211;
    if (*v211 && os_log_type_enabled(*v211, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 750;
      _os_log_impl(&dword_0, v212, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v213 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v213, "Precondition failure.");
  }

  v9 = a2;
  if (!a2[2])
  {
    v214 = sub_5544(14);
    v215 = *v214;
    if (*v214 && os_log_type_enabled(*v214, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 751;
      _os_log_impl(&dword_0, v215, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v216 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v216, "Precondition failure.");
  }

  if (!a2[5])
  {
    v217 = sub_5544(14);
    v218 = *v217;
    if (*v217 && os_log_type_enabled(*v217, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 755;
      _os_log_impl(&dword_0, v218, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): DeviceState output volume control is NULL", buf, 0x12u);
    }

    v219 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v219, "DeviceState output volume control is NULL");
  }

  if (!a2[6])
  {
    v220 = sub_5544(14);
    v221 = *v220;
    if (*v220 && os_log_type_enabled(*v220, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 756;
      _os_log_impl(&dword_0, v221, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): DeviceState output mute control is NULL", buf, 0x12u);
    }

    v222 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v222, "DeviceState output mute control is NULL");
  }

  if (!a2[7])
  {
    v223 = sub_5544(14);
    v224 = *v223;
    if (*v223 && os_log_type_enabled(*v223, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 757;
      _os_log_impl(&dword_0, v224, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): DeviceState input volume control is NULL", buf, 0x12u);
    }

    v225 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v225, "DeviceState input volume control is NULL");
  }

  if (!a2[8])
  {
    v226 = sub_5544(14);
    v227 = *v226;
    if (*v226 && os_log_type_enabled(*v226, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 758;
      _os_log_impl(&dword_0, v227, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): DeviceState input mute control is NULL", buf, 0x12u);
    }

    v228 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v228, "DeviceState input mute control is NULL");
  }

  v10 = *a4;
  sub_27A4();
  v11 = atomic_load(&qword_6E9558);
  if (v11 != pthread_self())
  {
    v229 = sub_5544(14);
    v230 = *v229;
    if (*v229 && os_log_type_enabled(*v229, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4242;
      _os_log_impl(&dword_0, v230, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v231 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v231, "Precondition failure.");
  }

  v12 = atomic_load(a1 + 70);
  if (v12 != pthread_self())
  {
    v13 = atomic_load(a1 + 83);
    if (v13 != pthread_self())
    {
      v238 = sub_5544(14);
      v239 = *v238;
      if (*v238 && os_log_type_enabled(*v238, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4243;
        _os_log_impl(&dword_0, v239, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v240 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v240, "Precondition failure.");
    }
  }

  if ((*(*a1 + 528))(a1))
  {
    v232 = sub_5544(14);
    v233 = *v232;
    if (*v232 && os_log_type_enabled(*v232, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4244;
      _os_log_impl(&dword_0, v233, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v234 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v234, "Precondition failure.");
  }

  if (a1[109] != a2[2])
  {
    operator new();
  }

  v14 = a1[99];
  v15 = a2[5];
  if (v14[12] != v15)
  {
    operator new();
  }

  v14[12] = v15;
  v14[14] = 0;
  v14[15] = 0;
  sub_1763B8(v14);
  v16 = a1[103];
  v17 = a2[6];
  if (*(v16 + 96) != v17)
  {
    operator new();
  }

  *(v16 + 96) = v17;
  v18 = a1[104];
  v19 = a2[7];
  if (v18[12] != v19)
  {
    operator new();
  }

  v18[12] = v19;
  v18[14] = 0;
  v18[15] = 0;
  sub_1763B8(v18);
  v20 = a1[105];
  v21 = a2[8];
  if (*(v20 + 96) != v21)
  {
    operator new();
  }

  *(v20 + 96) = v21;
  v22 = a1;
  v23 = a1[109];
  v24 = a2[2];
  a1[109] = v24;
  sub_1764B0(a1, v24, a4);
  __p[0] = 0;
  __p[1] = 0;
  v252 = 0;
  if (v23)
  {
    memset(buf, 0, 24);
    sub_1215C(buf, v23[18], v23[19], (v23[19] - v23[18]) >> 3);
    *__p = *buf;
    v252 = *&buf[16];
    (*(*v23 + 176))(v23);
    v22 = a1;
    (*(*v23 + 224))(v23, 0, 0);
  }

  if (v22[118])
  {
    v25 = sub_5544(1);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1[118] + 8);
      (*(*a1[109] + 128))(v263);
      v28 = v263[23];
      v29 = *v263;
      sub_68108(&inAddress, a1 + 96);
      v30 = v263;
      if (v28 < 0)
      {
        v30 = v29;
      }

      if ((inAddress.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_inAddress = &inAddress;
      }

      else
      {
        p_inAddress = inAddress.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5235;
      *&buf[18] = 2048;
      *&buf[20] = v27;
      v259 = 2080;
      v260 = v30;
      v261 = 2080;
      v262 = p_inAddress;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting work group interval handle %p on AggregateDevice %s, VAD %s", buf, 0x30u);
      if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(inAddress.__r_.__value_.__l.__data_);
      }

      v9 = a2;
      if ((v263[23] & 0x80000000) != 0)
      {
        operator delete(*v263);
      }
    }

    *v263 = *(a1[118] + 8);
    v32 = a1[109];
    strcpy(buf, "gwsobolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_163594(v32, buf, 8, v263);
  }

  (*(*a1[109] + 224))(a1[109], sub_5AF7C, a1);
  sub_179390(a1, *(v9 + 2), (a4 + 4));
  *(a1 + 938) = *(v9 + 3) == 1;
  v33 = sub_5544(1);
  v34 = *v33;
  if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1[109] + 128))(v263);
    v35 = v263[23];
    v36 = *v263;
    sub_68108(&inAddress, a1 + 96);
    v37 = v263;
    if (v35 < 0)
    {
      v37 = v36;
    }

    if ((inAddress.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &inAddress;
    }

    else
    {
      v38 = inAddress.__r_.__value_.__r.__words[0];
    }

    v39 = *(a1 + 938);
    *&buf[4] = "VirtualAudio_Device.cpp";
    *&buf[12] = 1024;
    *buf = 136316162;
    *&buf[14] = 794;
    if (v39)
    {
      v40 = "on";
    }

    else
    {
      v40 = "off";
    }

    *&buf[18] = 2080;
    *&buf[20] = v37;
    v259 = 2080;
    v260 = v38;
    v261 = 2080;
    v262 = v40;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AggregateDevice %s, VAD %s, configuration: sharing %s", buf, 0x30u);
    if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(inAddress.__r_.__value_.__l.__data_);
    }

    v9 = a2;
    if ((v263[23] & 0x80000000) != 0)
    {
      operator delete(*v263);
    }
  }

  sub_179498(a1, 1, *(a1 + 408), a4 + 1);
  sub_179498(a1, 0, *(a1 + 409), a4 + 1);
  sub_179A58(&v249, a1, a3, 1768845428);
  sub_179A58(&v247, a1, a3, 1869968496);
  if (a1[112] == v250[1])
  {
    v41 = a1[110];
    if (v41 == a1 + 111)
    {
LABEL_68:
      v47 = 0;
      goto LABEL_72;
    }

    v42 = v249;
    while (*(v41 + 7) == *(v42 + 7))
    {
      v43 = v41[1];
      v44 = v41;
      if (v43)
      {
        do
        {
          v41 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v41 = v44[2];
          v153 = *v41 == v44;
          v44 = v41;
        }

        while (!v153);
      }

      v45 = v42[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v42[2];
          v153 = *v46 == v42;
          v42 = v46;
        }

        while (!v153);
      }

      v42 = v46;
      if (v41 == a1 + 111)
      {
        goto LABEL_68;
      }
    }
  }

  if (a1 + 110 != &v249)
  {
    sub_4ABC8(a1 + 110, v249, v250);
  }

  v48 = *(a1 + 2);
  strcpy(buf, "pcadtpni");
  buf[9] = 0;
  *&buf[10] = 0;
  v49 = sub_163EF0(a4 + 1, v48);
  sub_172ED8(v49, buf);
  v50 = *(a1 + 2);
  strcpy(buf, "cfpatpni");
  buf[9] = 0;
  *&buf[10] = 0;
  v51 = sub_163EF0(a4 + 1, v50);
  sub_172ED8(v51, buf);
  v47 = 1;
LABEL_72:
  if (a1[115] == v248[1])
  {
    v52 = a1[113];
    if (v52 == a1 + 114)
    {
LABEL_87:
      if (!v47)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v53 = v247;
    while (*(v52 + 7) == *(v53 + 7))
    {
      v54 = v52[1];
      v55 = v52;
      if (v54)
      {
        do
        {
          v52 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v52 = v55[2];
          v153 = *v52 == v55;
          v55 = v52;
        }

        while (!v153);
      }

      v56 = v53[1];
      if (v56)
      {
        do
        {
          v57 = v56;
          v56 = *v56;
        }

        while (v56);
      }

      else
      {
        do
        {
          v57 = v53[2];
          v153 = *v57 == v53;
          v53 = v57;
        }

        while (!v153);
      }

      v53 = v57;
      if (v52 == a1 + 114)
      {
        goto LABEL_87;
      }
    }
  }

  if (a1 + 113 != &v247)
  {
    sub_4ABC8(a1 + 113, v247, v248);
  }

  v58 = *(a1 + 2);
  strcpy(buf, "pcadptuo");
  buf[9] = 0;
  *&buf[10] = 0;
  v59 = sub_163EF0(a4 + 1, v58);
  sub_172ED8(v59, buf);
  v60 = *(a1 + 2);
  strcpy(buf, "cfpaptuo");
  buf[9] = 0;
  *&buf[10] = 0;
  v61 = sub_163EF0(a4 + 1, v60);
  sub_172ED8(v61, buf);
LABEL_92:
  v62 = *(a1 + 2);
  strcpy(buf, "pcadbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v63 = sub_163EF0(a4 + 1, v62);
  sub_172ED8(v63, buf);
  v64 = *(a1 + 2);
  strcpy(buf, "cfpabolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v65 = sub_163EF0(a4 + 1, v64);
  sub_172ED8(v65, buf);
LABEL_93:
  v66 = *(a1 + 2);
  strcpy(buf, "hcvatpni");
  buf[9] = 0;
  *&buf[10] = 0;
  v67 = sub_163EF0(a4 + 1, v66);
  sub_172ED8(v67, buf);
  v68 = *(a1 + 2);
  strcpy(buf, "hcnetpni");
  buf[9] = 0;
  *&buf[10] = 0;
  v69 = sub_163EF0(a4 + 1, v68);
  sub_172ED8(v69, buf);
  if (_os_feature_enabled_impl() && *(a1 + 96) == 1987011684)
  {
    v70 = a1[47];
    v71 = *(a1 + 97);
    v254 = 0;
    v253 = 0uLL;
    v72 = *(v70 + 120);
    *&inAddress.__r_.__value_.__r.__words[1] = 0uLL;
    inAddress.__r_.__value_.__r.__words[0] = &inAddress.__r_.__value_.__l.__size_;
    v73 = *(v72 + 16);
    v74 = (v72 + 24);
    if (v73 != (v72 + 24))
    {
      v243 = v71;
      do
      {
        v75 = v73[5];
        if (*(v75 + 305) == 1)
        {
          sub_A4E68(buf, v75 + 88);
          v76 = *(v73[5] + 8);
          size = inAddress.__r_.__value_.__l.__size_;
          if (!inAddress.__r_.__value_.__l.__size_)
          {
LABEL_104:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v78 = size;
              v79 = *(size + 32);
              if (v76 >= v79)
              {
                break;
              }

              size = *v78;
              if (!*v78)
              {
                goto LABEL_104;
              }
            }

            if (v79 >= v76)
            {
              break;
            }

            size = v78[1];
            if (!size)
            {
              goto LABEL_104;
            }
          }

          sub_23B8EC((v78 + 5), buf);
          sub_A5114(buf);
        }

        v80 = v73[1];
        if (v80)
        {
          do
          {
            v81 = v80;
            v80 = *v80;
          }

          while (v80);
        }

        else
        {
          do
          {
            v81 = v73[2];
            v153 = *v81 == v73;
            v73 = v81;
          }

          while (!v153);
        }

        v73 = v81;
      }

      while (v81 != v74);
      v82 = inAddress.__r_.__value_.__r.__words[0];
      if (inAddress.__r_.__value_.__l.__data_ != &inAddress.__r_.__value_.__r.__words[1])
      {
        do
        {
          if (*(v82 + 128) == 1)
          {
            v83 = *(v82 + 124);
            if ((v83 & 0x100000000) != 0 && v243 == v83)
            {
              sub_AFD28(&v253, (v82 + 32));
            }
          }

          v84 = *(v82 + 8);
          if (v84)
          {
            do
            {
              v85 = v84;
              v84 = v84->__r_.__value_.__r.__words[0];
            }

            while (v84);
          }

          else
          {
            do
            {
              v85 = *(v82 + 16);
              v153 = v85->__r_.__value_.__r.__words[0] == v82;
              v82 = v85;
            }

            while (!v153);
          }

          v82 = v85;
        }

        while (v85 != &inAddress.__r_.__value_.__r.__words[1]);
      }
    }

    sub_23BB40(inAddress.__r_.__value_.__l.__size_);
    v86 = v253;
    if (v253 != *(&v253 + 1))
    {
      v87 = v253;
      do
      {
        v88 = *v87;
        strcpy(buf, "oresbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v89 = sub_163EF0(a4 + 1, v88);
        sub_172ED8(v89, buf);
        ++v87;
      }

      while (v87 != *(&v86 + 1));
    }

    v9 = a2;
    if (v86)
    {
      operator delete(v86);
    }
  }

  memset(v263, 0, sizeof(v263));
  v90 = (a1 + 100);
  v91 = a1[100];
  if (v91 != a1[101])
  {
    do
    {
      sub_219EB0(a1, *v91, v263);
      v92 = a1[101];
      v93 = v92 - (v91 + 1);
      if (v92 == v91 + 1)
      {
        v94 = a1[100];
      }

      else
      {
        memmove(v91, v91 + 1, v92 - (v91 + 1));
        v94 = *v90;
      }

      v95 = (v91 + v93);
      a1[101] = v91 + v93;
      v91 = v94;
    }

    while (v94 != v95);
  }

  if (*(v9 + 3) == 1)
  {
    v96 = a1[113];
    if (v96 != a1 + 114)
    {
      v97 = a2 + 10;
      do
      {
        sub_2820();
        v98 = sub_3D90(*(v96 + 7));
        v99 = *(v98 + 96);
        v256 = *(v98 + 88);
        v257 = v99;
        if (v99)
        {
          atomic_fetch_add_explicit(&v99->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_25704(&v253, &v256, "", 5027);
        v100 = *(v253 + 200);
        inAddress.__r_.__value_.__r.__words[0] = *(v253 + 192);
        inAddress.__r_.__value_.__l.__size_ = v100;
        if (v100)
        {
          atomic_fetch_add_explicit(&v100->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_5659C(buf, &inAddress, "", 5027);
        v101 = (*(**buf + 120))(*buf);
        v102 = *v97;
        if (!*v97)
        {
          goto LABEL_148;
        }

        v103 = a2 + 10;
        do
        {
          v104 = *(v102 + 32);
          v105 = v104 >= v101;
          v106 = v104 < v101;
          if (v105)
          {
            v103 = v102;
          }

          v102 = *(v102 + 8 * v106);
        }

        while (v102);
        if (v103 == v97 || v101 < *(v103 + 8))
        {
LABEL_148:
          v103 = a2 + 10;
        }

        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v100)
        {
          std::__shared_weak_count::__release_weak(v100);
        }

        if (*(&v253 + 1))
        {
          sub_1A8C0(*(&v253 + 1));
        }

        if (v99)
        {
          std::__shared_weak_count::__release_weak(v99);
        }

        if (v103 != v97)
        {
          v107 = sub_5544(18);
          v108 = *v107;
          if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_DEFAULT))
          {
            sub_68108(&inAddress, a1 + 96);
            v109 = &inAddress;
            if ((inAddress.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v109 = inAddress.__r_.__value_.__r.__words[0];
            }

            v110 = *(v96 + 7);
            *buf = 136315906;
            *&buf[4] = "VirtualAudio_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5031;
            *&buf[18] = 2080;
            *&buf[20] = v109;
            v259 = 1024;
            LODWORD(v260) = v110;
            _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s creating volume control with element %u", buf, 0x22u);
            if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(inAddress.__r_.__value_.__l.__data_);
            }
          }

          v111 = *(v96 + 7);
          v112 = sub_1C98D8(a1, 0x766C6D65u);
          *buf = v112;
          v112[12] = v103[5];
          v112[14] = 0;
          v112[15] = 0;
          sub_1763B8(v112);
          sub_165F10(v90, buf);
        }

        v113 = v96[1];
        if (v113)
        {
          do
          {
            v114 = v113;
            v113 = *v113;
          }

          while (v113);
        }

        else
        {
          do
          {
            v114 = v96[2];
            v153 = *v114 == v96;
            v96 = v114;
          }

          while (!v153);
        }

        v96 = v114;
      }

      while (v114 != a1 + 114);
    }
  }

  sub_2214A0(*a4, v263);
  *buf = v263;
  sub_218D2C(buf);
  memset(v263, 0, sizeof(v263));
  v115 = a1;
  v116 = a1[106];
  if (v116 != a1[107])
  {
    do
    {
      sub_219EB0(v115, *v116, v263);
      v117 = *(v115 + 856);
      v118 = v117 - (v116 + 1);
      if (v117 != v116 + 1)
      {
        memmove(v116, v116 + 1, v117 - (v116 + 1));
      }

      v115 = a1;
      a1[107] = v116 + v118;
    }

    while (v116 != (v116 + v118));
  }

  v119 = a2[12];
  for (i = a2[13]; v119 != i; v119 += 4)
  {
    v121 = sub_5544(18);
    v122 = *v121;
    if (*v121 && os_log_type_enabled(*v121, OS_LOG_TYPE_DEFAULT))
    {
      sub_68108(&inAddress, a1 + 96);
      v123 = &inAddress;
      if ((inAddress.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v123 = inAddress.__r_.__value_.__r.__words[0];
      }

      v124 = *v119;
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5057;
      *&buf[18] = 2080;
      *&buf[20] = v123;
      v259 = 2048;
      v260 = v124;
      _os_log_impl(&dword_0, v122, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s creating input channel volume control with element %lu", buf, 0x26u);
      if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(inAddress.__r_.__value_.__l.__data_);
      }
    }

    v125 = *v119;
    v126 = sub_1C98D8(a1, 0x766C6D65u);
    *buf = v126;
    v126[12] = *(v119 + 1);
    v126[14] = 0;
    v126[15] = 0;
    sub_1763B8(v126);
    sub_165F10((a1 + 106), buf);
  }

  sub_2214A0(*a4, v263);
  *buf = v263;
  sub_218D2C(buf);
  v127 = a1[55];
  if (!v127)
  {
    operator new();
  }

  if ((*(v127 + 136) & 1) == 0)
  {
    v193 = sub_5544(14);
    v194 = *v193;
    if (*v193)
    {
      if (os_log_type_enabled(*v193, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 143;
        _os_log_impl(&dword_0, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VirtualAudio_DevicePropertyManager has not been initialized.", buf, 0x12u);
      }
    }
  }

  v241 = (*(*(v127 + 32) + 16))();
  if (!*(v127 + 144))
  {
    v195 = sub_5544(14);
    v196 = *v195;
    if (*v195)
    {
      if (os_log_type_enabled(*v195, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 149;
        _os_log_impl(&dword_0, v196, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mDevicePropertyCache is NULL", buf, 0x12u);
      }
    }
  }

  sub_1636D4(*(v127 + 144), a2[2], a4 + 1);
  if (!*(v127 + 160))
  {
    v197 = sub_5544(14);
    v198 = *v197;
    if (*v197)
    {
      if (os_log_type_enabled(*v197, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 153;
        _os_log_impl(&dword_0, v198, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mInputVolumeControlPropertyCache is NULL", buf, 0x12u);
      }
    }
  }

  sub_1636D4(*(v127 + 160), a2[7], a4 + 1);
  if (!*(v127 + 176))
  {
    v199 = sub_5544(14);
    v200 = *v199;
    if (*v199)
    {
      if (os_log_type_enabled(*v199, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 157;
        _os_log_impl(&dword_0, v200, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mOutputVolumeControlPropertyCache is NULL", buf, 0x12u);
      }
    }
  }

  sub_1636D4(*(v127 + 176), a2[5], a4 + 1);
  if (!*(v127 + 192))
  {
    v201 = sub_5544(14);
    v202 = *v201;
    if (*v201)
    {
      if (os_log_type_enabled(*v201, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 161;
        _os_log_impl(&dword_0, v202, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mInputMutePropertyCache is NULL", buf, 0x12u);
      }
    }
  }

  sub_1636D4(*(v127 + 192), a2[8], a4 + 1);
  if (!*(v127 + 208))
  {
    v203 = sub_5544(14);
    v204 = *v203;
    if (*v203)
    {
      if (os_log_type_enabled(*v203, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_DevicePropertyManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 165;
        _os_log_impl(&dword_0, v204, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mOutputMutePropertyCache is NULL", buf, 0x12u);
      }
    }
  }

  sub_1636D4(*(v127 + 208), a2[6], a4 + 1);
  v128 = (v127 + 224);
  for (j = *(v127 + 232); j != v128; j = *(j + 8))
  {
    sub_13E020(*(j + 16));
    sub_165C3C(v127 + 320, *(j + 16));
  }

  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  v130 = sub_9F278(*(v127 + 24), 1);
  v132 = v130 + 1;
  v131 = *v130;
  if (*v130 != v130 + 1)
  {
    v133 = a2 + 10;
    do
    {
      sub_2820();
      v134 = sub_3D90(*(v131 + 7));
      v135 = *(v134 + 96);
      v256 = *(v134 + 88);
      v257 = v135;
      if (v135)
      {
        atomic_fetch_add_explicit(&v135->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_25704(&v253, &v256, "", 182);
      v136 = *(v253 + 200);
      inAddress.__r_.__value_.__r.__words[0] = *(v253 + 192);
      inAddress.__r_.__value_.__l.__size_ = v136;
      if (v136)
      {
        atomic_fetch_add_explicit(&v136->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_5659C(v263, &inAddress, "", 182);
      v137 = (*(**v263 + 120))(*v263);
      v138 = *v133;
      if (!*v133)
      {
        goto LABEL_207;
      }

      v139 = a2 + 10;
      do
      {
        v140 = *(v138 + 32);
        v105 = v140 >= v137;
        v141 = v140 < v137;
        if (v105)
        {
          v139 = v138;
        }

        v138 = *(v138 + 8 * v141);
      }

      while (v138);
      if (v139 == v133 || v137 < *(v139 + 8))
      {
LABEL_207:
        v139 = a2 + 10;
      }

      if (*&v263[8])
      {
        sub_1A8C0(*&v263[8]);
      }

      if (v136)
      {
        std::__shared_weak_count::__release_weak(v136);
      }

      if (*(&v253 + 1))
      {
        sub_1A8C0(*(&v253 + 1));
      }

      if (v135)
      {
        std::__shared_weak_count::__release_weak(v135);
      }

      if (v139 != v133)
      {
        v142 = sub_2239CC(*(v127 + 24), *(v131 + 7));
        if (v142)
        {
          LODWORD(v253) = *(v142 + 8);
          v143 = *(v127 + 16);
          *v263 = *(v127 + 8);
          *&v263[8] = v143;
          if (v143)
          {
            atomic_fetch_add_explicit((v143 + 16), 1uLL, memory_order_relaxed);
          }

          sub_224FA8();
        }

        v190 = sub_5544(14);
        v191 = *v190;
        if (*v190 && os_log_type_enabled(*v190, OS_LOG_TYPE_ERROR))
        {
          *v263 = 136315394;
          *&v263[4] = "VirtualAudio_DevicePropertyManager.cpp";
          *&v263[12] = 1024;
          *&v263[14] = 187;
          _os_log_impl(&dword_0, v191, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [theVolumeControl is NULL]: couldn't get a volume control from device.", v263, 0x12u);
        }

        v192 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v192, "couldn't get a volume control from device.");
      }

      v144 = v131[1];
      if (v144)
      {
        do
        {
          v145 = v144;
          v144 = *v144;
        }

        while (v144);
      }

      else
      {
        do
        {
          v145 = v131[2];
          v153 = *v145 == v131;
          v131 = v145;
        }

        while (!v153);
      }

      v131 = v145;
    }

    while (v145 != v132);
  }

  if (v128 != buf)
  {
    sub_1C64C0((v127 + 224), *&buf[8], buf);
  }

  sub_87980(buf);
  v146 = (v127 + 248);
  for (k = *(v127 + 256); k != v146; k = *(k + 8))
  {
    sub_13E020(*(k + 16));
    sub_165C3C(v127 + 320, *(k + 16));
  }

  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  v148 = a2[12];
  if (v148 != a2[13])
  {
    v149 = sub_223A60(*(v127 + 24), *v148);
    if (v149)
    {
      LODWORD(v253) = *(v149 + 8);
      v150 = *(v127 + 16);
      *v263 = *(v127 + 8);
      *&v263[8] = v150;
      if (v150)
      {
        atomic_fetch_add_explicit((v150 + 16), 1uLL, memory_order_relaxed);
      }

      sub_224FA8();
    }

    v187 = sub_5544(14);
    v188 = *v187;
    if (*v187 && os_log_type_enabled(*v187, OS_LOG_TYPE_ERROR))
    {
      *v263 = 136315394;
      *&v263[4] = "VirtualAudio_DevicePropertyManager.cpp";
      *&v263[12] = 1024;
      *&v263[14] = 226;
      _os_log_impl(&dword_0, v188, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [theVolumeControl is NULL]: couldn't get a volume control from device.", v263, 0x12u);
    }

    v189 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v189, "couldn't get a volume control from device.");
  }

  if (v146 != buf)
  {
    sub_1C64C0((v127 + 248), *&buf[8], buf);
  }

  sub_87980(buf);
  v151 = 0;
  while (1)
  {
    v152 = v151;
    v153 = (v151 & 1) == 0;
    v154 = 272;
    if (!v153)
    {
      v154 = 296;
    }

    v155 = (v127 + v154);
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    if (v153)
    {
      v156 = 280;
    }

    else
    {
      v156 = 304;
    }

    if (v153)
    {
      v157 = 288;
    }

    else
    {
      v157 = 312;
    }

    v158 = *(v127 + 24);
    v159 = *(v158 + v156);
    if (((*(v158 + v157) - v159) & 0x7FFFFFFF8) != 0)
    {
      v160 = 0;
      do
      {
        v161 = v155[1];
        if (v161 != v155)
        {
          v162 = (*(v158 + v156 + 8) - v159) >> 3;
          while (1)
          {
            if (v162 > v160)
            {
              v163 = *(v159 + 8 * v160);
              if (v163)
              {
                if (*(v161[2] + 16) == *(v163 + 8))
                {
                  break;
                }
              }
            }

            v161 = v161[1];
            if (v161 == v155)
            {
              goto LABEL_261;
            }
          }
        }

        if (v161 == v155)
        {
          v162 = (*(v158 + v156 + 8) - v159) >> 3;
LABEL_261:
          if (v162 > v160)
          {
            v167 = *(v159 + 8 * v160);
            if (v167)
            {
              LODWORD(v253) = *(v167 + 8);
              v168 = *(v127 + 16);
              *v263 = *(v127 + 8);
              *&v263[8] = v168;
              if (v168)
              {
                atomic_fetch_add_explicit((v168 + 16), 1uLL, memory_order_relaxed);
              }

              sub_224FA8();
            }
          }

          v205 = sub_5544(14);
          v206 = *v205;
          if (*v205 && os_log_type_enabled(*v205, OS_LOG_TYPE_ERROR))
          {
            *v263 = 136315394;
            *&v263[4] = "VirtualAudio_DevicePropertyManager.cpp";
            *&v263[12] = 1024;
            *&v263[14] = 283;
            _os_log_impl(&dword_0, v206, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [thePluginStream is NULL]: couldn't get a stream from device.", v263, 0x12u);
          }

          v207 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v207, "couldn't get a stream from device.");
        }

        v164 = v161[2];
        v165 = a2[2];
        if (v165)
        {
          v166 = (*(*v165 + 96))(v165, v152 & 1, v160);
        }

        else
        {
          v166 = 0;
        }

        sub_1636D4(v164, v166, a4 + 1);
        if (buf != v161)
        {
          v169 = v161[1];
          if (v169 != buf)
          {
            v170 = *v161;
            *(v170 + 8) = v169;
            *v169 = v170;
            v171 = *buf;
            *(*buf + 8) = v161;
            *v161 = v171;
            v161[1] = buf;
            *buf = v161;
            --v155[2];
            ++*&buf[16];
          }
        }

        v158 = *(v127 + 24);
        ++v160;
        v159 = *(v158 + v156);
      }

      while (v160 < ((*(v158 + v157) - v159) >> 3));
    }

    for (m = v155; ; sub_165C3C(v127 + 320, m[2]))
    {
      m = m[1];
      if (m == v155)
      {
        break;
      }

      sub_13E020(m[2]);
    }

    if (v155 != buf)
    {
      sub_1C64C0(v155, *&buf[8], buf);
    }

    sub_87980(buf);
    v151 = 1;
    if (v152)
    {
      if (v241)
      {
        (*(*(v127 + 32) + 24))(v127 + 32);
      }

      (*(*a1[109] + 528))(a1[109], __p);
      sub_1C76AC(a1);
      sub_1C7820(a1);
      v173 = 0;
      v174 = 1;
      while (1)
      {
        v175 = (v174 & 1) == 0;
        v176 = (v174 & 1) != 0 ? 280 : 304;
        v177 = v175 ? 312 : 288;
        v178 = (a1 + v176);
        v179 = *(a1 + v177) - *(a1 + v176);
        if ((v179 & 0x7FFFFFFF8) != 0)
        {
          break;
        }

        v184 = 0;
LABEL_300:
        v174 = 0;
        v186 = v184 | v173;
        v173 = 1;
        if (v186)
        {
          goto LABEL_303;
        }
      }

      v180 = 0;
      v181 = (v179 >> 3);
      while (1)
      {
        v182 = v180 >= (v178[1] - *v178) >> 3 ? 0 : *(*v178 + 8 * v180);
        if (sub_1C7F9C(*(v182 + 120), 1885629550))
        {
          break;
        }

        v183 = sub_1C7F9C(*(v182 + 120), 1886743662);
        v184 = v183;
        if (++v180 >= v181)
        {
          v185 = 1;
        }

        else
        {
          v185 = v183;
        }

        if (v185)
        {
          goto LABEL_300;
        }
      }

      v184 = 1;
LABEL_303:
      sub_1381B4(a1, v184, 1);
      sub_DBBAC(a1);
      sub_21F4BC(a1, a5);
      sub_1C8C94(a1);
      sub_1375B8(a1);
      sub_13738C(a1[55]);
    }
  }
}