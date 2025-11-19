void sub_83C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void *sub_880()
{
  if ((atomic_load_explicit(&qword_2C0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2C0F0))
  {
    sub_BBC(&unk_2C088);
    __cxa_guard_release(&qword_2C0F0);
  }

  return &unk_2C088;
}

uint64_t sub_8F8(const __CFString *a1, _BYTE *a2)
{
  valuePtr = 0;
  *a2 = 0;
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(a1);
LABEL_6:
      *a2 = 1;
      return valuePtr;
    }

    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      goto LABEL_6;
    }

    if (v4 == CFStringGetTypeID())
    {
      CFStringGetCString(a1, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

  return valuePtr;
}

BOOL sub_9F4(const __CFBoolean *a1, _BYTE *a2)
{
  valuePtr = 0;
  *a2 = 0;
  if (a1)
  {
    v3 = a1;
    v4 = CFGetTypeID(a1);
    if (v4 == CFBooleanGetTypeID())
    {
      LODWORD(a1) = CFBooleanGetValue(v3);
LABEL_6:
      *a2 = 1;
      return a1 != 0;
    }

    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      LODWORD(a1) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v4 != CFStringGetTypeID())
    {
      LODWORD(a1) = 0;
      return a1 != 0;
    }

    CFStringGetCString(v3, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(a1) = valuePtr != 0;
      return a1 != 0;
    }

    v6 = buffer[0];
    if (buffer[0])
    {
      v7 = &buffer[1];
      do
      {
        *(v7 - 1) = __tolower(v6);
        v8 = *v7++;
        v6 = v8;
      }

      while (v8);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v9 = v12 == 101) : (v9 = 0), v9))
    {
      LODWORD(a1) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v12))
    {
      LODWORD(a1) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(a1) = valuePtr;
    }
  }

  return a1 != 0;
}

uint64_t sub_BBC(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  global_queue = dispatch_get_global_queue(0, 0);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, global_queue);
  *(a1 + 96) = v3;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_CC0;
  handler[3] = &unk_28548;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(a1 + 96));
  return a1;
}

void sub_CC8(uint64_t a1)
{
  std::mutex::lock(a1);
  CFSetApplyFunction(*(a1 + 64), sub_F5C, 0);
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  while (v2 != v3)
  {
    sub_EB4(v2);
    v2 += 6;
  }

  std::mutex::unlock(a1);
}

uint64_t sub_D58(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3 == v4)
  {
    return 0;
  }

  while (!CFEqual(cf1, *v3) || !CFEqual(a3, v3[1]))
  {
    v3 += 6;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

void sub_DC8(uint64_t a1, const void *a2, void *a3, uint64_t a4)
{
  value = a3;
  v11 = a2;
  std::mutex::lock(a1);
  if ((sub_D58(a1, a2, a3) & 1) == 0)
  {
    CFRetain(a2);
    CFRetain(a3);
    v8 = *(a1 + 80);
    if (v8 >= *(a1 + 88))
    {
      v9 = sub_F78(a1 + 72, &v11, &value, a4);
    }

    else
    {
      sub_10C0(*(a1 + 80), &v11, &value, a4);
      v9 = v8 + 48;
      *(a1 + 80) = v8 + 48;
    }

    *(a1 + 80) = v9;
    CFSetAddValue(*(a1 + 64), value);
    sub_EB4((*(a1 + 80) - 48));
  }

  std::mutex::unlock(a1);
}

void sub_E94(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_EB4(CFStringRef *a1)
{
  result = CFPreferencesCopyAppValue(*a1, a1[1]);
  if (result)
  {

    return sub_F08((a1 + 2), result);
  }

  return result;
}

uint64_t sub_F08(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1514();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_F78(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1280();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_133C(a1, v8);
  }

  v15 = 0;
  v16 = 48 * v4;
  sub_10C0((48 * v4), a2, a3, a4);
  v17 = 48 * v4 + 48;
  v9 = *(a1 + 8);
  v10 = 48 * v4 + *a1 - v9;
  sub_13C8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_14C0(&v15);
  return v14;
}

void sub_10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_14C0(va);
  _Unwind_Resume(a1);
}

void *sub_10C0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *a3;
  sub_1168(v8, a4);
  *a1 = v5;
  a1[1] = v6;
  sub_1168((a1 + 2), v8);
  sub_1200(v8);
  return a1;
}

void sub_114C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1200(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1168(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1200(uint64_t a1)
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

void sub_12AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1308(exception, a1);
}

std::logic_error *sub_1308(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_133C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1394();
}

void sub_1394()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_13C8(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      *(v6 - 16) = *v7;
      v8 = sub_1440(v6, (v7 + 1));
      v7 += 3;
      v6 = v8 + 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_1200((v5 + 1));
      v5 += 3;
    }
  }
}

uint64_t sub_1440(uint64_t a1, uint64_t a2)
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

uint64_t sub_14C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1200(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1514()
{
  exception = __cxa_allocate_exception(8uLL);
}

double sub_1560(uint64_t a1)
{
  *(a1 + 161) = 17;
  *(a1 + 164) = 2139062143;
  *&result = 0x100000001;
  *(a1 + 168) = 1;
  return result;
}

uint64_t sub_157C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, char *a6, uint64_t a7)
{
  v14 = 0xFFFFFFF;
  if (a5 != 36 && a5 != 112 && a5 != 126)
  {
    if (a5 == 37)
    {
      v14 = 0xFFFFFFF;
    }

    else
    {
      v14 = a4;
    }
  }

  if (*(a1 + 16) == *(a1 + 8))
  {
    if ((a5 & 0xFE) == 0x70)
    {
      v19 = 127;
    }

    else
    {
      v19 = a2;
    }

    *(a1 + 185) = v19;
    *(a1 + 176) = a3;
    *(a1 + 180) = v14;
    *(a1 + 184) = a5;
    __src = 32496;
    v48 = a2;
    v49 = 13;
    v50 = a5;
    v51 = 1;
    v52 = 0;
    if (!(a3 >> 28))
    {
      v20 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(a3), xmmword_20150)), 0x7F007F007F007FLL));
      LODWORD(v52) = vuzp1_s8(v20, v20).u32[0];
    }

    if (!(v14 >> 28))
    {
      v21 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v14), xmmword_20150)), 0x7F007F007F007FLL));
      HIDWORD(v52) = vuzp1_s8(v21, v21).u32[0];
    }

    sub_1B1C();
    if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
    {
      operator new();
    }

    sub_2234(a1 + 8, *(a1 + 16), &__src, &v53, 14);
  }

  else
  {
    sub_1B1C();
    v15 = qword_2C0F8;
    if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 16) - *(a1 + 8);
      v29 = 136315650;
      v30 = "MIDICIMessageEmitter.cpp";
      v31 = 1024;
      v32 = 49;
      v33 = 2048;
      *v34 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Message already has %lu bytes. Checking continuation ...", &v29, 0x1Cu);
    }

    if (*(a1 + 176) != a3 || *(a1 + 180) != a4 || *(a1 + 184) != a5)
    {
      sub_1B1C();
      v17 = qword_2C0F8;
      if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "MIDICIMessageEmitter.cpp";
        v31 = 1024;
        v32 = 52;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] MIDICIMessageEmitter::CreateCIMessage() can't continue message (kMIDINotPermitted)", &v29, 0x12u);
      }

      v18 = 4294956452;
LABEL_44:
      *(a1 + 16) = *(a1 + 8);
      return v18;
    }
  }

  v22 = a5 >> 4;
  if (a5 >> 4 > 2)
  {
    if (v22 == 3)
    {
      v23 = sub_1E0C(a1, a6, a7);
      goto LABEL_38;
    }

    if (v22 == 7)
    {
      v23 = sub_1F08(a1, a6, a7);
      goto LABEL_38;
    }
  }

  else
  {
    if (v22 == 1)
    {
      v23 = sub_1B4C(a1, a6, a7);
      goto LABEL_38;
    }

    if (v22 == 2)
    {
      v23 = sub_1C94(a1, a6, a7);
LABEL_38:
      v18 = v23;
      goto LABEL_39;
    }
  }

  sub_1B1C();
  v24 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_ERROR))
  {
    v29 = 136315650;
    v30 = "MIDICIMessageEmitter.cpp";
    v31 = 1024;
    v32 = 76;
    v33 = 1024;
    *v34 = a5 >> 4;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unhandled message type: 0x%x", &v29, 0x18u);
  }

  v18 = 4294956452;
LABEL_39:
  sub_1B1C();
  v25 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v26 = sub_1BFB0(a5);
    v29 = 136317442;
    v30 = "MIDICIMessageEmitter.cpp";
    v31 = 1024;
    v32 = 80;
    v33 = 1024;
    *v34 = a2;
    *&v34[4] = 1024;
    *&v34[6] = a3;
    v35 = 1024;
    v36 = a4;
    v37 = 1024;
    v38 = a5;
    v39 = 2080;
    v40 = v26;
    v41 = 2048;
    v42 = a6;
    v43 = 2048;
    v44 = a7;
    v45 = 1024;
    v46 = v18;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDICIMessageEmitter::CreateCIMessage(channel:0x%x, sourceMUID:0x%08x, destMUID:0x%08x, msgIndex:0x%x (%s), data:%p, length:%lu) = %d", &v29, 0x4Eu);
  }

  if (v18)
  {
    sub_1B1C();
    v27 = qword_2C0F8;
    if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "MIDICIMessageEmitter.cpp";
      v31 = 1024;
      v32 = 83;
      v33 = 1024;
      *v34 = v18;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] MIDICIMessageEmitter::CreateCIMessage() failed with error %d (message will not be sent)", &v29, 0x18u);
    }

    goto LABEL_44;
  }

  return v18;
}

void sub_1B1C()
{
  if ((atomic_load_explicit(&qword_2C100, memory_order_acquire) & 1) == 0)
  {
    sub_1CEFC();
  }
}

uint64_t sub_1B4C(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  __src = 99;
  v14 = 0;
  sub_2234(a1 + 8, *(a1 + 16), &__src, &v16, 1);
  v6 = *(a1 + 184);
  if ((v6 - 16) >= 2)
  {
    if ((v6 - 19) < 2)
    {
      sub_2098(a1);
LABEL_13:
      v7 = 0;
      goto LABEL_15;
    }

    if (v6 != 18)
    {
      goto LABEL_13;
    }

    if (a3 == 5)
    {
      if (!a2)
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 16);
      v11 = a1 + 8;
      v10 = a2 + 5;
      v12 = a2;
      v8 = 5;
LABEL_12:
      sub_2234(v11, v9, v12, v10, v8);
      goto LABEL_13;
    }

LABEL_14:
    v7 = 4294956452;
    goto LABEL_15;
  }

  if (a3 != 5 * (a3 / 5))
  {
    goto LABEL_14;
  }

  v14 = a3 / 5;
  sub_2234(a1 + 8, *(a1 + 16), &v14, &__src, 1);
  v7 = 0;
  if (a2)
  {
    v8 = a3;
    if (a3)
    {
      v9 = *(a1 + 16);
      v10 = &a2[a3];
      v11 = a1 + 8;
      v12 = a2;
      goto LABEL_12;
    }
  }

LABEL_15:
  v16 = -9;
  sub_2234(a1 + 8, *(a1 + 16), &v16, &v17, 1);
  return v7;
}

uint64_t sub_1C94(uint64_t a1, _BYTE *__src, unsigned int a3)
{
  v4 = __src;
  __srca = 0;
  v6 = *(a1 + 184);
  if (v6 <= 0x21)
  {
    if (v6 == 32)
    {
      goto LABEL_20;
    }

    if (v6 == 33)
    {
      v4 = sub_211C(a1, __src, a3);
      goto LABEL_21;
    }

LABEL_13:
    v4 = 4294956452;
    goto LABEL_21;
  }

  if (v6 - 34 >= 4)
  {
    if (v6 == 38 && a3 >= 6)
    {
      if (__src)
      {
        sub_2234(a1 + 8, *(a1 + 16), __src, __src + 5, 5);
      }

      v12 = a3 - 5;
      if (!(v12 >> 28))
      {
        v13 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v12), xmmword_20150)), 0x7F007F007F007FLL));
        __srca = vuzp1_s8(v13, v13).u32[0];
      }

      sub_2234(a1 + 8, *(a1 + 16), &__srca, v16, 4);
      v11 = v12;
      if (!v12)
      {
        goto LABEL_20;
      }

      v10 = (v4 + 5);
      v7 = *(a1 + 16);
      v9 = (v4 + 5 + v12);
      v8 = a1 + 8;
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (a3 == 5)
  {
    if (__src)
    {
      v7 = *(a1 + 16);
      v8 = a1 + 8;
      v9 = (v4 + 5);
      v10 = v4;
      v11 = 5;
LABEL_6:
      sub_2234(v8, v7, v10, v9, v11);
LABEL_20:
      v4 = 0;
    }
  }

  else
  {
    v4 = 4294956460;
  }

LABEL_21:
  v17 = -9;
  sub_2234(a1 + 8, *(a1 + 16), &v17, &v18, 1);
  return v4;
}

uint64_t sub_1E0C(uint64_t a1, char *__src, unsigned __int16 a3)
{
  v4 = *(a1 + 184);
  if ((v4 - 50) >= 8)
  {
    if ((v4 - 48) < 2)
    {
      if (__src)
      {
        sub_2234(a1 + 8, *(a1 + 16), __src, __src + 1, 1);
      }

      v10 = -9;
      v5 = *(a1 + 16);
      p_srca = &v10;
      v7 = a1 + 8;
      v8 = &v10;
      goto LABEL_6;
    }

    if (v4 != 63)
    {
      v12 = -9;
      sub_2234(a1 + 8, *(a1 + 16), &v12, &v13, 1);
      return 4294956452;
    }
  }

  if (__src)
  {
    if (a3)
    {
      sub_2234(a1 + 8, *(a1 + 16), __src, &__src[a3], a3);
    }
  }

  __srca = -9;
  v5 = *(a1 + 16);
  p_srca = &__srca;
  v7 = a1 + 8;
  v8 = &__srca;
LABEL_6:
  sub_2234(v7, v5, v8, p_srca + 1, 1);
  return 0;
}

uint64_t sub_1F08(uint64_t a1, char *a2, int a3)
{
  if (a3)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 184);
  if (v6 && (v7 & 0xFE) == 0x70)
  {
    return 4294956452;
  }

  __src = 0;
  v15 = 0;
  if ((v7 - 112) < 2)
  {
    v9 = (a1 + 16);
    v10 = a1 + 8;
    sub_2234(a1 + 8, *(a1 + 16), (a1 + 161), (a1 + 172), 11);
    if (a3 != 5)
    {
      return 4294956452;
    }

    __src = *a2;
    v11 = *(a2 + 1);
    if (!(v11 >> 28))
    {
      v12 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v11), xmmword_20150)), 0x7F007F007F007FLL));
      v15 = vuzp1_s8(v12, v12).u32[0];
    }

    sub_2234(a1 + 8, *v9, &__src, &v18, 1);
    goto LABEL_19;
  }

  if (v7 == 126)
  {
    v13 = *(a1 + 176);
    if (!(v13 >> 28))
    {
      v14 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v13), xmmword_20150)), 0x7F007F007F007FLL));
      v15 = vuzp1_s8(v14, v14).u32[0];
    }

    v10 = a1 + 8;
    v9 = (a1 + 16);
LABEL_19:
    sub_2234(v10, *v9, &v15, v16, 4);
    goto LABEL_20;
  }

  if (v7 != 127)
  {
    return 4294956452;
  }

LABEL_20:
  v18 = -9;
  sub_2234(a1 + 8, *(a1 + 16), &v18, &v19, 1);
  return 0;
}

char *sub_2098(uint64_t a1)
{
  v2[0] = xmmword_20160;
  v2[1] = xmmword_20170;
  v2[2] = xmmword_20180;
  return sub_2234(a1 + 8, *(a1 + 16), v2, v3, 48);
}

