void sub_D74(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

MIDIPacket *sub_DB8(uint64_t a1, MIDITimeStamp time, int a3, Byte *data)
{
  v7 = a3;
  result = MIDIPacketListAdd((a1 + 48), 0x400uLL, *(a1 + 40), time, a3, data);
  if (!result)
  {
    if (!*(a1 + 48) || ((*(*a1 + 16))(a1, a1 + 48), v9 = MIDIPacketListInit((a1 + 48)), (result = MIDIPacketListAdd((a1 + 48), 0x400uLL, v9, time, v7, data)) == 0))
    {
      v10 = sub_ECC(time, v7, data);
      (*(*a1 + 16))(a1, v10);
      free(v10);
      *(a1 + 40) = MIDIPacketListInit((a1 + 48));
      result = MIDIPacketListInit((a1 + 48));
    }
  }

  *(a1 + 40) = result;
  return result;
}

char *sub_ECC(uint64_t a1, size_t a2, const void *a3)
{
  v6 = malloc_type_malloc(a2 + 14, 0x100004013C699A6uLL);
  *v6 = 1;
  *(v6 + 4) = a1;
  *(v6 + 6) = a2;
  memcpy(v6 + 14, a3, a2);
  return v6;
}

unsigned __int8 *sub_F3C(unsigned __int8 *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = v2 >> 4;
  if (v2 >> 4 <= 0xF)
  {
    if (((1 << v3) & 0x4F00) != 0)
    {
LABEL_3:
      v4 = a1 + 3;
      goto LABEL_21;
    }

    if (((1 << v3) & 0x3000) != 0)
    {
      goto LABEL_5;
    }

    if (v3 == 15)
    {
      if (*a1 > 0xF1u)
      {
        if (v2 == 242)
        {
          goto LABEL_3;
        }

        if (v2 != 243)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }

      if (v2 != 240)
      {
        if (v2 != 241)
        {
LABEL_26:
          v4 = a1 + 1;
          goto LABEL_21;
        }

LABEL_5:
        v4 = a1 + 2;
        goto LABEL_21;
      }
    }
  }

  v5 = a1 + 1;
  v6 = a1 + 1;
  do
  {
    v8 = *v6++;
    v7 = v8;
    v10 = (v8 & 0x80u) == 0 || v7 == 247;
    if (v5 >= a2)
    {
      break;
    }

    v5 = v6;
  }

  while (v10);
  v4 = v6 - 1;
LABEL_21:
  if (v4 >= a2)
  {
    return a2;
  }

  else
  {
    return v4;
  }
}

void *sub_FF4()
{
  if ((atomic_load_explicit(&qword_1D960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1D960))
  {
    sub_1168(&unk_1D8F8);
    __cxa_guard_release(&qword_1D960);
  }

  return &unk_1D8F8;
}

uint64_t sub_106C(const __CFString *a1, _BYTE *a2)
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

uint64_t sub_1168(uint64_t a1)
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
  handler[2] = sub_126C;
  handler[3] = &unk_18570;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(a1 + 96));
  return a1;
}

void sub_1274(uint64_t a1)
{
  std::mutex::lock(a1);
  CFSetApplyFunction(*(a1 + 64), sub_1508, 0);
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  while (v2 != v3)
  {
    sub_1460(v2);
    v2 += 6;
  }

  std::mutex::unlock(a1);
}

uint64_t sub_1304(uint64_t a1, CFTypeRef cf1, const void *a3)
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

void sub_1374(uint64_t a1, const void *a2, void *a3, uint64_t a4)
{
  value = a3;
  v11 = a2;
  std::mutex::lock(a1);
  if ((sub_1304(a1, a2, a3) & 1) == 0)
  {
    CFRetain(a2);
    CFRetain(a3);
    v8 = *(a1 + 80);
    if (v8 >= *(a1 + 88))
    {
      v9 = sub_1524(a1 + 72, &v11, &value, a4);
    }

    else
    {
      sub_166C(*(a1 + 80), &v11, &value, a4);
      v9 = v8 + 48;
      *(a1 + 80) = v8 + 48;
    }

    *(a1 + 80) = v9;
    CFSetAddValue(*(a1 + 64), value);
    sub_1460((*(a1 + 80) - 48));
  }

  std::mutex::unlock(a1);
}

void sub_1440(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_1460(CFStringRef *a1)
{
  result = CFPreferencesCopyAppValue(*a1, a1[1]);
  if (result)
  {

    return sub_14B4((a1 + 2), result);
  }

  return result;
}

uint64_t sub_14B4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1AC0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1524(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_182C();
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
    sub_18E8(a1, v8);
  }

  v15 = 0;
  v16 = 48 * v4;
  sub_166C((48 * v4), a2, a3, a4);
  v17 = 48 * v4 + 48;
  v9 = *(a1 + 8);
  v10 = 48 * v4 + *a1 - v9;
  sub_1974(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1A6C(&v15);
  return v14;
}

void sub_1658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A6C(va);
  _Unwind_Resume(a1);
}

void *sub_166C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *a3;
  sub_1714(v8, a4);
  *a1 = v5;
  a1[1] = v6;
  sub_1714((a1 + 2), v8);
  sub_17AC(v8);
  return a1;
}

void sub_16F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_17AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1714(uint64_t a1, uint64_t a2)
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

uint64_t sub_17AC(uint64_t a1)
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

void sub_1858(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_18B4(exception, a1);
}

std::logic_error *sub_18B4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_18E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1940();
}

void sub_1940()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_1974(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      *(v6 - 16) = *v7;
      v8 = sub_19EC(v6, (v7 + 1));
      v7 += 3;
      v6 = v8 + 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_17AC((v5 + 1));
      v5 += 3;
    }
  }
}

uint64_t sub_19EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A6C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_17AC(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AC0()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_1B0C(uint64_t a1, uint64_t a2)
{
  *a1 = off_18628;
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
    *exception = &off_18558;
    exception[2] = v5;
  }

  return a1;
}

uint64_t sub_1C44(uint64_t a1)
{
  *a1 = off_18628;
  pthread_mutex_destroy((a1 + 24));
  return a1;
}

void sub_1C90(uint64_t a1)
{
  sub_1C44(a1);

  operator delete();
}

BOOL sub_1CC8(uint64_t a1)
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
      *exception = &off_18558;
      exception[2] = v6;
    }

    atomic_store(v2, (a1 + 16));
  }

  return v3 == 0;
}

void sub_1E08(uint64_t a1)
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
      *exception = &off_18558;
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

uint64_t sub_1F90(uint64_t a1, char *a2)
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
      *exception = &off_18558;
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

void sub_2270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2C18(a10);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2288(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_182C();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_27B0(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_27F8(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_24F4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_2C18(v4);
    }
  }

  a1[1] = v2;
}

