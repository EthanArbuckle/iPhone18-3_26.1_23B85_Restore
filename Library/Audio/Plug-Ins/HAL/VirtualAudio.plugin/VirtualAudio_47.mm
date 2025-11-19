void sub_3F1490(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F14A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F14AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F14B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F14BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F14C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F14CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  sub_46228((v26 - 176));
  sub_46228(&a26);
  JUMPOUT(0x3F191CLL);
}

void sub_3F18B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F18C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_3F18CC(a1);
  }

  sub_1CC130(a1);
}

void sub_3F18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_347A64(&a29);
  sub_23EA78(&a33);
  sub_23EA78((v33 - 176));
  JUMPOUT(0x3F18F8);
}

void sub_3F1928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_347A64(&a29);
  sub_23EA78(&a33);
  sub_23EA78((v33 - 176));
  JUMPOUT(0x3F194CLL);
}

void sub_3F1980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_347A64(&a29);
  sub_23EA78(&a33);
  sub_23EA78((v33 - 176));
  JUMPOUT(0x3F19A4);
}

void sub_3F19CC(CFArrayRef *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a1;
  if (a2 == a3)
  {
    *a1 = 0;
  }

  else
  {
    v4 = a2;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = *a2;
    v5 = v41;
    sub_3EC854(&v41);
    v6 = 0;
    v7 = v4 + 4;
    v8 = (v5 >> 24) * BYTE2(v5);
    v38 = v5 >> 24;
    v9 = -4 - v8;
    do
    {
      v10 = *v4++;
      v6 += v10;
      ++v9;
    }

    while (v9);
    if (0x10000 - v6 == *&v7[v8])
    {
      v37 = v3;
      if (BYTE3(v5))
      {
        do
        {
          v11 = *v7;
          v12 = *(v7 + 1);
          v13 = v7[4];
          v39 = v7;
          v14 = *(v7 + 5);
          v15 = CFStringCreateWithBytes(0, "trim_gain_data_source_id", 24, 0x8000100u, 0);
          v48[1] = v15;
          if (!v15)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          LODWORD(valuePtr[0]) = v14;
          v16 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
          v48[0] = v16;
          if (!v16)
          {
            v29 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v29, "Could not construct");
          }

          sub_3EC9AC(buf, v15, v48);
          v17 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
          v47[1] = v17;
          if (!v17)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v31, "Could not construct");
          }

          *valuePtr = v11 * 0.1;
          v18 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v47[0] = v18;
          if (!v18)
          {
            v32 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v32, "Could not construct");
          }

          sub_3EC9AC((&v52 + 2), v17, v47);
          v19 = CFStringCreateWithBytes(0, "mic_resonant_frequency", 22, 0x8000100u, 0);
          v46[1] = v19;
          if (!v19)
          {
            v33 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v33, "Could not construct");
          }

          LOWORD(valuePtr[0]) = v12;
          v20 = CFNumberCreate(0, kCFNumberShortType, valuePtr);
          v46[0] = v20;
          if (!v20)
          {
            v34 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v34, "Could not construct");
          }

          sub_3EC9AC(&v53, v19, v46);
          v21 = CFStringCreateWithBytes(0, "mic_filter_id", 13, 0x8000100u, 0);
          v45[1] = v21;
          if (!v21)
          {
            v35 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v35, "Could not construct");
          }

          LOBYTE(valuePtr[0]) = v13;
          v22 = CFNumberCreate(0, kCFNumberCharType, valuePtr);
          v45[0] = v22;
          if (!v22)
          {
            v36 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v36, "Could not construct");
          }

          sub_3EC9AC(v54, v21, v45);
          valuePtr[0] = buf;
          valuePtr[1] = 4;
          v23 = 0;
          v40 = sub_69CE8(valuePtr);
          do
          {
            v24 = v54[v23 + 1];
            if (v24)
            {
              CFRelease(v24);
            }

            v25 = v54[v23];
            if (v25)
            {
              CFRelease(v25);
            }

            v23 -= 2;
          }

          while (v23 != -8);
          CFRelease(v22);
          CFRelease(v21);
          CFRelease(v20);
          CFRelease(v19);
          CFRelease(v18);
          CFRelease(v17);
          CFRelease(v16);
          CFRelease(v15);
          sub_75F38(&v42, &v40);
          if (v40)
          {
            CFRelease(v40);
          }

          v7 = v39 + 9;
        }

        while (v38 > (v43 - v42) >> 3);
      }

      v26 = sub_76110(&v42);
      v3 = v37;
    }

    else
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "FDRDataImpl.cpp";
        v51 = 1024;
        v52 = 495;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d FDR Checksum failed for data returned from EDT! Returning empty ascf::ArrayRef", buf, 0x12u);
      }

      v26 = 0;
    }

    *v3 = v26;
    *buf = &v42;
    sub_761AC(buf);
  }
}

void sub_3F1F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a16;
  sub_761AC(&a29);
  _Unwind_Resume(a1);
}

void sub_3F212C(CFArrayRef *a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v1)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *v232 = 136315650;
      *&v232[4] = "EDTUtilsImpl.h";
      *&v232[12] = 1024;
      *&v232[14] = 46;
      *&v232[18] = 2080;
      *&v232[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", v232, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v2 = CFStringCreateWithBytes(0, "speaker-thiele-small-0", 22, 0x8000100u, 0);
  *v232 = v2;
  if (!v2)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0);
  cf = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_73;
  }

  v4 = CFGetTypeID(CFProperty);
  if (v4 != CFDataGetTypeID())
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
  }

  if (!cf)
  {
LABEL_73:
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
  }

  sub_28DF08(&v210, cf);
  CFRelease(cf);
  if (*v232)
  {
    CFRelease(*v232);
  }

  IOObjectRelease(v1);
  if (v210 == v211)
  {
    v200 = 0;
    goto LABEL_83;
  }

  sub_3F5978(&v200, v210, v211);
  v5 = sub_5544(18);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = CFCopyDescription(v200);
        *buf = v7;
        sub_1267C(&cf, v7);
        if (v7)
        {
          CFRelease(v7);
        }

        p_cf = &cf;
        if (SHIBYTE(v206) < 0)
        {
          p_cf = cf;
        }

        *v232 = 136316162;
        *&v232[4] = "FDRDataImpl.cpp";
        *&v232[12] = 1024;
        *&v232[14] = 319;
        *&v232[18] = 2080;
        *&v232[20] = "IODeviceTree:/product/audio";
        *&v232[28] = 2080;
        *&v232[30] = "speaker-thiele-small-0";
        v233 = 2080;
        v234 = p_cf;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", v232, 0x30u);
        if (SHIBYTE(v206) < 0)
        {
          operator delete(cf);
        }
      }
    }
  }

  if ((atomic_load_explicit(&qword_6FC678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC678))
  {
    word_6FC670 = sub_286A28();
    __cxa_guard_release(&qword_6FC678);
  }

  if (word_6FC670 == 1 && HIBYTE(word_6FC670) == 1)
  {
    if (v200)
    {
      v9 = sub_5544(18);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *v232 = 136315650;
        *&v232[4] = "FDRDataImpl.cpp";
        *&v232[12] = 1024;
        *&v232[14] = 330;
        *&v232[18] = 2080;
        *&v232[20] = "speaker-thiele-small-0";
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", v232, 0x1Cu);
      }

      theArray = v200;
      if (v200)
      {
        Count = CFArrayGetCount(v200);
        v187 = v200;
        v184 = v200 ? CFArrayGetCount(v200) : 0;
        if (Count)
        {
          for (i = 0; i != Count; ++i)
          {
            if (theArray == v187 && i == v184)
            {
              break;
            }

            sub_233E00(&v228, theArray, i);
            v14 = sub_5544(18);
            v15 = *v14;
            if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
            {
              *v232 = 136315394;
              *&v232[4] = "FDRDataImpl.cpp";
              *&v232[12] = 1024;
              *&v232[14] = 333;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", v232, 0x12u);
            }

            sub_36CAF8(v232, v228);
            sub_36CAF8(&cf, v228);
            v205 = (v207 - v206) >> 3;
            while (1)
            {
              if (*v232 && *&v232[8] != (*&v232[24] - *&v232[16]) >> 3)
              {
                v16 = cf;
                goto LABEL_46;
              }

              v16 = cf;
              if (!cf || v205 == (v207 - v206) >> 3)
              {
                break;
              }

LABEL_46:
              if (*v232 == v16 && *&v232[8] == v205)
              {
                break;
              }

              sub_36CB7C(__p, v232);
              v17 = sub_5544(18);
              v18 = *v17;
              if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                v19 = __p;
                if (v202 < 0)
                {
                  v19 = __p[0];
                }

                *buf = 136315906;
                *&buf[4] = "FDRDataImpl.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 336;
                *&buf[18] = 2080;
                *&buf[20] = v19;
                v230 = 2112;
                v231 = v203;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", buf, 0x26u);
              }

              if (v203)
              {
                CFRelease(v203);
              }

              if (v202 < 0)
              {
                operator delete(__p[0]);
              }

              ++*&v232[8];
            }

            if (v208)
            {
              v209 = v208;
              operator delete(v208);
            }

            if (v206)
            {
              v207 = v206;
              operator delete(v206);
            }

            if (v234)
            {
              v235 = v234;
              operator delete(v234);
            }

            if (*&v232[16])
            {
              *&v232[24] = *&v232[16];
              operator delete(*&v232[16]);
            }

            v20 = sub_5544(18);
            v21 = *v20;
            if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              *v232 = 136315394;
              *&v232[4] = "FDRDataImpl.cpp";
              *&v232[12] = 1024;
              *&v232[14] = 338;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", v232, 0x12u);
            }

            if (v228)
            {
              CFRelease(v228);
            }
          }
        }
      }
    }

    else
    {
      v11 = sub_5544(18);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        *v232 = 136315650;
        *&v232[4] = "FDRDataImpl.cpp";
        *&v232[12] = 1024;
        *&v232[14] = 326;
        *&v232[18] = 2080;
        *&v232[20] = "speaker-thiele-small-0";
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", v232, 0x1Cu);
      }
    }
  }

LABEL_83:
  if (v210)
  {
    operator delete(v210);
  }

  v199 = 0;
  v28 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v28)
  {
    v112 = sub_5544(14);
    v113 = *v112;
    if (*v112 && os_log_type_enabled(*v112, OS_LOG_TYPE_ERROR))
    {
      *v232 = 136315650;
      *&v232[4] = "EDTUtilsImpl.h";
      *&v232[12] = 1024;
      *&v232[14] = 46;
      *&v232[18] = 2080;
      *&v232[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v113, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", v232, 0x1Cu);
    }

    v114 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v114, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v29 = CFStringCreateWithBytes(0, "speaker-thiele-small-1", 22, 0x8000100u, 0);
  *v232 = v29;
  if (!v29)
  {
    v115 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v115, "Could not construct");
  }

  v30 = IORegistryEntryCreateCFProperty(v28, v29, kCFAllocatorDefault, 0);
  __p[0] = v30;
  if (!v30)
  {
    goto LABEL_292;
  }

  v31 = CFGetTypeID(v30);
  if (v31 != CFDataGetTypeID())
  {
    v116 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v116, "Could not construct");
  }

  if (!__p[0])
  {
LABEL_292:
    v111 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v111, "Could not construct");
  }

  sub_28DF08(&cf, __p[0]);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (*v232)
  {
    CFRelease(*v232);
  }

  IOObjectRelease(v28);
  v32 = cf;
  memset(buf, 0, 24);
  if (cf != v205)
  {
    sub_3E7DF8(buf, cf, v205, v205 - cf);
  }

  if (v32)
  {
    operator delete(v32);
  }

  if (*&buf[8] == *buf || *&buf[8] - *buf <= 3uLL)
  {
    if (*buf)
    {
      operator delete(*buf);
    }

    goto LABEL_157;
  }

  v33 = **buf;
  operator delete(*buf);
  if (!v33)
  {
LABEL_157:
    v68 = sub_5544(18);
    v69 = *v68;
    if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_DEFAULT))
    {
      *v232 = 136315394;
      *&v232[4] = "FDRDataImpl.cpp";
      *&v232[12] = 1024;
      *&v232[14] = 449;
      _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Speaker_SpPT version is returning kVersionUnknown", v232, 0x12u);
    }

    goto LABEL_357;
  }

  if (v33 == 2)
  {
    v70 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v70)
    {
      v153 = sub_5544(14);
      v154 = *v153;
      if (*v153 && os_log_type_enabled(*v153, OS_LOG_TYPE_ERROR))
      {
        *v232 = 136315650;
        *&v232[4] = "EDTUtilsImpl.h";
        *&v232[12] = 1024;
        *&v232[14] = 46;
        *&v232[18] = 2080;
        *&v232[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v154, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", v232, 0x1Cu);
      }

      v155 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v155, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v71 = CFStringCreateWithBytes(0, "speaker-thiele-small-1", 22, 0x8000100u, 0);
    *v232 = v71;
    if (!v71)
    {
      v157 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v157, "Could not construct");
    }

    v72 = IORegistryEntryCreateCFProperty(v70, v71, kCFAllocatorDefault, 0);
    cf = v72;
    if (!v72)
    {
      goto LABEL_328;
    }

    v73 = CFGetTypeID(v72);
    if (v73 != CFDataGetTypeID())
    {
      v159 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v159, "Could not construct");
    }

    if (!cf)
    {
LABEL_328:
      v146 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v146, "Could not construct");
    }

    sub_28DF08(&v210, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*v232)
    {
      CFRelease(*v232);
    }

    IOObjectRelease(v70);
    if (v210 == v211)
    {
      v227 = 0;
      goto LABEL_350;
    }

    sub_3F5978(&v227, v210, v211);
    v74 = sub_5544(18);
    if (*(v74 + 8))
    {
      v75 = *v74;
      if (*v74)
      {
        if (os_log_type_enabled(*v74, OS_LOG_TYPE_DEBUG))
        {
          v76 = CFCopyDescription(v227);
          *buf = v76;
          sub_1267C(&cf, v76);
          if (v76)
          {
            CFRelease(v76);
          }

          v77 = &cf;
          if (SHIBYTE(v206) < 0)
          {
            v77 = cf;
          }

          *v232 = 136316162;
          *&v232[4] = "FDRDataImpl.cpp";
          *&v232[12] = 1024;
          *&v232[14] = 319;
          *&v232[18] = 2080;
          *&v232[20] = "IODeviceTree:/product/audio";
          *&v232[28] = 2080;
          *&v232[30] = "speaker-thiele-small-1";
          v233 = 2080;
          v234 = v77;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", v232, 0x30u);
          if (SHIBYTE(v206) < 0)
          {
            operator delete(cf);
          }
        }
      }
    }

    if ((atomic_load_explicit(&qword_6FC688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC688))
    {
      word_6FC680 = sub_286A28();
      __cxa_guard_release(&qword_6FC688);
    }

    if (word_6FC680 == 1 && HIBYTE(word_6FC680) == 1)
    {
      v78 = v227;
      if (v227)
      {
        v79 = sub_5544(18);
        v80 = *v79;
        if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_DEFAULT))
        {
          *v232 = 136315650;
          *&v232[4] = "FDRDataImpl.cpp";
          *&v232[12] = 1024;
          *&v232[14] = 330;
          *&v232[18] = 2080;
          *&v232[20] = "speaker-thiele-small-1";
          _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", v232, 0x1Cu);
        }

        theArrayb = CFArrayGetCount(v78);
        v191 = CFArrayGetCount(v78);
        if (theArrayb)
        {
          for (j = 0; j != theArrayb; ++j)
          {
            if (j == v191)
            {
              break;
            }

            sub_233E00(&v228, v78, j);
            v82 = sub_5544(18);
            v83 = *v82;
            if (*v82 && os_log_type_enabled(*v82, OS_LOG_TYPE_DEFAULT))
            {
              *v232 = 136315394;
              *&v232[4] = "FDRDataImpl.cpp";
              *&v232[12] = 1024;
              *&v232[14] = 333;
              _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", v232, 0x12u);
            }

            sub_36CAF8(v232, v228);
            sub_36CAF8(&cf, v228);
            v205 = (v207 - v206) >> 3;
            while (1)
            {
              if (*v232 && *&v232[8] != (*&v232[24] - *&v232[16]) >> 3)
              {
                v84 = cf;
                goto LABEL_199;
              }

              v84 = cf;
              if (!cf || v205 == (v207 - v206) >> 3)
              {
                break;
              }

LABEL_199:
              if (*v232 == v84 && *&v232[8] == v205)
              {
                break;
              }

              sub_36CB7C(__p, v232);
              v85 = sub_5544(18);
              v86 = *v85;
              if (*v85 && os_log_type_enabled(*v85, OS_LOG_TYPE_DEFAULT))
              {
                v87 = __p;
                if (v202 < 0)
                {
                  v87 = __p[0];
                }

                *buf = 136315906;
                *&buf[4] = "FDRDataImpl.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 336;
                *&buf[18] = 2080;
                *&buf[20] = v87;
                v230 = 2112;
                v231 = v203;
                _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", buf, 0x26u);
              }

              if (v203)
              {
                CFRelease(v203);
              }

              if (v202 < 0)
              {
                operator delete(__p[0]);
              }

              ++*&v232[8];
            }

            if (v208)
            {
              v209 = v208;
              operator delete(v208);
            }

            if (v206)
            {
              v207 = v206;
              operator delete(v206);
            }

            if (v234)
            {
              v235 = v234;
              operator delete(v234);
            }

            if (*&v232[16])
            {
              *&v232[24] = *&v232[16];
              operator delete(*&v232[16]);
            }

            v88 = sub_5544(18);
            v89 = *v88;
            if (*v88 && os_log_type_enabled(*v88, OS_LOG_TYPE_DEFAULT))
            {
              *v232 = 136315394;
              *&v232[4] = "FDRDataImpl.cpp";
              *&v232[12] = 1024;
              *&v232[14] = 338;
              _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", v232, 0x12u);
            }

            if (v228)
            {
              CFRelease(v228);
            }
          }
        }
      }

      else
      {
        v107 = sub_5544(18);
        v108 = *v107;
        if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_DEFAULT))
        {
          *v232 = 136315650;
          *&v232[4] = "FDRDataImpl.cpp";
          *&v232[12] = 1024;
          *&v232[14] = 326;
          *&v232[18] = 2080;
          *&v232[20] = "speaker-thiele-small-1";
          _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", v232, 0x1Cu);
        }
      }
    }