uint64_t sub_211C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  result = 4294956452;
  if (a2 && a3)
  {
    v6 = *a2;
    __src[0] = v6 & 0x7F;
    __src[1] = (v6 >> 7) & 0x7F;
    sub_2234(a1 + 8, *(a1 + 16), __src, &v15, 2);
    if (v6)
    {
      v7 = a2 + 7;
      v8 = v6;
      do
      {
        sub_2234(a1 + 8, *(a1 + 16), v7 - 5, v7, 5);
        v7 += 5;
        --v8;
      }

      while (v8);
    }

    v9 = 5 * v6;
    v10 = *(a2 + (v9 + 2));
    v13[0] = v10 & 0x7F;
    v13[1] = (v10 >> 7) & 0x7F;
    sub_2234(a1 + 8, *(a1 + 16), v13, __src, 2);
    if (v10)
    {
      v11 = a2 + (v9 + 4);
      do
      {
        v12 = v11 + 5;
        sub_2234(a1 + 8, *(a1 + 16), v11, v11 + 5, 5);
        v11 = v12;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  return result;
}

char *sub_2234(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_1280();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_245C(uint64_t a1, uint64_t a2)
{
  *a1 = off_28600;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v3 = pthread_mutex_init((a1 + 24), 0);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "CAMutex.cpp";
      v9 = 1024;
      v10 = 56;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_28530;
    exception[2] = v5;
  }

  return a1;
}

uint64_t sub_2594(uint64_t a1)
{
  *a1 = off_28600;
  pthread_mutex_destroy((a1 + 24));
  return a1;
}

void sub_25E0(uint64_t a1)
{
  sub_2594(a1);

  operator delete();
}

BOOL sub_2618(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((a1 + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_28530;
      exception[2] = v6;
    }

    atomic_store(v2, (a1 + 16));
  }

  return v3 == 0;
}

void sub_2758(uint64_t a1)
{
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    atomic_store(0, (a1 + 16));
    v3 = pthread_mutex_unlock((a1 + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_28530;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

uint64_t sub_28E0(uint64_t a1, char *a2)
{
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((a1 + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_28530;
      exception[2] = v8;
    }

    atomic_store(v4, (a1 + 16));
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

uint64_t sub_2AC8(uint64_t a1)
{
  if (*(a1 + 20) == 1)
  {
    (*(**(a1 + 8) + 72))(*(a1 + 8));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  IOObjectRelease(*a1);
  if (*(a1 + 32))
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_2B48(uint64_t a1)
{
  v3 = a1 + 8;
  result = *(a1 + 8);
  if (!result)
  {
    theInterface = 0;
    theScore = 0;
    v4 = *a1;
    v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    if (!IOCreatePlugInInterfaceForService(v4, v5, v6, &theInterface, &theScore) || (usleep(0x186A0u), v7 = *a1, v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u), v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), !IOCreatePlugInInterfaceForService(v7, v8, v9, &theInterface, &theScore)))
    {
      v10 = theInterface;
      QueryInterface = (*theInterface)->QueryInterface;
      v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xFEu, 0x2Fu, 0xD5u, 0x2Fu, 0x3Bu, 0x5Au, 0x47u, 0x3Bu, 0x97u, 0x7Bu, 0xADu, 0x99u, 0, 0x1Eu, 0xB3u, 0xEDu);
      v13 = CFUUIDGetUUIDBytes(v12);
      v14 = (QueryInterface)(v10, *&v13.byte0, *&v13.byte8, v3);
      v15 = theInterface;
      v16 = *theInterface;
      if (v14)
      {
        v17 = v16->QueryInterface;
        v18 = CFUUIDGetConstantUUIDWithBytes(0, 0xC8u, 9u, 0xB8u, 0xD8u, 8u, 0x84u, 0x11u, 0xD7u, 0xBBu, 0x96u, 0, 3u, 0x93u, 0x3Eu, 0x3Eu, 0x3Eu);
        v19 = CFUUIDGetUUIDBytes(v18);
        v20 = (v17)(v15, *&v19.byte0, *&v19.byte8, v3);
        ((*theInterface)->Release)(theInterface);
        theInterface = 0;
        if (v20)
        {
          sub_2E80();
          v21 = qword_2C108;
          if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v25 = "USBDevice.cpp";
            v26 = 1024;
            v27 = 123;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d QueryInterface failed", buf, 0x12u);
          }

          *v3 = 0;
          return *v3;
        }
      }

      else
      {
        (v16->Release)(theInterface);
        theInterface = 0;
      }

      (*(**(a1 + 8) + 160))(*(a1 + 8), a1 + 16);
    }

    return *v3;
  }

  return result;
}

void sub_2E80()
{
  if ((atomic_load_explicit(&qword_2C110, memory_order_acquire) & 1) == 0)
  {
    sub_1D004();
  }
}

uint64_t sub_2EB0(uint64_t result)
{
  if ((*(result + 21) & 1) == 0)
  {
    v1 = result;
    *(result + 21) = 1;
    result = sub_2F9C(result, 3, 0, 0, v2, 256);
    if (result >= 3)
    {
      *(v1 + 24) = (v2[0] - 2 + (((v2[0] - 2) & 0x8000u) >> 15)) >> 1;
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_2F9C(uint64_t a1, int a2, __int16 a3, __int16 a4, _BYTE *a5, __int16 a6)
{
  v12 = sub_2B48(a1);
  if (v12)
  {
    v13 = v12;
    v24 = 1664;
    v14 = a3 | (a2 << 8);
    v25 = v14;
    v26 = a4;
    v28 = a5;
    if (a2 == 3)
    {
      v15 = 2;
    }

    else
    {
      v15 = a6;
    }

    v27 = v15;
    if (!(*(*v12 + 64))(*(a1 + 8)))
    {
      goto LABEL_12;
    }

    v16 = 0;
    do
    {
      usleep(0x1388u);
      v17 = (*(*v13 + 64))(*(a1 + 8));
      v18 = v17;
      if (v16 > 0x12)
      {
        break;
      }

      ++v16;
    }

    while (v17);
    if (!v17)
    {
LABEL_12:
      v20 = (*(*v13 + 208))(v13, &v24);
      if (a2 == 3)
      {
        if (v20)
        {
          v21 = v20 == -536870168;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          return 0xFFFFFFFFLL;
        }

        v22 = *a5;
        if (!*a5)
        {
          return 0;
        }

        v24 = 1664;
        v25 = v14;
        v26 = a4;
        v27 = v22;
        v28 = a5;
        v20 = (*(*v13 + 208))(v13, &v24);
      }

      if (!v20)
      {
        return v29;
      }

      return 0xFFFFFFFFLL;
    }

    sub_2E80();
    v19 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v31 = "USBDevice.cpp";
      v32 = 1024;
      v33 = 264;
      v34 = 1024;
      v35 = v18;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d USBDevice::LoadDescriptor - Could not open device due to error 0x%x", buf, 0x18u);
    }
  }

  return 0xFFFFFFFFLL;
}

CFStringRef sub_3188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  sub_2EB0(a1);
  v4 = sub_2F9C(a1, 3, v2, *(a1 + 22), v6, 256);
  if (v4 >= 3)
  {
    return CFStringCreateWithCharacters(0, v7, (v4 - 2) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3214(uint64_t a1, int a2, int a3, uint64_t a4, int a5, _DWORD *a6)
{
  sub_2E80();
  v12 = qword_2C108;
  if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v47 = "USBDevice.cpp";
    v48 = 1024;
    v49 = 309;
    v50 = 1024;
    *v51 = a2;
    *&v51[4] = 1024;
    *&v51[6] = a3;
    v52 = 2048;
    v53 = a4;
    v54 = 1024;
    v55 = a5;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBDevice::LoadGroupTerminalDescriptors(interface: %d, altSettingNumber: %d, buf:%p, len:%d)", buf, 0x2Eu);
  }

  *a6 = 0;
  v13 = sub_2B48(a1);
  if (v13)
  {
    v14 = v13;
    v15 = (*(*v13 + 64))(*(a1 + 8));
    if (!v15)
    {
      goto LABEL_13;
    }

    v16 = v15;
    sub_2E80();
    v17 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v47 = "USBDevice.cpp";
      v48 = 1024;
      v49 = 320;
      v50 = 1024;
      *v51 = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%25s:%-5d      USBDeviceOpen failed with error 0x%x. Will retrying ...", buf, 0x18u);
    }

    v18 = 0;
    do
    {
      usleep(0x1388u);
      v19 = (*(*v14 + 64))(*(a1 + 8));
      v20 = v19;
      if (v18 > 3)
      {
        break;
      }

      ++v18;
    }

    while (v19);
    if (v19)
    {
      sub_2E80();
      v21 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 326;
        v50 = 1024;
        *v51 = v20;
        v22 = "%25s:%-5d [-] USBDevice::LoadGroupTerminalDescriptors() - Could not open device due to error 0x%x";
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = 24;
LABEL_44:
        _os_log_impl(&dword_0, v23, v24, v22, buf, v25);
      }
    }

    else
    {
LABEL_13:
      v40 = 1665;
      v41 = a3 | 0x2600;
      v42 = a2;
      v44 = a4;
      v45 = 0;
      v43 = a5;
      v20 = (*(*v14 + 208))(v14, &v40);
      sub_2E80();
      v26 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 23;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] LogDeviceRequest()", buf, 0x12u);
      }

      sub_2E80();
      v27 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 24;
        v50 = 1024;
        *v51 = v40;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d      bmRequestType: 0x%00x", buf, 0x18u);
      }

      sub_2E80();
      v28 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 25;
        v50 = 1024;
        *v51 = HIBYTE(v40);
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d      bRequest:      0x%00x", buf, 0x18u);
      }

      sub_2E80();
      v29 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 26;
        v50 = 1024;
        *v51 = v41;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wValue:        0x%0000x", buf, 0x18u);
      }

      sub_2E80();
      v30 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 27;
        v50 = 1024;
        *v51 = v42;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wIndex:        0x%0000x", buf, 0x18u);
      }

      sub_2E80();
      v31 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 28;
        v50 = 1024;
        *v51 = v43;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wLength:       %u", buf, 0x18u);
      }

      sub_2E80();
      v32 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 29;
        v50 = 2048;
        *v51 = v44;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d      pData:         %p", buf, 0x1Cu);
      }

      sub_2E80();
      v33 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 30;
        v50 = 1024;
        *v51 = v45;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wLenDone:      %u", buf, 0x18u);
      }

      sub_2E80();
      v34 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 31;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] LogDeviceRequest()", buf, 0x12u);
      }

      if (v20 == -536854449)
      {
        sub_2E80();
        v35 = qword_2C108;
        if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v47 = "USBDevice.cpp";
          v48 = 1024;
          v49 = 342;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%25s:%-5d      Pipe stall on DeviceRequest(). Will retry once only.", buf, 0x12u);
        }

        v20 = (*(*v14 + 208))(v14, &v40);
      }

      if (v20)
      {
        sub_2E80();
        v36 = qword_2C108;
        if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v47 = "USBDevice.cpp";
          v48 = 1024;
          v49 = 346;
          v50 = 1024;
          *v51 = v20;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d      DeviceRequest() returned error 0x%x", buf, 0x18u);
        }
      }

      else
      {
        *a6 = v45;
      }

      sub_2E80();
      v38 = qword_2C108;
      if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 350;
        v50 = 1024;
        *v51 = v45;
        *&v51[4] = 1024;
        *&v51[6] = v20;
        v22 = "%25s:%-5d [-] USBDevice::LoadGroupTerminalDescriptors(outLength: %u) = %d";
        v23 = v38;
        v24 = OS_LOG_TYPE_INFO;
        v25 = 30;
        goto LABEL_44;
      }
    }
  }

  else
  {
    sub_2E80();
    v37 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "USBDevice.cpp";
      v48 = 1024;
      v49 = 313;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBDevice::LoadGroupTerminalDescriptors() - Could not get plugin interface!", buf, 0x12u);
    }

    return 4294956451;
  }

  return v20;
}

uint64_t sub_3A64(uint64_t a1)
{
  v3 = a1 + 16;
  result = *(a1 + 16);
  if (!result)
  {
    theInterface = 0;
    theScore = 0;
    v4 = *(a1 + 8);
    v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    if (!IOCreatePlugInInterfaceForService(v4, v5, v6, &theInterface, &theScore))
    {
      v7 = theInterface;
      QueryInterface = (*theInterface)->QueryInterface;
      v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x64u, 0xBAu, 0xBDu, 0xD2u, 0xFu, 0x6Bu, 0x4Bu, 0x4Fu, 0x8Eu, 0x3Eu, 0xDCu, 0x36u, 4u, 0x69u, 0x87u, 0xADu);
      v10 = CFUUIDGetUUIDBytes(v9);
      v11 = (QueryInterface)(v7, *&v10.byte0, *&v10.byte8, v3);
      v12 = theInterface;
      v13 = *theInterface;
      if (v11)
      {
        v14 = v13->QueryInterface;
        v15 = CFUUIDGetConstantUUIDWithBytes(0, 0x8Fu, 0xDBu, 0x84u, 0x55u, 0x74u, 0xA6u, 0x11u, 0xD6u, 0x97u, 0xB1u, 0, 0x30u, 0x65u, 0xD3u, 0x60u, 0x8Eu);
        v16 = CFUUIDGetUUIDBytes(v15);
        v17 = (v14)(v12, *&v16.byte0, *&v16.byte8, v3);
        ((*theInterface)->Release)(theInterface);
        theInterface = 0;
        if (v17)
        {
          sub_2E80();
          v18 = qword_2C108;
          if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v22 = "USBDevice.cpp";
            v23 = 1024;
            v24 = 513;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d QueryInterface failed", buf, 0x12u);
          }

          *v3 = 0;
        }
      }

      else
      {
        (v13->Release)(theInterface);
      }
    }

    return *v3;
  }

  return result;
}

uint64_t sub_3CF0(uint64_t a1)
{
  if (*(a1 + 25) == 1)
  {
    (*(**(a1 + 16) + 72))(*(a1 + 16));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  IOObjectRelease(*(a1 + 8));
  if (*(a1 + 24) == 1 && *a1)
  {
    sub_2AC8(*a1);
    operator delete();
  }

  return a1;
}

uint64_t sub_3D7C(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return 1;
  }

  v3 = sub_3A64(a1);
  if (!v3)
  {
    return 0;
  }

  if ((*(*v3 + 64))(v3))
  {
    sub_1D064();
    return v6;
  }

  else
  {
    v1 = 1;
    *(a1 + 25) = 1;
    sub_2E80();
    v4 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "USBDevice.cpp";
      v8 = 1024;
      v9 = 482;
      v10 = 2048;
      v11 = a1;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] USBInterface(%p)::Open() - success", &v6, 0x1Cu);
    }
  }

  return v1;
}

uint64_t sub_3EC4(uint64_t a1, io_object_t object)
{
  *a1 = object;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  IOObjectRetain(object);
  if (!sub_3F1C(a1))
  {
    usleep(0x186A0u);
    sub_3F1C(a1);
  }

  return a1;
}

uint64_t sub_3F1C(uint64_t a1)
{
  v3 = a1 + 8;
  result = *(a1 + 8);
  if (!result)
  {
    theScore = 0;
    v4 = (a1 + 16);
    v5 = *a1;
    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Eu, 0x72u, 0x21u, 0x7Eu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0xBFu, 0x57u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
    v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    if (!IOCreatePlugInInterfaceForService(v5, v6, v7, (a1 + 16), &theScore))
    {
      v8 = *v4;
      v9 = *(**v4 + 8);
      v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xEAu, 0x33u, 0xBAu, 0x4Fu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0x84u, 0xDBu, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
      v11 = CFUUIDGetUUIDBytes(v10);
      if (v9(v8, *&v11.byte0, *&v11.byte8, v3))
      {
        sub_2E80();
        v12 = qword_2C108;
        if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v15 = "USBDevice.cpp";
          v16 = 1024;
          v17 = 653;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d QueryInterface failed", buf, 0x12u);
        }

        *v3 = 0;
        (*(**v4 + 24))(*v4);
      }

      else
      {
        sub_44A8(a1);
      }
    }

    return *v3;
  }

  return result;
}

uint64_t sub_4130(uint64_t a1)
{
  sub_2E80();
  v2 = qword_2C108;
  if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "USBDevice.cpp";
    v8 = 1024;
    v9 = 557;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying USBIDAMInterface.", &v6, 0x12u);
  }

  sub_422C(a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    IODestroyPlugInInterface(v4);
  }

  IOObjectRelease(*a1);
  return a1;
}

void sub_4220(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1298(a1);
}

uint64_t sub_422C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    result = sub_3F1C(a1);
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = MIDIGetDriverIORunLoop();
    if (v4)
    {
      v5 = v4;
      if (!(*(*v3 + 56))(v3, v4, kCFRunLoopDefaultMode))
      {
        sub_2E80();
        v6 = qword_2C108;
        if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
        {
          v10 = 136315650;
          v11 = "USBDevice.cpp";
          v12 = 1024;
          v13 = 616;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unscheduled from runloop %p", &v10, 0x1Cu);
        }

        sub_2E80();
        v7 = qword_2C108;
        if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
        {
          v10 = 136315394;
          v11 = "USBDevice.cpp";
          v12 = 1024;
          v13 = 623;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Closing the interface ...", &v10, 0x12u);
        }

        if (!(*(*v3 + 40))(v3, 0))
        {
          *(a1 + 24) = 0;
          sub_2E80();
          v8 = qword_2C108;
          if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
          {
            v10 = 136315394;
            v11 = "USBDevice.cpp";
            v12 = 1024;
            v13 = 626;
            v9 = "%25s:%-5d Closed the interface.";
LABEL_14:
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, v9, &v10, 0x12u);
            return 1;
          }

          return 1;
        }
      }
    }

    else
    {
      sub_1D124(&v10);
    }

    sub_1D1D4();
    return v10;
  }

  sub_2E80();
  v8 = qword_2C108;
  if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "USBDevice.cpp";
    v12 = 1024;
    v13 = 605;
    v9 = "%25s:%-5d Already closed.";
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_44A8(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_2E80();
    v1 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "USBDevice.cpp";
      v16 = 1024;
      v17 = 571;
      v2 = "%25s:%-5d Already open.";
      v3 = v1;
      v4 = 18;
LABEL_15:
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, v2, &v14, v4);
      return 1;
    }

    return 1;
  }

  result = sub_3F1C();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = (*(*result + 32))(result, 0);
  if (v8)
  {
    if (v8 != -536870203)
    {
LABEL_18:
      sub_1D284();
      return v14;
    }

    sub_2E80();
    v9 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "USBDevice.cpp";
      v16 = 1024;
      v17 = 582;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d kIOReturnExclusiveAccess encountered but continuing.", &v14, 0x12u);
    }
  }

  *(a1 + 24) = 1;
  sub_2E80();
  v10 = qword_2C108;
  if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "USBDevice.cpp";
    v16 = 1024;
    v17 = 586;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Opened the interface.", &v14, 0x12u);
  }

  v11 = MIDIGetDriverIORunLoop();
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  if ((*(*v7 + 48))(v7, v11, kCFRunLoopDefaultMode))
  {
    goto LABEL_18;
  }

  sub_2E80();
  v13 = qword_2C108;
  if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "USBDevice.cpp";
    v16 = 1024;
    v17 = 592;
    v18 = 2048;
    v19 = v12;
    v2 = "%25s:%-5d Scheduled onto runloop %p";
    v3 = v13;
    v4 = 28;
    goto LABEL_15;
  }

  return 1;
}

BOOL sub_4744(uint64_t a1)
{
  v5 = 0;
  if (sub_3F1C(a1) && !(*(**(a1 + 8) + 288))(*(a1 + 8), &v5 + 4, &v5))
  {
    sub_2E80();
    v4 = qword_2C108;
    if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v7 = "USBDevice.cpp";
      v8 = 1024;
      v9 = 670;
      v10 = 1024;
      v11 = HIDWORD(v5);
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d USBIDAMInterface::Usable() - active: %d speed: %d", buf, 0x1Eu);
    }

    if (HIDWORD(v5))
    {
      return 1;
    }
  }

  sub_2E80();
  v2 = qword_2C108;
  result = os_log_type_enabled(qword_2C108, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136315394;
    v7 = "USBDevice.cpp";
    v8 = 1024;
    v9 = 674;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d USBIDAMInterface::Usable() - NOT active!", buf, 0x12u);
    return 0;
  }

  return result;
}

BOOL sub_48F0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

uint64_t sub_4908(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_49DC(void *a1)
{
  sub_4E84();
  v2 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
  {
    v26 = 136315394;
    v27 = "IDAMMIDIDevice.cpp";
    *v28 = 1024;
    *&v28[2] = 87;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [+] IDAMMIDIDevice::Initialize()", &v26, 0x12u);
  }

  v3 = a1[63];
  if (!v3)
  {
    sub_4E84();
    v23 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315394;
      v27 = "IDAMMIDIDevice.cpp";
      *v28 = 1024;
      *&v28[2] = 89;
      v24 = "%25s:%-5d [!] Could not open interface! Returning false.";
LABEL_27:
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, v24, &v26, 0x12u);
    }

    return 0;
  }

  v4 = sub_3F1C(v3);
  a1[64] = v4;
  if (!v4)
  {
    sub_4E84();
    v23 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315394;
      v27 = "IDAMMIDIDevice.cpp";
      *v28 = 1024;
      *&v28[2] = 95;
      v24 = "%25s:%-5d [!] Could not get the plugin interface! Returning false.";
      goto LABEL_27;
    }

    return 0;
  }

  (*(*a1 + 56))(a1);
  if ((*(*a1 + 112))(a1) && (*(*a1 + 104))(a1))
  {
    sub_4E84();
    v5 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
    {
      v26 = 136315394;
      v27 = "IDAMMIDIDevice.cpp";
      *v28 = 1024;
      *&v28[2] = 105;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d      Allocating read and write buffers...", &v26, 0x12u);
    }

    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v7;
      v9 = &a1[3 * v6 + 69];
      v10 = a1[64];
      v11 = *(a1 + 262);
      *v9 = a1;
      v12 = (*(*v10 + 208))(v10, v11, v9 + 8);
      v13 = v12 ? 0 : v11;
      *(v9 + 16) = v13;
      if (v12)
      {
        break;
      }

      v7 = 0;
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        v14 = a1[64];
        v15 = *(a1 + 270);
        a1[75] = a1;
        v16 = (*(*v14 + 208))(v14, v15, a1 + 76);
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = v15;
        }

        *(a1 + 154) = v17;
        if (v16)
        {
          break;
        }

        *(a1 + 624) = 0;
        sub_4E84();
        v18 = qword_2C118;
        v19 = 1;
        if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
        {
          v20 = a1[68];
          v21 = a1[66];
          v26 = 136315906;
          v27 = "IDAMMIDIDevice.cpp";
          *v28 = 1024;
          *&v28[2] = 114;
          v29 = 1024;
          v30 = v20;
          v31 = 1024;
          v32 = v21;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d      Starting IDAM MIDI: mIDAMOutPipe=%d, mIDAMInPipe=%d", &v26, 0x1Eu);
        }

        (*(*a1 + 24))(a1, 1);
        a1[60] = MIDITimerTaskCreate();
        sub_4EB4(a1, (a1 + 69));
        sub_4EB4(a1, (a1 + 72));
        v26 = 1;
        v27 = 0;
        *v28 = -135266302;
        (*(*a1 + 88))(a1, &v26, 0);
        sub_4E84();
        v22 = qword_2C118;
        if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
        {
          v26 = 136315394;
          v27 = "IDAMMIDIDevice.cpp";
          *v28 = 1024;
          *&v28[2] = 137;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d [-] IDAMMIDIDevice::Initialize() = true", &v26, 0x12u);
        }

        return v19;
      }
    }
  }

  sub_1D6DC(&v26);
  return v26;
}

void sub_4E84()
{
  if ((atomic_load_explicit(&qword_2C120, memory_order_acquire) & 1) == 0)
  {
    sub_1D79C();
  }
}

void sub_4EB4(uint64_t a1, uint64_t a2)
{
  *(a2 + 20) = 1;
  v4 = (*(**(a1 + 512) + 160))(*(a1 + 512), *(a1 + 528), *(a2 + 8), *(a1 + 524), sub_1D508, a2);
  if (v4 == -536854449 || v4 == -536870163)
  {
    v4 = (*(**(a1 + 512) + 160))(*(a1 + 512), *(a1 + 528), *(a2 + 8), *(a1 + 524), sub_1D508, a2);
  }

  v6 = v4;
  if (v4)
  {
    sub_4E84();
    v7 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "IDAMMIDIDevice.cpp";
      v10 = 1024;
      v11 = 282;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IDAMMIDIDevice::DoRead() failed with error 0x%x", &v8, 0x18u);
    }
  }
}

void *sub_5010(void *a1)
{
  *a1 = off_28670;
  sub_4E84();
  v2 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "IDAMMIDIDevice.cpp";
    v11 = 1024;
    v12 = 149;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Destroying IDAMMIDIDevice.", &v9, 0x12u);
  }

  *(a1 + 184) = 1;
  (*(*a1 + 24))(a1, 0);
  if (((*(*a1 + 112))(a1) & 1) != 0 || (*(*a1 + 104))(a1))
  {
    (*(*a1[10] + 160))(a1[10], a1);
  }

  if ((*(*a1 + 112))(a1))
  {
    (*(*a1[64] + 192))(a1[64], a1[68]);
    a1[68] = -1;
  }

  if ((*(*a1 + 104))(a1))
  {
    (*(*a1[64] + 192))(a1[64], a1[66]);
    a1[66] = -1;
  }

  v3 = 201;
  while (--v3 >= 2 && ((*(a1 + 572) & 1) != 0 || (*(a1 + 596) & 1) != 0 || *(a1 + 620) == 1))
  {
    usleep(0x2710u);
  }

  if (a1[60])
  {
    MIDITimerTaskDispose();
    a1[60] = 0;
  }

  sub_4E84();
  v4 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "IDAMMIDIDevice.cpp";
    v11 = 1024;
    v12 = 197;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d IDAM driver stopped MIDI.\n", &v9, 0x12u);
  }

  sub_4908((a1 + 75));
  for (i = 72; i != 66; i -= 3)
  {
    sub_4908(&a1[i]);
  }

  sub_10808(a1, v6, v7);
  return a1;
}