void sub_2670(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2C18(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1940();
}

void **sub_27F8(void **a1)
{
  sub_282C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_282C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_2C18(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_2898(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_28F4(exception, a1);
}

std::logic_error *sub_28F4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_2928(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24F4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29F0(void *a1, uint64_t *a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_186B0;
  v3 = *a3;
  sub_2AF0((a1 + 3), *a2);
}

void sub_2A74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_186B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2AF0(uint64_t a1, uint64_t a2)
{
  sub_FEEC((a1 + 16));
  *(a1 + 8) = 1;
  *a1 = off_186E8;
  sub_FF3C((a1 + 16), a2);
}

void sub_2BA0(uint64_t a1)
{
  sub_FEFC(a1 + 16);

  operator delete();
}

uint64_t sub_2BEC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2C18(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_2C84(uint64_t a1, CFUUIDRef factoryID)
{
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = off_18710;
  *(a1 + 8) = &unk_1D6C0;
  *(a1 + 16) = factoryID;
  CFPlugInAddInstanceForFactory(factoryID);
  *(a1 + 24) = 1;
  v3 = off_187C8;
  v4 = a1;
  operator new();
}

void sub_2E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1844(exception_object);
}

void *sub_2F70(void *a1, uint64_t *a2)
{
  sub_4854(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_2C18(v3);
  }

  return a1;
}

void *sub_2FBC(void *a1)
{
  *a1 = off_18710;
  v2 = a1[2];
  if (v2)
  {
    CFPlugInRemoveInstanceForFactory(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_2C18(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_2C18(v4);
  }

  return a1;
}

void sub_3028(void *a1)
{
  sub_2FBC(a1);

  operator delete();
}

uint64_t sub_3060(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (!v5)
  {
    return 7;
  }

  a1[4] = a3;
  a1[5] = a4;
  (*(*v5 + 16))(v5);
  return 0;
}

uint64_t sub_30B8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    return 7;
  }

  *(a1 + 64) = a2;
  (*(*v4 + 16))(v4, a3);
  return 0;
}

uint64_t sub_3154(_DWORD *a1, CFUUIDBytes a2, void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Fu, 0xD9u, 0x4Du, 0xFu, 0x8Cu, 0x2Au, 0x48u, 0x2Au, 0x8Au, 0xD8u, 0x7Du, 0x9Eu, 0xA3u, 0x81u, 0xC9u, 0xC1u);
  if (CFEqual(v5, v6))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    result = 0;
    v8 = 3;
LABEL_5:
    a1[5] = v8;
    return result;
  }

  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x43u, 0xC9u, 0x8Cu, 0x3Cu, 0x30u, 0x6Cu, 0x11u, 0xD5u, 0xAFu, 0x73u, 0, 0x30u, 0x65u, 0xA8u, 0x30u, 0x1Eu);
  if (CFEqual(v5, v9))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    result = 0;
    v8 = 2;
    goto LABEL_5;
  }

  v10 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v10))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    return 0;
  }

  else
  {
    *a3 = 0;
    CFRelease(v5);
    return 2147483652;
  }
}

uint64_t sub_330C(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_3320(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 - 1);
  *(a1 + 16) = v2;
  if (v1 == 1)
  {
    (*(*(a1 - 8) + 8))();
  }

  return v2;
}