LABEL_350:
    if (v210)
    {
      operator delete(v210);
    }

    v160 = v199;
    v199 = v227;
    v227 = v160;
    goto LABEL_357;
  }

  if (v33 != 3)
  {
    v147 = sub_5544(14);
    v148 = *v147;
    if (*v147 && os_log_type_enabled(*v147, OS_LOG_TYPE_ERROR))
    {
      *v232 = 136315906;
      *&v232[4] = "FDRDataImpl.cpp";
      *&v232[12] = 1024;
      *&v232[14] = 459;
      *&v232[18] = 1024;
      *&v232[20] = v33;
      *&v232[24] = 2080;
      *&v232[26] = "speaker-thiele-small-1";
      _os_log_impl(&dword_0, v148, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unrecognized FDRVersion: %u using key %s", v232, 0x22u);
    }

    v149 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v149, "Unrecognized FDRVersion: %u using key %s");
  }

  v34 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v34)
  {
    v150 = sub_5544(14);
    v151 = *v150;
    if (*v150 && os_log_type_enabled(*v150, OS_LOG_TYPE_ERROR))
    {
      *v232 = 136315650;
      *&v232[4] = "EDTUtilsImpl.h";
      *&v232[12] = 1024;
      *&v232[14] = 46;
      *&v232[18] = 2080;
      *&v232[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v151, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", v232, 0x1Cu);
    }

    v152 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v152, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v35 = CFStringCreateWithBytes(0, "speaker-thiele-small-1", 22, 0x8000100u, 0);
  *v232 = v35;
  if (!v35)
  {
    v156 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v156, "Could not construct");
  }

  v36 = IORegistryEntryCreateCFProperty(v34, v35, kCFAllocatorDefault, 0);
  cf = v36;
  if (!v36)
  {
    goto LABEL_327;
  }

  v37 = CFGetTypeID(v36);
  if (v37 != CFDataGetTypeID())
  {
    v158 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v158, "Could not construct");
  }

  if (!cf)
  {
LABEL_327:
    v145 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v145, "Could not construct");
  }

  sub_28DF08(&v210, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*v232)
  {
    CFRelease(*v232);
  }

  IOObjectRelease(v34);
  v38 = v210;
  if (v210 == v211)
  {
    v198 = 0;
    goto LABEL_354;
  }

  cf = 0;
  v205 = 0;
  v206 = 0;
  v213 = *v210;
  v39 = v213;
  sub_3EC854(&v213);
  v40 = 0;
  v41 = (v38 + 4);
  v42 = (v39 >> 24) * BYTE2(v39);
  v161 = v39 >> 24;
  v43 = -4 - v42;
  v44 = v38;
  do
  {
    v45 = *v44++;
    v40 += v45;
    ++v43;
  }

  while (v43);
  if (0x10000 - v40 == *(v41 + v42))
  {
    if (BYTE3(v39))
    {
      do
      {
        v46 = *v41;
        v47 = v41[1];
        v48 = v41[2];
        v49 = v41[3];
        v50 = v41[4];
        v51 = v41[5];
        v52 = v41[6];
        v53 = v41;
        v54 = v41[7];
        v178 = v53[8];
        v168 = v53[9];
        v164 = v53[11];
        v165 = v53[10];
        v163 = v53[12];
        v162 = v53;
        v55 = *(v53 + 13);
        v197 = CFStringCreateWithBytes(0, "thiele_small_data_source_id", 27, 0x8000100u, 0);
        __p[0] = v197;
        if (!v197)
        {
          v122 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v122, "Could not construct");
        }

        *buf = v55;
        v177 = CFNumberCreate(0, kCFNumberIntType, buf);
        v228 = v177;
        if (!v177)
        {
          v120 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v120, "Could not construct");
        }

        sub_3EC9AC(v232, v197, &v228);
        theArraya = CFStringCreateWithBytes(0, "thiele_small_fs", 15, 0x8000100u, 0);
        v227 = theArraya;
        if (!theArraya)
        {
          v117 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v117, "Could not construct");
        }

        *buf = v46 * 0.1;
        v56 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v226 = v56;
        if (!v56)
        {
          v118 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v118, "Could not construct");
        }

        sub_3EC9AC(&v232[16], theArraya, &v226);
        v190 = CFStringCreateWithBytes(0, "thiele_small_qts", 16, 0x8000100u, 0);
        v225[1] = v190;
        if (!v190)
        {
          v119 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v119, "Could not construct");
        }

        *buf = v47 * 0.001;
        v176 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v225[0] = v176;
        if (!v176)
        {
          v121 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v121, "Could not construct");
        }

        sub_3EC9AC(&v232[32], v190, v225);
        v188 = CFStringCreateWithBytes(0, "thiele_small_re", 15, 0x8000100u, 0);
        v224[1] = v188;
        if (!v188)
        {
          v123 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v123, "Could not construct");
        }

        *buf = v48 * 0.001;
        v175 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v224[0] = v175;
        if (!v175)
        {
          v124 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v124, "Could not construct");
        }

        sub_3EC9AC(&v235, v188, v224);
        v186 = CFStringCreateWithBytes(0, "thiele_small_t", 14, 0x8000100u, 0);
        v223[1] = v186;
        if (!v186)
        {
          v125 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v125, "Could not construct");
        }

        *buf = v49 * 0.01;
        v174 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v223[0] = v174;
        if (!v174)
        {
          v126 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v126, "Could not construct");
        }

        sub_3EC9AC(&v236, v186, v223);
        v185 = CFStringCreateWithBytes(0, "thiele_small_le", 15, 0x8000100u, 0);
        v222[1] = v185;
        if (!v185)
        {
          v127 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v127, "Could not construct");
        }

        *buf = v50 * 0.01;
        v173 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v222[0] = v173;
        if (!v173)
        {
          v128 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v128, "Could not construct");
        }

        sub_3EC9AC(&v237, v185, v222);
        v183 = CFStringCreateWithBytes(0, "thiele_small_kms", 16, 0x8000100u, 0);
        v221[1] = v183;
        if (!v183)
        {
          v129 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v129, "Could not construct");
        }

        *buf = v51;
        v172 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v221[0] = v172;
        if (!v172)
        {
          v130 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v130, "Could not construct");
        }

        sub_3EC9AC(&v238, v183, v221);
        v182 = CFStringCreateWithBytes(0, "thiele_small_mms", 16, 0x8000100u, 0);
        v220[1] = v182;
        if (!v182)
        {
          v131 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v131, "Could not construct");
        }

        *buf = v52 * 0.0001;
        v171 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v220[0] = v171;
        if (!v171)
        {
          v132 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v132, "Could not construct");
        }

        sub_3EC9AC(&v239, v182, v220);
        v181 = CFStringCreateWithBytes(0, "thiele_small_bi", 15, 0x8000100u, 0);
        v219[1] = v181;
        if (!v181)
        {
          v133 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v133, "Could not construct");
        }

        *buf = v54 * 0.0001;
        v57 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v219[0] = v57;
        if (!v57)
        {
          v134 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v134, "Could not construct");
        }

        sub_3EC9AC(&v240, v181, v219);
        v180 = CFStringCreateWithBytes(0, "thiele_small_rms", 16, 0x8000100u, 0);
        v218[1] = v180;
        if (!v180)
        {
          v135 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v135, "Could not construct");
        }

        *buf = v178 * 0.001;
        v170 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v218[0] = v170;
        if (!v170)
        {
          v136 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v136, "Could not construct");
        }

        sub_3EC9AC(&v241, v180, v218);
        v179 = CFStringCreateWithBytes(0, "thiele_small_crest", 18, 0x8000100u, 0);
        v217[1] = v179;
        if (!v179)
        {
          v137 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v137, "Could not construct");
        }

        *buf = v168 * 0.001;
        v169 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v217[0] = v169;
        if (!v169)
        {
          v138 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v138, "Could not construct");
        }

        sub_3EC9AC(&v242, v179, v217);
        v58 = CFStringCreateWithBytes(0, "thiele_small_coffset", 20, 0x8000100u, 0);
        v216[1] = v58;
        if (!v58)
        {
          v139 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v139, "Could not construct");
        }

        *buf = v165 * 0.001;
        v59 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v216[0] = v59;
        if (!v59)
        {
          v140 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v140, "Could not construct");
        }

        sub_3EC9AC(&v243, v58, v216);
        v60 = CFStringCreateWithBytes(0, "thiele_small_cmin", 17, 0x8000100u, 0);
        v215[1] = v60;
        if (!v60)
        {
          v141 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v141, "Could not construct");
        }

        *buf = v164 * 0.001;
        v61 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v215[0] = v61;
        if (!v61)
        {
          v142 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v142, "Could not construct");
        }

        sub_3EC9AC(&v244, v60, v215);
        v62 = CFStringCreateWithBytes(0, "thiele_small_cmax", 17, 0x8000100u, 0);
        v214[1] = v62;
        if (!v62)
        {
          v143 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v143, "Could not construct");
        }

        *buf = v163 * 0.001;
        v63 = CFNumberCreate(0, kCFNumberFloatType, buf);
        v214[0] = v63;
        if (!v63)
        {
          v144 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v144, "Could not construct");
        }

        sub_3EC9AC(v245, v62, v214);
        *buf = v232;
        *&buf[8] = 14;
        v166 = v57;
        v64 = 0;
        v212 = sub_69CE8(buf);
        do
        {
          v65 = v245[v64 + 1];
          if (v65)
          {
            CFRelease(v65);
          }

          v66 = v245[v64];
          if (v66)
          {
            CFRelease(v66);
          }

          v64 -= 2;
        }

        while (v64 != -28);
        CFRelease(v63);
        CFRelease(v62);
        CFRelease(v61);
        CFRelease(v60);
        CFRelease(v59);
        CFRelease(v58);
        CFRelease(v169);
        CFRelease(v179);
        CFRelease(v170);
        CFRelease(v180);
        CFRelease(v166);
        CFRelease(v181);
        CFRelease(v171);
        CFRelease(v182);
        CFRelease(v172);
        CFRelease(v183);
        CFRelease(v173);
        CFRelease(v185);
        CFRelease(v174);
        CFRelease(v186);
        CFRelease(v175);
        CFRelease(v188);
        CFRelease(v176);
        CFRelease(v190);
        CFRelease(v56);
        CFRelease(theArraya);
        CFRelease(v177);
        CFRelease(v197);
        sub_75F38(&cf, &v212);
        if (v212)
        {
          CFRelease(v212);
        }

        v41 = v162 + 15;
      }

      while (v161 > (v205 - cf) >> 3);
    }

    v67 = sub_76110(&cf);
  }

  else
  {
    v90 = sub_5544(14);
    v91 = *v90;
    if (*v90 && os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
    {
      *v232 = 136315394;
      *&v232[4] = "FDRDataImpl.cpp";
      *&v232[12] = 1024;
      *&v232[14] = 495;
      _os_log_impl(&dword_0, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d FDR Checksum failed for data returned from EDT! Returning empty ascf::ArrayRef", v232, 0x12u);
    }

    v67 = 0;
  }

  v198 = v67;
  *v232 = &cf;
  sub_761AC(v232);
  v92 = sub_5544(18);
  if (*(v92 + 8))
  {
    v93 = *v92;
    if (*v92)
    {
      if (os_log_type_enabled(*v92, OS_LOG_TYPE_DEBUG))
      {
        v94 = CFCopyDescription(v67);
        *buf = v94;
        sub_1267C(&cf, v94);
        if (v94)
        {
          CFRelease(v94);
        }

        v95 = &cf;
        if (SHIBYTE(v206) < 0)
        {
          v95 = cf;
        }

        *v232 = 136316162;
        *&v232[4] = "FDRDataImpl.cpp";
        *&v232[12] = 1024;
        *&v232[14] = 319;
        *&v232[18] = 2080;
        *&v232[20] = "IODeviceTree:/product/audio";
        *&v232[28] = 2080;
        *&v232[30] = "speaker-thiele-small-1";
        v233 = 2080;
        v234 = v95;
        _os_log_impl(&dword_0, v93, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", v232, 0x30u);
        if (SHIBYTE(v206) < 0)
        {
          operator delete(cf);
        }
      }
    }
  }

  if ((atomic_load_explicit(&qword_6FC698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC698))
  {
    word_6FC690 = sub_286A28();
    __cxa_guard_release(&qword_6FC698);
  }

  if (word_6FC690 == 1 && HIBYTE(word_6FC690) == 1)
  {
    if (v198)
    {
      v96 = sub_5544(18);
      v97 = *v96;
      if (*v96 && os_log_type_enabled(*v96, OS_LOG_TYPE_DEFAULT))
      {
        *v232 = 136315650;
        *&v232[4] = "FDRDataImpl.cpp";
        *&v232[12] = 1024;
        *&v232[14] = 330;
        *&v232[18] = 2080;
        *&v232[20] = "speaker-thiele-small-1";
        _os_log_impl(&dword_0, v97, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", v232, 0x1Cu);
      }

      theArrayc = CFArrayGetCount(v198);
      v192 = CFArrayGetCount(v198);
      if (theArrayc)
      {
        for (k = 0; k != theArrayc; ++k)
        {
          if (k == v192)
          {
            break;
          }

          sub_233E00(&v228, v198, k);
          v99 = sub_5544(18);
          v100 = *v99;
          if (*v99 && os_log_type_enabled(*v99, OS_LOG_TYPE_DEFAULT))
          {
            *v232 = 136315394;
            *&v232[4] = "FDRDataImpl.cpp";
            *&v232[12] = 1024;
            *&v232[14] = 333;
            _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", v232, 0x12u);
          }

          sub_36CAF8(v232, v228);
          sub_36CAF8(&cf, v228);
          v205 = (v207 - v206) >> 3;
          while (1)
          {
            if (*v232 && *&v232[8] != (*&v232[24] - *&v232[16]) >> 3)
            {
              v101 = cf;
              goto LABEL_259;
            }

            v101 = cf;
            if (!cf || v205 == (v207 - v206) >> 3)
            {
              break;
            }

LABEL_259:
            if (*v232 == v101 && *&v232[8] == v205)
            {
              break;
            }

            sub_36CB7C(__p, v232);
            v102 = sub_5544(18);
            v103 = *v102;
            if (*v102 && os_log_type_enabled(*v102, OS_LOG_TYPE_DEFAULT))
            {
              v104 = __p;
              if (v202 < 0)
              {
                v104 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 336;
              *&buf[18] = 2080;
              *&buf[20] = v104;
              v230 = 2112;
              v231 = v203;
              _os_log_impl(&dword_0, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", buf, 0x26u);
            }

            if (v203)
            {
              CFRelease(v203);
            }

            if (v202 < 0)
            {
              operator delete(__p[0]);
            }

            ++*&v232[8];
          }

          if (v208)
          {
            v209 = v208;
            operator delete(v208);
          }

          if (v206)
          {
            v207 = v206;
            operator delete(v206);
          }

          if (v234)
          {
            v235 = v234;
            operator delete(v234);
          }

          if (*&v232[16])
          {
            *&v232[24] = *&v232[16];
            operator delete(*&v232[16]);
          }

          v105 = sub_5544(18);
          v106 = *v105;
          if (*v105 && os_log_type_enabled(*v105, OS_LOG_TYPE_DEFAULT))
          {
            *v232 = 136315394;
            *&v232[4] = "FDRDataImpl.cpp";
            *&v232[12] = 1024;
            *&v232[14] = 338;
            _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", v232, 0x12u);
          }

          if (v228)
          {
            CFRelease(v228);
          }
        }
      }
    }

    else
    {
      v109 = sub_5544(18);
      v110 = *v109;
      if (*v109 && os_log_type_enabled(*v109, OS_LOG_TYPE_DEFAULT))
      {
        *v232 = 136315650;
        *&v232[4] = "FDRDataImpl.cpp";
        *&v232[12] = 1024;
        *&v232[14] = 326;
        *&v232[18] = 2080;
        *&v232[20] = "speaker-thiele-small-1";
        _os_log_impl(&dword_0, v110, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", v232, 0x1Cu);
      }
    }
  }

LABEL_354:
  if (v210)
  {
    operator delete(v210);
  }

  v199 = v198;
LABEL_357:
  sub_3ECA0C(a1, &v200, &v199);
  if (v199)
  {
    CFRelease(v199);
  }

  if (v200)
  {
    CFRelease(v200);
  }
}

void sub_3F51D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41, const void *a42)
{
  __cxa_end_catch();
  sub_46228(&a41);
  sub_46228(&a42);
  JUMPOUT(0x3F5968);
}

void sub_3F51EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, const void *a60)
{
  if (a2)
  {
    sub_20A3F8(&a60);
    JUMPOUT(0x3F5970);
  }

  JUMPOUT(0x3F5968);
}

void sub_3F55BC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x3F55DCLL);
  }

  JUMPOUT(0x3F5968);
}

void sub_3F55E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, const void *a43)
{
  __cxa_free_exception(v44);
  sub_22A334(&a43);
  sub_452F0(&STACK[0x2A0]);
  IOObjectRelease(v43);
  JUMPOUT(0x3F575CLL);
}

void sub_3F562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (!v42)
  {
    sub_46228(&a41);
    sub_46228(&a42);
    JUMPOUT(0x3F5968);
  }

  JUMPOUT(0x3F58F0);
}

void sub_3F56DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, const void *a43)
{
  __cxa_free_exception(v43);
  sub_280C34(&a43);
  JUMPOUT(0x3F574CLL);
}

void sub_3F56F4()
{
  sub_452F0(&STACK[0x2A0]);
  IOObjectRelease(v0);
  JUMPOUT(0x3F575CLL);
}

void sub_3F570C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41, const void *a42)
{
  sub_46228(&a41);
  sub_46228(&a42);
  JUMPOUT(0x3F5968);
}

void sub_3F5728(void *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(a1);
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*v2 + 16))(v2);
      v6 = 136316162;
      v7 = "EDTUtilsImpl.h";
      v8 = 1024;
      v9 = 73;
      v10 = 2080;
      v11 = v5;
      v12 = 2080;
      v13 = 2080;
      v14 = "speaker-thiele-small-1";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d EDT Accessor error '%s' for path: %s ; key: %s did not return any data", &v6, 0x30u);
    }

    __cxa_end_catch();
    JUMPOUT(0x3F2BE8);
  }

  JUMPOUT(0x3F58F4);
}

void sub_3F584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41, const void *a42)
{
  __cxa_end_catch();
  sub_46228(&a41);
  sub_46228(&a42);
  JUMPOUT(0x3F5968);
}

void sub_3F585C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_347A64(&a43);
  sub_23EA78(&a47);
  sub_23EA78(&STACK[0x2A0]);
  JUMPOUT(0x3F5880);
}

void sub_3F58AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_347A64(&a43);
  sub_23EA78(&a47);
  sub_23EA78(&STACK[0x2A0]);
  JUMPOUT(0x3F58D0);
}

void sub_3F590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_347A64(&a43);
  sub_23EA78(&a47);
  sub_23EA78(&STACK[0x2A0]);
  JUMPOUT(0x3F5930);
}