void sub_5310(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1298(a1);
  }

  _Unwind_Resume(a1);
}

void sub_5324(void *a1)
{
  sub_5010(a1);

  operator delete();
}

uint64_t sub_535C(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v11 = a1 + 344;
    result = (*(*(a1 + 344) + 16))();
    v12 = result;
    if (*a2 >= 1)
    {
      v7 = *(a2 + 4);
      v8 = *(a2 + 12);
      if (v8 > 0x40)
      {
        v9 = malloc_type_malloc(*(a2 + 12), 0x100004077774924uLL);
        memcpy(v9, (a2 + 14), v8);
      }

      else
      {
        memcpy(&__dst, (a2 + 14), *(a2 + 12));
      }

      v14 = a3;
      v15 = 0;
      operator new();
    }

    if ((*(a1 + 24 * *(a1 + 624) + 620) & 1) == 0 && !*(a1 + 488))
    {
      *(a1 + 488) = 1;
      v10 = *(a1 + 480);
      mach_absolute_time();
      result = MIDITimerTaskSetNextWakeTime();
    }

    if (v12)
    {
      return (*(*v11 + 24))(v11);
    }
  }

  return result;
}

void sub_55A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5A70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_55CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = mach_absolute_time();
  v7 = *(a1 + 80);
  v8 = *(a2 + 8);
  BytePtr = IOUSBDeviceDataGetBytePtr();
  v10 = *(*v7 + 168);

  return v10(v7, a1, v6, BytePtr, a3, 0, 0);
}

void sub_5668(uint64_t a1)
{
  if (*(a1 + 448))
  {
    v2 = a1 + 24 * *(a1 + 624);
    v3 = *(v2 + 608);
    if (!IOUSBDeviceDataGetBytePtr())
    {
      sub_4E84();
      v17 = qword_2C118;
      if (!os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v18 = 136315394;
      v19 = "IDAMMIDIDevice.cpp";
      v20 = 1024;
      v21 = 341;
      v14 = "%25s:%-5d Buffer pointer is invalid!";
      v15 = v17;
      v16 = 18;
      goto LABEL_15;
    }

    v4 = v2 + 600;
    v5 = *(a1 + 496);
    v6 = *(v4 + 8);
    BytePtr = IOUSBDeviceDataGetBytePtr();
    v8 = (*(*v5 + 208))(v5, a1, a1 + 432, BytePtr, 1);
    if (v8)
    {
      v9 = v8;
      *(v4 + 20) = 1;
      v10 = (*(**(a1 + 512) + 176))(*(a1 + 512), *(a1 + 544), *(v4 + 8), v8, sub_58A0, a1);
      if (v10 == -536854449 || v10 == -536870163)
      {
        v10 = (*(**(a1 + 512) + 176))(*(a1 + 512), *(a1 + 544), *(v4 + 8), v9, sub_58A0, a1);
      }

      v12 = v10;
      if (v10)
      {
        sub_4E84();
        v13 = qword_2C118;
        if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
        {
          v18 = 136315650;
          v19 = "IDAMMIDIDevice.cpp";
          v20 = 1024;
          v21 = 359;
          v22 = 1024;
          v23 = v12;
          v14 = "%25s:%-5d Failed with error 0x%x";
          v15 = v13;
          v16 = 24;
LABEL_15:
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v14, &v18, v16);
        }
      }
    }
  }
}

void sub_58A0(uint64_t a1, int a2)
{
  v4 = a1 + 344;
  v5 = (*(*(a1 + 344) + 16))(a1 + 344);
  v6 = *(a1 + 624);
  *(a1 + 24 * v6 + 620) = 0;
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 624) = v7;
  if (a2)
  {
    sub_4E84();
    v8 = qword_2C118;
    if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "IDAMMIDIDevice.cpp";
      v11 = 1024;
      v12 = 381;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d IDAMMIDIDevice::WriteCallback() - Error: 0x%x", buf, 0x18u);
    }
  }

  else if ((*(a1 + 184) & 1) == 0)
  {
    (*(*a1 + 72))(a1);
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

_BYTE *sub_5A70(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 24))();
  }

  return a1;
}

uint64_t sub_5ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_17260(a1, a3, a4);
  *v6 = off_28700;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 64) = a2;
  *(v6 + 88) = 0;
  sub_17B04(v6);
  return a1;
}

uint64_t sub_5B44(void *a1)
{
  *a1 = off_28700;
  sub_5BE8(a1);
  v2 = a1[9];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_44A4(v3);
    operator delete();
  }

  return sub_17898(a1);
}

void *sub_5BE8(void *result)
{
  v1 = result[9];
  if (v1)
  {
    v2 = result;
    MIDIObjectSetIntegerProperty(*(v1 + 8), kMIDIPropertyOffline, 1);
    result = v2[9];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v2[9] = 0;
  }

  return result;
}

void sub_5C60(void *a1)
{
  sub_5B44(a1);

  operator delete();
}

void sub_5C98(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == -469794543)
  {
    global_queue = dispatch_get_global_queue(2, 0);
    if (global_queue)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_5D64;
      block[3] = &unk_28730;
      block[4] = a4;
      dispatch_async(global_queue, block);
    }
  }

  else if (a2 == -469794544)
  {

    sub_17B04(a4);
  }
}

void sub_5D6C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    sub_44A4(v1);
    operator delete();
  }

  operator new();
}

CFStringRef sub_5EC0(uint64_t a1, const __CFString *a2)
{
  v4 = sub_2B48(a1);
  v5 = a2;
  if (v4)
  {
    v14 = 0;
    v6 = (*(*v4 + 272))(v4, &v14);
    if (v6)
    {
      v7 = v6;
      sub_60AC();
      v8 = qword_2C128;
      v5 = a2;
      if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "USBMIDIDriverBase.cpp";
        v17 = 1024;
        v18 = 79;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  USBGetManufacturerStringIndex() returned error 0x%x", buf, 0x18u);
        v5 = a2;
      }
    }

    else
    {
      v5 = sub_3188(a1, v14);
    }

    v9 = (*(*v4 + 280))(v4, &v14);
    if (v9)
    {
      v10 = v9;
      sub_60AC();
      v11 = qword_2C128;
      if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "USBMIDIDriverBase.cpp";
        v17 = 1024;
        v18 = 84;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  USBGetProductStringIndex() returned error 0x%x", buf, 0x18u);
      }
    }

    else
    {
      sub_3188(a1, v14);
    }
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return a2;
  }
}

void sub_60AC()
{
  if ((atomic_load_explicit(&qword_2C130, memory_order_acquire) & 1) == 0)
  {
    sub_1D9EC();
  }
}

double sub_60DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 448))(a1, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    if (*v3)
    {
      if (v5 >= 8)
      {
        operator new();
      }

      v11[23] = 3 * v5;
      bzero(v11, 3 * v5);
      v11[3 * v5] = 0;
      if (v11[23] >= 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = *v11;
      }

      v9 = v4;
      do
      {
        v10 = *v9++;
        *v8 = a0123456789abcd_0[v10 >> 4];
        v8[1] = a0123456789abcd_0[v10 & 0xF];
        v8[2] = 32;
        v8 += 3;
        --v5;
      }

      while (v5);
    }

    else
    {
      v11[23] = 0;
      v11[0] = 0;
    }

    *a2 = v4;
    result = *v11;
    *(a2 + 8) = *v11;
    *(a2 + 24) = *&v11[16];
  }

  else
  {
    sub_60AC();
    v6 = qword_2C128;
    if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "USBMIDIDriverBase.cpp";
      *&v11[12] = 1024;
      *&v11[14] = 99;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] findDescriptors() - no interface descriptor found", v11, 0x12u);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

__n128 sub_62A8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return result;
  }

  v6 = a2;
  if (!a2)
  {
    return result;
  }

  v7 = a1;
  sub_60AC();
  v8 = &unk_2C000;
  v9 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 108;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::ParseDescriptors()", buf, 0x12u);
  }

  v92 = 0;
  v91 = -1;
  v101 = 0;
  v88 = v7;
  do
  {
    v10 = *v6;
    if (*v6)
    {
      if (v10 >= 8)
      {
        operator new();
      }

      v98 = 3 * v10;
      bzero(&__p, 3 * v10);
      *(&__p + 3 * v10) = 0;
      p_p = __p;
      if (v98 >= 0)
      {
        p_p = &__p;
      }

      v12 = v6;
      do
      {
        v13 = *v12++;
        *p_p = a0123456789abcd_0[v13 >> 4];
        p_p[1] = a0123456789abcd_0[v13 & 0xF];
        p_p[2] = 32;
        p_p += 3;
        --v10;
      }

      while (v10);
    }

    else
    {
      v98 = 0;
      LOBYTE(__p) = 0;
    }

    v14 = v6[1];
    v15 = v6[2];
    sub_60AC();
    v16 = *(v8 + 37);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = &__p;
      if (v98 < 0)
      {
        v17 = __p;
      }

      *buf = 136315650;
      v103 = "USBMIDIDriverBase.cpp";
      v104 = 1024;
      v105 = 139;
      v106 = 2080;
      *&v107 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Now @: %s", buf, 0x1Cu);
    }

    LOBYTE(v18) = 0;
    if (v14 > 35)
    {
      if (v14 != 36)
      {
        if (v14 != 37)
        {
          goto LABEL_131;
        }

        if (v15 == 1 && (v91 & 0x80000000) == 0)
        {
          sub_60AC();
          v26 = *(v8 + 37);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v103 = "USBMIDIDriverBase.cpp";
            v104 = 1024;
            v105 = 197;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%25s:%-5d      USB MIDI 1.0 CS endpoint descriptor", buf, 0x12u);
          }

          v27 = v6[3];
          sub_60AC();
          v28 = *(v8 + 37);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 1);
            *buf = 136315906;
            v103 = "USBMIDIDriverBase.cpp";
            v104 = 1024;
            v105 = 200;
            v106 = 1024;
            LODWORD(v107) = v27;
            WORD2(v107) = 2048;
            *(&v107 + 6) = v29;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%25s:%-5d      %d embedded MIDI jack(s), searching %lu jack(s) for a match", buf, 0x22u);
          }

          if (v27)
          {
            v30 = 0;
            if (v91)
            {
              v31 = a4;
            }

            else
            {
              v31 = a5;
            }

            do
            {
              v33 = *a3;
              v32 = a3[1];
              if (*a3 != v32)
              {
                while (*(v33 + 2) != v6[v30 + 4])
                {
                  v33 += 6;
                  if (v33 == v32)
                  {
                    goto LABEL_49;
                  }
                }
              }

              if (v33 == v32 || v33 == 0)
              {
LABEL_49:
                sub_60AC();
                v35 = *(v8 + 37);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v103 = "USBMIDIDriverBase.cpp";
                  v104 = 1024;
                  v105 = 206;
                  v106 = 1024;
                  LODWORD(v107) = v92;
                  _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%25s:%-5d      Jack not found for endpoint 0x%x", buf, 0x18u);
                }
              }

              else
              {
                sub_60AC();
                v36 = *(v8 + 37);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                {
                  v38 = *(v33 + 2);
                  *buf = 136315906;
                  v103 = "USBMIDIDriverBase.cpp";
                  v104 = 1024;
                  v105 = 204;
                  v106 = 1024;
                  LODWORD(v107) = v38;
                  WORD2(v107) = 1024;
                  *(&v107 + 6) = v92;
                  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%25s:%-5d      Found jack %d for endpoint 0x%x", buf, 0x1Eu);
                }

                *(v33 + 5) = v92;
                sub_740C(v31, v33);
                v8 = &unk_2C000;
              }

              ++v30;
            }

            while (v30 != v27);
            LOBYTE(v18) = 0;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

LABEL_124:
          v7 = v88;
          goto LABEL_131;
        }

        sub_60AC();
        v49 = *(v8 + 37);
        if (v15 == 2)
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v103 = "USBMIDIDriverBase.cpp";
            v104 = 1024;
            v105 = 216;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "%25s:%-5d             (USB MIDI 2.0 CS endpoint descriptor)", buf, 0x12u);
          }

          v18 = v6[3];
          v50 = v92;
          if (v6[3])
          {
            v51 = 0;
            if (v91)
            {
              v52 = v92;
            }

            else
            {
              v52 = 0;
            }

            v90 = v52;
            if (v91)
            {
              v50 = 0;
            }

            v89 = v50;
            v53 = a6;
            do
            {
              v54 = v6[v51 + 4];
              for (i = *v53; i != v53[1]; i += 12)
              {
                if (*i == v54)
                {
                  sub_60AC();
                  v64 = qword_2C128;
                  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
                  {
                    v65 = *i;
                    *buf = 136315906;
                    v103 = "USBMIDIDriverBase.cpp";
                    v104 = 1024;
                    v105 = 233;
                    v106 = 1024;
                    LODWORD(v107) = v65;
                    WORD2(v107) = 1024;
                    *(&v107 + 6) = v92;
                    _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "%25s:%-5d      Reusing group terminal blockID %d for endpoint 0x%x", buf, 0x1Eu);
                  }

                  v53 = a6;
                  if (v91)
                  {
                    i[6] = v92;
                  }

                  else
                  {
                    i[7] = v92;
                  }

                  goto LABEL_108;
                }
              }

              sub_60AC();
              v56 = qword_2C128;
              if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
              {
                *buf = 136315906;
                v103 = "USBMIDIDriverBase.cpp";
                v104 = 1024;
                v105 = 226;
                v106 = 1024;
                LODWORD(v107) = v54;
                WORD2(v107) = 1024;
                *(&v107 + 6) = v92;
                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "%25s:%-5d      New group terminal blockID %d for endpoint 0x%x", buf, 0x1Eu);
              }

              v53 = a6;
              v57 = *(a6 + 8);
              v58 = *(a6 + 16);
              if (v57 >= v58)
              {
                v60 = 0xAAAAAAAAAAAAAAABLL * ((v57 - *a6) >> 2);
                v61 = v60 + 1;
                if (v60 + 1 > 0x1555555555555555)
                {
                  sub_1280();
                }

                v62 = 0xAAAAAAAAAAAAAAABLL * ((v58 - *a6) >> 2);
                if (2 * v62 > v61)
                {
                  v61 = 2 * v62;
                }

                if (v62 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v63 = 0x1555555555555555;
                }

                else
                {
                  v63 = v61;
                }

                if (v63)
                {
                  sub_B0C4(a6, v63);
                }

                v66 = 12 * v60;
                *v66 = v54;
                *(v66 + 1) = 0;
                *(v66 + 5) = 0;
                *(v66 + 6) = v90;
                *(v66 + 7) = v89;
                *(v66 + 8) = 0;
                v59 = 12 * v60 + 12;
                v67 = *(a6 + 8) - *a6;
                v68 = v66 - v67;
                memcpy((v66 - v67), *a6, v67);
                v69 = *a6;
                *a6 = v68;
                v53 = a6;
                *(a6 + 8) = v59;
                *(a6 + 16) = 0;
                if (v69)
                {
                  operator delete(v69);
                }
              }

              else
              {
                *v57 = v54;
                *(v57 + 1) = 0;
                *(v57 + 5) = 0;
                *(v57 + 6) = v90;
                *(v57 + 7) = v89;
                v59 = v57 + 12;
                *(v57 + 8) = 0;
              }

              v53[1] = v59;
LABEL_108:
              ++v51;
            }

            while (v51 != v18);
            LOBYTE(v18) = 0;
            v8 = &unk_2C000;
          }

          goto LABEL_124;
        }

        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 136315906;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 241;
        v106 = 1024;
        LODWORD(v107) = 37;
        WORD2(v107) = 1024;
        *(&v107 + 6) = v15;
        v22 = v49;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = "%25s:%-5d      Unrecognized type/subtype: 0x%x / 0x%x";
        v25 = 30;
        goto LABEL_27;
      }

      if (v15 == 3)
      {
        LOBYTE(v95) = 3;
        v72 = v6[6];
        *(&v95 + 1) = *(v6 + 3);
        HIBYTE(v95) = v72;
        v96 = v6[2 * v6[5] + 6];
        sub_740C(a3, &v95);
        sub_60AC();
        v73 = *(v8 + 37);
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        v74 = "external";
        if (BYTE1(v95) == 1)
        {
          v74 = "embedded";
        }

        v75 = v6[5];
        *buf = 136316418;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 184;
        v106 = 2080;
        *&v107 = v74;
        WORD4(v107) = 1024;
        *(&v107 + 10) = BYTE2(v95);
        HIWORD(v107) = 1024;
        *v108 = HIBYTE(v95);
        *&v108[4] = 1024;
        v109 = v75;
        v22 = v73;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Added %s MIDI output jack %d: source jack %d, %d input pin(s)";
        v25 = 46;
        goto LABEL_27;
      }

      if (v15 == 2)
      {
        LOBYTE(v95) = 2;
        *(&v95 + 1) = *(v6 + 3);
        HIBYTE(v95) = 0;
        v96 = v6[5];
        sub_740C(a3, &v95);
        sub_60AC();
        v70 = *(v8 + 37);
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        v71 = "external";
        if (BYTE1(v95) == 1)
        {
          v71 = "embedded";
        }

        *buf = 136315906;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 173;
        v106 = 2080;
        *&v107 = v71;
        WORD4(v107) = 1024;
        *(&v107 + 10) = BYTE2(v95);
        v22 = v70;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Added %s MIDI input jack %d";
LABEL_26:
        v25 = 34;
LABEL_27:
        _os_log_impl(&dword_0, v22, v23, v24, buf, v25);
        goto LABEL_130;
      }

      if (v15 != 1)
      {
        sub_60AC();
        v76 = *(v8 + 37);
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315650;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 186;
        v106 = 1024;
        LODWORD(v107) = v15;
        v22 = v76;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Skipping unrecognized CS interface subtype %d...";
        v25 = 24;
        goto LABEL_27;
      }

      sub_60AC();
      v42 = *(v8 + 37);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = &__p;
        if (v98 < 0)
        {
          v43 = __p;
        }

        *buf = 136315650;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 151;
        v106 = 2080;
        *&v107 = v43;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Found CS descriptor: %s", buf, 0x1Cu);
      }

      v44 = *(v6 + 3);
      sub_60AC();
      v45 = *(v8 + 37);
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
      if (v44 != 512)
      {
        if (v46)
        {
          *buf = 136315394;
          v103 = "USBMIDIDriverBase.cpp";
          v104 = 1024;
          v105 = 163;
          v22 = v45;
          v23 = OS_LOG_TYPE_INFO;
          v24 = "%25s:%-5d      Skipping CS interface descriptor";
          goto LABEL_129;
        }

LABEL_130:
        LOBYTE(v18) = 0;
        goto LABEL_131;
      }

      if (v46)
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 155;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "%25s:%-5d      Found a USB MIDI 2.0 alternate setting", buf, 0x12u);
      }

      v47 = (*(*v7 + 176))(v7, 1);
      sub_60AC();
      v48 = *(v8 + 37);
      if (!v47)
      {
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 160;
        v22 = v48;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Alternate interface now set for MIDI 2.0";
LABEL_129:
        v25 = 18;
        goto LABEL_27;
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 157;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unable to set MIDI 2.0 alt setting!", buf, 0x12u);
      }

      LOBYTE(v18) = 1;
    }

    else
    {
      if (v14 != 4)
      {
        if (v14 != 5)
        {
          goto LABEL_131;
        }

        v19 = v6[2];
        v91 = v19 >> 7;
        sub_60AC();
        v20 = *(v8 + 37);
        v92 = v19;
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315906;
        v21 = "output";
        if ((v19 & 0x80u) != 0)
        {
          v21 = "input";
        }

        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 192;
        v106 = 1024;
        LODWORD(v107) = v19;
        WORD2(v107) = 2080;
        *(&v107 + 6) = v21;
        v22 = v20;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Examining endpoint 0x%x (%s)";
        goto LABEL_26;
      }

      v39 = v6[3];
      sub_60AC();
      v40 = *(v8 + 37);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 143;
        v106 = 1024;
        LODWORD(v107) = v39;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d      Examining alt setting %d...", buf, 0x18u);
      }

      if (v39 < 2)
      {
        goto LABEL_130;
      }

      sub_60AC();
      v41 = *(v8 + 37);
      LOBYTE(v18) = 1;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 146;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d      Done examining descriptors; halting", buf, 0x12u);
      }
    }