void *sub_34DC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_187A0;
  *a1 = off_18780;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void *sub_3544(void *a1)
{
  *a1 = off_18780;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_3598(void *a1)
{
  *a1 = off_18780;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_360C(uint64_t a1, _DWORD *a2)
{
  v6 = *(a1 + 8);
  (*(v6 + 8))(v7, a1 + 16);
  v8 = 0;
  v7[6] = &v9;
  if (*a2 == 2)
  {
    v5[0] = a1;
    v5[1] = &v6;
    sub_3814(a2, v5);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v5[0] = &v6;
    sub_3740(a2, v5);
  }

  return sub_477C(&v6);
}

void sub_36E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_477C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3740(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v10[0] = v5 + 12;
      v10[1] = v6;
      v10[2] = *v5;
      v10[3] = 0;
      v8 = 0;
      v9 = 0;
      v7 = 0;
      result = sub_38EC(v10, &v9, &v7);
      if (result)
      {
        do
        {
          v12 = v9;
          v11[0] = *a2;
          v11[1] = &v12;
          sub_399C(&v7, v11);
          v8 = 0;
          v9 = 0;
          v7 = 0;
          result = sub_38EC(v10, &v9, &v7);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

uint64_t sub_3814(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v11[0] = v5 + 12;
      v11[1] = v6;
      v11[2] = *v5;
      v11[3] = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = sub_38EC(v11, &v10, &v8);
      if (result)
      {
        do
        {
          v13 = v10;
          v7 = *a2;
          *&v12 = a2[1];
          *(&v12 + 1) = &v13;
          sub_3FD4((v7 + 64), &v8, &v12);
          v9 = 0;
          v10 = 0;
          v8 = 0;
          result = sub_38EC(v11, &v10, &v8);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

uint64_t sub_38EC(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = byte_12F58[v6 >> 28];
  v8 = v4 + v7;
  if (v8 > v3)
  {
    return 0;
  }

  *a2 = a1[2];
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          std::terminate();
        }

        *a3++ = v6;
        v10 = v5[1];
        ++v5;
        LODWORD(v6) = v10;
      }

      *a3++ = v6;
      v11 = v5[1];
      ++v5;
      LODWORD(v6) = v11;
    }

    *a3++ = v6;
    LODWORD(v6) = v5[1];
    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    *a3 = v6;
  }

  a1[3] = v8;
  return 1;
}

unsigned __int16 *sub_399C(unsigned __int16 *result, uint64_t *a2)
{
  v3 = *result;
  v4 = v3 >> 28;
  v5 = &v36;
  if (v3 >> 28 == 3)
  {
    v22 = (v3 >> 16) & 0xF;
    if (v22 > 6 || BYTE2(v3) > 0x3Fu)
    {
      return result;
    }

    v23 = (v3 >> 20) + 3;
    v24 = bswap32(*(result + 1));
    v34[0] = bswap32(v3);
    v34[1] = v24;
    if (BYTE2(v3) > 0x1Fu)
    {
      v6 = 0;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v6 = 1;
      p_dst = &v36;
      if (!v22)
      {
LABEL_43:
        if ((v23 & 2) != 0)
        {
          *(&__dst + v6++) = -9;
        }

        v7 = *a2;
        v27 = *a2[1];
        v9 = *(*a2 + 56);
        v28 = v7 + 1088;
        v29 = *(v7 + 64);
        if (v29)
        {
          if (*v9 == v27)
          {
            v30 = *(v9 + 8);
            if (*(v30 + v9 + 10 - 1) != 247 && __dst != 240)
            {
              if (v9 + 10 + v6 + v30 <= v28)
              {
LABEL_56:
                result = (v9 + v30 + 10);
                v31 = &__dst;
                if (v6 <= 1)
                {
                  if (!v6)
                  {
LABEL_80:
                    *(v9 + 8) += v6;
                    goto LABEL_81;
                  }

                  if (v6 == 1)
                  {
LABEL_79:
                    *result = *v31;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v6 != 2)
                {
                  if (v6 != 3)
                  {
                    if (v6 == 4)
                    {
LABEL_74:
                      *result = __dst;
                      result = (result + 1);
LABEL_77:
                      v33 = *v5;
                      v32 = v5 + 1;
                      *result = v33;
                      result = (result + 1);
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v6);
                    goto LABEL_80;
                  }

LABEL_76:
                  v5 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v32 = &__dst;
LABEL_78:
                *result = *v32;
                result = (result + 1);
                v31 = v32 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = *(v9 + 8);
          }

          v9 = (v9 + v30 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        }

        if (v9 + v6 + 10 <= v28)
        {
          LODWORD(v30) = 0;
          *(v7 + 64) = v29 + 1;
          *v9 = v27;
          *(v9 + 8) = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = sub_3E2C(v7, v27, &__dst, v6);
LABEL_68:
        v9 = result;
LABEL_81:
        *(v7 + 56) = v9;
        return result;
      }
    }

    memcpy(p_dst, v34 + 2, v22);
    v6 += (v22 - 1) + 1;
    goto LABEL_43;
  }

  if (v4 == 2)
  {
    v14 = v3 & 0xE00000;
    __dst = BYTE2(*result);
    v36 = BYTE1(v3) & 0x7F;
    if ((v3 & 0xE00000) == 0xC00000)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    if (v14 != 12582912)
    {
      v37 = v3 & 0x7F;
    }

    v16 = *a2;
    v17 = *a2[1];
    result = *(*a2 + 56);
    v18 = *a2 + 1088;
    v19 = *(*a2 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = BYTE2(v3);
        v21 = result[4];
        if (v20 != 240 && *(result + v21 + 9) != 247)
        {
          if (result + v15 + v21 + 10 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v21 = result[4];
      }

      result = ((result + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (result + v15 + 10 <= v18)
    {
      LODWORD(v21) = 0;
      *(v16 + 64) = v19 + 1;
      *result = v17;
      result[4] = 0;
LABEL_36:
      v26 = result + v21 + 10;
      if (v14 == 12582912)
      {
        v5 = &__dst;
      }

      else
      {
        *v26++ = __dst;
      }

      *v26 = *v5;
      v26[1] = v5[1];
      result[4] += v15;
      goto LABEL_40;
    }

LABEL_34:
    result = sub_3E2C(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_12F68[BYTE2(v3) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v3) + 16)) & 1) == 0)
    {
      v36 = BYTE1(v3) & 0x7F;
      if (BYTE2(v3) == 242)
      {
        v37 = v3 & 0x7F;
      }
    }

    v7 = *a2;
    v8 = *a2[1];
    v9 = *(*a2 + 56);
    v10 = v7 + 1088;
    v11 = *(v7 + 64);
    if (v11)
    {
      if (*v9 == v8)
      {
        v12 = BYTE2(v3);
        v13 = *(v9 + 8);
        if (v12 != 240 && *(v13 + v9 + 10 - 1) != 247)
        {
          if (v9 + 10 + v13 + v6 <= v10)
          {
LABEL_70:
            result = (v9 + v13 + 10);
            v31 = &__dst;
            if (v6 <= 1)
            {
              if (!v6)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v6 != 2)
            {
              if (v6 != 3)
              {
                if (v6 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = sub_3E2C(v7, v8, &__dst, v6);
          goto LABEL_68;
        }
      }

      else
      {
        v13 = *(v9 + 8);
      }

      v9 = (v9 + v13 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v9 + v6 + 10 <= v10)
    {
      LODWORD(v13) = 0;
      *(v7 + 64) = v11 + 1;
      *v9 = v8;
      *(v9 + 8) = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t sub_3E2C(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  if (*(a1 + 64))
  {
    v16 = a1 + 64;
    (**a1)(a1 + 8, &v16);
    *(a1 + 64) = 0;
    if (a4 <= 1010)
    {
      *(a1 + 64) = 1;
      v8 = a1 + 68;
      *(a1 + 68) = a2;
      *(a1 + 76) = 0;
      v9 = (a1 + 78);
      if (a4 <= 1)
      {
        if (!a4)
        {
LABEL_15:
          v13 = 0;
          goto LABEL_16;
        }

        if (a4 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
LABEL_10:
            v12 = *a3++;
            *v9++ = v12;
LABEL_13:
            *v9 = *a3;
            v13 = *(a1 + 76);
LABEL_16:
            *(a1 + 76) = v13 + a4;
            return v8;
          case 3:
LABEL_9:
            v11 = *a3++;
            *v9++ = v11;
            goto LABEL_10;
          case 4:
            v10 = *a3++;
            v9 = (a1 + 79);
            *(a1 + 78) = v10;
            goto LABEL_9;
        }
      }

      memmove(v9, a3, a4);
      goto LABEL_15;
    }
  }

  MIDI::LegacyPacketList::create();
  v16 = v15;
  (**a1)(a1 + 8, &v16);
  sub_3FA8(&v15, 0);
  v8 = a1 + 68;
  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  sub_3FA8(&v15, 0);
  return v8;
}

uint64_t *sub_3FA8(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return MIDI::LegacyPacketListDeleter::operator()();
  }

  return result;
}

unsigned __int16 *sub_3FD4(unsigned __int16 *result, unsigned __int16 *a2, __int128 *a3)
{
  v5 = *a2;
  v30 = v3;
  v31 = v4;
  if (((1 << (v5 >> 28)) & 0xA02F) != 0)
  {
    v29 = *a3;
    v7 = a2;
    return sub_42EC(v7, &v29);
  }

  if (v5 >> 28 != 4)
  {
    return result;
  }

  v8 = BYTE3(v5) & 0xF | 0x20;
  v9 = *(a2 + 1);
  v10 = BYTE2(v5) >> 4;
  if (v10 > 0xB)
  {
    switch(v10)
    {
      case 0xCu:
        if (v5)
        {
          v28 = 0;
          *&v27[8] = 0;
          v24 = v8 << 24;
          v25 = BYTE2(v5) << 16;
          v26 = (v25 - 0x100000) | (v8 << 24);
          *v27 = (v25 - 0x100000) & 0xFFFFFF80 | (v8 << 24) | (v9 >> 8) & 0x7F;
          v29 = *a3;
          sub_42EC(v27, &v29);
          v28 = 0;
          *&v27[8] = 0;
          *v27 = v26 & 0xFFFFFF80 | v9 & 0x7F | 0x2000;
          v29 = *a3;
          sub_42EC(v27, &v29);
        }

        else
        {
          v24 = v8 << 24;
          v25 = BYTE2(v5) << 16;
        }

        v28 = 0;
        *&v27[4] = 0;
        v13 = HIWORD(v9) & 0x7F00 | v24 | v25;
        goto LABEL_31;
      case 0xDu:
        v28 = 0;
        *&v27[4] = 0;
        v13 = (BYTE2(v5) << 16) | (v8 << 24) | (v9 >> 25 << 8);
        goto LABEL_31;
      case 0xEu:
        v28 = 0;
        *&v27[4] = 0;
        v13 = (v9 >> 10) & 0x7F00 | (BYTE2(v5) << 16) | (v8 << 24) | (v9 >> 25);
LABEL_31:
        *v27 = v13;
        v29 = *a3;
        v7 = v27;
        return sub_42EC(v7, &v29);
    }

    return result;
  }

  if (v10 - 8 < 4)
  {
    v11 = v10 == 9;
    if (v9 >> 25)
    {
      v11 = v9 >> 25;
    }

    v28 = 0;
    *&v27[4] = 0;
    v12 = (BYTE2(v5) << 16) | (v8 << 24) | v5 & 0x7F00;
    goto LABEL_30;
  }

  if (v10 - 2 < 2)
  {
    v14 = (v5 >> 16) & 0xF;
    v15 = &result[24 * (BYTE3(v5) & 0xF)] + 3 * v14;
    v16 = (v5 >> 8) & 0x7F;
    v17 = v5 & 0x7F;
    v18 = (v9 >> 18) & 0x7F;
    if ((v5 & 0x100000) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    if (v19 == *v15 && v16 == v15[1])
    {
      v20 = v14 | 0xB0;
      if (v17 == v15[2])
      {
        v21 = (v8 << 24) | (v20 << 16);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = v14 | 0xB0;
    }

    if ((v5 & 0x100000) != 0)
    {
      v22 = 25344;
    }

    else
    {
      v22 = 25856;
    }

    v28 = 0;
    *&v27[8] = 0;
    v21 = (v8 << 24) | (v20 << 16);
    v23 = v21 | v22;
    *v27 = v21 | v22 | v16;
    v29 = *a3;
    sub_42EC(v27, &v29);
    v28 = 0;
    *&v27[8] = 0;
    *v27 = (v23 | v17) - 256;
    v29 = *a3;
    sub_42EC(v27, &v29);
    *v15 = v19;
    v15[1] = v16;
    v15[2] = v17;
LABEL_28:
    v28 = 0;
    *&v27[8] = 0;
    *v27 = v21 | (v9 >> 25) | 0x600;
    v29 = *a3;
    result = sub_42EC(v27, &v29);
    if (v18)
    {
      v28 = 0;
      *&v27[4] = 0;
      v11 = v18 | v21;
      v12 = 9728;
LABEL_30:
      v13 = v11 | v12;
      goto LABEL_31;
    }
  }

  return result;
}

unsigned __int16 *sub_42EC(unsigned __int16 *result, uint64_t *a2)
{
  v3 = *result;
  v4 = v3 >> 28;
  v5 = &v36;
  if (v3 >> 28 == 3)
  {
    v22 = (v3 >> 16) & 0xF;
    if (v22 > 6 || BYTE2(v3) > 0x3Fu)
    {
      return result;
    }

    v23 = (v3 >> 20) + 3;
    v24 = bswap32(*(result + 1));
    v34[0] = bswap32(v3);
    v34[1] = v24;
    if (BYTE2(v3) > 0x1Fu)
    {
      v6 = 0;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v6 = 1;
      p_dst = &v36;
      if (!v22)
      {
LABEL_43:
        if ((v23 & 2) != 0)
        {
          *(&__dst + v6++) = -9;
        }

        v7 = *a2;
        v27 = *a2[1];
        v9 = *(*a2 + 56);
        v28 = v7 + 1088;
        v29 = *(v7 + 64);
        if (v29)
        {
          if (*v9 == v27)
          {
            v30 = *(v9 + 8);
            if (*(v30 + v9 + 10 - 1) != 247 && __dst != 240)
            {
              if (v9 + 10 + v6 + v30 <= v28)
              {
LABEL_56:
                result = (v9 + v30 + 10);
                v31 = &__dst;
                if (v6 <= 1)
                {
                  if (!v6)
                  {
LABEL_80:
                    *(v9 + 8) += v6;
                    goto LABEL_81;
                  }

                  if (v6 == 1)
                  {
LABEL_79:
                    *result = *v31;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v6 != 2)
                {
                  if (v6 != 3)
                  {
                    if (v6 == 4)
                    {
LABEL_74:
                      *result = __dst;
                      result = (result + 1);
LABEL_77:
                      v33 = *v5;
                      v32 = v5 + 1;
                      *result = v33;
                      result = (result + 1);
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v6);
                    goto LABEL_80;
                  }

LABEL_76:
                  v5 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v32 = &__dst;
LABEL_78:
                *result = *v32;
                result = (result + 1);
                v31 = v32 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = *(v9 + 8);
          }

          v9 = (v9 + v30 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        }

        if (v9 + v6 + 10 <= v28)
        {
          LODWORD(v30) = 0;
          *(v7 + 64) = v29 + 1;
          *v9 = v27;
          *(v9 + 8) = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = sub_3E2C(v7, v27, &__dst, v6);
LABEL_68:
        v9 = result;
LABEL_81:
        *(v7 + 56) = v9;
        return result;
      }
    }

    memcpy(p_dst, v34 + 2, v22);
    v6 += (v22 - 1) + 1;
    goto LABEL_43;
  }

  if (v4 == 2)
  {
    v14 = v3 & 0xE00000;
    __dst = BYTE2(*result);
    v36 = BYTE1(v3) & 0x7F;
    if ((v3 & 0xE00000) == 0xC00000)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    if (v14 != 12582912)
    {
      v37 = v3 & 0x7F;
    }

    v16 = *a2;
    v17 = *a2[1];
    result = *(*a2 + 56);
    v18 = *a2 + 1088;
    v19 = *(*a2 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = BYTE2(v3);
        v21 = result[4];
        if (v20 != 240 && *(result + v21 + 9) != 247)
        {
          if (result + v15 + v21 + 10 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v21 = result[4];
      }

      result = ((result + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (result + v15 + 10 <= v18)
    {
      LODWORD(v21) = 0;
      *(v16 + 64) = v19 + 1;
      *result = v17;
      result[4] = 0;
LABEL_36:
      v26 = result + v21 + 10;
      if (v14 == 12582912)
      {
        v5 = &__dst;
      }

      else
      {
        *v26++ = __dst;
      }

      *v26 = *v5;
      v26[1] = v5[1];
      result[4] += v15;
      goto LABEL_40;
    }

LABEL_34:
    result = sub_3E2C(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_12F68[BYTE2(v3) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v3) + 16)) & 1) == 0)
    {
      v36 = BYTE1(v3) & 0x7F;
      if (BYTE2(v3) == 242)
      {
        v37 = v3 & 0x7F;
      }
    }

    v7 = *a2;
    v8 = *a2[1];
    v9 = *(*a2 + 56);
    v10 = v7 + 1088;
    v11 = *(v7 + 64);
    if (v11)
    {
      if (*v9 == v8)
      {
        v12 = BYTE2(v3);
        v13 = *(v9 + 8);
        if (v12 != 240 && *(v13 + v9 + 10 - 1) != 247)
        {
          if (v9 + 10 + v13 + v6 <= v10)
          {
LABEL_70:
            result = (v9 + v13 + 10);
            v31 = &__dst;
            if (v6 <= 1)
            {
              if (!v6)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v6 != 2)
            {
              if (v6 != 3)
              {
                if (v6 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = sub_3E2C(v7, v8, &__dst, v6);
          goto LABEL_68;
        }
      }

      else
      {
        v13 = *(v9 + 8);
      }

      v9 = (v9 + v13 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v9 + v6 + 10 <= v10)
    {
      LODWORD(v13) = 0;
      *(v7 + 64) = v11 + 1;
      *v9 = v8;
      *(v9 + 8) = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t sub_477C(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 68;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

uint64_t *sub_4854(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_48D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_4910(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_4A64()
{
  if ((atomic_load_explicit(&qword_1D970, memory_order_acquire) & 1) == 0)
  {
    sub_FFC0();
  }
}

void sub_8EB0()
{
  if ((atomic_load_explicit(&qword_1D980, memory_order_acquire) & 1) == 0)
  {
    sub_10020();
  }
}

id sub_B204(uint64_t a1)
{
  [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 sendIfReady];
}

void sub_B5F8()
{
  if ((atomic_load_explicit(&qword_1D990, memory_order_acquire) & 1) == 0)
  {
    sub_10080();
  }
}

void sub_BDA4()
{
  if ((atomic_load_explicit(&qword_1D9A0, memory_order_acquire) & 1) == 0)
  {
    sub_100E0();
  }
}

MIDIPacket *sub_C6A8(MIDIPacketList *pktlist)
{
  v2 = &pktlist->packet[0].data[34];
  if (*&pktlist->packet[0].data[34])
  {
    (*(*&pktlist->numPackets + 16))(pktlist, &pktlist->packet[0].data[34]);
  }

  result = MIDIPacketListInit(v2);
  *&pktlist->packet[0].data[26] = result;
  return result;
}

uint64_t sub_C70C(MIDIPacketList *a1)
{
  *&a1->numPackets = off_188B0;
  sub_C6A8(a1);

  return sub_C764(a1);
}

uint64_t sub_C764(uint64_t a1)
{
  *a1 = off_188D8;
  if (*(a1 + 48))
  {
    __assert_rtn("~MIDIPacketEmitter", "MIDIPacketEmitter.h", 33, "TheList()->numPackets == 0");
  }

  sub_C888(a1 + 8);
  return a1;
}

void sub_C7DC(MIDIPacketList *a1)
{
  sub_C70C(a1);

  operator delete();
}

uint64_t sub_C814(uint64_t a1, const MIDIPacketList *a2)
{
  result = *(a1 + 1072);
  if (result)
  {
    result = MIDIReceived(result, a2);
  }

  *(a1 + 1076) = 0;
  return result;
}

void sub_C848(uint64_t a1)
{
  sub_C764(a1);

  operator delete();
}

uint64_t sub_C888(uint64_t a1)
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

uint64_t sub_C908(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1AC0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_C95C(uint64_t a1)
{
  v2 = sub_C9C8(a1);
  *v2 = off_188B0;
  *(v2 + 1072) = 0;
  *(v2 + 1076) = 0;
  *(a1 + 40) = MIDIPacketListInit((v2 + 48));
  return a1;
}

uint64_t sub_C9C8(uint64_t a1)
{
  *a1 = off_188D8;
  *(a1 + 32) = 0;
  *(a1 + 40) = MIDIPacketListInit((a1 + 48));
  return a1;
}

uint64_t sub_CA2C(uint64_t a1, uint64_t a2)
{
  *a1 = off_18900;
  *(a1 + 8) = a2;
  sub_1C40(a1 + 16, "BLEMIDIDataSender.mWriteQueueMutex");
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 11250000;
  *(a1 + 2144) = 0;
  *(a1 + 144) = 0;
  return a1;
}

void *sub_CA98(void *a1)
{
  *a1 = off_18900;
  if (a1[16])
  {
    MIDITimerTaskDispose();
  }

  sub_DA1C(a1 + 13);
  sub_1C8C((a1 + 2));
  return a1;
}

uint64_t sub_CAFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_CB14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void sub_CB30(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = (*(*(a1 + 16) + 16))(a1 + 16);
  *(a1 + 128) = MIDITimerTaskCreate();
  sub_CD8C();
  v4 = qword_1D9A8;
  if (os_log_type_enabled(qword_1D9A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 128);
    *buf = 136315650;
    v7 = "BTLEMIDIDataSender.mm";
    v8 = 1024;
    v9 = 67;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created mWriteSignalTimer = %p", buf, 0x1Cu);
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }
}

void sub_CC84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1844(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_CCA8(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = (*(*(a1 + 16) + 16))(a1 + 16);
  if (((*(*a1 + 8))(a1) & 1) == 0)
  {
    sub_D5E8(a1);
    *(a1 + 2144) = 0;
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }
}

void sub_CD8C()
{
  if ((atomic_load_explicit(&qword_1D9B0, memory_order_acquire) & 1) == 0)
  {
    sub_10140();
  }
}

void *sub_CDBC(void *a1)
{
  v2 = a1 + 2;
  v3 = (*(a1[2] + 16))(a1 + 2);
  if (v2[14])
  {
    sub_CD8C();
    v4 = qword_1D9A8;
    if (os_log_type_enabled(qword_1D9A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[16];
      *buf = 136315650;
      v9 = "BTLEMIDIDataSender.mm";
      v10 = 1024;
      v11 = 76;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disposing of mWriteSignalTimer %p", buf, 0x1Cu);
    }

    v6 = a1[16];
    MIDITimerTaskDispose();
    a1[16] = 0;
  }

  result = sub_DA6C(a1 + 13);
  if (v3)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_CF10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1844(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CF34(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 4294956463;
  }

  v17 = a1 + 16;
  v18 = (*(*(a1 + 16) + 16))();
  if (*a2 >= 1)
  {
    v8 = a2 + 1;
    v9 = a1 + 104;
    v10 = *v8;
    v11 = *(v8 + 4);
    if (v11 > 0x40)
    {
      v12 = malloc_type_malloc(*(v8 + 4), 0x100004077774924uLL);
      memcpy(v12, v8 + 10, v11);
    }

    else
    {
      memcpy(&__dst, v8 + 10, *(v8 + 4));
    }

    v21 = a4;
    v22 = 0;
    v20 = a3;
    if (!v10)
    {
      v10 = mach_absolute_time();
    }

    if (*(a1 + 112) != v9)
    {
      v13 = *(a1 + 112);
      do
      {
        if (*(v13 + 16) > v10)
        {
          break;
        }

        v13 = *(v13 + 8);
      }

      while (v13 != v9);
    }

    operator new();
  }

  if (!*(a1 + 2144))
  {
    *(a1 + 2144) = 1;
    v14 = *(a1 + 128);
    mach_absolute_time();
    v15 = *(a1 + 136);
    __udivti3();
    MIDITimerTaskSetNextWakeTime();
  }

  if (v18)
  {
    (*(*v17 + 24))(v17);
  }

  return 0;
}

void sub_D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DAD0(va);
  _Unwind_Resume(a1);
}

void sub_D1D4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 24);
  v49 = 0;
  if (((*(*a1 + 8))(a1) & 1) != 0 || !*(v3 + 120))
  {
    return;
  }

  if (v5 == *(a2 + 24))
  {
    *a3 = *(*(v3 + 112) + 104);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_64:
    LODWORD(v4) = 0;
    goto LABEL_78;
  }

  if (!v4)
  {
    goto LABEL_64;
  }

LABEL_5:
  v45 = 0;
  v43 = v3;
  v44 = 0;
  v47 = 0;
  v6 = (v3 + 104);
  while (1)
  {
    for (i = *(v3 + 112); i != v6; i = i[1])
    {
      if (i[13] == *a3 && i[14] == a3[1])
      {
        break;
      }
    }

    if (i == v6)
    {
      goto LABEL_78;
    }

    v8 = i[4];
    if (v8)
    {
      v9 = i[4];
    }

    else
    {
      v9 = i + 5;
    }

    v10 = i[15];
    if (v5 == *(a2 + 24))
    {
      [BLEMIDIAccessor splitOffset:[BLEMIDIAccessor timeStampOffset:i[2]] intoHeaderByte:&v49 + 1 timeStampByte:&v49];
      *v5++ = HIBYTE(v49);
      --v4;
      v8 = i[4];
    }

    v11 = i[15];
    v12 = *(v9 + v10);
    if (!v8)
    {
      v8 = i + 5;
    }

    v13 = v8 + v11;
    v14 = *(i + 6);
    v15 = sub_F3C(v8 + v11, v8 + v14);
    v16 = v15 - v13;
    if (v11 == v14)
    {
      v16 = 0;
    }

    v18 = *(v15 - 1) == 247 && v16 > 1;
    LODWORD(v19) = v16 - v18;
    v20 = v19;
    if (v19 < 2)
    {
      v22 = 0;
      v21 = 0;
LABEL_33:
      v19 = v19;
      goto LABEL_34;
    }

    v21 = 0;
    v22 = 0;
    if (v44 != i[2])
    {
      goto LABEL_33;
    }

    v19 = v19;
    if (v12 < 0)
    {
      v22 = v47 == *(v9 + v10);
      v21 = v47 == *(v9 + v10);
      if (v47 == *(v9 + v10))
      {
        v19 = v19 - !v45;
      }

      else
      {
        v19 = v19;
      }
    }

LABEL_34:
    LODWORD(v23) = !v21;
    v23 = v12 < 0 ? v23 : 0;
    if (v19 > v4 - v23)
    {
      break;
    }

    v24 = (v12 & 0x80u) == 0 || v21;
    if (v24 != 1)
    {
LABEL_44:
      [BLEMIDIAccessor splitOffset:[BLEMIDIAccessor timeStampOffset:i[2] intoHeaderByte:v43] timeStampByte:&v49 + 1, &v49];
      *v5++ = v49;
      --v4;
      v44 = i[2];
      v25 = *(v9 + v10);
      v26 = *(v9 + v10);
      v27 = v26 > 0xF7;
      v28 = v47;
      if ((v26 & 0xF8) == 0xF0)
      {
        v28 = 0;
        v27 = 0;
      }

      v29 = v25 < -16;
      if (v25 >= -16)
      {
        v30 = v28;
      }

      else
      {
        v30 = *(v9 + v10);
      }

      v47 = v30;
      v31 = !v29 && v27;
      v45 = v31;
      goto LABEL_53;
    }

    if (v21)
    {
      if (v45)
      {
        goto LABEL_44;
      }

      v45 = 0;
    }

LABEL_53:
    v32 = v20 - v21;
    v33 = i[4];
    if (!v33)
    {
      v33 = i + 5;
    }

    memcpy(v5, v33 + i[15] + v22, v32);
    v34 = v32 + v22 + i[15];
    i[15] = v34;
    v3 = v43;
    if (v34 == *(i + 6))
    {
      v35 = i[4];
      if (v35)
      {
        free(v35);
      }

      v37 = *i;
      v36 = i[1];
      *(v37 + 8) = v36;
      *v36 = v37;
      --*(v43 + 120);
      operator delete(i);
    }

    v4 -= v32;
    if (*(v43 + 120))
    {
      v5 += v32;
      if (v4)
      {
        continue;
      }
    }

    goto LABEL_78;
  }

  v38 = v4 - ((v12 >> 7) & 1);
  if ((v12 & 0x80000000) == 0)
  {
    v39 = i + 5;
    if (!v38)
    {
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v40 = i[4];
  v39 = i + 5;
  if (!v40)
  {
    v40 = i + 5;
  }

  if (*(v40 + i[15]) == 240 && v4 != ((v12 >> 7) & 1))
  {
    [BLEMIDIAccessor splitOffset:[BLEMIDIAccessor timeStampOffset:i[2]] intoHeaderByte:&v49 + 1 timeStampByte:&v49];
    *v5++ = v49;
    LODWORD(v4) = v4 - 1;
LABEL_75:
    v42 = i[4];
    if (!v42)
    {
      v42 = v39;
    }

    memcpy(v5, v42 + i[15], v38);
    i[15] += v38;
    LODWORD(v4) = v4 - v38;
  }

LABEL_78:
  *(a3 + 4) = *(a2 + 40) - v4;
}

void sub_D5E8(void *a1)
{
  while (a1[15] && ((*(*a1 + 8))(a1) & 1) == 0)
  {
    sub_F8F0(a1[1] - 8, *(a1[14] + 104));
    if (!v13)
    {
      __assert_rtn("_DoWrite", "BTLEMIDIDataSender.mm", 432, "writeBuffer != nullptr");
    }

    if (*(v13 + 44) == 1)
    {
      sub_CD8C();
      v2 = qword_1D9A8;
      if (os_log_type_enabled(qword_1D9A8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v19[0]) = 136315394;
        *(v19 + 4) = "BTLEMIDIDataSender.mm";
        WORD2(v19[1]) = 1024;
        *(&v19[1] + 6) = 436;
        v3 = v19;
        v4 = v2;
        v5 = "%25s:%-5d ERROR: All BLE MIDI data buffers are in use. Is Bluetooth backed up?";
LABEL_12:
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, v5, v3, 0x12u);
      }
    }

    else
    {
      atomic_fetch_add((v13 + 8), 1u);
      memset(v19, 0, sizeof(v19));
      sub_D1D4(a1, v13, v19);
      v6 = v19[1];
      if (v19[1])
      {
        v7 = v19[0];
        if (!v19[0] || v7 == [*(a1[1] + 104) validatePeripheral:v19[0]])
        {
          v10 = SLODWORD(v19[2]);
          if (LODWORD(v19[2]))
          {
            v11 = objc_autoreleasePoolPush();
            *(v13 + 44) = 1;
            v12 = [[NSData alloc] initWithBytesNoCopy:*(v13 + 24) length:v10 freeWhenDone:0];
            if (v7)
            {
              [v7 writeValue:v12 forCharacteristic:v6 type:1];
              *(v13 + 44) = 0;
              if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v13 + 16))();
              }

              bzero(*(v13 + 24), *(v13 + 40));
            }

            else
            {
              [objc_msgSend(*(a1[1] + 112) "bleDevice")];
              [(**a1)(a1) enqueue:v12];
            }

            objc_autoreleasePoolPop(v11);
          }

          v9 = 1;
          goto LABEL_14;
        }
      }

      sub_CD8C();
      v8 = qword_1D9A8;
      if (os_log_type_enabled(qword_1D9A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "BTLEMIDIDataSender.mm";
        v17 = 1024;
        v18 = 449;
        v3 = buf;
        v4 = v8;
        v5 = "%25s:%-5d [!] BLEMIDIDataSender::_DoWrite() not doing any work";
        goto LABEL_12;
      }
    }

    v9 = 0;
LABEL_14:
    if (v14)
    {
      sub_2C18(v14);
    }

    if ((v9 & 1) == 0)
    {
      return;
    }
  }
}

void sub_D900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2C18(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_D928(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  v5 = (*(*(a1 + 16) + 16))(a1 + 16);
  v6 = v4[12];
  while (v6 != v4 + 11)
  {
    if (v6[13] == a2)
    {
      v7 = v6[4];
      if (v7)
      {
        free(v7);
      }

      v8 = *v6;
      v9 = v6[1];
      *(v8 + 8) = v9;
      *v9 = v8;
      --*(a1 + 120);
      operator delete(v6);
      v6 = v9;
    }

    else
    {
      v6 = v6[1];
    }
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

void *sub_DA1C(void *a1)
{
  for (i = a1[1]; i != a1; i = i[1])
  {
    v3 = i[4];
    if (v3)
    {
      free(v3);
    }
  }

  sub_DA6C(a1);
  return a1;
}

void *sub_DA6C(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

_BYTE *sub_DAD0(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 24))();
  }

  return a1;
}

uint64_t NewBLEMIDIDriver(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0xDEu, 0x95u, 0x74u, 0xFu, 0xE4u, 0x11u, 0xD4u, 0xBBu, 0x1Au, 0, 0x50u, 0xE4u, 0xCEu, 0xA5u, 0x26u);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

void sub_DF68(_Unwind_Exception *a1)
{
  sub_CAF8(v1 + 16);
  sub_2FBC(v1);
  _Unwind_Resume(a1);
}

void sub_DFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_FF4();
  sub_F98C(v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_17AC(va);
  sub_FCF8(v6 + 8);
  _Unwind_Resume(a1);
}

void sub_E0D0(uint64_t a1, xpc_object_t xdict)
{
  v3 = *(a1 + 32);
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string && !strcmp(string, "MyMIDIService"))
  {
    v5 = xpc_dictionary_get_string(xdict, "deviceID");
    v6 = xpc_dictionary_get_string(xdict, "name");
    v7 = v6;
    if (v5 && v6)
    {
      v8 = [NSString stringWithUTF8String:v5];
      v9 = [NSString stringWithUTF8String:v7];

      sub_E2C0(v3, v8, v9);
    }

    else
    {
      sub_E290();
      v10 = qword_1D9C8;
      if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
      {
        v11 = "(null deviceID)";
        if (v5)
        {
          v11 = v5;
        }

        v14 = "BTLEMIDIDriver.mm";
        v15 = 1024;
        v16 = 176;
        v12 = "null name";
        v13 = 136315906;
        v18 = v11;
        v17 = 2080;
        if (v7)
        {
          v12 = v7;
        }

        v19 = 2080;
        v20 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d AppleMIDIBluetoothDriver received an invalid XPC event: %s, %s", &v13, 0x26u);
      }
    }
  }
}

void sub_E290()
{
  if ((atomic_load_explicit(&qword_1D9D0, memory_order_acquire) & 1) == 0)
  {
    sub_101A0();
  }
}

id sub_E2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_E290();
  v6 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
  {
    v8 = 136315906;
    v9 = "BTLEMIDIDriver.mm";
    v10 = 1024;
    v11 = 552;
    v12 = 2112;
    v13 = a2;
    v14 = 2112;
    v15 = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [*] BLEMIDIDriver::ReceiveXPCConnection(%@, %@)", &v8, 0x26u);
  }

  [*(a1 + 112) xpcReceiveUUID:a2 withName:a3];
  return sub_ECF4(a1);
}

void *sub_E3B8(uint64_t a1)
{
  *a1 = off_18920;
  [*(a1 + 112) cancelAllConnections];
  [*(a1 + 120) removeMIDIService];

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_CAF8((a1 + 128));

  return sub_2FBC(a1);
}

void sub_E440(uint64_t a1)
{
  sub_E3B8(a1);

  operator delete();
}

uint64_t sub_E478(uint64_t a1)
{
  sub_E290();
  v2 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "BTLEMIDIDriver.mm";
    v27 = 1024;
    v28 = 229;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [+] BLEMIDIDriver::Start()", buf, 0x12u);
  }

  v3 = off_1D8B0;
  sub_E9F4(a1);
  if (*(a1 + 2280))
  {
    [*(a1 + 120) checkAddMIDIService];
  }

  else
  {
    *(a1 + 2280) = 1;
  }

  if ((byte_1D9B8 & 1) == 0)
  {
    sub_EA6C();
  }

  v4 = +[BLEMIDIAccessor nullDevice];
  *(a1 + 100) = v4;
  v5 = (a1 + 100);
  if (v4)
  {
    v6 = kMIDIPropertyOffline;
    goto LABEL_10;
  }

  sub_E290();
  v7 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "BTLEMIDIDriver.mm";
    v27 = 1024;
    v28 = 244;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Creating null device ...", buf, 0x12u);
  }

  v8 = MIDIDeviceCreate((a1 + 8), off_1D8B8, off_1D8C0, off_1D8C8, (a1 + 100));
  sub_E290();
  v9 = qword_1D9C8;
  if (v8)
  {
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "BTLEMIDIDriver.mm";
      v27 = 1024;
      v28 = 247;
      v29 = 1024;
      v30 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] Error %d creating BLE MIDI null device. No new Bluetooth connections are possible.", buf, 0x18u);
    }

    return 4294956463;
  }

  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_DEBUG))
  {
    v17 = *v5;
    *buf = 136315650;
    v26 = "BTLEMIDIDriver.mm";
    v27 = 1024;
    v28 = 250;
    v29 = 1024;
    v30 = v17;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Null device created with MIDIDeviceRef %u", buf, 0x18u);
  }

  MIDIObjectSetIntegerProperty(*v5, @"is BLE MIDI null device", 1);
  v6 = kMIDIPropertyOffline;
  MIDIObjectSetIntegerProperty(*v5, kMIDIPropertyOffline, 1);
  v18 = MIDISetupAddDevice(*v5);
  sub_E290();
  v19 = qword_1D9C8;
  if (v18)
  {
    if (!os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315650;
    v26 = "BTLEMIDIDriver.mm";
    v27 = 1024;
    v28 = 260;
    v29 = 1024;
    v30 = v18;
    v20 = "%25s:%-5d [!] MIDISetupAddDevice = %d";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    v23 = *v5;
    *buf = 136315650;
    v26 = "BTLEMIDIDriver.mm";
    v27 = 1024;
    v28 = 262;
    v29 = 1024;
    v30 = v23;
    v20 = "%25s:%-5d      Successfully added null device = %u";
    v21 = v19;
    v22 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(&dword_0, v21, v22, v20, buf, 0x18u);
LABEL_10:
  MIDIObjectSetIntegerProperty(*v5, v6, 0);
  str = 0;
  MIDIObjectGetStringProperty(*v5, @"Bluetooth Advertising Name", &str);
  if (str)
  {
    CFRelease(str);
  }

  else
  {
    MIDIObjectSetStringProperty(*v5, @"Bluetooth Advertising Name", v3);
  }

  if (qword_1D9C0)
  {
    CFRelease(qword_1D9C0);
    qword_1D9C0 = 0;
  }

  v10 = MIDIClientCreate(@"BLE MIDI Client", sub_EBB0, a1, (a1 + 104));
  sub_E290();
  v11 = qword_1D9C8;
  if (v10)
  {
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "BTLEMIDIDriver.mm";
      v27 = 1024;
      v28 = 287;
      v29 = 1024;
      v30 = v10;
      v12 = "%25s:%-5d [!]] MIDIClientCreate = %d, no notifications can be received.";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_28:
      _os_log_impl(&dword_0, v13, v14, v12, buf, 0x18u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "BTLEMIDIDriver.mm";
      v27 = 1024;
      v28 = 291;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d      BLE MIDI client process created and awaiting notifications.", buf, 0x12u);
    }

    sub_ECF4(a1);
    sub_CB30(a1 + 128);
    *(a1 + 96) = 0;
    sub_E290();
    v15 = qword_1D9C8;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "BTLEMIDIDriver.mm";
      v27 = 1024;
      v28 = 301;
      v29 = 1024;
      v30 = 0;
      v12 = "%25s:%-5d [-] BLEMIDIDriver::Start() = %d";
      v13 = v15;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_28;
    }
  }

  return v10;
}

ItemCount sub_E9F4(uint64_t a1)
{
  result = MIDIGetDriverDeviceList((a1 + 8));
  if (result)
  {
    v2 = result;
    result = MIDIDeviceListGetNumberOfDevices(result);
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        Device = MIDIDeviceListGetDevice(v2, i);
        MIDIObjectSetIntegerProperty(Device, kMIDIPropertyOffline, 1);
        result = MIDIDeviceListGetNumberOfDevices(v2);
      }
    }
  }

  return result;
}

void sub_EA6C()
{
  if ((byte_1D9B8 & 1) == 0)
  {
    if (qword_1D9C0)
    {
      off_1D8C0 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8C0, off_1D8C0, @"BTLEMIDILocalizable");
      off_1D8F0 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8F0, off_1D8F0, @"BTLEMIDILocalizable");
      off_1D8C8 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8C8, off_1D8C8, @"BTLEMIDILocalizable");
      off_1D8B8 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8B8, off_1D8B8, @"BTLEMIDILocalizable");
      off_1D8B0 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8B0, off_1D8B0, @"BTLEMIDILocalizable");
      off_1D8D0 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8D0, off_1D8D0, @"BTLEMIDILocalizable");
      off_1D8D8 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8D8, off_1D8D8, @"BTLEMIDILocalizable");
      off_1D8E0 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8E0, off_1D8E0, @"BTLEMIDILocalizable");
      off_1D8E8 = CFBundleCopyLocalizedString(qword_1D9C0, off_1D8E8, off_1D8E8, @"BTLEMIDILocalizable");
      byte_1D9B8 = 1;
    }
  }
}

void sub_EBB0(uint64_t a1, uint64_t a2)
{
  if (*a1 == 4 && !*(a1 + 12) && *(a1 + 8) == *(a2 + 100) && (CFEqual(*(a1 + 16), @"BLE MIDI Local Peripheral") || CFEqual(*(a1 + 16), @"BLE MIDI Remote Peripheral") || CFEqual(*(a1 + 16), @"disconnect device")))
  {
    sub_E290();
    v4 = qword_1D9C8;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 16);
      v6 = 136315650;
      v7 = "BTLEMIDIDriver.mm";
      v8 = 1024;
      v9 = 357;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] Property set on null device: %@", &v6, 0x1Cu);
    }

    sub_EF60(a2, a1);
  }
}

id sub_ECF4(uint64_t a1)
{
  if ([*(a1 + 120) isLECapableHardware])
  {
    [*(a1 + 120) activateConnectedUUID];
  }

  result = [*(a1 + 112) isLECapableHardware];
  if (result)
  {
    v3 = *(a1 + 112);

    return [v3 activateConnectedUUIDs];
  }

  return result;
}

uint64_t sub_ED54(uint64_t a1)
{
  sub_E290();
  v2 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "BTLEMIDIDriver.mm";
    v7 = 1024;
    v8 = 307;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [+] BLEMIDIDriver::Stop()", &v5, 0x12u);
  }

  *(a1 + 96) = 1;
  sub_CDBC((a1 + 128));
  MIDIClientDispose(*(a1 + 104));
  *(a1 + 104) = 0;
  sub_E9F4(a1);
  sub_E290();
  v3 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "BTLEMIDIDriver.mm";
    v7 = 1024;
    v8 = 317;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d [-] BLEMIDIDriver::Stop()", &v5, 0x12u);
  }

  return 0;
}

uint64_t sub_EEA0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = [*(a1 + 112) validatePeripheral:?];
    if (!v7)
    {
      return 4294956454;
    }

    v8 = v7;
    v9 = [*(a1 + 112) deviceForPeripheral:v7];
    if (!v9)
    {
      return 4294956454;
    }
  }

  else
  {
    v9 = [*(a1 + 120) bleDevice];
    v8 = 0;
    if (!v9)
    {
      return 4294956454;
    }
  }

  if (![v9 dev])
  {
    return 4294956454;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  return sub_CF34(a1 + 128, a2, v8, v10);
}

void sub_EF60(uint64_t a1, uint64_t a2)
{
  cf = 0;
  outDict = 0;
  if (!*(a1 + 100))
  {
    return;
  }

  sub_E290();
  v4 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "BTLEMIDIDriver.mm";
    v26 = 1024;
    v27 = 392;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [+] BLEMIDIDriver::NullDevicePropertyChanged()", buf, 0x12u);
  }

  if (CFEqual(*(a2 + 16), @"activate all devices"))
  {
    sub_ECF4(a1);
    return;
  }

  v5 = CFEqual(*(a2 + 16), @"disconnect device");
  v6 = *(a1 + 100);
  if (v5)
  {
    if (!MIDIObjectGetStringProperty(v6, @"disconnect device", &cf))
    {
      MIDIObjectRemoveProperty(*(a1 + 100), @"disconnect device");
      v7 = [BLEMIDIAccessor midiDeviceForUUID:cf isLocalPeripheral:0 isRemotePeripheral:1];
      sub_E290();
      v8 = qword_1D9C8;
      if (v7)
      {
        if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v25 = "BTLEMIDIDriver.mm";
          v26 = 1024;
          v27 = 402;
          v28 = 2112;
          v29[0] = cf;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d      Request to deactivate UUID: %@", buf, 0x1Cu);
        }

        sub_F37C(a1, v7);
      }

      else if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "BTLEMIDIDriver.mm";
        v26 = 1024;
        v27 = 405;
        v28 = 2112;
        v29[0] = cf;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] Couldn't find any connected peripherals with UUID %@.", buf, 0x1Cu);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    return;
  }

  DictionaryProperty = MIDIObjectGetDictionaryProperty(v6, *(a2 + 16), &outDict);
  if (DictionaryProperty == -10835)
  {
    return;
  }

  v10 = DictionaryProperty;
  if (DictionaryProperty)
  {
    sub_E290();
    v20 = qword_1D9C8;
    if (!os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v21 = *(a2 + 16);
    *buf = 136315906;
    v25 = "BTLEMIDIDriver.mm";
    v26 = 1024;
    v27 = 424;
    v28 = 1024;
    LODWORD(v29[0]) = v10;
    WORD2(v29[0]) = 2112;
    *(v29 + 6) = v21;
    v16 = "%25s:%-5d [!] BLEMIDIDriver::NullDevicePropertyChanged() - Error %d encountered for property %@.";
    v17 = v20;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 34;
LABEL_23:
    _os_log_impl(&dword_0, v17, v18, v16, buf, v19);
    return;
  }

  MIDIObjectRemoveProperty(*(a1 + 100), *(a2 + 16));
  v11 = [(__CFDictionary *)outDict objectForKey:@"BLE MIDI Device UUID"];
  v12 = [(__CFDictionary *)outDict objectForKey:kMIDIPropertyName];
  if (v11)
  {
    v13 = v12;
    sub_E290();
    v14 = qword_1D9C8;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "BTLEMIDIDriver.mm";
      v26 = 1024;
      v27 = 432;
      v28 = 2112;
      v29[0] = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d      Request to activate UUID: %@", buf, 0x1Cu);
    }

    [*(a1 + 112) activateUUID:v11 withName:{v13, cf}];
  }

  CFRelease(outDict);
  sub_E290();
  v15 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "BTLEMIDIDriver.mm";
    v26 = 1024;
    v27 = 436;
    v16 = "%25s:%-5d [-] BLEMIDIDriver::NullDevicePropertyChanged()";
    v17 = v15;
    v18 = OS_LOG_TYPE_INFO;
    v19 = 18;
    goto LABEL_23;
  }
}

uint64_t sub_F37C(uint64_t a1, uint64_t obj)
{
  if (!obj || *(a1 + 100) == obj)
  {
    return 0;
  }

  MIDIObjectSetIntegerProperty(obj, kMIDIPropertyOffline, 1);
  str = 0;
  StringProperty = MIDIObjectGetStringProperty(obj, @"BLE MIDI Device UUID", &str);
  if (!str || StringProperty)
  {
    sub_E290();
    v7 = qword_1D9C8;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "BTLEMIDIDriver.mm";
      v12 = 1024;
      v13 = 456;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Device has no UUID. Returing kMIDINotPermitted.", buf, 0x12u);
    }

    return 4294956452;
  }

  else
  {
    if ([BLEMIDIAccessor deviceIsRemotePeripheral:obj])
    {
      v4 = sub_F538(a1, str);
    }

    else
    {
      sub_E290();
      v8 = qword_1D9C8;
      if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v11 = "BTLEMIDIDriver.mm";
        v12 = 1024;
        v13 = 463;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d WARNING: Can't disconnect remote central, but the device was set to offline.", buf, 0x12u);
      }

      v4 = 0;
    }

    CFRelease(str);
  }

  return v4;
}

uint64_t sub_F538(uint64_t a1, uint64_t a2)
{
  sub_E290();
  v4 = qword_1D9C8;
  if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "BTLEMIDIDriver.mm";
    v12 = 1024;
    v13 = 471;
    v14 = 2112;
    v15 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [+] BLEMIDIDriver::DisconnectDeviceWithUUID(%@)", &v10, 0x1Cu);
  }

  v5 = [*(a1 + 112) peripheralWithUUID:a2];
  if (v5)
  {
    [*(a1 + 112) cancelConnectionForPeripheral:v5];
    sub_E290();
    v6 = qword_1D9C8;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "BTLEMIDIDriver.mm";
      v12 = 1024;
      v13 = 483;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [-] BLEMIDIDriver::DisconnectDeviceWithUUID = noErr", &v10, 0x12u);
    }

    return 0;
  }

  else
  {
    sub_E290();
    v8 = qword_1D9C8;
    v7 = 4294956454;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "BTLEMIDIDriver.mm";
      v12 = 1024;
      v13 = 478;
      v14 = 2112;
      v15 = a2;
      v16 = 1024;
      v17 = -10842;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] BLEMIDIDriver::DisconnectDevice() - No peripheral found with uuid %@, returning %d", &v10, 0x22u);
    }
  }

  return v7;
}

id sub_F750(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 112) peripheralWithUUID:a2];
  if (result)
  {

    return [result setDelegate:0];
  }

  return result;
}

id sub_F790(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 112) peripheralWithUUID:a2];
  v3 = v2;
  if (v2 && [v2 name])
  {
    v4 = [v3 name];

    return [NSString stringWithString:v4];
  }

  else
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"peripheral = %@, peripheral.name = %@. Returning nil", v3, [v3 name]);
    sub_E290();
    v6 = qword_1D9C8;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v9 = "BTLEMIDIDriver.mm";
      v10 = 1024;
      v11 = 545;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@", buf, 0x1Cu);
    }

    return 0;
  }
}