void sub_3F5960(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_3F5978(CFArrayRef *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    *a1 = 0;
  }

  else
  {
    v3 = a2;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v71 = *a2;
    v4 = v71;
    sub_3EC854(&v71);
    v5 = 0;
    v6 = (v3 + 4);
    v7 = (v4 >> 24) * BYTE2(v4);
    v8 = -4 - v7;
    do
    {
      v9 = *v3++;
      v5 += v9;
      ++v8;
    }

    while (v8);
    if (0x10000 - v5 == *(v6 + v7))
    {
      if (BYTE3(v4))
      {
        do
        {
          v10 = *v6;
          v11 = v6[1];
          v12 = v6[2];
          v13 = v6[3];
          v14 = v6[4];
          v15 = v6[5];
          v16 = v6[6];
          v17 = v6[7];
          v56 = v6[8];
          v55 = v6;
          v18 = *(v6 + 9);
          v69 = CFStringCreateWithBytes(0, "thiele_small_data_source_id", 27, 0x8000100u, 0);
          v84[1] = v69;
          if (!v69)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          LODWORD(valuePtr[0]) = v18;
          v19 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
          v84[0] = v19;
          if (!v19)
          {
            v34 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v34, "Could not construct");
          }

          sub_3EC9AC(buf, v69, v84);
          v68 = CFStringCreateWithBytes(0, "thiele_small_fs", 15, 0x8000100u, 0);
          v83[1] = v68;
          if (!v68)
          {
            v35 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v35, "Could not construct");
          }

          *valuePtr = v10 * 0.1;
          v62 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v83[0] = v62;
          if (!v62)
          {
            v36 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v36, "Could not construct");
          }

          sub_3EC9AC((&v88 + 2), v68, v83);
          v67 = CFStringCreateWithBytes(0, "thiele_small_qts", 16, 0x8000100u, 0);
          v82[1] = v67;
          if (!v67)
          {
            v38 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v38, "Could not construct");
          }

          *valuePtr = v11 * 0.001;
          v61 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v82[0] = v61;
          if (!v61)
          {
            v39 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v39, "Could not construct");
          }

          sub_3EC9AC(&v89, v67, v82);
          v66 = CFStringCreateWithBytes(0, "thiele_small_re", 15, 0x8000100u, 0);
          v81[1] = v66;
          if (!v66)
          {
            v40 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v40, "Could not construct");
          }

          *valuePtr = v12 * 0.001;
          v60 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v81[0] = v60;
          if (!v60)
          {
            v41 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v41, "Could not construct");
          }

          sub_3EC9AC(&v90, v66, v81);
          v65 = CFStringCreateWithBytes(0, "thiele_small_t", 14, 0x8000100u, 0);
          v80[1] = v65;
          if (!v65)
          {
            v42 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v42, "Could not construct");
          }

          *valuePtr = v13 * 0.01;
          v20 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v80[0] = v20;
          if (!v20)
          {
            v43 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v43, "Could not construct");
          }

          sub_3EC9AC(&v91, v65, v80);
          v64 = CFStringCreateWithBytes(0, "thiele_small_le", 15, 0x8000100u, 0);
          v79[1] = v64;
          if (!v64)
          {
            v44 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v44, "Could not construct");
          }

          *valuePtr = v14 * 0.01;
          v59 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v79[0] = v59;
          if (!v59)
          {
            v45 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v45, "Could not construct");
          }

          sub_3EC9AC(&v92, v64, v79);
          v63 = CFStringCreateWithBytes(0, "thiele_small_kms", 16, 0x8000100u, 0);
          v78[1] = v63;
          if (!v63)
          {
            v46 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v46, "Could not construct");
          }

          *valuePtr = v15;
          cf = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v78[0] = cf;
          if (!cf)
          {
            v47 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v47, "Could not construct");
          }

          sub_3EC9AC(&v93, v63, v78);
          v21 = CFStringCreateWithBytes(0, "thiele_small_mms", 16, 0x8000100u, 0);
          v77[1] = v21;
          if (!v21)
          {
            v48 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v48, "Could not construct");
          }

          *valuePtr = v16 * 0.0001;
          v22 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v77[0] = v22;
          if (!v22)
          {
            v49 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v49, "Could not construct");
          }

          sub_3EC9AC(&v94, v21, v77);
          v23 = CFStringCreateWithBytes(0, "thiele_small_bi", 15, 0x8000100u, 0);
          v76[1] = v23;
          if (!v23)
          {
            v50 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v50, "Could not construct");
          }

          *valuePtr = v17 * 0.0001;
          v24 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v76[0] = v24;
          if (!v24)
          {
            v51 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v51, "Could not construct");
          }

          sub_3EC9AC(&v95, v23, v76);
          v25 = CFStringCreateWithBytes(0, "thiele_small_rms", 16, 0x8000100u, 0);
          v75[1] = v25;
          if (!v25)
          {
            v52 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v52, "Could not construct");
          }

          *valuePtr = v56 * 0.001;
          v26 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v75[0] = v26;
          if (!v26)
          {
            v53 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v53, "Could not construct");
          }

          sub_3EC9AC(v96, v25, v75);
          valuePtr[0] = buf;
          valuePtr[1] = 10;
          v57 = v19;
          v27 = 0;
          v70 = sub_69CE8(valuePtr);
          do
          {
            v28 = v96[v27 + 1];
            if (v28)
            {
              CFRelease(v28);
            }

            v29 = v96[v27];
            if (v29)
            {
              CFRelease(v29);
            }

            v27 -= 2;
          }

          while (v27 != -20);
          CFRelease(v26);
          CFRelease(v25);
          CFRelease(v24);
          CFRelease(v23);
          CFRelease(v22);
          CFRelease(v21);
          CFRelease(cf);
          CFRelease(v63);
          CFRelease(v59);
          CFRelease(v64);
          CFRelease(v20);
          CFRelease(v65);
          CFRelease(v60);
          CFRelease(v66);
          CFRelease(v61);
          CFRelease(v67);
          CFRelease(v62);
          CFRelease(v68);
          CFRelease(v57);
          CFRelease(v69);
          sub_75F38(&v72, &v70);
          if (v70)
          {
            CFRelease(v70);
          }

          v6 = v55 + 11;
        }

        while (v4 >> 24 > (v73 - v72) >> 3);
      }

      v30 = sub_76110(&v72);
      v31 = a1;
    }

    else
    {
      v32 = sub_5544(14);
      v33 = *v32;
      v31 = a1;
      if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "FDRDataImpl.cpp";
        v87 = 1024;
        v88 = 495;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d FDR Checksum failed for data returned from EDT! Returning empty ascf::ArrayRef", buf, 0x12u);
      }

      v30 = 0;
    }

    *v31 = v30;
    *buf = &v72;
    sub_761AC(buf);
  }
}

void sub_3F6540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  a53 = &a28;
  sub_761AC(&a53);
  _Unwind_Resume(a1);
}

void sub_3F68B8(void *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = a1;
  if (a2 == a3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v7 = a2;
    memset(v52, 0, sizeof(v52));
    *v53 = *a2;
    *&v53[3] = *(a2 + 3);
    sub_3EC854(v53);
    v48 = v6;
    v9 = 0;
    v10 = (v7 + 7);
    v11 = v53[3] * v53[2];
    v12 = v11 + 7;
    do
    {
      v13 = *v7++;
      v9 += v13;
      --v12;
    }

    while (v12);
    if (0x10000 - v9 == *(v10 + v11))
    {
      if (v53[3])
      {
        v14 = 0;
        v15 = v53[5];
        v16 = v53[4];
        v17 = v53[4];
        do
        {
          v49 = v14;
          v19 = *v10;
          v18 = v10 + 1;
          v50 = v19;
          v20 = 0;
          if (v17)
          {
            v21 = 0;
            v22 = 0;
            do
            {
              v23 = 0;
              if (v15 > 3)
              {
                if (v15 == 4)
                {
                  v3 = *v18;
                  v4 = *(v18 + 1) * 0.01;
                  v5 = *(v18 + 2) * 0.01;
                  v23 = 12;
                }

                else if (v15 == 8)
                {
                  v3 = *v18;
                  v4 = *(v18 + 1) * 0.01;
                  v5 = *(v18 + 2) * 0.01;
                  v23 = 24;
                }
              }

              else if (v15 == 1)
              {
                LOBYTE(v8) = *v18;
                v3 = v8;
                v4 = *(v18 + 1) * 0.01;
                LOBYTE(v8) = *(v18 + 2);
                v5 = v8 * 0.01;
                v23 = 3;
              }

              else if (v15 == 2)
              {
                LOWORD(v8) = *v18;
                v3 = v8;
                v4 = v18[1] * 0.01;
                LOWORD(v8) = v18[2];
                v5 = v8 * 0.01;
                v23 = 6;
              }

              v24 = v20 - v21;
              v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 2);
              v26 = v25 + 1;
              if (v25 + 1 > 0x1555555555555555)
              {
                sub_189A00();
              }

              if (0x5555555555555556 * (-v21 >> 2) > v26)
              {
                v26 = 0x5555555555555556 * (-v21 >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v21 >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v27 = 0x1555555555555555;
              }

              else
              {
                v27 = v26;
              }

              if (v27)
              {
                sub_1E6598(v27);
              }

              v28 = (12 * v25);
              *v28 = v3;
              v28[1] = v4;
              v28[2] = v5;
              v20 = 12 * v25 + 12;
              v29 = &v28[3 * (v24 / -12)];
              memcpy(v29, v21, v24);
              if (v21)
              {
                operator delete(v21);
                v16 = v53[4];
              }

              v21 = v29;
              v18 = (v18 + v23);
              ++v22;
              v17 = v16;
            }

            while (v22 < v16);
          }

          else
          {
            v21 = 0;
          }

          v3 = v50 * 0.01;
          v31 = *v18;
          v10 = v18 + 2;
          v30 = v31;
          v32 = *&v52[8];
          if (*&v52[8] >= *&v52[16])
          {
            v34 = (*&v52[8] - *v52) >> 5;
            if ((v34 + 1) >> 59)
            {
              sub_189A00();
            }

            v35 = (*&v52[16] - *v52) >> 4;
            if (v35 <= v34 + 1)
            {
              v35 = v34 + 1;
            }

            if (*&v52[16] - *v52 >= 0x7FFFFFFFFFFFFFE0uLL)
            {
              v36 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v35;
            }

            v55 = v52;
            if (v36)
            {
              if (!(v36 >> 59))
              {
                operator new();
              }

              sub_6ACD8();
            }

            v37 = 32 * v34;
            *buf = 0;
            *&buf[8] = v37;
            *&buf[16] = (32 * v34);
            *v37 = v3;
            *(v37 + 4) = v30;
            *(v37 + 16) = 0;
            *(v37 + 24) = 0;
            *(v37 + 8) = 0;
            sub_3F6F2C(32 * v34 + 8, v21, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 2));
            *&buf[16] += 32;
            v38 = *&v52[8];
            v39 = *v52;
            v40 = *&buf[8] + *v52 - *&v52[8];
            if (*v52 != *&v52[8])
            {
              v41 = (*&buf[8] + *v52 - *&v52[8]);
              v42 = *v52;
              do
              {
                *v41 = *v42;
                v41[1] = 0;
                v41[2] = 0;
                v41[3] = 0;
                *(v41 + 1) = *(v42 + 8);
                v41[3] = *(v42 + 24);
                *(v42 + 8) = 0;
                *(v42 + 16) = 0;
                *(v42 + 24) = 0;
                v42 += 32;
                v41 += 4;
              }

              while (v42 != v38);
              do
              {
                v43 = *(v39 + 8);
                if (v43)
                {
                  *(v39 + 16) = v43;
                  operator delete(v43);
                }

                v39 += 32;
              }

              while (v39 != v38);
            }

            v44 = *v52;
            v45 = *&v52[16];
            *v52 = v40;
            v51 = *&buf[16];
            *&v52[8] = *&buf[16];
            *&buf[16] = v44;
            *&buf[24] = v45;
            *buf = v44;
            *&buf[8] = v44;
            sub_3F6FD4(buf);
            v8 = v51;
            v33 = v51;
          }

          else
          {
            **&v52[8] = v3;
            *(v32 + 4) = v30;
            *(v32 + 16) = 0;
            *(v32 + 24) = 0;
            *(v32 + 8) = 0;
            sub_3F6F2C(v32 + 8, v21, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 2));
            v33 = v32 + 32;
          }

          *&v52[8] = v33;
          if (v21)
          {
            operator delete(v21);
          }

          v14 = v49 + 1;
        }

        while (v49 + 1 < v53[3]);
      }

      *v48 = *v52;
      v48[2] = *&v52[16];
      v6 = v52;
    }

    else
    {
      v46 = sub_5544(14);
      v47 = *v46;
      if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 526;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d FDR Checksum failed for data returned from EDT! Returning empty ascf::ArrayRef", buf, 0x12u);
      }
    }

    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    *buf = v52;
    sub_3F6EA0(buf);
  }
}

void sub_3F6E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_3F6EA0(&a16);
  _Unwind_Resume(a1);
}

void sub_3F6EA0(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_3F6F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1555555555555556)
    {
      sub_1E6598(a4);
    }

    sub_189A00();
  }
}

void sub_3F6FB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3F6FD4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3F7038(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v5 = *(a1 + 24);
      v7 = *v5;
      v6 = v5[1];
      if (v7 == v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = v7;
        while (*v8 != v3[1])
        {
          if (++v8 == v6)
          {
            v8 = v6;
            break;
          }
        }
      }

      v9 = v8 - v7;
      v10 = v6 == v8;
      v11 = 1;
      if (!v10)
      {
        v11 = v9 + 1;
      }

      **(a1 + 8) = v11;
      v32[0] = 0;
      v32[1] = 0;
      v31 = v32;
      if (**(a1 + 16))
      {
        v12 = 1;
        do
        {
          *(&v34.__r_.__value_.__s + 23) = 2;
          strcpy(&v34, "ch");
          std::to_string(&v28, v12);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v28;
          }

          else
          {
            v13 = v28.__r_.__value_.__r.__words[0];
          }

          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v28.__r_.__value_.__l.__size_;
          }

          v15 = std::string::append(&v34, v13, size);
          v16 = *&v15->__r_.__value_.__l.__data_;
          v30 = v15->__r_.__value_.__r.__words[2];
          *__p = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          v17 = **(a1 + 8);
          sub_88CE8(&v34, "Filter");
          if (v12 == v17)
          {
            v18 = kCFBooleanTrue;
          }

          else
          {
            v18 = kCFBooleanFalse;
          }

          v34.__r_.__value_.__l.__size_ = v18;
          sub_88CE8(&v34.__r_.__value_.__r.__words[2], "PhaseCompensate");
          v35 = kCFBooleanFalse;
          v28.__r_.__value_.__r.__words[0] = &v34;
          v28.__r_.__value_.__l.__size_ = 2;
          v19 = sub_69CE8(&v28);
          if (!*sub_6F86C(&v31, &v33, __p))
          {
            operator new();
          }

          if (v19)
          {
            CFRelease(v19);
          }

          for (i = 0; i != -4; i -= 2)
          {
            v21 = *(&v34 + i * 8 + 24);
            if (v21)
            {
              CFRelease(v21);
            }

            v22 = v34.__r_.__value_.__r.__words[i + 2];
            if (v22)
            {
              CFRelease(v22);
            }
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(__p[0]);
          }

          ++v12;
        }

        while (v12 <= **(a1 + 16));
      }

      v23 = *a1;
      LODWORD(v34.__r_.__value_.__l.__data_) = 0;
      *(v34.__r_.__value_.__r.__words + 4) = *v3;
      sub_3F782C(__p, &v31, "Gain", 4, &v34);
      sub_75F38(v23, __p);
      if (__p[0])
      {
        CFRelease(__p[0]);
      }

      v24 = *(v3 + 1);
      v25 = *(v3 + 2);
      while (v24 != v25)
      {
        v26 = *a1;
        sub_3F782C(&v34, &v31, "Bell", 4, v24);
        sub_75F38(v26, &v34);
        if (v34.__r_.__value_.__r.__words[0])
        {
          CFRelease(v34.__r_.__value_.__l.__data_);
        }

        v24 += 3;
      }

      sub_3F76E0(v32[0]);
      v3 += 8;
    }

    while (v3 != a3);
  }
}

void sub_3F73D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CFTypeRef a28, CFTypeRef cf, int a30, __int16 a31, char a32, char a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

CFDictionaryRef sub_3F74F8(void *a1)
{
  v18 = 0;
  v19 = 0uLL;
  sub_68DB4(&v18, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v19;
    do
    {
      if (v5 >= *(&v19 + 1))
      {
        v6 = (v5 - v18) >> 4;
        if ((v6 + 1) >> 60)
        {
          sub_189A00();
        }

        v7 = (*(&v19 + 1) - v18) >> 3;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (*(&v19 + 1) - v18 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v23 = &v18;
        if (v8)
        {
          sub_1DB894(v8);
        }

        v20 = 0;
        v21 = 16 * v6;
        v22 = (16 * v6);
        sub_3F7754((16 * v6), v3 + 32, v3 + 7);
        *&v22 = v22 + 16;
        v9 = &v18[v21 - v19];
        sub_65184(&v18, v18, v19, v9);
        v10 = v18;
        v11 = *(&v19 + 1);
        v18 = v9;
        v17 = v22;
        v19 = v22;
        *&v22 = v10;
        *(&v22 + 1) = v11;
        v20 = v10;
        v21 = v10;
        sub_65134(&v20);
        v5 = v17;
      }

      else
      {
        sub_3F7754(v5, v3 + 32, v3 + 7);
        v5 += 16;
      }

      *&v19 = v5;
      v12 = v3[1];
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
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  v15 = sub_65448(&v18);
  v20 = &v18;
  sub_65830(&v20);
  return v15;
}

void sub_3F76A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  sub_65830(&a15);
  _Unwind_Resume(a1);
}

void sub_3F76E0(char *a1)
{
  if (a1)
  {
    sub_3F76E0(*a1);
    sub_3F76E0(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *sub_3F7754(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

void sub_3F782C(CFDictionaryRef *a1, void *a2, char *a3, uint64_t a4, int *a5)
{
  sub_88CE8(&v17, "Frequency");
  valuePtr = *a5;
  if (!CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_88CE8(&v19, "Quality");
  valuePtr = a5[2];
  if (!CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
  }

  sub_88CE8(&v21, "Gain");
  valuePtr = a5[1];
  if (!CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  sub_88CE8(v23, "Active");
  v23[1] = kCFBooleanTrue;
  sub_88CE8(&v24, "Type");
  sub_88CE8(&v25, a3);
  sub_88CE8(&v26, "Channels");
  v27 = sub_3F74F8(a2);
  v15[0] = &v17;
  v15[1] = 6;
  v9 = 0;
  *a1 = sub_69CE8(v15);
  do
  {
    v10 = *(&v27 + v9);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(&v26 + v9);
    if (v11)
    {
      CFRelease(v11);
    }

    v9 -= 16;
  }

  while (v9 != -96);
}

void sub_3F7AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1D5FAC((v13 + 40));
  sub_1D5FE0(v12);
  while (v12 != &a12)
  {
    v12 -= 2;
    sub_1D5D20(v12);
  }

  _Unwind_Resume(a1);
}

void sub_3F7BA0(char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 7);
    if (v3)
    {
      CFRelease(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

float sub_3F7C0C(uint64_t a1, float result)
{
  if (*(a1 + 12) != 1)
  {
    if (*(a1 + 28) != 1 || (*(a1 + 20) & 1) == 0)
    {
      return result;
    }

    result = *(a1 + 24);
    goto LABEL_11;
  }

  if (*(a1 + 20) == 1)
  {
    result = *(a1 + 8);
    if (result > *(a1 + 16))
    {
      v2 = sub_5544(14);
      v3 = *v2;
      if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "RoutingTypes.cpp";
        v13 = 1024;
        v14 = 1178;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v11, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Invariant failure.");
    }
  }

  if (*(a1 + 28))
  {
    result = *(a1 + 24);
    if (result < *(a1 + 8))
    {
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "RoutingTypes.cpp";
        v13 = 1024;
        v14 = 1185;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v11, 0x12u);
      }

      v7 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v7, "Invariant failure.");
    }

    if (*(a1 + 20))
    {
LABEL_11:
      if (result > *(a1 + 16))
      {
        v8 = sub_5544(14);
        v9 = *v8;
        if (*v8)
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            v11 = 136315394;
            v12 = "RoutingTypes.cpp";
            v13 = 1024;
            v14 = 1189;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v11, 0x12u);
          }
        }

        v10 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v10, "Invariant failure.");
      }
    }
  }

  return result;
}

void sub_3F7EE4(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a2 == a2[1])
  {
    if (a2[27] != a2[28])
    {
      v7 = a2;
      sub_1E5A9C(a1, &v7);
      v7 = a2 + 27;
      sub_1E5A9C(a1, &v7);
    }
  }

  else
  {
    v7 = a2;
    sub_1E5A9C(a1, &v7);
    v4 = a2[27];
    v5 = a2[28];
    v6 = a2 + 27;
    if (v4 != v5)
    {
      v7 = v6;
      sub_1E5A9C(a1, &v7);
    }
  }
}

void sub_3F7F8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_3F7FB4(unsigned int a1, uint64_t a2)
{
  v10 = a1;
  if (!a2)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v12 = 1024;
      v13 = 302;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v10;
  if (*(sub_3F81BC(a1) + 48) == 1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v12 = 1024;
      v13 = 303;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v9, "Precondition failure.");
  }

  *buf = &v10;
  result = sub_3F81BC(v10);
  result[5] = a2;
  *(result + 48) = 1;
  return result;
}