LABEL_131:
    v77 = (*(*v7 + 448))(v7, v6, 0);
    if (!v77)
    {
      sub_60AC();
      v78 = *(v8 + 37);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 248;
        _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEBUG, "%25s:%-5d      FindNextAssociatedDescriptor() returned nullptr for kUSBAnyDesc", buf, 0x12u);
      }

      v77 = (*(*v7 + 448))(v7, v6, 4);
      if (!v77)
      {
        sub_60AC();
        v79 = *(v8 + 37);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v103 = "USBMIDIDriverBase.cpp";
          v104 = 1024;
          v105 = 252;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEBUG, "%25s:%-5d      FindNextAssociatedDescriptor() returned nullptr for kUSBInterfaceDesc; done", buf, 0x12u);
        }

        v77 = 0;
      }
    }

    if (v98 < 0)
    {
      operator delete(__p);
    }

    if (v77)
    {
      v80 = v18;
    }

    else
    {
      v80 = 1;
    }

    v6 = v77;
  }

  while ((v80 & 1) == 0);
  sub_60AC();
  v81 = *(v8 + 37);
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 118;
    _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Bailing out of loop...", buf, 0x12u);
  }

  LOBYTE(__p) = 0;
  LOBYTE(v95) = 0;
  v100 = 0;
  v99 = 0;
  (*(*v7 + 80))(v7, &__p);
  (*(*v7 + 88))(v7, &v95);
  (*(*v7 + 104))(v7, &v101 + 2);
  (*(*v7 + 112))(v7, &v101);
  (*(*v7 + 136))(v7, &v100 + 1);
  (*(*v7 + 144))(v7, &v100);
  (*(*v7 + 152))(v7, &v99);
  sub_60AC();
  v82 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 127;
    v106 = 1024;
    LODWORD(v107) = __p;
    WORD2(v107) = 1024;
    *(&v107 + 6) = v95;
    WORD5(v107) = 1024;
    HIDWORD(v107) = HIWORD(v101);
    *v108 = 1024;
    *&v108[2] = v101;
    _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "%25s:%-5d      Interface class %d, subclass %d, for device 0x%04x /0x%04x", buf, 0x2Au);
  }

  sub_60AC();
  v83 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 128;
    v106 = 1024;
    LODWORD(v107) = HIBYTE(v100);
    WORD2(v107) = 1024;
    *(&v107 + 6) = v100;
    WORD5(v107) = 1024;
    HIDWORD(v107) = v99;
    _os_log_impl(&dword_0, v83, OS_LOG_TYPE_INFO, "%25s:%-5d      Interface %d alternate setting %d : %d endpoints", buf, 0x24u);
  }

  sub_60AC();
  v84 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 255;
    _os_log_impl(&dword_0, v84, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::ParseDescriptors()", buf, 0x12u);
  }

  return result;
}

void sub_73D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_740C(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 1);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_1280();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1555555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_B070(a1, v11);
    }

    v12 = 6 * v8;
    v13 = *a2;
    *(v12 + 4) = *(a2 + 2);
    *v12 = v13;
    v7 = 6 * v8 + 6;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 4) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 6;
  }

  *(a1 + 8) = v7;
}

void sub_7514(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 **a3@<X2>, unint64_t *a4@<X8>)
{
  sub_60AC();
  v7 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
    *buf = 136316162;
    *&buf[4] = "USBMIDIDriverBase.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 260;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 1024;
    *&buf[30] = a2;
    *&buf[34] = 2048;
    *&buf[36] = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::CreatePortMapList(inUSBDevice:%p, interfaceNum:%d) - Constructing a USB MIDI 2.0 port map list for %lu group terminal block(s)", buf, 0x2Cu);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_60AC();
  v9 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *v88 = 136315394;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 265;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d      Issuing device request to load group terminal block descriptors...", v88, 0x12u);
  }

  v87 = 0;
  sub_3214(a1, a2, 1, buf, 5, &v87);
  if (v87 != 5)
  {
    sub_60AC();
    v11 = qword_2C128;
    if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
    {
      *v88 = 136316418;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 341;
      *&v88[18] = 1024;
      *&v88[20] = a2;
      *&v88[24] = 1024;
      *&v88[26] = 1;
      *&v88[30] = 1024;
      *&v88[32] = 5;
      *v89 = 1024;
      *&v89[2] = v87;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  FATAL: Could not retrieve Group Terminal Descriptors for USB MIDI interface %d alternate setting %d. Expected header length %u but got %u", v88, 0x2Au);
    }

    goto LABEL_103;
  }

  v10 = buf[0];
  if (buf[0])
  {
    if (buf[0] >= 8u)
    {
      operator new();
    }

    HIBYTE(v86) = 3 * buf[0];
    bzero(__p, 3 * buf[0]);
    *(__p + 3 * v10) = 0;
    if (v86 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = buf;
    do
    {
      v14 = *v13++;
      *v12 = a0123456789abcd_0[v14 >> 4];
      *(v12 + 1) = a0123456789abcd_0[v14 & 0xF];
      *(v12 + 2) = 32;
      v12 = (v12 + 3);
      --v10;
    }

    while (v10);
  }

  else
  {
    HIBYTE(v86) = 0;
    LOBYTE(__p[0]) = 0;
  }

  v15 = *&buf[3];
  v84 = 0;
  sub_60AC();
  v16 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    v17 = __p;
    if (v86 < 0)
    {
      v17 = __p[0];
    }

    *v88 = 136315906;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 276;
    *&v88[18] = 1024;
    *&v88[20] = v15;
    *&v88[24] = 2080;
    *&v88[26] = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d      Got group terminal block descriptor header (totalLength = %d): %s", v88, 0x22u);
  }

  sub_3214(a1, a2, 1, buf, v15, &v84);
  v18 = v84;
  v82 = a3;
  if (-991146299 * (v84 - v87) >= 0x13B13B14)
  {
    sub_60AC();
    v19 = qword_2C128;
    v20 = os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR);
    v18 = v84;
    if (v20)
    {
      *v88 = 136315650;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 279;
      *&v88[18] = 1024;
      *&v88[20] = v84;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unexpected group terminal descriptor length: %u", v88, 0x18u);
      v18 = v84;
    }
  }

  v21 = v18 - v87;
  v22 = (v18 - v87) / 0xD;
  if ((v18 - v87) % 0xD)
  {
    sub_60AC();
    v23 = qword_2C128;
    if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
    {
      *v88 = 136315650;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 283;
      *&v88[18] = 1024;
      *&v88[20] = v84;
      v24 = "%25s:%-5d      Unexpected total descriptor length: %u";
      v25 = v23;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 24;
LABEL_35:
      _os_log_impl(&dword_0, v25, v26, v24, v88, v27);
    }
  }

  else
  {
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v82[1] - *v82) >> 2);
    sub_60AC();
    v29 = qword_2C128;
    if (v28 == v22)
    {
      if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
      {
        *&v88[4] = "USBMIDIDriverBase.cpp";
        v30 = "s";
        *&v88[14] = 287;
        *v88 = 136316162;
        *&v88[12] = 1024;
        if (v21 - 13 < 0xD)
        {
          v30 = "";
        }

        *&v88[18] = 1024;
        *&v88[20] = v22;
        *&v88[24] = 2080;
        *&v88[26] = v30;
        *&v88[34] = 1024;
        *v89 = v84;
        v24 = "%25s:%-5d      Got %d group terminal block descriptor%s (receivedLength = %u). ";
        v25 = v29;
        v26 = OS_LOG_TYPE_INFO;
        v27 = 40;
        goto LABEL_35;
      }
    }

    else if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
    {
      v31 = -1431655765 * ((v82[1] - *v82) >> 2);
      *v88 = 136315906;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 285;
      *&v88[18] = 1024;
      *&v88[20] = v31;
      *&v88[24] = 1024;
      *&v88[26] = v22;
      v24 = "%25s:%-5d      Expected %d descriptors, not %d";
      v25 = v29;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 30;
      goto LABEL_35;
    }
  }

  v81 = v21 - 13;
  if (v21 >= 0xD)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = &buf[13 * v32 + v87];
      v35 = *v34;
      if (*v34)
      {
        if (v35 >= 8)
        {
          operator new();
        }

        v88[23] = 3 * v35;
        bzero(v88, 3 * v35);
        v88[3 * v35] = 0;
        v36 = v88;
        if (v88[23] < 0)
        {
          v36 = *v88;
        }

        do
        {
          v37 = *v34++;
          *v36 = a0123456789abcd_0[v37 >> 4];
          v36[1] = a0123456789abcd_0[v37 & 0xF];
          v36[2] = 32;
          v36 += 3;
          --v35;
        }

        while (v35);
      }

      else
      {
        v88[23] = 0;
        v88[0] = 0;
      }

      if (SHIBYTE(v86) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v88;
      v86 = *&v88[16];
      sub_60AC();
      v38 = qword_2C128;
      if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
      {
        v39 = __p;
        if (v86 < 0)
        {
          v39 = __p[0];
        }

        *v88 = 136315906;
        *&v88[4] = "USBMIDIDriverBase.cpp";
        *&v88[12] = 1024;
        *&v88[14] = 294;
        *&v88[18] = 1024;
        *&v88[20] = v32;
        *&v88[24] = 2080;
        *&v88[26] = v39;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "%25s:%-5d      %00d: %s ", v88, 0x22u);
      }

      v32 = ++v33;
    }

    while (v22 > v33);
  }

  sub_60AC();
  v40 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    v42 = "s";
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *v88 = 136315650;
    if (v81 < 0xD)
    {
      v42 = "";
    }

    *&v88[12] = 1024;
    *&v88[14] = 296;
    *&v88[18] = 2080;
    *&v88[20] = v42;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d      Parsing group terminal block descriptor%s ...", v88, 0x1Cu);
  }

  sub_829C(v82, &buf[5], v84, v41);
  v43 = v82[1];
  v44 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v43 - *v82) >> 2));
  if (v43 == *v82)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  sub_B11C(*v82, v43, v45, 1);
  v47 = *v82;
  v46 = v82[1];
  if (*v82 != v46)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      sub_60AC();
      v50 = qword_2C128;
      if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
      {
        v51 = *v47;
        v52 = v47[1];
        v53 = v47[2];
        v54 = v47[3];
        v55 = v47[6];
        v56 = v47[7];
        v57 = v47[4];
        *v88 = 136317186;
        *&v88[4] = "USBMIDIDriverBase.cpp";
        *&v88[12] = 1024;
        *&v88[14] = 306;
        *&v88[18] = 1024;
        *&v88[20] = v51;
        *&v88[24] = 1024;
        *&v88[26] = v52;
        *&v88[30] = 1024;
        *&v88[32] = v53;
        *v89 = 1024;
        *&v89[2] = v54;
        v90 = 1024;
        v91 = v55;
        v92 = 1024;
        v93 = v56;
        v94 = 1024;
        v95 = v57;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "%25s:%-5d      blockID 0x%x blockType 0x%x first gt %u (%u total) inEP 0x%x outEP 0x%x gtb.midiProtocol 0x%x", v88, 0x3Cu);
      }

      if (!v47[4])
      {
        v60 = v47[6];
        v61 = v47[7];
        sub_60AC();
        v62 = qword_2C128;
        if (!v60 || !v61)
        {
          if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
          {
            v77 = *v47;
            *v88 = 136315650;
            *&v88[4] = "USBMIDIDriverBase.cpp";
            *&v88[12] = 1024;
            *&v88[14] = 319;
            *&v88[18] = 1024;
            *&v88[20] = v77;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d      blockID 0x%x cannot use MIDI-CI without both a valid input and output endpoint. Skipping ...", v88, 0x18u);
          }

          goto LABEL_95;
        }

        if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
        {
          *v88 = 136315394;
          *&v88[4] = "USBMIDIDriverBase.cpp";
          *&v88[12] = 1024;
          *&v88[14] = 315;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "%25s:%-5d           (MIDI-CI protocol negotiation will occur before going online)", v88, 0x12u);
        }
      }

      v58 = v47[1];
      if ((v58 | 2) == 2)
      {
        v59 = v47[6];
      }

      else
      {
        v59 = 0;
      }

      if (v58 >= 2)
      {
        v63 = 0;
      }

      else
      {
        v63 = v47[7];
      }

      if (v59 || v63)
      {
        v64 = *a4;
        v65 = v47[2];
        while (v64 < a4[1] && *(v64 + 5) <= v65)
        {
          v64 += 8;
        }

        if (v47[4] < 5u)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        if (v47[4])
        {
          v67 = v66;
        }

        else
        {
          v67 = -1;
        }

        v68 = v47[3];
        v69 = *v47;
        v88[0] = v48;
        v88[1] = v49;
        v88[2] = v59;
        v88[3] = v63;
        v88[4] = v67;
        v88[5] = v65;
        v88[6] = v68;
        v88[7] = v69;
        sub_8314(a4, v64, v88);
        sub_60AC();
        v70 = qword_2C128;
        if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
        {
          v71 = *v47;
          v72 = v47[4];
          if (v72 < 5)
          {
            v73 = 1;
          }

          else
          {
            v73 = 2;
          }

          v74 = v72 == 0;
          v75 = v47[2];
          if (v74)
          {
            v73 = 255;
          }

          v76 = v47[3];
          *v88 = 136317186;
          *&v88[4] = "USBMIDIDriverBase.cpp";
          *&v88[12] = 1024;
          *&v88[14] = 332;
          *&v88[18] = 1024;
          *&v88[20] = v71;
          *&v88[24] = 1024;
          *&v88[26] = v49;
          *&v88[30] = 1024;
          *&v88[32] = v59;
          *v89 = 1024;
          *&v89[2] = v63;
          v90 = 1024;
          v91 = v73;
          v92 = 1024;
          v93 = v75;
          v94 = 1024;
          v95 = v76;
          _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "%25s:%-5d      blockID 0x%x cable 0x%x, inEP 0x%x, outEP 0x%x, usbpipeprotocol 0x%00x, firstGroupTerminal %d, numGroups %d -> maplist", v88, 0x3Cu);
        }

        ++v48;
        v49 += v47[3];
      }

LABEL_95:
      v47 += 12;
    }

    while (v47 != v46);
  }

  sub_60AC();
  v78 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    v79 = (a4[1] - *a4) >> 3;
    *v88 = 136315650;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 337;
    *&v88[18] = 2048;
    *&v88[20] = v79;
    _os_log_impl(&dword_0, v78, OS_LOG_TYPE_INFO, "%25s:%-5d      Maplist constructed with %lu group terminal block(s).", v88, 0x1Cu);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_103:
  sub_60AC();
  v80 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *v88 = 136315394;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 343;
    _os_log_impl(&dword_0, v80, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::CreatePortMapList()", v88, 0x12u);
  }
}

void sub_8254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = *a15;
  if (*a15)
  {
    *(a15 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 **sub_829C(unsigned __int8 **result, unint64_t a2, unsigned int a3, uint8x8_t a4)
{
  if (a3)
  {
    v4 = a2 + a3;
    v5 = *result;
    v6 = result[1];
    do
    {
      if (v5 != v6)
      {
        v7 = v5;
        while (*v7 != *(a2 + 3))
        {
          v7 += 12;
          if (v7 == v6)
          {
            goto LABEL_9;
          }
        }

        v7[1] = *(a2 + 4);
        a4.i32[0] = *(a2 + 5);
        v8 = vmovl_u8(a4).u64[0];
        v9 = vrev32_s16(v8);
        v9.i32[0] = v8.i32[0];
        a4 = vuzp1_s8(v9, v8);
        *(v7 + 2) = a4.i32[0];
        *(v7 + 4) = *(a2 + 9);
        *(v7 + 5) = *(a2 + 11);
      }

LABEL_9:
      a2 += 13;
    }

    while (a2 < v4);
  }

  return result;
}

double *sub_8314(void *a1, uint64_t a2, double *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = ((v6 - *a1) >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1280();
    }

    v10 = a2 - v8;
    v11 = v7 - v8;
    v12 = v11 >> 2;
    if (v11 >> 2 <= v9)
    {
      v12 = ((v6 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 3;
    v20 = a1;
    if (v13)
    {
      sub_CB08(a1, v13);
    }

    __p = 0;
    v17 = 8 * v14;
    v18 = 8 * v14;
    v19 = 0;
    sub_C8E8(&__p, a3);
    v4 = sub_CA4C(a1, &__p, v4);
    if (v18 != v17)
    {
      v18 += (v17 - v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    sub_C89C(a1, a2, v6, (a2 + 8));
    *v4 = *a3;
  }

  return v4;
}

void sub_8448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8480(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, double **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_60AC();
  v10 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 1);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 1);
    *v43 = 136316418;
    *&v43[4] = "USBMIDIDriverBase.cpp";
    v44 = 1024;
    v45 = 349;
    v46 = 2048;
    v47 = a1;
    v48 = 1024;
    v49 = a2;
    v50 = 2048;
    v51 = v11;
    v52 = 2048;
    v53 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::CreatePortMapList(inUSBDevice:%p, interfaceNum:%d) - Constructing a USB MIDI 1.0 port map list for %lu inputs and %lu outputs...", v43, 0x36u);
  }

  v14 = *a3;
  v13 = a3[1];
  if (v13 == *a3)
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a3) >> 1);
  }

  else
  {
    v15 = 0;
    v16 = a5[1];
    do
    {
      v17 = *(v14 + 6 * v15 + 5);
      v18 = *a5;
      if (*a5 == v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        do
        {
          v20 = (v17 & 0x80) != 0 && *(v18 + 2) == v17 || (v17 & 0x80u) == 0 && v17 == *(v18 + 3);
          v19 += v20;
          ++v18;
        }

        while (v18 != v16);
      }

      v43[0] = v15;
      v43[1] = v19;
      v43[2] = v17;
      *&v43[3] = 0;
      v43[7] = 0;
      if (v16 >= a5[2])
      {
        v16 = sub_CC3C(a5, v43);
        v14 = *a3;
        v13 = a3[1];
      }

      else
      {
        *v16 = v15;
        *(v16 + 1) = v19;
        *(v16 + 2) = v17;
        *(v16 + 3) = 0;
        *(v16++ + 7) = 0;
      }

      a5[1] = v16;
      ++v15;
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 1);
    }

    while (v22 > v15);
  }

  v24 = *a4;
  v23 = a4[1];
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a4) >> 1);
  if (v25 >= v22)
  {
    LODWORD(v26) = v22;
  }

  else
  {
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a4) >> 1);
  }

  if (v26 <= 0)
  {
    v28 = a5[1];
  }

  else
  {
    v27 = 0;
    v29 = *a5;
    v28 = a5[1];
    v30 = v26 & 0x7FFFFFFF;
    do
    {
      if (v27 == v25)
      {
        sub_CB94();
      }

      if (v29 != v28)
      {
        v31 = *(v24 + 6 * v27 + 5);
        v32 = v29;
        while (1)
        {
          v33 = *(v32 + 3);
          if ((v31 & 0x80) != 0 && *(v32 + 2) == v31)
          {
            break;
          }

          if ((v31 & 0x80) == 0 && v33 == v31)
          {
            v33 = *(v32 + 2);
            break;
          }

          if (++v32 == v28)
          {
            goto LABEL_45;
          }
        }

        v34 = v29;
        if (!v33)
        {
LABEL_45:
          if (v29 != v28)
          {
            v35 = v29;
            while (*(v35 + 3))
            {
              if (++v35 == v28)
              {
                goto LABEL_52;
              }
            }

            *(v35 + 3) = v31;
          }

          goto LABEL_52;
        }

        while (*(v34 + 2) != v33 || *(v34 + 3))
        {
          if (++v34 == v28)
          {
            goto LABEL_52;
          }
        }

        *(v34 + 3) = v31;
      }

LABEL_52:
      ++v27;
    }

    while (v27 != v30);
  }

  v36 = v28 - *a5;
  if (v25 > v36 >> 3)
  {
    v37 = v36 >> 3;
    v38 = v36 >> 3;
    v39 = *(v24 + 6 * v37 + 5);
    do
    {
      v40 = v39;
      v39 = *(v24 + 6 * v37 + 5);
      if (v40 == v39)
      {
        v41 = v38;
      }

      else
      {
        v41 = 0;
      }

      v43[0] = v37;
      *&v43[1] = v41;
      v43[3] = v39;
      *&v43[4] = 1;
      if (v28 >= a5[2])
      {
        v28 = sub_CC3C(a5, v43);
        v24 = *a4;
        v23 = a4[1];
      }

      else
      {
        *v28 = v37;
        *(v28 + 1) = v41;
        *(v28 + 2) = 0;
        *(v28 + 3) = v39;
        *(v28++ + 1) = 1;
      }

      LODWORD(v38) = v41 + 1;
      a5[1] = v28;
      v37 = v28 - *a5;
    }

    while (v37 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 1));
  }

  sub_60AC();
  v42 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *v43 = 136315394;
    *&v43[4] = "USBMIDIDriverBase.cpp";
    v44 = 1024;
    v45 = 398;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::CreatePortMapList()", v43, 0x12u);
  }
}

void sub_88C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_88E8(uint64_t a1, int a2, const __CFString *a3)
{
  v4 = sub_3188(a1, a2);
  if (!v4)
  {
    return v4;
  }

  Length = CFStringGetLength(a3);
  v6 = CFStringGetLength(v4);
  if (v6 < Length)
  {
    return v4;
  }

  v7 = Length;
  v11.location = 0;
  v11.length = Length;
  if (CFStringCompareWithOptions(v4, a3, v11, 1uLL))
  {
    return v4;
  }

  if (Length < v6)
  {
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v7);
      if (CharacterAtIndex != 95 && CharacterAtIndex != 32)
      {
        break;
      }

      if (v6 == ++v7)
      {
        Length = v6;
        goto LABEL_11;
      }
    }

    Length = v7;
  }

