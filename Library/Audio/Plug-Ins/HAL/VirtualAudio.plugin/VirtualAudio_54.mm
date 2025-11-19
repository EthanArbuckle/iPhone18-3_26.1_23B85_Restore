void sub_4C93C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, char a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

uint64_t sub_4C9790(const __CFDictionary *a1)
{
  v1 = sub_379E24(a1, "mic_filter_id");
  if (v1)
  {
    LOWORD(v1) = sub_339B4C(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

const __CFNumber *sub_4C97CC(const __CFDictionary *a1)
{
  result = sub_11E34(a1, "mic_resonant_frequency");
  if (result)
  {
    v2 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      switch(CFNumberGetType(v2))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v2, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(v2, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(v2, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v2, kCFNumberCharType, &valuePtr);
LABEL_24:
          v11 = Value != 0;
          LOBYTE(v12) = LOBYTE(valuePtr);
          v4 = SLOBYTE(valuePtr) >> 7;
          if (!Value)
          {
            LOBYTE(v12) = 0;
          }

          return ((v11 << 16) | (v4 << 8) | v12);
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(v2, kCFNumberShortType, &valuePtr);
          goto LABEL_28;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
          goto LABEL_28;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberLongType, &valuePtr);
          goto LABEL_28;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberLongLongType, &valuePtr);
          goto LABEL_28;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(v2, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v10 = *&valuePtr;
          goto LABEL_29;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_28;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberNSIntegerType, &valuePtr);
LABEL_28:
          v10 = LOWORD(valuePtr);
          goto LABEL_29;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v2, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v10 = valuePtr;
LABEL_29:
          v12 = v10 | 0x10000;
          if (!v9)
          {
            v12 = 0;
          }

          v4 = v12 >> 8;
          v11 = HIWORD(v12);
          break;
        default:
          v11 = 0;
          LOBYTE(v12) = 0;
          break;
      }

      return ((v11 << 16) | (v4 << 8) | v12);
    }

    else
    {
      v6 = CFBooleanGetTypeID();
      if (v6 == CFGetTypeID(v2))
      {
        v7 = CFBooleanGetValue(v2);
        v8 = 0x10000;
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      return (v8 | v7);
    }
  }

  return result;
}

void sub_4C9A60(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4C9B00;
  v2[3] = &unk_6DC438;
  v2[4] = *(a1 + 32);
  v1 = objc_retainBlock(v2);
  sub_28700C(v1);
}

void sub_4C9B00(uint64_t a1)
{
  v1 = kIOMainPortDefault;
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v2)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      *&buf[18] = 2080;
      *&buf[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v3 = CFStringCreateWithBytes(0, "speaker-trim-gains-1", 20, 0x8000100u, 0);
  *buf = v3;
  if (!v3)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, v3, kCFAllocatorDefault, 0);
  cf = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_75;
  }

  v5 = CFGetTypeID(CFProperty);
  if (v5 != CFDataGetTypeID())
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "Could not construct");
  }

  if (!cf)
  {
LABEL_75:
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
  }

  sub_28DF08(&v83, cf);
  CFRelease(cf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v2);
  if (v83 == v84)
  {
    v72 = 0;
    goto LABEL_85;
  }

  sub_3EC380(&v72, v83, v84);
  v6 = sub_5544(18);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = CFCopyDescription(v72);
        *v85 = v8;
        sub_1267C(&cf, v8);
        if (v8)
        {
          CFRelease(v8);
        }

        p_cf = &cf;
        if (SHIBYTE(v78) < 0)
        {
          p_cf = cf;
        }

        *buf = 136316162;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 319;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        *&buf[28] = 2080;
        *&buf[30] = "speaker-trim-gains-1";
        v93 = 2080;
        v94 = p_cf;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(cf);
        }
      }
    }
  }

  if ((atomic_load_explicit(&qword_6FC5E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC5E8))
  {
    word_6FC5E0 = sub_286A28();
    __cxa_guard_release(&qword_6FC5E8);
  }

  if (word_6FC5E0 == 1 && HIBYTE(word_6FC5E0) == 1)
  {
    if (v72)
    {
      v10 = sub_5544(18);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 330;
        *&buf[18] = 2080;
        *&buf[20] = "speaker-trim-gains-1";
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
      }

      theArray = v72;
      if (v72)
      {
        Count = CFArrayGetCount(v72);
        v64 = v72;
        v62 = v72 ? CFArrayGetCount(v72) : 0;
        if (Count)
        {
          for (i = 0; i != Count; ++i)
          {
            if (theArray == v64 && i == v62)
            {
              break;
            }

            sub_233E00(&v82, theArray, i);
            v15 = v1;
            v16 = sub_5544(18);
            v17 = *v16;
            if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 333;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
            }

            sub_36CAF8(buf, v82);
            sub_36CAF8(&cf, v82);
            v77 = (v79 - v78) >> 3;
            while (1)
            {
              if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
              {
                v18 = cf;
                goto LABEL_48;
              }

              v18 = cf;
              if (!cf || v77 == (v79 - v78) >> 3)
              {
                break;
              }

LABEL_48:
              if (*buf == v18 && *&buf[8] == v77)
              {
                break;
              }

              sub_36CB7C(__p, buf);
              v19 = sub_5544(18);
              v20 = *v19;
              if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
              {
                v21 = __p;
                if (v74 < 0)
                {
                  v21 = __p[0];
                }

                *v85 = 136315906;
                *&v85[4] = "FDRDataImpl.cpp";
                v86 = 1024;
                v87 = 336;
                v88 = 2080;
                v89 = v21;
                v90 = 2112;
                v91 = v75;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v85, 0x26u);
              }

              if (v75)
              {
                CFRelease(v75);
              }

              if (v74 < 0)
              {
                operator delete(__p[0]);
              }

              ++*&buf[8];
            }

            if (v80)
            {
              v81 = v80;
              operator delete(v80);
            }

            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            if (v94)
            {
              v95 = v94;
              operator delete(v94);
            }

            if (*&buf[16])
            {
              *&buf[24] = *&buf[16];
              operator delete(*&buf[16]);
            }

            v22 = sub_5544(18);
            v23 = *v22;
            if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 338;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
            }

            if (v82)
            {
              CFRelease(v82);
            }

            v1 = v15;
          }
        }
      }
    }

    else
    {
      v12 = sub_5544(18);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 326;
        *&buf[18] = 2080;
        *&buf[20] = "speaker-trim-gains-1";
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
      }
    }
  }

LABEL_85:
  if (v83)
  {
    operator delete(v83);
  }

  v30 = IORegistryEntryFromPath(v1, "IODeviceTree:/product/audio");
  if (!v30)
  {
    v53 = sub_5544(14);
    v54 = *v53;
    if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      *&buf[18] = 2080;
      *&buf[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    v55 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v55, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v31 = CFStringCreateWithBytes(0, "speaker-trim-gains-0", 20, 0x8000100u, 0);
  *buf = v31;
  if (!v31)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v56, "Could not construct");
  }

  v32 = IORegistryEntryCreateCFProperty(v30, v31, kCFAllocatorDefault, 0);
  cf = v32;
  if (!v32)
  {
    goto LABEL_161;
  }

  v33 = CFGetTypeID(v32);
  if (v33 != CFDataGetTypeID())
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v57, "Could not construct");
  }

  if (!cf)
  {
LABEL_161:
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "Could not construct");
  }

  sub_28DF08(&v83, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v30);
  if (v83 == v84)
  {
    v71 = 0;
    goto LABEL_171;
  }

  sub_3EC380(&v71, v83, v84);
  v34 = sub_5544(18);
  if (*(v34 + 8))
  {
    v35 = *v34;
    if (*v34)
    {
      if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
      {
        v36 = CFCopyDescription(v71);
        *v85 = v36;
        sub_1267C(&cf, v36);
        if (v36)
        {
          CFRelease(v36);
        }

        v37 = &cf;
        if (SHIBYTE(v78) < 0)
        {
          v37 = cf;
        }

        *buf = 136316162;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 319;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        *&buf[28] = 2080;
        *&buf[30] = "speaker-trim-gains-0";
        v93 = 2080;
        v94 = v37;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(cf);
        }
      }
    }
  }

  if ((atomic_load_explicit(&qword_6FC5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC5F8))
  {
    word_6FC5F0 = sub_286A28();
    __cxa_guard_release(&qword_6FC5F8);
  }

  if (word_6FC5F0 == 1 && HIBYTE(word_6FC5F0) == 1)
  {
    if (v71)
    {
      v38 = sub_5544(18);
      v39 = *v38;
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 330;
        *&buf[18] = 2080;
        *&buf[20] = "speaker-trim-gains-0";
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
      }

      v40 = v71;
      if (v71)
      {
        theArraya = CFArrayGetCount(v71);
        v66 = v71;
        v63 = v71 ? CFArrayGetCount(v71) : 0;
        if (theArraya)
        {
          for (j = 0; j != theArraya; ++j)
          {
            if (v40 == v66 && j == v63)
            {
              break;
            }

            sub_233E00(&v82, v40, j);
            v44 = sub_5544(18);
            v45 = *v44;
            if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 333;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
            }

            sub_36CAF8(buf, v82);
            sub_36CAF8(&cf, v82);
            v77 = (v79 - v78) >> 3;
            while (1)
            {
              if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
              {
                v46 = cf;
                goto LABEL_134;
              }

              v46 = cf;
              if (!cf || v77 == (v79 - v78) >> 3)
              {
                break;
              }

LABEL_134:
              if (*buf == v46 && *&buf[8] == v77)
              {
                break;
              }

              sub_36CB7C(__p, buf);
              v47 = sub_5544(18);
              v48 = *v47;
              if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_DEFAULT))
              {
                v49 = __p;
                if (v74 < 0)
                {
                  v49 = __p[0];
                }

                *v85 = 136315906;
                *&v85[4] = "FDRDataImpl.cpp";
                v86 = 1024;
                v87 = 336;
                v88 = 2080;
                v89 = v49;
                v90 = 2112;
                v91 = v75;
                _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v85, 0x26u);
              }

              if (v75)
              {
                CFRelease(v75);
              }

              if (v74 < 0)
              {
                operator delete(__p[0]);
              }

              ++*&buf[8];
            }

            if (v80)
            {
              v81 = v80;
              operator delete(v80);
            }

            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            if (v94)
            {
              v95 = v94;
              operator delete(v94);
            }

            if (*&buf[16])
            {
              *&buf[24] = *&buf[16];
              operator delete(*&buf[16]);
            }

            v50 = sub_5544(18);
            v51 = *v50;
            if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 338;
              _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
            }

            if (v82)
            {
              CFRelease(v82);
            }
          }
        }
      }
    }

    else
    {
      v41 = sub_5544(18);
      v42 = *v41;
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 326;
        *&buf[18] = 2080;
        *&buf[20] = "speaker-trim-gains-0";
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
      }
    }
  }

LABEL_171:
  if (v83)
  {
    operator delete(v83);
  }

  sub_3ECA0C(buf, &v72, &v71);
  if (v71)
  {
    CFRelease(v71);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  qword_709440 = *buf;
  v58 = *(a1 + 32);
  v59 = *v58;
  v60 = v58[1];
  if (*v58 != v60)
  {
    memset(v70, 0, sizeof(v70));
    sub_4C8778(buf, v59, v60, &qword_709440, v70);
    v61 = qword_709440;
    qword_709440 = *buf;
    *buf = v61;
    if (v61)
    {
      CFRelease(v61);
    }
  }
}

void sub_4CAF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_46228(va);
  JUMPOUT(0x4CAF78);
}

void sub_4CAF20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CAF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_347A64(&a27);
  sub_23EA78(&a31);
  sub_23EA78((v31 - 176));
  JUMPOUT(0x4CAF54);
}

void sub_4CAF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_347A64(&a27);
  sub_23EA78(&a31);
  sub_23EA78((v31 - 176));
  JUMPOUT(0x4CAFA8);
}

void sub_4CAFD4(id a1)
{
  sub_28700C(&stru_6DBCF0);
}

void sub_4CB038(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v1)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      *&buf[18] = 2080;
      *&buf[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v2 = CFStringCreateWithBytes(0, "filler-key-string-no-receiver-trim-gain-written", 47, 0x8000100u, 0);
  *buf = v2;
  if (!v2)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0);
  cf = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_70;
  }

  v4 = CFGetTypeID(CFProperty);
  if (v4 != CFDataGetTypeID())
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "Could not construct");
  }

  if (!cf)
  {
LABEL_70:
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
  }

  sub_28DF08(&v43, cf);
  CFRelease(cf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v1);
  if (v43 == v44)
  {
    v32 = 0;
    goto LABEL_80;
  }

  sub_3EC380(&v32, v43, v44);
  v5 = sub_5544(18);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = CFCopyDescription(v32);
        *v45 = v7;
        sub_1267C(&cf, v7);
        if (v7)
        {
          CFRelease(v7);
        }

        p_cf = &cf;
        if (SHIBYTE(v38) < 0)
        {
          p_cf = cf;
        }

        *buf = 136316162;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 319;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        *&buf[28] = 2080;
        *&buf[30] = "filler-key-string-no-receiver-trim-gain-written";
        v53 = 2080;
        v54 = p_cf;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(cf);
        }
      }
    }
  }

  if ((atomic_load_explicit(&qword_6FC5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC5D8))
  {
    word_6FC5D0 = sub_286A28();
    __cxa_guard_release(&qword_6FC5D8);
  }

  if (word_6FC5D0 == 1 && HIBYTE(word_6FC5D0) == 1)
  {
    v9 = v32;
    if (v32)
    {
      v10 = sub_5544(18);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 330;
        *&buf[18] = 2080;
        *&buf[20] = "filler-key-string-no-receiver-trim-gain-written";
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
      }

      Count = CFArrayGetCount(v9);
      v30 = CFArrayGetCount(v9);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          if (i == v30)
          {
            break;
          }

          sub_233E00(&v42, v9, i);
          v13 = v9;
          v14 = sub_5544(18);
          v15 = *v14;
          if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 333;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
          }

          sub_36CAF8(buf, v42);
          sub_36CAF8(&cf, v42);
          v37 = (v39 - v38) >> 3;
          while (1)
          {
            if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
            {
              v16 = cf;
              goto LABEL_40;
            }

            v16 = cf;
            if (!cf || v37 == (v39 - v38) >> 3)
            {
              break;
            }

LABEL_40:
            if (*buf == v16 && *&buf[8] == v37)
            {
              break;
            }

            sub_36CB7C(__p, buf);
            v17 = sub_5544(18);
            v18 = *v17;
            if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = __p;
              if (v34 < 0)
              {
                v19 = __p[0];
              }

              *v45 = 136315906;
              *&v45[4] = "FDRDataImpl.cpp";
              v46 = 1024;
              v47 = 336;
              v48 = 2080;
              v49 = v19;
              v50 = 2112;
              v51 = v35;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v45, 0x26u);
            }

            if (v35)
            {
              CFRelease(v35);
            }

            if (v34 < 0)
            {
              operator delete(__p[0]);
            }

            ++*&buf[8];
          }

          if (v40)
          {
            v41 = v40;
            operator delete(v40);
          }

          if (v38)
          {
            v39 = v38;
            operator delete(v38);
          }

          if (v54)
          {
            v55 = v54;
            operator delete(v54);
          }

          if (*&buf[16])
          {
            *&buf[24] = *&buf[16];
            operator delete(*&buf[16]);
          }

          v20 = sub_5544(18);
          v21 = *v20;
          if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 338;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          v9 = v13;
        }
      }
    }

    else
    {
      v22 = sub_5544(18);
      v23 = *v22;
      if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 326;
        *&buf[18] = 2080;
        *&buf[20] = "filler-key-string-no-receiver-trim-gain-written";
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
      }
    }
  }

LABEL_80:
  if (v43)
  {
    operator delete(v43);
  }

  qword_709458 = v32;
}

void sub_4CBA18(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CBA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_347A64(va);
  sub_23EA78(va1);
  sub_23EA78((v8 - 176));
  JUMPOUT(0x4CBA4CLL);
}

void sub_4CBA78(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4CBB18;
  v2[3] = &unk_6DBD10;
  v3 = *(a1 + 32);
  v1 = objc_retainBlock(v2);
  sub_28700C(v1);
}

void sub_4CBB18(uint64_t a1)
{
  if (sub_310658())
  {
    v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v2)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v3 = CFStringCreateWithBytes(0, "mic-trim-gains", 14, 0x8000100u, 0);
    *buf = v3;
    if (!v3)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    CFProperty = IORegistryEntryCreateCFProperty(v2, v3, kCFAllocatorDefault, 0);
    cf = CFProperty;
    if (!CFProperty)
    {
      goto LABEL_72;
    }

    v5 = CFGetTypeID(CFProperty);
    if (v5 != CFDataGetTypeID())
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Could not construct");
    }

    if (!cf)
    {
LABEL_72:
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not construct");
    }

    sub_28DF08(&v55, cf);
    CFRelease(cf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v2);
    if (v55 == v56)
    {
      v44 = 0;
      goto LABEL_82;
    }

    sub_3EC380(&v44, v55, v56);
    v6 = sub_5544(18);
    if (*(v6 + 8))
    {
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = CFCopyDescription(v44);
          *v57 = v8;
          sub_1267C(&cf, v8);
          if (v8)
          {
            CFRelease(v8);
          }

          p_cf = &cf;
          if (SHIBYTE(v50) < 0)
          {
            p_cf = cf;
          }

          *buf = 136316162;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = "IODeviceTree:/product/audio";
          *&buf[28] = 2080;
          *&buf[30] = "mic-trim-gains";
          v65 = 2080;
          v66 = p_cf;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
          if (SHIBYTE(v50) < 0)
          {
            operator delete(cf);
          }
        }
      }
    }

    if ((atomic_load_explicit(&qword_6FC668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC668))
    {
      word_6FC660 = sub_286A28();
      __cxa_guard_release(&qword_6FC668);
    }

    if (word_6FC660 == 1 && HIBYTE(word_6FC660) == 1)
    {
      v10 = v44;
      if (v44)
      {
        v11 = sub_5544(18);
        v12 = *v11;
        if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 330;
          *&buf[18] = 2080;
          *&buf[20] = "mic-trim-gains";
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
        }

        Count = CFArrayGetCount(v10);
        v40 = CFArrayGetCount(v10);
        if (Count)
        {
          for (i = 0; i != Count; ++i)
          {
            if (i == v40)
            {
              break;
            }

            sub_233E00(&v54, v10, i);
            v14 = a1;
            v15 = sub_5544(18);
            v16 = *v15;
            if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 333;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
            }

            sub_36CAF8(buf, v54);
            sub_36CAF8(&cf, v54);
            v49 = (v51 - v50) >> 3;
            while (1)
            {
              if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
              {
                v17 = cf;
                goto LABEL_41;
              }

              v17 = cf;
              if (!cf || v49 == (v51 - v50) >> 3)
              {
                break;
              }

LABEL_41:
              if (*buf == v17 && *&buf[8] == v49)
              {
                break;
              }

              sub_36CB7C(__p, buf);
              v18 = sub_5544(18);
              v19 = *v18;
              if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
              {
                v20 = __p;
                if (v46 < 0)
                {
                  v20 = __p[0];
                }

                *v57 = 136315906;
                *&v57[4] = "FDRDataImpl.cpp";
                v58 = 1024;
                v59 = 336;
                v60 = 2080;
                v61 = v20;
                v62 = 2112;
                v63 = v47;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v57, 0x26u);
              }

              if (v47)
              {
                CFRelease(v47);
              }

              if (v46 < 0)
              {
                operator delete(__p[0]);
              }

              ++*&buf[8];
            }

            if (v52)
            {
              v53 = v52;
              operator delete(v52);
            }

            if (v50)
            {
              v51 = v50;
              operator delete(v50);
            }

            if (v66)
            {
              v67 = v66;
              operator delete(v66);
            }

            if (*&buf[16])
            {
              *&buf[24] = *&buf[16];
              operator delete(*&buf[16]);
            }

            v21 = sub_5544(18);
            v22 = *v21;
            if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 338;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
            }

            if (v54)
            {
              CFRelease(v54);
            }

            a1 = v14;
          }
        }
      }

      else
      {
        v24 = sub_5544(18);
        v25 = *v24;
        if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 326;
          *&buf[18] = 2080;
          *&buf[20] = "mic-trim-gains";
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
        }
      }
    }

LABEL_82:
    if (v55)
    {
      operator delete(v55);
    }

    v23 = v44;
  }

  else
  {
    sub_3ECD88(buf);
    v23 = *buf;
  }

  qword_709470 = v23;
  v32 = *(a1 + 32);
  v33 = *v32;
  v34 = v32[1];
  if (*v32 != v34)
  {
    v35 = *(a1 + 40);
    v36 = *v35;
    v37 = v35[1];
    if (v36 == v37)
    {
      memset(v42, 0, sizeof(v42));
      sub_4C8778(buf, v33, v34, &qword_709470, v42);
      v39 = qword_709470;
      qword_709470 = *buf;
      *buf = v39;
      if (v39)
      {
        CFRelease(v39);
      }
    }

    else
    {
      memset(v43, 0, sizeof(v43));
      sub_326328(v43, v36, v37, (v37 - v36) >> 2);
      sub_4C8778(buf, *v32, v32[1], &qword_709470, v43);
      v38 = qword_709470;
      qword_709470 = *buf;
      *buf = v38;
      if (v38)
      {
        CFRelease(v38);
      }

      if (v43[0])
      {
        operator delete(v43[0]);
      }
    }
  }
}

void sub_4CC5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (!a21)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x4CC638);
}

void sub_4CC5E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CC5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_347A64(&a25);
  sub_23EA78(&a29);
  sub_23EA78((v29 - 176));
  JUMPOUT(0x4CC618);
}

void sub_4CC644(uint64_t *a1)
{
  if ((atomic_load_explicit(&qword_709490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709490))
  {
    __cxa_guard_release(&qword_709490);
  }

  if (qword_709498 != -1)
  {
    dispatch_once(&qword_709498, &stru_6DBD30);
  }

  v2 = qword_709488;
  if (qword_709488)
  {
    CFRetain(qword_709488);
  }

  *a1 = v2;
}

void sub_4CC6D8(id a1)
{
  sub_28700C(&stru_6DBD50);
}

void sub_4CC73C(id a1)
{
  if ((atomic_load_explicit(&qword_6E9B18, memory_order_acquire) & 1) == 0)
  {
    v25 = __cxa_guard_acquire(&qword_6E9B18);
    if (v25)
    {
      byte_6E9B10 = caulk::product::get_device_class(v25) == 3;
      __cxa_guard_release(&qword_6E9B18);
    }
  }

  if (byte_6E9B10 == 1)
  {
    v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v1)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v2 = CFStringCreateWithBytes(0, "speaker-thiele-small", 20, 0x8000100u, 0);
    *buf = v2;
    if (!v2)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    CFProperty = IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0);
    cf = CFProperty;
    if (!CFProperty)
    {
      goto LABEL_75;
    }

    v4 = CFGetTypeID(CFProperty);
    if (v4 != CFDataGetTypeID())
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Could not construct");
    }

    if (!cf)
    {
LABEL_75:
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not construct");
    }

    sub_28DF08(&v45, cf);
    CFRelease(cf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v1);
    if (v45 == v46)
    {
      v34 = 0;
      goto LABEL_85;
    }

    sub_3F5978(&v34, v45, v46);
    v5 = sub_5544(18);
    if (*(v5 + 8))
    {
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = CFCopyDescription(v34);
          *v47 = v7;
          sub_1267C(&cf, v7);
          if (v7)
          {
            CFRelease(v7);
          }

          p_cf = &cf;
          if (SHIBYTE(v40) < 0)
          {
            p_cf = cf;
          }

          *buf = 136316162;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = "IODeviceTree:/product/audio";
          *&buf[28] = 2080;
          *&buf[30] = "speaker-thiele-small";
          v55 = 2080;
          v56 = p_cf;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(cf);
          }
        }
      }
    }

    if ((atomic_load_explicit(&qword_6FC6A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC6A8))
    {
      word_6FC6A0 = sub_286A28();
      __cxa_guard_release(&qword_6FC6A8);
    }

    if (word_6FC6A0 == 1 && HIBYTE(word_6FC6A0) == 1)
    {
      v9 = v34;
      if (v34)
      {
        v10 = sub_5544(18);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 330;
          *&buf[18] = 2080;
          *&buf[20] = "speaker-thiele-small";
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
        }

        Count = CFArrayGetCount(v9);
        v32 = CFArrayGetCount(v9);
        if (Count)
        {
          for (i = 0; i != Count; ++i)
          {
            if (i == v32)
            {
              break;
            }

            sub_233E00(&v44, v9, i);
            v13 = v9;
            v14 = sub_5544(18);
            v15 = *v14;
            if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 333;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
            }

            sub_36CAF8(buf, v44);
            sub_36CAF8(&cf, v44);
            v39 = (v41 - v40) >> 3;
            while (1)
            {
              if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
              {
                v16 = cf;
                goto LABEL_42;
              }

              v16 = cf;
              if (!cf || v39 == (v41 - v40) >> 3)
              {
                break;
              }

LABEL_42:
              if (*buf == v16 && *&buf[8] == v39)
              {
                break;
              }

              sub_36CB7C(__p, buf);
              v17 = sub_5544(18);
              v18 = *v17;
              if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                v19 = __p;
                if (v36 < 0)
                {
                  v19 = __p[0];
                }

                *v47 = 136315906;
                *&v47[4] = "FDRDataImpl.cpp";
                v48 = 1024;
                v49 = 336;
                v50 = 2080;
                v51 = v19;
                v52 = 2112;
                v53 = v37;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v47, 0x26u);
              }

              if (v37)
              {
                CFRelease(v37);
              }

              if (v36 < 0)
              {
                operator delete(__p[0]);
              }

              ++*&buf[8];
            }

            if (v42)
            {
              v43 = v42;
              operator delete(v42);
            }

            if (v40)
            {
              v41 = v40;
              operator delete(v40);
            }

            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            if (*&buf[16])
            {
              *&buf[24] = *&buf[16];
              operator delete(*&buf[16]);
            }

            v20 = sub_5544(18);
            v21 = *v20;
            if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "FDRDataImpl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 338;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
            }

            if (v44)
            {
              CFRelease(v44);
            }

            v9 = v13;
          }
        }
      }

      else
      {
        v23 = sub_5544(18);
        v24 = *v23;
        if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 326;
          *&buf[18] = 2080;
          *&buf[20] = "speaker-thiele-small";
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
        }
      }
    }

LABEL_85:
    if (v45)
    {
      operator delete(v45);
    }

    v22 = v34;
  }

  else
  {
    sub_3F212C(buf);
    v22 = *buf;
  }

  qword_709488 = v22;
}

void sub_4CD190(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CD1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_347A64(va);
  sub_23EA78(va1);
  sub_23EA78((v8 - 176));
  JUMPOUT(0x4CD1C4);
}

void sub_4CD1F0(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_7094A8, memory_order_acquire) & 1) == 0)
  {
    v4 = a2;
    v5 = __cxa_guard_acquire(&qword_7094A8);
    a2 = v4;
    if (v5)
    {
      __cxa_guard_release(&qword_7094A8);
      a2 = v4;
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4CD2DC;
  block[3] = &unk_6DC438;
  block[4] = a2;
  if (qword_7094B0 != -1)
  {
    dispatch_once(&qword_7094B0, block);
  }

  v3 = qword_7094A0;
  if (qword_7094A0)
  {
    CFRetain(qword_7094A0);
  }

  *a1 = v3;
}

void sub_4CD2DC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4CD37C;
  v2[3] = &unk_6DC438;
  v2[4] = *(a1 + 32);
  v1 = objc_retainBlock(v2);
  sub_28700C(v1);
}

void sub_4CD37C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v2)
  {
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      v67 = 2080;
      *v68 = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v3 = CFStringCreateWithBytes(0, "speaker-eq-0", 12, 0x8000100u, 0);
  *buf = v3;
  if (!v3)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, v3, kCFAllocatorDefault, 0);
  *&valuePtr = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_67;
  }

  v5 = CFGetTypeID(CFProperty);
  if (v5 != CFDataGetTypeID())
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, "Could not construct");
  }

  if (!valuePtr)
  {
LABEL_67:
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
  }

  sub_28DF08(&v53, valuePtr);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v2);
  v6 = v53;
  sub_3F68B8(v46, v53, v54);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v7)
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      v67 = 2080;
      *v68 = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v8 = CFStringCreateWithBytes(0, "speaker-eq-1", 12, 0x8000100u, 0);
  *buf = v8;
  if (!v8)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Could not construct");
  }

  v9 = IORegistryEntryCreateCFProperty(v7, v8, kCFAllocatorDefault, 0);
  *&valuePtr = v9;
  if (!v9)
  {
    goto LABEL_68;
  }

  v10 = CFGetTypeID(v9);
  if (v10 != CFDataGetTypeID())
  {
    v42 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v42, "Could not construct");
  }

  if (!valuePtr)
  {
LABEL_68:
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
  }

  sub_28DF08(&v53, valuePtr);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v7);
  v11 = v53;
  sub_3F68B8(v45, v53, v54);
  if (v11)
  {
    operator delete(v11);
  }

  memset(v61, 0, sizeof(v61));
  v12 = (v1[1] - *v1) >> 2;
  v59 = 1;
  v60 = v12;
  v58 = 0;
  v53 = v61;
  v54 = &v59;
  v55 = &v60;
  v56 = v1;
  v57 = &v58;
  sub_3F7038(&v53, v46[0], v46[1]);
  sub_3F7038(&v53, v45[0], v45[1]);
  v52[0] = 0;
  v52[1] = 0;
  v51 = v52;
  if (v60)
  {
    for (i = 1; i <= v60; ++i)
    {
      sub_53E8(&v50, "ch");
      std::to_string(&v49, i);
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v49;
      }

      else
      {
        v14 = v49.__r_.__value_.__r.__words[0];
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v49.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v50, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v64 = v16->__r_.__value_.__r.__words[2];
      valuePtr = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      sub_88CE8(buf, "Mute");
      *&buf[8] = kCFBooleanFalse;
      sub_88CE8(&buf[16], "PhaseFlip");
      *&v68[4] = kCFBooleanFalse;
      v47[0] = buf;
      v47[1] = 2;
      v18 = sub_69CE8(v47);
      v48 = v18;
      if (!*sub_6F86C(&v51, &v62, &valuePtr))
      {
        operator new();
      }

      if (v18)
      {
        CFRelease(v18);
      }

      for (j = 0; j != -32; j -= 16)
      {
        v20 = *&v68[j + 4];
        if (v20)
        {
          CFRelease(v20);
        }

        v21 = *&buf[j + 16];
        if (v21)
        {
          CFRelease(v21);
        }
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(valuePtr);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_88CE8(buf, "Filters");
  *&buf[8] = sub_76110(v61);
  sub_88CE8(&buf[16], "QVersion");
  LODWORD(valuePtr) = 1;
  *&v68[4] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!*&v68[4])
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v43, "Could not construct");
  }

  v62 = sub_3F74F8(&v51);
  sub_88CE8(&valuePtr, "Channels");
  v22 = v62;
  if (v62)
  {
    CFRetain(v62);
  }

  *(&valuePtr + 1) = v22;
  sub_88CE8(&v64, "InputGain");
  LODWORD(v48) = 0;
  if (!CFNumberCreate(0, kCFNumberIntType, &v48))
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Could not construct");
  }

  v49.__r_.__value_.__r.__words[0] = &valuePtr;
  v49.__r_.__value_.__l.__size_ = 2;
  v23 = sub_69CE8(&v49);
  v47[0] = v23;
  sub_88CE8(&v69, "Global");
  CFRetain(v23);
  v70[0] = v23;
  v50.__r_.__value_.__r.__words[0] = buf;
  v50.__r_.__value_.__l.__size_ = 3;
  v24 = sub_69CE8(&v50);
  for (k = 0; k != -6; k -= 2)
  {
    v26 = v70[k];
    if (v26)
    {
      CFRelease(v26);
    }

    v27 = v70[k - 1];
    if (v27)
    {
      CFRelease(v27);
    }
  }

  CFRelease(v23);
  for (m = 0; m != -32; m -= 16)
  {
    v29 = *&buf[m - 8];
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = *(&valuePtr + m + 16);
    if (v30)
    {
      CFRelease(v30);
    }
  }

  if (v62)
  {
    CFRelease(v62);
  }

  sub_3F76E0(v52[0]);
  *buf = v61;
  sub_761AC(buf);
  *buf = v45;
  sub_3F6EA0(buf);
  *buf = v46;
  sub_3F6EA0(buf);
  qword_7094A0 = v24;
}

void sub_4CDCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  __cxa_free_exception(v41);
  if (a2 == 1)
  {
    v47 = __cxa_begin_catch(a1);
    v48 = sub_5544(18);
    v49 = *v48;
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
    {
      v50 = (*(*v47 + 16))(v47);
      *(v44 - 160) = 136316162;
      *(v43 + 4) = "EDTUtilsImpl.h";
      *(v44 - 148) = 1024;
      *(v43 + 14) = 73;
      *(v44 - 142) = 2080;
      *(v43 + 20) = v50;
      *(v44 - 132) = 2080;
      *(v43 + 30) = v42;
      *(v44 - 122) = 2080;
      *(v44 - 120) = "speaker-eq-1";
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d EDT Accessor error '%s' for path: %s ; key: %s did not return any data", (v44 - 160), 0x30u);
    }

    __cxa_end_catch();
    JUMPOUT(0x4CD53CLL);
  }

  *(v44 - 160) = &a12;
  sub_3F6EA0((v44 - 160));
  _Unwind_Resume(a1);
}

void sub_4CE2B0(uint64_t a1, unsigned int **a2, int a3)
{
  v3 = *(a1 + 904);
  if (!v3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "Device_Receiver_Aspen.cpp";
      v9 = 1024;
      v10 = 889;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No valid support policy present", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No valid support policy present");
  }

  sub_408A74(v3, a2, a3);
}

void sub_4CE3DC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 144);
  if (v4 == 1886545251)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = 0;
    if (sub_4CE4A8(a1, 3, &v6))
    {
      sub_2B4F3C(a3, &v6);
    }
  }

  else if (v4 == 1886613611)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = 0;
    if (sub_4CE4A8(a1, 4, &v5))
    {
      sub_2B4F3C(a3, &v5);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_4CE488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4CE4A8(uint64_t a1, int a2, uint64_t a3)
{
  v8 = 0x6F75747061747363;
  v9 = a2;
  v5 = (*(*a1 + 16))(a1, &v8);
  if (v5)
  {
    v7 = 4;
    (*(*a1 + 40))(a1, &v8, 0, 0, &v7, a3);
  }

  return v5;
}

void *sub_4CE564@<X0>(void *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 1886549104)
  {
    goto LABEL_14;
  }

  if (a2 != 1886216809)
  {
    v8 = result[113];
    if (v8)
    {

      return sub_40AC30(a3, v8, a2);
    }

LABEL_14:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v4 = *(result[114] + 32);
  if (!v4)
  {
    v10 = *sub_5544(14);
    if (v10)
    {
      v11 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "Device_Receiver_Aspen.cpp";
        v15 = 1024;
        v16 = 898;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mTransducerDatabase.mBuiltInMicDefaultSubPort is NULL]: No default sub-port specified for built-in mic.", &v13, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No default sub-port specified for built-in mic.");
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  if ((v6 - v5) >= 0x41 && v5 != v6)
  {
    v9 = v5;
    while (v9[8] != 1869442665)
    {
      v9 += 16;
      if (v9 == v6)
      {
        goto LABEL_9;
      }
    }

    v5 = v9;
  }

LABEL_9:
  v13 = *v5;
  return sub_1E54B0(a3, &v13, 1);
}

void sub_4CE750(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(18);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a2 + 16);
        sub_2B54B0(&__p, *(a2 + 8), a2);
        v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        v14 = "Device_Receiver_Aspen.cpp";
        v15 = 1024;
        v16 = 879;
        v17 = 2048;
        v18 = v6;
        v19 = 2080;
        v20 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d inPortList (%zu): %s.", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v8 = sub_346C5C(1886154613, a2);
  v9 = v8;
  if (v8)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_Receiver_Aspen.cpp";
        v15 = 1024;
        v16 = 882;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected lineout port", buf, 0x12u);
      }
    }
  }

  *(a1 + 896) = v9;
}

uint64_t sub_4CE908(uint64_t a1, signed int a2)
{
  if (a2 > 1886545250)
  {
    switch(a2)
    {
      case 1886545251:
        return 3;
      case 1886613611:
        return 4;
      case 1886680175:
        return 1;
      default:
        goto LABEL_13;
    }
  }

  else
  {
    if (a2 != 1885888867)
    {
      if (a2 != 1885892727)
      {
        if (a2 == 1886154613)
        {
          return 2;
        }

LABEL_13:
        v3 = sub_5544(18);
        v4 = *v3;
        if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, a2);
          v5 = v12 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v14 = "Device_Receiver_Aspen.cpp";
          v15 = 1024;
          v16 = 865;
          v17 = 2080;
          v18 = v5;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v6 = sub_5544(14);
        v7 = *v6;
        if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, a2);
          if (v12 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136315650;
          v14 = "Device_Receiver_Aspen.cpp";
          v15 = 1024;
          v16 = 866;
          v17 = 2080;
          v18 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType: %s.", buf, 0x1Cu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType: %s.");
      }

      return 1;
    }

    return 5;
  }
}

void sub_4CEB98(void *a1@<X8>)
{
  if (sub_310A30())
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_CE168();
    sub_53E8(__p, "AOP Audio-1");
    sub_CDEB8(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_4CEC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CEC24(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  v12[0] = 1;
  *&v12[1] = 0x6F7574706D757465;
  v12[3] = 1;
  if ((*(*a1 + 16))(a1, &v12[1]))
  {
    (*(*a1 + 48))(a1, &v12[1], 0, 0, 4, v12);
  }

  v12[3] = 2;
  if ((*(*a1 + 16))(a1, &v12[1]))
  {
    (*(*a1 + 48))(a1, &v12[1], 0, 0, 4, v12);
  }

  v12[3] = 3;
  if ((*(*a1 + 16))(a1, &v12[1]))
  {
    (*(*a1 + 48))(a1, &v12[1], 0, 0, 4, v12);
  }

  v12[3] = 4;
  if ((*(*a1 + 16))(a1, &v12[1]))
  {
    (*(*a1 + 48))(a1, &v12[1], 0, 0, 4, v12);
  }

  v10 = 4;
  v11 = 0.0;
  strcpy(&v12[1], "dlovptuo");
  BYTE1(v12[3]) = 0;
  HIWORD(v12[3]) = 0;
  if ((*(*a1 + 16))(a1, &v12[1]))
  {
    (*(*a1 + 40))(a1, &v12[1], 0, 0, &v10, &v11);
    v2 = v11;
    if (v11 != 0.0)
    {
      v11 = 0.0;
      (*(*a1 + 48))(a1, &v12[1], 0, 0, 4, &v11, v2);
    }
  }

  BYTE1(v12[3]) = 0;
  HIWORD(v12[3]) = 0;
  strcpy(v12, "Ms2icrscbolg");
  if ((*(*a1 + 16))(a1, &v12[1]))
  {
    (*(*a1 + 48))(a1, &v12[1], 0, 0, 4, v12);
  }

  *&inAddress.mSelector = 0x6F7574706A61636BLL;
  inAddress.mElement = 0;
  v3 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v3, &inAddress))
  {
    v4 = (*(*a1 + 120))(a1);
    v20 = sub_4D18CC(v4, 1);
    v21 = v5;
    v6 = *(a1 + 11);
    v18 = *(a1 + 10);
    v19 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v16.mSelector = 1869968496;
    v15.mSelector = 1;
    v14.mSelector = 0;
    v13.mSelector = 74;
    sub_4D1AAC();
  }

  v7 = (*(*a1 + 120))(a1);
  v20 = sub_4D18CC(v7, 3);
  v21 = v8;
  v9 = *(a1 + 11);
  v18 = *(a1 + 10);
  v19 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v16.mSelector = 1869968496;
  v15.mSelector = 3;
  v14.mSelector = 0;
  v13.mSelector = 74;
  sub_4D1AAC();
}

void sub_4D0C28(os_unfair_lock_s *a1)
{
  LODWORD(v18[0]) = 1885888867;
  memset(&v24, 0, sizeof(v24));
  sub_4625C(&v24, v18, v18 + 4, 1uLL);
  *buf = v24;
  strcpy(&buf[24], "cwdv");
  BYTE2(v26) = 0;
  LODWORD(v27) = 3;
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  v31 = 44739242;
  v33 = 0;
  v34 = 0;
  __p = 0;
  sub_161C7C(v22, a1, buf);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v29);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v23 >= 2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_23148(&v24, a1 + 2);
      v7 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "Device_Receiver_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1340;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Encountered more than one Hearing Aid Compliance port in device %s", buf, 0x1Cu);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Encountered more than one Hearing Aid Compliance port in device %s");
  }

  if (v23)
  {
    sub_25704(&v20, (v22[1] + 16), "", 1344);
    v2 = v20;
    v3 = (*(*v20 + 152))(v20);
    (*(*v2 + 512))(v2);
    if (v3 != (*(*v2 + 152))(v2))
    {
      LODWORD(v16) = 1886545251;
      memset(&v24, 0, sizeof(v24));
      sub_4625C(&v24, &v16, &v16 + 4, 1uLL);
      *buf = v24;
      strcpy(&buf[24], "cwdv");
      BYTE2(v26) = 0;
      LODWORD(v27) = 3;
      v29 = 0;
      v30 = 0;
      v28 = &v29;
      v31 = 44739242;
      v33 = 0;
      v34 = 0;
      __p = 0;
      sub_161C7C(v18, a1, buf);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v29);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (__val == 1)
      {
        sub_25704(buf, (v18[1] + 16), "", 1364);
        if (v3)
        {
          v4 = 0;
        }

        else
        {
          v4 = 1919443299;
        }

        (*(**buf + 104))(*buf, v4);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2B9E50(&v16);
      }

      v9 = sub_5544(14);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        std::to_string(&v24, __val);
        v11 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
        v12 = v24.__r_.__value_.__r.__words[0];
        sub_23148(&v16, a1 + 2);
        v13 = &v24;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if (v17 >= 0)
        {
          v14 = &v16;
        }

        else
        {
          v14 = v16;
        }

        *buf = 136315906;
        *&buf[4] = "Device_Receiver_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1358;
        *&buf[18] = 2080;
        *&buf[20] = v13;
        *&buf[28] = 2080;
        v26 = v14;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered %s receiver ports in device %s (expected 1)", buf, 0x26u);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v15, "Encountered %s receiver ports in device %s (expected 1)");
    }

    if (v21)
    {
      sub_1A8C0(v21);
    }
  }

  sub_65310(v22);
}

void sub_4D1270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_65310(&a17);
  if (a21)
  {
    sub_1A8C0(a21);
  }

  sub_65310(&a22);
  _Unwind_Resume(a1);
}

void sub_4D13D8(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "Device_Receiver_Aspen.cpp";
        v6 = 1024;
        v7 = 1329;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: SystemSettingsManager passed clientData as NULL.", &v4, 0x12u);
      }
    }
  }

  sub_4D0C28(a1);
}

uint64_t sub_4D14A8(uint64_t a1)
{
  *&inAddress.mSelector = 0x6F7574706A61636BLL;
  inAddress.mElement = 0;
  if ((atomic_load_explicit(&qword_709610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709610))
  {
    v2 = (*(*a1 + 120))(a1);
    byte_709608 = AudioObjectHasProperty(v2, &inAddress) != 0;
    __cxa_guard_release(&qword_709610);
  }

  return byte_709608;
}

uint64_t sub_4D1574(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638)
  {
    v2 = 0;
  }

  else
  {
    *&v7.mSelector = 0x696E70746A61636BLL;
    v7.mElement = 0;
    v3 = &unk_709000;
    if ((atomic_load_explicit(&qword_709620, memory_order_acquire) & 1) == 0)
    {
      v5 = __cxa_guard_acquire(&qword_709620);
      v3 = &unk_709000;
      if (v5)
      {
        v6 = (*(*a1 + 120))(a1);
        byte_709618 = AudioObjectHasProperty(v6, &v7) == 1;
        __cxa_guard_release(&qword_709620);
        v3 = &unk_709000;
      }
    }

    v2 = v3[1560];
  }

  return v2 & 1;
}

uint64_t sub_4D16AC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_709630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709630))
  {
    v3 = sub_4D14A8(a1) && (v2 = sub_4D1574(a1), v2) && caulk::product::get_device_class(v2) == 1;
    byte_709628 = v3;
    __cxa_guard_release(&qword_709630);
  }

  return byte_709628;
}

void sub_4D1858(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DBFF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_4D18CC(AudioObjectID a1, signed int a2)
{
  if (!a1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "Device_Receiver_Aspen.cpp";
      v13 = 1024;
      v14 = 93;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &inAddress, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  outData[0] = 0;
  outData[1] = 0;
  *&inAddress.mSelector = 0x6F75747076646223;
  inAddress.mElement = a2;
  ioDataSize = 16;
  if (AudioObjectHasProperty(a1, &inAddress))
  {
    AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData);
  }

  if (a2 > 2)
  {
    if (a2 == 4)
    {
      result = -58.0;
      v5 = *outData;
      goto LABEL_13;
    }

    v5 = *outData;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    v5 = *outData;
LABEL_11:
    v6 = -58.0;
    goto LABEL_12;
  }

  v5 = *outData;
  v6 = -76.0;
LABEL_12:
  result = v6;
LABEL_13:
  if (v5 >= result)
  {
    return v5;
  }

  return result;
}

void sub_4D1B8C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_4D1BA4(uint64_t a1, double a2)
{
  v17 = a2;
  v4 = sub_4AF738(a1, a2);
  (*(*a1 + 200))(buf, a1);
  if (*&buf[8])
  {
    v5 = std::__shared_weak_count::lock(*&buf[8]);
    if (v5)
    {
      v6 = *buf;
    }

    else
    {
      v6 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    v15 = 0x676C6F62616F7372;
    v16 = 0;
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && (*(*v6 + 16))(v6, &v15))
    {
      v8 = sub_5544(18);
      v9 = sub_5544(37);
      v10 = 0;
      *buf = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *&buf[v10];
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_19;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_19:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "Device_Receiver_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 807;
        v19 = 2048;
        v20 = a2;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Informing AOP of Codec sample rate %f Hz", buf, 0x1Cu);
      }

      (*(*v6 + 48))(v6, &v15, 0, 0, 8, &v17);
    }

    if (v5)
    {
      sub_1A8C0(v5);
    }
  }

  return v4;
}

void sub_4D1DD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_4D1DF8(uint64_t a1)
{
  v2 = sub_8703C();
  (*(*v2 + 56))(v2, sub_4D13D8);

  return sub_4B08A4(a1);
}

BOOL sub_4D1E64(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  mScope = a2->mScope;
  if (*&a2->mSelector == qword_709538 && a2->mElement == dword_709540 || *&a2->mSelector == qword_709548 && a2->mElement == dword_709550 || *&a2->mSelector == qword_709558 && a2->mElement == dword_709560)
  {
    v14 = v4;
    v15 = v5;
    v12 = *&a2->mSelector;
    mElement = a2->mElement;
    v8 = *&a2->mSelector;
    v9 = a2->mElement;
    v10 = a3;
    v11 = a4;
    sub_185D3C((a1 + 552), &v12, &v8);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_4D1F74(char *a1, uint64_t a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = *(a2 + 4);
  if (*a2 == qword_709538 && *(a2 + 8) == dword_709540 || *a2 == qword_709548 && *(a2 + 8) == dword_709550 || *a2 == qword_709558 && *(a2 + 8) == dword_709560)
  {
    __p = *a2;
    v15 = *(a2 + 8);
    *buf = *a2;
    v17 = *(a2 + 8);
    v18 = a3;
    v19 = a4;
    sub_17C118(a1 + 552, &__p, buf);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_4D2238(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v56 = sub_5544(14);
    if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
    {
      v95.__cv_.__sig = *a2;
      *v95.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v96);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v58 = sub_5544(14);
    if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
    {
      v95.__cv_.__sig = *a2;
      *v95.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v96);
    }

    v59 = __cxa_allocate_exception(0x10uLL);
    *v59 = &off_6DDDD0;
    v59[2] = 561211770;
  }

  if (!a6)
  {
    v60 = sub_5544(14);
    if (*v60 && os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
    {
      v95.__cv_.__sig = *a2;
      *v95.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v96);
    }

    v61 = __cxa_allocate_exception(0x10uLL);
    *v61 = &off_6DDDD0;
    v61[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1685483629)
  {
    switch(v12)
    {
      case 1162046576:
        v18 = *a6;
        v19 = sub_5544(18);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "Device_Receiver_Aspen.cpp";
          v89 = 1024;
          v90 = 553;
          v91 = 1024;
          LODWORD(v92) = v18;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyCodecLowPowerModeEnable = %u.", &buf, 0x18u);
        }

        break;
      case 1162701936:
        v23 = *a6;
        v24 = sub_5544(18);
        v25 = *v24;
        if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "Device_Receiver_Aspen.cpp";
          v89 = 1024;
          v90 = 565;
          v91 = 1024;
          LODWORD(v92) = v23;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyMicrophoneLowPowerModeEnable = %u.", &buf, 0x18u);
        }

        break;
      case 1634759542:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v66 = sub_5544(14);
          if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
          {
            v95.__cv_.__sig = *a2;
            *v95.__cv_.__opaque = *(a2 + 8);
            sub_22CE0(&v96);
          }

          v67 = __cxa_allocate_exception(0x10uLL);
          *v67 = &off_6DDDD0;
          v67[2] = 561211770;
        }

        v14 = *(a2 + 4);
        buf.mSelector = 1987013732;
        buf.mScope = v14;
        buf.mElement = 0;
        (*(*a1 + 48))(a1, &buf, a3, a4, a5, a6);
        return;
      default:
LABEL_43:

        sub_FDAC4(a1, a2, a3, a4, a5, a6);
        return;
    }

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (v12 > 1836414052)
  {
    if (v12 == 1836414053)
    {
      if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
      {
        v64 = sub_5544(14);
        if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
        {
          v95.__cv_.__sig = *a2;
          *v95.__cv_.__opaque = *(a2 + 8);
          sub_22CE0(&v96);
        }

        v65 = __cxa_allocate_exception(0x10uLL);
        *v65 = &off_6DDDD0;
        v65[2] = 561211770;
      }

      if (*(a2 + 8) == 6 && *(a2 + 4) == 1869968496)
      {
        v21 = sub_3419E4();
        v22 = *a6 != 0;

        sub_34332C(v21, v22);
        return;
      }
    }

    else if (v12 == 1987013732)
    {
      if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
      {
        v68 = sub_5544(14);
        if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_ERROR))
        {
          v95.__cv_.__sig = *a2;
          *v95.__cv_.__opaque = *(a2 + 8);
          sub_22CE0(&v96);
        }

        v69 = __cxa_allocate_exception(0x10uLL);
        *v69 = &off_6DDDD0;
        v69[2] = 561211770;
      }

      if (*(a2 + 8) == 6 && *(a2 + 4) == 1869968496)
      {
        v15 = sub_3419E4();
        if (sub_3428D4(v15))
        {
          v16 = (*a6 + 100.0) / 100.0;
          v17 = sub_3419E4();
          sub_342CD8(v17, v16);
          if (sub_6FE08(a1 + 552, &qword_709538))
          {
            sub_6FF5C(a1 + 552, &qword_709538);
          }

          if (sub_6FE08(a1 + 552, &qword_709548))
          {

            sub_6FF5C(a1 + 552, &qword_709548);
          }
        }

        return;
      }
    }

    goto LABEL_43;
  }

  if (v12 == 1685483630)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v62 = sub_5544(14);
      if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
      {
        v95.__cv_.__sig = *a2;
        *v95.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v96);
      }

      v63 = __cxa_allocate_exception(0x10uLL);
      *v63 = &off_6DDDD0;
      v63[2] = 561211770;
    }

    *(a1 + 924) = *a6 != 0;
    return;
  }

  if (v12 != 1768255076)
  {
    goto LABEL_43;
  }

  if (__PAIR64__(*(a2 + 4), 1768255076) == qword_709568 && *(a2 + 8) == dword_709570)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v70 = sub_5544(14);
      if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
      {
        v95.__cv_.__sig = *a2;
        *v95.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v96);
      }

      v71 = __cxa_allocate_exception(0x10uLL);
      *v71 = &off_6DDDD0;
      v71[2] = 561211770;
    }

    v13 = *a6;
    if (v13)
    {
      if (atomic_fetch_add((a1 + 928), 1u))
      {
        return;
      }
    }

    else
    {
      if (!atomic_load((a1 + 928)))
      {
        v72 = sub_5544(14);
        v73 = *v72;
        if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
        {
          buf.mSelector = 136315394;
          *&buf.mScope = "Device_Receiver_Aspen.cpp";
          v89 = 1024;
          v90 = 618;
          _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Attempt to power off the built-in mic when mMicPowerOnCount is 0.", &buf, 0x12u);
        }

        v74 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v74, "Attempt to power off the built-in mic when mMicPowerOnCount is 0.");
      }

      if (atomic_fetch_add((a1 + 928), 0xFFFFFFFF) != 1)
      {
        return;
      }
    }

    v29 = sub_5544(18);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_INFO))
    {
      v31 = "dis";
      *&buf.mScope = "Device_Receiver_Aspen.cpp";
      buf.mSelector = 136315650;
      if (v13)
      {
        v31 = "en";
      }

      v89 = 1024;
      v90 = 624;
      v91 = 2080;
      v92 = v31;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%25s:%-5d Non-redundant requesting to %sable microphone power. Calling the HAL.", &buf, 0x1Cu);
    }

    v32 = *(a1 + 268);
    inData = v13 != 0;
    v33 = sub_5544(14);
    if ((*(v33 + 8) & 1) != 0 && *v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
    {
      v95.__cv_.__sig = *a2;
      *v95.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v96);
    }

    buf = *a2;
    if (AudioObjectHasProperty(v32, &buf))
    {
      memset(v96.__m_.__opaque, 0, sizeof(v96.__m_.__opaque));
      v95.__cv_.__sig = 1018212795;
      memset(v95.__cv_.__opaque, 0, sizeof(v95.__cv_.__opaque));
      v96.__m_.__sig = 850045863;
      v87 = 0;
      sub_745E8(v86, v32, a2, &v95, &v96, &v87);
      v81 = v32;
      v82 = *a2;
      v83 = *(a2 + 8);
      v84 = a3;
      v85 = a4;
      buf = *a2;
      if (!sub_66E40(v32, &buf))
      {
        v38 = sub_5544(14);
        if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          v78 = *a2;
          v79 = *(a2 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_128;
      }

      v34 = sub_4D3EB4(&v81);
      if (!HIDWORD(v34) && inData == v34)
      {
        v35 = sub_5544(14);
        if ((*(v35 + 8) & 1) == 0)
        {
          goto LABEL_128;
        }

        v36 = *v35;
        if (!*v35 || !os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_128;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v89 = 1024;
        v90 = 294;
        v91 = 1024;
        LODWORD(v92) = v32;
LABEL_72:
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_128:
        sub_73C20(v86);
        std::condition_variable::~condition_variable(&v95);
        std::mutex::~mutex(&v96);
        return;
      }

      v39 = sub_5544(14);
      if ((*(v39 + 8) & 1) != 0 && *v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
      {
        v78 = *a2;
        v79 = *(a2 + 8);
        sub_22CE0(__p);
      }

      buf = *a2;
      v40 = AudioObjectSetPropertyData(v32, &buf, a3, a4, 4u, &inData);
      if (v40)
      {
        v41 = sub_5544(14);
        if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v40);
          v76 = *a2;
          v77 = *(a2 + 8);
          sub_22CE0(&v78);
        }

        goto LABEL_128;
      }

      v42 = sub_4D3EB4(&v81);
      if (!HIDWORD(v42) && inData == v42)
      {
        v43 = sub_5544(14);
        if ((*(v43 + 8) & 1) == 0)
        {
          goto LABEL_128;
        }

        v36 = *v43;
        if (!*v43 || !os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_128;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v89 = 1024;
        v90 = 322;
        v91 = 1024;
        LODWORD(v92) = v32;
        goto LABEL_72;
      }

      v44 = 2000;
LABEL_94:
      v45 = sub_4D3EB4(&v81);
      if (HIDWORD(v45))
      {
        goto LABEL_128;
      }

      if (inData == v45)
      {
        v54 = sub_5544(14);
        if ((*(v54 + 8) & 1) != 0 && *v54 && os_log_type_enabled(*v54, OS_LOG_TYPE_DEBUG))
        {
          v78 = *a2;
          v79 = *(a2 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_128;
      }

      if (v44 <= 0)
      {
        v55 = sub_5544(14);
        if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
        {
          v78 = *a2;
          v79 = *(a2 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_128;
      }

      v46.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v47 = sub_5544(14);
      if (*(v47 + 8))
      {
        v48 = *v47;
        if (*v47)
        {
          if (os_log_type_enabled(*v47, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315906;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v89 = 1024;
            v90 = 354;
            v91 = 2080;
            v92 = "with timeout";
            v93 = 1024;
            v94 = v32;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
          }
        }
      }

      sub_27A4();
      LOBYTE(__p[0]) = sub_2E6B08();
      *&buf.mSelector = &v96;
      LOBYTE(buf.mElement) = 1;
      std::mutex::lock(&v96);
      v49.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
      while (1)
      {
        if ((v87 & 1) != 0 || v49.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
        {
LABEL_118:
          if (LOBYTE(buf.mElement) == 1)
          {
            std::mutex::unlock(*&buf.mSelector);
          }

          sub_1DB4C4(__p);
          v44 += (std::chrono::system_clock::now().__d_.__rep_ - v46.__d_.__rep_) / -1000;
          goto LABEL_94;
        }

        v50.__d_.__rep_ = v49.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v50.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_117:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v49.__d_.__rep_)
        {
          goto LABEL_118;
        }
      }

      std::chrono::steady_clock::now();
      v51.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v51.__d_.__rep_)
      {
        v52 = 0;
        goto LABEL_115;
      }

      if (v51.__d_.__rep_ < 1)
      {
        if (v51.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v52 = 0x8000000000000000;
          goto LABEL_115;
        }
      }

      else if (v51.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v52 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_113;
      }

      v52 = 1000 * v51.__d_.__rep_;
LABEL_113:
      if (v52 > (v50.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v53.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_116:
        std::condition_variable::__do_timed_wait(&v95, &buf, v53);
        std::chrono::steady_clock::now();
        goto LABEL_117;
      }

LABEL_115:
      v53.__d_.__rep_ = v52 + v50.__d_.__rep_;
      goto LABEL_116;
    }

    v37 = sub_5544(14);
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      v95.__cv_.__sig = *a2;
      *v95.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v96);
    }
  }

  else
  {
    v26 = sub_5544(18);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_Receiver_Aspen.cpp";
      v89 = 1024;
      v90 = 633;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown property address using selector kAppleEmbeddedAudio_DevicePropertyInputEnableDevice. Ignoring.", &buf, 0x12u);
    }
  }
}

void sub_4D3DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v17 - 232));
  std::mutex::~mutex((v17 - 184));
  _Unwind_Resume(a1);
}

unint64_t sub_4D3EB4(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_4D4060(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4D4080(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v32 = sub_5544(14);
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      v52 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v34 = sub_5544(14);
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v52 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    v35 = __cxa_allocate_exception(0x10uLL);
    *v35 = &off_6DDDD0;
    v35[2] = 561211770;
  }

  if (!a6)
  {
    v36 = sub_5544(14);
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v52 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    *v37 = &off_6DDDD0;
    v37[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    if (mSelector <= 1986290210)
    {
      if (mSelector == 1836414053)
      {
        v26 = *a5;
        if (v26 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v40 = sub_5544(14);
          if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
          {
            v52 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(&__p);
          }

          v41 = __cxa_allocate_exception(0x10uLL);
          *v41 = &off_6DDDD0;
          v41[2] = 561211770;
        }

        if (a2->mElement != 6 || a2->mScope != 1869968496)
        {
          goto LABEL_49;
        }

        v27 = sub_3419E4();
        v17 = sub_343174(v27);
      }

      else
      {
        if (mSelector != 1986229104)
        {
          goto LABEL_49;
        }

        v15 = *a5;
        if (v15 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v46 = sub_5544(14);
          if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
          {
            v52 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(&__p);
          }

          v47 = __cxa_allocate_exception(0x10uLL);
          *v47 = &off_6DDDD0;
          v47[2] = 561211770;
        }

        if (a2->mElement != 6 || a2->mScope != 1869968496)
        {
          goto LABEL_49;
        }

        v16 = sub_3419E4();
        v17 = sub_3428D4(v16);
      }

      *a6 = v17;
      return;
    }

    if (mSelector == 1986290211)
    {
      v31 = *a5;
      if (v31 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v42 = sub_5544(14);
        if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
        {
          v52 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p);
        }

        v43 = __cxa_allocate_exception(0x10uLL);
        *v43 = &off_6DDDD0;
        v43[2] = 561211770;
      }

      if (a2->mElement == 6 && a2->mScope == 1869968496)
      {
        *a6 = xmmword_517240;
        return;
      }
    }

    else if (mSelector == 1987013732)
    {
      v22 = *a5;
      if (v22 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v50 = sub_5544(14);
        if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          v52 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p);
        }

        v51 = __cxa_allocate_exception(0x10uLL);
        *v51 = &off_6DDDD0;
        v51[2] = 561211770;
      }

      if (a2->mElement == 6 && a2->mScope == 1869968496)
      {
        v23 = sub_3419E4();
        v24 = (sub_342A00(v23) * 100.0) + -100.0;
        goto LABEL_53;
      }
    }

LABEL_49:

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (mSelector <= 1685483629)
  {
    if (mSelector != 1064725619)
    {
      if (mSelector == 1634759542)
      {
        v13 = *a5;
        if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v44 = sub_5544(14);
          if (*v44)
          {
            if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
            {
              v52 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(&__p);
            }
          }

          v45 = __cxa_allocate_exception(0x10uLL);
          *v45 = &off_6DDDD0;
          v45[2] = 561211770;
        }

        mScope = a2->mScope;
        *buf = 1987013732;
        *&buf[4] = mScope;
        *&buf[8] = 0;
        (*(*a1 + 40))(a1, buf, a3, a4, a5, a6);
        return;
      }

      goto LABEL_49;
    }

    v25 = *a5;
    if (v25 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v38 = sub_5544(14);
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
      {
        v52 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&__p);
      }

      v39 = __cxa_allocate_exception(0x10uLL);
      *v39 = &off_6DDDD0;
      v39[2] = 561211770;
    }

    v21 = 1;
LABEL_31:
    *a6 = v21;
    return;
  }

  if (mSelector != 1685483630)
  {
    if (mSelector == 1835103844)
    {
      v18 = *a5;
      if (v18 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v48 = sub_5544(14);
        if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
        {
          v52 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p);
        }

        v49 = __cxa_allocate_exception(0x10uLL);
        *v49 = &off_6DDDD0;
        v49[2] = 561211770;
      }

      v20 = a2->mScope;
      v19 = a2->mElement;
      if (v19 == 6 && v20 == 1869968496)
      {
        v21 = -1027131310;
        goto LABEL_31;
      }

      __p.mSelector = 1986290211;
      __p.mScope = v20;
      __p.mElement = v19;
      LODWORD(v52) = 16;
      sub_5C0D8(a1, &__p, 0, 0, &v52, buf);
      v24 = *buf;
LABEL_53:
      *a6 = v24;
      return;
    }

    goto LABEL_49;
  }

  v28 = sub_5544(18);
  v29 = *v28;
  if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(&__p, a2->mSelector);
    v30 = v55 >= 0 ? &__p : *&__p.mSelector;
    *buf = 136315650;
    *&buf[4] = "Device_Receiver_Aspen.cpp";
    v57 = 1024;
    v58 = 508;
    v59 = 2080;
    v60 = v30;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property '%s' is write-only", buf, 0x1Cu);
    if (v55 < 0)
    {
      operator delete(*&__p.mSelector);
    }
  }

  *a5 = 0;
}

void sub_4D52C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4D5300(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_30:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *&a2->mSelector;
      v18 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_30;
  }

  mSelector = a2->mSelector;
  result = 4;
  if (a2->mSelector <= 1836414052)
  {
    if (mSelector > 1685483629)
    {
      if (mSelector == 1685483630)
      {
        return result;
      }

      v10 = 1835103844;
    }

    else
    {
      if (mSelector == 1064725619)
      {
        return result;
      }

      v10 = 1634759542;
    }

LABEL_16:
    if (mSelector == v10)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (mSelector > 1986290210)
  {
    if (mSelector == 1986290211)
    {
      return 16;
    }

    v10 = 1987013732;
    goto LABEL_16;
  }

  if (mSelector != 1836414053)
  {
    v10 = 1986229104;
    goto LABEL_16;
  }

  if (a2->mElement == 6)
  {
    mSelector = a2->mScope;
    v10 = 1869968496;
    goto LABEL_16;
  }

LABEL_18:

  return sub_5BD20(a1, a2, a3, a4);
}

uint64_t sub_4D56C4(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    if (mSelector > 1986290210)
    {
      if (mSelector == 1986290211)
      {
LABEL_18:
        if (a2->mElement != 6 || a2->mScope != 1869968496)
        {
          return sub_BE734(a1, a2);
        }

        return 0;
      }

      if (mSelector != 1987013732)
      {
        return sub_BE734(a1, a2);
      }
    }

    else if (mSelector != 1836414053)
    {
      if (mSelector != 1986229104)
      {
        return sub_BE734(a1, a2);
      }

      goto LABEL_18;
    }

    if (a2->mElement != 6 || a2->mScope != 1869968496)
    {
      return sub_BE734(a1, a2);
    }

    return 1;
  }

  v3 = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector == 1685483630)
    {
      return v3;
    }

    if (mSelector != 1835103844)
    {
      return sub_BE734(a1, a2);
    }

    return 0;
  }

  if (mSelector == 1064725619)
  {
    return 0;
  }

  if (mSelector != 1634759542)
  {
    return sub_BE734(a1, a2);
  }

  return v3;
}

BOOL sub_4D57D8(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    if (mSelector > 1986290210)
    {
      v6 = mSelector == 1987013732;
      v7 = 1986290211;
    }

    else
    {
      v6 = mSelector == 1836414053;
      v7 = 1986229104;
    }

    v9 = v6 || mSelector == v7;
    if (v9 && a2->mElement == 6 && a2->mScope == 1869968496)
    {
      return 1;
    }

    goto LABEL_22;
  }

  result = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector != 1685483630 && mSelector != 1835103844)
    {
LABEL_22:
      sub_4DFC0(a1);
      return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
    }
  }

  else
  {
    if (mSelector != 1064725619)
    {
      if (mSelector == 1634759542)
      {
        return result;
      }

      goto LABEL_22;
    }

    return a2->mScope == 1869968496;
  }

  return result;
}

void sub_4D5908(void *a1)
{
  sub_4D5940(a1);

  operator delete();
}

uint64_t sub_4D5940(void *a1)
{
  *a1 = off_6DBD98;
  v2 = a1[113];
  a1[113] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_13A300((a1 + 69));
  sub_2C0C04(a1 + 68);
  v3 = a1[67];
  a1[67] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_4B2820(a1);
}

uint64_t sub_4D5A04(uint64_t a1, UInt32 a2, uint64_t a3)
{
  v6 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v6 = off_6DBD98;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0u;
  *(v6 + 568) = 0u;
  *(v6 + 584) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 0u;
  *(v6 + 648) = 0u;
  *(v6 + 664) = 0u;
  *(v6 + 680) = 0u;
  *(v6 + 696) = 0u;
  *(v6 + 712) = 0u;
  *(v6 + 728) = 0u;
  *(v6 + 744) = 0u;
  *(v6 + 760) = 0u;
  *(v6 + 776) = 0u;
  *(v6 + 792) = 0u;
  *(v6 + 808) = 0u;
  *(v6 + 824) = 0u;
  *(v6 + 840) = 0u;
  *(v6 + 856) = 0u;
  *(v6 + 872) = 0u;
  *(v6 + 888) = 0;
  sub_165D0C(v6 + 552);
  *(a1 + 896) = 0;
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 != 1)
  {
    *inAddress = &inAddress[8];
    *&inAddress[8] = 0;
    v24[0] = 0;
    v24[1] = 0;
    *&inAddress[16] = 0;
    v23 = v24;
    sub_407194(inAddress, 0x706D6269u, 1768778083);
    sub_407194(inAddress, 0x706D6269u, 1768778033);
    sub_407194(inAddress, 0x706D7769u, 1701669219);
    sub_407194(inAddress, 0x70747469u, 1701669219);
    sub_40736C(inAddress, 0x656D6963u, 1886222185);
    sub_40736C(inAddress, 0x656D6963u, 1886680169);
    sub_40736C(inAddress, 0x696D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6931u, 1886216809);
    sub_40736C(inAddress, 0x736D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6932u, 1886216809);
    sub_40736C(inAddress, 0x6C6D6963u, 1886216809);
    sub_40736C(inAddress, 0x666D6963u, 1886216809);
    operator new();
  }

  *(a1 + 904) = 0;
  *(a1 + 912) = sub_46AC8C();
  *(a1 + 920) = 2;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  if (!a2)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_Receiver_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 246;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

    goto LABEL_18;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_Receiver_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 247;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_28;
  }

  v8 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v8, &qword_709568))
  {
    v9 = (*(*a1 + 120))(a1);
    inData = 0;
    strcpy(inAddress, "dneitpni");
    inAddress[9] = 0;
    *&inAddress[10] = 0;
    v10 = AudioObjectSetPropertyData(v9, inAddress, 0, 0, 4u, &inData);
    if (v10)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = &off_6DDDD0;
      v18[2] = v10;
    }

    if (atomic_load((a1 + 928)))
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *inAddress = 136315394;
        *&inAddress[4] = "Device_Receiver_Aspen.cpp";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 255;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Postcondition failure.");
LABEL_28:
    }
  }

  sub_4B4F1C(a1, 1, 0x6F757470u, 0);
  return a1;
}

void sub_4D5F98(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_709640);
  sub_13A300(v1 + 552);
  sub_2C0C04((v1 + 544));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

void sub_4D6168(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_68108(&v6, (a1 + 12));
  v3 = std::string::insert(&v6, 0, "Notifying ", 0xAuLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, " of time sync clock creation", 0x1CuLL);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_4D621C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_4D6250(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5544(6);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_68108(&__p, (a1 + 12));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "TimeSyncClockCreatedHandler.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 25;
    *&buf[18] = 2080;
    *&buf[20] = p_p;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d TimeSync clock created for %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = sub_17D104();
  *&buf[8] = 0uLL;
  *buf = &buf[8];
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  sub_17CC28(v7, a1 + 12, buf, &__p);
  sub_477A0(*&buf[8]);
  sub_21991C(a2, 1920099684);
}

void sub_4D64D0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DC180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_4D6544(const __CFString *a1, BOOL *a2)
{
  valuePtr = -1;
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v5 = valuePtr + 3;
  }

  else
  {
    if (v4 != CFStringGetTypeID())
    {
      goto LABEL_22;
    }

    if (CFEqual(a1, @"error"))
    {
      v5 = 1;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"warning"))
    {
      v5 = 2;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"note") || CFEqual(a1, @"notice"))
    {
      v5 = 3;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"info"))
    {
      v5 = 4;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"details"))
    {
      v5 = 5;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"minutiae"))
    {
      v5 = 6;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"spew"))
    {
      v5 = 7;
      goto LABEL_23;
    }

    if (!CFStringGetCString(a1, buffer, 64, 0x8000100u))
    {
LABEL_22:
      v5 = -1;
      goto LABEL_23;
    }

    v9 = 0;
    v6 = sscanf(buffer, "%d", &v9);
    v5 = v9 + 3;
    if (v6 != 1)
    {
      v5 = -1;
    }
  }

LABEL_23:
  *a2 = v5 > 0;
  return v5 & ~(v5 >> 31);
}

uint64_t sub_4D6720(uint64_t result, int *a2)
{
  v2 = 3;
  if (*a2 <= 6)
  {
    v2 = 1;
  }

  *(*(result + 8) + 8) = v2;
  return result;
}

uint64_t sub_4D6744(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6DC200;
  a2[1] = v2;
  return result;
}

uint64_t sub_4D67D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v6 = a1 + 96;
  *(v6 + 16) = 0;
  sub_46980(v6, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  return a1;
}

void sub_4D6908(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[10] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[6] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[2] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_4D6944(char a1)
{
  qword_700840 = off_6DC248;
  v61 = xmmword_517180;
  sub_1E54B0(&__p, &v61, 4);
  sub_1F68D0(v5, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  v5[0] = a1;
  memset(__src, 0, sizeof(__src));
  sub_46980(__src, v6, v7, (v7 - v6) >> 2);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = 1651797298;
  }

  else
  {
    v3 = 1651797297;
  }

  sub_1E5534(&v61, v3, __src, 1869442665, -1, &qword_709928);
  if (v2)
  {
    v4 = 1651797297;
  }

  else
  {
    v4 = 1651797298;
  }

  sub_1E5534(&v60, v4, __src, 1869442665, -1, &qword_709928);
  sub_1E5534(&v59, 1650551601, __src, 1869442665, -1, &qword_709928);
  sub_1E5534(&v53, 1718514737, __src, 1869442665, -1, &qword_709928);
  sub_1E5534(&v52, 1650811245, __src, 1935827812, 1, &qword_709940);
  sub_1E5534(&v28, 1650811245, __src, 1668441188, 0, &qword_709940);
  sub_1E5534(&v22, 1986228839, __src, 1668441188, 0, &qword_709940);
  sub_1E5534(&v16, 1937007986, __src, 1937007986, 0, &qword_709958);
  sub_1E5534(&v15, 1937007986, __src, 1937007986, 1, &qword_709958);
  v50 = 0x766D736776726367;
  v37 = 0;
  __p = 0;
  v36 = 0;
  sub_4625C(&__p, &v50, &v51, 2uLL);
  sub_1E5534(v14, 1634495520, __src, 1852796517, -1, &__p);
  if (__p)
  {
    operator delete(__p);
  }

  v36 = 0;
  __p = 0;
  v37 = 0;
  sub_1E5534(&v50, 1870033508, __src, 1852796517, -1, &__p);
  sub_1E55D4(v13, 1668112945, __src);
  sub_1E55D4(v12, 1668112946, __src);
  sub_1E55D4(v11, 1668112947, __src);
  if ((atomic_load_explicit(&qword_7099A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7099A8))
  {
    sub_1E560C(&__p, &v61);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_1E56A8(&v8, &__p, &v41, 1uLL);
  }

  if ((atomic_load_explicit(&qword_7099E8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_7099E8))
    {
      sub_1E560C(&__p, &v60);
      v8 = 0;
      v9 = 0;
      v10 = 0;
      sub_1E56A8(&v8, &__p, &v41, 1uLL);
    }
  }

  LODWORD(__p) = v53;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  sub_46980(&v36, v54, v55, (v55 - v54) >> 2);
  v39 = v56;
  memset(v40, 0, sizeof(v40));
  sub_46980(v40, v57, v58, (v58 - v57) >> 2);
  v41 = v28;
  memset(v42, 0, 24);
  sub_46980(v42, v29, v30, (v30 - v29) >> 2);
  v42[3] = v31;
  memset(v43, 0, sizeof(v43));
  sub_46980(v43, v32, v33, (v33 - v32) >> 2);
  v44 = v22;
  memset(v45, 0, 24);
  sub_46980(v45, v23, v24, (v24 - v23) >> 2);
  v45[3] = v25;
  memset(v46, 0, sizeof(v46));
  sub_46980(v46, v26, v27, (v27 - v26) >> 2);
  v47 = v16;
  memset(v48, 0, 24);
  sub_46980(v48, v17, v18, (v18 - v17) >> 2);
  v48[3] = v19;
  memset(v49, 0, sizeof(v49));
  sub_46980(v49, v20, v21, (v21 - v20) >> 2);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_1E56A8(&v8, &__p, &v50, 4uLL);
}

void sub_4D7E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0x310] = v34;
  sub_1E5808(&STACK[0x310]);
  sub_1E588C(&STACK[0x530]);
  __cxa_guard_abort(&qword_709CE8);
  sub_1E588C(&STACK[0x570]);
  sub_1E588C((v35 - 256));
  sub_1E588C((v35 - 192));
  sub_1E588C((v35 - 128));
  sub_1E588C(&STACK[0x3F0]);
  if (STACK[0x390])
  {
    operator delete(STACK[0x390]);
  }

  sub_1E5B6C(&a34);
  sub_1E5B6C(&a10);
  _Unwind_Resume(a1);
}

void sub_4D849C(void *a1)
{
  *a1 = off_6DC248;
  sub_1E5B6C(a1 + 1);

  operator delete();
}

void *sub_4D8500(void *a1)
{
  *a1 = off_6DC248;
  sub_1E5B6C(a1 + 1);
  return a1;
}

void *sub_4D8544(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_4D85E0(uint64_t *a1, uint64_t **a2, int *a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  for (i = *(a4 + 8); i != a4; i = *(i + 8))
  {
    if (*(i + 16) == 1869442665)
    {
      sub_1E5534(&v25, *a3, *a2, 1869442665, -1, a2[1]);
      v10 = a1[1];
      v9 = a1[2];
      if (v10 >= v9)
      {
        v13 = (v10 - *a1) >> 6;
        if ((v13 + 1) >> 58)
        {
          sub_189A00();
        }

        v14 = v9 - *a1;
        v15 = v14 >> 5;
        if (v14 >> 5 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFC0)
        {
          v16 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        v34 = a1;
        if (v16)
        {
          sub_1E5DC0(v16);
        }

        v17 = v13 << 6;
        v31 = 0;
        v32 = v17;
        v33 = (v13 << 6);
        *v17 = v25;
        v18 = v13 << 6;
        *(v18 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        sub_46980(v18 + 8, v26, v27, (v27 - v26) >> 2);
        v19 = v28;
        *(v17 + 40) = 0;
        *(v17 + 32) = v19;
        *(v17 + 48) = 0;
        *(v17 + 56) = 0;
        sub_46980(v17 + 40, __p, v30, (v30 - __p) >> 2);
        *&v33 = v33 + 64;
        v20 = a1[1];
        v21 = v32 + *a1 - v20;
        sub_1E5EA0(*a1, v20, v21);
        v22 = *a1;
        *a1 = v21;
        v23 = a1[2];
        v24 = v33;
        *(a1 + 1) = v33;
        *&v33 = v22;
        *(&v33 + 1) = v23;
        v31 = v22;
        v32 = v22;
        sub_1E5F4C(&v31);
        v12 = v24;
      }

      else
      {
        *v10 = v25;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        sub_46980(v10 + 8, v26, v27, (v27 - v26) >> 2);
        v11 = v28;
        *(v10 + 40) = 0;
        *(v10 + 32) = v11;
        *(v10 + 48) = 0;
        *(v10 + 56) = 0;
        sub_46980(v10 + 40, __p, v30, (v30 - __p) >> 2);
        v12 = v10 + 64;
      }

      a1[1] = v12;
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }
    }
  }
}

void sub_4D8808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E588C(va);
  sub_1E5808(va);
  _Unwind_Resume(a1);
}

void *sub_4D8880(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_99B50(v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

std::string *sub_4D89A4(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  sub_22170(&__p, *a2);
  v4 = std::string::insert(&__p, 0, "ID: ", 4uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v24, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26 = v6->__r_.__value_.__r.__words[2];
  v25 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v8 = &v25;
  }

  else
  {
    v8 = v25;
  }

  if (v26 >= 0)
  {
    v9 = HIBYTE(v26);
  }

  else
  {
    v9 = *(&v25 + 1);
  }

  std::string::append(a1, v8, v9);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 79) < 0)
  {
    sub_54A0(&__p, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    __p = *(a2 + 56);
  }

  v10 = std::string::insert(&__p, 0, "name: ", 6uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, "; ", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26 = v12->__r_.__value_.__r.__words[2];
  v25 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v14 = &v25;
  }

  else
  {
    v14 = v25;
  }

  if (v26 >= 0)
  {
    v15 = HIBYTE(v26);
  }

  else
  {
    v15 = *(&v25 + 1);
  }

  std::string::append(a1, v14, v15);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_22170(&__p, *(a2 + 4));
  v16 = std::string::insert(&__p, 0, "type: ", 6uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v24, "; ", 2uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v26 = v18->__r_.__value_.__r.__words[2];
  v25 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v20 = &v25;
  }

  else
  {
    v20 = v25;
  }

  if (v26 >= 0)
  {
    v21 = HIBYTE(v26);
  }

  else
  {
    v21 = *(&v25 + 1);
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, "]", 1uLL);
}

void sub_4D8C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4D8CD4(void *result, unsigned int *a2, unsigned int *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v3 = *a2;
    operator new();
  }

  return result;
}

void sub_4D8F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A8C0(v4);
  sub_72C14(va);
  _Unwind_Resume(a1);
}

void sub_4D8F80(uint64_t a1, int a2)
{
  v4 = a2;
  sub_1E54B0(__p, &v4, 1);
  sub_1E55D4(a1, a2, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_4D8FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4D8FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 4) != 1)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    do
    {
      v8 = sub_4D91A8(*(v5 + 36));
      v9 = *(a2 + 4);
      if (v9 == BYTE4(v8) && (v8 & 0x100000000) != 0)
      {
        if (*a2 == *&v8)
        {
          goto LABEL_10;
        }
      }

      else if (v9 == BYTE4(v8))
      {
        goto LABEL_10;
      }

      v5 += 64;
    }

    while (v5 != v6);
    v5 = v6;
LABEL_10:
    v6 = *(a1 + 40);
  }

  if (v5 == v6)
  {
LABEL_12:
    v5 = 0;
  }

  if (*(a3 + 4) != 1)
  {
    goto LABEL_25;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v10 != v11)
  {
    while (*(v10 + 32) != *a3)
    {
      v10 += 64;
      if (v10 == v11)
      {
        goto LABEL_25;
      }
    }
  }

  if (v10 == v11)
  {
LABEL_25:
    v10 = 0;
    if (v5)
    {
      goto LABEL_20;
    }

    return v10;
  }

  if (!v5)
  {
    return v10;
  }

LABEL_20:
  if (v10)
  {
    if (v5 != v10)
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          v16 = "SubPort.cpp";
          v17 = 1024;
          v18 = 253;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Config mismatch.", &v15, 0x12u);
        }
      }
    }
  }

  return v5;
}

uint64_t sub_4D91A8(int a1)
{
  v1 = a1 + 1;
  if ((a1 + 1) >= 3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "SubPort.cpp";
      v9 = 1024;
      v10 = 48;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected case in switch", &v7, 0x12u);
    }

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = qword_5C7668[v1];
    v3 = qword_5C7680[v1];
  }

  return v3 | v2;
}

uint64_t sub_4D9298(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 1)
  {
    v7[0] = 0;
    v7[4] = 0;
    result = sub_4D8FFC(a1, v7, a2);
    goto LABEL_8;
  }

  result = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 - result < 0x41 || result == v4)
  {
LABEL_8:
    v6 = result;
    if (!result)
    {
      return result;
    }

    return *v6;
  }

  v6 = result;
  while (v6[8] != 1869442665)
  {
    v6 += 16;
    if (v6 == v4)
    {
      goto LABEL_8;
    }
  }

  return *v6;
}

void sub_4D9328(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v2)
  {
    sub_1A8C0(v2);
  }
}

void sub_4D9340(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    sub_5659C(&v10, (a1 + 8), "", 17);
    v2 = v10;
    v8 = 0x676C6F626470656CLL;
    v9 = 0;
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
      v6 = *(a1 + 8);
      v5 = *(a1 + 16);
    }

    else
    {
      v5 = 0;
      v6 = *(a1 + 8);
    }

    v14[0] = off_6DC2A0;
    v14[1] = v3;
    v14[2] = v4;
    v14[3] = v14;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    v13[0] = off_6DC2E8;
    v13[1] = v6;
    v13[2] = v5;
    v13[3] = v13;
    sub_24AF84(v12, v2, &v8);
    v7 = *(a1 + 32);
    *(a1 + 24) = *v12;
    if (v7)
    {
      sub_1A8C0(v7);
    }

    sub_4C70(v13);
    sub_4C70(v14);
    if (v11)
    {
      sub_1A8C0(v11);
    }
  }
}

void sub_4D9488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_4C70(va);
  sub_4C70(v8 - 56);
  if (a5)
  {
    sub_1A8C0(a5);
  }

  _Unwind_Resume(a1);
}

void sub_4D94B8(uint64_t a1)
{
  v7 = 0;
  v2 = sub_8703C();
  (*(*v2 + 168))(v2, sub_4DC198);
  sub_5659C(&v5, (a1 + 8), "", 30);
  v3 = 0x676C6F626470656CLL;
  v4 = 0;
  (*(*v5 + 48))(v5, &v3, 0, 0, 4, &v7);
  if (v6)
  {
    sub_1A8C0(v6);
  }
}

void sub_4D958C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_1A8C0(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_4D95A4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_4D95E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_4D95F4(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6DC2E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_4D9698(void *a1)
{
  *a1 = off_6DC2E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_4D9704(void *a1)
{
  *a1 = off_6DC2E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_4D9750(uint64_t a1)
{
  v2 = sub_8703C();
  sub_5659C(&v5, (a1 + 8), "", 23);
  (*(*v2 + 160))(v2, sub_4DC198, v5);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  v3 = *(*sub_8703C() + 176);

  return v3();
}

void sub_4D9814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_4D982C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_4D986C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_4D987C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6DC2A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_4D9920(void *a1)
{
  *a1 = off_6DC2A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_4D998C(void *a1)
{
  *a1 = off_6DC2A0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_4D99D8(void *a1)
{
  *a1 = off_6DC268;
  v2 = a1[4];
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_4D9A50(void *a1)
{
  *a1 = off_6DC268;
  v2 = a1[4];
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

NSObject *sub_4D9AA8(void *a1)
{
  result = a1[4];
  if (result)
  {
    dispatch_source_cancel(result);
    sub_8BEE4();
    v4 = v3 = qword_709F20;
    v5 = a1[1];
    v6 = a1[2];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4;
    operator new();
  }

  return result;
}

void sub_4D9CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_1A8C0(v12);
  sub_1A8C0(v12);
  sub_8BE90(&a9);
  _Unwind_Resume(a1);
}

void sub_4D9D1C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_4D9D74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4D9E20()
{
  v0 = off_6E4C08;
  if (atomic_load_explicit(&qword_6E4C20, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_6E4C20, &v1, sub_4D9E8C);
  }
}

void *sub_4D9E8C(const char *****a1)
{
  v1 = **a1;
  v2 = *v1;
  result = dlopen(**v1, 1);
  if (result)
  {
    result = dlsym(result, v2[1]);
    v2[2] = result;
  }

  return result;
}

void sub_4D9ED0()
{
  v0 = off_6E4BA8;
  if (atomic_load_explicit(&qword_6E4BC0, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_6E4BC0, &v1, sub_4D9F3C);
  }
}

void *sub_4D9F3C(const char *****a1)
{
  v1 = **a1;
  v2 = *v1;
  result = dlopen(**v1, 1);
  if (result)
  {
    result = dlsym(result, v2[1]);
    v2[2] = result;
  }

  return result;
}

void sub_4DA2A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  LODWORD(v3) = 0;
  sub_4D9D1C(&__p);
}

void sub_4DA368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4DA384()
{
  v0 = off_6E4BC8;
  if (atomic_load_explicit(&qword_6E4BE0, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_6E4BE0, &v1, sub_4DA4A0);
  }
}

void sub_4DA3F0()
{
  v0 = off_6E4BE8;
  if (atomic_load_explicit(&qword_6E4C00, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_6E4C00, &v1, sub_4DA45C);
  }
}

void *sub_4DA45C(const char *****a1)
{
  v1 = **a1;
  v2 = *v1;
  result = dlopen(**v1, 1);
  if (result)
  {
    result = dlsym(result, v2[1]);
    v2[2] = result;
  }

  return result;
}

void *sub_4DA4A0(const char *****a1)
{
  v1 = **a1;
  v2 = *v1;
  result = dlopen(**v1, 1);
  if (result)
  {
    result = dlsym(result, v2[1]);
    v2[2] = result;
  }

  return result;
}

void sub_4DA4E4(uint64_t a1)
{
  sub_4DA51C(a1);

  operator delete();
}

uint64_t sub_4DA51C(uint64_t a1)
{
  *a1 = off_6DC3E0;
  sub_4D9AA8(a1);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_4DA5A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DC468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_4DA614()
{
  sub_4D9E20();
  if (!off_6E4C18)
  {
    return 0;
  }

  sub_4DA3F0();
  if (!off_6E4BF8)
  {
    return 0;
  }

  sub_4DA384();
  if (!off_6E4BD8)
  {
    return 0;
  }

  sub_4D9ED0();
  return off_6E4BB8 != 0;
}

uint64_t sub_4DA674(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886613860)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Squid_Aspen.cpp";
      v14 = 1024;
      v15 = 73;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_Squid_Aspen.cpp";
      v14 = 1024;
      v15 = 74;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_4DA848(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if ((*(*a1 + 88))(a1, 0))
  {
    sub_15DD68();
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "Device_Squid_Aspen.cpp";
      v7 = 1024;
      v8 = 47;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HDMI input device has no input streams.", &buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "HDMI input device has no input streams.");
}

void sub_4DAC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_4DACD0(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_4DAD0C(uint64_t a1)
{
  if (sub_292208(a1))
  {
    return 0;
  }

  v2 = sub_59410(a1);
  *(&v5 + 1) = v3;
  *&v5 = v2;
  v4 = v5 >> 32;
  if ((v4 & 0x100000000) == 0)
  {
    return 0;
  }

  v6 = 0;
  while (dword_5C76A8[v6] != v4)
  {
    if (++v6 == 4)
    {
      return 0;
    }
  }

  result = sub_3114B0();
  if (result)
  {
    return sub_B15A0();
  }

  return result;
}

NSObject *sub_4DADAC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 88);
  if (a2)
  {
    v5 = v4();
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = (*(*a1 + 96))(a1, a2, v7);
        v9 = v8;
        if (v8)
        {
          strcpy(buf, "spatbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v10 = sub_59410(v8);
          *(&v13 + 1) = v11;
          *&v13 = v10;
          v12 = v13 >> 32;
          if ((v12 & 0x100000000) == 0 || !v12)
          {
            v14 = (*(*v9 + 120))(v9, buf);
            if (v14)
            {
              v24 = sub_5544(18);
              v25 = *v24;
              if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
              {
                sub_22170(v29, v14);
                if (v30 >= 0)
                {
                  v26 = v29;
                }

                else
                {
                  v26 = v29[0];
                }

                v27 = "input";
                *&__p[4] = "PhysicalDeviceUtilities.cpp";
                *__p = 136315906;
                v40 = 1024;
                if (a2)
                {
                  v27 = "output";
                }

                v41 = 215;
                v42 = 2080;
                v43 = v26;
                v44 = 2080;
                v45 = v27;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d error '%s' getting current stream format, returning 0 non tapstream %s channels", __p, 0x26u);
                if (v30 < 0)
                {
                  v23 = v29[0];
                  goto LABEL_40;
                }
              }

              return 0;
            }

            v6 = (*v36 + v6);
          }
        }

        v7 = (v7 + 1);
        if (v5 == v7)
        {
          v15 = sub_5544(18);
          v16 = *v15;
          if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
          {
            if (a2)
            {
              v17 = "output";
            }

            else
            {
              v17 = "input";
            }

            (*(*a1 + 128))(__p, a1);
            if (SBYTE3(v43) >= 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = *__p;
            }

            *buf = 136316162;
            *&buf[4] = "PhysicalDeviceUtilities.cpp";
            v32 = 1024;
            v33 = 224;
            v34 = 2080;
            v35 = v17;
            *v36 = 2080;
            *&v36[2] = v18;
            v37 = 1024;
            v38 = v6;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Non tapstream %s channel count for device %s: %d", buf, 0x2Cu);
            if (SBYTE3(v43) < 0)
            {
              operator delete(*__p);
            }
          }

          return v6;
        }
      }
    }
  }

  else
  {
    v19 = v4();
    v5 = v19 + (((*(*a1 + 312))(a1) >> 1) >> 31);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v20 = sub_5544(18);
  v6 = *v20;
  if (*v20)
  {
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a2 ? "output" : "input";
      (*(*a1 + 128))(__p, a1);
      v22 = SBYTE3(v43) >= 0 ? __p : *__p;
      *buf = 136315906;
      *&buf[4] = "PhysicalDeviceUtilities.cpp";
      v32 = 1024;
      v33 = 201;
      v34 = 2080;
      v35 = v21;
      *v36 = 2080;
      *&v36[2] = v22;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Non tapstream %s stream count is zero for device %s", buf, 0x26u);
      if (SBYTE3(v43) < 0)
      {
        v23 = *__p;
LABEL_40:
        operator delete(v23);
      }
    }

    return 0;
  }

  return v6;
}

__n128 sub_4DB20C(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u64[0] = a2[-1].n128_u64[1];
        if (result.n128_f64[0] <= v12->n128_f64[1])
        {
          return result;
        }

LABEL_111:
        v116 = *v12;
        *v12 = *v9;
        result = v116;
LABEL_112:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v56 = v12[1].n128_f64[1];
      v57 = v12[2].n128_f64[1];
      if (v56 <= v12->n128_f64[1])
      {
        if (v57 > v56)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f64[1] > v12->n128_f64[1])
          {
            v119 = *v12;
            *v12 = v12[1];
            result.n128_u64[1] = v119.n128_u64[1];
            v12[1] = v119;
          }
        }
      }

      else
      {
        if (v57 > v56)
        {
          v117 = *v12;
          *v12 = v12[2];
          result = v117;
          goto LABEL_183;
        }

        v121 = *v12;
        *v12 = v12[1];
        v12[1] = v121;
        if (v57 > v12[1].n128_f64[1])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_183:
          v12[2] = result;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] <= v12[2].n128_f64[1])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v9;
      *v9 = result;
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] <= v12[1].n128_f64[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_187:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] > v12->n128_f64[1])
      {
        v122 = *v12;
        *v12 = v12[1];
        result = v122;
        v12[1] = v122;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_4DBD1C(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v58 = v12 + 1;
      v60 = v12 == a2 || v58 == a2;
      if (a4)
      {
        if (!v60)
        {
          v61 = 0;
          v62 = v12;
          do
          {
            result.n128_u64[0] = v62[1].n128_u64[1];
            v63 = v62->n128_f64[1];
            v62 = v58;
            if (result.n128_f64[0] > v63)
            {
              v64 = v58->n128_u64[0];
              v65 = v61;
              while (1)
              {
                *(v12 + v65 + 16) = *(v12 + v65);
                if (!v65)
                {
                  break;
                }

                v66 = *(&v12->n128_f64[-1] + v65);
                v65 -= 16;
                if (result.n128_f64[0] <= v66)
                {
                  v67 = (v12 + v65 + 16);
                  goto LABEL_131;
                }
              }

              v67 = v12;
LABEL_131:
              v67->n128_u64[0] = v64;
              v67->n128_u64[1] = result.n128_u64[0];
            }

            v58 = v62 + 1;
            v61 += 16;
          }

          while (&v62[1] != a2);
        }
      }

      else if (!v60)
      {
        do
        {
          result.n128_u64[0] = a1[1].n128_u64[1];
          v94 = a1->n128_f64[1];
          a1 = v58;
          if (result.n128_f64[0] > v94)
          {
            v95 = v58->n128_u64[0];
            v96 = v58;
            do
            {
              *v96 = v96[-1];
              v97 = v96[-2].n128_f64[1];
              --v96;
            }

            while (result.n128_f64[0] > v97);
            v96->n128_u64[0] = v95;
            v96->n128_u64[1] = result.n128_u64[0];
          }

          ++v58;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v68 = (v13 - 2) >> 1;
        v69 = v68;
        do
        {
          v70 = v69;
          if (v68 >= v69)
          {
            v71 = (2 * v69) | 1;
            v72 = &v12[v71];
            if (2 * v70 + 2 < v13 && v72->n128_f64[1] > v72[1].n128_f64[1])
            {
              ++v72;
              v71 = 2 * v70 + 2;
            }

            v73 = &v12[v70];
            v74 = v73->n128_f64[1];
            if (v72->n128_f64[1] <= v74)
            {
              v75 = v73->n128_u64[0];
              do
              {
                v76 = v73;
                v73 = v72;
                *v76 = *v72;
                if (v68 < v71)
                {
                  break;
                }

                v77 = 2 * v71;
                v71 = (2 * v71) | 1;
                v72 = &v12[v71];
                v78 = v77 + 2;
                if (v78 < v13 && v72->n128_f64[1] > v72[1].n128_f64[1])
                {
                  ++v72;
                  v71 = v78;
                }
              }

              while (v72->n128_f64[1] <= v74);
              v73->n128_u64[0] = v75;
              v73->n128_f64[1] = v74;
            }
          }

          v69 = v70 - 1;
        }

        while (v70);
        do
        {
          v79 = 0;
          v118 = *v12;
          v80 = v12;
          do
          {
            v81 = &v80[v79];
            v82 = v81 + 1;
            v83 = (2 * v79) | 1;
            v79 = 2 * v79 + 2;
            if (v79 >= v13)
            {
              v79 = v83;
            }

            else
            {
              v84 = v81[1].n128_f64[1];
              v85 = v81[2].n128_f64[1];
              v86 = v81 + 2;
              if (v84 <= v85)
              {
                v79 = v83;
              }

              else
              {
                v82 = v86;
              }
            }

            *v80 = *v82;
            v80 = v82;
          }

          while (v79 <= ((v13 - 2) >> 1));
          if (v82 == --a2)
          {
            result = v118;
            *v82 = v118;
          }

          else
          {
            *v82 = *a2;
            result = v118;
            *a2 = v118;
            v87 = (v82 - v12 + 16) >> 4;
            v88 = v87 < 2;
            v89 = v87 - 2;
            if (!v88)
            {
              v90 = v89 >> 1;
              v91 = &v12[v90];
              result.n128_u64[0] = v82->n128_u64[1];
              if (v91->n128_f64[1] > result.n128_f64[0])
              {
                v92 = v82->n128_u64[0];
                do
                {
                  v93 = v82;
                  v82 = v91;
                  *v93 = *v91;
                  if (!v90)
                  {
                    break;
                  }

                  v90 = (v90 - 1) >> 1;
                  v91 = &v12[v90];
                }

                while (v91->n128_f64[1] > result.n128_f64[0]);
                v82->n128_u64[0] = v92;
                v82->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v88 = v13-- <= 2;
        }

        while (!v88);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_f64[1];
    if (v13 >= 0x81)
    {
      v16 = v14->n128_f64[1];
      if (v16 <= v12->n128_f64[1])
      {
        if (v15 > v16)
        {
          v100 = *v14;
          *v14 = *v9;
          *v9 = v100;
          if (v14->n128_f64[1] > v12->n128_f64[1])
          {
            v101 = *v12;
            *v12 = *v14;
            *v14 = v101;
          }
        }
      }

      else
      {
        if (v15 > v16)
        {
          v98 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v104 = *v12;
        *v12 = *v14;
        *v14 = v104;
        if (a2[-1].n128_f64[1] > v14->n128_f64[1])
        {
          v98 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v98;
        }
      }

      v18 = v14 - 1;
      v19 = v14[-1].n128_f64[1];
      v20 = a2[-2].n128_f64[1];
      if (v19 <= v12[1].n128_f64[1])
      {
        if (v20 > v19)
        {
          v105 = *v18;
          *v18 = *v10;
          *v10 = v105;
          if (v14[-1].n128_f64[1] > v12[1].n128_f64[1])
          {
            v22 = v12[1];
            v12[1] = *v18;
            *v18 = v22;
          }
        }
      }

      else
      {
        if (v20 > v19)
        {
          v21 = v12[1];
          v12[1] = *v10;
          goto LABEL_38;
        }

        v23 = v12[1];
        v12[1] = *v18;
        *v18 = v23;
        if (a2[-2].n128_f64[1] > v14[-1].n128_f64[1])
        {
          v107 = *v18;
          *v18 = *v10;
          v21 = v107;
LABEL_38:
          *v10 = v21;
        }
      }

      v24 = v14[1].n128_f64[1];
      v25 = a2[-3].n128_f64[1];
      if (v24 <= v12[2].n128_f64[1])
      {
        if (v25 > v24)
        {
          v108 = v14[1];
          v14[1] = *v11;
          *v11 = v108;
          if (v14[1].n128_f64[1] > v12[2].n128_f64[1])
          {
            v27 = v12[2];
            v12[2] = v14[1];
            v14[1] = v27;
          }
        }
      }

      else
      {
        if (v25 > v24)
        {
          v26 = v12[2];
          v12[2] = *v11;
          goto LABEL_47;
        }

        v28 = v12[2];
        v12[2] = v14[1];
        v14[1] = v28;
        if (a2[-3].n128_f64[1] > v14[1].n128_f64[1])
        {
          v109 = v14[1];
          v14[1] = *v11;
          v26 = v109;
LABEL_47:
          *v11 = v26;
        }
      }

      v29 = v14->n128_f64[1];
      v30 = v14[1].n128_f64[1];
      if (v29 <= v14[-1].n128_f64[1])
      {
        if (v30 > v29)
        {
          v111 = *v14;
          *v14 = v14[1];
          v14[1] = v111;
          if (v14->n128_f64[1] > v14[-1].n128_f64[1])
          {
            v112 = *v18;
            *v18 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v30 > v29)
        {
          v110 = *v18;
          *v18 = v14[1];
          goto LABEL_56;
        }

        v113 = *v18;
        *v18 = *v14;
        *v14 = v113;
        if (v14[1].n128_f64[1] > v14->n128_f64[1])
        {
          v110 = *v14;
          *v14 = v14[1];
LABEL_56:
          v14[1] = v110;
        }
      }

      v114 = *v12;
      *v12 = *v14;
      result.n128_u64[1] = v114.n128_u64[1];
      *v14 = v114;
      goto LABEL_58;
    }

    v17 = v12->n128_f64[1];
    if (v17 <= v14->n128_f64[1])
    {
      if (v15 > v17)
      {
        v102 = *v12;
        *v12 = *v9;
        result.n128_u64[1] = v102.n128_u64[1];
        *v9 = v102;
        if (v12->n128_f64[1] > v14->n128_f64[1])
        {
          v103 = *v14;
          *v14 = *v12;
          result.n128_u64[1] = v103.n128_u64[1];
          *v12 = v103;
        }
      }

      goto LABEL_58;
    }

    if (v15 > v17)
    {
      v99 = *v14;
      *v14 = *v9;
LABEL_35:
      result.n128_u64[1] = v99.n128_u64[1];
      *v9 = v99;
      goto LABEL_58;
    }

    v106 = *v14;
    *v14 = *v12;
    result.n128_u64[1] = v106.n128_u64[1];
    *v12 = v106;
    if (a2[-1].n128_f64[1] > v12->n128_f64[1])
    {
      v99 = *v12;
      *v12 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u64[0] = v12->n128_u64[1];
LABEL_61:
      v31 = v12->n128_u64[0];
      v32 = v12;
      do
      {
        v33 = v32++;
      }

      while (v33[1].n128_f64[1] > result.n128_f64[0]);
      v34 = a2;
      if (v33 == v12)
      {
        v37 = a2;
        while (v32 < v37)
        {
          v35 = v37 - 1;
          v38 = v37[-1].n128_f64[1];
          --v37;
          if (v38 > result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v35 = v37;
      }

      else
      {
        do
        {
          v35 = v34 - 1;
          v36 = v34[-1].n128_f64[1];
          --v34;
        }

        while (v36 <= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v32;
      if (v32 < v35)
      {
        v39 = v35;
        do
        {
          v40 = *v12;
          *v12 = *v39;
          *v39 = v40;
          do
          {
            v41 = v12[1].n128_f64[1];
            ++v12;
          }

          while (v41 > result.n128_f64[0]);
          do
          {
            v42 = v39[-1].n128_f64[1];
            --v39;
          }

          while (v42 <= result.n128_f64[0]);
        }

        while (v12 < v39);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u64[0] = v31;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v32 < v35)
      {
        goto LABEL_82;
      }

      v43 = sub_4DBEA0(a1, v12 - 1, result);
      if (sub_4DBEA0(v12, a2, v44))
      {
        a2 = v12 - 1;
        if (!v43)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v43)
      {
LABEL_82:
        sub_4DB20C(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u64[0] = v12->n128_u64[1];
      if (v12[-1].n128_f64[1] > result.n128_f64[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f64[0] <= a2[-1].n128_f64[1])
      {
        v47 = v12 + 1;
        do
        {
          v12 = v47;
          if (v47 >= a2)
          {
            break;
          }

          v48 = v47->n128_f64[1];
          ++v47;
        }

        while (result.n128_f64[0] <= v48);
      }

      else
      {
        v45 = v12;
        do
        {
          v12 = v45 + 1;
          v46 = v45[1].n128_f64[1];
          ++v45;
        }

        while (result.n128_f64[0] <= v46);
      }

      v49 = a2;
      if (v12 < a2)
      {
        v50 = a2;
        do
        {
          v49 = v50 - 1;
          v51 = v50[-1].n128_f64[1];
          --v50;
        }

        while (result.n128_f64[0] > v51);
      }

      v52 = a1->n128_u64[0];
      while (v12 < v49)
      {
        v115 = *v12;
        *v12 = *v49;
        *v49 = v115;
        do
        {
          v53 = v12[1].n128_f64[1];
          ++v12;
        }

        while (result.n128_f64[0] <= v53);
        do
        {
          v54 = v49[-1].n128_f64[1];
          --v49;
        }

        while (result.n128_f64[0] > v54);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v52;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  result.n128_u64[0] = v12[1].n128_u64[1];
  v55 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] <= v12->n128_f64[1])
  {
    if (v55 <= result.n128_f64[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
    *v9 = result;
    goto LABEL_187;
  }

  if (v55 > result.n128_f64[0])
  {
    goto LABEL_111;
  }

  v120 = *v12;
  *v12 = v12[1];
  result.n128_u64[1] = v120.n128_u64[1];
  v12[1] = v120;
  result.n128_u64[0] = a2[-1].n128_u64[1];
  if (result.n128_f64[0] > v12[1].n128_f64[1])
  {
    result = v12[1];
    v12[1] = *v9;
    goto LABEL_112;
  }

  return result;
}

__n128 sub_4DBD1C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 <= a1->n128_f64[1])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] > a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f64[1] > a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] > a3->n128_f64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f64[1] > a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] > a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] > a4->n128_f64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] > a3->n128_f64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] > a2->n128_f64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] > a1->n128_f64[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_4DBEA0(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_f64[1];
      v7 = a2[-1].n128_f64[1];
      if (v6 > a1->n128_f64[1])
      {
        if (v7 <= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_f64[1] <= a1[1].n128_f64[1])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 <= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_f64[1] > a1->n128_f64[1])
      {
        v36 = *a1;
        *a1 = a1[1];
        a1[1] = v36;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_4DBD1C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_f64[1];
    v15 = a1->n128_f64[1];
    v16 = a1[2].n128_f64[1];
    if (v14 <= v15)
    {
      if (v16 > v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_f64[1] > v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 <= v14)
    {
      v33 = *a1;
      *a1 = a1[1];
      a1[1] = v33;
      if (v16 <= a1[1].n128_f64[1])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_f64[1] <= a1[2].n128_f64[1])
    {
      return 1;
    }

    v34 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v34;
    if (a1[2].n128_f64[1] <= a1[1].n128_f64[1])
    {
      return 1;
    }

    v35 = a1[1];
    a1[1] = a1[2];
    a1[2] = v35;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f64[1] > a1->n128_f64[1])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_f64[1];
  v11 = a1->n128_f64[1];
  v12 = a1[2].n128_f64[1];
  if (v10 <= v11)
  {
    if (v12 > v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_f64[1] > v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 <= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 <= a1[1].n128_f64[1])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_f64[1];
    if (v28 > v9->n128_f64[1])
    {
      v29 = v25->n128_u64[0];
      v30 = v26;
      while (1)
      {
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v31 = *(&a1[1].n128_f64[1] + v30);
        v30 -= 16;
        if (v28 <= v31)
        {
          v32 = &a1[3] + v30;
          goto LABEL_41;
        }
      }

      v32 = a1;
LABEL_41:
      *v32 = v29;
      *(v32 + 8) = v28;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_4DC198(uint64_t a1)
{
  if (!a1)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PhysicalDeviceUtilities.cpp";
        v13 = 1024;
        v14 = 319;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: RoutingHandlerAction passed clientData as NULL.", buf, 0x12u);
      }
    }
  }

  v2 = sub_8703C();
  v3 = (*(*v2 + 152))(v2);
  v4 = sub_5544(10);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "disabled";
    if (v3)
    {
      v6 = "enabled";
    }

    v7 = "on";
    *buf = 136315906;
    *&buf[4] = "PhysicalDeviceUtilities.cpp";
    v13 = 1024;
    v14 = 83;
    v16 = v6;
    v15 = 2080;
    if (v3)
    {
      v7 = "off";
    }

    v17 = 2080;
    v18 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Low Power Mode %s, turning %s always listening", buf, 0x26u);
  }

  v11 = v3 ^ 1;
  strcpy(buf, "lepdbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  return (*(*a1 + 48))(a1, buf, 0, 0, 4, &v11);
}

void sub_4DC394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  for (i = a6[1]; i != a6; i = i[1])
  {
    v13 = i[3];
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = v14;
        v16 = i[2];
        if (v16)
        {
          if ((*(*v16 + 16))(i[2], a1))
          {
            (*(*v16 + 48))(v16, a1, a2, a3, a4, a5);
          }
        }

        sub_1A8C0(v15);
      }
    }
  }
}

uint64_t sub_4DC4A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  for (i = a4[1]; i != a4; i = i[1])
  {
    v9 = i[3];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = i[2];
        if (v12 && (*(*v12 + 16))(i[2], a1))
        {
          v13 = (*(*v12 + 32))(v12, a1, a2, a3);
          sub_1A8C0(v11);
          return v13;
        }

        sub_1A8C0(v11);
      }
    }
  }

  return 0;
}

void sub_4DC5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a6[1];
  if (v6 == a6)
  {
    return;
  }

  while (1)
  {
    v13 = v6[3];
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = std::__shared_weak_count::lock(v13);
    if (!v14)
    {
      goto LABEL_7;
    }

    v15 = v14;
    v16 = v6[2];
    if (v16)
    {
      if ((*(*v16 + 16))(v6[2], a1))
      {
        break;
      }
    }

    sub_1A8C0(v15);
LABEL_7:
    v6 = v6[1];
    if (v6 == a6)
    {
      return;
    }
  }

  (*(*v16 + 40))(v16, a1, a2, a3, a4, a5);

  sub_1A8C0(v15);
}

void sub_4DC6FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_24B7DC(a1, a2);
  *(a1 + 640) = 0;
  *(a1 + 644) = 0;
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v4 == v5)
  {
    return;
  }

  while (1)
  {
    v6 = **v4;
    if (sub_A03F8(*v4, v2, (a1 + 624), (a1 + 632)))
    {
      break;
    }

LABEL_19:
    v4 += 2;
    if (v4 == v5)
    {
      return;
    }
  }

  if (*(a1 + 140) != 1 || *(a1 + 136) != v6)
  {
    if (*(a1 + 644) == 1)
    {
      v7 = sub_5544(24);
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
        {
          sub_22170(__p, *(a1 + 640));
          v9 = __p;
          if (v17 < 0)
          {
            v9 = __p[0];
          }

          *buf = 136315650;
          v19 = "Port_MicrophoneBuiltIn_Aspen.cpp";
          v20 = 1024;
          v21 = 230;
          v22 = 2080;
          v23 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Active sub-port client ID already exists %s.", buf, 0x1Cu);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    v10 = sub_5544(24);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, v6);
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      *buf = 136315650;
      v19 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v20 = 1024;
      v21 = 231;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Setting active sub-port client ID %s.", buf, 0x1Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 640) = v6;
    *(a1 + 644) = 1;
    goto LABEL_19;
  }

  v13 = sub_5544(24);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
  {
    sub_22170(__p, v6);
    v15 = v17 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v19 = "Port_MicrophoneBuiltIn_Aspen.cpp";
    v20 = 1024;
    v21 = 224;
    v22 = 2080;
    v23 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Found matching preferred client ID. Setting active sub-port client ID %s.", buf, 0x1Cu);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 640) = v6;
  *(a1 + 644) = 1;
}

void sub_4DC9E4(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 1870033508)
  {
    v4 = sub_5544(24);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v14 = 1024;
      v15 = 391;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Looking up runtime override for built-in mic data sources", buf, 0x12u);
    }

    sub_2883D8(a3);
    if (*a3 == a3[1])
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, 0x6F767264u);
        if (v11 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 136315906;
        v13 = "Port_MicrophoneBuiltIn_Aspen.cpp";
        v14 = 1024;
        v15 = 393;
        v16 = 2080;
        v17 = v8;
        v18 = 1024;
        v19 = 1870033508;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not translate data sources for sub-port ID:%s (%u)", buf, 0x22u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Could not translate data sources for sub-port ID:%s (%u)");
    }
  }

  else
  {

    sub_24BC08(a1, a2, a3);
  }
}

void sub_4DCC0C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_4DCC48(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5)
{
  v10 = sub_5544(24);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    v12 = &v55;
    sub_22170(&v55, a3);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v55.__r_.__value_.__r.__words[0];
    }

    v13 = &v54;
    sub_23148(&v54, (a1 + 8));
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v54.__r_.__value_.__r.__words[0];
    }

    if (*(a4 + 4) == 1)
    {
      sub_22170(__p, *a4);
      if (v53 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136316162;
      v57 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v58 = 1024;
      v59 = 307;
      v60 = 2080;
      v61 = v12;
      v62 = 2080;
      v63 = v13;
      v64 = 2080;
      v65 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Setting preferred sub-port: %s on port: %s with preferred polar pattern: %s", buf, 0x30u);
      if (v53 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136316162;
      v57 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v58 = 1024;
      v59 = 307;
      v60 = 2080;
      v61 = v12;
      v62 = 2080;
      v63 = v13;
      v64 = 2080;
      v65 = "none";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Setting preferred sub-port: %s on port: %s with preferred polar pattern: %s", buf, 0x30u);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }
  }

  (*(*a1 + 224))(a1);
  sub_4DD4D8(&v50, a3, *(a1 + 96), *(a1 + 104));
  v15 = v50;
  if (!v50)
  {
    v36 = sub_5544(14);
    v37 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&v55, a3);
      v38 = SHIBYTE(v55.__r_.__value_.__r.__words[2]);
      v39 = v55.__r_.__value_.__r.__words[0];
      sub_22170(&v54, *(a1 + 144));
      v40 = &v55;
      if (v38 < 0)
      {
        v40 = v39;
      }

      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v54;
      }

      else
      {
        v41 = v54.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v57 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v58 = 1024;
      v59 = 314;
      v60 = 2080;
      v61 = v40;
      v62 = 2080;
      v63 = v41;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [subPort is NULL]: Attempt to set unknown sub-port (%s) preferred on port with type %s.", buf, 0x26u);
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to set unknown sub-port (%s) preferred on port with type %s.");
  }

  if (*(a4 + 4) == 1)
  {
    buf[0] = 0;
    LOBYTE(v57) = 0;
    v16 = sub_4D8FFC(v50, buf, a4);
    if (!v16)
    {
      v43 = sub_5544(14);
      v44 = *v43;
      if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v55, *a4);
        v45 = SHIBYTE(v55.__r_.__value_.__r.__words[2]);
        v46 = v55.__r_.__value_.__r.__words[0];
        sub_4D89A4(&v54, v15);
        v47 = &v55;
        if (v45 < 0)
        {
          v47 = v46;
        }

        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &v54;
        }

        else
        {
          v48 = v54.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        v57 = "Port_MicrophoneBuiltIn_Aspen.cpp";
        v58 = 1024;
        v59 = 321;
        v60 = 2080;
        v61 = v47;
        v62 = 2080;
        v63 = v48;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [config is NULL]: Invalid pattern %s for sub-port %s", buf, 0x26u);
        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }
      }

      v49 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v49, "Invalid pattern %s for sub-port %s");
    }

    for (i = *(v16 + 40); ; ++i)
    {
      if (i == *(v16 + 48))
      {
        v18 = *a4;
        *(a1 + 636) = *(a4 + 4);
        *(a1 + 632) = v18;
        goto LABEL_26;
      }

      if (*i == a2)
      {
        break;
      }
    }

    v28 = sub_5544(24);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_INFO))
    {
      v30 = *a4;
      v31 = &v55;
      sub_22170(&v55, v30);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v55.__r_.__value_.__r.__words[0];
      }

      sub_4D89A4(&v54, v15);
      v32 = SHIBYTE(v54.__r_.__value_.__r.__words[2]);
      v33 = v54.__r_.__value_.__r.__words[0];
      sub_22170(__p, a2);
      v34 = &v54;
      if (v32 < 0)
      {
        v34 = v33;
      }

      if (v53 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      *buf = 136316162;
      v57 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v58 = 1024;
      v59 = 335;
      v60 = 2080;
      v61 = v31;
      v62 = 2080;
      v63 = v34;
      v64 = 2080;
      v65 = v35;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%25s:%-5d Ignoring set of polar pattern: %s on sub-port %s, because it is not allowed for the current mode: %s", buf, 0x30u);
      if (v53 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_26:
  *(a1 + 136) = a3;
  *(a1 + 140) = 1;
  *(a1 + 128) = sub_4D9298(v15, a1 + 632);
  *(a1 + 132) = 1;
  if (*(a1 + 636) == 1)
  {
    buf[0] = 0;
    LOBYTE(v57) = 0;
    v19 = sub_4D8FFC(v15, buf, a1 + 632);
    goto LABEL_33;
  }

  v19 = *(v15 + 32);
  v20 = *(v15 + 40);
  if ((v20 - v19) < 0x41 || v19 == v20)
  {
LABEL_33:
    v21 = v19;
    if (!v19)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v21 = *(v15 + 32);
  while (*(v21 + 32) != 1869442665)
  {
    v21 += 64;
    if (v21 == v20)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  v19 = sub_4D91A8(*(v21 + 36));
LABEL_35:
  *(a1 + 624) = v19;
  *(a1 + 628) = BYTE4(v19);
  if (*(v15 + 8) >= 2)
  {
    v22 = sub_5544(24);
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        sub_4D89A4(&v55, v15);
        v24 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v55 : v55.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v57 = "Port_MicrophoneBuiltIn_Aspen.cpp";
        v58 = 1024;
        v59 = 344;
        v60 = 2080;
        v61 = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client has set a preferred sub-port that does not have client scope: %s", buf, 0x1Cu);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v25 = sub_809C0();
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_257DAC(v25, 0x70707570u, v26, v27, a5);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (v51)
  {
    sub_1A8C0(v51);
  }
}

void sub_4DD3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4DD4D8(void *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    while (**a3 != a2)
    {
      a3 += 16;
      if (a3 == a4)
      {
        goto LABEL_4;
      }
    }
  }

  if (a3 == a4)
  {
LABEL_4:
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      if (v11 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315650;
      v13 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v14 = 1024;
      v15 = 115;
      v16 = 2080;
      v17 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not find sub-port with client ID: %s for built-in mic port", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find sub-port with client ID: %s for built-in mic port");
  }

  v8 = *(a3 + 8);
  *result = *a3;
  result[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_4DD678(uint64_t a1, int a2, float a3)
{
  v4 = a3;
  v5 = 1;
  return sub_9F584(a1, a2, &v4);
}

uint64_t sub_4DD6A8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (*a2 != 1165513555)
  {
    if (a2[1] == 1735159650)
    {
      v10 = a2[2];
      if (v5 == 1886282093)
      {
        if (v10)
        {
          return 0;
        }
      }

      else if (v5 != 1886614625 && v5 != 1886613101 || v10 != 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  v8 = *(a1 + 200);
  v14[0] = *(a1 + 192);
  v14[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v15, v14, "", 535);
  v9 = (*(*v15 + 64))(v15, a2, a3, a4);
  if (v16)
  {
    sub_1A8C0(v16);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return v9;
}

void sub_4DD7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4DD7FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (*a2 != 1165513555)
  {
    if (a2[1] == 1735159650)
    {
      v10 = a2[2];
      if (v5 == 1886282093)
      {
        if (v10)
        {
          return 0;
        }
      }

      else if (v5 != 1886614625 && v5 != 1886613101 || v10 != 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  v8 = *(a1 + 200);
  v14[0] = *(a1 + 192);
  v14[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v15, v14, "", 519);
  v9 = (*(*v15 + 56))(v15, a2, a3, a4);
  if (v16)
  {
    sub_1A8C0(v16);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return v9;
}

void sub_4DD924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_4DD950(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v21 = *a2;
      v24 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      v25 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561211770;
  }

  if (!a6)
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v23 = *a2;
      v26 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 561211770;
  }

  if (*a2 == 1165513555)
  {
    v13 = a1[24];
    v14 = a1[25];
    __p[0] = v13;
    __p[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(buf, __p, "", 504);
    (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
    if (v29)
    {
      sub_1A8C0(v29);
    }

    if (v14)
    {

      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {

    sub_24DFD8(a1, a2, a3, a4, v12, a6);
  }
}

void sub_4DDE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4DDEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v18 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *a2;
      v19 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = 561211770;
  }

  if (*a2 == 1165513555)
  {
    v8 = a1[24];
    v9 = a1[25];
    __p[0] = v8;
    __p[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(buf, __p, "", 484);
    v10 = (*(**buf + 32))(*buf, a2, a3, a4);
    if (v22)
    {
      sub_1A8C0(v22);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
    sub_24E33C(a1, a2, a3, a4);
    return 0;
  }

  return v10;
}

void sub_4DE224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4DE258(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1165513555)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  v6[0] = *(a1 + 192);
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v7, v6, "", 466);
  v4 = (*(*v7 + 24))(v7, a2);
  if (v8)
  {
    sub_1A8C0(v8);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return v4;
}

void sub_4DE318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_4DE344(uint64_t a1)
{
  *a1 = off_6DC690;
  v2 = (a1 + 592);
  sub_72C14(&v2);
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_4DE3C0(uint64_t a1)
{
  *a1 = off_6DC690;
  v3 = (a1 + 592);
  sub_72C14(&v3);

  return sub_24EBDC(a1);
}

uint64_t sub_4DE428(uint64_t a1)
{
  sub_2883D8(&v28);
  v2 = v28;
  v3 = v29;
  if (v28 == v29)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v32 = 1024;
      v33 = 415;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Expected non-empty result from Defaults_GetOverriddenBuiltInMicSubPorts", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Expected non-empty result from Defaults_GetOverriddenBuiltInMicSubPorts");
  }

  v4 = sub_5544(24);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    sub_10898C(&__p, v2, v3);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v31 = "Port_MicrophoneBuiltIn_Aspen.cpp";
    v32 = 1024;
    v33 = 416;
    v34 = 2080;
    v35 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to find an internal ID for data sources specified by preference: %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  if (v7 == v8)
  {
LABEL_24:
    v17 = sub_5544(24);
    v14 = 1870033508;
    v18 = *v17;
    if (!*v17 || !os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    sub_22170(&__p, 0x6F767264u);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v31 = "Port_MicrophoneBuiltIn_Aspen.cpp";
    v32 = 1024;
    v33 = 432;
    v34 = 2080;
    v35 = p_p;
    v20 = "%25s:%-5d Did not find a matching internal ID for data sources specified by preference.  Using %s";
  }

  else
  {
    v9 = v3 - v2;
LABEL_11:
    v10 = *(*v7 + 32);
    v11 = *(*v7 + 40);
    while (1)
    {
      if (v10 == v11)
      {
        v7 += 16;
        if (v7 != v8)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }

      v12 = *(v10 + 1);
      v13 = *(v10 + 2) - v12;
      v14 = *v10;
      v15 = v14 == 1634495520 || v13 == 4;
      v16 = v15 && v9 == v13;
      if (v16 && !memcmp(v2, v12, v9))
      {
        break;
      }

      v10 += 16;
    }

    v21 = sub_5544(24);
    v18 = *v21;
    if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    sub_22170(&__p, v14);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v31 = "Port_MicrophoneBuiltIn_Aspen.cpp";
    v32 = 1024;
    v33 = 426;
    v34 = 2080;
    v35 = v22;
    v20 = "%25s:%-5d Found matching internal ID: %s";
  }

  _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, v20, buf, 0x1Cu);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_38:
  if (v2)
  {
    operator delete(v2);
  }

  return v14;
}

void sub_4DE7B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4DE7FC(uint64_t a1)
{
  sub_4DD4D8(buf, 0x6D633032u, *(a1 + 96), *(a1 + 104));
  v3 = *buf;
  if (*buf)
  {
    v1 = sub_4D9298(*buf, a1 + 632);
  }

  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (!v3)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v7 = v17;
      sub_22170(v17, 0x6D633032u);
      if (v18 < 0)
      {
        v7 = v17[0];
      }

      sub_22170(v15, *(a1 + 144));
      v8 = v16;
      v9 = v15[0];
      sub_22170(__p, 0x6D633032u);
      v10 = v15;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136316162;
      *&buf[4] = "Port_MicrophoneBuiltIn_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 442;
      v20 = 2080;
      v21 = v7;
      v22 = 2080;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to set unknown sub-port (%s) preferred override on port with type %s. Requested sub-port: %s", buf, 0x30u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to set unknown sub-port (%s) preferred override on port with type %s. Requested sub-port: %s");
  }

  return v1;
}

void sub_4DEA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4DEA5C(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_4DEA98(uint64_t a1, unsigned int a2)
{
  if (a2 != 1885434467)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_VirtualEARC_Aspen.cpp";
      v14 = 1024;
      v15 = 72;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_VirtualEARC_Aspen.cpp";
      v14 = 1024;
      v15 = 73;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_4DEC6C(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if ((*(*a1 + 88))(a1, 0))
  {
    sub_15DD68();
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "Device_VirtualEARC_Aspen.cpp";
      v7 = 1024;
      v8 = 47;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Virtual eARC device has no input streams.", &buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Virtual eARC device has no input streams.");
}

void sub_4DF048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_4DF0F4(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

void sub_4DF130(void *a1, uint64_t a2)
{
  sub_EE24C(&cf, a2);
  sub_EF3F8(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_4DF17C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22A300(va);
  _Unwind_Resume(a1);
}

void sub_4DF190(uint64_t a1, uint64_t a2)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 1065353216;
  sub_53E8(buf, "");
  sub_53E8(cf, "");
  sub_53E8(&v12, off_6E4C30);
  sub_53E8(&v11, "AU");
  sub_53E8(&__p, "VAD");
  sub_1E15A0(__dst, buf, cf, &v12, &v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(cf[0]);
  }

  if ((v26[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_4DF130(cf, a2);
  if (!cf[0])
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 136315650;
      *&buf[4] = "DSPGraphConfig_Utilities.cpp";
      v25 = 1024;
      *v26 = 46;
      *&v26[4] = 2080;
      *&v26[6] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Failed to load CFDictionary from path %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Failed to load CFDictionary from path %s");
  }

  sub_4DF6C8(buf, cf, __dst);
  sub_1E1D48(&v21, buf);
  sub_1E01C4(*&v26[2]);
  v4 = *buf;
  *buf = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  sub_1E2718(a1, &v21);
  if (SHIBYTE(v16) < 0)
  {
    sub_54A0((a1 + 40), __dst[0], __dst[1]);
  }

  else
  {
    *(a1 + 40) = *__dst;
    *(a1 + 56) = v16;
  }

  if (SHIBYTE(v18) < 0)
  {
    sub_54A0((a1 + 64), v17, *(&v17 + 1));
  }

  else
  {
    *(a1 + 64) = v17;
    *(a1 + 80) = v18;
  }

  if (SHIBYTE(v20) < 0)
  {
    sub_54A0((a1 + 88), v19, *(&v19 + 1));
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }
  }

  else
  {
    *(a1 + 88) = v19;
    *(a1 + 104) = v20;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1E01C4(v22);
  v5 = v21;
  *&v21 = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_4DF4B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v21 = va_arg(va1, const void *);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  sub_4BA7C(va);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    v17 = sub_5544(21);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      v19 = (*(*v16 + 16))(v16);
      *(v13 - 96) = 136315906;
      v20 = v13 - 144;
      *(v20 + 52) = "DSPGraphConfig_Utilities.cpp";
      *(v13 - 84) = 1024;
      *(v20 + 62) = 51;
      *(v13 - 78) = 2080;
      *(v20 + 68) = v12;
      *(v13 - 68) = 2080;
      *(v20 + 78) = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception getting configuration data from %s : %s", (v13 - 96), 0x26u);
    }

    __cxa_rethrow();
  }

  sub_1E19A0(va1);
  sub_1E0188(v13 - 144);
  _Unwind_Resume(a1);
}

void sub_4DF63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
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

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  sub_1E0188(v33 - 144);
  _Unwind_Resume(a1);
}

void sub_4DF6C8(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v4 = *a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = a1;
  sub_36CA70(&v144, v4, "CommonData");
  if ((v145 & 1) == 0)
  {
    v128 = sub_5544(14);
    v129 = *v128;
    if (*v128 && os_log_type_enabled(*v128, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "DSPGraphConfig_Utilities.cpp";
      *&cf[12] = 1024;
      *&cf[14] = 655;
      _os_log_impl(&dword_0, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unable to find CommonData dictionary", cf, 0x12u);
    }

    v130 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v130, "Unable to find CommonData dictionary");
  }

  sub_53E8(v182, "");
  sub_53E8(buf, "");
  sub_53E8(&v139, off_6E4C30);
  sub_53E8(&v188, "AU");
  sub_53E8(&__p, "VAD");
  sub_1E15A0(cf, v182, buf, &v139, &v188, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((v182[23] & 0x80000000) != 0)
  {
    operator delete(*v182);
  }

  v7 = v144;
  if (!v144)
  {
    v131 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v131, "Could not construct");
  }

  if (!sub_47D0C(v144, "tuningPath"))
  {
    v132 = sub_5544(14);
    v133 = *v132;
    if (*v132 && os_log_type_enabled(*v132, OS_LOG_TYPE_ERROR))
    {
      *v182 = 136315394;
      *&v182[4] = "DSPGraphConfig_Utilities.cpp";
      *&v182[12] = 1024;
      *&v182[14] = 450;
      _os_log_impl(&dword_0, v133, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v182, 0x12u);
    }

LABEL_333:
    v136 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v136, "Precondition failure.");
  }

  if (!sub_47D0C(v7, "presetPath"))
  {
    v134 = sub_5544(14);
    v135 = *v134;
    if (*v134 && os_log_type_enabled(*v134, OS_LOG_TYPE_ERROR))
    {
      *v182 = 136315394;
      *&v182[4] = "DSPGraphConfig_Utilities.cpp";
      *&v182[12] = 1024;
      *&v182[14] = 451;
      _os_log_impl(&dword_0, v135, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v182, 0x12u);
    }

    goto LABEL_333;
  }

  sub_4E1D1C(v182, v7, "tuningPath");
  if (SHIBYTE(v159) < 0)
  {
    operator delete(v158);
  }

  v158 = *v182;
  v159 = *&v182[16];
  sub_4E1D1C(v182, v7, "presetPath");
  if (SHIBYTE(v161) < 0)
  {
    operator delete(v160);
  }

  v160 = *v182;
  v161 = *&v182[16];
  if (sub_47D0C(v7, "tuningFilePrefix"))
  {
    sub_4E1D1C(v182, v7, "tuningFilePrefix");
    if ((cf[23] & 0x80000000) != 0)
    {
      operator delete(*cf);
    }

    *cf = *v182;
    *&cf[16] = *&v182[16];
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *cf;
  *(a3 + 16) = *&cf[16];
  cf[23] = 0;
  cf[0] = 0;
  if (*(a3 + 47) < 0)
  {
    operator delete(*(a3 + 24));
  }

  *(a3 + 24) = v158;
  *(a3 + 40) = v159;
  HIBYTE(v159) = 0;
  LOBYTE(v158) = 0;
  if (*(a3 + 71) < 0)
  {
    operator delete(*(a3 + 48));
    v8 = SHIBYTE(v159);
    *(a3 + 48) = v160;
    *(a3 + 64) = v161;
    HIBYTE(v161) = 0;
    LOBYTE(v160) = 0;
    if (v8 < 0)
    {
      operator delete(v158);
    }
  }

  else
  {
    *(a3 + 48) = v160;
    *(a3 + 64) = v161;
    HIBYTE(v161) = 0;
    LOBYTE(v160) = 0;
  }

  if ((cf[23] & 0x80000000) != 0)
  {
    operator delete(*cf);
  }

  v9 = *a2;
  if (!*a2)
  {
    v137 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v137, "Could not construct");
  }

  *cf = 0;
  sub_4E1B90(&theDict, v9, "Configurations", cf);
  if (*cf)
  {
    CFRelease(*cf);
  }

  v10 = theDict;
  sub_36C454(v182, theDict);
LABEL_38:
  sub_36C454(cf, v10);
  v11 = *&cf[16];
  *&cf[8] = (v158 - *&cf[16]) >> 3;
  v12 = !*v182 || *&v182[8] == (v183 - *&v182[16]) >> 3 || *v182 == *cf && *&v182[8] == (v158 - *&cf[16]) >> 3;
  if (v159)
  {
    *&v160 = v159;
    operator delete(v159);
    v11 = *&cf[16];
  }

  if (v11)
  {
    *&v158 = v11;
    operator delete(v11);
  }

  if (!v12)
  {
    sub_4E1C0C(cf, v182);
    if ((cf[23] & 0x80000000) != 0)
    {
      sub_54A0(__dst, *cf, *&cf[8]);
    }

    else
    {
      *__dst = *cf;
      v142 = *&cf[16];
    }

    if (v158)
    {
      CFRelease(v158);
    }

    if ((cf[23] & 0x80000000) != 0)
    {
      operator delete(*cf);
    }

    sub_4E1C0C(&v139, v182);
    sub_3C1934(cf);
    if (!v140)
    {
      v100 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v100, "Could not construct");
    }

    if (!sub_47D0C(v140, "graph"))
    {
      v97 = sub_5544(14);
      v98 = *v97;
      if (*v97 && os_log_type_enabled(*v97, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPGraphConfig_Utilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 469;
        _os_log_impl(&dword_0, v98, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v99 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v99, "Precondition failure.");
    }

    if (!v140)
    {
      v101 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v101, "Could not construct");
    }

    sub_4E1D1C(buf, v140, "graph");
    if ((cf[23] & 0x80000000) != 0)
    {
      operator delete(*cf);
    }

    *cf = *buf;
    *&cf[16] = *&buf[16];
    if (!v140)
    {
      v102 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v102, "Could not construct");
    }

    if (sub_47D0C(v140, "austrip"))
    {
      if (!v140)
      {
        v112 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v112, "Could not construct");
      }

      sub_4E1D1C(buf, v140, "austrip");
      if (SHIBYTE(v161) < 0)
      {
        operator delete(v160);
      }

      v160 = *buf;
      v161 = *&buf[16];
    }

    if (!v140)
    {
      v95 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v95, "Could not construct");
    }

    if (sub_47D0C(v140, "propstrip"))
    {
      if (!v140)
      {
        v115 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v115, "Could not construct");
      }

      sub_4E1D1C(buf, v140, "propstrip");
      if (SHIBYTE(v163) < 0)
      {
        operator delete(v162);
      }

      v162 = *buf;
      v163 = *&buf[16];
    }

    if (!v140)
    {
      v96 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v96, "Could not construct");
    }

    if (sub_47D0C(v140, "metaparameter"))
    {
      if (!v140)
      {
        v113 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v113, "Could not construct");
      }

      sub_4E1D1C(buf, v140, "metaparameter");
      if (SHIBYTE(v165) < 0)
      {
        operator delete(v164);
      }

      v164 = *buf;
      v165 = *&buf[16];
    }

    if (!v140)
    {
      v103 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v103, "Could not construct");
    }

    if (sub_47D0C(v140, "properties"))
    {
      if (v140)
      {
        v14 = sub_22AC44(v140, "properties");
        if (v14)
        {
          v15 = v14;
          TypeID = CFArrayGetTypeID();
          if (TypeID == CFGetTypeID(v15))
          {
            Count = CFArrayGetCount(v15);
            memset(&v188, 0, sizeof(v188));
            sub_BDC9C(&v188, Count);
            if (Count >= 1)
            {
              v18 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
                sub_10FD4(&__p, ValueAtIndex);
                size = v188.__r_.__value_.__l.__size_;
                if (v188.__r_.__value_.__l.__size_ >= v188.__r_.__value_.__r.__words[2])
                {
                  v21 = (v188.__r_.__value_.__l.__size_ - v188.__r_.__value_.__r.__words[0]) >> 3;
                  v22 = v21 + 1;
                  if ((v21 + 1) >> 61)
                  {
                    sub_189A00();
                  }

                  v23 = v188.__r_.__value_.__r.__words[2] - v188.__r_.__value_.__r.__words[0];
                  if ((v188.__r_.__value_.__r.__words[2] - v188.__r_.__value_.__r.__words[0]) >> 2 > v22)
                  {
                    v22 = v23 >> 2;
                  }

                  if (v23 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v24 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v24 = v22;
                  }

                  *&buf[32] = &v188;
                  if (v24)
                  {
                    sub_1DB8DC(v24);
                  }

                  *buf = 0;
                  *&buf[8] = 8 * v21;
                  *&buf[24] = 0;
                  **&buf[8] = __p.__r_.__value_.__r.__words[0];
                  __p.__r_.__value_.__r.__words[0] = 0;
                  *&buf[16] = 8 * v21 + 8;
                  sub_76010(&v188, buf);
                  v25 = v188.__r_.__value_.__l.__size_;
                  sub_760C0(buf);
                  v188.__r_.__value_.__l.__size_ = v25;
                  if (__p.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(__p.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  *v188.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                  v188.__r_.__value_.__l.__size_ = size + 8;
                }

                ++v18;
              }

              while ((Count & 0x7FFFFFFF) != v18);
            }

            v27 = v188.__r_.__value_.__l.__size_;
            for (i = v188.__r_.__value_.__r.__words[0]; i != v27; ++i)
            {
              if (!*i)
              {
                v89 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v89, "Could not construct");
              }

              if (!sub_47D0C(*i, "ID"))
              {
                v92 = sub_5544(14);
                v93 = *v92;
                if (*v92 && os_log_type_enabled(*v92, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "DSPGraphConfig_Utilities.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 501;
                  _os_log_impl(&dword_0, v93, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Property dictionary requires ID", buf, 0x12u);
                }

                v94 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v94, "Property dictionary requires ID");
              }

              if (!*i)
              {
                v90 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v90, "Could not construct");
              }

              sub_4E1DA8(buf, *i, "ID");
              v28 = sub_28FEA0(buf);
              if (*buf)
              {
                CFRelease(*buf);
              }

              v29 = *i;
              if (!*i)
              {
                v91 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v91, "Could not construct");
              }

              v154[0] = 0;
              sub_4E1B90(&__p, v29, "Info", v154);
              *buf = v28;
              v30 = __p.__r_.__value_.__r.__words[0];
              *&buf[8] = __p.__r_.__value_.__r.__words[0];
              __p.__r_.__value_.__r.__words[0] = 0;
              v31 = v168;
              if (v168 >= v169)
              {
                v32 = v167;
                v33 = (v168 - v167) >> 4;
                v34 = v33 + 1;
                if ((v33 + 1) >> 60)
                {
                  sub_189A00();
                }

                v35 = v169 - v167;
                if ((v169 - v167) >> 3 > v34)
                {
                  v34 = v35 >> 3;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v36 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  sub_1E26D0(v36);
                }

                v37 = (v168 - v167) >> 4;
                v38 = 16 * v33;
                *v38 = v28;
                *(v38 + 8) = v30;
                *&buf[8] = 0;
                v39 = v38 - 16 * v37;
                if (v32 != v31)
                {
                  v40 = v32;
                  v41 = v39;
                  do
                  {
                    *v41 = *v40;
                    *(v41 + 8) = v40[1];
                    v40[1] = 0;
                    v40 += 2;
                    v41 += 16;
                  }

                  while (v40 != v31);
                  do
                  {
                    sub_1E0410(v32[1]);
                    v32 += 2;
                  }

                  while (v32 != v31);
                  v32 = v167;
                }

                v167 = v39;
                v168 = (v38 + 16);
                v169 = 0;
                if (v32)
                {
                  operator delete(v32);
                }

                v168 = (v38 + 16);
                v6 = a1;
                if (*&buf[8])
                {
                  CFRelease(*&buf[8]);
                }
              }

              else
              {
                *v168 = v28;
                v31[1] = v30;
                *&buf[8] = 0;
                v168 = v31 + 2;
              }

              if (__p.__r_.__value_.__r.__words[0])
              {
                CFRelease(__p.__r_.__value_.__l.__data_);
              }

              if (v154[0])
              {
                CFRelease(v154[0]);
              }
            }

            *buf = &v188;
            sub_761AC(buf);
            goto LABEL_135;
          }

          v114 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v114, "Could not convert");
        }

        else
        {
          v114 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v114, "Could not find item");
        }
      }

      else
      {
        v114 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v114, "Could not construct");
      }
    }

LABEL_135:
    if (!v140)
    {
      v104 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v104, "Could not construct");
    }

    if (sub_47D0C(v140, "presets"))
    {
      if (!v140)
      {
        v116 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v116, "Could not construct");
      }

      sub_27BA18(&v149, v140, "presets");
      v42 = v149;
      if (v149)
      {
        v43 = CFDictionaryGetTypeID();
        if (v43 == CFGetTypeID(v42))
        {
          v44 = CFDictionaryGetCount(v42);
          v147 = 0;
          v148 = 0;
          v146 = &v147;
          sub_4788C(&__p, v44);
          sub_4788C(v154, v44);
          CFDictionaryGetKeysAndValues(v42, __p.__r_.__value_.__l.__data_, v154[0]);
          if (v44)
          {
            for (j = 0; j != v44; ++j)
            {
              sub_125D8(v152, *(__p.__r_.__value_.__r.__words[0] + 8 * j));
              sub_125D8(v150, *(v154[0] + j));
              *buf = *v152;
              *&buf[16] = v153;
              v152[1] = 0;
              v153 = 0;
              *&buf[24] = *v150;
              v187 = v151;
              v150[0] = 0;
              v150[1] = 0;
              v151 = 0;
              v152[0] = 0;
              if (!*sub_6F86C(&v146, &v156, buf))
              {
                operator new();
              }

              if (SHIBYTE(v187) < 0)
              {
                operator delete(*&buf[24]);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (SHIBYTE(v151) < 0)
              {
                operator delete(v150[0]);
              }

              if (SHIBYTE(v153) < 0)
              {
                operator delete(v152[0]);
              }
            }
          }

          if (v154[0])
          {
            v154[1] = v154[0];
            operator delete(v154[0]);
          }

          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_1E0334(v174[0]);
          v46 = v147;
          v173 = v146;
          v174[0] = v147;
          v174[1] = v148;
          if (v148)
          {
            v147[2] = v174;
            v146 = &v147;
            v147 = 0;
            v148 = 0;
            v46 = 0;
          }

          else
          {
            v173 = v174;
          }

          sub_1E0334(v46);
          if (v149)
          {
            CFRelease(v149);
          }

          goto LABEL_162;
        }

        v117 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v117, "Could not convert");
      }

      else
      {
        v117 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v117, "Could not construct");
      }
    }

LABEL_162:
    if (!v140)
    {
      v106 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v106, "Could not construct");
    }

    if (sub_47D0C(v140, "volumeCommands"))
    {
      if (!v140)
      {
        v118 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v118, "Could not construct");
      }

      sub_4E1E2C(&v188, v140, "volumeCommands");
      sub_28FD08(buf, &v188);
      if (v171[0])
      {
        v171[1] = v171[0];
        operator delete(v171[0]);
      }

      *v171 = *buf;
      v172 = *&buf[16];
      if (v188.__r_.__value_.__r.__words[0])
      {
        CFRelease(v188.__r_.__value_.__l.__data_);
      }
    }

    if (!v140)
    {
      v105 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v105, "Could not construct");
    }

    if (sub_47D0C(v140, "volumeInfo"))
    {
      if (!v140)
      {
        v120 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v120, "Could not construct");
      }

      sub_27BA18(buf, v140, "volumeInfo");
      v47 = v170;
      v170 = *buf;
      *buf = v47;
      if (v47)
      {
        CFRelease(v47);
      }
    }

    if (!v140)
    {
      v107 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v107, "Could not construct");
    }

    if (sub_47D0C(v140, "busChannelCounts"))
    {
      sub_3C1AB0(&__src, 0, 0, 0);
      if (!v140)
      {
        v119 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v119, "Could not construct");
      }

      sub_4E1E2C(&__p, v140, "busChannelCounts");
      v48 = __p.__r_.__value_.__r.__words[0];
      if (!__p.__r_.__value_.__r.__words[0])
      {
LABEL_263:
        v84 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v84, "Could not construct");
      }

      v49 = 0;
      while (v49 < CFArrayGetCount(v48))
      {
        v50 = __p.__r_.__value_.__r.__words[0];
        if (!__p.__r_.__value_.__r.__words[0])
        {
          v85 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v85, "Could not construct");
        }

        if (CFArrayGetCount(__p.__r_.__value_.__l.__data_) <= v49 || (v51 = CFArrayGetValueAtIndex(v50, v49)) == 0)
        {
          v83 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v83, "Could not find item");
        }

        sub_6AADC(buf, v51);
        v52 = *buf;
        if (*&buf[8] - *buf != 8)
        {
          v86 = sub_5544(14);
          v87 = *v86;
          if (*v86 && os_log_type_enabled(*v86, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v188.__r_.__value_.__l.__data_) = 136315394;
            *(v188.__r_.__value_.__r.__words + 4) = "DSPGraphConfig_Utilities.cpp";
            WORD2(v188.__r_.__value_.__r.__words[1]) = 1024;
            *(&v188.__r_.__value_.__r.__words[1] + 6) = 535;
            _os_log_impl(&dword_0, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v188, 0x12u);
          }

          v88 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v88, "Precondition failure.");
        }

        v53 = **buf;
        v54 = v176;
        if (v176 >= v177)
        {
          v56 = __src;
          v57 = v176 - __src;
          v58 = (v176 - __src) >> 3;
          v59 = v58 + 1;
          if ((v58 + 1) >> 61)
          {
            sub_189A00();
          }

          v60 = v177 - __src;
          if ((v177 - __src) >> 2 > v59)
          {
            v59 = v60 >> 2;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFF8)
          {
            v61 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v59;
          }

          if (v61)
          {
            sub_1E2544(v61);
          }

          v62 = (8 * v58);
          v63 = &v62[-((v176 - __src) >> 3)];
          *v62 = v53;
          v55 = (v62 + 1);
          memcpy(v63, v56, v57);
          v64 = __src;
          __src = v63;
          v176 = v55;
          v177 = 0;
          if (v64)
          {
            operator delete(v64);
          }
        }

        else
        {
          *v176 = v53;
          v55 = v54 + 8;
        }

        v176 = v55;
        operator delete(v52);
        ++v49;
        v48 = __p.__r_.__value_.__r.__words[0];
        if (!__p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_263;
        }
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        CFRelease(__p.__r_.__value_.__l.__data_);
      }
    }

    if (!v140)
    {
      v108 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v108, "Could not construct");
    }

    if (sub_47D0C(v140, "busCount"))
    {
      if (v140)
      {
        v65 = sub_22AC44(v140, "busCount");
        if (v65)
        {
          sub_6AADC(buf, v65);
          if (*&buf[8] - *buf != 8)
          {
            v121 = sub_5544(14);
            v122 = *v121;
            if (*v121 && os_log_type_enabled(*v121, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v188.__r_.__value_.__l.__data_) = 136315394;
              *(v188.__r_.__value_.__r.__words + 4) = "DSPGraphConfig_Utilities.cpp";
              WORD2(v188.__r_.__value_.__r.__words[1]) = 1024;
              *(&v188.__r_.__value_.__r.__words[1] + 6) = 543;
              _os_log_impl(&dword_0, v122, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v188, 0x12u);
            }

            v123 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v123, "Precondition failure.");
          }

          v66 = **buf;
          v67 = *(*buf + 4);
          if (v179 == 1)
          {
            v178 = __PAIR64__(v67, v66);
          }

          else
          {
            v178 = v66 | (v67 << 32);
            v179 = 1;
          }

          operator delete(*buf);
          goto LABEL_209;
        }

        v124 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v124, "Could not find item");
      }

      else
      {
        v124 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v124, "Could not construct");
      }
    }

LABEL_209:
    if (!v140)
    {
      v109 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v109, "Could not construct");
    }

    if (sub_47D0C(v140, "chainType"))
    {
      if (!v140)
      {
        v125 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v125, "Could not construct");
      }

      sub_4E1DA8(buf, v140, "chainType");
      v166 = sub_28FEA0(buf);
      if (*buf)
      {
        CFRelease(*buf);
      }
    }

    if (!v140)
    {
      v110 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v110, "Could not construct");
    }

    v68 = sub_36CC44(v140, "shouldCache");
    v180 = (v68 > 0xFFu) & v68;
    v69 = sub_5544(21);
    v70 = *v69;
    if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_INFO))
    {
      v71 = "false";
      if (v180)
      {
        v71 = "true";
      }

      if (cf[23] >= 0)
      {
        v72 = cf;
      }

      else
      {
        v72 = *cf;
      }

      *buf = 136316162;
      *&buf[4] = "DSPGraphConfig_Utilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 554;
      *&buf[18] = 2080;
      *&buf[20] = v71;
      *&buf[28] = 2080;
      *&buf[30] = "shouldCache";
      *&buf[38] = 2080;
      v187 = v72;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "%25s:%-5d Parsed value %s for key %s in graph %s", buf, 0x30u);
    }

    if (!v140)
    {
      v111 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v111, "Could not construct");
    }

    if (sub_47D0C(v140, "customMacros"))
    {
      if (!v140)
      {
        v126 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v126, "Could not construct");
      }

      sub_27BA18(buf, v140, "customMacros");
      v73 = v181;
      v181 = *buf;
      *buf = v73;
      if (v73)
      {
        CFRelease(v73);
      }
    }

    if (v140)
    {
      CFRelease(v140);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    v74 = sub_1DC1CC(__dst);
    v75 = v74;
    v76 = v6[1];
    if (!*&v76)
    {
      goto LABEL_248;
    }

    v77 = vcnt_s8(v76);
    v77.i16[0] = vaddlv_u8(v77);
    v78 = v77.u32[0];
    if (v77.u32[0] > 1uLL)
    {
      v79 = v74;
      if (v74 >= *&v76)
      {
        v79 = v74 % *&v76;
      }
    }

    else
    {
      v79 = (*&v76 - 1) & v74;
    }

    v80 = *(*v6 + 8 * v79);
    if (!v80 || (v81 = *v80) == 0)
    {
LABEL_248:
      operator new();
    }

    while (1)
    {
      v82 = v81[1];
      if (v82 == v75)
      {
        if (sub_1DC61C(v81 + 2, __dst))
        {
          v6 = a1;
          sub_1E2790((v81 + 5), cf);
          sub_1E0258(cf);
          if (SHIBYTE(v142) < 0)
          {
            operator delete(__dst[0]);
          }

          ++*&v182[8];
          v10 = theDict;
          goto LABEL_38;
        }
      }

      else
      {
        if (v78 > 1)
        {
          if (v82 >= *&v76)
          {
            v82 %= *&v76;
          }
        }

        else
        {
          v82 &= *&v76 - 1;
        }

        if (v82 != v79)
        {
          goto LABEL_248;
        }
      }

      v81 = *v81;
      if (!v81)
      {
        goto LABEL_248;
      }
    }
  }

  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  if (*&v182[16])
  {
    v183 = *&v182[16];
    operator delete(*&v182[16]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v145 == 1 && v144)
  {
    CFRelease(v144);
  }
}

void sub_4E1628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, char a61)
{
  __cxa_free_exception(v61);
  sub_1E19A0(&a61);
  sub_36CCBC(&a31);
  sub_1E0188(a14);
  _Unwind_Resume(a1);
}

void sub_4E1B90(void *a1, const __CFDictionary *a2, const UInt8 *a3, void *a4)
{
  sub_36CA70(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void sub_4E1C0C(uint64_t a1, void *a2)
{
  sub_36C4D8(__p, a2);
  v3 = SHIBYTE(v7);
  if (SHIBYTE(v7) < 0)
  {
    sub_54A0(a1, __p[0], __p[1]);
  }

  else
  {
    *a1 = *__p;
    *(a1 + 16) = v7;
  }

  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    *(a1 + 24) = v4;
    CFRelease(v4);
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = 0;
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }
  }

  v5 = __p[0];

  operator delete(v5);
}

uint64_t sub_4E1CD8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_4E1D1C(UInt8 *a1, const __CFDictionary *a2, const UInt8 *__s)
{
  v4 = sub_22AC44(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_125D8(a1, v4);
}

CFTypeRef sub_4E1DA8(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s)
{
  v4 = sub_22AC44(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  v5 = v4;
  result = CFRetain(v4);
  *a1 = v5;
  return result;
}

CFTypeID sub_4E1E2C(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s)
{
  v4 = sub_22AC44(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  v5 = v4;
  CFRetain(v4);
  *a1 = v5;
  v6 = CFGetTypeID(v5);
  result = CFArrayGetTypeID();
  if (v6 != result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  return result;
}

void sub_4E1EF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DC7F8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_4E1F30(void *a1, uint64_t a2)
{
  if (!sub_130F70(a1, 1685090928))
  {
    *__p = 0u;
    *v13 = 0u;
    v14 = 1065353216;
    operator new();
  }

  result = sub_130F70(a1, 1685090928);
  v5 = result[3];
  if (*(v5 + 40) != 7)
  {
    sub_20B4EC();
  }

  for (i = *(a2 + 16); i; i = *i)
  {
    v7 = *(i + 4);
    if (sub_130F70(v5, v7))
    {
      v8 = sub_130F70(v5, v7);
      if (v8)
      {
        v9 = v8[3];
        if (v9 && *(v9 + 40) == 8)
        {
          LODWORD(v15[0]) = v7;
          v10 = i[4];
          v15[1] = i[3];
          v15[2] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
          }

          sub_EF530(__p, v15, 1);
          operator new();
        }

        v16 = v7;
        v11 = i[4];
        v17 = i[3];
        v18 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        sub_EF530(__p, &v16, 1);
        operator new();
      }

      sub_DE7DC("unordered_map::at: key not found");
    }

    result = sub_EF5E8(v5, v7);
  }

  return result;
}

void sub_4E235C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4E2464(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::__shared_weak_count::~__shared_weak_count(v2);
    operator delete(v4);
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E2494()
{
  *v0 = 0u;
  *v1 = 0u;
  v2 = 1065353216;
  operator new();
}

void sub_4E3CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  __cxa_free_exception(v54);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_12A2C4(&a24);
  _Unwind_Resume(a1);
}

void sub_4E40EC(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_54A0(v4, *a2, *(a2 + 8));
  }

  else
  {
    *v4 = *a2;
    v5 = *(a2 + 16);
  }

  v6 = a3;
  operator new();
}

void sub_4E425C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v24);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_4E42B4(unsigned int a1)
{
  if (!qword_70A1C8)
  {
    return 0;
  }

  v1 = vcnt_s8(qword_70A1C8);
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (qword_70A1C8 <= a1)
    {
      v2 = a1 % qword_70A1C8;
    }
  }

  else
  {
    v2 = (qword_70A1C8 - 1) & a1;
  }

  i = *(qword_70A1C0 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= qword_70A1C8)
          {
            v4 %= qword_70A1C8;
          }
        }

        else
        {
          v4 &= qword_70A1C8 - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t *sub_4E4374(unsigned int a1)
{
  if (!qword_70A1F0)
  {
    return 0;
  }

  v1 = vcnt_s8(qword_70A1F0);
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (qword_70A1F0 <= a1)
    {
      v2 = a1 % qword_70A1F0;
    }
  }

  else
  {
    v2 = (qword_70A1F0 - 1) & a1;
  }

  i = *(qword_70A1E8 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= qword_70A1F0)
          {
            v4 %= qword_70A1F0;
          }
        }

        else
        {
          v4 &= qword_70A1F0 - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

double sub_4E4434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  v5 = sub_5544(25);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    if (*(a1 + 55) >= 0)
    {
      v7 = a1 + 32;
    }

    v8 = *(a1 + 8);
    if (*(a1 + 31) >= 0)
    {
      v8 = v4;
    }

    *buf = 136315906;
    *v27 = "DSPGraphConfig_Utilities.cpp";
    *&v27[8] = 1024;
    *&v27[10] = 230;
    v28 = 2080;
    *v29 = v7;
    *&v29[8] = 2080;
    *&v29[10] = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading preset for box %s from path %s", buf, 0x26u);
  }

  sub_EE47C(&v25, v4);
  v9 = v25;
  if (v25)
  {
    sub_88CE8(buf, "BoxName");
    v12 = *(a1 + 32);
    v11 = a1 + 32;
    v10 = v12;
    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = *(v11 + 8);
    }

    *&v27[4] = CFStringCreateWithBytes(0, v14, v15, 0x8000100u, 0);
    if (*&v27[4])
    {
      sub_88CE8(&v27[12], "Preset");
      CFRetain(v9);
      *&v29[4] = v9;
      v24[0] = buf;
      v24[1] = 2;
      v16 = 0;
      v24[2] = sub_69CE8(v24);
      while (1)
      {
        v17 = *&v29[v16 + 4];
        if (v17)
        {
          CFRelease(v17);
        }

        v18 = *&v27[v16 + 12];
        if (v18)
        {
          CFRelease(v18);
        }

        v16 -= 16;
        if (v16 == -32)
        {
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v19 = sub_5544(25);
  v20 = *v19;
  if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 31) >= 0)
    {
      v21 = v4;
    }

    else
    {
      v21 = *(a1 + 8);
    }

    *buf = 136315650;
    *v27 = "DSPGraphConfig_Utilities.cpp";
    *&v27[8] = 1024;
    *&v27[10] = 239;
    v28 = 2080;
    *v29 = v21;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Loading plist for preset from path %s returned invalid", buf, 0x1Cu);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  return result;
}

void sub_4E4774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  sub_28EFBC((v4 + 8));
  sub_1D5FE0(va1);
  sub_4BA7C(va);
  _Unwind_Resume(a1);
}

void sub_4E4834(void *a1)
{
  sub_1D8F30(a1 + 8);

  operator delete(a1);
}

char *sub_4E4878(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_6DCF00;
  v4 = (a2 + 8);
  if (result[31] < 0)
  {
    result = sub_54A0(v4, *(result + 1), *(result + 2));
  }

  else
  {
    v5 = *(result + 8);
    *(a2 + 24) = *(result + 3);
    *v4 = v5;
  }

  if (v3[55] < 0)
  {
    return sub_54A0((a2 + 32), *(v3 + 4), *(v3 + 5));
  }

  v6 = *(v3 + 2);
  *(a2 + 48) = *(v3 + 6);
  *(a2 + 32) = v6;
  return result;
}

void sub_4E4914(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E49E8(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_4E4A14(uint64_t a1)
{
  *a1 = off_6DCF00;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_4E4A94(uint64_t a1)
{
  *a1 = off_6DCF00;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_4E4AF4(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void sub_4E4B38(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

_BYTE *sub_4E4B4C(uint64_t a1, void *a2)
{
  *a2 = off_6DCEB8;
  result = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    result = sub_54A0(result, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *result = v5;
  }

  a2[4] = *(a1 + 32);
  return result;
}

void sub_4E4C58(uint64_t a1)
{
  *a1 = off_6DCEB8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_4E4CC8(uint64_t a1)
{
  *a1 = off_6DCEB8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_4E4D18(uint64_t a1, void *a2, uint64_t *a3)
{
  if (sub_390E58(a2, a3))
  {

    sub_4E2494();
  }

  v5 = sub_5544(21);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = 136315650;
    v9 = "DSPGraphConfig_Utilities.cpp";
    v10 = 1024;
    v11 = 437;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Graph collection missing expected key %s", &v8, 0x1Cu);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  strcpy((a1 + 48), "tlfd");
  *(a1 + 56) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
}

void sub_4E4E8C(uint64_t a1)
{
  *a1 = off_6DCF48;
  sub_4E4EFC(*(a1 + 80));
  std::mutex::~mutex((a1 + 8));

  operator delete();
}

void sub_4E4EFC(void *a1)
{
  if (a1)
  {
    sub_4E4EFC(*a1);
    sub_4E4EFC(a1[1]);
    sub_477A0(a1[8]);
    sub_477A0(a1[5]);

    operator delete(a1);
  }
}

uint64_t sub_4E4F58(uint64_t a1)
{
  *a1 = off_6DCF48;
  sub_4E4EFC(*(a1 + 80));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_4E4FA8(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 80);
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      if (!sub_4E51F0(a2, (v4 + 4)))
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!sub_4E51F0((v5 + 4), a2))
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "DeviceInfoListener.cpp";
    v10 = 1024;
    v11 = 54;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified listener already exists!", &v8, 0x12u);
  }

  std::mutex::unlock((a1 + 8));
}

void sub_4E5194(char a1, void **a2)
{
  if (a1)
  {
    sub_477A0(a2[8]);
    sub_477A0(a2[5]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

BOOL sub_4E51F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  v4 = v2 >= v3;
  if (v2 != v3)
  {
    return !v4;
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  v4 = v5 >= v6;
  if (v5 != v6)
  {
    return !v4;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*a1 == a1 + 8)
    {
LABEL_22:
      v17 = *(a1 + 24);
      if (*(a1 + 40) == *(a2 + 40))
      {
        if (v17 == (a1 + 32))
        {
          return 0;
        }

        v18 = *(a2 + 24);
        v19 = v18;
        v20 = *(a1 + 24);
        while (*(v20 + 7) == *(v19 + 7))
        {
          v21 = v20[1];
          v22 = v20;
          if (v21)
          {
            do
            {
              v20 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v20 = v22[2];
              v14 = *v20 == v22;
              v22 = v20;
            }

            while (!v14);
          }

          v23 = v19[1];
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
              v24 = v19[2];
              v14 = *v24 == v19;
              v19 = v24;
            }

            while (!v14);
          }

          v7 = 0;
          v19 = v24;
          if (v20 == (a1 + 32))
          {
            return v7;
          }
        }
      }

      else
      {
        v18 = *(a2 + 24);
      }

      v26 = (a1 + 32);
      v27 = (a2 + 32);
      v28 = v18 == (a2 + 32);
      v29 = v17 == (a1 + 32);
      if (v17 == (a1 + 32) || v18 == v27)
      {
        return v29 && !v28;
      }

      while (1)
      {
        v30 = *(v17 + 7);
        v31 = *(v18 + 7);
        v25 = v30 < v31;
        if (v30 != v31)
        {
          break;
        }

        v32 = v17[1];
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
            v33 = v17[2];
            v14 = *v33 == v17;
            v17 = v33;
          }

          while (!v14);
        }

        v34 = v18[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v18[2];
            v14 = *v35 == v18;
            v18 = v35;
          }

          while (!v14);
        }

        v28 = v35 == v27;
        v29 = v33 == v26;
        if (v33 != v26)
        {
          v17 = v33;
          v18 = v35;
          if (v35 != v27)
          {
            continue;
          }
        }

        return v29 && !v28;
      }

      return v25;
    }

    v9 = *a2;
    v10 = *a2;
    v11 = *a1;
    while (*(v11 + 7) == *(v10 + 7))
    {
      v12 = v11[1];
      v13 = v11;
      if (v12)
      {
        do
        {
          v11 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v11 = v13[2];
          v14 = *v11 == v13;
          v13 = v11;
        }

        while (!v14);
      }

      v15 = v10[1];
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
          v16 = v10[2];
          v14 = *v16 == v10;
          v10 = v16;
        }

        while (!v14);
      }

      v10 = v16;
      if (v11 == (a1 + 8))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = *a2;
  }

  return (sub_86694(*a1, (a1 + 8), v9, (a2 + 8)) & 0x80u) != 0;
}

void sub_4E5470(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 80);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 80;
  v6 = *(a1 + 80);
  do
  {
    v7 = sub_4E51F0(v6 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v5 = v6;
    }

    v6 = *(v6 + v8);
  }

  while (v6);
  if (v5 == a1 + 80 || sub_4E51F0(a2, v5 + 32))
  {
LABEL_11:
    v9 = sub_5544(18);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "DeviceInfoListener.cpp";
      v17 = 1024;
      v18 = 63;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified listener does not exist", &v15, 0x12u);
    }
  }

  else
  {
    v11 = *(v5 + 8);
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
      v13 = v5;
      do
      {
        v12 = v13[2];
        v14 = *v12 == v13;
        v13 = v12;
      }

      while (!v14);
    }

    if (*(a1 + 72) == v5)
    {
      *(a1 + 72) = v12;
    }

    --*(a1 + 88);
    sub_75234(v4, v5);
    sub_477A0(*(v5 + 64));
    sub_477A0(*(v5 + 40));
    operator delete(v5);
  }

  std::mutex::unlock((a1 + 8));
}

std::string *sub_4E5634(std::string *__dst, int a2)
{
  *(&__dst->__r_.__value_.__s + 23) = 7;
  strcpy(__dst, "unknown");
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 14;
      *(&__dst->__r_.__value_.__s + 23) = 14;
      v3 = "PortsConnected";
    }

    else
    {
      if (a2 != 3)
      {
        return __dst;
      }

      v2 = 14;
      *(&__dst->__r_.__value_.__s + 23) = 14;
      v3 = "RouteDidChange";
    }

    __dst->__r_.__value_.__r.__words[0] = *v3;
    *(__dst->__r_.__value_.__r.__words + 6) = *(v3 + 6);
  }

  else
  {
    if (!a2)
    {
      return sub_1D8C58(__dst, "ChannelConfigurationChanged", 0x1BuLL);
    }

    if (a2 != 1)
    {
      return __dst;
    }

    v2 = 21;
    *(&__dst->__r_.__value_.__s + 23) = 21;
    qmemcpy(__dst, "TimeSyncDeviceCreated", 21);
  }

  __dst->__r_.__value_.__s.__data_[v2] = 0;
  return __dst;
}

void sub_4E5710(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E57A8(uint64_t a1)
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
  *(v2 + 96) = v2 + 104;
  *(v2 + 76) = (v3 > 0xFFu) & v3;
  *(v2 + 77) = 1;
  *(v2 + 78) = 0;
  *(v2 + 86) = 0;
  *(v2 + 88) = 16777473;
  *(v2 + 112) = 0;
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
  *(v2 + 80) = 257;
  *(v2 + 72) = 16843009;
  *(v2 + 76) = 257;
  *(v2 + 82) = 16843009;
  if ((*(v2 + 20) & 1) == 0)
  {
    *(v2 + 20) = 1;
  }

  *(v2 + 16) = 4;
  *&v28 = 0x300000002;
  sub_1F8148((v2 + 48), &v28, &v28 + 8, 2uLL);
  LODWORD(v28) = 4;
  sub_1F8148((v2 + 24), &v28, &v28 + 4, 1uLL);
  *(v2 + 90) = 257;
  v28 = xmmword_517160;
  sub_1DFEA0((v2 + 96), &v28, &v29);
  *(v2 + 404) = 1077936128;
  *(v2 + 408) = 1;
  *(v2 + 322) = 257;
  if ((*(v2 + 948) & 1) == 0)
  {
    *(v2 + 948) = 1;
  }

  *(v2 + 944) = 2;
  sub_46AC8C();
  sub_53E8(&v4, "");
  sub_53E8(v18, "");
  sub_53E8(v17, off_6E4C30);
  sub_53E8(v16, "AU");
  sub_53E8(v15, "VAD");
  sub_1E15A0(&v28, &v4, v18, v17, v16, v15);
  sub_1E1830(v2 + 432, &v28);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v15[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17[0].__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  sub_53E8(&v4, "speaker_general");
  v7 = 0;
  v6 = 0;
  v8 = 0;
  sub_53E8(v9, "speaker_general");
  sub_53E8(v10, "speaker_general");
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v14 = 1668051824;
  v25 = 0;
  v24 = 1936749683;
  v26 = 1936746861;
  v27 = 0;
  v20 = 0x6473706700000001;
  v21 = 1869768046;
  memset(v23, 0, 24);
  sub_4625C(v23, &v20, &v22, 3uLL);
  sub_2DDE10();
}

void sub_4EA638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, const void *a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, const void *a51, uint64_t a52, uint64_t a53, uint64_t a54, const void *a55, uint64_t a56, uint64_t a57, uint64_t a58, const void *a59, uint64_t a60, uint64_t a61, uint64_t a62, const void *a63)
{
  sub_1D5FAC((v73 + 8));
  sub_1D5FE0(&STACK[0x9F0]);
  if (SLOBYTE(STACK[0xA97]) < 0)
  {
    operator delete(v74[12]);
  }

  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(v74[9]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(v74[6]);
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(v74[3]);
  }

  if (SLOBYTE(STACK[0xA37]) < 0)
  {
    operator delete(*v74);
  }

  sub_1E0258(&STACK[0xB90]);
  sub_2DE774(&STACK[0xB80]);
  sub_4BA7C(&a30);
  sub_1D5D20(&STACK[0xB70]);
  STACK[0xA00] = &a25;
  sub_282684(&STACK[0xA00]);
  sub_46228(&STACK[0xB68]);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1E0258(&STACK[0xD00]);
  sub_2DE774(&STACK[0xCF0]);
  sub_4BA7C(&a36);
  sub_1D5D20(&STACK[0xCE0]);
  if (a31)
  {
    operator delete(a31);
  }

  sub_1E0258(&STACK[0xEC0]);
  v78 = -32;
  v79 = v72;
  do
  {
    v79 = sub_2DE774(v79) - 16;
    v78 += 16;
  }

  while (v78);
  sub_4BA7C(&a42);
  sub_1D5D20(&STACK[0xE70]);
  STACK[0xA00] = &a37;
  sub_A9CA4(&STACK[0xA00]);
  v80 = *(v75 + 344);
  if (v80)
  {
    *(v75 + 352) = v80;
    operator delete(v80);
  }

  sub_4BA7C(&a51);
  sub_1D5D20(&STACK[0xE90]);
  STACK[0xA00] = &a46;
  sub_282684(&STACK[0xA00]);
  sub_46228(&STACK[0xE88]);
  v81 = *(v76 + 96);
  if (v81)
  {
    operator delete(v81);
  }

  sub_1E0258(&STACK[0x1040]);
  v82 = &STACK[0x1030];
  v83 = -32;
  do
  {
    v82 = (sub_2DE774(v82) - 16);
    v83 += 16;
  }

  while (v83);
  sub_4BA7C(&a55);
  sub_1D5D20(&STACK[0x1000]);
  sub_4BA7C(&a59);
  sub_1D5D20(&STACK[0x1010]);
  sub_1E0258(&STACK[0x1180]);
  sub_1E0258(&STACK[0x1300]);
  v84 = &STACK[0x12F0];
  v85 = -32;
  do
  {
    v84 = (sub_2DE774(v84) - 16);
    v85 += 16;
  }

  while (v85);
  sub_4BA7C(&a63);
  sub_1D5D20(&STACK[0x12C0]);
  sub_4BA7C(&a67);
  sub_1D5D20(&STACK[0x12D0]);
  sub_1E0258(&STACK[0x1480]);
  v86 = &STACK[0x1470];
  v87 = -32;
  do
  {
    v86 = (sub_2DE774(v86) - 16);
    v87 += 16;
  }

  while (v87);
  sub_4BA7C(&a71);
  sub_1D5D20(&STACK[0x1440]);
  sub_4BA7C(&STACK[0x210]);
  sub_1D5D20(&STACK[0x1450]);
  sub_1E0258(&STACK[0x15F0]);
  sub_2DE774(&STACK[0x15E0]);
  sub_4BA7C(&STACK[0x230]);
  for (i = 16; i != -16; i -= 16)
  {
    sub_1D5D20(&STACK[0x15C0] + i);
  }

  sub_1E0258(&STACK[0x1760]);
  sub_2DE774(&STACK[0x1750]);
  sub_4BA7C(&STACK[0x250]);
  for (j = 16; j != -16; j -= 16)
  {
    sub_1D5D20(&STACK[0x1730] + j);
  }

  sub_1E0258(&STACK[0x18E0]);
  v90 = &STACK[0x18D0];
  v91 = -32;
  do
  {
    v90 = (sub_2DE774(v90) - 16);
    v91 += 16;
  }

  while (v91);
  sub_4BA7C(&STACK[0x270]);
  sub_1D5D20(&STACK[0x18A0]);
  sub_4BA7C(&STACK[0x290]);
  sub_1D5D20(&STACK[0x18B0]);
  sub_1E0258(&STACK[0x1A50]);
  sub_2DE774(&STACK[0x1A40]);
  sub_4BA7C(&STACK[0x2B0]);
  for (k = 16; k != -16; k -= 16)
  {
    sub_1D5D20(&STACK[0x1A20] + k);
  }

  sub_1E0258(&STACK[0x1BC0]);
  sub_2DE774(&STACK[0x1BB0]);
  sub_4BA7C(&STACK[0x2D0]);
  for (m = 16; m != -16; m -= 16)
  {
    sub_1D5D20(&STACK[0x1B90] + m);
  }

  sub_1E0258(&STACK[0x1D30]);
  sub_2DE774(&STACK[0x1D20]);
  sub_4BA7C(&STACK[0x2F0]);
  for (n = 16; n != -16; n -= 16)
  {
    sub_1D5D20(&STACK[0x1D00] + n);
  }

  sub_1E0258(&STACK[0x1EA0]);
  sub_2DE774(&STACK[0x1E90]);
  sub_4BA7C(&STACK[0x310]);
  for (ii = 16; ii != -16; ii -= 16)
  {
    sub_1D5D20(&STACK[0x1E70] + ii);
  }

  sub_1E0258(&STACK[0x2020]);
  v96 = &STACK[0x2010];
  v97 = -32;
  do
  {
    v96 = (sub_2DE774(v96) - 16);
    v97 += 16;
  }

  while (v97);
  sub_4BA7C(&STACK[0x330]);
  sub_1D5D20(&STACK[0x1FE0]);
  sub_4BA7C(&STACK[0x350]);
  sub_1D5D20(&STACK[0x1FF0]);
  sub_1E0258(&STACK[0x2190]);
  sub_2DE774(&STACK[0x2180]);
  sub_4BA7C(&STACK[0x370]);
  for (jj = 16; jj != -16; jj -= 16)
  {
    sub_1D5D20(&STACK[0x2160] + jj);
  }

  sub_1E0258(&STACK[0x2300]);
  sub_2DE774(&STACK[0x22F0]);
  sub_4BA7C(&STACK[0x390]);
  for (kk = 16; kk != -16; kk -= 16)
  {
    sub_1D5D20(&STACK[0x22D0] + kk);
  }

  sub_1E0258(&STACK[0x2470]);
  sub_2DE774(&STACK[0x2460]);
  sub_4BA7C(&STACK[0x3B0]);
  for (mm = 16; mm != -16; mm -= 16)
  {
    sub_1D5D20(&STACK[0x2440] + mm);
  }

  sub_1E0258(&STACK[0x25E0]);
  sub_2DE774(&STACK[0x25D0]);
  sub_4BA7C(&STACK[0x3D0]);
  for (nn = 16; nn != -16; nn -= 16)
  {
    sub_1D5D20(&STACK[0x25B0] + nn);
  }

  sub_1E0258(&STACK[0x2750]);
  sub_2DE774(&STACK[0x2740]);
  sub_4BA7C(&STACK[0x3F0]);
  for (i1 = 16; i1 != -16; i1 -= 16)
  {
    sub_1D5D20(&STACK[0x2720] + i1);
  }

  sub_1E0258(&STACK[0x2900]);
  v103 = &STACK[0x28F0];
  v104 = -48;
  do
  {
    v103 = (sub_2DE774(v103) - 16);
    v104 += 16;
  }

  while (v104);
  sub_4BA7C(&STACK[0x420]);
  sub_1D5D20(&STACK[0x28C0]);
  STACK[0x2720] = &STACK[0x3F8];
  sub_A9CA4(&STACK[0x2720]);
  v105 = STACK[0x28A8];
  if (STACK[0x28A8])
  {
    STACK[0x28B0] = v105;
    operator delete(v105);
  }

  sub_4BA7C(&STACK[0x428]);
  sub_4BA7C(&STACK[0x430]);
  sub_1E0258(&STACK[0x2AB0]);
  v106 = &STACK[0x2AA0];
  v107 = -48;
  do
  {
    v106 = (sub_2DE774(v106) - 16);
    v107 += 16;
  }

  while (v107);
  sub_4BA7C(&STACK[0x468]);
  sub_1D5D20(&STACK[0x2A70]);
  STACK[0x28D0] = &STACK[0x440];
  sub_A9CA4(&STACK[0x28D0]);
  v108 = STACK[0x2A58];
  if (STACK[0x2A58])
  {
    STACK[0x2A60] = v108;
    operator delete(v108);
  }

  sub_4BA7C(&STACK[0x470]);
  sub_4BA7C(&STACK[0x478]);
  sub_1E0258(&STACK[0x2C60]);
  v109 = &STACK[0x2C50];
  v110 = -48;
  do
  {
    v109 = (sub_2DE774(v109) - 16);
    v110 += 16;
  }

  while (v110);
  sub_4BA7C(&STACK[0x4B0]);
  sub_1D5D20(&STACK[0x2C20]);
  STACK[0x2A80] = &STACK[0x488];
  sub_A9CA4(&STACK[0x2A80]);
  v111 = STACK[0x2C08];
  if (STACK[0x2C08])
  {
    STACK[0x2C10] = v111;
    operator delete(v111);
  }

  sub_4BA7C(&STACK[0x4B8]);
  sub_4BA7C(&STACK[0x4C0]);
  sub_1E0258(&STACK[0x2E10]);
  v112 = &STACK[0x2E00];
  v113 = -48;
  do
  {
    v112 = (sub_2DE774(v112) - 16);
    v113 += 16;
  }

  while (v113);
  sub_4BA7C(&STACK[0x4F0]);
  sub_1D5D20(&STACK[0x2DD0]);
  STACK[0x2C30] = &STACK[0x4C8];
  sub_A9CA4(&STACK[0x2C30]);
  v114 = STACK[0x2DB8];
  if (STACK[0x2DB8])
  {
    STACK[0x2DC0] = v114;
    operator delete(v114);
  }

  sub_4BA7C(&STACK[0x4F8]);
  sub_4BA7C(&STACK[0x500]);
  sub_1E0258(&STACK[0x2FC0]);
  v115 = &STACK[0x2FB0];
  v116 = -48;
  do
  {
    v115 = (sub_2DE774(v115) - 16);
    v116 += 16;
  }

  while (v116);
  sub_4BA7C(&STACK[0x530]);
  sub_1D5D20(&STACK[0x2F80]);
  STACK[0x2DE0] = &STACK[0x508];
  sub_A9CA4(&STACK[0x2DE0]);
  v117 = STACK[0x2F68];
  if (STACK[0x2F68])
  {
    STACK[0x2F70] = v117;
    operator delete(v117);
  }

  sub_4BA7C(&STACK[0x538]);
  sub_4BA7C(&STACK[0x540]);
  sub_1E0258(&STACK[0x3170]);
  v118 = &STACK[0x3160];
  v119 = -48;
  do
  {
    v118 = (sub_2DE774(v118) - 16);
    v119 += 16;
  }

  while (v119);
  sub_4BA7C(&STACK[0x570]);
  sub_1D5D20(&STACK[0x3130]);
  STACK[0x2F90] = &STACK[0x548];
  sub_A9CA4(&STACK[0x2F90]);
  v120 = STACK[0x3118];
  if (STACK[0x3118])
  {
    STACK[0x3120] = v120;
    operator delete(v120);
  }

  sub_4BA7C(&STACK[0x578]);
  sub_4BA7C(&STACK[0x580]);
  sub_1E0258(&STACK[0x3320]);
  v121 = &STACK[0x3310];
  v122 = -48;
  do
  {
    v121 = (sub_2DE774(v121) - 16);
    v122 += 16;
  }

  while (v122);
  sub_4BA7C(&STACK[0x5B0]);
  sub_1D5D20(&STACK[0x32E0]);
  STACK[0x3140] = &STACK[0x588];
  sub_A9CA4(&STACK[0x3140]);
  v123 = STACK[0x32C8];
  if (STACK[0x32C8])
  {
    STACK[0x32D0] = v123;
    operator delete(v123);
  }

  sub_4BA7C(&STACK[0x5B8]);
  sub_4BA7C(&STACK[0x5C0]);
  sub_1E0258(&STACK[0x608]);
  v124 = &STACK[0x34C0];
  v125 = -48;
  do
  {
    v124 = (sub_2DE774(v124) - 16);
    v125 += 16;
  }

  while (v125);
  sub_4BA7C(&STACK[0x5F0]);
  sub_1D5D20(&STACK[0x3490]);
  STACK[0x32F0] = &STACK[0x5C8];
  sub_A9CA4(&STACK[0x32F0]);
  v126 = STACK[0x3478];
  if (STACK[0x3478])
  {
    STACK[0x3480] = v126;
    operator delete(v126);
  }

  sub_4BA7C(&STACK[0x5F8]);
  sub_4BA7C(&STACK[0x600]);
  while (v71 != &STACK[0x34D0])
  {
    v71 -= 41;
    sub_1E1930(v71);
  }

  sub_1E0000(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4EE684(uint64_t a1, int *a2)
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

void sub_4EE724(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_4EE758(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v53 = sub_5544(14);
    v54 = *v53;
    if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315394;
      *&v73[4] = "HapticDebugIOMonitor.cpp";
      *&v73[12] = 1024;
      *&v73[14] = 36;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v73, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = a1;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v4 = *(a2 + 8);
  if (v4 == a2)
  {
    v62 = 0uLL;
  }

  else
  {
    v62 = 0uLL;
    do
    {
      sub_5659C(&v72, (v4 + 16), "", 130);
      v6 = (*(*v72 + 96))(v72, 0, 0);
      if (!v6)
      {
        v38 = sub_5544(14);
        v39 = *v38;
        if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          *v73 = 136315394;
          *&v73[4] = "HapticDebugIOMonitor.cpp";
          *&v73[12] = 1024;
          *&v73[14] = 133;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v73, 0x12u);
        }

        v40 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v40, "Precondition failure.");
      }

      (*(*v6 + 120))(v6, v73);
      v7 = *(&v62 + 1) - v62;
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v62 + 1) - v62) >> 3) + 1;
      if (v8 > 0x666666666666666)
      {
        sub_189A00();
      }

      if (0x999999999999999ALL * (-v62 >> 3) > v8)
      {
        v8 = 0x999999999999999ALL * (-v62 >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v62 >> 3) >= 0x333333333333333)
      {
        v9 = 0x666666666666666;
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        sub_36EAF4(v9);
      }

      v10 = 8 * ((*(&v62 + 1) - v62) >> 3);
      v11 = *v73;
      v12 = *&v73[16];
      *(v10 + 32) = *&v73[32];
      *v10 = v11;
      *(v10 + 16) = v12;
      memcpy((v10 + 40 * (v7 / -40)), v62, v7);
      if (v62)
      {
        operator delete(v62);
      }

      *&v13 = 8 * ((*(&v62 + 1) - v62) >> 3) + 40 * (v7 / -40);
      *(&v13 + 1) = 8 * ((*(&v62 + 1) - v62) >> 3) + 40;
      v62 = v13;
      v14 = sub_5544(17);
      v3 = a1;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_23148(&v70, (v72 + 8));
        sub_618A4(__p);
      }

      if (*(&v72 + 1))
      {
        sub_1A8C0(*(&v72 + 1));
      }

      v4 = *(v4 + 8);
    }

    while (v4 != a2);
  }

  v15 = *(v3 + 80);
  if (v15)
  {
    *(v3 + 88) = v15;
    operator delete(v15);
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
  }

  *(v3 + 80) = v62;
  *(v3 + 96) = 0;
  if (*(&v62 + 1) == v62)
  {
    v56 = sub_5544(14);
    v57 = *v56;
    if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315394;
      *&v73[4] = "HapticDebugIOMonitor.cpp";
      *&v73[12] = 1024;
      *&v73[14] = 151;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v73, 0x12u);
    }

    v58 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v58, "Precondition failure.");
  }

  v16 = *v62;
  v17 = *(v62 + 16);
  v67 = *(v62 + 32);
  v65 = v16;
  v66 = v17;
  v18 = DWORD1(v17);
  if (DWORD1(v17) != 1)
  {
    v59 = sub_5544(14);
    v60 = *v59;
    if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315650;
      *&v73[4] = "HapticDebugIOMonitor.cpp";
      *&v73[12] = 1024;
      *&v73[14] = 154;
      *&v73[18] = 1024;
      *&v73[20] = v18;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): More than 1 frame per packet in input stream: %u", v73, 0x18u);
    }

    v61 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v61, "More than 1 frame per packet in input stream: %u");
  }

  v19 = v62 + 40;
  if (*(&v62 + 1) != v62 + 40)
  {
    v20 = HIDWORD(v66);
    v21 = v66;
    do
    {
      if (*v19 != *&v65)
      {
        v41 = sub_5544(14);
        v42 = *v41;
        if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
        {
          v43 = *v19;
          *v73 = 136315906;
          *&v73[4] = "HapticDebugIOMonitor.cpp";
          *&v73[12] = 1024;
          *&v73[14] = 158;
          *&v73[18] = 2048;
          *&v73[20] = v43;
          *&v73[28] = 2048;
          *&v73[30] = v65;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): SampleRate mismatch between input streams: %f %f", v73, 0x26u);
        }

        v44 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v44, "SampleRate mismatch between input streams: %f %f");
      }

      if (*(v19 + 32) != v67)
      {
        v49 = sub_5544(14);
        v50 = *v49;
        if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
        {
          v51 = *(v19 + 32);
          *v73 = 136315906;
          *&v73[4] = "HapticDebugIOMonitor.cpp";
          *&v73[12] = 1024;
          *&v73[14] = 159;
          *&v73[18] = 1024;
          *&v73[20] = v51;
          *&v73[24] = 1024;
          *&v73[26] = v67;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Bits per sample mismatch between input streams: %u %u", v73, 0x1Eu);
        }

        v52 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v52, "Bits per sample mismatch between input streams: %u %u");
      }

      if (*(v19 + 20) != 1)
      {
        v45 = sub_5544(14);
        v46 = *v45;
        if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
        {
          v47 = *(v19 + 20);
          *v73 = 136315650;
          *&v73[4] = "HapticDebugIOMonitor.cpp";
          *&v73[12] = 1024;
          *&v73[14] = 160;
          *&v73[18] = 1024;
          *&v73[20] = v47;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): More than 1 frame per packet in input stream: %u", v73, 0x18u);
        }

        v48 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v48, "More than 1 frame per packet in input stream: %u");
      }

      v20 += *(v19 + 28);
      HIDWORD(v66) = v20;
      v21 += *(v19 + 16);
      LODWORD(v66) = v21;
      v19 += 40;
    }

    while (v19 != *(&v62 + 1));
    DWORD2(v66) = v21;
  }

  v22 = sub_5544(17);
  if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
  {
    sub_618A4(buf);
  }

  v72 = xmmword_517510;
  v23 = sub_809C0();
  memset(v73, 0, 24);
  strcpy(&v73[24], "cwdv");
  v73[32] = 0;
  v74 = 3;
  v76[0] = 0;
  v76[1] = 0;
  v75 = v76;
  v77 = 44739242;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  *buf = off_6DCF90;
  v82 = buf;
  sub_2574C4(&v70, v23, v73, buf);
  sub_85148(buf);
  if (SHIBYTE(v80) < 0)
  {
    operator delete(v78);
  }

  sub_477A0(v76[0]);
  if (*v73)
  {
    *&v73[8] = *v73;
    operator delete(*v73);
  }

  v24 = v71;
  if (v71 != &v70)
  {
    while (1)
    {
      sub_88A00(v73, v24 + 2, "", 45);
      v25 = *(*v73 + 144);
      if (*&v73[8])
      {
        sub_1A8C0(*&v73[8]);
      }

      if (v25 == 1751409257)
      {
        break;
      }

      v24 = v24[1];
      if (v24 == &v70)
      {
        goto LABEL_46;
      }
    }
  }

  if (v24 == &v70)
  {
LABEL_46:
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26)
    {
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *v73 = 136315394;
        *&v73[4] = "HapticDebugIOMonitor.cpp";
        *&v73[12] = 1024;
        *&v73[14] = 47;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): No Haptic Debug Input ports present", v73, 0x12u);
      }
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v28, "No Haptic Debug Input ports present");
  }

  v30 = v24[2];
  v29 = v24[3];
  v31 = (v24 + 2);
  *v73 = v30;
  *&v73[8] = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(v29 + 2, 1uLL, memory_order_relaxed);
  }

  sub_CF934(buf, v73, 1);
  if (*&v73[8])
  {
    std::__shared_weak_count::__release_weak(*&v73[8]);
  }

  v32 = sub_5544(17);
  v33 = *v32;
  if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
  {
    sub_88A00(&v63, v31, "", 52);
    sub_22170(__p, *(v63 + 144));
    if (v69 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    *v73 = 136315650;
    *&v73[4] = "HapticDebugIOMonitor.cpp";
    *&v73[12] = 1024;
    *&v73[14] = 52;
    *&v73[18] = 2080;
    *&v73[20] = v34;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring AudioIOMonitor for %s", v73, 0x1Cu);
    if (v69 < 0)
    {
      operator delete(__p[0]);
    }

    if (v64)
    {
      sub_1A8C0(v64);
    }
  }

  v35 = *(v3 + 8);
  if (v35)
  {
    (*(*v35 + 16))(v35, &v72, &v65, buf);
  }

  sub_65310(buf);
  if (!*(v3 + 32))
  {
    v37 = (DWORD2(v66) * *(v3 + 120));
    operator new[]();
  }

  v36 = v66;
  *(v3 + 40) = v65;
  *(v3 + 56) = v36;
  *(v3 + 72) = v67;
  *(v3 + 104) = v72;
  sub_65310(&v70);
}

void sub_4EF634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, std::__shared_weak_count *a32)
{
  __cxa_free_exception(v32);
  sub_65310(&__p);
  _Unwind_Resume(a1);
}

void sub_4EF7F8(void *a1)
{
  sub_4EF830(a1);

  operator delete();
}

void *sub_4EF830(void *a1)
{
  *a1 = off_6DCF68;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    operator delete[]();
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_4EF8D4(uint64_t a1, int a2)
{
  *a1 = off_6DCF68;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 48) = -1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0xFFFFFFFF00000000;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  sub_456160();
}

void sub_4EF9B4(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 128);
  *(v1 + 128) = 0;
  if (v5)
  {
    operator delete[]();
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4EFA20(uint64_t a1, unsigned int *a2)
{
  if (!*(a1 + 32) || *(a1 + 16) != 1)
  {
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v46 = 136315394;
      v47 = "HapticDebugIOMonitor.cpp";
      v48 = 1024;
      v49 = 85;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v46, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a1 + 48) == -1)
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      v46 = 136315394;
      v47 = "HapticDebugIOMonitor.cpp";
      v48 = 1024;
      v49 = 86;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v46, 0x12u);
    }

    v33 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v33, "Precondition failure.");
  }

  if (!a2)
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v46 = 136315394;
      v47 = "HapticDebugIOMonitor.cpp";
      v48 = 1024;
      v49 = 87;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v46, 0x12u);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v36, "Precondition failure.");
  }

  v4 = *a2;
  if (!v4)
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      v46 = 136315394;
      v47 = "HapticDebugIOMonitor.cpp";
      v48 = 1024;
      v49 = 88;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v46, 0x12u);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "Precondition failure.");
  }

  v5 = 0;
  v6 = 3;
  do
  {
    v5 += a2[v6];
    v6 += 4;
    --v4;
  }

  while (v4);
  v7 = *(a1 + 64);
  v8 = v5 / v7;
  v9 = *(a1 + 28);
  if (v8 != v9 / v7)
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      v46 = 136315394;
      v47 = "HapticDebugIOMonitor.cpp";
      v48 = 1024;
      v49 = 98;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v46, 0x12u);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v42, "Precondition failure.");
  }

  if (v5 != v9)
  {
    v43 = sub_5544(14);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      v46 = 136315394;
      v47 = "HapticDebugIOMonitor.cpp";
      v48 = 1024;
      v49 = 99;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v46, 0x12u);
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v45, "Precondition failure.");
  }

  if (v7 <= v5)
  {
    v10 = 0;
    v11 = 0;
    LODWORD(v12) = 1;
    do
    {
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 4;
        do
        {
          v16 = *(a1 + 80) + v13;
          v17 = *(v16 + 24);
          *(a1 + 24) = *(v16 + 28);
          if (*(a1 + 28) - v10 < v17)
          {
            v25 = sub_5544(14);
            v26 = *v25;
            if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
            {
              v46 = 136315394;
              v47 = "HapticDebugIOMonitor.cpp";
              v48 = 1024;
              v49 = 111;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v46, 0x12u);
            }

            v27 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v27, "Precondition failure.");
          }

          memcpy((*(a1 + 32) + v10), (*&a2[v15] + v17 * v11), v17);
          v10 += v17;
          ++v14;
          v12 = *a2;
          v15 += 4;
          v13 += 40;
        }

        while (v14 < v12);
      }

      ++v11;
    }

    while (v11 < v8);
  }

  v18 = *(a1 + 8);
  if (!v18)
  {
    return 0;
  }

  if ((*(v18 + 16) & 1) == 0)
  {
    return 0;
  }

  v19 = sub_4750C4(v18 + 24, (a1 + 104));
  if (v18 + 32 == v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = *(v19 + 48);
  v22 = *(v20 + 56);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    v23 = (*(*v21 + 24))(v21, v8, a1 + 16, 0);
    if (!v22)
    {
      return v23;
    }

    goto LABEL_28;
  }

  v23 = 0;
  if (v22)
  {
LABEL_28:
    sub_1A8C0(v22);
  }

  return v23;
}

void sub_4F00C0(_Unwind_Exception *exception_object)
{
  v2 = v1;
  if (v2)
  {
    sub_1A8C0(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_4F010C()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v0 = sub_106F10();
  v11 = (v0 > 0xFFu) & v0;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v15 = 16777473;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v18 = 0;
  v19 = 0;
  v20 = -1044381696;
  v21 = 1;
  v22 = -1044381696;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = -1056964608;
  v27 = 1;
  v28 = -1033371648;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = -1033371648;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  v36 = -1044381696;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = -1033371648;
  v41 = 1;
  v42 = 0;
  v43 = 1;
  v44 = -1033371648;
  v45 = 1;
  v46 = -1055916032;
  v47 = 1;
  v48 = -1033371648;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = -1055916032;
  v53 = 1;
  v54 = -1033371648;
  v55 = 1;
  v56 = -1055916032;
  v57 = 1;
  v58 = -1033371648;
  v59 = 1;
  v60 = 0;
  v61 = 1;
  v62 = -1055916032;
  v63 = 1;
  v64 = -1043333120;
  v65 = 1;
  v66 = 0x40000000;
  v67 = 1;
  v68 = 16777472;
  v69 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 1;
  v73 = 1103626240;
  v74 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 1094713344;
  v78 = 1;
  v79 = 1094713344;
  v80 = 1;
  v81 = 1094713344;
  v82 = 1;
  v83 = -1061158912;
  v84 = 1;
  v85 = 1107296256;
  v86 = 1;
  v87 = 1107296256;
  v88 = 1;
  v89 = 1092616192;
  v90 = 1;
  v91 = 0;
  v92 = 1;
  v93 = 0;
  v94 = 1;
  v95 = 16777472;
  v96[0] = 0;
  v96[72] = 0;
  v96[80] = 0;
  v96[120] = 0;
  v96[128] = 0;
  v96[200] = 0;
  v96[208] = 0;
  v96[248] = 0;
  LOBYTE(v97) = 0;
  v98 = 0;
  LOBYTE(v99) = 0;
  v100 = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  LOBYTE(v103) = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  LOBYTE(v107) = 0;
  v108 = 0;
  LOBYTE(v109) = 0;
  v110 = 0;
  LOBYTE(v111) = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  LOBYTE(v115) = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 1;
  v130 = 0;
  v131 = 0;
  LOBYTE(v132) = 0;
  v133 = 0;
  LOBYTE(v134) = 0;
  v135 = 0;
  LOBYTE(v136) = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  v140 = 0;
  LOBYTE(v141) = 0;
  v142 = 0;
  LOBYTE(v143) = 0;
  v144 = 0;
  LOBYTE(v145) = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  LOBYTE(v151) = 0;
  v152 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  LOBYTE(v155) = 0;
  v156 = 0;
  LOBYTE(v157) = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  LOBYTE(__p) = 0;
  v165 = 0;
  v166.__r_.__value_.__s.__data_[0] = 0;
  v167 = 0;
  v168.__r_.__value_.__s.__data_[0] = 0;
  v169 = 0;
  v170.__r_.__value_.__s.__data_[0] = 0;
  v171 = 0;
  v172 = 256;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 2;
  v5 = 5;
  LODWORD(__src) = 3;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x400000003;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  v10 = 16843009;
  LOWORD(v13) = 257;
  HIWORD(v13) = 257;
  LOWORD(v15) = 256;
  v64 = -1047527424;
  v65 = 1;
  v73 = 1103101952;
  v74 = 1;
  v79 = 0;
  v80 = 1;
  v81 = 0;
  v82 = 1;
  v77 = 0;
  v78 = 1;
  v93 = 1090519040;
  v94 = 1;
  v83 = -1040187392;
  v84 = 1;
  v66 = 0;
  v67 = 1;
  LOWORD(v68) = 257;
  v95 = 16843009;
  if ((v98 & 1) == 0)
  {
    v98 = 1;
  }

  v97 = 1836282987;
  if ((v100 & 1) == 0)
  {
    v100 = 1;
  }

  v99 = 2;
  if ((v102 & 1) == 0)
  {
    v102 = 1;
  }

  v101 = 8;
  if ((v104 & 1) == 0)
  {
    v104 = 1;
  }

  v103 = 16;
  v107 = 13;
  v108 = 1;
  v109 = 13;
  v110 = 1;
  v111 = 13;
  v112 = 1;
  v115 = 13;
  v116 = 1;
  v132 = 19;
  v133 = 1;
  v134 = 3;
  v135 = 1;
  v136 = 12;
  v137 = 1;
  v138 = 19;
  v139 = 1;
  v151 = 6;
  v152 = 1;
  v153 = 19;
  v154 = 1;
  v155 = 10;
  v156 = 1;
  v157 = 5;
  v158 = 1;
  v140 = 257;
  if ((v142 & 1) == 0)
  {
    v142 = 1;
  }

  v141 = 4;
  if ((v146 & 1) == 0)
  {
    v146 = 1;
  }

  v145 = 8;
  if ((v144 & 1) == 0)
  {
    v144 = 1;
  }

  v143 = 2;
  sub_30F70C(&__src, 96);
  if (v165 == 1)
  {
    if (SHIBYTE(v164) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v164 = v181;
  }

  else
  {
    __p = __src;
    v164 = v181;
    v165 = 1;
  }

  sub_1F826C(&v166, "_top_mic_general");
  sub_1F826C(&v168, "_top_mic_measurement");
  sub_1F826C(&v170, "_top_mic_hearing_accessibility");
  sub_47DB04(&v1);
  sub_1E0054(v96);
  sub_477A0(v17[0]);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_4F07CC(uint64_t a1, _DWORD **a2, int a3)
{
  v3 = *a2;
  if (a3)
  {
    if (*v3 == 1701669219)
    {
      return;
    }
  }

  else if (v3 == a2[1])
  {
    return;
  }

  v4 = sub_5544(14);
  v5 = *v4;
  if (*v4)
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "Device_MikeyBus_Aspen.cpp";
      v8 = 1024;
      v9 = 631;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid SubPortIDs found for Mikeybus device", &v6, 0x12u);
    }
  }
}

uint64_t sub_4F08B8(uint64_t a1, signed int a2)
{
  if (a2 > 1886222184)
  {
    if (a2 == 1886680175)
    {
      return 0;
    }

    v2 = 1886222185;
  }

  else
  {
    if (a2 == 1885892727)
    {
      return 0;
    }

    v2 = 1886154613;
  }

  if (a2 != v2)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      if (v10 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315650;
      v12 = "Device_MikeyBus_Aspen.cpp";
      v13 = 1024;
      v14 = 620;
      v15 = 2080;
      v16 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType: %s.", buf, 0x1Cu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType: %s.");
  }

  return 0;
}

uint64_t sub_4F0A5C(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  sub_4F0A8C(a1);
  return 1;
}

void sub_4F0A8C(void **a1)
{
  if ((*(*a1 + 11))(a1, 0))
  {
    v2 = 0;
    do
    {
      v63 = 0x696E70747465726DLL;
      LODWORD(v64) = 0;
      v3 = (*(*a1 + 12))(a1, 0, v2);
      LODWORD(v62) = 0;
      LODWORD(v61) = 4;
      (*(*v3 + 40))(v3, &v63, 0, 0, &v61, &v62);
      v4 = v62;
      if (v62 == 1752000867)
      {
        if (sub_4F2F0C(a1))
        {
          v5 = sub_5544(18);
          v6 = sub_5544(33);
          v7 = 0;
          *buf = 0x100000002;
          v8 = *(v5 + 8);
          while (1)
          {
            v9 = *&buf[v7];
            if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
            {
              break;
            }

            v7 += 4;
            if (v7 == 8)
            {
              goto LABEL_27;
            }
          }

          if ((v8 & v9) == 0)
          {
            v5 = v6;
          }

LABEL_27:
          v20 = *v5;
          if (v20)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "Device_MikeyBus_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 464;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating X90 input port subtype", buf, 0x12u);
            }
          }

          *buf = 1701669219;
          sub_128F2C(&v71, 1uLL);
        }

        v4 = v62;
      }

      if (v4 == 1751412840)
      {
        strcpy(buf, "spatbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v10 = sub_59410(v3);
        *(&v13 + 1) = v11;
        *&v13 = v10;
        v12 = v13 >> 32;
        if ((v12 & 0x100000000) != 0)
        {
          if (v12)
          {
            v14 = sub_5544(18);
            v15 = *v14;
            if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "Device_MikeyBus_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 499;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating port for headphone reference stream", buf, 0x12u);
            }

            v16 = a1[11];
            __p[0] = a1[10];
            __p[1] = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }
      }

      v17 = sub_5544(18);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&inAddress, v62);
        p_inAddress = &inAddress;
        if (v77 < 0)
        {
          p_inAddress = inAddress;
        }

        *buf = 136315906;
        *&buf[4] = "Device_MikeyBus_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 504;
        *&buf[18] = 1024;
        *&buf[20] = v2;
        *&buf[24] = 2080;
        *&buf[26] = p_inAddress;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring headset input stream (%u, %s)", buf, 0x22u);
        if (SHIBYTE(v77) < 0)
        {
          operator delete(inAddress);
        }
      }

      v2 = (v2 + 1);
    }

    while (v2 < (*(*a1 + 11))(a1, 0));
  }

  if ((*(*a1 + 11))(a1, 1))
  {
    v59 = 0x6F7574707465726DLL;
    v60 = 0;
    v21 = (*(*a1 + 12))(a1, 1, 0);
    if (!v21)
    {
      v50 = sub_5544(14);
      v51 = *v50;
      if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_MikeyBus_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 514;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v57 = 4;
    v58 = 0;
    (*(*v21 + 40))(v21, &v59, 0, 0, &v57, &v58);
    if (v58 != 1818848869)
    {
      if (v58 == 1818845552)
      {
        v27 = a1[11];
        v71 = a1[10];
        v72 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(v27 + 2, 1uLL, memory_order_relaxed);
        }

        (*(*a1 + 16))(buf, a1);
        sub_2BA8F0();
      }

      if (v58 != 1751412840)
      {
        v53 = sub_5544(14);
        v54 = *v53;
        if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&inAddress, v58);
          v55 = v77 >= 0 ? &inAddress : inAddress;
          *buf = 136315650;
          *&buf[4] = "Device_MikeyBus_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 568;
          *&buf[18] = 2080;
          *&buf[20] = v55;
          _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unknown Stream Terminal Type :%s", buf, 0x1Cu);
          if (SHIBYTE(v77) < 0)
          {
            operator delete(inAddress);
          }
        }

        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Unknown Stream Terminal Type :%s");
      }

      if (!sub_4F2F0C(a1))
      {
        v68 = 1;
        sub_7E96C();
        v39 = a1[11];
        *buf = a1[10];
        *&buf[8] = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(v39 + 2, 1uLL, memory_order_relaxed);
        }

        sub_2B9F64();
      }

      v22 = sub_5544(18);
      v23 = sub_5544(33);
      v24 = 0;
      *buf = 0x100000002;
      v25 = *(v22 + 8);
      while (1)
      {
        v26 = *&buf[v24];
        if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
        {
          break;
        }

        v24 += 4;
        if (v24 == 8)
        {
          goto LABEL_68;
        }
      }

      if ((v25 & v26) == 0)
      {
        v22 = v23;
      }

LABEL_68:
      v40 = *v22;
      if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "Device_MikeyBus_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 524;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating X90 output port subtype", buf, 0x12u);
      }

      v41 = a1[11];
      v69 = a1[10];
      v70 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(v41 + 2, 1uLL, memory_order_relaxed);
      }

      v71 = 0;
      v72 = 0;
      v73 = 0;
      sub_24FEE8(buf, qword_70A408);
      v65 = 0;
      v66 = 0;
      v67 = 0;
      operator new();
    }

    v28 = sub_5544(18);
    v29 = sub_5544(24);
    v30 = 0;
    *buf = 0x100000002;
    v31 = *(v28 + 8);
    while (1)
    {
      v32 = *&buf[v30];
      if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
      {
        break;
      }

      v30 += 4;
      if (v30 == 8)
      {
        goto LABEL_51;
      }
    }

    if ((v31 & v32) == 0)
    {
      v28 = v29;
    }

LABEL_51:
    v33 = sub_5544(33);
    v34 = 0;
    *buf = 0x100000002;
    v35 = *(v28 + 8);
    while (1)
    {
      v36 = *&buf[v34];
      if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
      {
        break;
      }

      v34 += 4;
      if (v34 == 8)
      {
        goto LABEL_57;
      }
    }

    if ((v35 & v36) == 0)
    {
      v28 = v33;
    }

LABEL_57:
    v37 = *v28;
    if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_MikeyBus_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 555;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a Mikeybus LineOut port", buf, 0x12u);
    }

    v38 = a1[11];
    v65 = a1[10];
    v66 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(v38 + 2, 1uLL, memory_order_relaxed);
    }

    inAddress = 0uLL;
    v77 = 0;
    sub_24FEE8(buf, 0x706C6F75u);
    __p[0] = 0;
    __p[1] = 0;
    v75 = 0;
    sub_2BAA08();
  }

  LODWORD(v71) = 1885894516;
  v77 = 0;
  inAddress = 0uLL;
  sub_4625C(&inAddress, &v71, &v71 + 4, 1uLL);
  *buf = inAddress;
  *&buf[16] = v77;
  strcpy(&buf[24], "cwdv");
  buf[32] = 0;
  LODWORD(v79) = 3;
  v82 = 0;
  v81 = 0;
  v80 = &v81;
  LODWORD(v83) = 44739242;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  sub_161C7C(__p, a1, buf);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v84);
  }

  sub_477A0(v81);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v75 == 1)
  {
    v43 = *(__p[1] + 2);
    v42 = *(__p[1] + 3);
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  LODWORD(v65) = 1885892727;
  v77 = 0;
  inAddress = 0uLL;
  sub_4625C(&inAddress, &v65, &v65 + 4, 1uLL);
  *buf = inAddress;
  *&buf[16] = v77;
  strcpy(&buf[24], "cwdv");
  buf[32] = 0;
  LODWORD(v79) = 3;
  v82 = 0;
  v81 = 0;
  v80 = &v81;
  LODWORD(v83) = 44739242;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  sub_161C7C(&v71, a1, buf);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v84);
  }

  sub_477A0(v81);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v73 != 1)
  {
    v44 = 0;
    v45 = 0;
    if (!v42)
    {
      goto LABEL_100;
    }

    goto LABEL_92;
  }

  v44 = v72[2];
  v45 = v72[3];
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (v42)
  {
LABEL_92:
    v46 = std::__shared_weak_count::lock(v42);
    if (v46)
    {
      v47 = v46;
      if (v43)
      {
        if (v45)
        {
          v48 = std::__shared_weak_count::lock(v45);
          if (v48)
          {
            v49 = v48;
            if (v44)
            {
              sub_34D4D4(v43, v44);
            }

            sub_1A8C0(v49);
          }
        }
      }

      sub_1A8C0(v47);
    }
  }

LABEL_100:
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  sub_65310(&v71);
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  sub_65310(__p);
}

void sub_4F2978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  sub_65310(&a49);
  v50 = 112;
  while (1)
  {
    v51 = *(&STACK[0x210] + v50);
    if (v51)
    {
      std::__shared_weak_count::__release_weak(v51);
    }

    v50 -= 32;
    if (v50 == -16)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_4F2F0C(uint64_t a1)
{
  sub_339EE8(v3, a1, COERCE_DOUBLE(1735159650));
  v1 = v4;
  if (v4 == 1)
  {
    sub_8AAAC(v3);
  }

  return v1 ^ 1u;
}

void sub_4F3024(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_4F303C(uint64_t a1, unint64_t a2)
{
  *&inAddress.mSelector = 0x6F757470766F6C64;
  inAddress.mElement = 0;
  sub_4DFC0(a1);
  v4 = HIDWORD(a2);
  if (AudioObjectHasProperty(*(a1 + 268), &inAddress))
  {
    v5 = sub_5544(18);
    v6 = sub_5544(33);
    v7 = 0;
    *&inAddress.mSelector = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *(&inAddress.mSelector + v7);
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v15 = sub_5544(39);
    v16 = 0;
    *&inAddress.mSelector = 0x100000002;
    v17 = *(v5 + 8);
    while (1)
    {
      v18 = *(&inAddress.mSelector + v16);
      if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
      {
        break;
      }

      v16 += 4;
      if (v16 == 8)
      {
        goto LABEL_19;
      }
    }

    if ((v17 & v18) == 0)
    {
      v5 = v15;
    }

LABEL_19:
    v19 = *v5;
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "Device_MikeyBus_Aspen.cpp";
      v39 = 1024;
      v40 = 390;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating Output Volume Control", &inAddress, 0x12u);
    }

    if (a2 == 1885892727 && v4 != 1752709424)
    {
      v20 = *(a1 + 88);
      v35 = *(a1 + 80);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
      }

      sub_4F3D18();
    }

    v21 = *(a1 + 88);
    v36 = *(a1 + 80);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
    }

    sub_4F3E04();
  }

  v10 = sub_5544(18);
  v11 = sub_5544(33);
  v12 = 0;
  if (v4 == 1818845552)
  {
    *&inAddress.mSelector = 0x100000002;
    v13 = *(v10 + 8);
    while (1)
    {
      v14 = *(&inAddress.mSelector + v12);
      if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
      {
        break;
      }

      v12 += 4;
      if (v12 == 8)
      {
        goto LABEL_36;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_36:
    v24 = sub_5544(39);
    v25 = 0;
    *&inAddress.mSelector = 0x100000002;
    v26 = *(v10 + 8);
    while (1)
    {
      v27 = *(&inAddress.mSelector + v25);
      if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
      {
        break;
      }

      v25 += 4;
      if (v25 == 8)
      {
        goto LABEL_48;
      }
    }

    if ((v26 & v27) == 0)
    {
      v10 = v24;
    }

LABEL_48:
    v32 = *v10;
    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "Device_MikeyBus_Aspen.cpp";
      v39 = 1024;
      v40 = 409;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating Output Volume Control for IAP device", &inAddress, 0x12u);
    }

    v33 = *(a1 + 88);
    v37 = *(a1 + 80);
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 16), 1uLL, memory_order_relaxed);
    }

    sub_4F3E04();
  }

  *&inAddress.mSelector = 0x100000002;
  v22 = *(v10 + 8);
  while (1)
  {
    v23 = *(&inAddress.mSelector + v12);
    if (((v22 & v23) != 0) != ((*(v11 + 8) & v23) != 0))
    {
      break;
    }

    v12 += 4;
    if (v12 == 8)
    {
      goto LABEL_42;
    }
  }

  if ((v22 & v23) == 0)
  {
    v10 = v11;
  }

LABEL_42:
  v28 = sub_5544(39);
  v29 = 0;
  *&inAddress.mSelector = 0x100000002;
  v30 = *(v10 + 8);
  while (1)
  {
    v31 = *(&inAddress.mSelector + v29);
    if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
    {
      break;
    }

    v29 += 4;
    if (v29 == 8)
    {
      goto LABEL_56;
    }
  }

  if ((v30 & v31) == 0)
  {
    v10 = v28;
  }

LABEL_56:
  v34 = *v10;
  if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    inAddress.mSelector = 136315394;
    *&inAddress.mScope = "Device_MikeyBus_Aspen.cpp";
    v39 = 1024;
    v40 = 420;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating NULL Output Volume Control", &inAddress, 0x12u);
  }

  sub_15DCEC();
}

void sub_4F35F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_4F3670(os_unfair_lock_s *a1, int a2)
{
  if (a2 == 1819176821)
  {
    v20 = 1886154613;
    v21[1] = 0;
    v22 = 0;
    v21[0] = 0;
    sub_4625C(v21, &v20, v21, 1uLL);
    *buf = *v21;
    *&buf[16] = v22;
    strcpy(&buf[24], "cwdv");
    BYTE2(v24) = 0;
    LODWORD(v26) = 3;
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    v29 = 44739242;
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_161C7C(v15, a1, buf);
    sub_B0484(&v17, v15);
    sub_65310(v15);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v28[0]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v19 != 1)
    {
      v7 = sub_5544(14);
      v8 = *v7;
      if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v9 = v19;
        sub_22170(v21, 0x706C6F75u);
        v10 = SHIBYTE(v22);
        v11 = v21[0];
        sub_23148(v15, a1 + 2);
        v12 = v21;
        if (v10 < 0)
        {
          v12 = v11;
        }

        if (v16 >= 0)
        {
          v13 = v15;
        }

        else
        {
          v13 = v15[0];
        }

        *buf = 136316162;
        *&buf[4] = "Device_MikeyBus_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 647;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2080;
        v24 = v12;
        v25 = 2080;
        v26 = v13;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Found %lu ports of type '%s' in device %s (looking for exactly 1)", buf, 0x30u);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Found %lu ports of type '%s' in device %s (looking for exactly 1)");
    }

    v4 = *(v18 + 16);
    v3 = *(v18 + 24);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v4 + 152))(v4);
    sub_2AAE6C(v4);
    if (v5 != (*(*v4 + 152))(v4))
    {
      v6 = sub_809C0();
      *buf = v4;
      *&buf[8] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_257CE8(v6, buf);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    if (v3)
    {
      sub_1A8C0(v3);
    }

    sub_87980(&v17);
  }
}

void sub_4F39CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  sub_87980(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_4F3A60(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "Device_MikeyBus_Aspen.cpp";
      v8 = 1024;
      v9 = 681;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (result == 1819176821)
  {
    result = sub_6FE08(a2 + 536, &qword_70A488);
    if (result)
    {

      return sub_6FF5C(a2 + 536, &qword_70A488);
    }
  }

  return result;
}

void sub_4F3BE4(int a1, os_unfair_lock_s *a2)
{
  if (!a2)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "Device_MikeyBus_Aspen.cpp";
      v7 = 1024;
      v8 = 672;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_4F3670(a2, a1);
}

void sub_4F3DEC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_4F3ED0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_4F3EE8(unint64_t a1)
{
  if (*(a1 + 532) == 1)
  {
    v2 = sub_3419E4();
    sub_342570(v2, 1819176821, sub_4F3A60);
    v3 = sub_3419E4();
    sub_341E40(v3, sub_4F3BE4);
  }

  v4 = *(a1 + 880);
  if (v4)
  {
    sub_3539A4(v4);
  }

  sub_314648(a1);

  return sub_4B08A4(a1);
}

BOOL sub_4F3F74(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  mScope = a2->mScope;
  if (*&a2->mSelector == qword_70A468 && a2->mElement == dword_70A470 || *&a2->mSelector == qword_70A478 && a2->mElement == dword_70A480 || *&a2->mSelector == qword_70A488 && a2->mElement == dword_70A490)
  {
    v14 = v4;
    v15 = v5;
    v12 = *&a2->mSelector;
    mElement = a2->mElement;
    v8 = *&a2->mSelector;
    v9 = a2->mElement;
    v10 = a3;
    v11 = a4;
    sub_185D3C((a1 + 536), &v12, &v8);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_4F4084(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  v6 = a2[1];
  if (*a2 == qword_70A468 && a2[2] == dword_70A470 || *a2 == qword_70A478 && a2[2] == dword_70A480 || *a2 == qword_70A488 && a2[2] == dword_70A490)
  {
    v14 = v4;
    v15 = v5;
    v12 = *a2;
    v13 = a2[2];
    v8 = *a2;
    v9 = a2[2];
    v10 = a3;
    v11 = a4;
    sub_17C118((a1 + 536), &v12, &v8);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_4F4194(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v23 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 2003332927;
LABEL_39:
    exception[2] = v19;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v24 = *&a2->mSelector;
      v28 = a2->mElement;
      sub_22CE0(__p);
    }

    goto LABEL_34;
  }

  if (!a6)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v25 = *&a2->mSelector;
      v29 = a2->mElement;
      sub_22CE0(__p);
    }

LABEL_34:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 561211770;
    goto LABEL_39;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v26 = *&a2->mSelector;
      v30 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 1852797029;
    goto LABEL_39;
  }

  if (a2->mSelector != 1836414053)
  {
    if (a2->mSelector == 1987013732 && a2->mElement == 1)
    {
      v12 = sub_3419E4();
      if (sub_3428D4(v12))
      {
        v13 = (*a6 + 100.0) / 100.0;
        v14 = sub_3419E4();
        sub_342CD8(v14, v13);
        if (sub_6FE08(a1 + 536, &qword_70A468))
        {
          sub_6FF5C(a1 + 536, &qword_70A468);
        }

        if (sub_6FE08(a1 + 536, &qword_70A478))
        {

          sub_6FF5C(a1 + 536, &qword_70A478);
        }
      }

      return;
    }

    goto LABEL_20;
  }

  if (a2->mElement != 1 || a2->mScope != 1869968496)
  {
LABEL_20:

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  v15 = sub_3419E4();
  v16 = *a6 != 0;

  sub_34332C(v15, v16);
}

void sub_4F47DC(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v28 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v28 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    *v22 = &off_6DDDD0;
    v22[2] = 561211770;
  }

  if (!a6)
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v28 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 > 1986229103)
  {
    if (v12 != 1986229104)
    {
      if (v12 == 1986290211)
      {
        if (*(a2 + 2) == 1)
        {
          *a6 = xmmword_517240;
          return;
        }
      }

      else if (v12 == 1987013732 && *(a2 + 2) == 1)
      {
        v13 = sub_3419E4();
        v14 = (sub_342A00(v13) * 100.0) + -100.0;
LABEL_24:
        *a6 = v14;
        return;
      }

      goto LABEL_19;
    }

    if (*(a2 + 2) != 1)
    {
      goto LABEL_19;
    }

    v17 = sub_3419E4();
    v16 = sub_3428D4(v17);
LABEL_16:
    *a6 = v16;
    return;
  }

  if (v12 == 1835103844)
  {
    v18 = *a5;
    if (v18 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v25 = sub_5544(14);
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        v27 = *a2;
        v28 = *(a2 + 2);
        sub_22CE0(&__p);
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      *v26 = &off_6DDDD0;
      v26[2] = 561211770;
    }

    __p.mSelector = 1986290211;
    *&__p.mScope = *(a2 + 4);
    LODWORD(v27) = 16;
    sub_5C0D8(a1, &__p, 0, 0, &v27, buf);
    v14 = *buf;
    goto LABEL_24;
  }

  if (v12 == 1836414053 && *(a2 + 2) == 1)
  {
    v15 = sub_3419E4();
    v16 = sub_343174(v15);
    goto LABEL_16;
  }

LABEL_19:

  sub_5C0D8(a1, a2, a3, a4, a5, a6);
}

void sub_4F4EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4F4F10(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 2003332927;
LABEL_22:
    exception[2] = v12;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      v17 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 561211770;
    goto LABEL_22;
  }

  mSelector = a2->mSelector;
  result = 4;
  if (a2->mSelector <= 1986229103)
  {
    if (mSelector == 1835103844 || mSelector == 1836414053)
    {
      return result;
    }
  }

  else
  {
    if (mSelector == 1986229104 || mSelector == 1987013732)
    {
      return result;
    }

    if (mSelector == 1986290211)
    {
      return 16;
    }
  }

  return sub_5BD20(a1, a2, a3, a4);
}

uint64_t sub_4F5274(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1986229103)
  {
    if (mSelector != 1835103844)
    {
      v5 = 1836414053;
      goto LABEL_12;
    }

    return 0;
  }

  if (mSelector == 1986229104 || mSelector == 1986290211)
  {
    if (a2->mElement != 1)
    {
      return sub_BE734(a1, a2);
    }

    return 0;
  }

  v5 = 1987013732;
LABEL_12:
  if (mSelector == v5 && a2->mElement == 1)
  {
    return 1;
  }

  return sub_BE734(a1, a2);
}

BOOL sub_4F5300(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1986229103)
  {
    if (mSelector != 1986229104 && mSelector != 1987013732 && mSelector != 1986290211)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (a2->mElement == 1)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (mSelector == 1835103844)
  {
    return 1;
  }

  if (mSelector == 1836414053)
  {
    goto LABEL_12;
  }

LABEL_14:
  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

void sub_4F53B4(void *a1)
{
  sub_4F53EC(a1);

  operator delete();
}

uint64_t sub_4F53EC(void *a1)
{
  *a1 = off_6DCFD8;
  v2 = a1[110];
  a1[110] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_13A300((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_4F5478(uint64_t a1, UInt32 a2, __int128 *a3)
{
  v5 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v5 = off_6DCFD8;
  *(v5 + 532) = 0;
  sub_165D0C(v5 + 536);
  *(a1 + 880) = 0;
  v6 = sub_5544(18);
  v7 = sub_5544(33);
  v8 = 0;
  *v14 = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&v14[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_7:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    *v14 = 136315650;
    *&v14[4] = "Device_MikeyBus_Aspen.cpp";
    v15 = 1024;
    v16 = 96;
    v17 = 2080;
    v18 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Constructing MikeyBus device with UID %s.", v14, 0x1Cu);
  }

  sub_4B4F1C(a1, 2, 0x6F757470u, 0);
  return a1;
}

void sub_4F5610(_Unwind_Exception *a1)
{
  v3 = *(v1 + 880);
  *(v1 + 880) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_13A300(v1 + 536);
  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4F5668(uint64_t a1, int a2)
{
  v8 = 0x676C6F6263646573;
  v9 = 0;
  result = (*(*a1 + 16))(a1, &v8);
  if (result)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = 257;
    sub_A1CA4(&Mutable, @"kind", a2);
    sub_A1CA4(&Mutable, @"UsageCaseSampleRate", 0);
    v5 = Mutable;
    (*(*a1 + 48))(a1, &v8, 0, 0, 8, &v5);
    return sub_A1D30(&Mutable);
  }

  return result;
}

void sub_4F576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A1D30(va);
  _Unwind_Resume(a1);
}

void sub_4F5784(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_4F08C();
  if (caulk::g_realtime_safe_resource)
  {
    v3 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v3 + 16) = 0;
    *(v3 + 24) = v2;
    *(v3 + 32) = v1;
    *v3 = off_6DDCF8;
    *(v3 + 8) = 0;
    caulk::concurrent::messenger::enqueue(&unk_70A4E0, v3);
    if (v1)
    {

      std::__shared_weak_count::__release_weak(v1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_4F5834(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *sub_4F5854(caulk::concurrent::message *a1)
{
  sub_4F58D8(a1);
  *a1 = off_6DDD20;
  v2 = *(a1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(a1);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1, 0x30uLL, 8uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4F58D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 24);
      if (v5)
      {
        sub_1CC3E0(*(v5 + 24));
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_4F593C(caulk::concurrent::message *this)
{
  *this = off_6DDD20;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_4F59AC(caulk::concurrent::message *this)
{
  *this = off_6DDD20;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_4F5A08(caulk::concurrent::message *this)
{
  *this = off_6DDD20;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_4F5A78(caulk::concurrent::message *this)
{
  *this = off_6DDD20;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_4F5ADC(uint64_t a1)
{
  sub_4F5B14(a1);

  operator delete();
}

uint64_t sub_4F5B14(uint64_t a1)
{
  sub_1CC3E0(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_4F5B68(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DDD48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4F5BDC()
{
  memcpy(__dst, &unk_6B5FD0, sizeof(__dst));
  qword_6E4D90 = 0;
  unk_6E4D98 = 0;
  qword_6E4D88 = 0;
  sub_1D3FE0();
}

void sub_4F5C64()
{
  qword_6E4DA0 = 0;
  *algn_6E4DA8 = 0;
  qword_6E4DB0 = 0;
  sub_1D7750();
}

void *sub_4F5D00()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E4DB8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E4DD0, v1, 8);
  qword_6E4DE8 = &qword_6E4DE8;
  unk_6E4DF0 = &qword_6E4DE8;
  qword_6E4DF8 = 0;
  return result;
}

void *sub_4F5DC8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E4E00, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  return sub_4BA00(qword_6E4E18, v1, 1);
}

void sub_4F5E7C()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6E4E30, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6E4E48, &v0[32], 1);
  qword_6E4E60 = &qword_6E4E60;
  *algn_6E4E68 = &qword_6E4E60;
  qword_6E4E70 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6E4E78 = 3;
  sub_4BA00(qword_6E4E80, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6E4E98 = 3;
  sub_4BA00(qword_6E4EA0, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6E4EB8 = 3;
  sub_4BA00(qword_6E4EC0, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6E4ED8 = 3;
  sub_4BA00(qword_6E4EE0, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6E4EF8 = 3;
  sub_4BA00(qword_6E4F00, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6E4F18 = 3;
  sub_4BA00(qword_6E4F20, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6E4F38 = 2;
  sub_4BA00(qword_6E4F40, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6E4F58 = 2;
  sub_4BA00(qword_6E4F60, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6E4F78 = 2;
  sub_4BA00(qword_6E4F80, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6E4F98 = 2;
  sub_4BA00(qword_6E4FA0, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6E4FB8 = 2;
  sub_4BA00(qword_6E4FC0, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6E4FD8 = 2;
  sub_4BA00(qword_6E4FE0, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6E4FF8 = 2;
  sub_4BA00(qword_6E5000, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6E5018 = 2;
  sub_4BA00(qword_6E5020, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6E5038 = 2;
  sub_4BA00(qword_6E5040, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6E5058 = 2;
  sub_4BA00(qword_6E5060, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6E5078 = 3;
  sub_4BA00(qword_6E5080, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6E5098 = 2;
  sub_4BA00(qword_6E50A0, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6E50B8 = 2;
  sub_4BA00(qword_6E50C0, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6E50D8 = 3;
  sub_4BA00(qword_6E50E0, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6E50F8 = 2;
  sub_4BA00(qword_6E5100, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6E5118 = 3;
  sub_4BA00(qword_6E5120, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6E5138 = 2;
  sub_4BA00(qword_6E5140, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6E5158 = 3;
  sub_4BA00(qword_6E5160, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6E5178 = 2;
  sub_4BA00(qword_6E5180, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6E5198 = 3;
  sub_4BA00(qword_6E51A0, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6E51B8 = 2;
  sub_4BA00(qword_6E51C0, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6E51D8 = 3;
  sub_4BA00(qword_6E51E0, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6E51F8 = 2;
  sub_4BA00(qword_6E5200, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6E5218 = 3;
  sub_4BA00(qword_6E5220, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6E5238 = 2;
  sub_4BA00(qword_6E5240, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6E5258 = 3;
  sub_4BA00(qword_6E5260, &v0[32], 1);
  *&v0[32] = 0;
  dword_6E5278 = 2;
  sub_1DD78C(qword_6E5280, &v0[32], 1);
  *&v0[32] = 0;
  dword_6E5298 = 3;
  sub_1DD78C(qword_6E52A0, &v0[32], 1);
  *&v0[32] = off_6B6DA0;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6E52B8, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6B6DE8;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6E5300, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6E52B8;
  *(&v10 + 1) = &unk_6E5300;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_4F6B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_4F6C3C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E5700, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E5718, v1, 1);
  qword_6E5730 = &qword_6E5730;
  *algn_6E5738 = &qword_6E5730;
  qword_6E5740 = 0;
  return result;
}

void *sub_4F6D04()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E5748, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E5760, v1, 8);
  qword_6E5778 = &qword_6E5778;
  unk_6E5780 = &qword_6E5778;
  qword_6E5788 = 0;
  return result;
}

void *sub_4F6DCC()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E5C30, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E5C48, v1, 8);
  qword_6E5C60 = &qword_6E5C60;
  *algn_6E5C68 = &qword_6E5C60;
  qword_6E5C70 = 0;
  return result;
}

void *sub_4F6E94()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E5C78, v1, 8);
}

void sub_4F6F28()
{
  v0 = objc_autoreleasePoolPush();
  qword_6E5DB8 = &qword_6E5DB8;
  unk_6E5DC0 = &qword_6E5DB8;
  qword_6E5DC8 = 0;
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E5DD0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E5DE8, v1, 8);
  objc_autoreleasePoolPop(v0);
}

void *sub_4F7008()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E5E00, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E5E18, v1, 8);
  qword_6E5E30 = &qword_6E5E30;
  *algn_6E5E38 = &qword_6E5E30;
  qword_6E5E40 = 0;
  qword_6E5E48 = 0x7063776970616374;
  dword_6E5E50 = 0;
  byte_6E5E54 = 0;
  if (qword_6E83A0 != -1)
  {
    dispatch_once(&qword_6E83A0, &stru_6BD088);
  }

  if (byte_6E8398 == 1)
  {
    *&v1[0] = 0x767A7A7A76646566;
    result = sub_4BA00(qword_6E5E58, v1, 2);
  }

  else
  {
    LODWORD(v1[0]) = 1987738234;
    result = sub_4BA00(qword_6E5E58, v1, 1);
  }

  word_6E5E70 = word_6E5E70 & 0xF800 | 0x434;
  return result;
}

uint64_t sub_4F7180()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6E5E78, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6E5E90, v3, 1);
  qword_6E5EA8 = &qword_6E5EA8;
  unk_6E5EB0 = &qword_6E5EA8;
  qword_6E5EB8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E5EC0 = v2;
  return result;
}

void *sub_4F7260()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E5F28, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E5F40, v1, 8);
  qword_6E5F58 = &qword_6E5F58;
  unk_6E5F60 = &qword_6E5F58;
  qword_6E5F68 = 0;
  return result;
}

void sub_4F7328()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E5F70, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E5F88, v1, 8);
  qword_6E5FA0 = &qword_6E5FA0;
  *algn_6E5FA8 = &qword_6E5FA0;
  qword_6E5FB0 = 0;
  objc_autoreleasePoolPop(v0);
}

void *sub_4F7408()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6020, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E6038, v1, 8);
  qword_6E6050 = &qword_6E6050;
  *algn_6E6058 = &qword_6E6050;
  qword_6E6060 = 0;
  return result;
}

void *sub_4F74D0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6508, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E6520, v1, 8);
  qword_6E6538 = &qword_6E6538;
  unk_6E6540 = &qword_6E6538;
  qword_6E6548 = 0;
  return result;
}

void *sub_4F7598()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6570, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E6588, v1, 1);
  qword_6E65A0 = &qword_6E65A0;
  *algn_6E65A8 = &qword_6E65A0;
  qword_6E65B0 = 0;
  return result;
}

void *sub_4F7660()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E65B8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E65D0, v1, 1);
  qword_6E65E8 = &qword_6E65E8;
  unk_6E65F0 = &qword_6E65E8;
  qword_6E65F8 = 0;
  return result;
}

void sub_4F7728()
{
  v0 = objc_autoreleasePoolPush();
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6600, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6618, v1, 1);
  qword_6E6630 = &qword_6E6630;
  *algn_6E6638 = &qword_6E6630;
  qword_6E6640 = 0;
  objc_autoreleasePoolPop(v0);
}

void *sub_4F7808()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6668, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E6680, v1, 8);
}

BOOL sub_4F78BC()
{
  LODWORD(v4[0]) = 1986295651;
  sub_4BA00(qword_6E66A0, v4, 1);
  v4[8] = off_6DDC08;
  v4[9] = *"lovc";
  v4[10] = xmmword_6DDC28;
  v4[11] = *&off_6DDC38;
  v4[4] = xmmword_6DDBC8;
  v4[5] = *&off_6DDBD8;
  v4[6] = *"lovl";
  v4[7] = unk_6DDBF8;
  v4[0] = *"ulov";
  v4[1] = unk_6DDB98;
  v4[2] = off_6DDBA8;
  v4[3] = *"dguv";
  v0 = sub_1D8D14(qword_6E66B8, v4, 8);
  qword_6E66D0 = &qword_6E66D0;
  *algn_6E66D8 = &qword_6E66D0;
  qword_6E66E0 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_6E66E8 = v1;
  sub_16040C(&unk_6E66F0, 0);
  sub_53E8(&qword_6E6720, "stereo_input_orientation");
  LODWORD(v4[0]) = 0;
  result = sub_1235F4(@"VIMinFrameSize", @"com.apple.audio.virtualaudio", v4);
  v3 = v4[0];
  if (!result)
  {
    v3 = 0;
  }

  if (!result || v3 <= 0)
  {
    v3 = 128;
  }

  dword_6E6738 = v3;
  return result;
}

void *sub_4F7A10()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E6740, v1, 8);
}

void *sub_4F7AA4()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6758, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E6770, v1, 8);
}

uint64_t *sub_4F7B58()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6798, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E67B0, v1, 1);
  qword_6E67C8 = &qword_6E67C8;
  unk_6E67D0 = &qword_6E67C8;
  qword_6E67D8 = 0;
  qmemcpy(&qword_6E67E0, "oiupiwcpnupe", 12);
  byte_6E67EC = 1;
  sub_44E44(qword_6E67F0, qword_6E67B0);
  word_6E6808 = word_6E6808 & 0xF800 | 0x61E;
  qmemcpy(&qword_6E6810, "iiupiwcpnupe", 12);
  byte_6E681C = 1;
  result = sub_44E44(qword_6E6820, qword_6E67B0);
  word_6E6838 = word_6E6838 & 0xF800 | 0x617;
  return result;
}

void *sub_4F7CC0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6840, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E6858, v1, 8);
  qword_6E6870 = &qword_6E6870;
  *algn_6E6878 = &qword_6E6870;
  qword_6E6880 = 0;
  return result;
}

void sub_4F7D88()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

uint64_t sub_4F7E60()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6E6888, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6E68A0, v3, 8);
  qword_6E68B8 = &qword_6E68B8;
  unk_6E68C0 = &qword_6E68B8;
  qword_6E68C8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E68D0 = v2;
  return result;
}

void *sub_4F7F40()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6A80, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E6A98, v1, 1);
  qword_6E6AB0 = &qword_6E6AB0;
  *algn_6E6AB8 = &qword_6E6AB0;
  qword_6E6AC0 = 0;
  return result;
}

void *sub_4F8008()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6AC8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E6AE0, v1, 8);
  qword_6E6AF8 = &qword_6E6AF8;
  unk_6E6B00 = &qword_6E6AF8;
  qword_6E6B08 = 0;
  return result;
}

void *sub_4F80D0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6B10, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E6B28, v1, 1);
  qword_6E6B40 = &qword_6E6B40;
  *algn_6E6B48 = &qword_6E6B40;
  qword_6E6B50 = 0;
  return result;
}

uint64_t *sub_4F8198()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6B58, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6B70, v1, 1);
  qword_6E6B88 = &qword_6E6B88;
  unk_6E6B90 = &qword_6E6B88;
  qword_6E6B98 = 0;
  qmemcpy(&qword_6E6BA0, "obtpiwcpnupe", 12);
  byte_6E6BAC = 1;
  sub_44E44(qword_6E6BB0, qword_6E6B70);
  word_6E6BC8 = word_6E6BC8 & 0xF800 | 0x616;
  qmemcpy(&qword_6E6BD0, "ibtpiwcpnupe", 12);
  byte_6E6BDC = 1;
  sub_44E44(qword_6E6BE0, qword_6E6B70);
  word_6E6BF8 = word_6E6BF8 & 0xF800 | 0x617;
  qmemcpy(&qword_6E6C00, "tbtpiwcpnupe", 12);
  byte_6E6C0C = 1;
  result = sub_44E44(qword_6E6C10, qword_6E6B70);
  word_6E6C28 = word_6E6C28 & 0xF800 | 0x607;
  return result;
}

void *sub_4F834C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6C30, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6C48, v1, 1);
  qword_6E6C60 = &qword_6E6C60;
  *algn_6E6C68 = &qword_6E6C60;
  qword_6E6C70 = 0;
  qword_6E6C78 = 0x7063776970616976;
  dword_6E6C80 = 0;
  byte_6E6C84 = 0;
  if (qword_6E83A0 != -1)
  {
    dispatch_once(&qword_6E83A0, &stru_6BD088);
  }

  if (byte_6E8398 == 1)
  {
    *&v1[0] = 0x767A7A7A76646566;
    result = sub_4BA00(qword_6E6C88, v1, 2);
  }

  else
  {
    LODWORD(v1[0]) = 1987738234;
    result = sub_4BA00(qword_6E6C88, v1, 1);
  }

  word_6E6CA0 = word_6E6CA0 & 0xF800 | 0x435;
  return result;
}

void *sub_4F84C4()
{
  *v1 = 1986295651;
  sub_4BA00(qword_6E6CA8, v1, 1);
  *&v1[128] = off_6DDC08;
  *&v1[144] = *"lovc";
  *&v1[160] = xmmword_6DDC28;
  *&v1[176] = *&off_6DDC38;
  *&v1[64] = xmmword_6DDBC8;
  *&v1[80] = *&off_6DDBD8;
  *&v1[96] = *"lovl";
  *&v1[112] = unk_6DDBF8;
  *v1 = *"ulov";
  *&v1[16] = unk_6DDB98;
  *&v1[32] = off_6DDBA8;
  *&v1[48] = *"dguv";
  sub_1D8D14(qword_6E6CC0, v1, 8);
  xmmword_6E6CD8 = 0u;
  unk_6E6CE8 = 0u;
  dword_6E6CF8 = 1065353216;
  qword_6E6D00 = &qword_6E6D00;
  *algn_6E6D08 = &qword_6E6D00;
  qword_6E6D10 = 0;
  memcpy(v1, "2meb", sizeof(v1));
  sub_2299E8(&qword_6E6D18, v1, 23);
  *&v1[96] = xmmword_518DF4;
  *&v1[112] = unk_518E04;
  *&v1[128] = xmmword_518E14;
  *&v1[32] = xmmword_518DB4;
  *&v1[48] = unk_518DC4;
  *&v1[64] = xmmword_518DD4;
  *&v1[80] = unk_518DE4;
  *v1 = xmmword_518D94;
  *&v1[16] = unk_518DA4;
  return sub_2299E8(&qword_6E6D30, v1, 12);
}

void *sub_4F8618()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6D48, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E6D60, v1, 1);
  qword_6E6D78 = &qword_6E6D78;
  unk_6E6D80 = &qword_6E6D78;
  qword_6E6D88 = 0;
  return result;
}

void sub_4F86E0()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

uint64_t sub_4F87B8()
{
  *v3 = 1986295651;
  sub_4BA00(qword_6E6D90, v3, 1);
  v8 = off_6DDC08;
  v9 = *"lovc";
  v10 = xmmword_6DDC28;
  v11 = *&off_6DDC38;
  v4 = xmmword_6DDBC8;
  v5 = *&off_6DDBD8;
  v6 = *"lovl";
  v7 = unk_6DDBF8;
  *v3 = *"ulov";
  *&v3[16] = unk_6DDB98;
  *&v3[32] = off_6DDBA8;
  *&v3[48] = *"dguv";
  v0 = sub_1D8D14(qword_6E6DA8, v3, 8);
  qword_6E6DC0 = &qword_6E6DC0;
  *algn_6E6DC8 = &qword_6E6DC0;
  qword_6E6DD0 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_6E6DD8 = v1;
  qmemcpy(v3, "mtslgaswnepsnehsshpsdmpsfcpsafrhdmlussthsslcempstlabSSxEeiaa", 60);
  qword_6E6DE8 = 0;
  unk_6E6DF0 = 0;
  qword_6E6DE0 = 0;
  return sub_4625C(&qword_6E6DE0, v3, &v3[60], 0xFuLL);
}

void sub_4F88DC()
{
  qword_6E6DF8 = 0;
  unk_6E6E00 = 0;
  qword_6E6E08 = 0;
  sub_1D7750();
}

void *sub_4F8998()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6E10, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E6E28, v1, 8);
  qword_6E6E40 = &qword_6E6E40;
  *algn_6E6E48 = &qword_6E6E40;
  qword_6E6E50 = 0;
  return result;
}

void *sub_4F8A60()
{
  qword_6E6E58 = &qword_6E6E58;
  unk_6E6E60 = &qword_6E6E58;
  qword_6E6E68 = 0;
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E6E70, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E6E88, v1, 8);
}

void *sub_4F8B28()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6EA0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E6EB8, v1, 1);
  qword_6E6ED0 = &qword_6E6ED0;
  *algn_6E6ED8 = &qword_6E6ED0;
  qword_6E6EE0 = 0;
  return result;
}

uint64_t sub_4F8BF0()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6E6EE8, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6E6F00, v3, 1);
  qword_6E6F18 = &qword_6E6F18;
  unk_6E6F20 = &qword_6E6F18;
  qword_6E6F28 = 0;
  qword_6E6F30 = 0x706362696C70696ELL;
  dword_6E6F38 = 0;
  byte_6E6F3C = 0;
  *&v3[0] = 0x766D696E766F6464;
  sub_4BA00(qword_6E6F40, v3, 2);
  word_6E6F58 = word_6E6F58 & 0xF800 | 0x630;
  qword_6E6F60 = 0x706362696870696ELL;
  dword_6E6F68 = 0;
  byte_6E6F6C = 0;
  *&v3[0] = 0x766D696E766F6464;
  v0 = sub_4BA00(qword_6E6F70, v3, 2);
  word_6E6F88 = word_6E6F88 & 0xF800 | 0x630;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E6F90 = v2;
  return result;
}

void *sub_4F8D74()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E6F98, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E6FB0, v1, 1);
  qword_6E6FC8 = &qword_6E6FC8;
  unk_6E6FD0 = &qword_6E6FC8;
  qword_6E6FD8 = 0;
  return result;
}

uint64_t sub_4F8E3C()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6E6FE0, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6E6FF8, v3, 8);
  qword_6E7010 = &qword_6E7010;
  *algn_6E7018 = &qword_6E7010;
  qword_6E7020 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E7028 = v2;
  return result;
}

void *sub_4F8F1C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E7030, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E7048, v1, 8);
  qword_6E7060 = &qword_6E7060;
  *algn_6E7068 = &qword_6E7060;
  qword_6E7070 = 0;
  return result;
}

void *sub_4F8FE4()
{
  qword_6E7078 = &qword_6E7078;
  unk_6E7080 = &qword_6E7078;
  qword_6E7088 = 0;
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E7090, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E70A8, v1, 8);
}

uint64_t sub_4F90AC()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6E70C0, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6E70D8, v3, 8);
  qword_6E70F0 = &qword_6E70F0;
  *algn_6E70F8 = &qword_6E70F0;
  qword_6E7100 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E7108 = v2;
  return result;
}

void sub_4F918C()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

void sub_4F9264()
{
  v8[0] = off_6DDC08;
  v8[1] = *"lovc";
  v8[2] = xmmword_6DDC28;
  v8[3] = *&off_6DDC38;
  v5[0] = xmmword_6DDBC8;
  v5[1] = *&off_6DDBD8;
  v6 = *"lovl";
  v7 = unk_6DDBF8;
  v2 = *"ulov";
  v3[0] = unk_6DDB98;
  v3[1] = off_6DDBA8;
  v4 = *"dguv";
  sub_1D8D14(qword_6E7190, &v2, 8);
  LODWORD(v2) = 1986295651;
  sub_4BA00(qword_6E71A8, &v2, 1);
  qword_6E71C0 = &qword_6E71C0;
  *algn_6E71C8 = &qword_6E71C0;
  qword_6E71D0 = 0;
  sub_53E8(&v2, "Null_Device");
  sub_53E8(v3 + 8, "Actuator");
  sub_53E8(&v4, "Halogen");
  sub_53E8(v5 + 8, "Hawking");
  sub_53E8(&v6, "Flicker");
  sub_53E8(&v7 + 8, "Penrose");
  v0 = 0;
  dword_6E71E0 = 2;
  qword_6E71F8 = 0;
  qword_6E71F0 = 0;
  qword_6E71E8 = &qword_6E71F0;
  do
  {
    sub_23F54C(&qword_6E71E8, &qword_6E71F0, (&v3[-1] + v0));
    v0 += 24;
  }

  while (v0 != 144);
  for (i = 0; i != -144; i -= 24)
  {
    if (*(v8 + i + 15) < 0)
    {
      operator delete(*(&v7 + i + 8));
    }
  }

  dword_6E7200 = 3;
  qword_6E7218 = 0;
  qword_6E7210 = 0;
  qword_6E7208 = &qword_6E7210;
}

void *sub_4F94C4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E7220, v1, 8);
}

uint64_t *sub_4F9558()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E7238, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E7250, v1, 8);
  qword_6E7268 = &qword_6E7268;
  unk_6E7270 = &qword_6E7268;
  qword_6E7278 = 0;
  qword_6E7280 = 0x7063787870616E63;
  dword_6E7288 = 0;
  byte_6E728C = 0;
  result = sub_44E44(qword_6E7290, qword_6E7238);
  word_6E72A8 = word_6E72A8 & 0xF800 | 0x421;
  return result;
}

void *sub_4F9664()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E72B0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E72C8, v1, 1);
  qword_6E72E0 = &qword_6E72E0;
  *algn_6E72E8 = &qword_6E72E0;
  qword_6E72F0 = 0;
  return result;
}

void sub_4F972C()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6E72F8, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6E7310, &v0[32], 1);
  qword_6E7328 = &qword_6E7328;
  unk_6E7330 = &qword_6E7328;
  qword_6E7338 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6E7340 = 3;
  sub_4BA00(&algn_6E7344[4], &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6E7360 = 3;
  sub_4BA00(&algn_6E7364[4], &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6E7380 = 3;
  sub_4BA00(&algn_6E7384[4], &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6E73A0 = 3;
  sub_4BA00(&algn_6E73A4[4], &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6E73C0 = 3;
  sub_4BA00(&algn_6E73C4[4], &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6E73E0 = 3;
  sub_4BA00(&algn_6E73E4[4], &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6E7400 = 2;
  sub_4BA00(&algn_6E7404[4], &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6E7420 = 2;
  sub_4BA00(&algn_6E7424[4], &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6E7440 = 2;
  sub_4BA00(&algn_6E7444[4], &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6E7460 = 2;
  sub_4BA00(&algn_6E7464[4], &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6E7480 = 2;
  sub_4BA00(&algn_6E7484[4], &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6E74A0 = 2;
  sub_4BA00(&algn_6E74A4[4], &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6E74C0 = 2;
  sub_4BA00(&algn_6E74C4[4], &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6E74E0 = 2;
  sub_4BA00(&algn_6E74E4[4], &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6E7500 = 2;
  sub_4BA00(&algn_6E7504[4], &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6E7520 = 2;
  sub_4BA00(&algn_6E7524[4], &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6E7540 = 3;
  sub_4BA00(&algn_6E7544[4], &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6E7560 = 2;
  sub_4BA00(&algn_6E7564[4], &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6E7580 = 2;
  sub_4BA00(&algn_6E7584[4], &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6E75A0 = 3;
  sub_4BA00(&algn_6E75A4[4], &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6E75C0 = 2;
  sub_4BA00(&algn_6E75C4[4], &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6E75E0 = 3;
  sub_4BA00(&algn_6E75E4[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6E7600 = 2;
  sub_4BA00(&algn_6E7604[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6E7620 = 3;
  sub_4BA00(&algn_6E7624[4], &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6E7640 = 2;
  sub_4BA00(&algn_6E7644[4], &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6E7660 = 3;
  sub_4BA00(&algn_6E7664[4], &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6E7680 = 2;
  sub_4BA00(&algn_6E7684[4], &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6E76A0 = 3;
  sub_4BA00(&algn_6E76A4[4], &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6E76C0 = 2;
  sub_4BA00(&algn_6E76C4[4], &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6E76E0 = 3;
  sub_4BA00(&algn_6E76E4[4], &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6E7700 = 2;
  sub_4BA00(&algn_6E7704[4], &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6E7720 = 3;
  sub_4BA00(&algn_6E7724[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6E7740 = 2;
  sub_1DD78C(&algn_6E7744[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6E7760 = 3;
  sub_1DD78C(&algn_6E7764[4], &v0[32], 1);
  *&v0[32] = off_6BAD68;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6E7780, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6BADB0;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6E77C8, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6E7780;
  *(&v10 + 1) = &unk_6E77C8;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_4FA480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_4FA55C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E7BF0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E7C08, v1, 1);
  qword_6E7C20 = &qword_6E7C20;
  *algn_6E7C28 = &qword_6E7C20;
  qword_6E7C30 = 0;
  return result;
}

void *sub_4FA624()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E7C38, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E7C50, v1, 1);
  qword_6E7C68 = &qword_6E7C68;
  unk_6E7C70 = &qword_6E7C68;
  qword_6E7C78 = 0;
  return result;
}

void sub_4FA6EC()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

void *sub_4FA7C4()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(&qword_6E7C80, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E7C98, v1, 8);
  qword_6E7CB0 = &qword_6E7CB0;
  *algn_6E7CB8 = &qword_6E7CB0;
  qword_6E7CC0 = 0;
  return result;
}

void *sub_4FA88C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E7CC8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E7CE0, v1, 8);
  qword_6E7CF8 = &qword_6E7CF8;
  unk_6E7D00 = &qword_6E7CF8;
  qword_6E7D08 = 0;
  return result;
}

void sub_4FA954()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

void *sub_4FAA2C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E7D10, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  return sub_4BA00(qword_6E7D28, v1, 1);
}

uint64_t *sub_4FAAE0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E7DC8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E7DE0, v1, 8);
  qword_6E7DF8 = &qword_6E7DF8;
  unk_6E7E00 = &qword_6E7DF8;
  qword_6E7E08 = 0;
  qword_6E7E18 = 0x7063787870617020;
  dword_6E7E20 = 0;
  byte_6E7E24 = 0;
  result = sub_44E44(&algn_6E7E25[3], qword_6E7DC8);
  word_6E7E40 = word_6E7E40 & 0xF800 | 0x620;
  return result;
}

void sub_4FABEC()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

uint64_t sub_4FACC4()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6E7E48, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6E7E60, v3, 1);
  qword_6E7E78 = &qword_6E7E78;
  unk_6E7E80 = &qword_6E7E78;
  qword_6E7E88 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E7E90 = v2;
  return result;
}

void sub_4FADA4()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

uint64_t sub_4FAE7C()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6E7E98, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6E7EB0, v3, 8);
  qword_6E7EC8 = &qword_6E7EC8;
  unk_6E7ED0 = &qword_6E7EC8;
  qword_6E7ED8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E7EE0 = v2;
  return result;
}

void sub_4FAF5C()
{
  v10 = off_6DDC08;
  v11 = *"lovc";
  v12 = xmmword_6DDC28;
  v13 = *&off_6DDC38;
  v6 = xmmword_6DDBC8;
  v7 = *&off_6DDBD8;
  v8 = *"lovl";
  v9 = unk_6DDBF8;
  v2 = *"ulov";
  v3 = unk_6DDB98;
  v4 = off_6DDBA8;
  v5 = *"dguv";
  sub_1D8D14(qword_6E7F18, &v2, 8);
  LODWORD(v2) = 1986295651;
  sub_4BA00(qword_6E7F30, &v2, 1);
  LODWORD(v2) = 1885500772;
  *(&v2 + 1) = off_6DCD58;
  *&v3 = sub_2841DC;
  *&v4 = &v2 + 8;
  DWORD2(v4) = 1718186601;
  *&v5 = off_6DCD58;
  *(&v5 + 1) = sub_283634;
  *(&v6 + 1) = &v5;
  LODWORD(v7) = 1651074168;
  *(&v7 + 1) = off_6DCD58;
  *&v8 = sub_283160;
  *&v9 = &v7 + 8;
  DWORD2(v9) = 1735287906;
  *&v10 = off_6DCD58;
  *(&v10 + 1) = sub_282B74;
  *(&v11 + 1) = &v10;
  LODWORD(v12) = 1920365171;
  *(&v12 + 1) = off_6DCD58;
  *&v13 = sub_2828A4;
  v14 = &v12 + 8;
  v15 = 1684303986;
  v16 = off_6DCD58;
  v17 = sub_281BB0;
  v18 = &v16;
  v19 = 1667789676;
  v20 = off_6DCD58;
  v21 = sub_281810;
  v22 = &v20;
  v23 = 1768907891;
  v24 = off_6DCD58;
  v25 = sub_280C68;
  v26 = &v24;
  v27 = 1936749683;
  v28[0] = off_6DCD58;
  v28[1] = sub_27FBE4;
  v28[3] = v28;
  v29 = 14;
  v30[0] = off_6DCD58;
  v30[1] = sub_27F870;
  v30[3] = v30;
  v31 = 1936746861;
  v32[0] = off_6DCD58;
  v32[1] = sub_27F7B4;
  v32[3] = v32;
  v33 = 1835235437;
  v34[0] = off_6DCD58;
  v34[1] = sub_27F6F8;
  v34[3] = v34;
  v35 = 1886548852;
  v36[0] = off_6DCD58;
  v36[1] = sub_27F630;
  v36[3] = v36;
  v37 = 1886610801;
  v38[0] = off_6DCD58;
  v38[1] = sub_27F574;
  v38[3] = v38;
  v39 = 1886352244;
  v40[0] = off_6DCD58;
  v40[1] = sub_27F4A8;
  v40[3] = v40;
  v41 = 1701737068;
  v42[0] = off_6DCD58;
  v42[1] = sub_27F3B0;
  v42[3] = v42;
  v43 = 1818326117;
  v44[0] = off_6DCD58;
  v44[1] = sub_27F2B8;
  v44[3] = v44;
  v45 = 1701080167;
  v46[0] = off_6DCD58;
  v46[1] = sub_27F1C0;
  v46[3] = v46;
  v47 = 1633972835;
  v48[0] = off_6DCD58;
  v48[1] = sub_27E890;
  v48[3] = v48;
  v49 = 1668248691;
  v50[0] = off_6DCD58;
  v50[1] = sub_27E7C4;
  v50[3] = v50;
  v51 = 1634625388;
  v52[0] = off_6DCD58;
  v52[1] = sub_27E45C;
  v52[3] = v52;
  sub_27386C(&unk_6E7F48, &v2, 21);
  for (i = 808; i != -32; i -= 40)
  {
    sub_273D54(&v2 + i);
  }

  LODWORD(v2) = 1987405668;
  *(&v2 + 1) = off_6DCDA0;
  *&v3 = sub_27E220;
  *&v4 = &v2 + 8;
  DWORD2(v4) = 1987013749;
  *&v5 = off_6DCDA0;
  *(&v5 + 1) = sub_279F38;
  *(&v6 + 1) = &v5;
  LODWORD(v7) = 1668706156;
  *(&v7 + 1) = off_6DCDA0;
  *&v8 = sub_279CE4;
  *&v9 = &v7 + 8;
  DWORD2(v9) = 1819701100;
  *&v10 = off_6DCDA0;
  *(&v10 + 1) = sub_279A6C;
  *(&v11 + 1) = &v10;
  LODWORD(v12) = 1953918828;
  *(&v12 + 1) = off_6DCDA0;
  *&v13 = sub_279700;
  v14 = &v12 + 8;
  v15 = 1752659567;
  v16 = off_6DCDA0;
  v17 = sub_279360;
  v18 = &v16;
  v19 = 1987343987;
  v20 = off_6DCDA0;
  v21 = sub_277138;
  v22 = &v20;
  v23 = 1651275122;
  v24 = off_6DCDA0;
  v25 = sub_275F48;
  v26 = &v24;
  sub_273DD4(&unk_6E7F70, &v2, 8);
  for (j = 288; j != -32; j -= 40)
  {
    sub_2742BC(&v2 + j);
  }

  qword_6E7F98 = &qword_6E7F98;
  unk_6E7FA0 = &qword_6E7F98;
  qword_6E7FA8 = 0;
  xmmword_6E7FE0 = xmmword_5171B0;
  xmmword_6E8118 = xmmword_5171B0;
  xmmword_6E80C0 = xmmword_5171C0;
  xmmword_6E8000 = xmmword_5171C0;
  sub_16040C(&dword_6E7FB0, 6u);
  sub_27433C();
}

void sub_4FB838(_Unwind_Exception *a1)
{
  for (i = 288; i != -32; i -= 40)
  {
    sub_2742BC(v1 + i);
  }

  _Unwind_Resume(a1);
}

void *sub_4FB888()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E82C8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E82E0, v1, 1);
  qword_6E82F8 = &qword_6E82F8;
  unk_6E8300 = &qword_6E82F8;
  qword_6E8308 = 0;
  return result;
}

void *sub_4FB950()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8310, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E8328, v1, 8);
  qword_6E8340 = &qword_6E8340;
  *algn_6E8348 = &qword_6E8340;
  qword_6E8350 = 0;
  return result;
}

void sub_4FBA18()
{
  memcpy(__dst, &unk_6BC928, sizeof(__dst));
  qword_6E8360 = 0;
  unk_6E8368 = 0;
  qword_6E8358 = 0;
  sub_1D3FE0();
}

void *sub_4FBAA0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8638, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E8650, v1, 8);
}

void *sub_4FBB54()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8668, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8680, v1, 1);
  qword_6E8698 = &qword_6E8698;
  unk_6E86A0 = &qword_6E8698;
  qword_6E86A8 = 0;
  return result;
}

void *sub_4FBC1C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E86B0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E86C8, v1, 1);
  qword_6E86E0 = &qword_6E86E0;
  *algn_6E86E8 = &qword_6E86E0;
  qword_6E86F0 = 0;
  return result;
}

void *sub_4FBCE4()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E86F8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E8710, v1, 8);
}

uint64_t *sub_4FBD98()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8760, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8778, v1, 8);
  qword_6E8790 = &qword_6E8790;
  *algn_6E8798 = &qword_6E8790;
  qword_6E87A0 = 0;
  qmemcpy(&qword_6E87A8, "wphpiwcpphpe", 12);
  byte_6E87B4 = 1;
  sub_44E44(qword_6E87B8, qword_6E8760);
  word_6E87D0 = word_6E87D0 & 0xF800 | 0x416;
  qmemcpy(&qword_6E87D8, "wphpiwcpphpe", 12);
  byte_6E87E4 = 1;
  sub_44E44(&algn_6E87E5[3], qword_6E8760);
  word_6E8800 = word_6E8800 & 0xF800 | 0x616;
  qmemcpy(&qword_6E8808, "wphpiwcpphpe", 12);
  byte_6E8814 = 1;
  sub_44E44(qword_6E8818, qword_6E8760);
  word_6E8830 = word_6E8830 & 0xF800 | 0x656;
  qmemcpy(&qword_6E8838, "iwmpiwcpwqpe", 12);
  byte_6E8844 = 1;
  result = sub_44E44(&algn_6E8845[3], qword_6E8760);
  word_6E8860 = word_6E8860 & 0xF800 | 0x457;
  return result;
}

uint64_t *sub_4FBF98()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8868, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8880, v1, 8);
  qword_6E8898 = 0x70637769706D7769;
  dword_6E88A0 = 0;
  byte_6E88A4 = 0;
  result = sub_44E44(&algn_6E88A5[3], qword_6E8868);
  word_6E88C0 = word_6E88C0 & 0xF800 | 0x417;
  return result;
}

void *sub_4FC094()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E88C8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E88E0, v1, 1);
  qword_6E88F8 = &qword_6E88F8;
  unk_6E8900 = &qword_6E88F8;
  qword_6E8908 = 0;
  return result;
}

void *sub_4FC15C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8A10, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8A28, v1, 1);
  qword_6E8A40 = &qword_6E8A40;
  *algn_6E8A48 = &qword_6E8A40;
  qword_6E8A50 = 0;
  return result;
}

void *sub_4FC224()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8A58, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8A70, v1, 1);
  qword_6E8A88 = &qword_6E8A88;
  unk_6E8A90 = &qword_6E8A88;
  qword_6E8A98 = 0;
  return result;
}

void *sub_4FC2EC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8AA0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8AB8, v1, 1);
  qword_6E8AD0 = &qword_6E8AD0;
  *algn_6E8AD8 = &qword_6E8AD0;
  qword_6E8AE0 = 0;
  return result;
}

uint64_t sub_4FC3B4()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6E8AE8, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6E8B00, v3, 1);
  qword_6E8B18 = &qword_6E8B18;
  unk_6E8B20 = &qword_6E8B18;
  qword_6E8B28 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E8B30 = v2;
  return result;
}

void *sub_4FC494()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8B38, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8B50, v1, 1);
  qword_6E8B68 = &qword_6E8B68;
  unk_6E8B70 = &qword_6E8B68;
  qword_6E8B78 = 0;
  return result;
}

void *sub_4FC55C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8B80, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8B98, v1, 1);
  qword_6E8BB0 = &qword_6E8BB0;
  *algn_6E8BB8 = &qword_6E8BB0;
  qword_6E8BC0 = 0;
  return result;
}

void *sub_4FC624()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8BC8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8BE0, v1, 1);
  qword_6E8BF8 = &qword_6E8BF8;
  unk_6E8C00 = &qword_6E8BF8;
  qword_6E8C08 = 0;
  return result;
}

uint64_t *sub_4FC6EC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8C10, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8C28, v1, 1);
  qword_6E8C40 = &qword_6E8C40;
  *algn_6E8C48 = &qword_6E8C40;
  qword_6E8C50 = 0;
  qword_6E8C58 = 0x706362697073706BLL;
  dword_6E8C60 = 0;
  byte_6E8C64 = 0;
  sub_44E44(&algn_6E8C65[3], qword_6E8C28);
  word_6E8C80 = word_6E8C80 & 0xF800 | 0x630;
  qword_6E8C88 = 0x70636269706D6269;
  dword_6E8C90 = 0;
  byte_6E8C94 = 0;
  result = sub_44E44(qword_6E8C98, qword_6E8C28);
  word_6E8CB0 = word_6E8CB0 & 0xF800 | 0x631;
  return result;
}

void *sub_4FC83C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8CB8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E8CD0, v1, 8);
  qword_6E8CE8 = &qword_6E8CE8;
  unk_6E8CF0 = &qword_6E8CE8;
  qword_6E8CF8 = 0;
  return result;
}

void *sub_4FC904()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8D00, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E8D18, v1, 8);
  qword_6E8D30 = &qword_6E8D30;
  *algn_6E8D38 = &qword_6E8D30;
  qword_6E8D40 = 0;
  return result;
}

void *sub_4FC9CC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8E00, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8E18, v1, 1);
  qword_6E8E30 = &qword_6E8E30;
  *&byte_6E8E38 = &qword_6E8E30;
  qword_6E8E40 = 0;
  return result;
}

void *sub_4FCA94()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8E48, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8E60, v1, 1);
  qword_6E8E78 = &qword_6E8E78;
  unk_6E8E80 = &qword_6E8E78;
  qword_6E8E88 = 0;
  return result;
}

void *sub_4FCB5C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8E90, v1, 1);
  qmemcpy(&qword_6E8EA8, "uolpiwcpnupe", 12);
  byte_6E8EB4 = 1;
  sub_44E44(qword_6E8EB8, qword_6E8E90);
  word_6E8ED0 = word_6E8ED0 & 0xF800 | 0x41E;
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E8ED8, v1, 8);
}

void *sub_4FCC6C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E8EF0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6E8F08, v1, 8);
}

void *sub_4FCD20()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8F38, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8F50, v1, 1);
  qword_6E8F68 = &qword_6E8F68;
  unk_6E8F70 = &qword_6E8F68;
  qword_6E8F78 = 0;
  return result;
}

void *sub_4FCDE8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8F80, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8F98, v1, 1);
  qword_6E8FB0 = &qword_6E8FB0;
  *algn_6E8FB8 = &qword_6E8FB0;
  qword_6E8FC0 = 0;
  return result;
}

void *sub_4FCEB0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E8FC8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E8FE0, v1, 1);
  qword_6E8FF8 = &qword_6E8FF8;
  unk_6E9000 = &qword_6E8FF8;
  qword_6E9008 = 0;
  return result;
}

void *sub_4FCF78()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E9020, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E9038, v1, 8);
  qword_6E9050 = &qword_6E9050;
  *algn_6E9058 = &qword_6E9050;
  qword_6E9060 = 0;
  return result;
}

uint64_t *sub_4FD040()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6E9068, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6E9080, v3, 8);
  qword_6E9098 = &qword_6E9098;
  unk_6E90A0 = &qword_6E9098;
  qword_6E90A8 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_6E90B0 = v1;
  qmemcpy(&qword_6E90B8, "uolpiwcpnupe", 12);
  byte_6E90C4 = 1;
  sub_44E44(&algn_6E90C5[3], qword_6E9068);
  word_6E90E0 = word_6E90E0 & 0xF800 | 0x41E;
  qword_6E90E8 = 0x6F757470766F6C6DLL;
  dword_6E90F0 = 6;
  qword_6E90F8 = 0x6F757470766F6C64;
  dword_6E9100 = 6;
  qword_6E9108 = 0x6F75747076637370;
  dword_6E9110 = 6;
  qword_6E9118 = 0x696E707469656E64;
  dword_6E9120 = 0;
  qword_6E9128 = 0x7063626970726563;
  dword_6E9130 = 0;
  byte_6E9134 = 0;
  sub_44E44(qword_6E9138, qword_6E9068);
  word_6E9150 = word_6E9150 & 0xF800 | 0x434;
  qword_6E9158 = 0x706362697073706BLL;
  dword_6E9160 = 0;
  byte_6E9164 = 0;
  sub_44E44(&algn_6E9165[3], qword_6E9068);
  word_6E9180 = word_6E9180 & 0xF800 | 0x43C;
  qword_6E9188 = 0x7063626970686163;
  dword_6E9190 = 0;
  byte_6E9194 = 0;
  result = sub_44E44(qword_6E9198, qword_6E9068);
  word_6E91B0 = word_6E91B0 & 0xF800 | 0x424;
  return result;
}

void sub_4FD2A0()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

void sub_4FD378()
{
  v0 = objc_autoreleasePoolPush();
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(&qword_6E9208, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E9220, v1, 1);
  qword_6E9238 = &qword_6E9238;
  unk_6E9240 = &qword_6E9238;
  qword_6E9248 = 0;
  qword_6E9250 = &qword_6E9250;
  qword_6E9258 = &qword_6E9250;
  qword_6E9260 = 0;
  objc_autoreleasePoolPop(v0);
}

void *sub_4FD468()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E9268, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E9280, v1, 8);
  qword_6E9298 = &qword_6E9298;
  unk_6E92A0 = &qword_6E9298;
  qword_6E92A8 = 0;
  return result;
}

void sub_4FD530()
{
  v1[7] = off_6DDC08;
  v1[8] = *"lovc";
  v1[9] = xmmword_6DDC28;
  v1[10] = *&off_6DDC38;
  v1[3] = xmmword_6DDBC8;
  v1[4] = *&off_6DDBD8;
  v1[5] = *"lovl";
  v1[6] = unk_6DDBF8;
  v0 = *"ulov";
  v1[0] = unk_6DDB98;
  v1[1] = off_6DDBA8;
  v1[2] = *"dguv";
  sub_1D8D14(qword_6E92B0, &v0, 8);
  LODWORD(v0) = 1986295651;
  sub_4BA00(qword_6E92C8, &v0, 1);
  qword_6E92E0 = &qword_6E92E0;
  *algn_6E92E8 = &qword_6E92E0;
  qword_6E92F0 = 0;
  v0 = xmmword_517200;
  qword_6E9300 = 0;
  unk_6E9308 = 0;
  qword_6E92F8 = 0;
  sub_1E1470(&qword_6E92F8, &v0, v1, 2uLL);
}

double sub_4FD630()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9320, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E9338, v1, 1);
  qword_6E9350 = &qword_6E9350;
  *algn_6E9358 = &qword_6E9350;
  qword_6E9360 = 0;
  result = 1.58366012e190;
  qword_6E9368 = 0x676C6F6272647623;
  dword_6E9370 = 0;
  return result;
}

void sub_4FD710()
{
  v0 = objc_autoreleasePoolPush();
  qword_6E9378 = 0x6F75747074686264;
  dword_6E9380 = 0;
  qword_6E9388 = kCPMSPowerTimeScale1s;
  qword_6E9390 = kCPMSPowerTimeScale100ms;
  qword_6E9398 = kCPMSPowerTimeScaleInstantaneous;
  qword_6E93A0 = kCPMSPowerTimeScaleThermal;

  objc_autoreleasePoolPop(v0);
}

void *sub_4FD7A0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E93A8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E93C0, v1, 1);
  qword_6E93D8 = &qword_6E93D8;
  unk_6E93E0 = &qword_6E93D8;
  qword_6E93E8 = 0;
  return result;
}

uint64_t *sub_4FD868()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E93F0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E9408, v1, 1);
  qword_6E9420 = &qword_6E9420;
  *algn_6E9428 = &qword_6E9420;
  qword_6E9430 = 0;
  qword_6E9438 = 0x7063787868646269;
  dword_6E9440 = 0;
  byte_6E9444 = 0;
  result = sub_44E44(&algn_6E9445[3], qword_6E9408);
  word_6E9460 = word_6E9460 & 0xF800 | 0x421;
  return result;
}

void *sub_4FD974()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9468, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E9480, v1, 1);
  qword_6E9498 = &qword_6E9498;
  unk_6E94A0 = &qword_6E9498;
  qword_6E94A8 = 0;
  return result;
}

void *sub_4FDA3C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E94B0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E94C8, v1, 8);
  qword_6E94E0 = &qword_6E94E0;
  *algn_6E94E8 = &qword_6E94E0;
  qword_6E94F0 = 0;
  return result;
}

void *sub_4FDB04()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9640, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E9658, v1, 1);
  qword_6E9670 = &qword_6E9670;
  *algn_6E9678 = &qword_6E9670;
  qword_6E9680 = 0;
  return result;
}

void sub_4FDBCC()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

uint64_t sub_4FDCA4()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6E9688, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6E96A0, v3, 8);
  qword_6E96B8 = &qword_6E96B8;
  unk_6E96C0 = &qword_6E96B8;
  qword_6E96C8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E96D0 = v2;
  return result;
}

void *sub_4FDD84()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E96D8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E96F0, v1, 8);
  qword_6E9708 = &qword_6E9708;
  unk_6E9710 = &qword_6E9708;
  qword_6E9718 = 0;
  return result;
}

void *sub_4FDE4C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E9720, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E9738, v1, 8);
  qword_6E9750 = &qword_6E9750;
  *algn_6E9758 = &qword_6E9750;
  qword_6E9760 = 0;
  return result;
}

void *sub_4FDF14()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9768, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E9780, v1, 1);
  qword_6E9798 = &qword_6E9798;
  unk_6E97A0 = &qword_6E9798;
  qword_6E97A8 = 0;
  return result;
}

void *sub_4FDFDC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E97B0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E97C8, v1, 1);
  qword_6E97E0 = &qword_6E97E0;
  *algn_6E97E8 = &qword_6E97E0;
  qword_6E97F0 = 0;
  return result;
}

uint64_t sub_4FE0A4()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6E97F8, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6E9810, v3, 1);
  qword_6E9828 = &qword_6E9828;
  unk_6E9830 = &qword_6E9828;
  qword_6E9838 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E9840 = v2;
  return result;
}

uint64_t sub_4FE184()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6E9850, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6E9868, v3, 1);
  qword_6E9880 = &qword_6E9880;
  *algn_6E9888 = &qword_6E9880;
  qword_6E9890 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E9898 = v2;
  return result;
}

void sub_4FE264()
{
  sub_53E8(v3, "PRAM0");
  LODWORD(v4) = 0;
  sub_53E8(v5, "PRAM1");
  LODWORD(v6) = 0;
  sub_53E8(v7, "PRAM2");
  LODWORD(v8) = 0;
  sub_53E8(v9, "PRAM3");
  LODWORD(v10) = 0;
  sub_53E8(v11, "PRAM4");
  v12 = 0;
  sub_53E8(v13, "XRAM0");
  v14 = 1;
  sub_53E8(v15, "XRAM1");
  v16 = 1;
  sub_53E8(v17, "XRAM2");
  v18 = 1;
  sub_53E8(v19, "XRAM3");
  v20 = 1;
  sub_53E8(v21, "YRAM0");
  v22 = 2;
  sub_53E8(v23, "YRAM1");
  v24 = 2;
  sub_53E8(v25, "YRAM2");
  v26 = 2;
  sub_53E8(v27, "YRAM3");
  v28 = 2;
  sub_53E8(v29, "ZRAM");
  v30 = 3;
  sub_53E8(v31, "ZREGS");
  v32 = 5;
  sub_53E8(v33, "STREAM_ARB");
  v34 = 4;
  sub_30AB68(qword_6E98C8, v3, 16);
  v0 = 64;
  while (1)
  {
    if (SHIBYTE(v2[v0]) < 0)
    {
      operator delete(v2[v0 - 2]);
    }

    v0 -= 4;
    if (!(v0 * 8))
    {
      v35 = 0x500000003;
      v2[0] = 0;
      v1 = 0uLL;
      sub_30AD40(&v1, &v35, &v36, 2uLL);
    }
  }
}

void sub_4FE624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v27 = (v25 + 112);
  v28 = -128;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 4;
    v28 += 32;
    if (!v28)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void *sub_4FE71C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E98F8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E9910, v1, 1);
  qword_6E9928 = &qword_6E9928;
  unk_6E9930 = &qword_6E9928;
  qword_6E9938 = 0;
  return result;
}

void *sub_4FE7E4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9940, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E9958, v1, 1);
  qword_6E9970 = &qword_6E9970;
  *algn_6E9978 = &qword_6E9970;
  qword_6E9980 = 0;
  return result;
}

void *sub_4FE8AC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9988, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E99A0, v1, 1);
  qword_6E99B8 = &qword_6E99B8;
  unk_6E99C0 = &qword_6E99B8;
  qword_6E99C8 = 0;
  return result;
}

void *sub_4FE974()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E99D0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E99E8, v1, 8);
  qword_6E9A00 = &qword_6E9A00;
  *algn_6E9A08 = &qword_6E9A00;
  qword_6E9A10 = 0;
  return result;
}

void sub_4FEA3C()
{
  v0 = objc_autoreleasePoolPush();
  if (!sub_DD858())
  {
    v1 = *sub_5544(14);
    v2 = v1;
    if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "PlatformUtilities_Aspen.mm";
      v5 = 1024;
      v6 = 41;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown device! Please file a bug against Audio (New Bugs).", &v3, 0x12u);
    }
  }

  byte_6E9A78 = 1;
  objc_autoreleasePoolPop(v0);
}

void *sub_4FEB28()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6E9CB0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6E9CC8, v1, 8);
  qword_6E9CE0 = &qword_6E9CE0;
  *algn_6E9CE8 = &qword_6E9CE0;
  qword_6E9CF0 = 0;
  return result;
}

void *sub_4FEBF0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9CF8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E9D10, v1, 1);
  qword_6E9D28 = &qword_6E9D28;
  unk_6E9D30 = &qword_6E9D28;
  qword_6E9D38 = 0;
  return result;
}

void *sub_4FECB8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6E9D40, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6E9D58, v1, 1);
  qword_6E9D70 = &qword_6E9D70;
  *algn_6E9D78 = &qword_6E9D70;
  qword_6E9D80 = 0;
  return result;
}

uint64_t sub_4FED80()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6E9D88, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6E9DA0, v3, 1);
  qword_6E9DB8 = &qword_6E9DB8;
  unk_6E9DC0 = &qword_6E9DB8;
  qword_6E9DC8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6E9DD0 = v2;
  return result;
}

void *sub_4FEE60()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EA7D8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EA7F0, v1, 1);
  qword_6EA808 = &qword_6EA808;
  unk_6EA810 = &qword_6EA808;
  qword_6EA818 = 0;
  return result;
}

double sub_4FEF28()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EA820, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EA838, v1, 8);
  qword_6EA850 = &qword_6EA850;
  *algn_6EA858 = &qword_6EA850;
  qword_6EA860 = 0;
  *&result = 1768845428;
  qword_6EA868 = 1768845428;
  return result;
}

void *sub_4FF000()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EA870, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6EA888, v1, 8);
  qword_6EA8A0 = &qword_6EA8A0;
  *algn_6EA8A8 = &qword_6EA8A0;
  qword_6EA8B0 = 0;
  return result;
}

void *sub_4FF0C8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EA8B8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EA8D0, v1, 1);
  qword_6EA8E8 = &qword_6EA8E8;
  unk_6EA8F0 = &qword_6EA8E8;
  qword_6EA8F8 = 0;
  return result;
}

void *sub_4FF190()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6EA900, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6EA918, v3, 8);
  qword_6EA930 = &qword_6EA930;
  *algn_6EA938 = &qword_6EA930;
  qword_6EA940 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_6EA948 = v1;
  qword_6EA950 = 0x706362696C70696ELL;
  dword_6EA958 = 0;
  byte_6EA95C = 0;
  *&v3[0] = 0x766D696E766F6464;
  sub_4BA00(qword_6EA960, v3, 2);
  word_6EA978 = word_6EA978 & 0xF800 | 0x630;
  qword_6EA980 = 0x706362696870696ELL;
  dword_6EA988 = 0;
  byte_6EA98C = 0;
  *&v3[0] = 0x766D696E766F6464;
  result = sub_4BA00(qword_6EA990, v3, 2);
  word_6EA9A8 = word_6EA9A8 & 0xF800 | 0x630;
  qword_6EA9B0 = 0x696E707469656E64;
  dword_6EA9B8 = 0;
  return result;
}

uint64_t *sub_4FF32C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EA9C0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EA9D8, v1, 1);
  qword_6EA9F0 = &qword_6EA9F0;
  *algn_6EA9F8 = &qword_6EA9F0;
  qword_6EAA00 = 0;
  qmemcpy(&qword_6EAA08, "uolpiwcpnupe", 12);
  byte_6EAA14 = 1;
  sub_44E44(qword_6EAA18, qword_6EA9D8);
  word_6EAA30 = word_6EAA30 & 0xF800 | 0x41E;
  qword_6EAA38 = 0x676C6F626E737274;
  dword_6EAA40 = 0;
  qword_6EAA48 = 0x6F757470766F6C6DLL;
  dword_6EAA50 = 0;
  qword_6EAA58 = 0x6F757470766F6C64;
  dword_6EAA60 = 0;
  qword_6EAA68 = 0x6F75747076637370;
  dword_6EAA70 = 0;
  qmemcpy(&qword_6EAA78, "osupiwcpnupe", 12);
  byte_6EAA84 = 1;
  result = sub_44E44(&algn_6EAA85[3], qword_6EA9D8);
  word_6EAAA0 = word_6EAAA0 & 0xF800 | 0x61E;
  return result;
}

void *sub_4FF4F4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EAAA8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EAAC0, v1, 1);
  qword_6EAAD8 = &qword_6EAAD8;
  unk_6EAAE0 = &qword_6EAAD8;
  qword_6EAAE8 = 0;
  qword_6EAAF0 = 0x70636269706C7169;
  dword_6EAAF8 = 0;
  byte_6EAAFC = 0;
  LODWORD(v1[0]) = 1986818404;
  sub_4BA00(qword_6EAB00, v1, 1);
  word_6EAB18 = word_6EAB18 & 0xF800 | 0x421;
  qword_6EAB20 = 0x70636269706C716FLL;
  dword_6EAB28 = 0;
  byte_6EAB2C = 0;
  LODWORD(v1[0]) = 1986818404;
  result = sub_4BA00(qword_6EAB30, v1, 1);
  word_6EAB48 = word_6EAB48 & 0xF800 | 0x420;
  return result;
}

uint64_t *sub_4FF65C()
{
  v5[8] = off_6DDC08;
  v5[9] = *"lovc";
  v5[10] = xmmword_6DDC28;
  v5[11] = *&off_6DDC38;
  v5[4] = xmmword_6DDBC8;
  v5[5] = *&off_6DDBD8;
  v5[6] = *"lovl";
  v5[7] = unk_6DDBF8;
  v5[0] = *"ulov";
  v5[1] = unk_6DDB98;
  v5[2] = off_6DDBA8;
  v5[3] = *"dguv";
  sub_1D8D14(qword_6EAB50, v5, 8);
  LODWORD(v5[0]) = 1986295651;
  v0 = sub_4BA00(qword_6EAB68, v5, 1);
  qword_6EAB80 = &qword_6EAB80;
  *algn_6EAB88 = &qword_6EAB80;
  qword_6EAB90 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_6EAB98 = v1;
  qword_6EABA0 = 0x706377697075736FLL;
  if (sub_3114B0() && sub_B15A0())
  {
    dword_6EABA8 = 1701867895;
    byte_6EABAC = 1;
  }

  else
  {
    byte_6EABAC = 1;
    dword_6EABA8 = 1701868910;
  }

  sub_44E44(&qword_6EABB0, qword_6EAB68);
  word_6EABC8 = word_6EABC8 & 0xFFC0 | 0x1E;
  if (sub_3114B0())
  {
    if (sub_B15A0())
    {
      v2 = 1600;
    }

    else
    {
      v2 = 1536;
    }
  }

  else
  {
    v2 = 1536;
  }

  word_6EABC8 = word_6EABC8 & 0xF83F | v2;
  qword_6EABD0 = 0x7063776970757369;
  if (sub_7E96C())
  {
    dword_6EABD8 = 1701867895;
    byte_6EABDC = 1;
  }

  else
  {
    byte_6EABDC = 1;
    dword_6EABD8 = 1701868910;
  }

  sub_44E44(&qword_6EABE0, qword_6EAB68);
  word_6EABF8 = word_6EABF8 & 0xFFC0 | 0x17;
  if (sub_7E96C())
  {
    v3 = 1600;
  }

  else
  {
    v3 = 1536;
  }

  word_6EABF8 = word_6EABF8 & 0xF83F | v3;
  qmemcpy(&qword_6EAC00, "taupiwcpnupe", 12);
  byte_6EAC0C = 1;
  result = sub_44E44(qword_6EAC10, qword_6EAB68);
  word_6EAC28 = word_6EAC28 & 0xF800 | 0x607;
  return result;
}

void *sub_4FF918()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EAC40, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EAC58, v1, 1);
  qword_6EAC70 = &qword_6EAC70;
  *algn_6EAC78 = &qword_6EAC70;
  qword_6EAC80 = 0;
  return result;
}

uint64_t sub_4FF9E0()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6EAC88, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6EACA0, v3, 8);
  qword_6EACB8 = &qword_6EACB8;
  unk_6EACC0 = &qword_6EACB8;
  qword_6EACC8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6EACD0 = v2;
  return result;
}

uint64_t sub_4FFAC0()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6EACD8, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6EACF0, v3, 8);
  qword_6EAD08 = &qword_6EAD08;
  unk_6EAD10 = &qword_6EAD08;
  qword_6EAD18 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6EAD20 = v2;
  return result;
}

void *sub_4FFBA0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EADA8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EADC0, v1, 1);
  qword_6EADD8 = &qword_6EADD8;
  unk_6EADE0 = &qword_6EADD8;
  qword_6EADE8 = 0;
  qword_6EADF0 = 0x706362696C70696ELL;
  dword_6EADF8 = 0;
  byte_6EADFC = 0;
  *&v1[0] = 0x766D696E766F6464;
  sub_4BA00(qword_6EAE00, v1, 2);
  word_6EAE18 = word_6EAE18 & 0xF800 | 0x630;
  qword_6EAE20 = 0x706362696870696ELL;
  dword_6EAE28 = 0;
  byte_6EAE2C = 0;
  *&v1[0] = 0x766D696E766F6464;
  result = sub_4BA00(qword_6EAE30, v1, 2);
  word_6EAE48 = word_6EAE48 & 0xF800 | 0x630;
  return result;
}

double sub_4FFD0C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EAE50, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EAE68, v1, 1);
  qword_6EAE80 = &qword_6EAE80;
  *algn_6EAE88 = &qword_6EAE80;
  qword_6EAE90 = 0;
  result = 1.58366012e190;
  qword_6EAE98 = 0x676C6F6273747674;
  dword_6EAEA0 = 0;
  return result;
}

void *sub_4FFDEC()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EAEA8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6EAEC0, v1, 8);
}

void *sub_4FFEA0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EAED8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EAEF0, v1, 1);
  qword_6EAF08 = &qword_6EAF08;
  unk_6EAF10 = &qword_6EAF08;
  qword_6EAF18 = 0;
  return result;
}

void *sub_4FFF68()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EAF20, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EAF38, v1, 1);
  qword_6EAF50 = &qword_6EAF50;
  *algn_6EAF58 = &qword_6EAF50;
  qword_6EAF60 = 0;
  return result;
}

uint64_t sub_500030()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6EAF68, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6EAF80, v3, 1);
  qword_6EAF98 = &qword_6EAF98;
  unk_6EAFA0 = &qword_6EAF98;
  qword_6EAFA8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6EAFB0 = v2;
  return result;
}

void *sub_500110()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EAFB8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EAFD0, v1, 1);
  qword_6EAFE8 = &qword_6EAFE8;
  unk_6EAFF0 = &qword_6EAFE8;
  qword_6EAFF8 = 0;
  return result;
}

uint64_t sub_5001D8()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6EB000, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6EB018, v3, 1);
  qword_6EB030 = &qword_6EB030;
  *algn_6EB038 = &qword_6EB030;
  qword_6EB040 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6EB048 = v2;
  return result;
}

void *sub_5002B8()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB050, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6EB068, v1, 8);
  qword_6EB080 = &qword_6EB080;
  *algn_6EB088 = &qword_6EB080;
  qword_6EB090 = 0;
  return result;
}

double sub_500380()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB098, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB0B0, v1, 1);
  qword_6EB0C8 = &qword_6EB0C8;
  unk_6EB0D0 = &qword_6EB0C8;
  qword_6EB0D8 = 0;
  *&xmmword_6F5E40 = 0x40E5888000000000;
  *(&xmmword_6F5E40 + 8) = xmmword_517260;
  *&result = 0x100000004;
  *&algn_6F5E50[8] = xmmword_517270;
  return result;
}

void *sub_500474()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB138, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EB150, v1, 1);
  qword_6EB168 = &qword_6EB168;
  unk_6EB170 = &qword_6EB168;
  qword_6EB178 = 0;
  return result;
}

uint64_t *sub_50053C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB180, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB198, v1, 1);
  qword_6EB1B0 = &qword_6EB1B0;
  *algn_6EB1B8 = &qword_6EB1B0;
  qword_6EB1C0 = 0;
  qmemcpy(&qword_6EB1C8, "mocpw!cpnupe", 12);
  byte_6EB1D4 = 1;
  result = sub_44E44(qword_6EB1D8, qword_6EB198);
  word_6EB1F0 = word_6EB1F0 & 0xF800 | 0x61D;
  return result;
}

uint64_t sub_50065C()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6EB1F8, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6EB210, v3, 8);
  qword_6EB228 = &qword_6EB228;
  unk_6EB230 = &qword_6EB228;
  qword_6EB238 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6EB240 = v2;
  return result;
}

void sub_50073C()
{
  qword_6EB248 = 0;
  unk_6EB250 = 0;
  qword_6EB258 = 0;
  sub_1D7750();
}

void *sub_5007F8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB260, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EB278, v1, 1);
  qword_6EB290 = &qword_6EB290;
  *algn_6EB298 = &qword_6EB290;
  qword_6EB2A0 = 0;
  return result;
}

void *sub_5008C0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB2E0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6EB2F8, v1, 8);
  qword_6EB310 = &qword_6EB310;
  *algn_6EB318 = &qword_6EB310;
  qword_6EB320 = 0;
  return result;
}

void *sub_500988()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB328, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6EB340, v1, 8);
  qword_6EB358 = &qword_6EB358;
  unk_6EB360 = &qword_6EB358;
  qword_6EB368 = 0;
  return result;
}

uint64_t sub_500A50()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6EB370, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6EB388, v3, 8);
  qword_6EB3A0 = &qword_6EB3A0;
  *algn_6EB3A8 = &qword_6EB3A0;
  qword_6EB3B0 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6EB3B8 = v2;
  return result;
}

void *sub_500B30()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB3C0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6EB3D8, v1, 8);
  qword_6EB3F0 = &qword_6EB3F0;
  *algn_6EB3F8 = &qword_6EB3F0;
  qword_6EB400 = 0;
  return result;
}

void *sub_500BF8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6EB408, v1, 8);
}

void *sub_500C8C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB450, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EB468, v1, 1);
  qword_6EB480 = &qword_6EB480;
  *algn_6EB488 = &qword_6EB480;
  qword_6EB490 = 0;
  return result;
}

void *sub_500D54()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB498, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EB4B0, v1, 1);
  qword_6EB4C8 = &qword_6EB4C8;
  unk_6EB4D0 = &qword_6EB4C8;
  qword_6EB4D8 = 0;
  return result;
}

void *sub_500E1C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB4E0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6EB4F8, v1, 8);
  qword_6EB510 = &qword_6EB510;
  *algn_6EB518 = &qword_6EB510;
  qword_6EB520 = 0;
  return result;
}

uint64_t *sub_500EE4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB528, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB540, v1, 1);
  qword_6EB558 = &qword_6EB558;
  unk_6EB560 = &qword_6EB558;
  qword_6EB568 = 0;
  qword_6EB570 = 0x70636269706D7372;
  dword_6EB578 = 0;
  byte_6EB57C = 0;
  LODWORD(v1[0]) = 1987276900;
  sub_4BA00(qword_6EB580, v1, 1);
  word_6EB598 = word_6EB598 & 0xF800 | 0x635;
  qword_6EB5A0 = 0x7063626970636F70;
  dword_6EB5A8 = 0;
  byte_6EB5AC = 0;
  result = sub_44E44(qword_6EB5B0, qword_6EB540);
  word_6EB5C8 = word_6EB5C8 & 0xF800 | 0x635;
  return result;
}

uint64_t *sub_501044()
{
  v1 = 1986295651;
  sub_4BA00(qword_6EB5D0, &v1, 1);
  qword_6EB5E8 = 0x7063787870737470;
  dword_6EB5F0 = 0;
  byte_6EB5F4 = 0;
  result = sub_44E44(qword_6EB5F8, qword_6EB5D0);
  word_6EB610 = word_6EB610 & 0xF800 | 0x21;
  return result;
}

uint64_t *sub_5010C8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB618, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB630, v1, 1);
  qword_6EB648 = &qword_6EB648;
  unk_6EB650 = &qword_6EB648;
  qword_6EB658 = 0;
  qmemcpy(&qword_6EB660, "pcspiwcpnupe", 12);
  byte_6EB66C = 1;
  result = sub_44E44(qword_6EB670, qword_6EB630);
  word_6EB688 = word_6EB688 & 0xF800 | 0x61E;
  return result;
}

void sub_5011E8()
{
  LODWORD(v0[0]) = 1986295651;
  sub_4BA00(qword_6EB690, v0, 1);
  v0[8] = off_6DDC08;
  v0[9] = *"lovc";
  v0[10] = xmmword_6DDC28;
  v0[11] = *&off_6DDC38;
  v0[4] = xmmword_6DDBC8;
  v0[5] = *&off_6DDBD8;
  v0[6] = *"lovl";
  v0[7] = unk_6DDBF8;
  v0[0] = *"ulov";
  v0[1] = unk_6DDB98;
  v0[2] = off_6DDBA8;
  v0[3] = *"dguv";
  sub_1D8D14(qword_6EB6A8, v0, 8);
  qword_6EB6C0 = &qword_6EB6C0;
  *algn_6EB6C8 = &qword_6EB6C0;
  qword_6EB6D0 = 0;
  sub_16040C(&unk_6EB6D8, 0);
}

void sub_5012CC()
{
  v0 = objc_autoreleasePoolPush();
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB7C8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EB7E0, v1, 1);
  objc_autoreleasePoolPop(v0);
}

void *sub_501398()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB7F8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EB810, v1, 1);
  qword_6EB828 = &qword_6EB828;
  unk_6EB830 = &qword_6EB828;
  qword_6EB838 = 0;
  return result;
}

void *sub_501460()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EB840, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EB858, v1, 1);
  qword_6EB870 = &qword_6EB870;
  *algn_6EB878 = &qword_6EB870;
  qword_6EB880 = 0;
  return result;
}

void sub_501528()
{
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6EB888, &v0[32], 1);
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6EB8A0, &v0[32], 8);
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6EB8B8 = 3;
  sub_4BA00(qword_6EB8C0, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6EB8D8 = 3;
  sub_4BA00(qword_6EB8E0, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6EB8F8 = 3;
  sub_4BA00(qword_6EB900, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6EB918 = 3;
  sub_4BA00(qword_6EB920, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6EB938 = 3;
  sub_4BA00(qword_6EB940, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6EB958 = 3;
  sub_4BA00(qword_6EB960, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6EB978 = 2;
  sub_4BA00(qword_6EB980, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6EB998 = 2;
  sub_4BA00(qword_6EB9A0, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6EB9B8 = 2;
  sub_4BA00(qword_6EB9C0, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6EB9D8 = 2;
  sub_4BA00(qword_6EB9E0, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6EB9F8 = 2;
  sub_4BA00(qword_6EBA00, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6EBA18 = 2;
  sub_4BA00(qword_6EBA20, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6EBA38 = 2;
  sub_4BA00(qword_6EBA40, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6EBA58 = 2;
  sub_4BA00(qword_6EBA60, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6EBA78 = 2;
  sub_4BA00(qword_6EBA80, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6EBA98 = 2;
  sub_4BA00(qword_6EBAA0, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6EBAB8 = 3;
  sub_4BA00(qword_6EBAC0, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6EBAD8 = 2;
  sub_4BA00(qword_6EBAE0, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6EBAF8 = 2;
  sub_4BA00(qword_6EBB00, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6EBB18 = 3;
  sub_4BA00(qword_6EBB20, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6EBB38 = 2;
  sub_4BA00(qword_6EBB40, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6EBB58 = 3;
  sub_4BA00(qword_6EBB60, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6EBB78 = 2;
  sub_4BA00(qword_6EBB80, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6EBB98 = 3;
  sub_4BA00(qword_6EBBA0, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6EBBB8 = 2;
  sub_4BA00(qword_6EBBC0, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6EBBD8 = 3;
  sub_4BA00(qword_6EBBE0, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6EBBF8 = 2;
  sub_4BA00(qword_6EBC00, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6EBC18 = 3;
  sub_4BA00(qword_6EBC20, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6EBC38 = 2;
  sub_4BA00(qword_6EBC40, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6EBC58 = 3;
  sub_4BA00(qword_6EBC60, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6EBC78 = 2;
  sub_4BA00(qword_6EBC80, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6EBC98 = 3;
  sub_4BA00(qword_6EBCA0, &v0[32], 1);
  *&v0[32] = 0;
  dword_6EBCB8 = 2;
  sub_1DD78C(qword_6EBCC0, &v0[32], 1);
  *&v0[32] = 0;
  dword_6EBCD8 = 3;
  sub_1DD78C(qword_6EBCE0, &v0[32], 1);
  *&v0[32] = off_6C52C0;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6EBCF8, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6C5308;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6EBD40, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6EBCF8;
  *(&v10 + 1) = &unk_6EBD40;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_50220C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_5022E8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EC888, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EC8A0, v1, 1);
  qword_6EC8B8 = &qword_6EC8B8;
  unk_6EC8C0 = &qword_6EC8B8;
  qword_6EC8C8 = 0;
  return result;
}

void *sub_5023B0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EC8D0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EC8E8, v1, 1);
  qword_6EC900 = &qword_6EC900;
  *algn_6EC908 = &qword_6EC900;
  qword_6EC910 = 0;
  return result;
}

void *sub_502478()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EC918, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6EC930, v1, 8);
  qword_6EC948 = &qword_6EC948;
  unk_6EC950 = &qword_6EC948;
  qword_6EC958 = 0;
  return result;
}

void sub_502540()
{
  v0 = objc_autoreleasePoolPush();
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EC960, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6EC978, v1, 1);
  objc_autoreleasePoolPop(v0);
}

void *sub_50260C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6EC9A0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6EC9B8, v1, 1);
  qword_6EC9D0 = &qword_6EC9D0;
  *algn_6EC9D8 = &qword_6EC9D0;
  qword_6EC9E0 = 0;
  return result;
}

void sub_5026D4()
{
  LODWORD(v0[0]) = 1986295651;
  sub_4BA00(qword_6EC9E8, v0, 1);
  v0[8] = off_6DDC08;
  v0[9] = *"lovc";
  v0[10] = xmmword_6DDC28;
  v0[11] = *&off_6DDC38;
  v0[4] = xmmword_6DDBC8;
  v0[5] = *&off_6DDBD8;
  v0[6] = *"lovl";
  v0[7] = unk_6DDBF8;
  v0[0] = *"ulov";
  v0[1] = unk_6DDB98;
  v0[2] = off_6DDBA8;
  v0[3] = *"dguv";
  sub_1D8D14(qword_6ECA00, v0, 8);
  qword_6ECA18 = &qword_6ECA18;
  unk_6ECA20 = &qword_6ECA18;
  qword_6ECA28 = 0;
  operator new();
}

void *sub_502828()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6ECB40, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6ECB58, v1, 8);
  qword_6ECB70 = &qword_6ECB70;
  *algn_6ECB78 = &qword_6ECB70;
  qword_6ECB80 = 0;
  return result;
}

uint64_t sub_5028F0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6ECBA0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6ECBB8, v1, 8);
  qword_6ECBD0 = &qword_6ECBD0;
  *algn_6ECBD8 = &qword_6ECBD0;
  qword_6ECBE0 = 0;
  qword_6ECBE8 = 0x6F757470766F6C64;
  dword_6ECBF0 = 0;
  *&v1[0] = 0x7061327470687042;
  qword_6ECC00 = 0;
  unk_6ECC08 = 0;
  qword_6ECBF8 = 0;
  sub_4625C(&qword_6ECBF8, v1, v1 + 8, 2uLL);
  qmemcpy(v1, "bphptbmptfhp", 12);
  qword_6ECC18 = 0;
  unk_6ECC20 = 0;
  qword_6ECC10 = 0;
  sub_4625C(&qword_6ECC10, v1, v1 + 12, 3uLL);
  qmemcpy(v1, "oelpielptelp", 12);
  qword_6ECC30 = 0;
  unk_6ECC38 = 0;
  qword_6ECC28 = 0;
  return sub_4625C(&qword_6ECC28, v1, v1 + 12, 3uLL);
}

void *sub_502A7C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6ECC40, v1, 8);
}

void *sub_502B10()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6ECC58, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6ECC70, v1, 1);
  qword_6ECC88 = &qword_6ECC88;
  unk_6ECC90 = &qword_6ECC88;
  qword_6ECC98 = 0;
  return result;
}

void sub_502BD8()
{
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6ECCA0, &v0[32], 1);
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6ECCB8, &v0[32], 8);
  qword_6ECCD0 = &qword_6ECCD0;
  *algn_6ECCD8 = &qword_6ECCD0;
  qword_6ECCE0 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6ECCE8 = 3;
  sub_4BA00(qword_6ECCF0, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6ECD08 = 3;
  sub_4BA00(qword_6ECD10, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6ECD28 = 3;
  sub_4BA00(qword_6ECD30, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6ECD48 = 3;
  sub_4BA00(qword_6ECD50, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6ECD68 = 3;
  sub_4BA00(qword_6ECD70, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6ECD88 = 3;
  sub_4BA00(qword_6ECD90, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6ECDA8 = 2;
  sub_4BA00(qword_6ECDB0, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6ECDC8 = 2;
  sub_4BA00(qword_6ECDD0, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6ECDE8 = 2;
  sub_4BA00(qword_6ECDF0, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6ECE08 = 2;
  sub_4BA00(qword_6ECE10, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6ECE28 = 2;
  sub_4BA00(qword_6ECE30, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6ECE48 = 2;
  sub_4BA00(qword_6ECE50, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6ECE68 = 2;
  sub_4BA00(qword_6ECE70, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6ECE88 = 2;
  sub_4BA00(qword_6ECE90, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6ECEA8 = 2;
  sub_4BA00(qword_6ECEB0, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6ECEC8 = 2;
  sub_4BA00(qword_6ECED0, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6ECEE8 = 3;
  sub_4BA00(qword_6ECEF0, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6ECF08 = 2;
  sub_4BA00(qword_6ECF10, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6ECF28 = 2;
  sub_4BA00(qword_6ECF30, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6ECF48 = 3;
  sub_4BA00(qword_6ECF50, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6ECF68 = 2;
  sub_4BA00(qword_6ECF70, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6ECF88 = 3;
  sub_4BA00(qword_6ECF90, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6ECFA8 = 2;
  sub_4BA00(qword_6ECFB0, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6ECFC8 = 3;
  sub_4BA00(qword_6ECFD0, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6ECFE8 = 2;
  sub_4BA00(qword_6ECFF0, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6ED008 = 3;
  sub_4BA00(qword_6ED010, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6ED028 = 2;
  sub_4BA00(qword_6ED030, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6ED048 = 3;
  sub_4BA00(qword_6ED050, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6ED068 = 2;
  sub_4BA00(qword_6ED070, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6ED088 = 3;
  sub_4BA00(qword_6ED090, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6ED0A8 = 2;
  sub_4BA00(qword_6ED0B0, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6ED0C8 = 3;
  sub_4BA00(qword_6ED0D0, &v0[32], 1);
  *&v0[32] = 0;
  dword_6ED0E8 = 2;
  sub_1DD78C(qword_6ED0F0, &v0[32], 1);
  *&v0[32] = 0;
  dword_6ED108 = 3;
  sub_1DD78C(qword_6ED110, &v0[32], 1);
  *&v0[32] = off_6CD300;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6ED128, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6CD348;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6ED170, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6ED128;
  *(&v10 + 1) = &unk_6ED170;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_5038BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_503998()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6F5988, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6F59A0, v1, 8);
  qword_6F59B8 = &qword_6F59B8;
  unk_6F59C0 = &qword_6F59B8;
  qword_6F59C8 = 0;
  return result;
}

void sub_503A60()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

void sub_503B38()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6F59D0, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v1 = sub_1D8D14(qword_6F59E8, v3, 8);
  qword_6F5A00 = &qword_6F5A00;
  *algn_6F5A08 = &qword_6F5A00;
  qword_6F5A10 = 0;
  if (caulk::product::get_device_class(v1) == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6F5A18 = v2;
  strcpy(&xmmword_6F5A20, "vascfdmi");
  BYTE12(xmmword_6F5A20) = 0;
  objc_autoreleasePoolPop(v0);
}

void *sub_503C4C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6F5AC0, v1, 8);
}

void *sub_503CE0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6F5AD8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6F5AF0, v1, 1);
  qword_6F5B08 = &qword_6F5B08;
  unk_6F5B10 = &qword_6F5B08;
  qword_6F5B18 = 0;
  return result;
}

void *sub_503DA8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6F5DA8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6F5DC0, v1, 1);
  qword_6F5DD8 = &qword_6F5DD8;
  unk_6F5DE0 = &qword_6F5DD8;
  qword_6F5DE8 = 0;
  return result;
}

uint64_t sub_503E70()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6F5DF0, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6F5E08, v3, 8);
  qword_6F5E20 = &qword_6F5E20;
  *algn_6F5E28 = &qword_6F5E20;
  qword_6F5E30 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6F5E38 = v2;
  return result;
}

void *sub_503F50()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6F5E68, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6F5E80, v1, 1);
  qword_6F5E98 = &qword_6F5E98;
  unk_6F5EA0 = &qword_6F5E98;
  qword_6F5EA8 = 0;
  return result;
}

void sub_504018()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6F5EB0, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6F5EC8, &v0[32], 1);
  qword_6F5EE0 = &qword_6F5EE0;
  *algn_6F5EE8 = &qword_6F5EE0;
  qword_6F5EF0 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6F5EF8 = 3;
  sub_4BA00(qword_6F5F00, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6F5F18 = 3;
  sub_4BA00(qword_6F5F20, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6F5F38 = 3;
  sub_4BA00(qword_6F5F40, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6F5F58 = 3;
  sub_4BA00(qword_6F5F60, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6F5F78 = 3;
  sub_4BA00(qword_6F5F80, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6F5F98 = 3;
  sub_4BA00(qword_6F5FA0, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6F5FB8 = 2;
  sub_4BA00(qword_6F5FC0, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6F5FD8 = 2;
  sub_4BA00(qword_6F5FE0, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6F5FF8 = 2;
  sub_4BA00(qword_6F6000, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6F6018 = 2;
  sub_4BA00(qword_6F6020, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6F6038 = 2;
  sub_4BA00(qword_6F6040, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6F6058 = 2;
  sub_4BA00(qword_6F6060, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6F6078 = 2;
  sub_4BA00(qword_6F6080, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6F6098 = 2;
  sub_4BA00(qword_6F60A0, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6F60B8 = 2;
  sub_4BA00(qword_6F60C0, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6F60D8 = 2;
  sub_4BA00(qword_6F60E0, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6F60F8 = 3;
  sub_4BA00(qword_6F6100, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6F6118 = 2;
  sub_4BA00(qword_6F6120, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6F6138 = 2;
  sub_4BA00(qword_6F6140, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6F6158 = 3;
  sub_4BA00(qword_6F6160, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6F6178 = 2;
  sub_4BA00(qword_6F6180, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6F6198 = 3;
  sub_4BA00(qword_6F61A0, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6F61B8 = 2;
  sub_4BA00(qword_6F61C0, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6F61D8 = 3;
  sub_4BA00(qword_6F61E0, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6F61F8 = 2;
  sub_4BA00(qword_6F6200, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6F6218 = 3;
  sub_4BA00(qword_6F6220, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6F6238 = 2;
  sub_4BA00(qword_6F6240, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6F6258 = 3;
  sub_4BA00(qword_6F6260, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6F6278 = 2;
  sub_4BA00(qword_6F6280, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6F6298 = 3;
  sub_4BA00(qword_6F62A0, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6F62B8 = 2;
  sub_4BA00(qword_6F62C0, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6F62D8 = 3;
  sub_4BA00(qword_6F62E0, &v0[32], 1);
  *&v0[32] = 0;
  dword_6F62F8 = 2;
  sub_1DD78C(qword_6F6300, &v0[32], 1);
  *&v0[32] = 0;
  dword_6F6318 = 3;
  sub_1DD78C(qword_6F6320, &v0[32], 1);
  *&v0[32] = off_6CE598;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6F6338, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6CE5E0;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6F6380, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6F6338;
  *(&v10 + 1) = &unk_6F6380;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_504DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void sub_504E80()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

void sub_504F58()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

void *sub_505030()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6F67F8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6F6810, v1, 8);
  qword_6F6828 = &qword_6F6828;
  unk_6F6830 = &qword_6F6828;
  qword_6F6838 = 0;
  return result;
}

void sub_5050F8()
{
  v1[7] = off_6DDC08;
  v1[8] = *"lovc";
  v1[9] = xmmword_6DDC28;
  v1[10] = *&off_6DDC38;
  v1[3] = xmmword_6DDBC8;
  v1[4] = *&off_6DDBD8;
  v1[5] = *"lovl";
  v1[6] = unk_6DDBF8;
  v0 = *"ulov";
  v1[0] = unk_6DDB98;
  v1[1] = off_6DDBA8;
  v1[2] = *"dguv";
  sub_1D8D14(qword_6F6858, &v0, 8);
  LODWORD(v0) = 1986295651;
  sub_4BA00(qword_6F6870, &v0, 1);
  qword_6F6888 = &qword_6F6888;
  unk_6F6890 = &qword_6F6888;
  qword_6F6898 = 0;
  v0 = xmmword_5173F0;
  qword_6F68A8 = 0;
  unk_6F68B0 = 0;
  qword_6F68A0 = 0;
  sub_1E1470(&qword_6F68A0, &v0, v1, 2uLL);
}

void sub_5051F8()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6F68B8, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6F68D0, &v0[32], 1);
  qword_6F68E8 = &qword_6F68E8;
  unk_6F68F0 = &qword_6F68E8;
  qword_6F68F8 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6F6900 = 3;
  sub_4BA00(&algn_6F6904[4], &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6F6920 = 3;
  sub_4BA00(&algn_6F6924[4], &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6F6940 = 3;
  sub_4BA00(&algn_6F6944[4], &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6F6960 = 3;
  sub_4BA00(&algn_6F6964[4], &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6F6980 = 3;
  sub_4BA00(&algn_6F6984[4], &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6F69A0 = 3;
  sub_4BA00(&algn_6F69A4[4], &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6F69C0 = 2;
  sub_4BA00(&algn_6F69C4[4], &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6F69E0 = 2;
  sub_4BA00(&algn_6F69E4[4], &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6F6A00 = 2;
  sub_4BA00(&algn_6F6A04[4], &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6F6A20 = 2;
  sub_4BA00(&algn_6F6A24[4], &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6F6A40 = 2;
  sub_4BA00(&algn_6F6A44[4], &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6F6A60 = 2;
  sub_4BA00(&algn_6F6A64[4], &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6F6A80 = 2;
  sub_4BA00(&algn_6F6A84[4], &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6F6AA0 = 2;
  sub_4BA00(&algn_6F6AA4[4], &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6F6AC0 = 2;
  sub_4BA00(&algn_6F6AC4[4], &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6F6AE0 = 2;
  sub_4BA00(&algn_6F6AE4[4], &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6F6B00 = 3;
  sub_4BA00(&algn_6F6B04[4], &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6F6B20 = 2;
  sub_4BA00(&algn_6F6B24[4], &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6F6B40 = 2;
  sub_4BA00(&algn_6F6B44[4], &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6F6B60 = 3;
  sub_4BA00(&algn_6F6B64[4], &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6F6B80 = 2;
  sub_4BA00(&algn_6F6B84[4], &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6F6BA0 = 3;
  sub_4BA00(&algn_6F6BA4[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6F6BC0 = 2;
  sub_4BA00(&algn_6F6BC4[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6F6BE0 = 3;
  sub_4BA00(&algn_6F6BE4[4], &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6F6C00 = 2;
  sub_4BA00(&algn_6F6C04[4], &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6F6C20 = 3;
  sub_4BA00(&algn_6F6C24[4], &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6F6C40 = 2;
  sub_4BA00(&algn_6F6C44[4], &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6F6C60 = 3;
  sub_4BA00(&algn_6F6C64[4], &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6F6C80 = 2;
  sub_4BA00(&algn_6F6C84[4], &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6F6CA0 = 3;
  sub_4BA00(&algn_6F6CA4[4], &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6F6CC0 = 2;
  sub_4BA00(&algn_6F6CC4[4], &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6F6CE0 = 3;
  sub_4BA00(&algn_6F6CE4[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6F6D00 = 2;
  sub_1DD78C(&algn_6F6D04[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6F6D20 = 3;
  sub_1DD78C(&algn_6F6D24[4], &v0[32], 1);
  *&v0[32] = off_6CEA18;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6F6D40, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6CEA60;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6F6D88, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6F6D40;
  *(&v10 + 1) = &unk_6F6D88;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_505EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_505FB8()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6F7188, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6F71A0, v3, 8);
  qword_6F71B8 = &qword_6F71B8;
  unk_6F71C0 = &qword_6F71B8;
  qword_6F71C8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6F71D0 = v2;
  return result;
}

void *sub_506098()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6F71D8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6F71F0, v1, 1);
  qword_6F7208 = &qword_6F7208;
  unk_6F7210 = &qword_6F7208;
  qword_6F7218 = 0;
  return result;
}

void *sub_506160()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6F7220, v1, 8);
}

void sub_5061F4()
{
  v2[6] = off_6DDC08;
  v2[7] = *"lovc";
  v2[8] = xmmword_6DDC28;
  v2[9] = *&off_6DDC38;
  v2[2] = xmmword_6DDBC8;
  v2[3] = *&off_6DDBD8;
  v2[4] = *"lovl";
  v2[5] = unk_6DDBF8;
  v0 = *"ulov";
  v1 = unk_6DDB98;
  v2[0] = off_6DDBA8;
  v2[1] = *"dguv";
  sub_1D8D14(qword_6F7238, &v0, 8);
  LODWORD(v0) = 1986295651;
  sub_4BA00(qword_6F7250, &v0, 1);
  qword_6F7268 = &qword_6F7268;
  unk_6F7270 = &qword_6F7268;
  qword_6F7278 = 0;
  qword_6F7280 = 0x7063776970646C6ELL;
  dword_6F7288 = 0;
  byte_6F728C = 0;
  sub_44E44(qword_6F7290, qword_6F7250);
  word_6F72A8 = word_6F72A8 & 0xF800 | 0x421;
  qword_6F72B0 = 0x7063776970756C6ELL;
  dword_6F72B8 = 0;
  byte_6F72BC = 0;
  sub_44E44(qword_6F72C0, qword_6F7250);
  word_6F72D8 = word_6F72D8 & 0xF800 | 0x420;
  v0 = xmmword_517400;
  v1 = xmmword_517410;
  LODWORD(v2[0]) = 0;
  qword_6F72E8 = 0;
  unk_6F72F0 = 0;
  qword_6F72E0 = 0;
  sub_2C8104(&qword_6F72E0, &v0, v2 + 4, 3uLL);
}

void sub_506380()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6F72F8, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6F7310, &v0[32], 1);
  qword_6F7328 = &qword_6F7328;
  unk_6F7330 = &qword_6F7328;
  qword_6F7338 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6F7340 = 3;
  sub_4BA00(&algn_6F7344[4], &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6F7360 = 3;
  sub_4BA00(&algn_6F7364[4], &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6F7380 = 3;
  sub_4BA00(&algn_6F7384[4], &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6F73A0 = 3;
  sub_4BA00(&algn_6F73A4[4], &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6F73C0 = 3;
  sub_4BA00(&algn_6F73C4[4], &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6F73E0 = 3;
  sub_4BA00(&algn_6F73E4[4], &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6F7400 = 2;
  sub_4BA00(&algn_6F7404[4], &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6F7420 = 2;
  sub_4BA00(&algn_6F7424[4], &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6F7440 = 2;
  sub_4BA00(&algn_6F7444[4], &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6F7460 = 2;
  sub_4BA00(&algn_6F7464[4], &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6F7480 = 2;
  sub_4BA00(&algn_6F7484[4], &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6F74A0 = 2;
  sub_4BA00(&algn_6F74A4[4], &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6F74C0 = 2;
  sub_4BA00(&algn_6F74C4[4], &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6F74E0 = 2;
  sub_4BA00(&algn_6F74E4[4], &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6F7500 = 2;
  sub_4BA00(&algn_6F7504[4], &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6F7520 = 2;
  sub_4BA00(&algn_6F7524[4], &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6F7540 = 3;
  sub_4BA00(&algn_6F7544[4], &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6F7560 = 2;
  sub_4BA00(&algn_6F7564[4], &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6F7580 = 2;
  sub_4BA00(&algn_6F7584[4], &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6F75A0 = 3;
  sub_4BA00(&algn_6F75A4[4], &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6F75C0 = 2;
  sub_4BA00(&algn_6F75C4[4], &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6F75E0 = 3;
  sub_4BA00(&algn_6F75E4[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6F7600 = 2;
  sub_4BA00(&algn_6F7604[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6F7620 = 3;
  sub_4BA00(&algn_6F7624[4], &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6F7640 = 2;
  sub_4BA00(&algn_6F7644[4], &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6F7660 = 3;
  sub_4BA00(&algn_6F7664[4], &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6F7680 = 2;
  sub_4BA00(&algn_6F7684[4], &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6F76A0 = 3;
  sub_4BA00(&algn_6F76A4[4], &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6F76C0 = 2;
  sub_4BA00(&algn_6F76C4[4], &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6F76E0 = 3;
  sub_4BA00(&algn_6F76E4[4], &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6F7700 = 2;
  sub_4BA00(&algn_6F7704[4], &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6F7720 = 3;
  sub_4BA00(&algn_6F7724[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6F7740 = 2;
  sub_1DD78C(&algn_6F7744[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6F7760 = 3;
  sub_1DD78C(&algn_6F7764[4], &v0[32], 1);
  *&v0[32] = off_6CF140;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6F7780, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6CF188;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6F77C8, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6F7780;
  *(&v10 + 1) = &unk_6F77C8;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_507064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_507140()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6F7BC8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6F7BE0, v1, 8);
  qword_6F7BF8 = &qword_6F7BF8;
  unk_6F7C00 = &qword_6F7BF8;
  qword_6F7C08 = 0;
  return result;
}

void *sub_507208()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FBE60, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FBE78, v1, 8);
  qword_6FBE90 = &qword_6FBE90;
  *algn_6FBE98 = &qword_6FBE90;
  qword_6FBEA0 = 0;
  return result;
}

void *sub_5072D0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FBEA8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FBEC0, v1, 1);
  qword_6FBED8 = &qword_6FBED8;
  unk_6FBEE0 = &qword_6FBED8;
  qword_6FBEE8 = 0;
  return result;
}

void sub_507398()
{
  LODWORD(v0[0]) = 1986295651;
  sub_4BA00(qword_6FC178, v0, 1);
  v0[8] = off_6DDC08;
  v0[9] = *"lovc";
  v0[10] = xmmword_6DDC28;
  v0[11] = *&off_6DDC38;
  v0[4] = xmmword_6DDBC8;
  v0[5] = *&off_6DDBD8;
  v0[6] = *"lovl";
  v0[7] = unk_6DDBF8;
  v0[0] = *"ulov";
  v0[1] = unk_6DDB98;
  v0[2] = off_6DDBA8;
  v0[3] = *"dguv";
  sub_1D8D14(qword_6FC190, v0, 8);
  qword_6FC1A8 = &qword_6FC1A8;
  unk_6FC1B0 = &qword_6FC1A8;
  qword_6FC1B8 = 0;
  sub_16040C(&unk_6FC1C0, 0);
}

void *sub_5074B8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC208, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  return sub_4BA00(qword_6FC220, v1, 1);
}

void *sub_50756C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FC238, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FC250, v1, 8);
  qword_6FC268 = &qword_6FC268;
  unk_6FC270 = &qword_6FC268;
  qword_6FC278 = 0;
  return result;
}

void *sub_507634()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC280, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC298, v1, 1);
  qword_6FC2B0 = &qword_6FC2B0;
  *algn_6FC2B8 = &qword_6FC2B0;
  qword_6FC2C0 = 0;
  return result;
}

void *sub_5076FC()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FC318, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FC330, v1, 8);
  qword_6FC348 = &qword_6FC348;
  unk_6FC350 = &qword_6FC348;
  qword_6FC358 = 0;
  return result;
}

void *sub_5077C4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC360, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC378, v1, 1);
  qword_6FC390 = &qword_6FC390;
  *algn_6FC398 = &qword_6FC390;
  qword_6FC3A0 = 0;
  return result;
}

void *sub_50788C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC3B8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC3D0, v1, 1);
  qword_6FC3E8 = &qword_6FC3E8;
  unk_6FC3F0 = &qword_6FC3E8;
  qword_6FC3F8 = 0;
  return result;
}

void *sub_507954()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC400, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC418, v1, 1);
  qword_6FC430 = &qword_6FC430;
  *algn_6FC438 = &qword_6FC430;
  qword_6FC440 = 0;
  return result;
}

void *sub_507A1C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC448, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC460, v1, 1);
  qword_6FC478 = &qword_6FC478;
  unk_6FC480 = &qword_6FC478;
  qword_6FC488 = 0;
  return result;
}

void sub_507AE4()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FC490, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC4A8, v1, 8);
  qword_6FC4C0 = &qword_6FC4C0;
  *algn_6FC4C8 = &qword_6FC4C0;
  qword_6FC4D0 = 0;
  objc_autoreleasePoolPop(v0);
}

double sub_507BC4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC4D8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FC4F0, v1, 1);
  qword_6FC508 = &qword_6FC508;
  unk_6FC510 = &qword_6FC508;
  qword_6FC518 = 0;
  qword_6FC520 = 0x696E707473737263;
  dword_6FC528 = 0;
  qword_6FC530 = 0x6F75747053436873;
  dword_6FC538 = 0;
  qword_6FC540 = 0x6F75747053434474;
  dword_6FC548 = 0;
  qword_6FC550 = 0x6F75747053434465;
  dword_6FC558 = 0;
  result = 8.13208634e228;
  qword_6FC560 = 0x6F75747053434461;
  dword_6FC568 = 0;
  return result;
}

void *sub_507D04()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC588, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC5A0, v1, 1);
  qword_6FC5B8 = &qword_6FC5B8;
  unk_6FC5C0 = &qword_6FC5B8;
  qword_6FC5C8 = 0;
  return result;
}

uint64_t sub_507DCC()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FC6B0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC6C8, v1, 8);
  qword_6FC6E0 = &qword_6FC6E0;
  *algn_6FC6E8 = &qword_6FC6E0;
  qword_6FC6F0 = 0;
  sub_C57B4(&dword_709348, 0, 1836412020, 1836412020);
  sub_C57B4(&unk_6FC6F8, 1, 1836412020, 1836412020);
  qword_709310 = 0x696D646600000001;
  xmmword_709318 = *sub_C53D8();
  dword_709328 = 0;
  qword_709338 = 0;
  unk_709340 = 0;
  qword_709330 = 0;
  qword_708528 = 0x696D646600000000;
  xmmword_708530 = *sub_C53D8();
  dword_708540 = 0;
  qword_708550 = 0;
  unk_708558 = 0;
  qword_708548 = 0;
  qword_709388 = 0;
  qword_709380 = &qword_709388;
  qword_7093A0 = 0;
  qword_709390 = 0;
  unk_709398 = &qword_7093A0;
  qword_7093B8 = 0;
  qword_7093A8 = 0;
  unk_7093B0 = &qword_7093B8;
  qword_7093C0 = 0;
  qword_6FC740 = 0;
  qword_6FC738 = 0;
  qword_6FC730 = &qword_6FC738;
  return sub_1C2C04(&unk_707CC8, 0, &qword_5A4708, &qword_5A4710, &qword_5A4718, &unk_5A4720, &xmmword_5A4730, &unk_5A4740);
}

void *sub_507FBC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC788, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC7A0, v1, 1);
  qword_6FC7B8 = &qword_6FC7B8;
  unk_6FC7C0 = &qword_6FC7B8;
  qword_6FC7C8 = 0;
  return result;
}

void sub_508084()
{
  memcpy(__dst, &unk_6D1830, sizeof(__dst));
  qword_6FC7D8 = 0;
  unk_6FC7E0 = 0;
  qword_6FC7D0 = 0;
  sub_1D3FE0();
}

void *sub_50810C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC7E8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  return sub_4BA00(qword_6FC800, v1, 1);
}

void *sub_5081C0()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC828, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC840, v1, 1);
  qword_6FC858 = &qword_6FC858;
  unk_6FC860 = &qword_6FC858;
  qword_6FC868 = 0;
  return result;
}

void *sub_508288()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FC870, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FC888, v1, 1);
  qword_6FC8A0 = &qword_6FC8A0;
  *algn_6FC8A8 = &qword_6FC8A0;
  qword_6FC8B0 = 0;
  return result;
}

void *sub_508350()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FC8B8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6FC8D0, v1, 8);
}

double sub_508404()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_6FC8E8, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_6FC900, v3, 8);
  qword_6FC918 = &qword_6FC918;
  unk_6FC920 = &qword_6FC918;
  qword_6FC928 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_6FC930 = v1;
  qword_6FC938 = 0x676C6F6261766170;
  dword_6FC940 = 0;
  qword_6FC948 = 0x676C6F6277736167;
  dword_6FC950 = 0;
  qword_6FC958 = 0x6F75747064697663;
  dword_6FC960 = 0;
  result = 8.13208713e228;
  qword_6FC968 = 0x6F757470766F6C64;
  dword_6FC970 = 0;
  return result;
}

void *sub_508544()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FCAC0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FCAD8, v1, 8);
  qword_6FCAF0 = &qword_6FCAF0;
  *algn_6FCAF8 = &qword_6FCAF0;
  qword_6FCB00 = 0;
  return result;
}

void sub_50860C()
{
  sub_53E8(v3, "PRAM0");
  LODWORD(v4) = 0;
  sub_53E8(v5, "PRAM1");
  LODWORD(v6) = 0;
  sub_53E8(v7, "PRAM2");
  LODWORD(v8) = 0;
  sub_53E8(v9, "PRAM3");
  LODWORD(v10) = 0;
  sub_53E8(v11, "PRAM4");
  v12 = 0;
  sub_53E8(v13, "XRAM0");
  v14 = 1;
  sub_53E8(v15, "XRAM1");
  v16 = 1;
  sub_53E8(v17, "XRAM2");
  v18 = 1;
  sub_53E8(v19, "XRAM3");
  v20 = 1;
  sub_53E8(v21, "YRAM0");
  v22 = 2;
  sub_53E8(v23, "YRAM1");
  v24 = 2;
  sub_53E8(v25, "YRAM2");
  v26 = 2;
  sub_53E8(v27, "YRAM3");
  v28 = 2;
  sub_53E8(v29, "ZRAM");
  v30 = 3;
  sub_53E8(v31, "ZREGS");
  v32 = 5;
  sub_53E8(v33, "STREAM_ARB");
  v34 = 4;
  sub_30AB68(qword_6FCB08, v3, 16);
  v0 = 64;
  while (1)
  {
    if (SHIBYTE(v2[v0]) < 0)
    {
      operator delete(v2[v0 - 2]);
    }

    v0 -= 4;
    if (!(v0 * 8))
    {
      v35 = 0x500000003;
      v2[0] = 0;
      v1 = 0uLL;
      sub_30AD40(&v1, &v35, &v36, 2uLL);
    }
  }
}

void sub_5089CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v27 = (v25 + 112);
  v28 = -128;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 4;
    v28 += 32;
    if (!v28)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void *sub_508AC4()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FCB38, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FCB50, v1, 8);
  qword_6FCB68 = &qword_6FCB68;
  unk_6FCB70 = &qword_6FCB68;
  qword_6FCB78 = 0;
  return result;
}

void *sub_508B8C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FCBF8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  return sub_4BA00(qword_6FCC10, v1, 1);
}

void *sub_508C40()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FCC30, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FCC48, v1, 1);
  qword_6FCC60 = &qword_6FCC60;
  *algn_6FCC68 = &qword_6FCC60;
  qword_6FCC70 = 0;
  return result;
}

void *sub_508D08()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FCC78, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FCC90, v1, 1);
  qword_6FCCA8 = &qword_6FCCA8;
  unk_6FCCB0 = &qword_6FCCA8;
  qword_6FCCB8 = 0;
  return result;
}

void *sub_508DD0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FCCC0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FCCD8, v1, 8);
  qword_6FCCF0 = &qword_6FCCF0;
  *algn_6FCCF8 = &qword_6FCCF0;
  qword_6FCD00 = 0;
  return result;
}

void *sub_508E98()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FCD08, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FCD20, v1, 8);
  qword_6FCD38 = &qword_6FCD38;
  unk_6FCD40 = &qword_6FCD38;
  qword_6FCD48 = 0;
  return result;
}

void *sub_508F60()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FCD50, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FCD68, v1, 1);
  qword_6FCD80 = &qword_6FCD80;
  *algn_6FCD88 = &qword_6FCD80;
  qword_6FCD90 = 0;
  return result;
}

void *sub_509028()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FCD98, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6FCDB0, v1, 8);
}

void *sub_5090DC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FCF20, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FCF38, v1, 1);
  qword_6FCF50 = &qword_6FCF50;
  *algn_6FCF58 = &qword_6FCF50;
  qword_6FCF60 = 0;
  return result;
}

void *sub_5091A4()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FCF68, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FCF80, v1, 8);
  qword_6FCF98 = &qword_6FCF98;
  unk_6FCFA0 = &qword_6FCF98;
  qword_6FCFA8 = 0;
  return result;
}

uint64_t sub_50926C()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6FD008, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6FD020, v3, 1);
  qword_6FD038 = &qword_6FD038;
  unk_6FD040 = &qword_6FD038;
  qword_6FD048 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6FD050 = v2;
  return result;
}

void sub_50934C()
{
  v0[8] = off_6DDC08;
  v0[9] = *"lovc";
  v0[10] = xmmword_6DDC28;
  v0[11] = *&off_6DDC38;
  v0[4] = xmmword_6DDBC8;
  v0[5] = *&off_6DDBD8;
  v0[6] = *"lovl";
  v0[7] = unk_6DDBF8;
  v0[0] = *"ulov";
  v0[1] = unk_6DDB98;
  v0[2] = off_6DDBA8;
  v0[3] = *"dguv";
  sub_1D8D14(qword_6FD058, v0, 8);
  LODWORD(v0[0]) = 1986295651;
  sub_4BA00(qword_6FD070, v0, 1);
  qword_6FD088 = &qword_6FD088;
  unk_6FD090 = &qword_6FD088;
  qword_6FD098 = 0;
  xmmword_6FD0F0 = xmmword_5171B0;
  xmmword_6FD110 = xmmword_5171B0;
  xmmword_6FD350 = xmmword_5171C0;
  xmmword_6FD1E8 = xmmword_5171C0;
  operator new();
}

double sub_5095E4()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FD548, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FD560, v1, 8);
  qword_6FD578 = &qword_6FD578;
  unk_6FD580 = &qword_6FD578;
  qword_6FD588 = 0;
  qword_6FD590 = 0x7063787870737072;
  dword_6FD598 = 0;
  byte_6FD59C = 0;
  sub_44E44(qword_6FD5A0, qword_6FD548);
  word_6FD5B8 = word_6FD5B8 & 0xF800 | 0x21;
  result = 7.28117508e199;
  qword_6FD5C0 = 0x696E707473737263;
  dword_6FD5C8 = 0;
  return result;
}

void *sub_509708()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6FD5D0, v1, 8);
}

uint64_t sub_50979C()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_6FD710, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_6FD728, v3, 1);
  qword_6FD740 = &qword_6FD740;
  *algn_6FD748 = &qword_6FD740;
  qword_6FD750 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_6FD758 = v2;
  return result;
}

void *sub_50987C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FD760, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FD778, v1, 1);
  qword_6FD790 = &qword_6FD790;
  *algn_6FD798 = &qword_6FD790;
  qword_6FD7A0 = 0;
  return result;
}

void sub_509944()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6FD7A8, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6FD7C0, &v0[32], 1);
  qword_6FD7D8 = &qword_6FD7D8;
  unk_6FD7E0 = &qword_6FD7D8;
  qword_6FD7E8 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6FD7F0 = 3;
  sub_4BA00(qword_6FD7F8, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6FD810 = 3;
  sub_4BA00(qword_6FD818, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6FD830 = 3;
  sub_4BA00(qword_6FD838, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6FD850 = 3;
  sub_4BA00(qword_6FD858, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6FD870 = 3;
  sub_4BA00(qword_6FD878, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6FD890 = 3;
  sub_4BA00(qword_6FD898, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6FD8B0 = 2;
  sub_4BA00(qword_6FD8B8, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6FD8D0 = 2;
  sub_4BA00(qword_6FD8D8, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6FD8F0 = 2;
  sub_4BA00(qword_6FD8F8, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6FD910 = 2;
  sub_4BA00(qword_6FD918, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6FD930 = 2;
  sub_4BA00(qword_6FD938, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6FD950 = 2;
  sub_4BA00(qword_6FD958, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6FD970 = 2;
  sub_4BA00(qword_6FD978, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6FD990 = 2;
  sub_4BA00(qword_6FD998, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6FD9B0 = 2;
  sub_4BA00(qword_6FD9B8, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6FD9D0 = 2;
  sub_4BA00(qword_6FD9D8, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6FD9F0 = 3;
  sub_4BA00(qword_6FD9F8, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6FDA10 = 2;
  sub_4BA00(qword_6FDA18, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FDA30 = 2;
  sub_4BA00(qword_6FDA38, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FDA50 = 3;
  sub_4BA00(qword_6FDA58, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6FDA70 = 2;
  sub_4BA00(qword_6FDA78, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6FDA90 = 3;
  sub_4BA00(qword_6FDA98, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FDAB0 = 2;
  sub_4BA00(qword_6FDAB8, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FDAD0 = 3;
  sub_4BA00(qword_6FDAD8, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6FDAF0 = 2;
  sub_4BA00(qword_6FDAF8, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6FDB10 = 3;
  sub_4BA00(qword_6FDB18, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6FDB30 = 2;
  sub_4BA00(qword_6FDB38, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6FDB50 = 3;
  sub_4BA00(qword_6FDB58, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6FDB70 = 2;
  sub_4BA00(qword_6FDB78, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6FDB90 = 3;
  sub_4BA00(qword_6FDB98, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6FDBB0 = 2;
  sub_4BA00(qword_6FDBB8, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6FDBD0 = 3;
  sub_4BA00(qword_6FDBD8, &v0[32], 1);
  *&v0[32] = 0;
  dword_6FDBF0 = 2;
  sub_1DD78C(qword_6FDBF8, &v0[32], 1);
  *&v0[32] = 0;
  dword_6FDC10 = 3;
  sub_1DD78C(qword_6FDC18, &v0[32], 1);
  *&v0[32] = off_6D6788;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6FDC30, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6D67D0;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6FDC78, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6FDC30;
  *(&v10 + 1) = &unk_6FDC78;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_50A628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_50A704()
{
  v1 = 1986295651;
  sub_4BA00(qword_6FE078, &v1, 1);
  qword_6FE090 = 0x7063776970687774;
  dword_6FE098 = 0;
  byte_6FE09C = 0;
  result = sub_44E44(qword_6FE0A0, qword_6FE078);
  word_6FE0B8 = word_6FE0B8 & 0xF800 | 0x407;
  return result;
}

void *sub_50A788()
{
  LODWORD(v1) = 1986295651;
  sub_4BA00(qword_6FE0C0, &v1, 1);
  qword_6FE0D8 = 0x706362696C70696ELL;
  dword_6FE0E0 = 0;
  byte_6FE0E4 = 0;
  v1 = 0x766D696E766F6464;
  sub_4BA00(&algn_6FE0E5[3], &v1, 2);
  word_6FE100 = word_6FE100 & 0xF800 | 0x630;
  qword_6FE108 = 0x706362696870696ELL;
  dword_6FE110 = 0;
  byte_6FE114 = 0;
  v1 = 0x766D696E766F6464;
  result = sub_4BA00(qword_6FE118, &v1, 2);
  word_6FE130 = word_6FE130 & 0xF800 | 0x630;
  return result;
}

void sub_50A88C()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6FE138, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6FE150, &v0[32], 1);
  qword_6FE168 = &qword_6FE168;
  unk_6FE170 = &qword_6FE168;
  qword_6FE178 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6FE180 = 3;
  sub_4BA00(&algn_6FE184[4], &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6FE1A0 = 3;
  sub_4BA00(&algn_6FE1A4[4], &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6FE1C0 = 3;
  sub_4BA00(&algn_6FE1C4[4], &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6FE1E0 = 3;
  sub_4BA00(&algn_6FE1E4[4], &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6FE200 = 3;
  sub_4BA00(&algn_6FE204[4], &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6FE220 = 3;
  sub_4BA00(&algn_6FE224[4], &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6FE240 = 2;
  sub_4BA00(&algn_6FE244[4], &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6FE260 = 2;
  sub_4BA00(&algn_6FE264[4], &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6FE280 = 2;
  sub_4BA00(&algn_6FE284[4], &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6FE2A0 = 2;
  sub_4BA00(&algn_6FE2A4[4], &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6FE2C0 = 2;
  sub_4BA00(&algn_6FE2C4[4], &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6FE2E0 = 2;
  sub_4BA00(&algn_6FE2E4[4], &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6FE300 = 2;
  sub_4BA00(&algn_6FE304[4], &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6FE320 = 2;
  sub_4BA00(&algn_6FE324[4], &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6FE340 = 2;
  sub_4BA00(&algn_6FE344[4], &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6FE360 = 2;
  sub_4BA00(&algn_6FE364[4], &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6FE380 = 3;
  sub_4BA00(&algn_6FE384[4], &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6FE3A0 = 2;
  sub_4BA00(&algn_6FE3A4[4], &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FE3C0 = 2;
  sub_4BA00(&algn_6FE3C4[4], &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FE3E0 = 3;
  sub_4BA00(&algn_6FE3E4[4], &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6FE400 = 2;
  sub_4BA00(&algn_6FE404[4], &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6FE420 = 3;
  sub_4BA00(&algn_6FE424[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FE440 = 2;
  sub_4BA00(&algn_6FE444[4], &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FE460 = 3;
  sub_4BA00(&algn_6FE464[4], &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6FE480 = 2;
  sub_4BA00(&algn_6FE484[4], &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6FE4A0 = 3;
  sub_4BA00(&algn_6FE4A4[4], &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6FE4C0 = 2;
  sub_4BA00(&algn_6FE4C4[4], &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6FE4E0 = 3;
  sub_4BA00(&algn_6FE4E4[4], &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6FE500 = 2;
  sub_4BA00(&algn_6FE504[4], &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6FE520 = 3;
  sub_4BA00(&algn_6FE524[4], &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6FE540 = 2;
  sub_4BA00(&algn_6FE544[4], &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6FE560 = 3;
  sub_4BA00(&algn_6FE564[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6FE580 = 2;
  sub_1DD78C(&algn_6FE584[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_6FE5A0 = 3;
  sub_1DD78C(&algn_6FE5A4[4], &v0[32], 1);
  *&v0[32] = off_6D6F50;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6FE5C0, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6D6F98;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6FE608, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6FE5C0;
  *(&v10 + 1) = &unk_6FE608;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_50B570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void sub_50B64C()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6FEA08, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6FEA20, &v0[32], 1);
  qword_6FEA38 = &qword_6FEA38;
  unk_6FEA40 = &qword_6FEA38;
  qword_6FEA48 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6FEA50 = 3;
  sub_4BA00(qword_6FEA58, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6FEA70 = 3;
  sub_4BA00(qword_6FEA78, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6FEA90 = 3;
  sub_4BA00(qword_6FEA98, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6FEAB0 = 3;
  sub_4BA00(qword_6FEAB8, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6FEAD0 = 3;
  sub_4BA00(qword_6FEAD8, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6FEAF0 = 3;
  sub_4BA00(qword_6FEAF8, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6FEB10 = 2;
  sub_4BA00(qword_6FEB18, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6FEB30 = 2;
  sub_4BA00(qword_6FEB38, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6FEB50 = 2;
  sub_4BA00(qword_6FEB58, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6FEB70 = 2;
  sub_4BA00(qword_6FEB78, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6FEB90 = 2;
  sub_4BA00(qword_6FEB98, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6FEBB0 = 2;
  sub_4BA00(qword_6FEBB8, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6FEBD0 = 2;
  sub_4BA00(qword_6FEBD8, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6FEBF0 = 2;
  sub_4BA00(qword_6FEBF8, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6FEC10 = 2;
  sub_4BA00(qword_6FEC18, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6FEC30 = 2;
  sub_4BA00(qword_6FEC38, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6FEC50 = 3;
  sub_4BA00(qword_6FEC58, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6FEC70 = 2;
  sub_4BA00(qword_6FEC78, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FEC90 = 2;
  sub_4BA00(qword_6FEC98, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FECB0 = 3;
  sub_4BA00(qword_6FECB8, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6FECD0 = 2;
  sub_4BA00(qword_6FECD8, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6FECF0 = 3;
  sub_4BA00(qword_6FECF8, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FED10 = 2;
  sub_4BA00(qword_6FED18, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FED30 = 3;
  sub_4BA00(qword_6FED38, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6FED50 = 2;
  sub_4BA00(qword_6FED58, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6FED70 = 3;
  sub_4BA00(qword_6FED78, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6FED90 = 2;
  sub_4BA00(qword_6FED98, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6FEDB0 = 3;
  sub_4BA00(qword_6FEDB8, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6FEDD0 = 2;
  sub_4BA00(qword_6FEDD8, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6FEDF0 = 3;
  sub_4BA00(qword_6FEDF8, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6FEE10 = 2;
  sub_4BA00(qword_6FEE18, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6FEE30 = 3;
  sub_4BA00(qword_6FEE38, &v0[32], 1);
  *&v0[32] = 0;
  dword_6FEE50 = 2;
  sub_1DD78C(qword_6FEE58, &v0[32], 1);
  *&v0[32] = 0;
  dword_6FEE70 = 3;
  sub_1DD78C(qword_6FEE78, &v0[32], 1);
  *&v0[32] = off_6D72F8;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6FEE90, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6D7340;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6FEED8, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6FEE90;
  *(&v10 + 1) = &unk_6FEED8;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_50C330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_50C40C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FF2D8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FF2F0, v1, 8);
  qword_6FF308 = &qword_6FF308;
  unk_6FF310 = &qword_6FF308;
  qword_6FF318 = 0;
  return result;
}

void *sub_50C4D4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF320, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FF338, v1, 1);
  qword_6FF350 = &qword_6FF350;
  *algn_6FF358 = &qword_6FF350;
  qword_6FF360 = 0;
  return result;
}

void *sub_50C59C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FF368, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FF380, v1, 8);
  qword_6FF398 = &qword_6FF398;
  unk_6FF3A0 = &qword_6FF398;
  qword_6FF3A8 = 0;
  return result;
}

void *sub_50C664()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_6FF3D0, v1, 8);
}

void *sub_50C6F8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF3E8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FF400, v1, 1);
  qword_6FF418 = &qword_6FF418;
  unk_6FF420 = &qword_6FF418;
  qword_6FF428 = 0;
  return result;
}

uint64_t *sub_50C7FC()
{
  v5[8] = off_6DDC08;
  v5[9] = *"lovc";
  v5[10] = xmmword_6DDC28;
  v5[11] = *&off_6DDC38;
  v5[4] = xmmword_6DDBC8;
  v5[5] = *&off_6DDBD8;
  v5[6] = *"lovl";
  v5[7] = unk_6DDBF8;
  v5[0] = *"ulov";
  v5[1] = unk_6DDB98;
  v5[2] = off_6DDBA8;
  v5[3] = *"dguv";
  sub_1D8D14(qword_6FF458, v5, 8);
  LODWORD(v5[0]) = 1986295651;
  v0 = sub_4BA00(qword_6FF470, v5, 1);
  qword_6FF488 = &qword_6FF488;
  unk_6FF490 = &qword_6FF488;
  qword_6FF498 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_6FF4A0 = v1;
  qword_6FF4A8 = 0x7063776970647370;
  if (sub_3114B0() && sub_B15A0())
  {
    dword_6FF4B0 = 1701867895;
    byte_6FF4B4 = 1;
  }

  else
  {
    byte_6FF4B4 = 1;
    dword_6FF4B0 = 1701868910;
  }

  sub_44E44(&qword_6FF4B8, qword_6FF470);
  word_6FF4D0 = word_6FF4D0 & 0xFFC0 | 0x1E;
  if (sub_3114B0())
  {
    if (sub_B15A0())
    {
      v2 = 1600;
    }

    else
    {
      v2 = 1536;
    }
  }

  else
  {
    v2 = 1536;
  }

  word_6FF4D0 = word_6FF4D0 & 0xF83F | v2;
  qword_6FF4D8 = 0x706377697068646DLL;
  if (sub_3114B0() && sub_B15A0())
  {
    dword_6FF4E0 = 1701867895;
    byte_6FF4E4 = 1;
  }

  else
  {
    byte_6FF4E4 = 1;
    dword_6FF4E0 = 1701868910;
  }

  sub_44E44(&qword_6FF4E8, qword_6FF470);
  word_6FF500 = word_6FF500 & 0xFFC0 | 0x1E;
  if (sub_3114B0())
  {
    if (sub_B15A0())
    {
      v3 = 1600;
    }

    else
    {
      v3 = 1536;
    }
  }

  else
  {
    v3 = 1536;
  }

  word_6FF500 = word_6FF500 & 0xF83F | v3;
  qmemcpy(&qword_6FF508, "tdhpxxcpnupe", 12);
  byte_6FF514 = 1;
  result = sub_44E44(qword_6FF518, qword_6FF470);
  word_6FF530 = word_6FF530 & 0xF800 | 0x68F;
  return result;
}

void *sub_50CAD4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF538, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FF550, v1, 1);
  qword_6FF568 = &qword_6FF568;
  unk_6FF570 = &qword_6FF568;
  qword_6FF578 = 0;
  return result;
}

void *sub_50CB9C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FF5A0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_6FF5B8, v1, 8);
  qword_6FF5D0 = &qword_6FF5D0;
  *algn_6FF5D8 = &qword_6FF5D0;
  qword_6FF5E0 = 0;
  return result;
}

void sub_50CC64()
{
  v0 = objc_autoreleasePoolPush();
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF5E8, v1, 8);
  objc_autoreleasePoolPop(v0);
}

void *sub_50CD10()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF600, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FF618, v1, 1);
  qword_6FF630 = &qword_6FF630;
  *algn_6FF638 = &qword_6FF630;
  qword_6FF640 = 0;
  return result;
}

void sub_50CDD8()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FF648, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF660, v1, 8);
  qword_6FF678 = &qword_6FF678;
  unk_6FF680 = &qword_6FF678;
  qword_6FF688 = 0;
  objc_autoreleasePoolPop(v0);
}

void *sub_50CEB8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF690, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FF6A8, v1, 1);
  qword_6FF6C0 = &qword_6FF6C0;
  *algn_6FF6C8 = &qword_6FF6C0;
  qword_6FF6D0 = 0;
  return result;
}

void sub_50CF80()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_6FF6D8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF6F0, v1, 8);
  objc_autoreleasePoolPop(v0);
}

void *sub_50D04C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_6FF708, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_6FF720, v1, 1);
  qword_6FF738 = &qword_6FF738;
  unk_6FF740 = &qword_6FF738;
  qword_6FF748 = 0;
  return result;
}

void sub_50D114()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_6FF750, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_6FF768, &v0[32], 1);
  qword_6FF780 = &qword_6FF780;
  *algn_6FF788 = &qword_6FF780;
  qword_6FF790 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_6FF798 = 3;
  sub_4BA00(qword_6FF7A0, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_6FF7B8 = 3;
  sub_4BA00(qword_6FF7C0, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_6FF7D8 = 3;
  sub_4BA00(qword_6FF7E0, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_6FF7F8 = 3;
  sub_4BA00(qword_6FF800, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_6FF818 = 3;
  sub_4BA00(qword_6FF820, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_6FF838 = 3;
  sub_4BA00(qword_6FF840, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_6FF858 = 2;
  sub_4BA00(qword_6FF860, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_6FF878 = 2;
  sub_4BA00(qword_6FF880, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_6FF898 = 2;
  sub_4BA00(qword_6FF8A0, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_6FF8B8 = 2;
  sub_4BA00(qword_6FF8C0, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_6FF8D8 = 2;
  sub_4BA00(qword_6FF8E0, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_6FF8F8 = 2;
  sub_4BA00(qword_6FF900, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_6FF918 = 2;
  sub_4BA00(qword_6FF920, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_6FF938 = 2;
  sub_4BA00(qword_6FF940, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_6FF958 = 2;
  sub_4BA00(qword_6FF960, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_6FF978 = 2;
  sub_4BA00(qword_6FF980, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_6FF998 = 3;
  sub_4BA00(qword_6FF9A0, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_6FF9B8 = 2;
  sub_4BA00(qword_6FF9C0, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FF9D8 = 2;
  sub_4BA00(qword_6FF9E0, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_6FF9F8 = 3;
  sub_4BA00(qword_6FFA00, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_6FFA18 = 2;
  sub_4BA00(qword_6FFA20, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_6FFA38 = 3;
  sub_4BA00(qword_6FFA40, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FFA58 = 2;
  sub_4BA00(qword_6FFA60, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_6FFA78 = 3;
  sub_4BA00(qword_6FFA80, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_6FFA98 = 2;
  sub_4BA00(qword_6FFAA0, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_6FFAB8 = 3;
  sub_4BA00(qword_6FFAC0, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_6FFAD8 = 2;
  sub_4BA00(qword_6FFAE0, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_6FFAF8 = 3;
  sub_4BA00(qword_6FFB00, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_6FFB18 = 2;
  sub_4BA00(qword_6FFB20, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_6FFB38 = 3;
  sub_4BA00(qword_6FFB40, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_6FFB58 = 2;
  sub_4BA00(qword_6FFB60, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_6FFB78 = 3;
  sub_4BA00(qword_6FFB80, &v0[32], 1);
  *&v0[32] = 0;
  dword_6FFB98 = 2;
  sub_1DD78C(qword_6FFBA0, &v0[32], 1);
  *&v0[32] = 0;
  dword_6FFBB8 = 3;
  sub_1DD78C(qword_6FFBC0, &v0[32], 1);
  *&v0[32] = off_6D83F8;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_6FFBD8, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6D8440;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_6FFC20, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_6FFBD8;
  *(&v10 + 1) = &unk_6FFC20;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_50DDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_50DED4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_700020, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_700038, v1, 1);
  qword_700050 = &qword_700050;
  *algn_700058 = &qword_700050;
  qword_700060 = 0;
  return result;
}

void *sub_50DF9C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_700068, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_700080, v1, 8);
  qword_700098 = &qword_700098;
  unk_7000A0 = &qword_700098;
  qword_7000A8 = 0;
  return result;
}

void *sub_50E064()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_700128, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_700140, v1, 1);
  qword_700158 = &qword_700158;
  unk_700160 = &qword_700158;
  qword_700168 = 0;
  return result;
}

void *sub_50E12C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_700170, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_700188, v1, 8);
  qword_7001A0 = &qword_7001A0;
  *algn_7001A8 = &qword_7001A0;
  qword_7001B0 = 0;
  return result;
}

void *sub_50E1F4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_7001D0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_7001E8, v1, 1);
  qword_700200 = &qword_700200;
  *algn_700208 = &qword_700200;
  qword_700210 = 0;
  return result;
}

uint64_t *sub_50E2BC()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_700218, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_700230, v1, 8);
  qword_700248 = &qword_700248;
  unk_700250 = &qword_700248;
  qword_700258 = 0;
  qword_700260 = 0x706362697073706BLL;
  dword_700268 = 0;
  byte_70026C = 0;
  result = sub_44E44(qword_700270, qword_700218);
  word_700288 = word_700288 & 0xF800 | 0x43C;
  return result;
}

void *sub_50E3C8()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_700290, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_7002A8, v1, 8);
  qword_7002C0 = &qword_7002C0;
  *algn_7002C8 = &qword_7002C0;
  qword_7002D0 = 0;
  return result;
}

void *sub_50E490()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_700910, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_700928, v1, 8);
}

void *sub_50E544()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_7009B0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_7009C8, v1, 1);
  qword_7009E0 = &qword_7009E0;
  *algn_7009E8 = &qword_7009E0;
  qword_7009F0 = 0;
  return result;
}

void *sub_50E60C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_7009F8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_700A10, v1, 1);
  qword_700A28 = &qword_700A28;
  unk_700A30 = &qword_700A28;
  qword_700A38 = 0;
  return result;
}

void *sub_50E6D4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_700A40, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_700A58, v1, 1);
  qword_700A70 = &qword_700A70;
  *algn_700A78 = &qword_700A70;
  qword_700A80 = 0;
  return result;
}

void *sub_50E79C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_700A88, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_700AA0, v1, 8);
  qword_700AB8 = &qword_700AB8;
  unk_700AC0 = &qword_700AB8;
  qword_700AC8 = 0;
  return result;
}

void *sub_50E864()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_700AD0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_700AE8, v1, 1);
  qword_700B00 = &qword_700B00;
  *algn_700B08 = &qword_700B00;
  qword_700B10 = 0;
  return result;
}

void *sub_50E92C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_700B18, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_700B30, v1, 8);
  qword_700B48 = &qword_700B48;
  unk_700B50 = &qword_700B48;
  qword_700B58 = 0;
  return result;
}

void *sub_50E9F4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_700B60, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_700B78, v1, 1);
  qword_700B90 = &qword_700B90;
  *algn_700B98 = &qword_700B90;
  qword_700BA0 = 0;
  return result;
}

void sub_50EABC()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_700BA8, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_700BC0, &v0[32], 1);
  qword_700BD8 = &qword_700BD8;
  unk_700BE0 = &qword_700BD8;
  qword_700BE8 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_700BF0 = 3;
  sub_4BA00(qword_700BF8, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_700C10 = 3;
  sub_4BA00(qword_700C18, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_700C30 = 3;
  sub_4BA00(qword_700C38, &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_700C50 = 3;
  sub_4BA00(qword_700C58, &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_700C70 = 3;
  sub_4BA00(qword_700C78, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_700C90 = 3;
  sub_4BA00(qword_700C98, &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_700CB0 = 2;
  sub_4BA00(qword_700CB8, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_700CD0 = 2;
  sub_4BA00(qword_700CD8, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_700CF0 = 2;
  sub_4BA00(qword_700CF8, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_700D10 = 2;
  sub_4BA00(qword_700D18, &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_700D30 = 2;
  sub_4BA00(qword_700D38, &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_700D50 = 2;
  sub_4BA00(qword_700D58, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_700D70 = 2;
  sub_4BA00(qword_700D78, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_700D90 = 2;
  sub_4BA00(qword_700D98, &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_700DB0 = 2;
  sub_4BA00(qword_700DB8, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_700DD0 = 2;
  sub_4BA00(qword_700DD8, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_700DF0 = 3;
  sub_4BA00(qword_700DF8, &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_700E10 = 2;
  sub_4BA00(qword_700E18, &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_700E30 = 2;
  sub_4BA00(qword_700E38, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_700E50 = 3;
  sub_4BA00(qword_700E58, &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_700E70 = 2;
  sub_4BA00(qword_700E78, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_700E90 = 3;
  sub_4BA00(qword_700E98, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_700EB0 = 2;
  sub_4BA00(qword_700EB8, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_700ED0 = 3;
  sub_4BA00(qword_700ED8, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_700EF0 = 2;
  sub_4BA00(qword_700EF8, &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_700F10 = 3;
  sub_4BA00(qword_700F18, &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_700F30 = 2;
  sub_4BA00(qword_700F38, &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_700F50 = 3;
  sub_4BA00(qword_700F58, &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_700F70 = 2;
  sub_4BA00(qword_700F78, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_700F90 = 3;
  sub_4BA00(qword_700F98, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_700FB0 = 2;
  sub_4BA00(qword_700FB8, &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_700FD0 = 3;
  sub_4BA00(qword_700FD8, &v0[32], 1);
  *&v0[32] = 0;
  dword_700FF0 = 2;
  sub_1DD78C(qword_700FF8, &v0[32], 1);
  *&v0[32] = 0;
  dword_701010 = 3;
  sub_1DD78C(qword_701018, &v0[32], 1);
  *&v0[32] = off_6D93B8;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_701030, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6D9400;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_701078, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_701030;
  *(&v10 + 1) = &unk_701078;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_50F7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_50F87C()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_701478, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_701490, v3, 8);
  qword_7014A8 = &qword_7014A8;
  unk_7014B0 = &qword_7014A8;
  qword_7014B8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_7014C0 = v2;
  return result;
}

void *sub_50F998()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_701550, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_701568, v1, 8);
}

void *sub_50FA4C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_7015A8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_7015C0, v1, 8);
  qword_7015D8 = &qword_7015D8;
  unk_7015E0 = &qword_7015D8;
  qword_7015E8 = 0;
  return result;
}

void sub_50FB14()
{
  v0 = objc_autoreleasePoolPush();
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_7015F0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_701608, v1, 1);
  qword_701620 = &qword_701620;
  *algn_701628 = &qword_701620;
  qword_701630 = 0;
  objc_autoreleasePoolPop(v0);
}

void sub_50FBF4()
{
  v6 = off_6DDC08;
  v7 = *"lovc";
  v8 = xmmword_6DDC28;
  v9 = *&off_6DDC38;
  v2 = xmmword_6DDBC8;
  v3 = *&off_6DDBD8;
  v4 = *"lovl";
  v5 = unk_6DDBF8;
  *&v0[32] = *"ulov";
  *&v0[48] = unk_6DDB98;
  *&v0[64] = off_6DDBA8;
  v1 = *"dguv";
  sub_1D8D14(qword_701658, &v0[32], 8);
  *&v0[32] = 1986295651;
  sub_4BA00(qword_701670, &v0[32], 1);
  qword_701688 = &qword_701688;
  unk_701690 = &qword_701688;
  qword_701698 = 0;
  qmemcpy(v0, "ivpvovpvcvmrsibitcmgcvmicomicgpvtcmgcvmicomicgpvivpvovpvcvmrsibi", 64);
  dword_7016A0 = 3;
  sub_4BA00(&qword_7016A8, &v0[32], 8);
  qmemcpy(&v0[32], "plmitcmgcvmicomicgpvivpvovpvcvmrsibi", 36);
  dword_7016C0 = 3;
  sub_4BA00(&qword_7016C8, &v0[32], 9);
  *&v0[32] = xmmword_517130;
  dword_7016E0 = 3;
  sub_4BA00(&algn_7016E4[4], &v0[32], 4);
  *&v0[32] = xmmword_517140;
  dword_701700 = 3;
  sub_4BA00(&algn_701704[4], &v0[32], 4);
  qmemcpy(&v0[32], "cgpvivpvovpvcvmrsibi", 20);
  dword_701720 = 3;
  sub_4BA00(&qword_701728, &v0[32], 5);
  qmemcpy(&v0[32], "tcmgcgpvcvmiivpvovpvcvmrsibi", 28);
  dword_701740 = 3;
  sub_4BA00(&algn_701744[4], &v0[32], 7);
  *&v0[32] = *&v0[16];
  *&v0[48] = *v0;
  dword_701760 = 2;
  sub_4BA00(&qword_701768, &v0[32], 8);
  *&v0[32] = xmmword_517150;
  dword_701780 = 2;
  sub_4BA00(&qword_701788, &v0[32], 4);
  *&v0[32] = 1918990112;
  dword_7017A0 = 2;
  sub_4BA00(&qword_7017A8, &v0[32], 1);
  *&v0[32] = 1936745326;
  dword_7017C0 = 2;
  sub_4BA00(&algn_7017C4[4], &v0[32], 1);
  *&v0[32] = 1836281204;
  dword_7017E0 = 2;
  sub_4BA00(&algn_7017E4[4], &v0[32], 1);
  *&v0[32] = 0x7670766976706763;
  dword_701800 = 2;
  sub_4BA00(&qword_701808, &v0[32], 2);
  *&v0[32] = 1987080813;
  dword_701820 = 2;
  sub_4BA00(&qword_701828, &v0[32], 1);
  *&v0[32] = 1987208039;
  dword_701840 = 2;
  sub_4BA00(&algn_701844[4], &v0[32], 1);
  *&v0[32] = 1919776355;
  dword_701860 = 2;
  sub_4BA00(&qword_701868, &v0[32], 1);
  qmemcpy(&v0[32], "plmirvmierpspcpspcts", 20);
  dword_701880 = 2;
  sub_4BA00(&qword_701888, &v0[32], 5);
  *&v0[32] = 1768778864;
  dword_7018A0 = 3;
  sub_4BA00(&algn_7018A4[4], &v0[32], 1);
  *&v0[32] = 1768776806;
  dword_7018C0 = 2;
  sub_4BA00(&algn_7018C4[4], &v0[32], 1);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_7018E0 = 2;
  sub_4BA00(&qword_7018E8, &v0[32], 3);
  qmemcpy(&v0[32], "pctspcpserps", 12);
  dword_701900 = 3;
  sub_4BA00(&algn_701904[4], &v0[32], 3);
  *&v0[32] = 1751212899;
  dword_701920 = 2;
  sub_4BA00(&qword_701928, &v0[32], 1);
  *&v0[32] = 1751212899;
  dword_701940 = 3;
  sub_4BA00(&qword_701948, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_701960 = 2;
  sub_4BA00(&qword_701968, &v0[32], 1);
  *&v0[32] = 1986556788;
  dword_701980 = 3;
  sub_4BA00(&qword_701988, &v0[32], 1);
  qmemcpy(&v0[16], "gcrvmorvtshvisrvgcrvmorvtshvisrvtsav", 36);
  dword_7019A0 = 2;
  sub_4BA00(&algn_7019A4[4], &v0[32], 5);
  *&v0[32] = *&v0[16];
  *&v0[48] = 1986098036;
  dword_7019C0 = 3;
  sub_4BA00(&algn_7019C4[4], &v0[32], 5);
  *&v0[32] = 1986098036;
  dword_7019E0 = 2;
  sub_4BA00(&algn_7019E4[4], &v0[32], 1);
  *&v0[32] = 1986098036;
  dword_701A00 = 3;
  sub_4BA00(&algn_701A04[4], &v0[32], 1);
  *&v0[32] = 0x6563692065637620;
  dword_701A20 = 2;
  sub_4BA00(&qword_701A28, &v0[32], 2);
  *&v0[32] = 0x6563692065637620;
  dword_701A40 = 3;
  sub_4BA00(&qword_701A48, &v0[32], 2);
  *&v0[32] = 1650811758;
  dword_701A60 = 2;
  sub_4BA00(&algn_701A64[4], &v0[32], 1);
  *&v0[32] = 1650811758;
  dword_701A80 = 3;
  sub_4BA00(&algn_701A84[4], &v0[32], 1);
  *&v0[32] = 0;
  dword_701AA0 = 2;
  sub_1DD78C(&qword_701AA8, &v0[32], 1);
  *&v0[32] = 0;
  dword_701AC0 = 3;
  sub_1DD78C(&qword_701AC8, &v0[32], 1);
  *&v0[32] = off_6DA670;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require out of band speech input support");
  sub_1DD808(&unk_701AE0, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v0[32] = off_6DA6B8;
  *&v0[56] = &v0[32];
  sub_53E8(&v10, "Require wireless splitter not in use");
  sub_1DD808(&unk_701B28, &v0[32], &v10, 1);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_85148(&v0[32]);
  *&v10 = &unk_701AE0;
  *(&v10 + 1) = &unk_701B28;
  memset(&v0[32], 0, 24);
  sub_1DD898();
}

void sub_5108D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  sub_1DDAC4(va);
  _Unwind_Resume(a1);
}

void *sub_5109B4()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_708EB0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_708EC8, v1, 8);
  qword_708EE0 = &qword_708EE0;
  *algn_708EE8 = &qword_708EE0;
  qword_708EF0 = 0;
  return result;
}

void sub_510A7C()
{
  v0 = objc_autoreleasePoolPush();
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_708F28, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v1 = sub_4BA00(qword_708F40, v3, 1);
  qword_708F58 = &qword_708F58;
  unk_708F60 = &qword_708F58;
  qword_708F68 = 0;
  if (caulk::product::get_device_class(v1) == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_708F70 = v2;
  qword_708F78 = 0x706362696C70696ELL;
  dword_708F80 = 0;
  byte_708F84 = 0;
  *&v3[0] = 0x766D696E766F6464;
  sub_4BA00(&algn_708F85[3], v3, 2);
  word_708FA0 = word_708FA0 & 0xF800 | 0x630;
  qword_708FA8 = 0x706362696870696ELL;
  dword_708FB0 = 0;
  byte_708FB4 = 0;
  *&v3[0] = 0x766D696E766F6464;
  sub_4BA00(qword_708FB8, v3, 2);
  word_708FD0 = word_708FD0 & 0xF800 | 0x630;
  objc_autoreleasePoolPop(v0);
}

double sub_510C18()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_708FD8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_708FF0, v1, 1);
  qword_709008 = &qword_709008;
  unk_709010 = &qword_709008;
  qword_709018 = 0;
  qword_709020 = 1735159650;
  *&result = 1869968496;
  qword_709028 = 1869968496;
  return result;
}

uint64_t sub_510D00()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_709030, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_709048, v3, 8);
  qword_709060 = &qword_709060;
  *algn_709068 = &qword_709060;
  qword_709070 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_709078 = v2;
  return result;
}

void *sub_510DE0()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_709080, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_709098, v3, 1);
  qword_7090B0 = &qword_7090B0;
  *algn_7090B8 = &qword_7090B0;
  qword_7090C0 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_7090C8 = v1;
  qword_7090D0 = 0x706362696C70696ELL;
  dword_7090D8 = 0;
  byte_7090DC = 0;
  *&v3[0] = 0x766D696E766F6464;
  sub_4BA00(qword_7090E0, v3, 2);
  word_7090F8 = word_7090F8 & 0xF800 | 0x630;
  qword_709100 = 0x706362696870696ELL;
  dword_709108 = 0;
  byte_70910C = 0;
  *&v3[0] = 0x766D696E766F6464;
  result = sub_4BA00(qword_709110, v3, 2);
  word_709128 = word_709128 & 0xF800 | 0x630;
  return result;
}

void *sub_510F64()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_709130, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_709148, v1, 1);
  qword_709160 = &qword_709160;
  *algn_709168 = &qword_709160;
  qword_709170 = 0;
  qword_709178 = 0x7063626970686B69;
  dword_709180 = 0;
  byte_709184 = 0;
  LODWORD(v1[0]) = 1986552183;
  result = sub_4BA00(&algn_709185[3], v1, 1);
  word_7091A0 = word_7091A0 & 0xF800 | 0x421;
  return result;
}

void *sub_51107C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_7091A8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_7091C0, v1, 1);
  qword_7091D8 = &qword_7091D8;
  unk_7091E0 = &qword_7091D8;
  qword_7091E8 = 0;
  return result;
}

void *sub_511144()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_7091F0, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_709208, v1, 1);
  qword_709220 = &qword_709220;
  *algn_709228 = &qword_709220;
  qword_709230 = 0;
  return result;
}

void *sub_51120C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_709238, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_709250, v1, 1);
  qword_709268 = &qword_709268;
  unk_709270 = &qword_709268;
  qword_709278 = 0;
  return result;
}

void *sub_5112D4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_709280, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_709298, v1, 1);
  qword_7092B0 = &qword_7092B0;
  *algn_7092B8 = &qword_7092B0;
  qword_7092C0 = 0;
  return result;
}

void *sub_51139C()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_7092C8, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_7092E0, v1, 8);
  qword_7092F8 = &qword_7092F8;
  unk_709300 = &qword_7092F8;
  qword_709308 = 0;
  return result;
}

void *sub_511464()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_7093C8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_7093E0, v1, 1);
  qword_7093F8 = &qword_7093F8;
  unk_709400 = &qword_7093F8;
  qword_709408 = 0;
  return result;
}

void sub_51152C()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_709410, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_709428, v1, 8);
  objc_autoreleasePoolPop(v0);
}

uint64_t *sub_5115F8()
{
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_7094B8, v3, 1);
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  v0 = sub_1D8D14(qword_7094D0, v3, 8);
  qword_7094E8 = &qword_7094E8;
  unk_7094F0 = &qword_7094E8;
  qword_7094F8 = 0;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_709500 = v1;
  qmemcpy(&qword_709508, "uolpiwcpnupe", 12);
  byte_709514 = 1;
  sub_44E44(qword_709518, qword_7094B8);
  word_709530 = word_709530 & 0xF800 | 0x41E;
  qword_709538 = 0x6F757470766F6C6DLL;
  dword_709540 = 6;
  qword_709548 = 0x6F757470766F6C64;
  dword_709550 = 6;
  qword_709558 = 0x6F75747076637370;
  dword_709560 = 6;
  qword_709568 = 0x696E707469656E64;
  dword_709570 = 0;
  qword_709578 = 0x7063626970726563;
  dword_709580 = 0;
  byte_709584 = 0;
  sub_44E44(&algn_709585[3], qword_7094B8);
  word_7095A0 = word_7095A0 & 0xF800 | 0x434;
  qword_7095A8 = 0x706362697073706BLL;
  dword_7095B0 = 0;
  byte_7095B4 = 0;
  sub_44E44(qword_7095B8, qword_7094B8);
  word_7095D0 = word_7095D0 & 0xF800 | 0x43C;
  qword_7095D8 = 0x7063626970686163;
  dword_7095E0 = 0;
  byte_7095E4 = 0;
  result = sub_44E44(&algn_7095E5[3], qword_7094B8);
  word_709600 = word_709600 & 0xF800 | 0x424;
  return result;
}

void *sub_511858()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_709898, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_7098B0, v1, 8);
  qword_7098C8 = &qword_7098C8;
  unk_7098D0 = &qword_7098C8;
  qword_7098D8 = 0;
  return result;
}

uint64_t sub_511920()
{
  *v1 = 1986295651;
  sub_4BA00(qword_7098E0, v1, 1);
  v5 = off_6DDC08;
  v6 = *"lovc";
  v7 = xmmword_6DDC28;
  v8 = *&off_6DDC38;
  *&v1[64] = xmmword_6DDBC8;
  v2 = *&off_6DDBD8;
  v3 = *"lovl";
  v4 = unk_6DDBF8;
  *v1 = *"ulov";
  *&v1[16] = unk_6DDB98;
  *&v1[32] = off_6DDBA8;
  *&v1[48] = *"dguv";
  sub_1D8D14(qword_7098F8, v1, 8);
  qword_709910 = &qword_709910;
  *algn_709918 = &qword_709910;
  qword_709920 = 0;
  qmemcpy(v1, "ivpvovpvcgpvcvmrgcrvgsmvpcps", 28);
  qword_709930 = 0;
  unk_709938 = 0;
  qword_709928 = 0;
  sub_4625C(&qword_709928, v1, &v1[28], 7uLL);
  *v1 = xmmword_517190;
  qword_709948 = 0;
  unk_709950 = 0;
  qword_709940 = 0;
  sub_4625C(&qword_709940, v1, &v1[16], 4uLL);
  qmemcpy(v1, " wargcrvccahgsmvivpvcvmiovpvcomicgpvtcmgcvmrplminkpstmsmmacmpcpspcts", 68);
  qword_709960 = 0;
  unk_709968 = 0;
  qword_709958 = 0;
  return sub_4625C(&qword_709958, v1, &v1[68], 0x11uLL);
}

void *sub_511AA0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_709E78, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  return sub_1D8D14(qword_709E90, v1, 8);
}

uint64_t sub_511B54()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_709EA8, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_709EC0, v3, 1);
  qword_709ED8 = &qword_709ED8;
  unk_709EE0 = &qword_709ED8;
  qword_709EE8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_709EF0 = v2;
  return result;
}

void sub_511C34()
{
  if ((atomic_load_explicit(&qword_709F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_709F10))
    {
      v0[8] = off_6DC3A0;
      v0[9] = *&off_6DC3B0;
      v0[10] = off_6DC3C0;
      v0[4] = off_6DC360;
      v0[5] = *&off_6DC370;
      v0[6] = off_6DC380;
      v0[7] = *&off_6DC390;
      v0[0] = off_6DC320;
      v0[1] = *&off_6DC330;
      v0[2] = off_6DC340;
      v0[3] = *&off_6DC350;
      sub_21A4D4(v0, 11);
      __cxa_guard_release(&qword_709F10);
    }
  }
}

uint64_t *sub_511D0C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_709F30, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_709F48, v1, 1);
  qword_709F60 = &qword_709F60;
  *algn_709F68 = &qword_709F60;
  qword_709F70 = 0;
  qword_709F78 = 0x7063776970737164;
  dword_709F80 = 0;
  byte_709F84 = 0;
  result = sub_44E44(&algn_709F85[3], qword_709F48);
  word_709FA0 = word_709FA0 & 0xF800 | 0x617;
  return result;
}

uint64_t sub_511E18()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_709FA8, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  v0 = sub_4BA00(qword_709FC0, v3, 1);
  qword_709FD8 = &qword_709FD8;
  unk_709FE0 = &qword_709FD8;
  qword_709FE8 = 0;
  result = caulk::product::get_device_class(v0);
  if (result == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  dword_709FF0 = v2;
  return result;
}

void *sub_511EF8()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_709FF8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_70A010, v1, 1);
  qword_70A028 = &qword_70A028;
  unk_70A030 = &qword_70A028;
  qword_70A038 = 0;
  return result;
}

uint64_t *sub_511FC0()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_70A040, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_70A058, v1, 8);
  qword_70A070 = &qword_70A070;
  *algn_70A078 = &qword_70A070;
  qword_70A080 = 0;
  qword_70A088 = 0x70636269706D6269;
  dword_70A090 = 0;
  byte_70A094 = 0;
  result = sub_44E44(qword_70A098, qword_70A040);
  word_70A0B0 = word_70A0B0 & 0xF800 | 0x435;
  return result;
}

uint64_t *sub_5120CC()
{
  v1 = 1986295651;
  sub_4BA00(qword_70A0B8, &v1, 1);
  qword_70A0D0 = 0x7063787870727470;
  dword_70A0D8 = 0;
  byte_70A0DC = 0;
  result = sub_44E44(qword_70A0E0, qword_70A0B8);
  word_70A0F8 = word_70A0F8 & 0xF800 | 0x21;
  return result;
}

void sub_512150()
{
  v0 = 0;
  v1 = 0;
  qword_70A110 = 0;
  qword_70A108 = 0;
  v2 = &qword_70A108;
  qword_70A100 = &qword_70A108;
  while (1)
  {
    if (v2 == &qword_70A108)
    {
      v4 = &qword_70A108;
    }

    else
    {
      v3 = v0;
      if (v0)
      {
        do
        {
          v4 = v3;
          v3 = v3[1];
        }

        while (v3);
      }

      else
      {
        v5 = &qword_70A108;
        do
        {
          v4 = v5[2];
          v6 = *v4 == v5;
          v5 = v4;
        }

        while (v6);
      }

      v7 = dword_6DCAD8[v1];
      if (*(v4 + 8) >= v7)
      {
        if (v0)
        {
          v8 = &qword_70A108;
          while (1)
          {
            while (1)
            {
              v9 = v0;
              v10 = *(v0 + 32);
              if (v7 >= v10)
              {
                break;
              }

              v0 = *v9;
              v8 = v9;
              if (!*v9)
              {
                goto LABEL_14;
              }
            }

            if (v10 >= v7)
            {
              break;
            }

            v8 = v9 + 1;
            v0 = v9[1];
            if (!v0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          v8 = &qword_70A108;
        }

        goto LABEL_13;
      }
    }

    v8 = v0 ? v4 + 1 : &qword_70A108;
LABEL_13:
    if (!*v8)
    {
LABEL_14:
      operator new();
    }

    v1 += 4;
    if (v1 == 32)
    {
      break;
    }

    v2 = qword_70A100;
    v0 = qword_70A108;
  }
}

uint64_t *sub_5122F4()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_70A118, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_70A130, v1, 1);
  qword_70A148 = &qword_70A148;
  unk_70A150 = &qword_70A148;
  qword_70A158 = 0;
  qword_70A160 = 0x7063776970617263;
  dword_70A168 = 0;
  byte_70A16C = 0;
  result = sub_44E44(qword_70A170, qword_70A130);
  word_70A188 = word_70A188 & 0xF800 | 0x617;
  return result;
}

uint64_t sub_512400()
{
  v11 = off_6DDC08;
  v12 = *"lovc";
  v13 = xmmword_6DDC28;
  v14 = *&off_6DDC38;
  v7 = xmmword_6DDBC8;
  v8 = *&off_6DDBD8;
  v9 = *"lovl";
  v10 = unk_6DDBF8;
  v3 = *"ulov";
  v4 = unk_6DDB98;
  v5 = off_6DDBA8;
  v6 = *"dguv";
  sub_1D8D14(qword_70A190, &v3, 8);
  LODWORD(v3) = 1986295651;
  sub_4BA00(qword_70A1A8, &v3, 1);
  LODWORD(v3) = 1885500772;
  *(&v3 + 1) = off_6DCD58;
  *&v4 = sub_2841DC;
  *&v5 = &v3 + 8;
  DWORD2(v5) = 1718186601;
  *&v6 = off_6DCD58;
  *(&v6 + 1) = sub_283634;
  *(&v7 + 1) = &v6;
  LODWORD(v8) = 1651074168;
  *(&v8 + 1) = off_6DCD58;
  *&v9 = sub_283160;
  *&v10 = &v8 + 8;
  DWORD2(v10) = 1735287906;
  *&v11 = off_6DCD58;
  *(&v11 + 1) = sub_282B74;
  *(&v12 + 1) = &v11;
  LODWORD(v13) = 1920365171;
  *(&v13 + 1) = off_6DCD58;
  *&v14 = sub_2828A4;
  v15 = &v13 + 8;
  v16 = 1684303986;
  v17 = off_6DCD58;
  v18 = sub_281BB0;
  v19 = &v17;
  v20 = 1667789676;
  v21 = off_6DCD58;
  v22 = sub_281810;
  v23 = &v21;
  v24 = 1768907891;
  v25 = off_6DCD58;
  v26 = sub_280C68;
  v27 = &v25;
  v28 = 1936749683;
  v29[0] = off_6DCD58;
  v29[1] = sub_27FBE4;
  v29[3] = v29;
  v30 = 14;
  v31[0] = off_6DCD58;
  v31[1] = sub_27F870;
  v31[3] = v31;
  v32 = 1936746861;
  v33[0] = off_6DCD58;
  v33[1] = sub_27F7B4;
  v33[3] = v33;
  v34 = 1835235437;
  v35[0] = off_6DCD58;
  v35[1] = sub_27F6F8;
  v35[3] = v35;
  v36 = 1886548852;
  v37[0] = off_6DCD58;
  v37[1] = sub_27F630;
  v37[3] = v37;
  v38 = 1886610801;
  v39[0] = off_6DCD58;
  v39[1] = sub_27F574;
  v39[3] = v39;
  v40 = 1886352244;
  v41[0] = off_6DCD58;
  v41[1] = sub_27F4A8;
  v41[3] = v41;
  v42 = 1701737068;
  v43[0] = off_6DCD58;
  v43[1] = sub_27F3B0;
  v43[3] = v43;
  v44 = 1818326117;
  v45[0] = off_6DCD58;
  v45[1] = sub_27F2B8;
  v45[3] = v45;
  v46 = 1701080167;
  v47[0] = off_6DCD58;
  v47[1] = sub_27F1C0;
  v47[3] = v47;
  v48 = 1633972835;
  v49[0] = off_6DCD58;
  v49[1] = sub_27E890;
  v49[3] = v49;
  v50 = 1668248691;
  v51[0] = off_6DCD58;
  v51[1] = sub_27E7C4;
  v51[3] = v51;
  v52 = 1634625388;
  v53[0] = off_6DCD58;
  v53[1] = sub_27E45C;
  v53[3] = v53;
  sub_27386C(&qword_70A1C0, &v3, 21);
  for (i = 808; i != -32; i -= 40)
  {
    sub_273D54(&v3 + i);
  }

  LODWORD(v3) = 1987405668;
  *(&v3 + 1) = off_6DCDA0;
  *&v4 = sub_27E220;
  *&v5 = &v3 + 8;
  DWORD2(v5) = 1987013749;
  *&v6 = off_6DCDA0;
  *(&v6 + 1) = sub_279F38;
  *(&v7 + 1) = &v6;
  LODWORD(v8) = 1668706156;
  *(&v8 + 1) = off_6DCDA0;
  *&v9 = sub_279CE4;
  *&v10 = &v8 + 8;
  DWORD2(v10) = 1819701100;
  *&v11 = off_6DCDA0;
  *(&v11 + 1) = sub_279A6C;
  *(&v12 + 1) = &v11;
  LODWORD(v13) = 1953918828;
  *(&v13 + 1) = off_6DCDA0;
  *&v14 = sub_279700;
  v15 = &v13 + 8;
  v16 = 1752659567;
  v17 = off_6DCDA0;
  v18 = sub_279360;
  v19 = &v17;
  v20 = 1987343987;
  v21 = off_6DCDA0;
  v22 = sub_277138;
  v23 = &v21;
  v24 = 1651275122;
  v25 = off_6DCDA0;
  v26 = sub_275F48;
  v27 = &v25;
  sub_273DD4(&qword_70A1E8, &v3, 8);
  for (j = 288; j != -32; j -= 40)
  {
    result = sub_2742BC(&v3 + j);
  }

  return result;
}

void sub_512C5C(_Unwind_Exception *a1)
{
  for (i = 288; i != -32; i -= 40)
  {
    sub_2742BC(v1 + i);
  }

  _Unwind_Resume(a1);
}

void *sub_512CAC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_70A218, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_70A230, v1, 1);
  qword_70A248 = &qword_70A248;
  unk_70A250 = &qword_70A248;
  qword_70A258 = 0;
  return result;
}

void *sub_512D74()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_70A260, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_70A278, v1, 8);
  qword_70A290 = &qword_70A290;
  *algn_70A298 = &qword_70A290;
  qword_70A2A0 = 0;
  return result;
}

void *sub_512E3C()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_70A2A8, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_70A2C0, v1, 1);
  qword_70A2D8 = &qword_70A2D8;
  unk_70A2E0 = &qword_70A2D8;
  qword_70A2E8 = 0;
  return result;
}

void *sub_512F04()
{
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_70A2F0, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  result = sub_1D8D14(qword_70A308, v1, 8);
  qword_70A320 = &qword_70A320;
  *algn_70A328 = &qword_70A320;
  qword_70A330 = 0;
  return result;
}

void *sub_512FCC()
{
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_70A340, v1, 8);
  LODWORD(v1[0]) = 1986295651;
  result = sub_4BA00(qword_70A358, v1, 1);
  qword_70A370 = &qword_70A370;
  *algn_70A378 = &qword_70A370;
  qword_70A380 = 0;
  return result;
}

double sub_513094()
{
  v3[8] = off_6DDC08;
  v3[9] = *"lovc";
  v3[10] = xmmword_6DDC28;
  v3[11] = *&off_6DDC38;
  v3[4] = xmmword_6DDBC8;
  v3[5] = *&off_6DDBD8;
  v3[6] = *"lovl";
  v3[7] = unk_6DDBF8;
  v3[0] = *"ulov";
  v3[1] = unk_6DDB98;
  v3[2] = off_6DDBA8;
  v3[3] = *"dguv";
  sub_1D8D14(qword_70A388, v3, 8);
  LODWORD(v3[0]) = 1986295651;
  sub_4BA00(qword_70A3A0, v3, 1);
  qword_70A3B8 = &qword_70A3B8;
  unk_70A3C0 = &qword_70A3B8;
  qword_70A3C8 = 0;
  qmemcpy(&qword_70A3D0, "uolpiwcpnupe", 12);
  byte_70A3DC = 1;
  v0 = sub_44E44(qword_70A3E0, qword_70A3A0);
  word_70A3F8 = word_70A3F8 & 0xF800 | 0x41E;
  if (caulk::product::get_device_class(v0) == 6)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  dword_70A400 = v1;
  qmemcpy(&qword_70A408, "wphpiwcpphpe", 12);
  byte_70A414 = 1;
  sub_44E44(qword_70A418, qword_70A3A0);
  word_70A430 = word_70A430 & 0xF800 | 0x616;
  qword_70A438 = 0x70637769706D7769;
  dword_70A440 = 0;
  byte_70A444 = 0;
  sub_44E44(&algn_70A445[3], qword_70A3A0);
  word_70A460 = word_70A460 & 0xF800 | 0x617;
  qword_70A468 = 0x6F757470766F6C6DLL;
  dword_70A470 = 1;
  qword_70A478 = 0x6F757470766F6C64;
  dword_70A480 = 1;
  result = 8.13208713e228;
  qword_70A488 = 0x6F75747076637370;
  dword_70A490 = 1;
  return result;
}

void sub_5132AC()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v1[0]) = 1986295651;
  sub_4BA00(qword_70A498, v1, 1);
  v1[8] = off_6DDC08;
  v1[9] = *"lovc";
  v1[10] = xmmword_6DDC28;
  v1[11] = *&off_6DDC38;
  v1[4] = xmmword_6DDBC8;
  v1[5] = *&off_6DDBD8;
  v1[6] = *"lovl";
  v1[7] = unk_6DDBF8;
  v1[0] = *"ulov";
  v1[1] = unk_6DDB98;
  v1[2] = off_6DDBA8;
  v1[3] = *"dguv";
  sub_1D8D14(qword_70A4B0, v1, 8);
  qword_70A4C8 = &qword_70A4C8;
  unk_70A4D0 = &qword_70A4C8;
  qword_70A4D8 = 0;
  objc_autoreleasePoolPop(v0);
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  GregorianDate = _CFAbsoluteTimeGetGregorianDate(at, tz);
  second = GregorianDate.second;
  v2 = *&GregorianDate.year;
  result.second = second;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__parent_path(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__root_directory(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return std::logic_error::logic_error(this, a2);
}

{
  return std::logic_error::logic_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  return std::to_string(retstr, __val);
}

{
  return std::to_string(retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}