uint64_t *sub_3F81BC(unsigned int a1)
{
  v1 = qword_6E8D80;
  if (!qword_6E8D80)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v2 = v1;
      v3 = *(v1 + 32);
      if (v3 <= a1)
      {
        break;
      }

      v1 = *v2;
      if (!*v2)
      {
        goto LABEL_7;
      }
    }

    if (v3 >= a1)
    {
      return v2;
    }

    v1 = v2[1];
    if (!v1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_3F82BC(uint64_t a1)
{
  if (!a1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 284;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v9 = 1768776806;
  *buf = &v9;
  if (*(sub_3F81BC(0x696D6466u) + 64) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 310;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v8, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_3F81BC(v9);
  result[7] = a1;
  *(result + 64) = 1;
  return result;
}

uint64_t *sub_3F84D4(uint64_t a1)
{
  if (!a1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 290;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v9 = 1768776806;
  *buf = &v9;
  if (*(sub_3F81BC(0x696D6466u) + 80) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 317;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v8, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_3F81BC(v9);
  result[9] = a1;
  *(result + 80) = 1;
  return result;
}

uint64_t *sub_3F86EC(uint64_t a1)
{
  if (!a1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 296;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v9 = 1768776806;
  *buf = &v9;
  if (*(sub_3F81BC(0x696D6466u) + 96) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 324;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v8, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_3F81BC(v9);
  result[11] = a1;
  *(result + 96) = 1;
  return result;
}

void sub_3F8904(unsigned int a1, uint64_t a2)
{
  v12 = a1;
  if (!a2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v14 = 1024;
      v15 = 330;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v12;
  if (*(sub_3F81BC(a1) + 112) == 1)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v14 = 1024;
      v15 = 331;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v11, "Precondition failure.");
  }

  sub_147688();
  if (byte_6E6560 == 1)
  {
    *buf = &v12;
    v3 = sub_3F81BC(v12);
    v3[13] = a2;
    *(v3 + 112) = 1;
  }

  else
  {
    v4 = sub_5544(21);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingTypes.cpp";
        v14 = 1024;
        v15 = 341;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Codec wind filter usage not allowed on this device. Ignoring request.", buf, 0x12u);
      }
    }
  }
}

void sub_3F8B90(unsigned int a1, int a2, float a3)
{
  v7 = qword_6E8D60;
  v6 = qword_6E8D68;
  v8 = &xmmword_6E8000;
  if (qword_6E8D60 != qword_6E8D68)
  {
    do
    {
      if (*(v7 + 4) == a1 && *(v7 + 8) == a2)
      {
        v10 = sub_5544(21);
        v11 = *v10;
        if (*v10)
        {
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
          {
            v12 = "unknown";
            if (a1 <= 7)
            {
              v12 = off_6BD200[a1];
            }

            sub_53E8(__p, v12);
            v13 = __p;
            if (v24 < 0)
            {
              v13 = __p[0];
            }

            v14 = *v7;
            *buf = 136315906;
            v26 = "RoutingTypes.cpp";
            v27 = 1024;
            v28 = 351;
            v29 = 2080;
            v30 = v13;
            v31 = 2048;
            v32 = v14;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d SystemSoundVolumeCap entry already exists for this port type %s : %f dB", buf, 0x26u);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v7 += 12;
    }

    while (v7 != v6);
    v8 = &xmmword_6E8000;
    v6 = qword_6E8D68;
  }

  if (v6 >= qword_6E8D70)
  {
    v16 = qword_6E8D60;
    v17 = v6 - qword_6E8D60;
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - qword_6E8D60) >> 2);
    v19 = v18 + 1;
    if (v18 + 1 > 0x1555555555555555)
    {
      sub_189A00();
    }

    if (0x5555555555555556 * ((qword_6E8D70 - qword_6E8D60) >> 2) > v19)
    {
      v19 = 0x5555555555555556 * ((qword_6E8D70 - qword_6E8D60) >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((qword_6E8D70 - qword_6E8D60) >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v20 = 0x1555555555555555;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      if (v20 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_6ACD8();
    }

    v21 = 4 * ((v6 - qword_6E8D60) >> 2);
    *v21 = a3;
    *(v21 + 4) = a1;
    *(v21 + 8) = a2;
    v15 = 12 * v18 + 12;
    v22 = v21 - v17;
    memcpy((v21 - v17), v16, v17);
    qword_6E8D60 = v22;
    qword_6E8D68 = v15;
    qword_6E8D70 = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v6 = a3;
    v15 = v6 + 12;
    *(v6 + 4) = a1;
    *(v6 + 8) = a2;
  }

  *(v8 + 429) = v15;
}

uint64_t sub_3F8E40(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = sub_3F8EC0(a1, a2);
  if (v5)
  {
    v8 = *(v4 + 8);
    v6 = v4 + 8;
    v7 = v8;
    if (!v8)
    {
      v13 = 0;
      return v13 | (v7 << 8);
    }

    v9 = v6;
    do
    {
      v10 = *(v7 + 28);
      v11 = v10 >= a3;
      v12 = v10 < a3;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 != v6 && *(v9 + 28) <= a3)
    {
      v13 = *(v9 + 32);
      LODWORD(v7) = 1;
      return v13 | (v7 << 8);
    }
  }

  v13 = 0;
  LODWORD(v7) = 0;
  return v13 | (v7 << 8);
}

unint64_t sub_3F8EC0(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 32;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 32 && *(v5 + 32) <= a2 && *(v5 + 112) == 1)
  {
    v9 = *(v5 + 104);
    v10 = *(v5 + 112);
    v11 = v9 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v11 = 0;
    }

    else
    {
      v12 = sub_5544(21);
      if (*(v12 + 8))
      {
        v13 = *v12;
        if (*v12)
        {
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v17 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315650;
            v19 = "RoutingTypes.cpp";
            v20 = 1024;
            v21 = 606;
            v22 = 2080;
            v23 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_3F8EC0(a1, 1768776806);
      v11 = v9 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v11 | v9;
}

void sub_3F9064()
{
  sub_3F8B90(0x70687077u, 0, -18.0);
  sub_3F8B90(0x70687062u, 0, -18.0);
  sub_3F8B90(0x70687042u, 0, -18.0);
  sub_3F8B90(0x70687062u, 1634231920, -12.0);

  sub_3F8B90(0x70687042u, 1633759844, -12.0);
}

uint64_t *sub_3F90F8(uint64_t a1)
{
  v6 = 1768776806;
  *buf = &v6;
  if (*(sub_1C5588(a1, 0x696D6466u) + 92) == 1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v8 = 1024;
      v9 = 686;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v6;
  result = sub_1C5588(a1, v6);
  *(result + 22) = 1;
  *(result + 92) = 1;
  return result;
}

void sub_3F9264(uint64_t a1, void *a2)
{
  sub_3F7EE4(&v21, a2);
  v23 = 1768776806;
  v3 = v21;
  v4 = v22;
  if (v21 == v22)
  {
    v13 = sub_5544(21);
    v14 = *v13;
    if (!*v13 || !os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315394;
    *&buf[4] = "RoutingTypes.cpp";
    v25 = 1024;
    v26 = 699;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Empty DSPChainConfigVector (expected during bringup)", buf, 0x12u);
    if (!v3)
    {
      return;
    }

    goto LABEL_27;
  }

  *buf = &v23;
  if (*(sub_1C5588(a1, 0x696D6466u) + 72) == 1)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v25 = 1024;
      v26 = 694;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v23;
  v5 = sub_1C5588(a1, v23);
  v6 = v5;
  if (*(v5 + 72) != 1)
  {
    v5[6] = 0;
    v5[7] = 0;
    v5[8] = 0;
    sub_C9184((v5 + 6), v3, v4, (v4 - v3) >> 3);
    *(v6 + 72) = 1;
    if (!v3)
    {
      return;
    }

    goto LABEL_27;
  }

  v7 = v4 - v3;
  v8 = v5[8];
  v9 = v5[6];
  if (v8 - v9 < (v4 - v3))
  {
    v10 = v7 >> 3;
    if (v9)
    {
      v5[7] = v9;
      operator delete(v9);
      v8 = 0;
      v6[6] = 0;
      v6[7] = 0;
      v6[8] = 0;
    }

    if (!(v10 >> 61))
    {
      v11 = v8 >> 2;
      if (v8 >> 2 <= v10)
      {
        v11 = v7 >> 3;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      sub_99B50((v6 + 6), v12);
    }

    sub_189A00();
  }

  v15 = v5[7];
  v16 = v15 - v9;
  if (v15 - v9 < v7)
  {
    if (v15 != v9)
    {
      memmove(v5[6], v3, v15 - v9);
      v15 = v6[7];
    }

    v17 = v4 - &v3[v16];
    if (v17)
    {
      memmove(v15, &v3[v16], v17);
    }

    v6[7] = &v15[v17];
LABEL_26:
    if (!v3)
    {
      return;
    }

    goto LABEL_27;
  }

  memmove(v5[6], v3, v4 - v3);
  v6[7] = &v9[v7];
  if (v3)
  {
LABEL_27:
    operator delete(v3);
  }
}

void sub_3F958C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_3F95BC(uint64_t a1, unsigned int a2, int a3)
{
  v9 = a2;
  *buf = &v9;
  if (*(sub_1C5588(a1, a2) + 100) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 710;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_1C5588(a1, v9);
  *(result + 24) = a3;
  *(result + 100) = 1;
  return result;
}

uint64_t *sub_3F971C(uint64_t a1, unsigned int a2)
{
  v9 = 1986291046;
  v10 = a2;
  *buf = &v10;
  v3 = sub_1C5588(a1, a2);
  *buf = &v9;
  if (*(sub_3F98B4((v3 + 14), 0x76646566u) + 36) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v12 = 1024;
      v13 = 727;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v10;
  v4 = sub_1C5588(a1, v10);
  *buf = &v9;
  result = sub_3F98B4((v4 + 14), v9);
  *(result + 8) = 1;
  *(result + 36) = 1;
  return result;
}

uint64_t *sub_3F98B4(uint64_t a1, unsigned int a2)
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
      v4 = *(v2 + 28);
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

uint64_t *sub_3F9978(uint64_t a1)
{
  qmemcpy(v8, "fedvfdmi", sizeof(v8));
  *buf = &v8[1];
  v2 = sub_1C5588(a1, 0x696D6466u);
  *buf = v8;
  if (*(sub_3F98B4((v2 + 17), 0x76646566u) + 36) == 1)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v10 = 1024;
      v11 = 734;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v8[1];
  v3 = sub_1C5588(a1, v8[1]);
  *buf = v8;
  result = sub_3F98B4((v3 + 17), v8[0]);
  *(result + 8) = 1;
  *(result + 36) = 1;
  return result;
}

uint64_t *sub_3F9B20(uint64_t a1)
{
  v6 = 1768776806;
  *buf = &v6;
  if (*(sub_1C5588(a1, 0x696D6466u) + 161) == 1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v8 = 1024;
      v9 = 740;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v6;
  result = sub_1C5588(a1, v6);
  *(result + 80) = 257;
  return result;
}

uint64_t sub_3F9C88(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 161) == 1)
  {
    v9 = *(v5 + 160);
    v10 = v9 >> 8;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v10 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 968;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      LOWORD(v9) = sub_3F9C88(a1, 1768776806);
      v10 = BYTE1(v9);
    }
  }

  return v9 | (v10 << 8);
}

std::string *sub_3F9E24(std::string *a1, uint64_t **a2)
{
  sub_53E8(a1, "{ ");
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = *a2;
    do
    {
      if (*v6++)
      {
        std::string::append(a1, "[ ", 2uLL);
        sub_129944(&v16, *v5);
        v8 = a2[1];
        if (v6 == v8)
        {
          v9 = " ]";
        }

        else
        {
          v9 = " ], ";
        }

        if (v6 == v8)
        {
          v10 = 2;
        }

        else
        {
          v10 = 4;
        }

        v11 = std::string::append(&v16, v9, v10);
        v12 = *&v11->__r_.__value_.__l.__data_;
        v18 = v11->__r_.__value_.__r.__words[2];
        *__p = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        if (v18 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v18 >= 0)
        {
          v14 = HIBYTE(v18);
        }

        else
        {
          v14 = __p[1];
        }

        std::string::append(a1, v13, v14);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v4 = a2[1];
      }

      v5 = v6;
    }

    while (v6 != v4);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_3F9F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3F9FBC(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v16 = a7 != 0;
  v17 = sub_272EC8(a1, a2);
  *(v17 + 24) = (a6 != 0) | (2 * v16) | v17[3] & 0xFC;
  *(v17 + 8) = a4;
  *(v17 + 36) = a5 != 0;
  *(v17 + 37) = a8 != 0;
  *(v17 + 38) = a9 != 0;
  sub_272F50(v17 + 5, a3);
  sub_273274((a1 + 64), a3 + 3);
  *(a1 + 88) = a10 == 1;
  return a1;
}

void sub_3FA088(_Unwind_Exception *a1)
{
  sub_249314(*(v1 + 48));
  sub_2493B4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3FA0AC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v11 = v12;
  v12[0] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12[1] = 0;
  v12[2] = v13;
  sub_3F9FBC(a1, a2, &v11, a3, a4, a5, a6, a7, a8, a9);
  sub_2492C0(v13[0]);
  sub_249314(v12[0]);
  return a1;
}

void sub_3FA128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_2492C0(a15);
  sub_249314(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_3FA144(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *(a1 + 16) = *a4;
  *(a1 + 24) = *a5;
  if (*(a6 + 8))
  {
    sub_3F7EE4(&v13, *a6);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = 1;
  }

  else
  {
    sub_C90FC(a1 + 32, &unk_5A4770);
  }

  *(a1 + 64) = *a7;
  sub_C9678((a1 + 80), a8);
  sub_3F7C0C(a1, v11);
  return a1;
}

void sub_3FA1F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 120) == 1)
  {
    sub_12A2C4(v1 + 80);
  }

  if (*(v1 + 56) == 1)
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      *(v1 + 40) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_3FA23C(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_46980(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_392084((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = a1 + 7;
  if (*a3 == a3[1])
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "RoutingTypes.cpp";
      v14 = 1024;
      v15 = 1202;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v12, 0x12u);
    }

LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a2[1] - *a2 != 4)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "RoutingTypes.cpp";
      v14 = 1024;
      v15 = 1203;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v12, 0x12u);
    }

    goto LABEL_11;
  }

  sub_C6778(a1[3], a1[4]);
  return a1;
}

void sub_3FA448(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  sub_477A0(*v4);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3FA4A0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a1 + 56;
  if (!a2)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "RoutingTypes.cpp";
      v10 = 1024;
      v11 = 1211;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a2 + 4) == 1)
  {
    sub_9EF84(a1, a2);
  }

  sub_1E5A9C(a1 + 24, &v7);
  sub_C6778(*(a1 + 24), *(a1 + 32));
  return a1;
}

void sub_3FA5F4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_477A0(*v3);
  v5 = *(v1 + 24);
  if (v5)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3FA63C(uint64_t result, unsigned int a2)
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

uint64_t sub_3FA758(uint64_t a1)
{
  sub_477A0(*(a1 + 64));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_3FA7A4(uint64_t a1, unsigned int a2, unsigned int **a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 8 || *(v7 + 32) > a2)
  {
    goto LABEL_18;
  }

  sub_C6778(*(v7 + 64), *(v7 + 72));
  sub_C6894(v21, v7 + 40, a3);
  if ((v21[0] & 1) == 0)
  {
    v11 = v22;
LABEL_16:
    if (v11)
    {
LABEL_17:
      LOBYTE(v16) = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_24;
    }

LABEL_18:
    LODWORD(v6) = 0;
    goto LABEL_19;
  }

  v11 = v22;
  if (v23 == v22)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = *&v22[8 * v12];
    if (*(v14 + 28) == 1)
    {
      break;
    }

    v12 = v13;
    if ((v23 - v22) >> 3 <= v13++)
    {
      goto LABEL_17;
    }
  }

  v16 = *(v14 + 24);
  v17 = v16 & 0xFF00000000;
  v18 = v16 & 0xFFFFFF00;
LABEL_24:
  operator delete(v11);
  v6 = (v18 | v17) >> 8;
  if ((v17 & 0x100000000) != 0)
  {
    LOBYTE(v19) = v18 | v17 | v16;
    return v17 & 0xFF00000000 | v19 | ((v6 & 0xFFFFFF) << 8);
  }

LABEL_19:
  if (a2)
  {
    v19 = sub_3FA7A4(a1, 0, a3);
    v6 = v19 >> 8;
    v17 = v19 & 0xFF00000000;
  }

  else
  {
    LOBYTE(v19) = 0;
    v17 = 0;
  }

  return v17 & 0xFF00000000 | v19 | ((v6 & 0xFFFFFF) << 8);
}

void sub_3FA8F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 8 && *(v6 + 32) <= a2)
  {
    v18 = a3;
    sub_1E5A9C(v6 + 64, &v18);
    sub_C6778(*(v6 + 64), *(v6 + 72));
  }

  else
  {
LABEL_9:
    sub_3FA4A0(v11, a3);
    LODWORD(v18) = a2;
    *v19 = *v11;
    v20 = v12;
    v11[0] = 0;
    v11[1] = 0;
    *__p = *v13;
    v12 = 0;
    v13[0] = 0;
    v10 = v14;
    v13[1] = 0;
    v14 = 0;
    v22 = v10;
    v23 = v15;
    v24[0] = v16;
    v24[1] = v17;
    if (v17)
    {
      v16[2] = v24;
      v15 = &v16;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v23 = v24;
    }

    sub_3FA63C(a1, a2);
    sub_477A0(v24[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }

    sub_477A0(v16);
    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }

    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }
}

void sub_3FAA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_3FA758(&a19);
  sub_249DB4(&a9);
  _Unwind_Resume(a1);
}

void sub_3FAA68(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_477A0(*(a2 + 96));
    v3 = *(a2 + 64);
    if (v3)
    {
      *(a2 + 72) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 40);
    if (v4)
    {
      *(a2 + 48) = v4;
      operator delete(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_3FAADC(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a3)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v28 = "RoutingTypes.cpp";
      *&v28[8] = 1024;
      *&v28[10] = 1804;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = a1 + 8;
    do
    {
      v8 = *(v5 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * v10);
    }

    while (v5);
    if (v7 != v6 && *(v7 + 32) <= a2)
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v24, a2);
        v22 = v26 >= 0 ? &v24 : v24;
        *buf = 136315650;
        *v28 = "RoutingTypes.cpp";
        *&v28[8] = 1024;
        *&v28[10] = 1807;
        *&v28[14] = 2080;
        *&v28[16] = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempting to insert a SubPortConfigurationGroup for an existing mode \\%s\\"", buf, 0x1Cu);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }
      }

      v23 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v23, "Attempting to insert a SubPortConfigurationGroup for an existing mode %s");
    }
  }

  v25 = 0;
  v26 = 0;
  v24 = &v25;
  *buf = 0;
  memset(&v28[4], 0, 24);
  sub_46980(&v28[4], *a3, a3[1], (a3[1] - *a3) >> 2);
  __p = 0;
  v30 = 0;
  v31 = 0;
  sub_392084(&__p, a3[3], a3[4], (a3[4] - a3[3]) >> 3);
  sub_392100(v32, a3 + 6);
  sub_3FA63C(&v24, *buf);
  sub_477A0(v32[1]);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (*&v28[4])
  {
    *&v28[12] = *&v28[4];
    operator delete(*&v28[4]);
  }

  v11 = *v6;
  if (!*v6)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = *(v11 + 8);
      if (v13 <= a2)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_20;
      }
    }

    if (v13 >= a2)
    {
      break;
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v14 = v12 + 6;
  sub_24A720(v12[6]);
  v15 = v25;
  v12[5] = v24;
  v12[6] = v15;
  v16 = v26;
  v12[7] = v26;
  if (v16)
  {
    v15[2] = v14;
    v24 = &v25;
    v25 = 0;
    v26 = 0;
    v15 = 0;
  }

  else
  {
    v12[5] = v14;
  }

  sub_24A720(v15);
}