LABEL_11:
  v12.location = Length;
  v12.length = v6 - Length;
  v10 = CFStringCreateWithSubstring(0, v4, v12);
  CFRelease(v4);
  return v10;
}

BOOL sub_89D8(uint64_t a1, const __CFString *a2, MIDIDeviceRef a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, const __CFString *a8, char a9)
{
  newEntity = 0;
  v13 = a4[1];
  v49 = *a4;
  sub_60AC();
  v14 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v60 = "USBMIDIDriverBase.cpp";
    *&v60[8] = 1024;
    *&v60[10] = 559;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d [+] configureDeviceUsingPortMap(using JackLists)", buf, 0x12u);
  }

  sub_60AC();
  v15 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v60 = "USBMIDIDriverBase.cpp";
    *&v60[8] = 1024;
    *&v60[10] = 560;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d      Constructing USB MIDI 1.0 entities...", buf, 0x12u);
  }

  v48 = v13;
  if (v13 != v49)
  {
    v16 = 0;
    if (((v48 - v49) >> 3) <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v48 - v49) >> 3;
    }

    v51 = v17;
    v52 = a8;
    do
    {
      v56 = &off_28878;
      cf = 0;
      if (v16 >= (a4[1] - *a4) >> 3)
      {
        sub_CB94();
      }

      v18 = *a4 + 8 * v16;
      v19 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (*(v18 + 2))
      {
        v21 = sub_88E8(a1, *(*a6 + 6 * v16 + 4), a8);
        v22 = *a6 + 6 * v16;
        v23 = *a5;
        v24 = a5[1];
        if (*a5 != v24)
        {
          while (*(v23 + 2) != *(v22 + 3))
          {
            v23 += 6;
            if (v23 == v24)
            {
              goto LABEL_22;
            }
          }
        }

        if (v23 != v24)
        {
          if (v23)
          {
            v25 = *(v23 + 1);
            *(v22 + 1) = v25;
            if (v25 == 1)
            {
              sub_60AC();
              v26 = qword_2C128;
              if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
              {
                v27 = *(*a6 + 6 * v16 + 2);
                *buf = 136315650;
                *v60 = "USBMIDIDriverBase.cpp";
                *&v60[8] = 1024;
                *&v60[10] = 576;
                v61 = 1024;
                LODWORD(v62) = v27;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%25s:%-5d      Found an embedded input at jack ID %d.", buf, 0x18u);
              }
            }
          }
        }
      }

      else
      {
        v21 = 0;
      }

LABEL_22:
      if (v20)
      {
        v28 = sub_88E8(a1, *(*a7 + 6 * v16 + 4), a8);
        v29 = *a7 + 6 * v16;
        v30 = *a5;
        v31 = a5[1];
        if (*a5 != v31)
        {
          while (*(v30 + 3) != *(v29 + 2))
          {
            v30 += 6;
            if (v30 == v31)
            {
              goto LABEL_32;
            }
          }
        }

        if (v30 != v31)
        {
          if (v30)
          {
            v32 = *(v30 + 1);
            *(v29 + 1) = v32;
            if (v32 == 1)
            {
              sub_60AC();
              v33 = qword_2C128;
              if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
              {
                v34 = *(*a7 + 6 * v16 + 2);
                *buf = 136315650;
                *v60 = "USBMIDIDriverBase.cpp";
                *&v60[8] = 1024;
                *&v60[10] = 586;
                v61 = 1024;
                LODWORD(v62) = v34;
                _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%25s:%-5d      Found an embedded output at jack ID %d.", buf, 0x18u);
              }
            }
          }
        }

LABEL_32:
        if (v21 && v28 && CFEqual(v21, v28))
        {
          CFRetain(v21);
          v35 = cf;
          cf = v21;
          if (v35)
          {
            CFRelease(v35);
          }

          CFRelease(v21);
          CFRelease(v28);
          v28 = 0;
          v21 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        v28 = 0;
      }

      if (((v48 - v49) >> 3) >= 2)
      {
        v36 = sub_D84C(buf, a2, (v16 + 1));
        v37 = cf;
        cf = *&v60[4];
        *&v60[4] = v37;
        sub_CD30(v36);
      }

LABEL_41:
      if (!cf)
      {
        if (a8)
        {
          CFRetain(a8);
          v41 = cf;
          cf = a8;
          if (v41)
          {
            CFRelease(v41);
          }
        }

        else
        {
          cf = 0;
        }
      }

      if (a9)
      {
        if (v19 && v20 && (v38 = *(*a6 + 6 * v16 + 1), v38 == *(*a7 + 6 * v16 + 1)))
        {
          if (v38 == 1)
          {
            sub_60AC();
            v39 = qword_2C128;
            v40 = 1;
            if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *v60 = "USBMIDIDriverBase.cpp";
              *&v60[8] = 1024;
              *&v60[10] = 611;
              _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "%25s:%-5d      Creating an embedded entity.", buf, 0x12u);
            }

            goto LABEL_57;
          }
        }

        else if ((v19 != 0) != (v20 != 0))
        {
          v42 = a7;
          if (v19)
          {
            v42 = a6;
          }

          v40 = *(*v42 + 6 * v16 + 1) == 1;
          goto LABEL_57;
        }
      }

      v40 = 0;
LABEL_57:
      MIDIDeviceAddEntity(a3, cf, v40, v19 != 0, v20 != 0, &newEntity);
      if (v21)
      {
        Source = MIDIEntityGetSource(newEntity, 0);
        MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v21);
      }

      if (v28)
      {
        Destination = MIDIEntityGetDestination(newEntity, 0);
        MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v28);
      }

      if (v16 >= (a4[1] - *a4) >> 3 || (MIDIObjectSetIntegerProperty(newEntity, @"In Endpoint", *(*a4 + 8 * v16 + 2)), v16 >= (a4[1] - *a4) >> 3) || (MIDIObjectSetIntegerProperty(newEntity, @"Out Endpoint", *(*a4 + 8 * v16 + 3)), v16 >= (a4[1] - *a4) >> 3))
      {
        sub_CB94();
      }

      MIDIObjectSetIntegerProperty(newEntity, @"Cable", *(*a4 + 8 * v16 + 1));
      if (v21)
      {
        CFRelease(v21);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      MIDIObjectSetIntegerProperty(a3, @"UMP Enabled", 0);
      sub_CD30(&v56);
      ++v16;
      a8 = v52;
    }

    while (v16 != v51);
  }

  sub_60AC();
  v45 = qword_2C128;
  if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    v46 = "false";
    *buf = 136315650;
    *v60 = "USBMIDIDriverBase.cpp";
    if (v48 != v49)
    {
      v46 = "true";
    }

    *&v60[8] = 1024;
    *&v60[10] = 637;
    v61 = 2080;
    v62 = v46;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "%25s:%-5d [+] configureDeviceUsingPortMap(using JackLists) = %s", buf, 0x1Cu);
  }

  return v48 != v49;
}

void sub_9150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_9258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D7CC(va);
  sub_184B4(v2);
  _Unwind_Resume(a1);
}

void sub_9274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_880();
  sub_D460(v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_9370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1200(va);
  sub_D7CC(v6 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_93E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294956462;
  }

  (*(*a3 + 88))(a3, a2, a4);
  return 0;
}

uint64_t sub_9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294956462;
  }

  (*(*a3 + 96))(a3, a2, a4);
  return 0;
}

void sub_9488(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0u;
  *(a3 + 72) = 0u;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  v7 = sub_2B48(a1);
  v8 = sub_3A64(a2);
  if (!v7)
  {
    return;
  }

  v9 = v8;
  if (!v8 || (sub_3D7C(a2) & 1) == 0)
  {
    return;
  }

  v10 = (*(*v9 + 136))(v9, a3 + 16);
  sub_60AC();
  v11 = qword_2C128;
  if (v10)
  {
    if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315650;
      *&v16[4] = "USBMIDIDriverBase.cpp";
      *&v16[12] = 1024;
      *&v16[14] = 714;
      v17 = 1024;
      v18 = v10;
      v12 = "%25s:%-5d [!] USBMIDIClassDriver::ProbeDevice() - GetInterfaceNumber() returned error 0x%x";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_0, v13, v14, v12, v16, 0x18u);
    }
  }

  else if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_INFO))
  {
    v15 = *v6;
    *v16 = 136315650;
    *&v16[4] = "USBMIDIDriverBase.cpp";
    *&v16[12] = 1024;
    *&v16[14] = 716;
    v17 = 1024;
    v18 = v15;
    v12 = "%25s:%-5d [*] USBMIDIClassDriver::ProbeDevice() - inUSBInterface has interface number %d";
    v13 = v11;
    v14 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  sub_60DC(v9, v16);
  if (*v16)
  {
    sub_62A8(v9, *v16, (a3 + 24), a3 + 48, a3 + 72, a3 + 96);
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  if (v19 < 0)
  {
    operator delete(*&v16[8]);
  }
}

void sub_9688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_CDF4(v15);
  _Unwind_Resume(a1);
}

BOOL sub_96BC(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, MIDIDeviceRef a6, uint64_t *a7, uint64_t *a8, void *a9, void *a10)
{
  sub_2B48(a1);
  v16 = sub_3A64(a2);
  v17 = sub_5EC0(a1, a4);
  v19 = v18;
  v24 = 0;
  (*(*v16 + 104))(v16, &v24);
  v20 = sub_89D8(a1, a3, a6, a7, a8, a9, a10, v19, v24 == 1452);
  if (a4 && v17 && CFStringCompare(v17, a4, 0))
  {
    CFRelease(v17);
  }

  if (a5 && v19 && CFStringCompare(v19, a5, 0))
  {
    CFRelease(v19);
  }

  return v20;
}

void sub_97E0(int a1@<W0>, uint64_t a2@<X1>, double **a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (a1)
  {
    sub_8480(v5, v6, (a2 + 48), (a2 + 72), a3);
  }

  else
  {
    sub_7514(v5, v6, (a2 + 96), a3);
  }
}

void sub_9808(uint64_t a1, MIDITimeStamp a2, const UInt32 *a3, int64_t a4, uint64_t a5, MIDIProtocolID a6)
{
  v7 = a3;
  if (a6)
  {
    if (*(a1 + 187) == 1)
    {

      sub_A178(a1, a2, a3, a4, 0, a6);
    }

    else
    {
      sub_60AC();
      v63 = qword_2C128;
      if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_ERROR))
      {
        *evtlist = 136315394;
        *&evtlist[4] = "USBMIDIDriverBase.cpp";
        *&evtlist[12] = 1024;
        *&evtlist[14] = 766;
        _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDriverBase::USBMIDIHandleInput() - protocols newer than USB MIDI 1.0 need USB MIDI 2.0 driver support, which is disabled", evtlist, 0x12u);
      }
    }

    return;
  }

  v98 = 0u;
  v99 = 0u;
  v10 = a3 + a4;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  memset(evtlist, 0, sizeof(evtlist));
  if (*(a1 + 187) != 1 || *(a1 + 490) != 1)
  {
    v64 = MIDIPacketListInit(evtlist);
    if (a4 < 1)
    {
      return;
    }

    v65 = v64;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    while (1)
    {
      v69 = *v7;
      v70 = v69 & 0xF;
      if (v70 >= 2)
      {
        break;
      }

LABEL_158:
      v74 = v66;
LABEL_159:
      ++v7;
      v66 = v74;
      if (v7 >= v10)
      {
        if (*evtlist && (v67 & 1) != 0)
        {
          MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
        }

        return;
      }
    }

    v71 = *(a1 + 12);
    if (v71 <= (v69 >> 4))
    {
      v72 = v71 - 1;
    }

    else
    {
      v72 = v69 >> 4;
    }

    if ((v67 & 1) != 0 && v72 != v68)
    {
      MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
      v65 = MIDIPacketListInit(evtlist);
      v66 = 0;
    }

    if ((v72 & 0x80000000) == 0 && (*(a1 + 24) - *(a1 + 16)) >> 2 > v72)
    {
      v68 = v72;
      v67 = 1;
    }

    if (v70 > 7)
    {
      v73 = 1;
      if (((1 << v70) & 0x4F00) != 0)
      {
LABEL_139:
        v73 = 3;
LABEL_156:
        v76 = MIDIPacketListAdd(evtlist, 0x200uLL, v65, a2, v73, v7 + 1);
        if (!v76)
        {
          do
          {
            if (v67)
            {
              MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
            }

            v77 = MIDIPacketListInit(evtlist);
            v78 = MIDIPacketListAdd(evtlist, 0x200uLL, v77, a2, v73, v7 + 1);
          }

          while (!v78);
          v65 = v78;
          v74 = 0;
          goto LABEL_159;
        }

        v65 = v76;
        goto LABEL_158;
      }

      if (((1 << v70) & 0x3000) == 0)
      {
        goto LABEL_156;
      }

LABEL_152:
      v73 = 2;
      goto LABEL_156;
    }

    v73 = v70 - 4;
    if (v70 > 4)
    {
      if ((v70 - 6) >= 2 && *(v7 + 1) != 247)
      {
        v73 = 1;
        goto LABEL_156;
      }

      v74 = 0;
      if ((v66 & 1) == 0)
      {
        v66 = 0;
        goto LABEL_156;
      }
    }

    else
    {
      if (v70 == 2)
      {
        goto LABEL_152;
      }

      if (v70 == 3)
      {
        goto LABEL_139;
      }

      v74 = 1;
      if ((v66 & 1) == 0)
      {
        v66 = 1;
        goto LABEL_139;
      }

      v73 = 3;
    }

    v75 = &v65->data[v65->length];
    if (&v75[v73] <= &v100)
    {
      memcpy(v75, v7 + 1, v73);
      v65->length += v73;
      goto LABEL_159;
    }

    if (v67)
    {
      MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
    }

    v65 = MIDIPacketListInit(evtlist);
    v66 = 0;
    goto LABEL_156;
  }

  if (a4 < 1)
  {
    MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
    return;
  }

  v11 = a4 >> 2;
  v12 = a3;
  do
  {
    *v12 = bswap32(*v12);
    ++v12;
  }

  while (v12 < v10);
  MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
  if (v11 && a4 >= 1)
  {
    v13 = 0;
    while (1)
    {
      if (!v7)
      {
        return;
      }

      v79 = v11;
      v14 = *(a1 + 40);
      v15 = MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
      v16 = v7;
      if (v15)
      {
        break;
      }

LABEL_116:
      v61 = (v16 - v7) >> 2;
      if (v61)
      {
        LODWORD(v11) = v79 - v61;
        v62 = *(a1 + 12);
        v13 = (*v7 >> 28) >= v62 ? v62 - 1 : *v7 >> 28;
        MIDIReceivedEventList(*(*(a1 + 16) + 4 * v13), evtlist);
        if (v11)
        {
          v7 = (v7 + ((v16 - v7) & 0x3FFFFFFFCLL));
          if (v7 < v10)
          {
            continue;
          }
        }
      }

      return;
    }

    v17 = v15;
    v18 = (v14 + 6 * v13);
    v19 = *v7 >> 28;
    v80 = ((HIBYTE(*v7) >> 4) << 24) | 0x30000000;
    v16 = v7;
    while (1)
    {
      v20 = *v16;
      if (v19 != v20 >> 28 || &v99 + 4 - (v17 + 4 * v17->wordCount) < 5)
      {
        goto LABEL_116;
      }

      v22 = BYTE3(v20) & 0xF;
      if (v22 >= 2)
      {
        LOBYTE(v23) = BYTE2(*v16);
        if (v22 - 6 < 2)
        {
          v24 = qword_20210[(v20 >> 24) & 0xF];
          if (BYTE2(v20) == 240)
          {
            v25 = v20 & 0x7F00;
            if (v24 == 2)
            {
              v25 = 0;
            }

            v26 = v25 & 0xFFFFFFFFFF00FFFFLL | ((v24 - 2) << 16) | v80;
            goto LABEL_75;
          }

LABEL_32:
          v27 = v24 - 1;
          v28 = *(v18 + 2);
          if (*(v18 + 2) && !*v18)
          {
            v84 = 0;
            v83 = 0;
            v29 = v27 + v28;
            if (v29)
            {
              v30 = 0;
              v31 = 0;
              v32 = v20 >> 8;
              do
              {
                if (v28 <= v31)
                {
                  if (v29 - v30 == 2)
                  {
                    v33 = v23;
                  }

                  else
                  {
                    v33 = v32;
                  }
                }

                else
                {
                  v33 = v18[v30];
                }

                *(&v83 + v30) = v33;
                v30 = ++v31;
              }

              while (v29 > v31);
              v34 = BYTE1(v83) & 0x7F;
              v35 = (v83 & 0x7F) << 8;
              v36 = (BYTE2(v83) & 0x7F) << 56;
              v37 = (HIBYTE(v83) & 0x7F) << 48;
              v38 = (v84 & 0x7F) << 40;
            }

            else
            {
              v35 = 0;
              v38 = 0;
              v37 = 0;
              v36 = 0;
              v34 = 0;
            }

            v51 = (v29 << 16) & 0xCF0000;
            if (v29 <= 1)
            {
              v34 = 0;
            }

            if (v29 <= 2)
            {
              v36 = 0;
            }

            if (v29 <= 3)
            {
              v37 = 0;
            }

            if (v29 <= 4)
            {
              v52 = 0;
            }

            else
            {
              v52 = v38;
            }

            v53 = v51 | (v19 << 24) | 0x30300000u | v35 | v52 | v37 | v36 | v34;
            goto LABEL_91;
          }

          if (v27)
          {
            if (v27 == 1)
            {
LABEL_77:
              v50 = 3145728;
            }

            else
            {
              v23 = WORD1(v20);
              v50 = (v20 >> 8) & 0x7F | 0x300000;
            }

            v53 = v50 | v80 | (v27 << 16) & 0xCF0000 | ((v23 & 0x7F) << 8);
LABEL_91:
            *words = v53;
            bzero(v18, 4uLL);
            *(v18 + 2) = 0;
            goto LABEL_92;
          }

          LOBYTE(v23) = 0;
          goto LABEL_77;
        }

        if (v22 == 5)
        {
          if (BYTE2(v20) == 240 || BYTE2(v20) == 247)
          {
            if (BYTE2(v20) == 247)
            {
              v24 = qword_20210[(v20 >> 24) & 0xF];
              goto LABEL_32;
            }

LABEL_44:
            if (qword_20210[(v20 >> 24) & 0xF] == 1)
            {
              LOBYTE(v39) = 0;
LABEL_72:
              v49 = 0x100000;
            }

            else
            {
              if (qword_20210[(v20 >> 24) & 0xF] == 2)
              {
                v39 = v20 >> 8;
                goto LABEL_72;
              }

              v39 = v20 >> 8;
              v49 = v20 & 0x7F | 0x100000;
            }

            v26 = v49 | v80 | ((qword_20210[(v20 >> 24) & 0xF] - 1) << 16) & 0xEF0000 | ((v39 & 0x7F) << 8);
LABEL_75:
            *words = v26;
LABEL_92:
            v54 = MIDIEventListAdd(evtlist, 0x200uLL, v17, a2, 2uLL, words);
            if (!v54)
            {
              goto LABEL_116;
            }

            v17 = v54;
            bzero(v18, 4uLL);
            *(v18 + 2) = 0;
            goto LABEL_94;
          }
        }

        else if (BYTE2(v20) == 240)
        {
          goto LABEL_44;
        }

        if ((~v20 & 0xF000000) != 0 || (~v20 & 0xF80000) == 0 && (v20 & 0xFB0000) != 0xF90000)
        {
          v40 = (BYTE2(v20) + 15) < 8u && ((0xA7u >> (BYTE2(v20) + 15)) & 1) != 0 || BYTE2(v20) > 0xF9u && BYTE2(v20) != 253;
          v42 = 0;
          v43 = 1 << v22;
          if ((v43 & 0x7F00) != 0 || (v43 & 0xC) != 0)
          {
LABEL_66:
            v42 = (*v16 & 0x7F) << 24;
          }

          else if ((v43 & 0x8020) != 0)
          {
            if (v40)
            {
              goto LABEL_66;
            }

            v42 = 0;
          }

          v44 = v42;
          goto LABEL_68;
        }

        v55 = *(v18 + 2);
        *(v18 + 2) = v55 + 1;
        v18[v55] = v23;
        if (sub_CED0(v18))
        {
          v56 = sub_CE58(v18);
          if (v56)
          {
            if (v56 == 4)
            {
              *words = (*v16 >> 4) & 0xF000000 | ((*v18 & 0x7F) << 8) | v18[1] & 0x7F | 0x30220000;
              v46 = v17;
              v47 = a2;
              v45 = 2;
            }

            else
            {
              v57 = *v18;
              v58 = (v57 + 15) < 8u && ((0xA7u >> (v57 + 15)) & 1) != 0 || v57 > 0xF9 && v57 != 253;
              v44 = 0;
              v60 = 1 << (v56 & 0xF);
              if ((v60 & 0x7F00) != 0 || (v60 & 0xC) != 0)
              {
                goto LABEL_114;
              }

              if ((v60 & 0x8020) == 0)
              {
                goto LABEL_68;
              }

              if (v58)
              {
LABEL_114:
                v44 = (v18[2] & 0x7F) << 24;
              }

              else
              {
                v44 = 0;
              }

LABEL_68:
              *words = v44;
              v82 = 0;
              v45 = byte_20290[v44 >> 28];
              v46 = v17;
              v47 = a2;
            }

            v48 = MIDIEventListAdd(evtlist, 0x200uLL, v46, v47, v45, words);
            if (!v48)
            {
              goto LABEL_116;
            }

            v17 = v48;
          }
        }
      }

LABEL_94:
      v16 += 4;
      if (v16 >= v10)
      {
        goto LABEL_116;
      }
    }
  }
}