id sub_F8F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 112) deviceForPeripheral:a2];
  }

  else
  {
    v2 = [*(a1 + 120) bleDevice];
  }

  v3 = v2;
  if (!v2)
  {
    sub_10200();
  }

  if ([v2 usage])
  {
    v5 = [v3 nextBufferIndex];

    return [v3 bufferAtIndex:v5];
  }

  else
  {

    return [v3 centralBuffer];
  }
}

uint64_t sub_F98C(uint64_t a1, uint64_t a2)
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

void *sub_FA24(void *a1)
{
  *a1 = off_189B0;
  sub_FCF8((a1 + 2));
  return a1;
}

void sub_FA68(void *a1)
{
  *a1 = off_189B0;
  sub_FCF8((a1 + 2));

  operator delete();
}

uint64_t sub_FB48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_189B0;
  a2[1] = v2;
  return sub_F98C((a2 + 2), a1 + 16);
}

void sub_FB80(void *a1)
{
  sub_FCF8(a1 + 16);

  operator delete(a1);
}

uint64_t sub_FBC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_FC44(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_FCA4((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_FCA4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1AC0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_FCF8(uint64_t a1)
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

uint64_t sub_FDE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_189F8;
  a2[1] = v2;
  return result;
}

void sub_FE14(uint64_t a1, void *a2)
{
  if (*a2)
  {
    sub_E290();
    v3 = qword_1D9C8;
    if (os_log_type_enabled(qword_1D9C8, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "BTLEMIDIDriver.mm";
      v6 = 1024;
      v7 = 162;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d =====> NOTICE: All cached BLE devices being deleted, including the Null Device <=====", &v4, 0x12u);
    }

    **(a1 + 8) = 1;
  }
}

void *sub_FEEC(void *result)
{
  *result = 0;
  result[1] = 0;
  *(result + 21) = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_FEFC(uint64_t result)
{
  if (*(result + 16))
  {
    operator delete[]();
  }

  return result;
}

void sub_FFC0()
{
  if (__cxa_guard_acquire(&qword_1D970))
  {
    qword_1D968 = os_log_create("com.apple.coremidi", "blecen");

    __cxa_guard_release(&qword_1D970);
  }
}

void sub_10020()
{
  if (__cxa_guard_acquire(&qword_1D980))
  {
    qword_1D978 = os_log_create("com.apple.coremidi", "blelcp");

    __cxa_guard_release(&qword_1D980);
  }
}

void sub_10080()
{
  if (__cxa_guard_acquire(&qword_1D990))
  {
    qword_1D988 = os_log_create("com.apple.coremidi", "btlets");

    __cxa_guard_release(&qword_1D990);
  }
}

void sub_100E0()
{
  if (__cxa_guard_acquire(&qword_1D9A0))
  {
    qword_1D998 = os_log_create("com.apple.coremidi", "btdrcv");

    __cxa_guard_release(&qword_1D9A0);
  }
}

void sub_10140()
{
  if (__cxa_guard_acquire(&qword_1D9B0))
  {
    qword_1D9A8 = os_log_create("com.apple.coremidi", "btdsnd");

    __cxa_guard_release(&qword_1D9B0);
  }
}

void sub_101A0()
{
  if (__cxa_guard_acquire(&qword_1D9D0))
  {
    qword_1D9C8 = os_log_create("com.apple.coremidi", "bledrv");

    __cxa_guard_release(&qword_1D9D0);
  }
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

void operator new()
{
    ;
  }
}