char **sub_3FAF08(uint64_t a1, char **a2)
{
  v9 = 1768776806;
  *buf = &v9;
  if (*(sub_3FB0BC(a1, 0x696D6466u) + 64) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 1826;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v9;
  v4 = sub_3FB0BC(a1, v9);
  result = (v4 + 5);
  if (*(v4 + 64) == 1)
  {
    if (result != a2)
    {
      return sub_16B928(result, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *result = 0;
    v4[6] = 0;
    v4[7] = 0;
    result = sub_46980(result, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(v4 + 64) = 1;
  }

  return result;
}

uint64_t *sub_3FB0BC(uint64_t a1, unsigned int a2)
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

uint64_t *sub_3FB1C8(uint64_t a1, unsigned int a2, __int16 a3)
{
  v9 = a2;
  *buf = &v9;
  if (*(sub_3FB0BC(a1, a2) + 73) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 1832;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_3FB0BC(a1, v9);
  *(result + 36) = a3 | 0x100;
  return result;
}

uint64_t *sub_3FB324(uint64_t a1, unsigned int a2, __int16 a3)
{
  v9 = a2;
  *buf = &v9;
  if (*(sub_3FB0BC(a1, a2) + 75) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 1838;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_3FB0BC(a1, v9);
  *(result + 37) = a3 | 0x100;
  return result;
}

uint64_t *sub_3FB480(uint64_t a1, unsigned int a2, __int16 a3)
{
  v9 = a2;
  *buf = &v9;
  if (*(sub_3FB0BC(a1, a2) + 77) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 1844;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_3FB0BC(a1, v9);
  *(result + 38) = a3 | 0x100;
  return result;
}

uint64_t *sub_3FB5DC(uint64_t *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      *v9 = v4;
      if (*(sub_3FB0BC(v5, *v4) + 79) == 1)
      {
        v6 = sub_5544(14);
        v7 = *v6;
        if (*v6)
        {
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            *v9 = 136315394;
            *&v9[4] = "RoutingTypes.cpp";
            v10 = 1024;
            v11 = 1852;
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v9, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      *v9 = v4;
      result = sub_3FB0BC(v5, *v4);
      *(result + 39) = 257;
      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_3FB754(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v4++;
      v7 = sub_3FB0BC(v5, v6);
      result = sub_75788((v7 + 10), 0x706D6269u);
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *sub_3FB7D0(uint64_t a1, __int16 a2)
{
  v8 = 1768776806;
  *buf = &v8;
  if (*(sub_3FB0BC(a1, 0x696D6466u) + 105) == 1)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v10 = 1024;
      v11 = 1868;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v8;
  result = sub_3FB0BC(a1, v8);
  *(result + 52) = a2 | 0x100;
  return result;
}

uint64_t sub_3FB93C(uint64_t result, void *a2)
{
  if (*(result + 40))
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 136315394;
      *&v5[1] = "RoutingTypes.cpp";
      v6 = 1024;
      v7 = 1891;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((result + 24) != a2 && *a2 != a2 + 1)
  {
    sub_2734DC();
  }

  return result;
}

uint64_t **sub_3FBB14(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = a2;
  *buf = &v10;
  if (*(sub_3FB0BC(a1, a2) + 136) == 1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v12 = 1024;
      v13 = 1897;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v10;
  v5 = sub_3FB0BC(a1, v10);
  result = (v5 + 14);
  if (*(v5 + 136) == 1)
  {
    if (result != a3)
    {
      return sub_4ABC8(result, *a3, (a3 + 8));
    }
  }

  else
  {
    result = sub_44E44(result, a3);
    *(v5 + 136) = 1;
  }

  return result;
}

void sub_3FBCA4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v26 = a2;
  v28 = &v26;
  if (sub_3FB0BC(a1, a2)[24])
  {
    v28 = &v26;
    v7 = sub_3FB0BC(a1, v26);
    LODWORD(v28) = a3;
    sub_44E44(&v29, a4);
    v8 = v7[22];
    if (!v8)
    {
LABEL_17:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = *(v8 + 32);
        if (v28 >= v10)
        {
          break;
        }

        v8 = *v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 >= v28)
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v19 = v30[0];
  }

  else
  {
    sub_44E44(&v20, a4);
    LODWORD(v28) = a3;
    v29 = v20;
    v30[0] = v21;
    v30[1] = v22;
    if (v22)
    {
      v21[2] = v30;
      v20 = &v21;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v29 = v30;
    }

    v24 = 0;
    v25 = 0;
    v23 = &v24;
    sub_27365C(&v23, &v24, v28);
    v27 = &v26;
    v11 = sub_3FB0BC(a1, v26);
    v12 = v11;
    if (*(v11 + 192) == 1)
    {
      v13 = v11 + 22;
      sub_2492C0(v11[22]);
      v14 = v24;
      v12[21] = v23;
      *v13 = v14;
      v15 = v25;
      v12[23] = v25;
      if (v15)
      {
        v14[2] = v13;
        v23 = &v24;
        v24 = 0;
        v25 = 0;
        v14 = 0;
      }

      else
      {
        v12[21] = v13;
      }
    }

    else
    {
      v16 = v23;
      v14 = v24;
      v12[22] = v24;
      v17 = v12 + 22;
      v12[21] = v16;
      v18 = v25;
      v12[23] = v25;
      if (v18)
      {
        v14[2] = v17;
        v23 = &v24;
        v24 = 0;
        v25 = 0;
        v14 = 0;
      }

      else
      {
        v12[21] = v17;
      }

      *(v12 + 192) = 1;
    }

    sub_2492C0(v14);
    sub_477A0(v30[0]);
    v19 = v21;
  }

  sub_477A0(v19);
}

uint64_t *sub_3FBF7C(uint64_t a1, uint64_t a2)
{
  v5 = 2003133037;
  v6 = &v5;
  v3 = sub_3FB0BC(a1, 0x7765626Du);
  return sub_47714(v3 + 18, *a2, (a2 + 8));
}

_BYTE *sub_3FBFD8(_BYTE *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = a2 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a2 + 8 && *(v7 + 32) <= a3 && *(v7 + 64) == 1)
  {

    return sub_D1368(result, v7 + 40);
  }

  else
  {
LABEL_13:
    if (a3 == 1768776806)
    {
      *result = 0;
      result[24] = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a3);
            v13 = v15 >= 0 ? __p : __p[0];
            *buf = 136315650;
            v17 = "RoutingTypes.cpp";
            v18 = 1024;
            v19 = 1953;
            v20 = 2080;
            v21 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      return sub_3FBFD8(v5, a2, 1768776806);
    }
  }

  return result;
}

uint64_t sub_3FC1B4(uint64_t a1, unsigned int a2)
{
  v4 = _os_feature_enabled_impl();
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = a1 + 8;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 != a1 + 8 && *(v6 + 32) <= a2 && *(v6 + 75) == 1)
    {
      v4 = *(v6 + 74);
      v10 = v4 >> 8;
      return v4 | (v10 << 8);
    }
  }

  if (a2 == 1768776806)
  {
    LOBYTE(v4) = 0;
LABEL_14:
    v10 = 0;
    return v4 | (v10 << 8);
  }

  v11 = sub_5544(21);
  if (*(v11 + 8))
  {
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, a2);
        if (v16 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 136315650;
        v18 = "RoutingTypes.cpp";
        v19 = 1024;
        v20 = 2005;
        v21 = 2080;
        v22 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  LOWORD(v4) = sub_3FC1B4(a1, 1768776806);
  v10 = BYTE1(v4);
  return v4 | (v10 << 8);
}

uint64_t sub_3FC368(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 16);
  v2 = a1 + 16;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 == v2 || *(v5 + 32) > a2 || *(v5 + 107) != 1)
    {
      v9 = 0;
      LODWORD(v3) = 0;
    }

    else
    {
      v9 = *(v5 + 106);
      LODWORD(v3) = (v9 >> 8) & 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v3 & v9;
}

uint64_t sub_3FC3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v18 = "RoutingTypes.cpp";
      *&v18[8] = 1024;
      *&v18[10] = 2537;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a2 + 40) - *(a2 + 32) >= 5uLL)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v18 = "RoutingTypes.cpp";
      *&v18[8] = 1024;
      *&v18[10] = 2538;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v13, "Precondition failure.");
  }

  if (sub_3FC6F4(a2))
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v18 = "RoutingTypes.cpp";
      *&v18[8] = 1024;
      *&v18[10] = 2539;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "Precondition failure.");
  }

  if (*a2)
  {
    *buf = *(a2 + 4);
    *&v18[4] = *(a2 + 8);
    v6 = sub_3FC768(a1 + 24, *buf, *&v18[4]);
  }

  else
  {
    *buf = *(a2 + 4);
    *&v18[4] = *(a2 + 8);
    v6 = sub_3FC768(a1, *buf, *&v18[4]);
  }

  sub_3FA8F4((v6 + 12), *(a2 + 24), a3);
  return sub_84CDC(a1);
}

uint64_t *sub_3FC768(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2 && (v5 != a2 || v4[5] <= a3))
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if (v5 >= a2 && v4[5] >= a3)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_10;
    }
  }
}

void *sub_3FC88C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  *a1 = a1 + 1;
  a1[4] = 0;
  a1[2] = 0;
  a1[3] = a1 + 4;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = a1 + 7;
  sub_3FC3D0(a1, a2, a3);
  sub_84CDC(a1);
  return a1;
}

void sub_3FC8EC(_Unwind_Exception *a1)
{
  sub_477A0(*v3);
  sub_24A6BC(*v2);
  sub_24A6BC(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3FC910(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v48 = sub_5544(14);
    v49 = *v48;
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2561;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!sub_3FC6F4(&unk_6FC6F8) && !sub_3FC6F4(&dword_709348))
  {
    v51 = sub_5544(14);
    v52 = *v51;
    if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2562;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v53 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v53, "Precondition failure.");
  }

  v3 = dword_709348;
  sub_84CDC(a1);
  v4 = 24;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = *a2;
  v54 = a2 + 1;
  v55 = v4;
  if (*a2 != a2 + 1)
  {
    do
    {
      v59 = *(v5 + 8);
      v60 = xmmword_709350;
      *buf = &v59;
      v6 = sub_3FC768(a1 + v55, v59, xmmword_709350);
      i = (v6 + 12);
      if (v6 + 12 != v5 + 5)
      {
        v8 = v5[5];
        v9 = v5 + 6;
        if (v6[14])
        {
          v11 = v6[13];
          v10 = (v6 + 13);
          v12 = *(v10 - 1);
          *(v10 - 1) = v10;
          *(v11 + 16) = 0;
          *v10 = 0;
          v10[1] = 0;
          v58 = v10;
          if (*(v12 + 8))
          {
            v13 = *(v12 + 8);
          }

          else
          {
            v13 = v12;
          }

          *buf = i;
          *&buf[8] = v13;
          *&buf[16] = v13;
          if (v13)
          {
            *&buf[8] = sub_1658B4(v13);
            if (v8 != v9)
            {
              v57 = i;
              while (1)
              {
                *(v13 + 32) = *(v8 + 8);
                if (v13 != v8)
                {
                  break;
                }

LABEL_71:
                v40 = v58;
                v41 = *v58;
                v42 = v58;
                if (*v58)
                {
                  do
                  {
                    while (1)
                    {
                      v42 = v41;
                      if (*(v13 + 32) >= *(v41 + 8))
                      {
                        break;
                      }

                      v41 = *v41;
                      v40 = v42;
                      if (!*v42)
                      {
                        goto LABEL_77;
                      }
                    }

                    v41 = v41[1];
                  }

                  while (v41);
                  v40 = v42 + 1;
                }

LABEL_77:
                sub_46B44(i, v42, v40, v13);
                v13 = *&buf[8];
                *&buf[16] = *&buf[8];
                if (*&buf[8])
                {
                  *&buf[8] = sub_1658B4(*&buf[8]);
                }

                v43 = v8[1];
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
                    v44 = v8[2];
                    v38 = *v44 == v8;
                    v8 = v44;
                  }

                  while (!v38);
                }

                if (v13)
                {
                  v8 = v44;
                  if (v44 != v9)
                  {
                    continue;
                  }
                }

                goto LABEL_88;
              }

              sub_16B928((v13 + 40), v8[5], v8[6], (v8[6] - v8[5]) >> 2);
              v14 = *(v13 + 64);
              v16 = v8[8];
              v15 = v8[9];
              v17 = v15 - v16;
              v18 = *(v13 + 80);
              if (v18 - v14 < (v15 - v16))
              {
                if (v14)
                {
                  *(v13 + 72) = v14;
                  operator delete(v14);
                  v18 = 0;
                  *(v13 + 64) = 0;
                  *(v13 + 72) = 0;
                  *(v13 + 80) = 0;
                }

                v19 = v17 >> 3;
                if (!((v17 >> 3) >> 61))
                {
                  if (v18 >> 2 > v19)
                  {
                    v19 = v18 >> 2;
                  }

                  if (v18 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v20 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v20 = v19;
                  }

                  sub_99B50(v13 + 64, v20);
                }

                sub_189A00();
              }

              v21 = *(v13 + 72);
              v22 = v21 - v14;
              if (v21 - v14 >= v17)
              {
                if (v15 != v16)
                {
                  memmove(v14, v16, v15 - v16);
                }

                *(v13 + 72) = &v14[v17];
                v9 = v5 + 6;
              }

              else
              {
                if (v21 != v14)
                {
                  memmove(*(v13 + 64), v8[8], v21 - v14);
                  v21 = *(v13 + 72);
                }

                v9 = v5 + 6;
                if (v15 != &v16[v22])
                {
                  memmove(v21, &v16[v22], v15 - &v16[v22]);
                }

                *(v13 + 72) = &v21[v15 - &v16[v22]];
              }

              v23 = v8[11];
              v24 = v8 + 12;
              if (*(v13 + 104))
              {
                v26 = (v13 + 96);
                v25 = *(v13 + 96);
                v27 = *(v13 + 88);
                *(v13 + 88) = v13 + 96;
                *(v25 + 16) = 0;
                *(v13 + 96) = 0;
                *(v13 + 104) = 0;
                if (*(v27 + 8))
                {
                  v28 = *(v27 + 8);
                }

                else
                {
                  v28 = v27;
                }

                if (v28)
                {
                  v29 = sub_1658B4(v28);
                  if (v23 == v24)
                  {
                    v31 = v28;
                  }

                  else
                  {
                    v30 = v23;
                    do
                    {
                      v31 = v29;
                      v32 = *(v30 + 8);
                      *(v28 + 32) = v32;
                      v33 = v30[5];
                      *(v28 + 48) = *(v30 + 48);
                      *(v28 + 40) = v33;
                      v34 = *v26;
                      v35 = (v13 + 96);
                      v36 = (v13 + 96);
                      if (*v26)
                      {
                        do
                        {
                          while (1)
                          {
                            v35 = v34;
                            if (v32 >= *(v34 + 8))
                            {
                              break;
                            }

                            v34 = *v34;
                            v36 = v35;
                            if (!*v35)
                            {
                              goto LABEL_48;
                            }
                          }

                          v34 = v34[1];
                        }

                        while (v34);
                        v36 = v35 + 1;
                      }

LABEL_48:
                      sub_46B44((v13 + 88), v35, v36, v28);
                      if (v29)
                      {
                        v29 = sub_1658B4(v29);
                      }

                      else
                      {
                        v29 = 0;
                      }

                      v37 = v30[1];
                      if (v37)
                      {
                        do
                        {
                          v23 = v37;
                          v37 = *v37;
                        }

                        while (v37);
                      }

                      else
                      {
                        do
                        {
                          v23 = v30[2];
                          v38 = *v23 == v30;
                          v30 = v23;
                        }

                        while (!v38);
                      }

                      if (!v31)
                      {
                        break;
                      }

                      v28 = v31;
                      v30 = v23;
                    }

                    while (v23 != v24);
                  }

                  sub_477A0(v31);
                  if (v29)
                  {
                    v39 = v29[2];
                    for (i = v57; v39; v39 = v39[2])
                    {
                      v29 = v39;
                    }

                    sub_477A0(v29);
                  }

                  else
                  {
                    i = v57;
                  }

                  v9 = v5 + 6;
                  goto LABEL_68;
                }

                sub_477A0(0);
              }

              i = v57;
LABEL_68:
              if (v23 != v24)
              {
                operator new();
              }

              v13 = *&buf[16];
              goto LABEL_71;
            }
          }

          v44 = v8;
LABEL_88:
          sub_3FD1C8(buf);
          v8 = v44;
        }

        if (v8 != v9)
        {
          operator new();
        }
      }

      v45 = v5[1];
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
          v46 = v5[2];
          v38 = *v46 == v5;
          v5 = v46;
        }

        while (!v38);
      }

      v5 = v46;
    }

    while (v46 != v54);
  }

  return sub_84CDC(a1);
}

uint64_t sub_3FD1C8(uint64_t a1)
{
  sub_24A720(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_24A720(v2);
  }

  return a1;
}

void *sub_3FD218(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = a1 + 1;
  a1[4] = 0;
  a1[2] = 0;
  a1[3] = a1 + 4;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = a1 + 7;
  sub_3FC910(a1, a2);
  sub_84CDC(a1);
  return a1;
}

void sub_3FD278(_Unwind_Exception *a1)
{
  sub_477A0(*v3);
  sub_24A6BC(*v2);
  sub_24A6BC(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3FD29C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "RoutingTypes.cpp";
      v12 = 1024;
      v13 = 2554;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*a2 != 1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "RoutingTypes.cpp";
      v12 = 1024;
      v13 = 2555;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v9, "Precondition failure.");
  }

  return sub_3FC3D0(a1, a2, a3);
}