uint64_t sub_A178(uint64_t result, MIDITimeStamp a2, const UInt32 *a3, unint64_t a4, int a5, MIDIProtocolID a6)
{
  if (a6 <= kMIDIProtocol_2_0)
  {
    v21[10] = v6;
    v21[11] = v7;
    v8 = a4 >> 2;
    memset(v20, 0, sizeof(v20));
    if ((a4 >> 2))
    {
      v10 = a3;
      v12 = result;
      v13 = (a3 + a4);
      while (1)
      {
        if (!v10)
        {
          return result;
        }

        if (v13 <= v10)
        {
          return result;
        }

        result = sub_CF4C(a6, a2, v10, v13 - v10, v20, v21);
        if (!result)
        {
          return result;
        }

        v14 = result;
        v15 = *v10 >> 28;
        v16 = HIBYTE(*v10) & 0xF;
        if (v15 == 15)
        {
          v16 = 255;
        }

        v17 = v15 ? v16 : 255;
        v18 = *(v12 + 12) - *(v12 + 189);
        v19 = v18 <= v17 ? v18 - 1 : v17;
        if (v17 != 255 && v19 != 255)
        {
          break;
        }

        if (*(v12 + 189))
        {
          goto LABEL_20;
        }

LABEL_21:
        if (&v10[v14] <= v13)
        {
          v10 += v14;
        }

        else
        {
          v10 = v13;
        }

        LODWORD(v8) = v8 - v14;
        if (!v8)
        {
          return result;
        }
      }

      result = MIDIReceivedEventList(*(*(v12 + 16) + 4 * v19), v20);
      if ((*(v12 + 189) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      result = MIDIReceivedEventList(*(*(v12 + 24) - 4), v20);
      goto LABEL_21;
    }
  }

  return result;
}

_BYTE *sub_A2E8(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  if (*(a2 + 2))
  {
    v6 = *(*(a2 + 1) + 120);
  }

  else
  {
    v6 = 0;
  }

  v7 = &a3[a4 - 4];
  v8 = a3;
  while (*(a2 + 2))
  {
    v9 = a2;
    do
    {
      v9 = *(v9 + 1);
      if (v9 == a2)
      {
        return (v8 - a3);
      }
    }

    while (v6 != v9[120]);
    if (*(v9 + 4))
    {
      v10 = *(v9 + 4);
    }

    else
    {
      v10 = v9 + 40;
    }

    v11 = *(v9 + 14);
    v12 = *(v9 + 6);
    v13 = v12 - v11;
    if (v12 - v11 >= 1 && v8 <= v7)
    {
      v15 = &v10[v12];
      v16 = 16 * v9[108];
      v17 = &v10[v11];
      v33 = &v10[v12 - 1];
      v18 = v17;
      while (1)
      {
        v20 = *v18++;
        v19 = v20;
        v21 = v20 >> 4;
        if (v20 >> 4 > 0xF)
        {
          break;
        }

        if (((1 << v21) & 0x4F00) != 0)
        {
          *v8 = v16 | (v19 >> 4);
          v8[1] = v19;
LABEL_27:
          v8[2] = v17[1];
          v18 = v17 + 3;
          v8[3] = v17[2];
          goto LABEL_42;
        }

        if (((1 << v21) & 0x3000) != 0)
        {
          v23 = v16 | (v19 >> 4);
          goto LABEL_30;
        }

        if (v21 != 15)
        {
          break;
        }

        if (v19 <= 242)
        {
          switch(v19)
          {
            case 240:
              goto LABEL_20;
            case 241:
LABEL_58:
              LOBYTE(v23) = v16 | 2;
LABEL_30:
              *v8 = v23;
              v8[1] = v19;
              v18 = v17 + 2;
              v8[2] = v17[1];
LABEL_31:
              v8[3] = 0;
              goto LABEL_42;
            case 242:
              *v8 = v16 | 3;
              v8[1] = -14;
              goto LABEL_27;
          }
        }

        else
        {
          v26 = v19 + 13;
          if ((v19 - 243) <= 0xC)
          {
            if (((1 << v26) & 0x1BA0) != 0)
            {
              goto LABEL_40;
            }

            if (((1 << v26) & 0x18) != 0)
            {
              v27 = v16 | 5;
              goto LABEL_41;
            }

            if (v19 == 243)
            {
              goto LABEL_58;
            }
          }
        }

        if (v18 < v15)
        {
          v31 = v33 - v17;
          while ((*v18 & 0x80000000) == 0)
          {
            ++v18;
            if (!--v31)
            {
              v18 = v15;
              break;
            }
          }
        }

LABEL_43:
        if (v18 >= v15)
        {
          v28 = *(v9 + 4);
          if (v28)
          {
            free(v28);
          }

          v30 = *v9;
          v29 = *(v9 + 1);
          *(v30 + 8) = v29;
          *v29 = v30;
          --*(a2 + 2);
          operator delete(v9);
          if (!*(a2 + 2))
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v9 + 14) = v18 - v10;
        }

        v13 = v15 - v18;
        if (v15 - v18 >= 1)
        {
          v17 = v18;
          if (v8 <= v7)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

LABEL_20:
      if (v13 > 2 || v13 != 1 && *v18 == 247)
      {
        v8[1] = v19;
        v22 = v17[1];
        v8[2] = v22;
        if (v22 == 247)
        {
          v18 = v17 + 2;
          *v8 = v16 | 6;
          goto LABEL_31;
        }

        v18 = v17 + 3;
        v24 = v17[2];
        v8[3] = v24;
        if (v24 == 247)
        {
          v25 = v16 | 7;
        }

        else
        {
          v25 = v16 | 4;
        }

        *v8 = v25;
LABEL_42:
        v8 += 4;
        goto LABEL_43;
      }

LABEL_40:
      v27 = v16 | 0xF;
LABEL_41:
      *v8 = v27;
      v8[1] = v19;
      *(v8 + 1) = 0;
      goto LABEL_42;
    }

LABEL_17:
    if (v8 > v7)
    {
      return (v8 - a3);
    }
  }

  return (v8 - a3);
}

_BYTE *sub_A5F8(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v8 = *a2;
  if (*a2 == a2[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 292);
  }

  v79 = v9;
  v87 = &a3[a4];
  do
  {
    while (1)
    {
      if (v8 == v7[1])
      {
        return (v6 - a3);
      }

      if (*(v8 + 292) != v9)
      {
        break;
      }

      v10 = sub_D10C(v8);
      v11 = *(v8 + 288);
      v12 = *(sub_D10C(v8) + 8);
      v13 = *(v8 + 288);
      v14 = v12 - v13;
      if (v12 == v13)
      {
        break;
      }

      v15 = 0;
      v16 = v10 + 4 * v11 + 12;
      v17 = 4 * (v12 - v13);
      v18 = v16 + 4 * v14;
      v19 = v87;
      v83 = v12 - v13;
      v84 = v8;
      v81 = v17;
      v82 = v16;
      v80 = v18;
      while (1)
      {
        v20 = 4 * v15;
        v21 = (v16 + v20);
        if (v5)
        {
          break;
        }

        v28 = v17 - v20;
        if (((v17 - v20) & 0x3FFFFFFFCLL) == 0)
        {
          LODWORD(v29) = 0;
          goto LABEL_140;
        }

        LODWORD(v29) = 0;
        if (v6 && v6 < v19)
        {
          LODWORD(v30) = 0;
          v31 = 0;
          v32 = &v21[v28 & 0x3FFFFFFFCLL];
          v85 = (v16 + 4 * v15);
          v86 = v32;
          while (1)
          {
            if (((v32 - v21) >> 2) < 1)
            {
LABEL_138:
              v66 = v21 - v85;
              v21 = v85;
              v29 = v66 >> 2;
              goto LABEL_139;
            }

            v33 = *v21;
            v34 = *v21 >> 28;
            switch(v34)
            {
              case 1u:
                if (BYTE2(v33) - 241 <= 0xE)
                {
                  if (((1 << (BYTE2(v33) + 15)) & 0x6EA0) != 0)
                  {
                    v38 = (v33 >> 20) & 0xF0;
                    v31 = v38 | 5;
                    *v6 = v38 | 5;
                    v6[1] = *(v21 + 1);
                    LODWORD(v30) = 1;
LABEL_50:
                    v6[2] = 0;
                    goto LABEL_122;
                  }

                  if (((1 << (BYTE2(v33) + 15)) & 5) != 0)
                  {
                    LODWORD(v30) = 2;
LABEL_119:
                    v31 = v30 | (v33 >> 20) & 0xF0;
                    *v6 = v30 | (v33 >> 20) & 0xF0;
                    v6[1] = *(v21 + 1);
                    goto LABEL_120;
                  }

                  if (BYTE2(v33) == 242)
                  {
                    LODWORD(v30) = 3;
                    goto LABEL_119;
                  }
                }

                break;
              case 2u:
                v37 = (v33 >> 20) & 0xF;
                v31 = (v33 >> 20);
                if (v37 != 15)
                {
                  if (((1 << v37) & 0x3000) != 0)
                  {
                    LODWORD(v30) = 2;
                  }

                  if (((1 << v37) & 0x4F00) != 0)
                  {
                    LODWORD(v30) = 3;
                  }
                }

                break;
              case 3u:
                v35 = (v33 >> 20) & 0xF;
                v88 = 0;
                LODWORD(v30) = HIWORD(v33) & 0xF;
                if (v35 >= 2)
                {
                  v30 = v30;
                }

                else
                {
                  v30 = (v30 + 1);
                }

                if (v35)
                {
                  v36 = v35 == 3;
                }

                else
                {
                  v36 = 1;
                }

                if (v36)
                {
                  ++v30;
                }

                if (v30 > 8)
                {
                  LODWORD(v30) = 0;
                  goto LABEL_72;
                }

                if (v35 == 3 || (v39 = v30, !v35))
                {
                  *(&v87 + v30 + 7) = -9;
                  v39 = v30 - 1;
                }

                if (v35 > 1)
                {
                  v40 = &v88;
                }

                else
                {
                  LOBYTE(v88) = -16;
                  --v39;
                  v40 = &v88 + 1;
                }

                if (v39 >= 1)
                {
                  v41 = 0;
                  for (i = 0; i != v39; ++i)
                  {
                    if (i <= 5)
                    {
                      if (i >= 2)
                      {
                        v44 = 40;
                      }

                      else
                      {
                        v44 = 8;
                      }

                      v43 = *&v21[4 * (i > 1)] >> (v44 + v41);
                    }

                    else
                    {
                      LOBYTE(v43) = 0;
                    }

                    v40[i] = v43;
                    v41 -= 8;
                  }
                }

                if (v30)
                {
                  if (*(&v87 + v30 + 7) == 247)
                  {
                    if (v30 >= 4)
                    {
                      v45 = v30 / 3;
                      if ((-1431655765 * v30) > 0x55555555)
                      {
                        ++v45;
                      }
                    }

                    else
                    {
                      v45 = 1;
                    }
                  }

                  else if (v30 >= 3)
                  {
                    v45 = v30 / 3 + v30 % 3;
                  }

                  else
                  {
                    v45 = v30;
                  }
                }

                else
                {
LABEL_72:
                  v45 = 0;
                }

                if (v45 <= (v87 - v6) >> 2)
                {
                  v46 = 0;
                  while (v30 != 1)
                  {
                    if (!v30)
                    {
                      v63 = byte_20290[*v21 >> 28];
                      v32 = v86;
                      goto LABEL_126;
                    }

                    v47 = v35 != 1;
                    v48 = v30 - 3;
                    if (v30 != 3)
                    {
                      v47 = 1;
                    }

                    if (v30 <= 3 && v47)
                    {
LABEL_95:
                      if (v35 && v35 != 3)
                      {
                        v53 = *v21;
                        v52 = v6;
                        v48 = v30;
                        goto LABEL_107;
                      }

                      v52 = v6;
                      v48 = v30;
LABEL_98:
                      v55 = *v21 >> 28;
                      if (v55)
                      {
                        v56 = v55 == 15;
                      }

                      else
                      {
                        v56 = 1;
                      }

                      v57 = (*v21 >> 20) & 0xF0;
                      if (v56)
                      {
                        v57 = 240;
                      }

                      v58 = v48 | v57;
                      v31 = v58 | 4;
                      *v52 = v58 | 4;
                      v59 = v48;
                      memcpy(v52 + 1, &v88 + v46, v48);
                      LODWORD(v30) = 0;
                      v6 = &v52[v48 + 1];
                      if (v48 != 3)
                      {
                        v60 = 2 - v48;
                        bzero(v6, v60 + 1);
                        LODWORD(v30) = 0;
                        v6 = &v52[v59 + 2 + v60];
                      }
                    }

                    else
                    {
                      v49 = *v21 >> 28;
                      if (v49)
                      {
                        v50 = v49 == 15;
                      }

                      else
                      {
                        v50 = 1;
                      }

                      if (v50)
                      {
                        v31 = 244;
                      }

                      else
                      {
                        v31 = (*v21 >> 20) & 0xF0 | 4;
                      }

                      *v6 = v31;
                      v51 = &v88 + v46;
                      v6[1] = *v51;
                      v6[2] = v51[1];
                      v46 += 3;
                      v52 = v6 + 4;
                      v6[3] = v51[2];
                      LODWORD(v51) = v30 - 4;
                      v6 += 4;
                      LODWORD(v30) = v30 - 3;
                      if (v51 <= 2)
                      {
                        v53 = *v21;
                        if (*v21 >> 28 == 3)
                        {
                          v54 = (*v21 >> 20) & 0xF;
                        }

                        else
                        {
                          v54 = -1;
                        }

                        if (!v54 || v54 == 3)
                        {
                          goto LABEL_98;
                        }

LABEL_107:
                        if (v53 >> 28)
                        {
                          v61 = v53 >> 28 == 15;
                        }

                        else
                        {
                          v61 = 1;
                        }

                        if (v61)
                        {
                          v31 = 255;
                        }

                        else
                        {
                          v31 = (v53 >> 20) & 0xF0 | 0xF;
                        }

                        *v52 = v31;
                        v62 = *(&v88 + v46++);
                        v52[1] = v62;
                        *(v52 + 1) = 0;
                        v6 = v52 + 4;
                        LODWORD(v30) = v48 - 1;
                      }
                    }
                  }

                  v53 = *v21;
                  if ((*v21 & 0xF0F00000) != 0x30300000)
                  {
                    v48 = 1;
                    v52 = v6;
                    goto LABEL_107;
                  }

                  goto LABEL_95;
                }

                v68 = v21 - v85;
                v21 = v85;
                v29 = v68 >> 2;
LABEL_139:
                v5 = a5;
                v9 = v79;
                v7 = a2;
                v14 = v83;
                v8 = v84;
                v19 = v87;
                v17 = v81;
                v16 = v82;
                v18 = v80;
                goto LABEL_140;
            }

            if (!v31)
            {
              goto LABEL_125;
            }

            *v6 = v31;
            v6[1] = *(v21 + 1);
            if (v30 <= 1)
            {
              goto LABEL_50;
            }

LABEL_120:
            v6[2] = BYTE1(*v21);
            if (v30 > 2)
            {
              v6[3] = *v21;
              goto LABEL_124;
            }

            LODWORD(v30) = 2;
LABEL_122:
            v6[3] = 0;
LABEL_124:
            v6 += 4;
LABEL_125:
            v63 = byte_20290[*v21 >> 28];
LABEL_126:
            v21 += 4 * v63;
            if (v6 >= v87)
            {
              goto LABEL_138;
            }
          }
        }

LABEL_140:
        v67 = &v21[4 * v29];
        if (v67 >= v18)
        {
          goto LABEL_145;
        }

        v15 += v29;
        if (v19 - v6 < 4 * byte_20290[*v67 >> 28])
        {
          goto LABEL_9;
        }

LABEL_142:
        if (v15 >= v14)
        {
          goto LABEL_9;
        }
      }

      if (v19 <= v6)
      {
        LODWORD(v64) = 0;
      }

      else
      {
        v22 = (v17 - v20) >> 2;
        v23 = (v16 + 4 * v15);
        v24 = v6;
        while (v22 >= 1)
        {
          v25 = byte_20290[*v23 >> 28];
          if (v25 > (v19 - v24) >> 2)
          {
            break;
          }

          if (byte_20290[*v23 >> 28])
          {
            v26 = &v23[v25];
            do
            {
              v27 = *v23++;
              *v24 = v27;
              v24 += 4;
            }

            while (v23 < v26);
          }

          v22 = (v18 - v23) >> 2;
        }

        v64 = (v24 - v6) >> 2;
      }

      v65 = &v21[4 * v64];
      v6 += 4 * v64;
      if (v65 < v18)
      {
        v15 += v64;
        if (byte_20290[*v65 >> 28] > ((v19 - v6) >> 2))
        {
          goto LABEL_9;
        }

        goto LABEL_142;
      }

LABEL_145:
      sub_D228(&v88, v8 + 296, v7[1], v8);
      v70 = v69;
      for (j = v7[1]; j != v70; sub_D1B8(j))
      {
        j -= 296;
      }

      v7[1] = v70;
    }

    v15 = 0;
LABEL_9:
    v8 += 296;
  }

  while (!v15);
  v72 = *v7;
  v73 = v7[1];
  v74 = *v7;
  if (*v7 != v73)
  {
    while (*(v74 + 292) != v9)
    {
      v74 += 296;
      if (v74 == v73)
      {
        return (v6 - a3);
      }
    }
  }

  if (v73 != v74)
  {
    *(v74 + 288) += v15;
  }

  return (v6 - a3);
}

uint64_t sub_ADB4(int a1, MIDIObjectRef obj)
{
  v6 = 0;
  str = 0;
  v5 = 0;
  if (obj)
  {
    MIDIObjectGetStringProperty(obj, kMIDIPropertyName, &str);
    if (str)
    {
      v3 = CFEqual(str, @"USB MIDI Device") != 0;
    }

    else
    {
      v3 = 0;
    }

    MIDIObjectGetStringProperty(obj, kMIDIPropertyModel, &v6);
    if (v6)
    {
      v3 |= CFEqual(v6, @"USB MIDI Device") != 0;
    }

    MIDIObjectGetStringProperty(obj, kMIDIPropertyManufacturer, &v5);
    if (v5)
    {
      v3 |= CFEqual(v5, @"Generic") != 0;
    }

    if (str)
    {
      CFRelease(str);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_AEC4(int a1, MIDIDeviceRef device)
{
  str = 0;
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(device);
  if (NumberOfEntities)
  {
    v4 = NumberOfEntities;
    v5 = 0;
    v6 = 1;
    do
    {
      Entity = MIDIDeviceGetEntity(device, v5);
      if (Entity)
      {
        MIDIObjectGetStringProperty(Entity, kMIDIPropertyName, &str);
        if (str)
        {
          v8 = CFEqual(str, @"USB MIDI Device");
          v9 = str;
          if (v8)
          {
            goto LABEL_10;
          }

          if (str)
          {
            CFRelease(str);
            str = 0;
          }
        }
      }

      v6 = ++v5 < v4;
    }

    while (v4 != v5);
    v6 = 0;
    v9 = str;
LABEL_10:
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_ADB4(a1, a2);
  if ((v8 & 1) != 0 || (result = sub_AEC4(v8, a2), result))
  {
    v10 = *(*a1 + 200);

    return v10(a1, a3, a4, a2);
  }

  return result;
}

void sub_B070(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1394();
}

void sub_B0C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1394();
}

uint64_t sub_B11C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v9 = (a2 - 24);
  v10 = (a2 - 36);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 10) < *(v11 + 2))
        {
          v220 = *(v11 + 8);
          v190 = *v11;
          v89 = *(a2 - 12);
          *(v11 + 8) = *(a2 - 4);
          *v11 = v89;
          *(a2 - 4) = v220;
          *(a2 - 12) = v190;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v95 = *(v11 + 14);
      v96 = *(v11 + 26);
      if (v95 >= *(v11 + 2))
      {
        if (v96 < v95)
        {
          v150 = *(v11 + 20);
          v151 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v151;
          *(v11 + 32) = v150;
          if (*(v11 + 14) < *(v11 + 2))
          {
            v226 = *(v11 + 8);
            v196 = *v11;
            *v11 = *(v11 + 12);
            *(v11 + 8) = *(v11 + 20);
            *(v11 + 12) = v196;
            *(v11 + 20) = v226;
          }
        }
      }

      else
      {
        if (v96 < v95)
        {
          v222 = *(v11 + 8);
          v192 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 8) = *(v11 + 32);
          *(v11 + 24) = v192;
          v97 = v222;
          goto LABEL_190;
        }

        v229 = *(v11 + 8);
        v199 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v199;
        *(v11 + 20) = v229;
        if (v96 < *(v11 + 14))
        {
          v97 = *(v11 + 20);
          v159 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v159;
LABEL_190:
          *(v11 + 32) = v97;
        }
      }

      if (*(a2 - 10) >= *(v11 + 26))
      {
        return result;
      }

      v160 = *(v11 + 24);
      v161 = *(v11 + 32);
      v162 = *(a2 - 4);
      *(v11 + 24) = *v8;
      *(v11 + 32) = v162;
      *(a2 - 4) = v161;
      *v8 = v160;
      if (*(v11 + 26) >= *(v11 + 14))
      {
        return result;
      }

      v163 = *(v11 + 20);
      v164 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v164;
      *(v11 + 32) = v163;
LABEL_194:
      if (*(v11 + 14) < *(v11 + 2))
      {
        v230 = *(v11 + 8);
        v200 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v200;
        *(v11 + 20) = v230;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_C1A8(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

LABEL_10:
    if (v12 <= 287)
    {
      v98 = (v11 + 12);
      v100 = v11 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v11;
          do
          {
            v103 = v98;
            v104 = *(v102 + 14);
            if (v104 < *(v102 + 2))
            {
              v105 = *v103;
              v193 = *(v102 + 15);
              v223 = *(v102 + 23);
              v106 = v101;
              while (1)
              {
                v107 = v11 + v106;
                *(v107 + 12) = *(v11 + v106);
                *(v107 + 20) = *(v11 + v106 + 8);
                if (!v106)
                {
                  break;
                }

                v106 -= 12;
                if (v104 >= *(v107 - 10))
                {
                  v108 = v11 + v106 + 12;
                  goto LABEL_130;
                }
              }

              v108 = v11;
LABEL_130:
              *v108 = v105;
              *(v108 + 2) = v104;
              *(v108 + 11) = v223;
              *(v108 + 3) = v193;
            }

            v98 = v103 + 6;
            v101 += 12;
            v102 = v103;
          }

          while (v103 + 6 != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v152 = v98;
          v153 = *(v7 + 14);
          if (v153 < *(v7 + 2))
          {
            v154 = *v98;
            v197 = *(v7 + 15);
            v227 = *(v7 + 23);
            v155 = v152;
            do
            {
              v156 = v155;
              v157 = *(v155 - 6);
              v155 -= 6;
              *v156 = v157;
              *(v156 + 2) = *(v156 - 1);
            }

            while (v153 < *(v156 - 22));
            *v155 = v154;
            *(v155 + 2) = v153;
            *(v155 + 11) = v227;
            *(v155 + 3) = v197;
          }

          v98 = v152 + 6;
          v7 = v152;
        }

        while (v152 + 6 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v109 = (v13 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = v11 + 12 * v112;
            if (2 * v111 + 2 < v13)
            {
              v114 = *(v113 + 2);
              v115 = *(v113 + 14);
              v116 = v114 >= v115;
              v117 = v114 >= v115 ? 0 : 12;
              v113 += v117;
              if (!v116)
              {
                v112 = 2 * v111 + 2;
              }
            }

            v118 = v11 + 12 * v111;
            v119 = *(v118 + 2);
            if (*(v113 + 2) >= v119)
            {
              v120 = *v118;
              v224 = *(v118 + 11);
              v194 = *(v118 + 3);
              do
              {
                v121 = v118;
                v118 = v113;
                v122 = *v113;
                *(v121 + 8) = *(v118 + 8);
                *v121 = v122;
                if (v109 < v112)
                {
                  break;
                }

                v123 = (2 * v112) | 1;
                v113 = v11 + 12 * v123;
                v124 = 2 * v112 + 2;
                if (v124 < v13)
                {
                  v125 = *(v113 + 2);
                  v126 = *(v113 + 14);
                  v127 = v125 >= v126;
                  v128 = v125 >= v126 ? 0 : 12;
                  v113 += v128;
                  if (!v127)
                  {
                    v123 = v124;
                  }
                }

                v112 = v123;
              }

              while (*(v113 + 2) >= v119);
              *v118 = v120;
              *(v118 + 2) = v119;
              *(v118 + 11) = v224;
              *(v118 + 3) = v194;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v129 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v130 = 0;
          v225 = *(v11 + 8);
          v195 = *v11;
          v131 = v11;
          do
          {
            v132 = v131 + 12 * v130;
            v133 = v132 + 12;
            result = 2 * v130;
            v134 = (2 * v130) | 1;
            v130 = 2 * v130 + 2;
            if (v130 >= v129)
            {
              v130 = v134;
            }

            else
            {
              result = *(v132 + 14);
              v135 = *(v132 + 26);
              v136 = v132 + 24;
              if (result >= v135)
              {
                v130 = v134;
              }

              else
              {
                v133 = v136;
              }
            }

            v137 = *v133;
            *(v131 + 8) = *(v133 + 8);
            *v131 = v137;
            v131 = v133;
          }

          while (v130 <= ((v129 - 2) >> 1));
          a2 -= 12;
          if (v133 == a2)
          {
            *(v133 + 8) = v225;
            *v133 = v195;
          }

          else
          {
            v138 = *a2;
            *(v133 + 8) = *(a2 + 8);
            *v133 = v138;
            *(a2 + 8) = v225;
            *a2 = v195;
            v139 = v133 - v11 + 12;
            if (v139 >= 13)
            {
              v140 = (-2 - 0x5555555555555555 * (v139 >> 2)) >> 1;
              v141 = v11 + 12 * v140;
              v142 = *(v133 + 2);
              if (*(v141 + 2) < v142)
              {
                v143 = *v133;
                v167 = *(v133 + 3);
                v170 = *(v133 + 11);
                do
                {
                  v144 = v133;
                  v133 = v141;
                  v145 = *v141;
                  result = *(v133 + 8);
                  *(v144 + 8) = result;
                  *v144 = v145;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = v11 + 12 * v140;
                }

                while (*(v141 + 2) < v142);
                *v133 = v143;
                *(v133 + 2) = v142;
                *(v133 + 11) = v170;
                *(v133 + 3) = v167;
              }
            }
          }
        }

        while (v129-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *(a2 - 10);
    if (v12 >= 0x601)
    {
      v17 = *(v15 + 2);
      if (v17 >= *(v11 + 2))
      {
        if (v16 < v17)
        {
          v203 = *(v15 + 8);
          v173 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v21;
          *(a2 - 4) = v203;
          *v8 = v173;
          if (*(v15 + 2) < *(v11 + 2))
          {
            v204 = *(v11 + 8);
            v174 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v204;
            *v15 = v174;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v201 = *(v11 + 8);
          v171 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v18;
          goto LABEL_27;
        }

        v207 = *(v11 + 8);
        v177 = *v11;
        v25 = *v15;
        *(v11 + 8) = *(v15 + 8);
        *v11 = v25;
        *(v15 + 8) = v207;
        *v15 = v177;
        if (*(a2 - 10) < *(v15 + 2))
        {
          v201 = *(v15 + 8);
          v171 = *v15;
          v26 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v26;
LABEL_27:
          *(a2 - 4) = v201;
          *v8 = v171;
        }
      }

      v27 = v11 + 12 * v14;
      v28 = v27 - 12;
      v29 = *(v27 - 10);
      v30 = *(a2 - 22);
      if (v29 >= *(v11 + 14))
      {
        if (v30 < v29)
        {
          v208 = *(v28 + 8);
          v178 = *v28;
          v34 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v34;
          *(a2 - 16) = v208;
          *v9 = v178;
          if (*(v28 + 2) < *(v11 + 14))
          {
            v35 = *(v11 + 12);
            v36 = *(v11 + 20);
            v37 = *(v28 + 8);
            *(v11 + 12) = *v28;
            *(v11 + 20) = v37;
            *(v28 + 8) = v36;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *(v11 + 12);
          v32 = *(v11 + 20);
          v33 = *(a2 - 16);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v33;
          goto LABEL_39;
        }

        v40 = *(v11 + 12);
        v41 = *(v11 + 20);
        v42 = *(v28 + 8);
        *(v11 + 12) = *v28;
        *(v11 + 20) = v42;
        *(v28 + 8) = v41;
        *v28 = v40;
        if (*(a2 - 22) < *(v28 + 2))
        {
          v210 = *(v28 + 8);
          v180 = *v28;
          v43 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v43;
          v31 = v180;
          v32 = v210;
LABEL_39:
          *(a2 - 16) = v32;
          *v9 = v31;
        }
      }

      v44 = v11 + 12 * v14;
      v45 = *(v44 + 14);
      v46 = *(a2 - 34);
      if (v45 >= *(v11 + 26))
      {
        if (v46 < v45)
        {
          v211 = *(v44 + 20);
          v181 = *(v44 + 12);
          v50 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v50;
          *(a2 - 28) = v211;
          *v10 = v181;
          if (*(v44 + 14) < *(v11 + 26))
          {
            v51 = *(v11 + 24);
            v52 = *(v11 + 32);
            v53 = *(v44 + 20);
            *(v11 + 24) = *(v44 + 12);
            *(v11 + 32) = v53;
            *(v44 + 20) = v52;
            *(v44 + 12) = v51;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *(v11 + 24);
          v48 = *(v11 + 32);
          v49 = *(a2 - 28);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v49;
          goto LABEL_48;
        }

        v54 = *(v11 + 24);
        v55 = *(v11 + 32);
        v56 = *(v44 + 20);
        *(v11 + 24) = *(v44 + 12);
        *(v11 + 32) = v56;
        *(v44 + 20) = v55;
        *(v44 + 12) = v54;
        if (*(a2 - 34) < *(v44 + 14))
        {
          v212 = *(v44 + 20);
          v182 = *(v44 + 12);
          v57 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v57;
          v47 = v182;
          v48 = v212;
LABEL_48:
          *(a2 - 28) = v48;
          *v10 = v47;
        }
      }

      v58 = *(v15 + 2);
      v59 = *(v44 + 14);
      if (v58 >= *(v28 + 2))
      {
        if (v59 < v58)
        {
          v214 = *(v15 + 8);
          v184 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
          *(v44 + 20) = v214;
          *(v44 + 12) = v184;
          if (*(v15 + 2) < *(v28 + 2))
          {
            v215 = *(v28 + 8);
            v185 = *v28;
            *v28 = *v15;
            *(v28 + 8) = *(v15 + 8);
            *(v15 + 8) = v215;
            *v15 = v185;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v213 = *(v28 + 8);
          v183 = *v28;
          *v28 = *(v44 + 12);
          *(v28 + 8) = *(v44 + 20);
          goto LABEL_57;
        }

        v216 = *(v28 + 8);
        v186 = *v28;
        *v28 = *v15;
        *(v28 + 8) = *(v15 + 8);
        *(v15 + 8) = v216;
        *v15 = v186;
        if (*(v44 + 14) < *(v15 + 2))
        {
          v213 = *(v15 + 8);
          v183 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
LABEL_57:
          *(v44 + 20) = v213;
          *(v44 + 12) = v183;
        }
      }

      v217 = *(v11 + 8);
      v187 = *v11;
      v60 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v60;
      *(v15 + 8) = v217;
      *v15 = v187;
      goto LABEL_59;
    }

    v19 = *(v11 + 2);
    if (v19 >= *(v15 + 2))
    {
      if (v16 < v19)
      {
        v205 = *(v11 + 8);
        v175 = *v11;
        v23 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v23;
        *(a2 - 4) = v205;
        *v8 = v175;
        if (*(v11 + 2) < *(v15 + 2))
        {
          v206 = *(v15 + 8);
          v176 = *v15;
          v24 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v24;
          *(v11 + 8) = v206;
          *v11 = v176;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v19)
    {
      v202 = *(v15 + 8);
      v172 = *v15;
      v20 = *v8;
      *(v15 + 8) = *(a2 - 4);
      *v15 = v20;
LABEL_36:
      *(a2 - 4) = v202;
      *v8 = v172;
      goto LABEL_59;
    }

    v209 = *(v15 + 8);
    v179 = *v15;
    v38 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v38;
    *(v11 + 8) = v209;
    *v11 = v179;
    if (*(a2 - 10) < *(v11 + 2))
    {
      v202 = *(v11 + 8);
      v172 = *v11;
      v39 = *v8;
      *(v11 + 8) = *(a2 - 4);
      *v11 = v39;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v61 = *(v11 + 2);
LABEL_62:
      v62 = 0;
      v63 = *v11;
      v165 = *(v11 + 3);
      v168 = *(v11 + 11);
      do
      {
        v64 = *(v11 + v62 + 14);
        v62 += 12;
      }

      while (v64 < v61);
      v65 = v11 + v62;
      v66 = a2;
      if (v62 == 12)
      {
        v69 = a2;
        while (v65 < v69)
        {
          v67 = v69 - 12;
          v70 = *(v69 - 10);
          v69 -= 12;
          if (v70 < v61)
          {
            goto LABEL_72;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 12;
          v68 = *(v66 - 10);
          v66 -= 12;
        }

        while (v68 >= v61);
      }

LABEL_72:
      v11 = v65;
      if (v65 < v67)
      {
        v71 = v67;
        do
        {
          v218 = *(v11 + 8);
          v188 = *v11;
          v72 = *v71;
          *(v11 + 8) = *(v71 + 8);
          *v11 = v72;
          *(v71 + 8) = v218;
          *v71 = v188;
          do
          {
            v73 = *(v11 + 14);
            v11 += 12;
          }

          while (v73 < v61);
          do
          {
            v74 = *(v71 - 10);
            v71 -= 12;
          }

          while (v74 >= v61);
        }

        while (v11 < v71);
      }

      if (v11 - 12 != v7)
      {
        v75 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v75;
      }

      *(v11 - 12) = v63;
      *(v11 - 10) = v61;
      *(v11 - 1) = v168;
      *(v11 - 9) = v165;
      if (v65 < v67)
      {
        goto LABEL_83;
      }

      v76 = sub_C3E8(v7, v11 - 12);
      result = sub_C3E8(v11, a2);
      if (result)
      {
        a2 = v11 - 12;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_83:
        result = sub_B11C(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v61 = *(v11 + 2);
      if (*(v11 - 10) < v61)
      {
        goto LABEL_62;
      }

      v77 = *v11;
      v166 = *(v11 + 3);
      v169 = *(v11 + 11);
      if (v61 >= *(a2 - 10))
      {
        v80 = v11 + 12;
        do
        {
          v11 = v80;
          if (v80 >= a2)
          {
            break;
          }

          v81 = *(v80 + 2);
          v80 += 12;
        }

        while (v61 >= v81);
      }

      else
      {
        v78 = v11;
        do
        {
          v11 = v78 + 12;
          v79 = *(v78 + 14);
          v78 += 12;
        }

        while (v61 >= v79);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v83 = a2;
        do
        {
          v82 = v83 - 12;
          v84 = *(v83 - 10);
          v83 -= 12;
        }

        while (v61 < v84);
      }

      while (v11 < v82)
      {
        v219 = *(v11 + 8);
        v189 = *v11;
        v85 = *v82;
        *(v11 + 8) = *(v82 + 8);
        *v11 = v85;
        *(v82 + 8) = v219;
        *v82 = v189;
        do
        {
          v86 = *(v11 + 14);
          v11 += 12;
        }

        while (v61 >= v86);
        do
        {
          v87 = *(v82 - 10);
          v82 -= 12;
        }

        while (v61 < v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v77;
      *(v11 - 10) = v61;
      *(v11 - 1) = v169;
      *(v11 - 9) = v166;
    }
  }

  v90 = *(v11 + 14);
  v91 = *(a2 - 10);
  if (v90 >= *(v11 + 2))
  {
    if (v91 >= v90)
    {
      return result;
    }

    v147 = *(v11 + 12);
    v148 = *(v11 + 20);
    v149 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v149;
    *(a2 - 4) = v148;
    *v8 = v147;
    goto LABEL_194;
  }

  if (v91 >= v90)
  {
    v228 = *(v11 + 8);
    v198 = *v11;
    *v11 = *(v11 + 12);
    *(v11 + 8) = *(v11 + 20);
    *(v11 + 12) = v198;
    *(v11 + 20) = v228;
    if (*(a2 - 10) >= *(v11 + 14))
    {
      return result;
    }

    v93 = *(v11 + 12);
    v94 = *(v11 + 20);
    v158 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v158;
  }

  else
  {
    v221 = *(v11 + 8);
    v191 = *v11;
    v92 = *v8;
    *(v11 + 8) = *(a2 - 4);
    *v11 = v92;
    v93 = v191;
    v94 = v221;
  }

  *(a2 - 4) = v94;
  *v8 = v93;
  return result;
}

uint64_t *sub_C1A8(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 2);
  v6 = *(a3 + 2);
  if (v5 >= *(result + 2))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      if (*(a2 + 2) < *(result + 2))
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        *(a2 + 2) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 2) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
    if (*(a3 + 2) < BYTE2(v17))
    {
      v7 = *(a2 + 2);
      v8 = *a2;
      v19 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    v20 = *(a3 + 2);
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*(a3 + 2) < *(a2 + 2))
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      if (*(a2 + 2) < *(result + 2))
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        *(a2 + 2) = v26;
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*(a4 + 2) < *(a3 + 2))
    {
      v32 = *(a3 + 2);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*(a3 + 2) < *(a2 + 2))
      {
        v35 = *(a2 + 2);
        v36 = *a2;
        v37 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v37;
        *a3 = v36;
        *(a3 + 2) = v35;
        if (*(a2 + 2) < *(result + 2))
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 2);
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          *(a2 + 2) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_C3E8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 12);
      v7 = *(a1 + 14);
      v8 = *(a2 - 10);
      if (v7 < *(a1 + 2))
      {
        if (v8 >= v7)
        {
          v34 = *(a1 + 8);
          v35 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v35;
          *(a1 + 20) = v34;
          if (*(a2 - 10) >= *(a1 + 14))
          {
            return 1;
          }

          v9 = *(a1 + 20);
          v10 = *(a1 + 12);
          v36 = *(a2 - 4);
          *(a1 + 12) = *v6;
          *(a1 + 20) = v36;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = *a1;
          v11 = *(a2 - 4);
          *a1 = *v6;
          *(a1 + 8) = v11;
        }

        *v6 = v10;
        *(a2 - 4) = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *(a1 + 20);
      v24 = *(a1 + 12);
      v25 = *(a2 - 4);
      *(a1 + 12) = *v6;
      *(a1 + 20) = v25;
      *v6 = v24;
      *(a2 - 4) = v23;
LABEL_50:
      if (*(a1 + 14) < *(a1 + 2))
      {
        v55 = *(a1 + 8);
        v56 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v56;
        *(a1 + 20) = v55;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_C1A8(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12));
      return 1;
    }

    v18 = *(a1 + 14);
    v19 = *(a1 + 2);
    v20 = *(a1 + 26);
    if (v18 >= v19)
    {
      if (v20 < v18)
      {
        v30 = *(a1 + 20);
        v31 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        if (*(a1 + 14) < v19)
        {
          v32 = *(a1 + 8);
          v33 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v33;
          *(a1 + 20) = v32;
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      v47 = *(a1 + 8);
      v48 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v48;
      *(a1 + 20) = v47;
      if (v20 >= *(a1 + 14))
      {
        goto LABEL_47;
      }

      v21 = *(a1 + 20);
      v22 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    *(a1 + 24) = v22;
    *(a1 + 32) = v21;
LABEL_47:
    if (*(a2 - 10) >= *(a1 + 26))
    {
      return 1;
    }

    v49 = a2 - 12;
    v50 = *(a1 + 32);
    v51 = *(a1 + 24);
    v52 = *(a2 - 4);
    *(a1 + 24) = *(a2 - 12);
    *(a1 + 32) = v52;
    *v49 = v51;
    *(v49 + 8) = v50;
    if (*(a1 + 26) >= *(a1 + 14))
    {
      return 1;
    }

    v53 = *(a1 + 20);
    v54 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v54;
    *(a1 + 32) = v53;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 10) < *(a1 + 2))
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      v5 = *(a2 - 4);
      *a1 = *(a2 - 12);
      *(a1 + 8) = v5;
      *(a2 - 12) = v4;
      *(a2 - 4) = v3;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 24;
  v13 = *(a1 + 14);
  v14 = *(a1 + 2);
  v15 = *(a1 + 26);
  if (v13 >= v14)
  {
    if (v15 < v13)
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v27;
      *(a1 + 32) = v26;
      if (*(a1 + 14) < v14)
      {
        v28 = *(a1 + 8);
        v29 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v29;
        *(a1 + 20) = v28;
      }
    }
  }

  else
  {
    if (v15 >= v13)
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v38;
      *(a1 + 20) = v37;
      if (v15 >= *(a1 + 14))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 20);
      v17 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v16 = *(a1 + 8);
      v17 = *a1;
      *a1 = *v12;
      *(a1 + 8) = *(a1 + 32);
    }

    *v12 = v17;
    *(a1 + 32) = v16;
  }

LABEL_33:
  v39 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *(v39 + 2);
    if (v42 < *(v12 + 2))
    {
      v43 = *v39;
      v58 = *(v39 + 3);
      v59 = *(v39 + 11);
      v44 = v40;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 36) = *(a1 + v44 + 24);
        *(v45 + 44) = *(a1 + v44 + 32);
        if (v44 == -24)
        {
          break;
        }

        v44 -= 12;
        if (v42 >= *(v45 + 14))
        {
          v46 = a1 + v44 + 36;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v43;
      *(v46 + 2) = v42;
      *(v46 + 3) = v58;
      *(v46 + 11) = v59;
      if (++v41 == 8)
      {
        return v39 + 12 == a2;
      }
    }

    v12 = v39;
    v40 += 12;
    v39 += 12;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_C89C(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(result + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    v8 = *v6++;
    *v7 = v8;
    v7 += 8;
  }

  *(result + 8) = v7;
  if (v4 != a4)
  {
    v9 = v4 - 8;
    do
    {
      *v9 = *&v5[a2 - 8];
      v9 -= 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

double sub_C8E8(uint64_t **a1, double *a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      if (v2 == *a1)
      {
        v7 = 1;
      }

      else
      {
        v7 = (v2 - *a1) >> 2;
      }

      sub_CB08(a1[4], v7);
    }

    v5 = v4 - *a1 + 1;
    v3 = &v4[-(v5 / 2)];
    if (v4 != v2)
    {
      do
      {
        v6 = *v4++;
        *v3++ = v6;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[v5 / -2];
    a1[2] = v3;
  }

  result = *a2;
  *v3 = *a2;
  a1[2] = v3 + 1;
  return result;
}

void sub_CA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA4C(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = *(a2 + 8);
  sub_CB7C(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_CB7C(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void sub_CB08(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1394();
}

uint64_t sub_CB50(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = 8 * a3;
    v5 = &v3[a3];
    do
    {
      v6 = *a2++;
      *v3++ = v6;
      v4 -= 8;
    }

    while (v4);
    v3 = v5;
  }

  *(result + 16) = v3;
  return result;
}

double sub_CB7C(uint64_t a1, double *a2, double *a3, double *a4)
{
  while (a2 != a3)
  {
    v4 = *a2++;
    result = v4;
    *a4++ = v4;
  }

  return result;
}

void sub_CBAC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_CC08(exception, a1);
}

std::logic_error *sub_CC08(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

double *sub_CC3C(double **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    sub_1280();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_CB08(a1, v6);
  }

  v9 = (8 * v5);
  v10 = *a2;
  v11 = &v9[-(v4 - *a1)];
  *v9 = v10;
  v12 = (v9 + 1);
  sub_CB7C(a1, v3, v4, v11);
  v13 = *a1;
  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void *sub_CD30(void *a1)
{
  *a1 = off_28858;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_CD84(void *a1)
{
  sub_CD30(a1);

  operator delete();
}

void sub_CDBC(void *a1)
{
  sub_CD30(a1);

  operator delete();
}

void *sub_CDF4(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_CE58(unsigned __int8 *a1)
{
  result = sub_CED0(a1);
  if (result)
  {
    v3 = *a1;
    if (v3 >= 0x10)
    {
      result = v3 >> 4;
      if ((result - 8) >= 7)
      {
        if (result == 15 && v3 > 0xFFFFFFF0)
        {
          return byte_202BB[v3 + 15];
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 4;
    }
  }

  return result;
}

uint64_t sub_CED0(unsigned __int8 *a1)
{
  v1 = *(a1 + 2);
  if (!*(a1 + 2))
  {
    return 0;
  }

  if (v1 == 3 || a1[v1 - 1] == 247)
  {
    return 1;
  }

  v3 = *a1;
  if ((v3 >> 4) - 12 < 2)
  {
    return v1 == 2;
  }

  if (v3 >> 4 != 15)
  {
    return 0;
  }

  if (v3 == 241)
  {
    return v1 == 2;
  }

  if (v3 != 246)
  {
    if (v3 != 243)
    {
      return 0;
    }

    return v1 == 2;
  }

  return v1 == 1;
}

uint64_t sub_CF4C(MIDIProtocolID a1, MIDITimeStamp a2, const UInt32 *a3, uint64_t a4, MIDIEventList *a5, unint64_t a6)
{
  result = 0;
  v8 = a6 - a5;
  if (a6 >= a5 && a5 && a6)
  {
    bzero(a5, a6 - a5);
    v14 = MIDIEventListInit(a5, a1);
    if (a4 >= 1)
    {
      v15 = byte_20290[*a3 >> 28];
      if (a4 >= v15)
      {
        v16 = v14;
        v17 = 0;
        v18 = -1;
        v19 = a3;
        v20 = &a3[a4];
        v21 = &a3[v15];
        while (1)
        {
          v22 = v21;
          v23 = *v19 >> 28;
          if (v23)
          {
            v24 = v23 == 15;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v25 = 255;
          }

          else
          {
            v25 = HIBYTE(*v19) & 0xF;
          }

          if (v18 != -1 && v18 != v25)
          {
            return (v19 - a3) >> 2;
          }

          if (*v19 >> 28 <= 2)
          {
            break;
          }

          if (v23 != 5 && v23 != 3)
          {
            goto LABEL_29;
          }

          if ((v17 & 1) == 0 && a5->numPackets || &v16->words[v16->wordCount + v15] > a6)
          {
            return (v19 - a3) >> 2;
          }

          v17 = 1;
LABEL_31:
          v27 = MIDIEventListAdd(a5, v8, v16, a2, v15, v19);
          if (!v27)
          {
            return (v19 - a3) >> 2;
          }

          if (v22 < v20)
          {
            v16 = v27;
            v15 = byte_20290[*v22 >> 28];
            v21 = &v22[v15];
            v19 = v22;
            v18 = v25;
            if (v21 <= v20)
            {
              continue;
            }
          }

          return (v22 - a3) >> 2;
        }

        if (v23 < 2)
        {
          goto LABEL_31;
        }

        if (v23 == 2 && a5->protocol == kMIDIProtocol_2_0)
        {
          a5->protocol = kMIDIProtocol_1_0;
        }

LABEL_29:
        if (v17)
        {
          return (v19 - a3) >> 2;
        }

        v17 = 0;
        goto LABEL_31;
      }
    }

    v22 = a3;
    return (v22 - a3) >> 2;
  }

  return result;
}

uint64_t sub_D10C(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1 == -1)
  {
    sub_D158();
  }

  v4 = &v3;
  return (off_288A0[v1])(&v4, a1);
}

void sub_D158()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_D1B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 272);
  if (v2 != -1)
  {
    result = (off_288B0[v2])(&v3, result);
  }

  *(v1 + 272) = -1;
  return result;
}

void sub_D214(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t sub_D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_D2A4(a4, v5);
      v7 = *(v5 + 280);
      *(a4 + 285) = *(v5 + 285);
      *(a4 + 280) = v7;
      v5 += 296;
      a4 += 296;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_D2A4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 272);
  if (*(result + 272) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_D1B8(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (*(&off_288C0 + v4))(v6);
    }
  }

  return result;
}

void *sub_D314(uint64_t *a1, void *__dst, void *__src)
{
  v4 = *a1;
  if (*(*a1 + 272))
  {
    sub_D1B8(*a1);
    result = memcpy(v4, __src, 0x10CuLL);
    v4[68] = 0;
  }

  else
  {

    return memcpy(__dst, __src, 0x10CuLL);
  }

  return result;
}

__n128 sub_D38C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 272) == 1)
  {

    result.n128_u64[0] = sub_D40C(a2, a3).n128_u64[0];
  }

  else
  {
    sub_D1B8(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 272) = 1;
  }

  return result;
}

__n128 sub_D40C(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_D460(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_D4F8(void *a1)
{
  *a1 = off_288E0;
  sub_D7CC((a1 + 2));
  return a1;
}

void sub_D53C(void *a1)
{
  *a1 = off_288E0;
  sub_D7CC((a1 + 2));

  operator delete();
}

uint64_t sub_D61C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_288E0;
  a2[1] = v2;
  return sub_D460((a2 + 2), a1 + 16);
}

void sub_D654(void *a1)
{
  sub_D7CC(a1 + 16);

  operator delete(a1);
}

uint64_t sub_D698(uint64_t a1, uint64_t a2)
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

uint64_t sub_D718(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_D778((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_D778(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1514();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_D7CC(uint64_t a1)
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

void *sub_D84C(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &off_28878;
  a1[1] = v4;
  return a1;
}

void sub_D938(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_60AC();
  if (v2)
  {
    sub_60AC();
    v3 = qword_2C128;
    if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "USBMIDIDriverBase.cpp";
      v8 = 1024;
      v9 = 654;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ==========================================================================================================", &v6, 0x12u);
    }

    sub_60AC();
    v4 = qword_2C128;
    if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "USBMIDIDriverBase.cpp";
      v8 = 1024;
      v9 = 655;
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d NOTICE: USB MIDI Driver destructive tracing at level %d", &v6, 0x18u);
    }

    sub_60AC();
    v5 = qword_2C128;
    if (os_log_type_enabled(qword_2C128, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "USBMIDIDriverBase.cpp";
      v8 = 1024;
      v9 = 656;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ==========================================================================================================", &v6, 0x12u);
    }
  }
}

void *sub_DB6C(void *a1, void *a2, void *a3, void *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28970;
  sub_E6D8(a1 + 3, *a2, *a3, *a4, *a5);
  return a1;
}

void sub_DBF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_DC74(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_DCFC(v5);
      }
    }
  }
}

void sub_DCFC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_DD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1C224(a1, a5);
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *v9 = off_289A8;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  *(v9 + 96) = a4;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0u;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 183) = 0;
  *(v9 + 187) = 1;
  *(v9 + 189) = 0;
  *(v9 + 200) = 0;
  *(v9 + 208) = 0;
  *(v9 + 192) = 0;
  *(v9 + 240) = 0u;
  *(v9 + 216) = 1;
  *(v9 + 224) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0;
  sub_2590(v9 + 344, "USBMIDIDevice.mWriteQueueMutex");
  *(a1 + 432) = a1 + 432;
  *(a1 + 440) = a1 + 432;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 478) = 0u;
  v10[0] = off_28B70;
  v10[3] = v10;
  sub_9274(@"usbioresults", @"com.apple.coremidi", sub_8F8, v10);
}

void sub_E2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1298(exception_object);
}

void sub_E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_880();
  sub_16360(v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1200(va);
  sub_166CC(v6 + 8);
  _Unwind_Resume(a1);
}

void sub_E65C()
{
  if ((atomic_load_explicit(&qword_2C140, memory_order_acquire) & 1) == 0)
  {
    sub_1DC94();
  }
}

void *sub_E68C(void *a1, uint64_t *a2)
{
  sub_16B08(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_DCFC(v3);
  }

  return a1;
}

uint64_t sub_E6DC(void *a1)
{
  sub_E65C();
  v2 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "USBMIDIDevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 136;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::Initialize()", buf, 0x1Cu);
  }

  v3 = (*(*a1[10] + 144))(a1[10], a1);
  a1[12] = v3;
  if (!v3 || (sub_3D7C(v3) & 1) == 0)
  {
    sub_E65C();
    v25 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v26 = a1[12];
    *&buf[4] = "USBMIDIDevice.cpp";
    *buf = 136315906;
    *&buf[12] = 1024;
    if (v26)
    {
      v27 = "mUSBInterface->Open() failed";
    }

    else
    {
      v27 = "mUSBInterface = NULL";
    }

    *&buf[14] = 139;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 2080;
    v73 = v27;
    v28 = "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() - Failed: %s";
    v29 = v25;
    v30 = 38;
LABEL_49:
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    return 0;
  }

  v4 = sub_3A64(a1[12]);
  a1[13] = v4;
  if (!v4)
  {
    sub_E65C();
    v33 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315650;
    *&buf[4] = "USBMIDIDevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 144;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    v28 = "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() - Failed: GetPluginInterface() failed";
    v29 = v33;
    v30 = 28;
    goto LABEL_49;
  }

  *(a1 + 185) = 0;
  v5 = sub_F498(a1);
  *(a1 + 189) = v5;
  if (v5)
  {
    sub_E65C();
    v6 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 152;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d      phantom entity detected and will be excluded from portmap list", buf, 0x12u);
    }
  }

  (*(*a1 + 120))(a1, *(a1 + 491));
  (*(*a1 + 56))(a1);
  if (((*(*a1 + 112))(a1) & 1) != 0 || (*(*a1 + 104))(a1))
  {
    if (*(a1[10] + 28) == 3)
    {
      sub_E65C();
      v7 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 159;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d      Using USB MIDI Driver v3.", buf, 0x12u);
      }
    }

    (*(*a1 + 32))(a1);
    if (a1[17] != a1[18])
    {
      sub_16C5C(v69, a1 + 8);
      v8 = *&v69[8];
      *buf = *v69;
      *&buf[8] = *&v69[8];
      if (*&v69[8])
      {
        atomic_fetch_add_explicit((*&v69[8] + 16), 1uLL, memory_order_relaxed);
        sub_DCFC(v8);
      }

      v67 = a1;
      sub_16CEC();
    }

    if (a1[20] != a1[21])
    {
      sub_16C5C(v69, a1 + 8);
      v9 = *&v69[8];
      *buf = *v69;
      *&buf[8] = *&v69[8];
      if (*&v69[8])
      {
        atomic_fetch_add_explicit((*&v69[8] + 16), 1uLL, memory_order_relaxed);
        sub_DCFC(v9);
      }

      v67 = a1;
      sub_16CEC();
    }

    v10 = a1[17];
    for (i = a1[18]; v10 != i; v10 += 8)
    {
      sub_E65C();
      v12 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        if (v10[1])
        {
          v13 = *v10 | 0x80;
        }

        else
        {
          v13 = *v10;
        }

        v14 = v10[6];
        *buf = 136315906;
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 184;
        *&buf[18] = 1024;
        *&buf[20] = v13;
        *&buf[24] = 1024;
        *&buf[26] = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d      Configuring USB In Endpoint: 0x%0x, pipeIndex:%d", buf, 0x1Eu);
      }
    }

    v15 = a1[20];
    for (j = a1[21]; v15 != j; v15 += 8)
    {
      sub_E65C();
      v17 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        if (v15[1])
        {
          v18 = *v15 | 0x80;
        }

        else
        {
          v18 = *v15;
        }

        v19 = v15[6];
        *buf = 136315906;
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 187;
        *&buf[18] = 1024;
        *&buf[20] = v18;
        *&buf[24] = 1024;
        *&buf[26] = v19;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%25s:%-5d      Configuring USB Out Endpoint: 0x%0x, pipeIndex:%d", buf, 0x1Eu);
      }
    }

    v20 = a1[17];
    v21 = a1[18];
    if (v20 == v21)
    {
      v23 = 0;
    }

    else
    {
      v22 = v20 + 8;
      do
      {
        v23 = *(v22 - 1) == 255;
        v24 = *(v22 - 1) == 255 || v22 == v21;
        v22 += 8;
      }

      while (!v24);
    }

    for (k = a1[20]; k != a1[21]; k += 8)
    {
      if (*(k + 7) == 255)
      {
        goto LABEL_60;
      }
    }

    if (!v23)
    {
      goto LABEL_99;
    }

LABEL_60:
    sub_E65C();
    v35 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 191;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%25s:%-5d      MIDI-CI negotiation is necessary to determine initial protocol(s).", buf, 0x12u);
    }

    *(a1 + 188) = 1;
    memset(buf, 0, 24);
    sub_15BAC(buf, a1[20], a1[21], (a1[21] - a1[20]) >> 3);
    v36 = *buf;
    if (*buf != *&buf[8])
    {
      while (v36[7] == 255)
      {
        v36 += 8;
        if (v36 == *&buf[8])
        {
          goto LABEL_72;
        }
      }
    }

    if (v36 != *&buf[8])
    {
      sub_E65C();
      v37 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        *v69 = 136315394;
        *&v69[4] = "USBMIDIDevice.cpp";
        *&v69[12] = 1024;
        *&v69[14] = 197;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "%25s:%-5d      Culling endpoints with known protocols.", v69, 0x12u);
      }

      if (v36 + 8 != *&buf[8])
      {
        v38 = ((*&buf[8] - v36) & 0xFFFFFFFFFFFFFFF8) - 8;
        memmove(v36, v36 + 8, v38);
        v36 += v38;
      }

      *&buf[8] = v36;
    }

LABEL_72:
    sub_E65C();
    v39 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *v69 = 136315650;
      *&v69[4] = "USBMIDIDevice.cpp";
      *&v69[12] = 1024;
      *&v69[14] = 202;
      v70 = 1024;
      v71 = (*&buf[8] - *buf) >> 3;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "%25s:%-5d      Negotiating protocol for %u endpoint(s)...", v69, 0x18u);
    }

    v40 = *buf;
    if (*buf != *&buf[8])
    {
      do
      {
        v41 = a1[24];
        v42 = a1[25];
        if (v41 != v42)
        {
          if (v40[1])
          {
            v43 = *v40 | 0x80;
          }

          else
          {
            v43 = *v40;
          }

          while (*(v41 + 3) != v43)
          {
            v41 += 8;
            if (v41 == v42)
            {
              goto LABEL_84;
            }
          }
        }

        if (v41 == v42)
        {
LABEL_84:
          v44 = 0;
        }

        else
        {
          v44 = *(v41 + 2);
        }

        v45 = a1[17];
        v46 = a1[18];
        if (v45 != v46)
        {
          while (1)
          {
            v47 = v45[1] ? *v45 | 0x80 : *v45;
            if (v44 == v47)
            {
              break;
            }

            v45 += 8;
            if (v45 == v46)
            {
              goto LABEL_95;
            }
          }
        }

        if (v45 != v46)
        {
          v68 = *v45;
          if ((~v68 & 0xFF000000000000) != 0)
          {
            sub_16C5C(&v67, a1 + 8);
            sub_17084();
          }
        }

LABEL_95:
        v40 += 8;
      }

      while (v40 != *&buf[8]);
      v40 = *buf;
    }

    if (v40)
    {
      *&buf[8] = v40;
      operator delete(v40);
    }

LABEL_99:
    sub_E65C();
    v48 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v49 = (a1[18] - a1[17]) >> 3;
      *buf = 136315650;
      *&buf[4] = "USBMIDIDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 213;
      *&buf[18] = 1024;
      *&buf[20] = v49;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "%25s:%-5d      Priming %d input pipe(s)", buf, 0x18u);
    }

    if (a1[18] != a1[17])
    {
      v50 = 0;
      do
      {
        v51 = 0;
        v52 = 1;
        do
        {
          v53 = v52;
          v54 = v51 | (2 * v50);
          v55 = a1[34];
          if (v54 >= (a1[35] - v55) >> 4)
          {
            sub_CB94();
          }

          v56 = a1[17];
          if (v50 >= (a1[18] - v56) >> 3)
          {
            sub_CB94();
          }

          *(*(v55 + 16 * v54) + 64) = *(v56 + 8 * v50 + 6);
          (*(*a1 + 64))(a1);
          v52 = 0;
          v51 = 1;
        }

        while ((v53 & 1) != 0);
        ++v50;
      }

      while (v50 < (a1[18] - a1[17]) >> 3);
    }

    (*(*a1[10] + 152))(a1[10], a1);
    v57 = a1[14];
    v58 = a1[15];
    if (v57 == v58)
    {
      goto LABEL_125;
    }

    do
    {
      if ((*(a1 + 492) & 1) != 0 || *(a1 + 493) == 1)
      {
        sub_E65C();
        v59 = qword_2C138;
        if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
        {
          v60 = "forcemidi1upfallback";
          if (*(a1 + 492))
          {
            v60 = "forcemidi1fallback";
          }

          *buf = 136315650;
          *&buf[4] = "USBMIDIDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 226;
          *&buf[18] = 2080;
          *&buf[20] = v60;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "%25s:%-5d [AQAMIDI] %s is set in defaults, so negotiation will be skipped.", buf, 0x1Cu);
        }

        v61 = *v57;
        if (*(*v57 + 41))
        {
          v62 = *(*v57 + 40) | 0x80;
        }

        else
        {
          v62 = *(*v57 + 40);
        }

        v63 = *(v61 + 49);
        v64 = *(v61 + 48);
        if (v63)
        {
          v64 |= 0x80u;
        }

        sub_F728(a1, v62, v64, 255);
      }

      else
      {
        sub_19078(*v57);
      }

      v57 += 2;
    }

    while (v57 != v58);
    if (a1[14] == a1[15])
    {
LABEL_125:
      v31 = (*(*a1 + 48))(a1);
      sub_E65C();
      v65 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        v66 = "false";
        *&buf[4] = "USBMIDIDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 236;
        *buf = 136315906;
        if (v31)
        {
          v66 = "true";
        }

        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        v73 = v66;
        _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() = %s", buf, 0x26u);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_1DCF4(a1, buf);
    return buf[0];
  }

  return v31;
}