uint64_t sub_3FD47C(uint64_t a1, int a2)
{
  if (qword_709310 != 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v16 = "RoutingTypes.cpp";
      *&v16[8] = 1024;
      *&v16[10] = 2596;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (dword_709328)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v16 = "RoutingTypes.cpp";
      *&v16[8] = 1024;
      *&v16[10] = 2597;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v11, "Precondition failure.");
  }

  if (qword_709330 != qword_709338)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v16 = "RoutingTypes.cpp";
      *&v16[8] = 1024;
      *&v16[10] = 2598;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "Precondition failure.");
  }

  *buf = HIDWORD(qword_709310);
  *&v16[4] = xmmword_709318;
  v4 = sub_3FC768(a1 + 24, HIDWORD(qword_709310), xmmword_709318);
  *(v4 + 20) = a2;
  *(v4 + 84) = 1;
  return sub_84CDC(a1);
}

uint64_t sub_3FD764(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2606;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a2 + 4) != *(a2 + 5))
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2607;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v27, "Precondition failure.");
  }

  v8 = *a2;
  sub_84CDC(a1);
  v9 = 24;
  if (!v8)
  {
    v9 = 0;
  }

  v28 = a2[1];
  v29 = *(a2 + 2);
  *buf = &v28;
  v10 = sub_3FC768(a1 + v9, v28, v29);
  v12 = v10 + 13;
  v11 = v10[13];
  v13 = a2[6];
  if (!v11)
  {
    goto LABEL_13;
  }

  v14 = v10 + 13;
  do
  {
    v15 = *(v11 + 32);
    v16 = v15 >= v13;
    v17 = v15 < v13;
    if (v16)
    {
      v14 = v11;
    }

    v11 = *(v11 + 8 * v17);
  }

  while (v11);
  if (v14 != v12 && *(v14 + 8) <= v13)
  {
    v18 = v14[12];
    if (!v18)
    {
LABEL_31:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 32);
        if (v20 <= a4)
        {
          break;
        }

        v18 = *v19;
        if (!*v19)
        {
          goto LABEL_31;
        }
      }

      if (v20 >= a4)
      {
        break;
      }

      v18 = *(v19 + 8);
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    *(v19 + 40) = a3;
    *(v19 + 48) = 1;
    sub_C6778(v14[8], v14[9]);
  }

  else
  {
LABEL_13:
    memset(v31, 0, sizeof(v31));
    *v30 = 0u;
    v41 = 0;
    v42 = a3;
    v43 = 1;
    v33 = 0;
    v34 = 0;
    v32 = &v33;
    sub_39739C(&v32, &v33, 0);
    *buf = v13;
    *&buf[8] = *v30;
    v36 = v31[0];
    v30[0] = 0;
    v30[1] = 0;
    *__p = *&v31[1];
    memset(v31, 0, sizeof(v31));
    v38 = v31[3];
    v39 = v32;
    v40[0] = v33;
    v40[1] = v34;
    if (v34)
    {
      v33[2] = v40;
      v32 = &v33;
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v39 = v40;
    }

    sub_3FA63C((v12 - 1), v13);
    sub_477A0(v40[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      *&buf[16] = *&buf[8];
      operator delete(*&buf[8]);
    }

    sub_477A0(v33);
    if (v31[1])
    {
      v31[2] = v31[1];
      operator delete(v31[1]);
    }

    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }
  }

  return sub_84CDC(a1);
}

uint64_t sub_3FDBC8(uint64_t a1, int a2)
{
  if (dword_709328)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v15 = "RoutingTypes.cpp";
      *&v15[8] = 1024;
      *&v15[10] = 2618;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (qword_709330 != qword_709338)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v15 = "RoutingTypes.cpp";
      *&v15[8] = 1024;
      *&v15[10] = 2619;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v13, "Precondition failure.");
  }

  v4 = qword_709310;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  *buf = HIDWORD(qword_709310);
  *&v15[4] = xmmword_709318;
  v6 = sub_3FC768(a1 + v5, HIDWORD(qword_709310), xmmword_709318);
  *(v6 + 14) = a2;
  *(v6 + 60) = 1;
  return sub_84CDC(a1);
}

uint64_t sub_3FDE10(uint64_t a1, int *a2, int a3)
{
  if (a2[6])
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v26 = "RoutingTypes.cpp";
      *&v26[8] = 1024;
      *&v26[10] = 2628;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a2 + 4) != *(a2 + 5))
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v26 = "RoutingTypes.cpp";
      *&v26[8] = 1024;
      *&v26[10] = 2629;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "Precondition failure.");
  }

  v6 = *a2;
  sub_84CDC(a1);
  v7 = 24;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = a1 + v7;
  v10 = a2[1];
  v9 = a2 + 1;
  *buf = v10;
  *&v26[4] = *(v9 + 1);
  v11 = sub_3FC768(a1 + v7, v10, *&v26[4]);
  *(v11 + 16) = a3;
  *(v11 + 68) = 1;
  *buf = *v9;
  *&v26[4] = *(v9 + 1);
  v12 = sub_C5464(v8, buf);
  if (v8 + 8 != v12)
  {
    v13 = *(v12 + 72);
    if (v13)
    {
      v14 = *v13;
      if (v14 != a3)
      {
        v22 = sub_5544(14);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v26 = "RoutingTypes.cpp";
          *&v26[8] = 1024;
          *&v26[10] = 2641;
          *&v26[14] = 1024;
          *&v26[16] = a3;
          v27 = 1024;
          v28 = v14;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempting to InsertForcedNumVirtualChannels %u which doesn't match the ForcedChannelLayout channel count %u", buf, 0x1Eu);
        }

        v24 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v24, "Attempting to InsertForcedNumVirtualChannels %u which doesn't match the ForcedChannelLayout channel count %u");
      }
    }
  }

  return sub_84CDC(a1);
}

uint64_t sub_3FE144(uint64_t a1, int *a2)
{
  inSpecifier = -267386874;
  if (a2[6])
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v36 = "RoutingTypes.cpp";
      *&v36[8] = 1024;
      *&v36[10] = 2649;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a2 + 4) != *(a2 + 5))
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v36 = "RoutingTypes.cpp";
      *&v36[8] = 1024;
      *&v36[10] = 2650;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v28, "Precondition failure.");
  }

  v4 = *a2;
  sub_84CDC(a1);
  if (v4)
  {
    v5 = 24;
  }

  else
  {
    v5 = 0;
  }

  v32 = 132;
  v6 = sub_46D388(6u);
  *v6 = 0;
  Property = AudioFormatGetProperty(0x636D706Cu, 4u, &inSpecifier, &v32, v6);
  v8 = Property;
  if (Property)
  {
    if (Property != 560360820)
    {
      v29 = sub_5544(14);
      v30 = *v29;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v36 = "RoutingTypes.cpp";
        *&v36[8] = 1024;
        *&v36[10] = 2666;
        *&v36[14] = 1024;
        *&v36[16] = v8;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): AudioFormatGetProperty(kAudioFormatProperty_ChannelLayoutForTag,..,) returned error %d", buf, 0x18u);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v31, "AudioFormatGetProperty(kAudioFormatProperty_ChannelLayoutForTag,..,) returned error %d");
    }

    v9 = sub_5544(21);
    if (*(v9 + 8))
    {
      v10 = *v9;
      if (*v9)
      {
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *v36 = "RoutingTypes.cpp";
          *&v36[8] = 1024;
          *&v36[10] = 2662;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioFormatGetProperty(kAudioFormatProperty_ChannelLayoutForTag,..,) returned kAudioFormatUnknownFormatError.", buf, 0x12u);
        }
      }
    }

    *v6 = inSpecifier;
  }

  v11 = a1 + v5;
  *buf = a2[1];
  *&v36[4] = *(a2 + 2);
  v34 = buf;
  v12 = sub_3FC768(a1 + v5, *buf, *&v36[4]);
  v13 = v12[9];
  v12[9] = v6;
  if (v13)
  {
    free(v13);
  }

  *buf = a2[1];
  *&v36[4] = *(a2 + 2);
  v14 = sub_C5464(a1 + v5, buf);
  if (v11 + 8 != v14)
  {
    v15 = inSpecifier;
    if (*(v14 + 68) == 1 && (v16 = *(v14 + 64)) != 0)
    {
      if (v16 != inSpecifier)
      {
        v17 = *(v14 + 64);
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18)
        {
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *v36 = "RoutingTypes.cpp";
            *&v36[8] = 1024;
            *&v36[10] = 2677;
            *&v36[14] = 1024;
            *&v36[16] = v15;
            v37 = 1024;
            v38 = v17;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempting to InsertForcedChannelLayoutForTag with %u channels which doesn't match the ForcedNumVirtualChannels channel count %u", buf, 0x1Eu);
          }
        }

        v20 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v20, "Attempting to InsertForcedChannelLayoutForTag with %u channels which doesn't match the ForcedNumVirtualChannels channel count %u");
      }
    }

    else
    {
      *buf = a2[1];
      *&v36[4] = *(a2 + 2);
      v34 = buf;
      v21 = sub_3FC768(v11, *buf, *&v36[4]);
      *(v21 + 16) = v15;
      *(v21 + 68) = 1;
    }
  }

  return sub_84CDC(a1);
}

std::string *sub_3FE68C(std::string *a1, void *a2)
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
      sub_FC33C(__p, (v5 + 4));
      if ((v14 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v8 = v14;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      if (v10 == v4)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      v5 = v10;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_3FE794(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FE7B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3FE7A0);
}

std::string *sub_3FE7D0(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    while (1)
    {
      sub_11AB44(__p, v4 + 16);
      v5 = (v9 & 0x80u) == 0 ? __p : __p[0];
      v6 = (v9 & 0x80u) == 0 ? v9 : __p[1];
      std::string::append(a1, v5, v6);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = *(v4 + 8);
      if (v4 == a2)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_3FE8AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FE8D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3FE8B8);
}

std::string *sub_3FE8E8(std::string *a1, unsigned int ***a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{", 1uLL);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      sub_109694(&__p, *v4);
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

      if (*v4 != *(a2[1] - 1))
      {
        std::string::append(a1, ", ", 2uLL);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_3FE9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_3FEA10(_BYTE *a1, unsigned int *a2)
{
  sub_22170(v11, *a2);
  v4 = v12;
  v5 = v11[0];
  sub_22170(__p, a2[1]);
  v6 = v11;
  if (v4 < 0)
  {
    v6 = v5;
  }

  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  snprintf(__str, 0x400uLL, "[ %s / %s ]", v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  return sub_53E8(a1, __str);
}

void sub_3FEAFC(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FEB1C(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    while (1)
    {
      sub_3FEA10(__p, (v2 + 16));
      v5 = (v8 & 0x80u) == 0 ? __p : __p[0];
      v6 = (v8 & 0x80u) == 0 ? v8 : __p[1];
      std::string::append(a1, v5, v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(v2 + 8);
      if (v2 == a2)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }
}

void sub_3FEBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_3FEC0C(std::string *a1, unsigned int *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  sub_68108(&__p, a2);
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

  std::string::append(a1, "'; PortList: ", 0xDuLL);
  sub_8E920(&__p, (a2 + 2), 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, "' ]", 3uLL);
}

void sub_3FED04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3FED44(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_22170(__p, *(a2 + 144));
  if (__p[23] >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = *__p;
  }

  if (__p[23] >= 0)
  {
    v7 = __p[23];
  }

  else
  {
    v7 = *&__p[8];
  }

  std::string::append(a1, v6, v7);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::append(a1, "(", 3uLL);
  LODWORD(outData.__r_.__value_.__l.__data_) = sub_A82E4(a2);
  strcpy(__p, "tlabbolg");
  __p[9] = 0;
  *&__p[10] = 0;
  v8 = sub_542F0(&outData, __p, 0, 0);
  *(&v10 + 1) = v9;
  *&v10 = v8;
  if (((v10 >> 32) & 0x1FFFFFFFFLL) == 0x100000001)
  {
    sub_22170(__p, 0x75736244u);
    if (__p[23] >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    if (__p[23] >= 0)
    {
      v12 = __p[23];
    }

    else
    {
      v12 = *&__p[8];
    }
  }

  else
  {
    sub_22170(__p, *(a2 + 304));
    if (__p[23] >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    if (__p[23] >= 0)
    {
      v12 = __p[23];
    }

    else
    {
      v12 = *&__p[8];
    }
  }

  std::string::append(a1, v11, v12);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::append(a1, ")", 2uLL);
  v13 = *(a2 + 200);
  *__p = *(a2 + 192);
  *&__p[8] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v45, __p, "", 1352);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v45;
  LODWORD(outData.__r_.__value_.__l.__data_) = 0;
  strcpy(__p, "nartbolg");
  __p[9] = 0;
  *&__p[10] = 0;
  v15 = (*(*v45 + 120))(v45);
  if (!AudioObjectHasProperty(v15, __p))
  {
    goto LABEL_33;
  }

  LODWORD(ioDataSize.__r_.__value_.__l.__data_) = 4;
  v16 = (*(*v14 + 120))(v14);
  AudioObjectGetPropertyData(v16, __p, 0, 0, &ioDataSize, &outData);
  if (LODWORD(outData.__r_.__value_.__l.__data_) != 1970496032)
  {
    if (LODWORD(outData.__r_.__value_.__l.__data_) == 1835169139)
    {
      if (sub_34D11C(a2))
      {
        v17 = 3;
LABEL_37:
        v18 = 1;
        goto LABEL_45;
      }

      v18 = sub_292208(v14);
      if (v18)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_45;
    }

LABEL_33:
    v18 = 0;
    v17 = 0;
    goto LABEL_45;
  }

  v19 = *(v14 + 524);
  if (v19 == 0x110A000005ACLL)
  {
    v18 = 1;
    v17 = 1;
    goto LABEL_45;
  }

  if (v19 == 0x1710000005ACLL)
  {
    v17 = 2;
    goto LABEL_37;
  }

  v18 = v19 == 0x110B000005ACLL;
  if (v19 == 0x110B000005ACLL)
  {
    v17 = 5;
  }

  else
  {
    v17 = 0;
  }

LABEL_45:
  v20 = sub_5544(24);
  v21 = *v20;
  if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
  {
    sub_22170(&outData, *(a2 + 144));
    v22 = SHIBYTE(outData.__r_.__value_.__r.__words[2]);
    v23 = outData.__r_.__value_.__r.__words[0];
    if (v18)
    {
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    sub_A8378(&ioDataSize, v24);
    p_outData = &outData;
    if (v22 < 0)
    {
      p_outData = v23;
    }

    if ((ioDataSize.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_ioDataSize = &ioDataSize;
    }

    else
    {
      p_ioDataSize = ioDataSize.__r_.__value_.__r.__words[0];
    }

    *__p = 136315906;
    *&__p[4] = "PortUtilities.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 1388;
    *&__p[18] = 2080;
    *&__p[20] = p_outData;
    v48 = 2080;
    v49 = p_ioDataSize;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%25s:%-5d Headset type for port '%s': %s", __p, 0x26u);
    if (SHIBYTE(ioDataSize.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(ioDataSize.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(outData.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(outData.__r_.__value_.__l.__data_);
    }
  }

  if (v46)
  {
    sub_1A8C0(v46);
  }

  if (v18)
  {
    sub_A8378(&ioDataSize, v17);
    v27 = std::string::insert(&ioDataSize, 0, "(", 3uLL);
    v28 = *&v27->__r_.__value_.__l.__data_;
    outData.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&outData.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&outData, ")", 2uLL);
    v30 = *&v29->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v29->__r_.__value_.__l + 2);
    *__p = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (__p[23] >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = *__p;
    }

    if (__p[23] >= 0)
    {
      v32 = __p[23];
    }

    else
    {
      v32 = *&__p[8];
    }

    std::string::append(a1, v31, v32);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(outData.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(outData.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(ioDataSize.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(ioDataSize.__r_.__value_.__l.__data_);
    }
  }

  result = sub_A83F4(a2);
  if (result)
  {
    std::string::append(a1, "(", 3uLL);
    v34 = sub_A83F4(a2);
    std::to_string(__p, v34);
    if (__p[23] >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = *__p;
    }

    if (__p[23] >= 0)
    {
      v36 = __p[23];
    }

    else
    {
      v36 = *&__p[8];
    }

    std::string::append(a1, v35, v36);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    result = std::string::append(a1, ")", 2uLL);
  }

  if (*(a2 + 96) != *(a2 + 104))
  {
    result = (*(*a2 + 184))(a2, a3);
    v37 = result;
    if ((result & 0x100000000) != 0)
    {
      if (result)
      {
        std::string::append(a1, "(", 3uLL);
        sub_22170(__p, v37);
        if (__p[23] >= 0)
        {
          v38 = __p;
        }

        else
        {
          v38 = *__p;
        }

        if (__p[23] >= 0)
        {
          v39 = __p[23];
        }

        else
        {
          v39 = *&__p[8];
        }

        std::string::append(a1, v38, v39);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::append(a1, ")", 2uLL);
        result = sub_A0D78(a2, v37);
        if (result)
        {
          __p[0] = 0;
          __p[4] = 0;
          v40 = (*(*a2 + 248))(a2, v37, __p);
          std::string::append(a1, "(", 3uLL);
          sub_22170(__p, v40);
          if (__p[23] >= 0)
          {
            v41 = __p;
          }

          else
          {
            v41 = *__p;
          }

          if (__p[23] >= 0)
          {
            v42 = __p[23];
          }

          else
          {
            v42 = *&__p[8];
          }

          std::string::append(a1, v41, v42);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          return std::string::append(a1, ")", 2uLL);
        }
      }
    }
  }

  return result;
}

void sub_3FF3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 + 23) < 0)
  {
    operator delete(*v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FF504(std::string *this, uint64_t a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 20) == 1)
  {
    std::string::append(this, "[ ", 2uLL);
  }

  sub_879F8(&__p, a2);
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

  std::string::append(this, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 20) == 1)
  {
    std::string::append(this, "'; IsolatedUseCaseID: '", 0x17uLL);
    if ((*(a2 + 20) & 1) == 0)
    {
      sub_1EC054();
    }

    sub_22170(&__p, *(a2 + 16));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, v6, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 20))
    {
      std::string::append(this, "' ]", 3uLL);
    }
  }
}

void sub_3FF62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FF66C()
{
  sub_2AC704(v0);
  sub_30F70C(&v10, 27);
  if (v9 == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }

    __p = v10;
    v8 = v11;
  }

  else
  {
    __p = v10;
    v8 = v11;
    v9 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_3FF730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_3FF748()
{
  sub_2AC704(v0);
  sub_30F70C(&v10, 28);
  if (v9 == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }

    __p = v10;
    v8 = v11;
  }

  else
  {
    __p = v10;
    v8 = v11;
    v9 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_3FF80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

unint64_t sub_3FF824(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*(a1 + 64))
  {
    if ((a2 == 0) != (*(a1 + 8) == 0))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 52) + 1;
      *(a1 + 52) = v10;
      if (((*(a1 + 24) / *(a1 + 20)) * (v10 - v9)) >= *(a1 + 28))
      {
        *(a1 + 56) = v10;
        v13 = (a1 + 96);
        v11 = *(a1 + 119);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(a1 + 104);
          if (a2)
          {
            v14 = a3 - 1;
            if (v11 >= a3 - 1)
            {
              v11 = a3 - 1;
            }

            v13 = *v13;
            goto LABEL_19;
          }
        }

        else if (a2)
        {
          v14 = a3 - 1;
          if (a3 - 1 < v11)
          {
            v11 = a3 - 1;
          }

LABEL_19:
          strncpy(a2, v13, v14);
        }

        v15 = *(a1 + 72);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(a1 + 64);
            if (v18)
            {
              v19 = *(a1 + 88);
              if (!v19 || (v20 = *(v18 + 72), v21 = *(a1 + 80), (v22 = std::__shared_weak_count::lock(v19)) == 0))
              {
                sub_175EA0();
              }

              v23 = v22;
              p_shared_weak_owners = &v22->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v22);
              block[0] = _NSConcreteStackBlock;
              block[1] = 1174405120;
              block[2] = sub_3FFA20;
              block[3] = &unk_6D1E98;
              block[4] = a1;
              block[5] = v21;
              v26 = v23;
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              dispatch_async(v20, block);
              if (v26)
              {
                std::__shared_weak_count::__release_weak(v26);
              }

              std::__shared_weak_count::__release_weak(v23);
            }

            sub_1A8C0(v17);
          }
        }

        goto LABEL_7;
      }
    }
  }

  v11 = 0;
LABEL_7:
  sub_1A8C0(v8);
  return v11;
}

void sub_3FFA04(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_3FFA20(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[5] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 64);
      if (v9)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = -6;
        while ((atomic_exchange((v2 + 16), 1u) & 1) != 0)
        {
          usleep(0x1388u);
          if (__CFADD__(v11++, 1))
          {
            goto LABEL_148;
          }
        }

        v46 = v8;
        if (*(v2 + 119) < 0)
        {
          **(v2 + 96) = 0;
          *(v2 + 104) = 0;
        }

        else
        {
          *(v2 + 96) = 0;
          *(v2 + 119) = 0;
        }

        v13 = (v2 + 96);
        if (*(v2 + 17))
        {
          v14 = 32;
        }

        else
        {
          v14 = 44;
        }

        if (!*(v2 + 60))
        {
          *(v2 + 60) = *(v2 + 32);
          std::string::append((v2 + 96), "\n", 1uLL);
          memset(&v53, 0, sizeof(v53));
          memset(&v52, 0, sizeof(v52));
          v15 = qword_6FC7D0;
          if (qword_6FC7D0 == qword_6FC7D8)
          {
            v23 = 0;
          }

          else
          {
            do
            {
              if (*(v2 + 17) == 1)
              {
                sub_53E8(&v51, *(v15 + 16));
                sub_53E8(&v50, *(v15 + 24));
                std::string::resize(&v51, *(v15 + 8), 32);
                std::string::resize(&v50, *(v15 + 8), 32);
                sub_1D3D28(&__p, &v51.__r_.__value_.__l.__data_, v14);
                if ((v49 & 0x80u) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                if ((v49 & 0x80u) == 0)
                {
                  v17 = v49;
                }

                else
                {
                  v17 = v48;
                }

                std::string::append(&v53, p_p, v17);
                if (v49 < 0)
                {
                  operator delete(__p);
                }

                sub_1D3D28(&__p, &v50.__r_.__value_.__l.__data_, v14);
                if ((v49 & 0x80u) == 0)
                {
                  v18 = &__p;
                }

                else
                {
                  v18 = __p;
                }

                if ((v49 & 0x80u) == 0)
                {
                  v19 = v49;
                }

                else
                {
                  v19 = v48;
                }

                std::string::append(&v52, v18, v19);
                if (v49 < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v50.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v51.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                if (*v15 == -1)
                {
                  v22 = strlen(*(v15 + 16));
                  std::string::append(&v53, *(v15 + 16), v22);
                }

                else
                {
                  sub_38DAD0(&v51, *v15);
                  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v20 = &v51;
                  }

                  else
                  {
                    v20 = v51.__r_.__value_.__r.__words[0];
                  }

                  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v51.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&v53, v20, size);
                  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v51.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v53, v14);
              }

              v15 += 32;
            }

            while (v15 != qword_6FC7D8);
            if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v23 = v53.__r_.__value_.__l.__size_;
            }
          }

          sub_B0848(&v51, v23 + 1);
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v51;
          }

          else
          {
            v24 = v51.__r_.__value_.__r.__words[0];
          }

          if (v23)
          {
            if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v53;
            }

            else
            {
              v25 = v53.__r_.__value_.__r.__words[0];
            }

            memmove(v24, v25, v23);
          }

          *(&v24->__r_.__value_.__l.__data_ + v23) = 10;
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v51;
          }

          else
          {
            v26 = v51.__r_.__value_.__r.__words[0];
          }

          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v51.__r_.__value_.__l.__size_;
          }

          std::string::append((v2 + 96), v26, v27);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          v28 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v29 = v52.__r_.__value_.__l.__size_;
          }

          if (v29)
          {
            sub_B0848(&v51, v29 + 1);
            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v51;
            }

            else
            {
              v30 = v51.__r_.__value_.__r.__words[0];
            }

            if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v52;
            }

            else
            {
              v31 = v52.__r_.__value_.__r.__words[0];
            }

            memmove(v30, v31, v29);
            *(&v30->__r_.__value_.__l.__data_ + v29) = 10;
            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v51;
            }

            else
            {
              v32 = v51.__r_.__value_.__r.__words[0];
            }

            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = v51.__r_.__value_.__l.__size_;
            }

            std::string::append((v2 + 96), v32, v33);
            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            v28 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          if (v28 < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }
        }

        if (*(v2 + 32))
        {
          v34 = *(v2 + 60) - 1;
        }

        else
        {
          v34 = 1;
        }

        *(v2 + 60) = v34;
        v35 = qword_6FC7D0;
        if (qword_6FC7D0 != qword_6FC7D8)
        {
          while (1)
          {
            memset(&v53, 0, sizeof(v53));
            v36 = v35[1];
            if (v36 - 1 < 3)
            {
              break;
            }

            if (v36 == 4)
            {
              std::to_string(&v52, v9[80]);
              goto LABEL_117;
            }

            if (!v36)
            {
              std::to_string(&v52, (*(v2 + 24) / *(v2 + 20)) * *(v2 + 52));
LABEL_117:
              if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v53.__r_.__value_.__l.__data_);
              }

              v53 = v52;
              goto LABEL_130;
            }

            *(&v53.__r_.__value_.__s + 23) = 7;
            qmemcpy(&v53, "!FORMAT", 7);
LABEL_130:
            if (*(v2 + 17) == 1)
            {
              std::string::resize(&v53, v35[2], 32);
            }

            sub_1D3D28(&v52, &v53.__r_.__value_.__l.__data_, v14);
            if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v43 = &v52;
            }

            else
            {
              v43 = v52.__r_.__value_.__r.__words[0];
            }

            if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v44 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v44 = v52.__r_.__value_.__l.__size_;
            }

            std::string::append((v2 + 96), v43, v44);
            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            v35 += 8;
            if (v35 == qword_6FC7D8)
            {
              goto LABEL_143;
            }
          }

          memset(&v52, 0, sizeof(v52));
          if (!(*(*v9 + 176))(v9, *v35, &v52) || v52.__r_.__value_.__l.__size_ - v52.__r_.__value_.__r.__words[0] != 8)
          {
            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              v53.__r_.__value_.__l.__size_ = 6;
              v41 = v53.__r_.__value_.__r.__words[0];
            }

            else
            {
              *(&v53.__r_.__value_.__s + 23) = 6;
              v41 = &v53;
            }

            strcpy(v41, "!ERROR");
LABEL_128:
            if (v52.__r_.__value_.__r.__words[0])
            {
              v52.__r_.__value_.__l.__size_ = v52.__r_.__value_.__r.__words[0];
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            goto LABEL_130;
          }

          v37 = *v52.__r_.__value_.__l.__data_;
          v38 = v35[1];
          if (v38 == 3)
          {
            v42 = v37;
            v40 = logf(v42) * 20.0;
          }

          else
          {
            if (v38 != 2)
            {
LABEL_125:
              std::to_string(&v51, v37);
              if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v53.__r_.__value_.__l.__data_);
              }

              v53 = v51;
              goto LABEL_128;
            }

            v39 = v37;
            v40 = logf(v39) * 10.0;
          }

          v37 = v40;
          goto LABEL_125;
        }

LABEL_143:
        std::string::append((v2 + 96), "\n", 1uLL);
        v45 = *(v2 + 8);
        v8 = v46;
        if (v45)
        {
          if (*(v2 + 119) < 0)
          {
            v13 = *v13;
          }

          fputs(v13, v45);
        }

        atomic_store(0, (v2 + 16));
      }

LABEL_148:
      sub_1A8C0(v8);
    }
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_40045C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_40046C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_400488(uint64_t a1)
{
  sub_4004C0(a1);

  operator delete();
}

uint64_t sub_4004C0(uint64_t a1)
{
  *a1 = off_6D1E40;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_6D6730;
  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_400794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v14);
  sub_1A8C0(v13);
  if (*(v10 + 143) < 0)
  {
    operator delete(*a10);
  }

  v16 = *(v10 + 112);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  *(v10 + 24) = v12;
  v17 = *(v10 + 96);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_40083C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D1ED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_4008B0(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"HW type");
  if (!Value)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0xFFFFFFFFLL;
  }

  if (CFStringCompare(v2, @"L71", 0) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(v2, @"L75", 0) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(v2, @"L77", 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 4;
}

void sub_400964(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t *a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(a1 + 1208) == 1)
  {

    sub_909B4(a1, a2, a3, a4, a5, a6, a7);
  }

  else if (*(a1 + 448) == 1)
  {
    HIWORD(v29) = *(a1 + 682);
    LOWORD(v29) = HIWORD(v29);
    HIWORD(v27) = HIWORD(v29) == 0;
    LOWORD(v27) = HIWORD(v29);
    v9 = v29;
    atomic_compare_exchange_strong((a1 + 680), &v9, v27);
    v10 = 400;
    if (!*(a1 + 682))
    {
      v10 = 424;
    }

    v11 = (a1 + v10);
    v12 = *(a1 + v10 + 8) - *(a1 + v10);
    if (v12)
    {
      v13 = 0;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
      v15 = v14 - 1;
      if (v14 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14;
      }

      v17 = 8;
      v18 = 16;
      do
      {
        v19 = a5;
        if (v13)
        {
          v19 = (*(a1 + 984) + v18 - 16);
        }

        v20 = a7;
        if (v15 != v13)
        {
          v20 = (*(a1 + 984) + v18);
        }

        v21 = *v19;
        v28 = *v20;
        v22 = *v11;
        if ((*(**(*v11 + v17) + 224))(*(*v11 + v17)))
        {
          if (a4 >= 2)
          {
            v30 = a5[1];
          }

          (*(**(v22 + v17) + 120))(*(v22 + v17), a2, a3);
        }

        else if (v28)
        {
          (*(**(v22 + v17) + 112))(*(v22 + v17), a2, a3);
        }

        ++v13;
        v17 += 24;
        v18 += 32;
      }

      while (v16 != v13);
    }
  }
}

uint64_t sub_400C14(uint64_t a1, int a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = sub_400CEC(a2, a3);
  if (HIDWORD(v16))
  {
    v18 = v16;
    v19 = *(a1 + 1192);
    v20 = *(v19 + 16);
    v21 = *(v19 + 148);

    return sub_724E8(v20, v21, v18, a5, a4);
  }

  else
  {

    return sub_2C31B0(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_400CEC(int a1, unsigned int a2)
{
  LODWORD(v4) = sub_45168();
  if (!v4)
  {
    v6 = 0;
    goto LABEL_14;
  }

  if (a1 != 1685287015)
  {
    if (a1 == 1936748595)
    {
      v4 = sub_70DB0(0x73707033u, a2);
      if (!HIDWORD(v4))
      {
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "DSPChain_HAL_ClosedLoopSpeakerProtection.cpp";
          v15 = 1024;
          v16 = 48;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", &v13, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Postcondition failure.");
      }

      v5 = v4 & 0xFFFFFF00;
      v6 = 0x100000000;
      return v6 | v5 | v4;
    }

    v6 = 0;
    LOBYTE(v4) = 0;
LABEL_14:
    v5 = 0;
    return v6 | v5 | v4;
  }

  v7 = sub_70E38(a2);
  v5 = a2 & 0xFFFFFF00;
  v6 = 0x100000000;
  v8 = !v7;
  if (v7)
  {
    LOBYTE(v4) = a2;
  }

  else
  {
    v6 = 0;
    LOBYTE(v4) = 0;
  }

  if (v8)
  {
    v5 = 0;
  }

  return v6 | v5 | v4;
}

uint64_t sub_400E98(uint64_t a1, int a2, uint64_t a3, void *a4, UInt32 *a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = sub_400CEC(a2, a3);
  if (HIDWORD(v15))
  {
    v18 = v15;
    v19 = *(a1 + 1192);
    v20 = *(v19 + 16);
    v21 = *(v19 + 148);

    return sub_173AE4(v20, v21, v18, a5, a4);
  }

  else
  {

    return sub_2C346C(a1, a2, a3, a4, a5, a6, v16, a8);
  }
}

uint64_t sub_400F68(uint64_t a1, int a2, uint64_t a3, UInt32 *a4, _BYTE *a5, uint64_t a6)
{
  v12 = sub_400CEC(a2, a3);
  if (HIDWORD(v12))
  {
    v14 = v12;
    v15 = *(a1 + 1192);
    v16 = *(v15 + 16);
    v17 = *(v15 + 148);

    return sub_1DC6D8(v16, v17, v14, a4, a5);
  }

  else
  {

    return sub_2C3608(a1, a2, a3, a4, a5, a6);
  }
}

unint64_t sub_401024(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_400CEC(a2, a3);
  if (!HIDWORD(v8))
  {
    return sub_162F98(a1, a2, a3, a4) != 0;
  }

  v10 = v8;
  v11 = *(a1 + 1192);

  return sub_70EA0(v11, v10);
}

uint64_t sub_4010B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = sub_401160(a2, a3);
  if (HIDWORD(v10))
  {
    v12 = v10;
    v13 = *(a1 + 1192);
    v14 = *(v13 + 16);
    v15 = *(v13 + 148);

    return sub_1DC770(v14, v15, v12, a5);
  }

  else
  {

    return sub_96EBC(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_401160(int a1, unsigned int a2)
{
  LODWORD(v4) = sub_45168();
  if (!v4)
  {
    v6 = 0;
    goto LABEL_14;
  }

  if (a1 != 1685287015)
  {
    if (a1 == 1936748595)
    {
      v4 = sub_8BE08(0x73707033u, a2);
      if (!HIDWORD(v4))
      {
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "DSPChain_HAL_ClosedLoopSpeakerProtection.cpp";
          v15 = 1024;
          v16 = 74;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", &v13, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Postcondition failure.");
      }

      v5 = v4 & 0xFFFFFF00;
      v6 = 0x100000000;
      return v6 | v5 | v4;
    }

    v6 = 0;
    LOBYTE(v4) = 0;
LABEL_14:
    v5 = 0;
    return v6 | v5 | v4;
  }

  v7 = sub_8BD58(a2);
  v5 = a2 & 0xFFFFFF00;
  v6 = 0x100000000;
  v8 = !v7;
  if (v7)
  {
    LOBYTE(v4) = a2;
  }

  else
  {
    v6 = 0;
    LOBYTE(v4) = 0;
  }

  if (v8)
  {
    v5 = 0;
  }

  return v6 | v5 | v4;
}

uint64_t sub_40130C(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_401160(a2, a3);
  if (HIDWORD(v10))
  {
    v12 = v10;
    v13 = *(a1 + 1192);
    v14 = *(v13 + 16);
    v15 = *(v13 + 148);

    return sub_8A234(v14, v15, v12, a4);
  }

  else
  {

    return sub_2C3688(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_4013BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_401160(a2, a3);
  if (!HIDWORD(v8))
  {
    return sub_8BF50(a1, a2, a3, a4) != 0;
  }

  v10 = v8;
  v11 = *(a1 + 1192);

  return sub_97D28(v11, v10);
}

void sub_401464(unint64_t a1)
{
  sub_40149C(a1);

  operator delete();
}

unint64_t sub_40149C(unint64_t a1)
{
  *a1 = off_6D1F10;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 735) < 0)
    {
      sub_54A0(__p, *(a1 + 712), *(a1 + 720));
    }

    else
    {
      *__p = *(a1 + 712);
      v8 = *(a1 + 728);
    }

    v4 = __p;
    if (v8 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v10 = "DSPChain_HAL_ClosedLoopSpeakerProtection.cpp";
    v11 = 1024;
    v12 = 219;
    v13 = 2080;
    v14 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deleting DSPChain_HAL_ClosedLoopSpeakerProtection %s", buf, 0x1Cu);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(a1 + 1200);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  sub_13ABB0(a1);
  return a1;
}

void sub_4015F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_401600(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "VPMicIndex");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_4016A0(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_401798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_4017B0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  *v1 = 0;
  *(v1 + 4) = 0;
  *(v1 + 8) = 0;
  *(v1 + 12) = 0;
  *(v1 + 16) = sub_310AF4();
  *(v2 + 20) = 1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  v3 = sub_106F10();
  *(v2 + 104) = 0;
  *(v2 + 76) = (v3 > 0xFFu) & v3;
  *(v2 + 77) = 1;
  *(v2 + 78) = 0;
  *(v2 + 86) = 0;
  *(v2 + 88) = 16777473;
  *(v2 + 112) = 0;
  *(v2 + 96) = v2 + 104;
  *(v2 + 120) = 0;
  *(v2 + 122) = 0;
  *(v2 + 128) = -1044381696;
  *(v2 + 132) = 1;
  *(v2 + 136) = -1044381696;
  *(v2 + 140) = 1;
  *(v2 + 144) = 0;
  *(v2 + 148) = 1;
  *(v2 + 152) = -1056964608;
  *(v2 + 156) = 1;
  *(v2 + 160) = -1033371648;
  *(v2 + 164) = 1;
  *(v2 + 168) = 0;
  *(v2 + 172) = 1;
  *(v2 + 176) = -1033371648;
  *(v2 + 180) = 1;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = -1044381696;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0;
  *(v2 + 204) = 1;
  *(v2 + 208) = -1033371648;
  *(v2 + 212) = 1;
  *(v2 + 216) = 0;
  *(v2 + 220) = 1;
  *(v2 + 224) = -1033371648;
  *(v2 + 228) = 1;
  *(v2 + 232) = -1055916032;
  *(v2 + 236) = 1;
  *(v2 + 240) = -1033371648;
  *(v2 + 244) = 1;
  *(v2 + 248) = 0;
  *(v2 + 252) = 1;
  *(v2 + 256) = -1055916032;
  *(v2 + 260) = 1;
  *(v2 + 264) = -1033371648;
  *(v2 + 268) = 1;
  *(v2 + 272) = -1055916032;
  *(v2 + 276) = 1;
  *(v2 + 280) = -1033371648;
  *(v2 + 284) = 1;
  *(v2 + 288) = 0;
  *(v2 + 292) = 1;
  *(v2 + 296) = -1055916032;
  *(v2 + 300) = 1;
  *(v2 + 304) = -1043333120;
  *(v2 + 308) = 1;
  *(v2 + 312) = 0x40000000;
  *(v2 + 316) = 1;
  *(v2 + 320) = 16777472;
  *(v2 + 324) = 0;
  *(v2 + 328) = 1;
  *(v2 + 332) = 0;
  *(v2 + 336) = 1;
  *(v2 + 340) = 1103626240;
  *(v2 + 344) = 1;
  *(v2 + 348) = 0;
  *(v2 + 352) = 1;
  *(v2 + 356) = 1094713344;
  *(v2 + 360) = 1;
  *(v2 + 364) = 1094713344;
  *(v2 + 368) = 1;
  *(v2 + 372) = 1094713344;
  *(v2 + 376) = 1;
  *(v2 + 380) = -1061158912;
  *(v2 + 384) = 1;
  *(v2 + 388) = 1107296256;
  *(v2 + 392) = 1;
  *(v2 + 396) = 1107296256;
  *(v2 + 400) = 1;
  *(v2 + 404) = 1092616192;
  *(v2 + 408) = 1;
  *(v2 + 412) = 0;
  *(v2 + 416) = 1;
  *(v2 + 420) = 0;
  *(v2 + 424) = 1;
  *(v2 + 428) = 16777472;
  *(v2 + 432) = 0;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0;
  *(v2 + 552) = 0;
  *(v2 + 560) = 0;
  *(v2 + 632) = 0;
  *(v2 + 640) = 0;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0;
  *(v2 + 692) = 0;
  *(v2 + 696) = 0;
  *(v2 + 700) = 0;
  *(v2 + 704) = 0;
  *(v2 + 708) = 0;
  *(v2 + 712) = 0;
  *(v2 + 716) = 0;
  *(v2 + 720) = 0;
  *(v2 + 724) = 0;
  *(v2 + 728) = 0;
  *(v2 + 732) = 0;
  *(v2 + 736) = 0;
  *(v2 + 740) = 0;
  *(v2 + 744) = 0;
  *(v2 + 748) = 0;
  *(v2 + 752) = 0;
  *(v2 + 756) = 0;
  *(v2 + 760) = 0;
  *(v2 + 764) = 0;
  *(v2 + 768) = 0;
  *(v2 + 772) = 0;
  *(v2 + 776) = 0;
  *(v2 + 780) = 0;
  *(v2 + 784) = 0;
  *(v2 + 788) = 0;
  *(v2 + 792) = 0;
  *(v2 + 796) = 0;
  *(v2 + 800) = 0;
  *(v2 + 804) = 0;
  *(v2 + 808) = 0;
  *(v2 + 812) = 0;
  *(v2 + 816) = 1;
  *(v2 + 820) = 0;
  *(v2 + 824) = 0;
  *(v2 + 828) = 0;
  *(v2 + 832) = 0;
  *(v2 + 836) = 0;
  *(v2 + 840) = 0;
  *(v2 + 844) = 0;
  *(v2 + 848) = 0;
  *(v2 + 852) = 0;
  *(v2 + 856) = 0;
  *(v2 + 860) = 0;
  *(v2 + 864) = 0;
  *(v2 + 868) = 0;
  *(v2 + 872) = 0;
  *(v2 + 876) = 0;
  *(v2 + 880) = 0;
  *(v2 + 884) = 0;
  *(v2 + 888) = 0;
  *(v2 + 892) = 0;
  *(v2 + 896) = 0;
  *(v2 + 900) = 0;
  *(v2 + 904) = 0;
  *(v2 + 908) = 0;
  *(v2 + 912) = 0;
  *(v2 + 916) = 0;
  *(v2 + 920) = 0;
  *(v2 + 924) = 0;
  *(v2 + 928) = 0;
  *(v2 + 932) = 0;
  *(v2 + 936) = 0;
  *(v2 + 940) = 0;
  *(v2 + 944) = 0;
  *(v2 + 948) = 0;
  *(v2 + 952) = 0;
  *(v2 + 976) = 0;
  *(v2 + 984) = 0;
  *(v2 + 1008) = 0;
  *(v2 + 1016) = 0;
  *(v2 + 1040) = 0;
  *(v2 + 1048) = 0;
  *(v2 + 1072) = 0;
  *(v2 + 1080) = 256;
  *(v2 + 1084) = 0;
  *(v2 + 1088) = 0;
  *(v2 + 1092) = 0;
  *(v2 + 1096) = 0;
  *(v2 + 1100) = 0;
  *(v2 + 1104) = 0;
  *(v2 + 1112) = 0;
  if ((*(v2 + 4) & 1) == 0)
  {
    *(v2 + 4) = 1;
  }

  *v2 = 1953460273;
  if ((*(v2 + 12) & 1) == 0)
  {
    *(v2 + 12) = 1;
  }

  *(v2 + 8) = 1;
  if ((*(v2 + 20) & 1) == 0)
  {
    *(v2 + 20) = 1;
  }

  *(v2 + 16) = 2;
  LODWORD(v25[0]) = 1;
  sub_1F8148((v2 + 24), v25, v25 + 4, 1uLL);
  v25[0] = 0x200000001;
  sub_1F8148((v2 + 48), v25, &v25[1], 2uLL);
  *(v2 + 72) = 16777472;
  *(v2 + 78) = 257;
  *(v2 + 84) = 257;
  *(v2 + 88) = 16843009;
  *(v2 + 304) = -1047527424;
  *(v2 + 308) = 1;
  *(v2 + 340) = 1103101952;
  *(v2 + 344) = 1;
  *(v2 + 364) = 0;
  *(v2 + 368) = 1;
  *(v2 + 372) = 0;
  *(v2 + 376) = 1;
  *(v2 + 356) = 0;
  *(v2 + 360) = 1;
  *(v2 + 420) = 0;
  *(v2 + 424) = 1;
  *(v2 + 380) = -1040187392;
  *(v2 + 384) = 1;
  *(v2 + 430) = 257;
  *(v2 + 312) = 0;
  *(v2 + 316) = 1;
  *(v2 + 428) = 257;
  if ((*(v2 + 692) & 1) == 0)
  {
    *(v2 + 692) = 1;
  }

  *(v2 + 688) = 1836282987;
  if ((*(v2 + 700) & 1) == 0)
  {
    *(v2 + 700) = 1;
  }

  *(v2 + 696) = 2;
  if ((*(v2 + 708) & 1) == 0)
  {
    *(v2 + 708) = 1;
  }

  *(v2 + 704) = 4;
  if ((*(v2 + 716) & 1) == 0)
  {
    *(v2 + 716) = 1;
  }

  *(v2 + 712) = 0;
  *(v2 + 728) = 13;
  *(v2 + 732) = 1;
  *(v2 + 736) = 13;
  *(v2 + 740) = 1;
  *(v2 + 744) = 13;
  *(v2 + 748) = 1;
  *(v2 + 760) = 3;
  *(v2 + 764) = 1;
  *(v2 + 816) = 0;
  *(v2 + 828) = 18;
  *(v2 + 832) = 1;
  *(v2 + 836) = 3;
  *(v2 + 840) = 1;
  *(v2 + 844) = 12;
  *(v2 + 848) = 1;
  *(v2 + 852) = 18;
  *(v2 + 856) = 1;
  *(v2 + 860) = 256;
  *(v2 + 904) = 18;
  *(v2 + 908) = 1;
  *(v2 + 912) = 18;
  *(v2 + 916) = 1;
  *(v2 + 920) = 10;
  *(v2 + 924) = 1;
  *(v2 + 928) = 5;
  *(v2 + 932) = 1;
  *(v2 + 936) = 1;
  *(v2 + 940) = 1;
  sub_1F826C((v2 + 984), "_top_mic_general");
  sub_1F826C((v2 + 1016), "_top_mic_measurement");
  sub_1F826C((v2 + 1048), "_top_mic_hearing_accessibility");
  *(v2 + 120) = 257;
  sub_53E8(v5, "");
  sub_30F188(v21);
  sub_53E8(&v20, off_6E4C30);
  sub_53E8(&v19, "AU");
  sub_53E8(&v18, "VAD");
  sub_1E15A0(v25, v5, v21, &v20, &v19, &v18);
  sub_1E1830(v2 + 432, v25);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v17 = 1;
  sub_53E8(v5, "speaker_general");
  v8 = 0;
  v7 = 0;
  v9 = 0;
  sub_53E8(v10, "speaker_general");
  sub_53E8(v11, "speaker_general");
  v13 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 1684434036;
  v23 = 1936749683;
  v24 = 0;
  v4 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1E13D0(v16, &v23, v25, 1uLL);
}

void sub_404B1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_406E1C(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "BeamIndex");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_406EBC(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_406FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_406FCC(uint64_t a1)
{
  sub_407004(a1);

  operator delete();
}

uint64_t sub_407004(uint64_t a1)
{
  *a1 = off_6D2030;
  sub_407078(*(a1 + 56));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_7624C(*(a1 + 72));
  sub_7624C(*(a1 + 40));
  sub_7624C(*(a1 + 16));
  return a1;
}

uint64_t sub_407078(uint64_t result)
{
  if (!result)
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "SubPortPolicy.cpp";
        v6 = 1024;
        v7 = 285;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  return result;
}

void sub_407194(uint64_t a1, unsigned int a2, int a3)
{
  v16 = a3;
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 8 && *(v6 + 32) <= a2)
  {
    sub_9EF84(v6 + 40, &v16);
  }

  else
  {
LABEL_9:
    v10 = a3;
    sub_1E54B0(v11, &v10, 1);
    v13 = a2;
    *__p = *v11;
    v15 = v12;
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    sub_407294(a1, a2);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }
}

void sub_40726C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_407294(uint64_t result, unsigned int a2)
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

void sub_40736C(uint64_t a1, unsigned int a2, int a3)
{
  v17 = a3;
  v4 = *(a1 + 32);
  v5 = (a1 + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = a1 + 32;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != a1 + 32 && *(v6 + 32) <= a2)
  {
    sub_AFD28(v6 + 40, &v17);
  }

  else
  {
LABEL_9:
    v14 = a3;
    __p[1] = 0;
    v16 = 0;
    __p[0] = 0;
    sub_4625C(__p, &v14, __p, 1uLL);
    v13 = __p[0];
    __p[1] = 0;
    v16 = 0;
    __p[0] = 0;
    v10 = *v5;
    if (!*v5)
    {
LABEL_15:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = *(v10 + 32);
        if (v12 <= a2)
        {
          break;
        }

        v10 = *v11;
        if (!*v11)
        {
          goto LABEL_15;
        }
      }

      if (v12 >= a2)
      {
        break;
      }

      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    if (v13)
    {
      operator delete(v13);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }
}

void sub_4074CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (a9)
  {
    operator delete(a9);
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_4074F4(void *a1, uint64_t inObjectID, uint64_t a3)
{
  v4 = inObjectID;
  v5 = a1;
  a1[1] = 0;
  v6 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  *&inAddress.mSelector = 0x696E707473736323;
  inAddress.mElement = 0;
  if (AudioObjectHasProperty(inObjectID, &inAddress))
  {
    outDataSize = 0;
    PropertyDataSize = AudioObjectGetPropertyDataSize(v4, &inAddress, 0, 0, &outDataSize);
    v8 = PropertyDataSize;
    if (PropertyDataSize)
    {
      v9 = sub_5544(18);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&v73, v8);
        v11 = v75 >= 0 ? &v73 : v73;
        *buf = 136315906;
        *v79 = "SubPortPolicy.cpp";
        *&v79[8] = 1024;
        *&v79[10] = 259;
        *&v79[14] = 2080;
        *&v79[16] = v11;
        *&v79[24] = 1024;
        *&v79[26] = v4;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioObjectGetPropertyDataSize(kAudioDevicePropertyDataSources) returned error %s for device %u.", buf, 0x22u);
        if (SHIBYTE(v75) < 0)
        {
          operator delete(v73);
        }
      }
    }

    else if (outDataSize)
    {
      __chkstk_darwin(PropertyDataSize);
      v68 = &v63 - ((v12 + 15) & 0x1FFFFFFF0);
      PropertyData = AudioObjectGetPropertyData(v4, &inAddress, 0, 0, &outDataSize, v68);
      v63 = &v63;
      if (PropertyData)
      {
        v15 = sub_5544(18);
        v16 = *v15;
        if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&v73, PropertyData);
          v17 = v75 >= 0 ? &v73 : v73;
          *buf = 136315906;
          *v79 = "SubPortPolicy.cpp";
          *&v79[8] = 1024;
          *&v79[10] = 245;
          *&v79[14] = 2080;
          *&v79[16] = v17;
          *&v79[24] = 1024;
          *&v79[26] = v4;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectGetPropertyData(kAudioDevicePropertyDataSources) returned error %s for device %u.", buf, 0x22u);
          if (SHIBYTE(v75) < 0)
          {
            operator delete(v73);
          }
        }
      }

      else if (outDataSize >= 4)
      {
        v32 = 0;
        v67 = outDataSize >> 2;
        v66 = (a3 + 32);
        *&v14 = 136315906;
        v65 = v14;
        v64 = v6;
        do
        {
          v33 = *&v68[4 * v32];
          if (v33)
          {
            v34 = sub_5544(18);
            v35 = v66;
            if (*(v34 + 8))
            {
              v36 = *v34;
              if (*v34)
              {
                if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
                {
                  sub_22170(&v73, v33);
                  v37 = &v73;
                  if (v75 < 0)
                  {
                    v37 = v73;
                  }

                  *buf = v65;
                  *v79 = "SubPortPolicy.cpp";
                  *&v79[8] = 1024;
                  *&v79[10] = 220;
                  *&v79[14] = 2080;
                  *&v79[16] = v37;
                  *&v79[24] = 1024;
                  *&v79[26] = v4;
                  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found input data source %s on device with ID %u.", buf, 0x22u);
                  if (SHIBYTE(v75) < 0)
                  {
                    operator delete(v73);
                  }
                }
              }
            }

            v38 = *v35;
            if (!*v35)
            {
              goto LABEL_57;
            }

            v39 = v35;
            do
            {
              v40 = *(v38 + 32);
              v23 = v40 >= v33;
              v41 = v40 < v33;
              if (v23)
              {
                v39 = v38;
              }

              v38 = *(v38 + 8 * v41);
            }

            while (v38);
            if (v39 != v35 && v33 >= *(v39 + 8))
            {
              for (i = v39[5]; i != v39[6]; ++i)
              {
                v46 = *i;
                v76 = v33;
                if (!v46)
                {
                  v60 = sub_5544(14);
                  v61 = *v60;
                  if (*v60 && os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *v79 = "SubPortPolicy.cpp";
                    *&v79[8] = 1024;
                    *&v79[10] = 68;
                    _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "Precondition failure.");
                }

                v47 = sub_5544(18);
                if (*(v47 + 8))
                {
                  v48 = *v47;
                  if (*v47)
                  {
                    if (os_log_type_enabled(*v47, OS_LOG_TYPE_DEBUG))
                    {
                      sub_22170(&v73, v33);
                      v49 = v5;
                      v50 = v4;
                      v51 = SHIBYTE(v75);
                      v52 = v73;
                      sub_22170(v71, v46);
                      v53 = &v73;
                      if (v51 < 0)
                      {
                        v53 = v52;
                      }

                      v54 = v71;
                      if (v72 < 0)
                      {
                        v54 = v71[0];
                      }

                      *buf = v65;
                      *v79 = "SubPortPolicy.cpp";
                      *&v79[8] = 1024;
                      *&v79[10] = 71;
                      *&v79[14] = 2080;
                      *&v79[16] = v53;
                      *&v79[24] = 2080;
                      *&v79[26] = v54;
                      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding sub-port ID for data source %s for port type %s", buf, 0x26u);
                      if (v72 < 0)
                      {
                        operator delete(v71[0]);
                      }

                      v4 = v50;
                      v5 = v49;
                      if (SHIBYTE(v75) < 0)
                      {
                        operator delete(v73);
                      }

                      v6 = v64;
                    }
                  }
                }

                v55 = *v6;
                if (!*v6)
                {
                  goto LABEL_89;
                }

                v56 = v6;
                do
                {
                  v57 = *(v55 + 32);
                  v23 = v57 >= v46;
                  v58 = v57 < v46;
                  if (v23)
                  {
                    v56 = v55;
                  }

                  v55 = *(v55 + 8 * v58);
                }

                while (v55);
                if (v56 != v6 && *(v56 + 8) <= v46)
                {
                  sub_9EF84((v56 + 5), &v76);
                }

                else
                {
LABEL_89:
                  v73 = 0;
                  v74 = 0;
                  v75 = 0;
                  sub_9EF84(&v73, &v76);
                  *buf = v46;
                  memset(&v79[4], 0, 24);
                  v59 = v73;
                  sub_46980(&v79[4], v73, v74, (v74 - v73) >> 2);
                  sub_407294(v5, *buf);
                  if (*&v79[4])
                  {
                    operator delete(*&v79[4]);
                  }

                  if (v59)
                  {
                    operator delete(v59);
                  }
                }
              }
            }

            else
            {
LABEL_57:
              v42 = sub_5544(18);
              if (*(v42 + 8))
              {
                v43 = *v42;
                if (*v42)
                {
                  if (os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
                  {
                    sub_22170(&v73, v33);
                    v44 = &v73;
                    if (v75 < 0)
                    {
                      v44 = v73;
                    }

                    *buf = v65;
                    *v79 = "SubPortPolicy.cpp";
                    *&v79[8] = 1024;
                    *&v79[10] = 236;
                    *&v79[14] = 2080;
                    *&v79[16] = v44;
                    *&v79[24] = 1024;
                    *&v79[26] = v4;
                    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unknown input data source %s on device with ID %u.", buf, 0x22u);
                    if (SHIBYTE(v75) < 0)
                    {
                      operator delete(v73);
                    }
                  }
                }
              }
            }
          }

          ++v32;
        }

        while (v32 != v67);
      }
    }

    else
    {
      v18 = sub_5544(18);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *v79 = "SubPortPolicy.cpp";
        *&v79[8] = 1024;
        *&v79[10] = 252;
        *&v79[14] = 1024;
        *&v79[16] = v4;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d AudioObjectGetPropertyData(kAudioDevicePropertyDataSources) return no input data sources for device %u.", buf, 0x18u);
      }
    }
  }

  v20 = *v6;
  if (*v6)
  {
    v21 = v6;
    do
    {
      v22 = *(v20 + 32);
      v23 = v22 >= 0x706D6269;
      v24 = v22 < 0x706D6269;
      if (v23)
      {
        v21 = v20;
      }

      v20 = *(v20 + 8 * v24);
    }

    while (v20);
    if (v21 != v6 && *(v21 + 8) < 0x706D626Au)
    {
      v25 = v21[5];
      v26 = v21[6];
      v27 = sub_46AC8C();
      v28 = 126 - 2 * __clz((v26 - v25) >> 2);
      v77[0] = off_6B88D8;
      v77[1] = v27;
      v77[3] = v77;
      *&v79[20] = buf;
      if (v26 == v25)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      sub_1F6A04(v77, buf);
      sub_1C5980(v25, v26, buf, v29, 1);
      sub_407F04(buf);
      sub_407F04(v77);
    }
  }

  if (!*(v5 + 16))
  {
    v30 = sub_5544(18);
    v31 = *v30;
    if (*v30)
    {
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *v79 = "SubPortPolicy.cpp";
        *&v79[8] = 1024;
        *&v79[10] = 270;
        *&v79[14] = 1024;
        *&v79[16] = v4;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device %u supports no data sources, and thus has no sub-ports.", buf, 0x18u);
      }
    }
  }
}