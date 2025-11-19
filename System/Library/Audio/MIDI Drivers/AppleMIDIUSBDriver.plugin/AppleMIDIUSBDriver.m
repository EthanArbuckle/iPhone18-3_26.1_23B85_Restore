void sub_838(int a1, void *a2, MIDIDeviceRef device, void *a4, const void **a5, uint64_t a6)
{
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(device);
  outValue = 0;
  if (NumberOfEntities >= 1)
  {
    v11 = 0;
    v58 = 0;
    v52 = NumberOfEntities & 0x7FFFFFFF;
    v53 = (NumberOfEntities - 1);
    if (a1)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0;
    }

    v50 = a1 ^ 1;
    v51 = (NumberOfEntities & 0x7FFFFFFF) - 1;
    v57 = a1;
    do
    {
      Entity = MIDIDeviceGetEntity(device, v11);
      v14 = Entity;
      if (v11 >= (a4[1] - *a4) >> 3)
      {
        MIDIObjectGetIntegerProperty(Entity, @"First Group", &outValue);
      }

      else
      {
        outValue = *(*a4 + 8 * v11 + 5);
      }

      v56 = v11;
      if (v53 == v11)
      {
        v60 = 0;
        IntegerProperty = MIDIObjectGetIntegerProperty(v14, kMIDIPropertyUMPCanTransmitGroupless, &v60);
        v16 = v60;
        if (IntegerProperty)
        {
          v16 = IntegerProperty;
        }

        v58 = v16;
      }

      NumberOfSources = MIDIEntityGetNumberOfSources(v14);
      NumberOfDestinations = MIDIEntityGetNumberOfDestinations(v14);
      if (a1 && NumberOfSources)
      {
        for (i = 0; i != NumberOfSources; ++i)
        {
          v19 = v14;
          Source = MIDIEntityGetSource(v14, i);
          v21 = a5[1];
          if (!v58)
          {
            v30 = i + outValue;
            while (1)
            {
              v31 = *a5;
              v32 = v21 - *a5;
              v33 = v32 >> 2;
              if (v32 >> 2 >= v30)
              {
                break;
              }

              v34 = a5[2];
              if (v21 >= v34)
              {
                v36 = v33 + 1;
                if ((v33 + 1) >> 62)
                {
                  goto LABEL_61;
                }

                v37 = v34 - v31;
                if (v37 >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                v28 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
                v38 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_D88(a5, v38);
                }

                *(4 * v33) = 0;
                v35 = 4 * v33 + 4;
                memcpy(0, v31, v32);
                v39 = *a5;
                *a5 = 0;
                a5[1] = v35;
                a5[2] = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v21 = 0;
                v35 = (v21 + 1);
              }

              a5[1] = v35;
              v61 = 0;
              v60 = 0;
              sub_BD8(a6, &v60);
              v21 = a5[1];
            }
          }

          v22 = a5[2];
          if (v21 >= v22)
          {
            v24 = *a5;
            v25 = v21 - *a5;
            v26 = (v25 >> 2) + 1;
            if (v26 >> 62)
            {
LABEL_61:
              sub_CE0();
            }

            v27 = v22 - v24;
            if (v27 >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
            v29 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              sub_D88(a5, v29);
            }

            v40 = (4 * (v25 >> 2));
            *v40 = Source;
            v23 = v40 + 1;
            memcpy(0, v24, v25);
            v41 = *a5;
            *a5 = 0;
            a5[1] = v23;
            a5[2] = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            *v21 = Source;
            v23 = v21 + 1;
          }

          a1 = v57;
          v14 = v19;
          a5[1] = v23;
          v61 = 0;
          v60 = 0;
          sub_BD8(a6, &v60);
        }
      }

      if (NumberOfDestinations)
      {
        v42 = 0;
        v43 = v50;
        if (!v58)
        {
          v43 = 1;
        }

        if (v51 == v56)
        {
          v44 = v43;
        }

        else
        {
          v44 = 1;
        }

        do
        {
          v45 = v42 + outValue;
          Destination = MIDIEntityGetDestination(v14, v42);
          if (a1)
          {
            v47 = v45;
          }

          else
          {
            v47 = 0;
          }

          if (--NumberOfDestinations)
          {
            v48 = v47;
          }

          else
          {
            v48 = 255;
          }

          if (v44)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          MIDIEndpointSetRefCons(Destination, v12, v49);
          ++v42;
        }

        while (NumberOfDestinations);
      }

      v11 = v56 + 1;
    }

    while (v56 + 1 != v52);
  }
}

void sub_BD8(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 1);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_CE0();
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
      sub_E04(a1, v11);
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

void sub_CF8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_D54(exception, a1);
}

std::logic_error *sub_D54(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_D88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_DD0();
}

void sub_DD0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_E04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_DD0();
}

void sub_E5C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void *sub_EA0()
{
  if ((atomic_load_explicit(&qword_2C108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2C108))
  {
    sub_11DC(&unk_2C0A0);
    __cxa_guard_release(&qword_2C108);
  }

  return &unk_2C0A0;
}

uint64_t sub_F18(const __CFString *a1, _BYTE *a2)
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

BOOL sub_1014(const __CFBoolean *a1, _BYTE *a2)
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

uint64_t sub_11DC(uint64_t a1)
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
  handler[2] = sub_12E0;
  handler[3] = &unk_285B0;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(a1 + 96));
  return a1;
}

void sub_12E8(uint64_t a1)
{
  std::mutex::lock(a1);
  CFSetApplyFunction(*(a1 + 64), sub_157C, 0);
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  while (v2 != v3)
  {
    sub_14D4(v2);
    v2 += 6;
  }

  std::mutex::unlock(a1);
}

uint64_t sub_1378(uint64_t a1, CFTypeRef cf1, const void *a3)
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

void sub_13E8(uint64_t a1, const void *a2, void *a3, uint64_t a4)
{
  value = a3;
  v11 = a2;
  std::mutex::lock(a1);
  if ((sub_1378(a1, a2, a3) & 1) == 0)
  {
    CFRetain(a2);
    CFRetain(a3);
    v8 = *(a1 + 80);
    if (v8 >= *(a1 + 88))
    {
      v9 = sub_1598(a1 + 72, &v11, &value, a4);
    }

    else
    {
      sub_16E0(*(a1 + 80), &v11, &value, a4);
      v9 = v8 + 48;
      *(a1 + 80) = v8 + 48;
    }

    *(a1 + 80) = v9;
    CFSetAddValue(*(a1 + 64), value);
    sub_14D4((*(a1 + 80) - 48));
  }

  std::mutex::unlock(a1);
}

void sub_14B4(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_14D4(CFStringRef *a1)
{
  result = CFPreferencesCopyAppValue(*a1, a1[1]);
  if (result)
  {

    return sub_1528((a1 + 2), result);
  }

  return result;
}

uint64_t sub_1528(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1A58();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1598(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_CE0();
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
    sub_18B4(a1, v8);
  }

  v15 = 0;
  v16 = 48 * v4;
  sub_16E0((48 * v4), a2, a3, a4);
  v17 = 48 * v4 + 48;
  v9 = *(a1 + 8);
  v10 = 48 * v4 + *a1 - v9;
  sub_190C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1A04(&v15);
  return v14;
}

void sub_16CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A04(va);
  _Unwind_Resume(a1);
}

void *sub_16E0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *a3;
  sub_1788(v8, a4);
  *a1 = v5;
  a1[1] = v6;
  sub_1788((a1 + 2), v8);
  sub_1820(v8);
  return a1;
}

void sub_176C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1820(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1788(uint64_t a1, uint64_t a2)
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

uint64_t sub_1820(uint64_t a1)
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

void sub_18B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_DD0();
}

void sub_190C(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      *(v6 - 16) = *v7;
      v8 = sub_1984(v6, (v7 + 1));
      v7 += 3;
      v6 = v8 + 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_1820((v5 + 1));
      v5 += 3;
    }
  }
}

uint64_t sub_1984(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A04(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1820(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A58()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_1AA4(uint64_t a1, uint64_t a2)
{
  *a1 = off_285F8;
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
    *exception = &off_28598;
    exception[2] = v5;
  }

  return a1;
}

uint64_t sub_1BDC(uint64_t a1)
{
  *a1 = off_285F8;
  pthread_mutex_destroy((a1 + 24));
  return a1;
}

void sub_1C28(uint64_t a1)
{
  sub_1BDC(a1);

  operator delete();
}

BOOL sub_1C60(uint64_t a1)
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
      *exception = &off_28598;
      exception[2] = v6;
    }

    atomic_store(v2, (a1 + 16));
  }

  return v3 == 0;
}

void sub_1DA0(uint64_t a1)
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
      *exception = &off_28598;
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

uint64_t sub_1F28(uint64_t a1, char *a2)
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
      *exception = &off_28598;
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

uint64_t sub_2110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_28668;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  v7 = (a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v8 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  sub_2548();
  v9 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136316162;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 37;
    v26 = 2048;
    v27 = a1;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = a3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] IOServiceClient(%p)::IOServiceClient(notifyRunLoop %p, matchingDict %p", &v22, 0x30u);
  }

  if (IOMainPort(0, v6))
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 8);
  if (!v10)
  {
    return a1;
  }

  CFRetain(v10);
  v11 = IONotificationPortCreate(*v6);
  *v7 = v11;
  if (!v11)
  {
    goto LABEL_20;
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v11);
  *(a1 + 16) = RunLoopSource;
  if (!RunLoopSource)
  {
    goto LABEL_20;
  }

  CFRunLoopAddSource(*(a1 + 8), RunLoopSource, kCFRunLoopDefaultMode);
  sub_2548();
  v13 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    v22 = 136315906;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 50;
    v26 = 2048;
    v27 = v14;
    v28 = 2048;
    v29 = v15;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d      added runloop source %p to runloop %p", &v22, 0x26u);
  }

  CFRetain(*(a1 + 56));
  sub_2548();
  v16 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 56);
    v22 = 136315650;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 53;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d      mMatchingDict: %@", &v22, 0x1Cu);
  }

  if (IOServiceAddMatchingNotification(*(a1 + 32), "IOServiceMatched", *(a1 + 56), sub_2578, a1, v8))
  {
    goto LABEL_20;
  }

  sub_2548();
  v18 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315394;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 55;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d      signed up for matched notifications", &v22, 0x12u);
  }

  CFRetain(*(a1 + 56));
  if (IOServiceAddMatchingNotification(*(a1 + 32), "IOServiceTerminate", *(a1 + 56), sub_2660, a1, (a1 + 44)))
  {
LABEL_20:
    sub_1FFC8(a1);
    return a1;
  }

  sub_2548();
  v19 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315394;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 59;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d      signed up for terminated notifications", &v22, 0x12u);
  }

  *(a1 + 48) = 1;
  sub_2548();
  v20 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315650;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 63;
    v26 = 2048;
    v27 = a1;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] IOServiceClient(%p)::IOServiceClient() - success", &v22, 0x1Cu);
  }

  return a1;
}

void sub_2548()
{
  if ((atomic_load_explicit(&qword_2C118, memory_order_acquire) & 1) == 0)
  {
    sub_20090();
  }
}

uint64_t sub_2578(uint64_t a1, io_iterator_t a2)
{
  sub_2548();
  v4 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "IOServiceClient.cpp";
    v8 = 1024;
    v9 = 106;
    v10 = 2048;
    v11 = a1;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient::ServicePublishCallback(refcon %p, it %u)", &v6, 0x22u);
  }

  return sub_28B4(a1, a2);
}

uint64_t sub_2660(uint64_t a1, io_iterator_t a2)
{
  sub_2548();
  v4 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "IOServiceClient.cpp";
    v8 = 1024;
    v9 = 115;
    v10 = 2048;
    v11 = a1;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient::ServiceTerminateCallback(refcon %p, it %u)", &v6, 0x22u);
  }

  return sub_2934(a1, a2);
}

uint64_t sub_2748(uint64_t a1)
{
  *a1 = off_28668;
  sub_2548();
  v2 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "IOServiceClient.cpp";
    v13 = 1024;
    v14 = 76;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)::~IOServiceClient()", &v11, 0x1Cu);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      CFRunLoopRemoveSource(v3, v4, kCFRunLoopDefaultMode);
      CFRelease(*(a1 + 8));
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    IOObjectRelease(v6);
  }

  v7 = *(a1 + 44);
  if (v7)
  {
    IOObjectRelease(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    mach_port_deallocate(mach_task_self_, v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  return a1;
}

void sub_28A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_18A0(a1);
}

uint64_t sub_28B4(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      (*(*a1 + 16))(a1, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2934(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      (*(*a1 + 24))(a1, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_29B4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 48) == 1)
    {
      sub_2548();
      v2 = qword_2C110;
      if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
      {
        v4 = 136315650;
        v5 = "IOServiceClient.cpp";
        v6 = 1024;
        v7 = 130;
        v8 = 2048;
        v9 = a1;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)ScanServices() - emptying iterators ...", &v4, 0x1Cu);
      }

      *(a1 + 48) = 0;
      sub_28B4(a1, *(a1 + 40));
      sub_2934(a1, *(a1 + 44));
    }

    else
    {
      sub_200F0(a1, (a1 + 24));
    }
  }

  else
  {
    sub_2548();
    v3 = qword_2C110;
    if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = "IOServiceClient.cpp";
      v6 = 1024;
      v7 = 125;
      v8 = 2048;
      v9 = a1;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IOServiceClient(%p)::ScanServices() - mMainDevicePort == 0", &v4, 0x1Cu);
    }
  }
}

void sub_2B34(uint64_t a1, CFUUIDRef factoryID)
{
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = off_28698;
  *(a1 + 8) = &unk_2C000;
  *(a1 + 16) = factoryID;
  CFPlugInAddInstanceForFactory(factoryID);
  *(a1 + 24) = 1;
  v3 = off_28750;
  v4 = a1;
  operator new();
}

void sub_2D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_18A0(exception_object);
}

void *sub_2E20(void *a1, uint64_t *a2)
{
  sub_4770(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_46A0(v3);
  }

  return a1;
}

void *sub_2E6C(void *a1)
{
  *a1 = off_28698;
  v2 = a1[2];
  if (v2)
  {
    CFPlugInRemoveInstanceForFactory(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_46A0(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_46A0(v4);
  }

  return a1;
}

void sub_2ED8(void *a1)
{
  sub_2E6C(a1);

  operator delete();
}

uint64_t sub_2F10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_2F68(uint64_t a1, int a2, uint64_t a3)
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

uint64_t sub_3004(_DWORD *a1, CFUUIDBytes a2, void *a3)
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

uint64_t sub_31BC(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_31D0(uint64_t a1)
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

void *sub_338C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_28728;
  *a1 = off_28708;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void *sub_33F4(void *a1)
{
  *a1 = off_28708;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_3448(void *a1)
{
  *a1 = off_28708;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_34BC(uint64_t a1, _DWORD *a2)
{
  v6 = *(a1 + 8);
  (*(v6 + 8))(v7, a1 + 16);
  v8 = 0;
  v7[6] = &v9;
  if (*a2 == 2)
  {
    v5[0] = a1;
    v5[1] = &v6;
    sub_36C4(a2, v5);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v5[0] = &v6;
    sub_35F0(a2, v5);
  }

  return sub_462C(&v6);
}

void sub_3590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_462C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_35F0(uint64_t result, uint64_t *a2)
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
      result = sub_379C(v10, &v9, &v7);
      if (result)
      {
        do
        {
          v12 = v9;
          v11[0] = *a2;
          v11[1] = &v12;
          sub_384C(&v7, v11);
          v8 = 0;
          v9 = 0;
          v7 = 0;
          result = sub_379C(v10, &v9, &v7);
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

uint64_t sub_36C4(uint64_t result, uint64_t *a2)
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
      result = sub_379C(v11, &v10, &v8);
      if (result)
      {
        do
        {
          v13 = v10;
          v7 = *a2;
          *&v12 = a2[1];
          *(&v12 + 1) = &v13;
          sub_3E84((v7 + 64), &v8, &v12);
          v9 = 0;
          v10 = 0;
          v8 = 0;
          result = sub_379C(v11, &v10, &v8);
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

uint64_t sub_379C(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = byte_23008[v6 >> 28];
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

unsigned __int16 *sub_384C(unsigned __int16 *result, uint64_t *a2)
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
        result = sub_3CDC(v7, v27, &__dst, v6);
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
    result = sub_3CDC(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_22E50[BYTE2(v3) - 240];
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
          result = sub_3CDC(v7, v8, &__dst, v6);
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

uint64_t sub_3CDC(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
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
  sub_3E58(&v15, 0);
  v8 = a1 + 68;
  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  sub_3E58(&v15, 0);
  return v8;
}

uint64_t *sub_3E58(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return MIDI::LegacyPacketListDeleter::operator()();
  }

  return result;
}

unsigned __int16 *sub_3E84(unsigned __int16 *result, unsigned __int16 *a2, __int128 *a3)
{
  v5 = *a2;
  v30 = v3;
  v31 = v4;
  if (((1 << (v5 >> 28)) & 0xA02F) != 0)
  {
    v29 = *a3;
    v7 = a2;
    return sub_419C(v7, &v29);
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
          sub_419C(v27, &v29);
          v28 = 0;
          *&v27[8] = 0;
          *v27 = v26 & 0xFFFFFF80 | v9 & 0x7F | 0x2000;
          v29 = *a3;
          sub_419C(v27, &v29);
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
        return sub_419C(v7, &v29);
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
    sub_419C(v27, &v29);
    v28 = 0;
    *&v27[8] = 0;
    *v27 = (v23 | v17) - 256;
    v29 = *a3;
    sub_419C(v27, &v29);
    *v15 = v19;
    v15[1] = v16;
    v15[2] = v17;
LABEL_28:
    v28 = 0;
    *&v27[8] = 0;
    *v27 = v21 | (v9 >> 25) | 0x600;
    v29 = *a3;
    result = sub_419C(v27, &v29);
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

unsigned __int16 *sub_419C(unsigned __int16 *result, uint64_t *a2)
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
        result = sub_3CDC(v7, v27, &__dst, v6);
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
    result = sub_3CDC(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_22E50[BYTE2(v3) - 240];
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
          result = sub_3CDC(v7, v8, &__dst, v6);
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

uint64_t sub_462C(uint64_t a1)
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

void sub_46A0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t *sub_4770(uint64_t *result, uint64_t *a2)
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

void sub_47F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_482C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

double sub_48C4(uint64_t a1, int a2)
{
  *a1 = off_287E8;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  return result;
}

void *sub_48FC(void *a1)
{
  *a1 = off_287E8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_4964(uint64_t a1, int a2)
{
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  *(a1 + 12) = NumberOfEntities;
  sub_4BD0((a1 + 16), NumberOfEntities);
  sub_4C70((a1 + 40), *(a1 + 12));
  if (*(a1 + 12))
  {
    for (i = 0; i < *(a1 + 12); ++i)
    {
      Entity = MIDIDeviceGetEntity(*(a1 + 8), i);
      if (MIDIEntityGetNumberOfDestinations(Entity))
      {
        Destination = MIDIEntityGetDestination(Entity, 0);
        if (a2)
        {
          MIDIEndpointSetRefCons(Destination, a1, i);
LABEL_7:
          if (MIDIEntityGetNumberOfSources(Entity))
          {
            Source = MIDIEntityGetSource(Entity, 0);
          }

          else
          {
            Source = 0;
          }

          v10 = *(a1 + 24);
          v9 = *(a1 + 32);
          if (v10 >= v9)
          {
            v12 = *(a1 + 16);
            v13 = v10 - v12;
            v14 = (v10 - v12) >> 2;
            v15 = v14 + 1;
            if ((v14 + 1) >> 62)
            {
              sub_CE0();
            }

            v16 = v9 - v12;
            if (v16 >> 1 > v15)
            {
              v15 = v16 >> 1;
            }

            v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
            v18 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v18 = v15;
            }

            if (v18)
            {
              sub_D88(a1 + 16, v18);
            }

            v19 = (v10 - v12) >> 2;
            v20 = (4 * v14);
            v21 = (4 * v14 - 4 * v19);
            *v20 = Source;
            v11 = v20 + 1;
            memcpy(v21, v12, v13);
            v22 = *(a1 + 16);
            *(a1 + 16) = v21;
            *(a1 + 24) = v11;
            *(a1 + 32) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v10 = Source;
            v11 = v10 + 4;
          }

          *(a1 + 24) = v11;
          v24 = *(a1 + 48);
          v23 = *(a1 + 56);
          if (v24 >= v23)
          {
            v26 = *(a1 + 40);
            v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 1);
            v28 = v27 + 1;
            if (v27 + 1 > 0x2AAAAAAAAAAAAAAALL)
            {
              sub_CE0();
            }

            v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v26) >> 1);
            if (2 * v29 > v28)
            {
              v28 = 2 * v29;
            }

            if (v29 >= 0x1555555555555555)
            {
              v30 = 0x2AAAAAAAAAAAAAAALL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              sub_E04(a1 + 40, v30);
            }

            v31 = 6 * v27;
            *(v31 + 4) = 0;
            *v31 = 0;
            v25 = 6 * v27 + 6;
            v32 = *(a1 + 40);
            v33 = *(a1 + 48) - v32;
            v34 = 6 * v27 - v33;
            memcpy((v31 - v33), v32, v33);
            v35 = *(a1 + 40);
            *(a1 + 40) = v34;
            *(a1 + 48) = v25;
            *(a1 + 56) = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *(v24 + 4) = 0;
            *v24 = 0;
            v25 = v24 + 6;
          }

          *(a1 + 48) = v25;
          continue;
        }

        MIDIEndpointSetRefCons(Destination, 0, 0);
      }

      else if (a2)
      {
        goto LABEL_7;
      }
    }
  }
}

void *sub_4BD0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_D88(result, a2);
    }

    sub_CE0();
  }

  return result;
}

void *sub_4C70(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 1) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_E04(result, a2);
    }

    sub_CE0();
  }

  return result;
}

void *sub_4D2C(void *result)
{
  *result = 0;
  result[1] = 0;
  *(result + 21) = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_4D3C(uint64_t result)
{
  if (*(result + 16))
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_4DC4(uint64_t a1, io_object_t object)
{
  *a1 = object;
  *(a1 + 8) = 0;
  *(a1 + 14) = 0;
  *(a1 + 22) = 1033;
  *(a1 + 32) = 0;
  IOObjectRetain(object);
  return a1;
}

uint64_t sub_4E08(uint64_t a1)
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

uint64_t sub_4E88(uint64_t a1)
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
          sub_51C0();
          v21 = qword_2C120;
          if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
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

void sub_51C0()
{
  if ((atomic_load_explicit(&qword_2C128, memory_order_acquire) & 1) == 0)
  {
    sub_20248();
  }
}

uint64_t sub_51F0(uint64_t result)
{
  if ((*(result + 21) & 1) == 0)
  {
    v1 = result;
    *(result + 21) = 1;
    result = sub_52DC(result, 3, 0, 0, v2, 256);
    if (result >= 3)
    {
      *(v1 + 24) = (v2[0] - 2 + (((v2[0] - 2) & 0x8000u) >> 15)) >> 1;
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_52DC(uint64_t a1, int a2, __int16 a3, __int16 a4, _BYTE *a5, __int16 a6)
{
  v12 = sub_4E88(a1);
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

    sub_51C0();
    v19 = qword_2C120;
    if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
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

uint64_t sub_54C8(uint64_t a1, uint64_t a2)
{
  sub_51C0();
  v4 = qword_2C120;
  if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "USBDevice.cpp";
    v10 = 1024;
    v11 = 166;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> USBDevice::OpenAndConfigure", buf, 0x12u);
  }

  if (!sub_4E88(a1) || (*(a1 + 20) & 1) == 0 && ((v5 = sub_4E88(a1), (*(*v5 + 64))(*(a1 + 8))) || (*(a1 + 20) = 1, v8 = 0, (*(**(a1 + 8) + 176))(*(a1 + 8), &v8)) || !v8 && ((*buf = 0, (*(**(a1 + 8) + 168))(*(a1 + 8), a2, buf)) || (*(**(a1 + 8) + 184))(*(a1 + 8), *(*buf + 5)))))
  {
    sub_202A8();
    return buf[0];
  }

  else
  {
    sub_51C0();
    v6 = qword_2C120;
    if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "USBDevice.cpp";
      v10 = 1024;
      v11 = 190;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d <- USBDevice::OpenAndConfigure returning true", buf, 0x12u);
    }

    return 1;
  }
}

CFStringRef sub_56A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  sub_51F0(a1);
  v4 = sub_52DC(a1, 3, v2, *(a1 + 22), v6, 256);
  if (v4 >= 3)
  {
    return CFStringCreateWithCharacters(0, v7, (v4 - 2) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_572C(uint64_t a1, int a2, int a3, uint64_t a4, int a5, _DWORD *a6)
{
  sub_51C0();
  v12 = qword_2C120;
  if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_INFO))
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
  v13 = sub_4E88(a1);
  if (v13)
  {
    v14 = v13;
    v15 = (*(*v13 + 64))(*(a1 + 8));
    if (!v15)
    {
      goto LABEL_13;
    }

    v16 = v15;
    sub_51C0();
    v17 = qword_2C120;
    if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_INFO))
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
      sub_51C0();
      v21 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_ERROR))
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
      sub_51C0();
      v26 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 23;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] LogDeviceRequest()", buf, 0x12u);
      }

      sub_51C0();
      v27 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 24;
        v50 = 1024;
        *v51 = v40;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d      bmRequestType: 0x%00x", buf, 0x18u);
      }

      sub_51C0();
      v28 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 25;
        v50 = 1024;
        *v51 = HIBYTE(v40);
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d      bRequest:      0x%00x", buf, 0x18u);
      }

      sub_51C0();
      v29 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 26;
        v50 = 1024;
        *v51 = v41;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wValue:        0x%0000x", buf, 0x18u);
      }

      sub_51C0();
      v30 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 27;
        v50 = 1024;
        *v51 = v42;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wIndex:        0x%0000x", buf, 0x18u);
      }

      sub_51C0();
      v31 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 28;
        v50 = 1024;
        *v51 = v43;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wLength:       %u", buf, 0x18u);
      }

      sub_51C0();
      v32 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 29;
        v50 = 2048;
        *v51 = v44;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d      pData:         %p", buf, 0x1Cu);
      }

      sub_51C0();
      v33 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 30;
        v50 = 1024;
        *v51 = v45;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d      wLenDone:      %u", buf, 0x18u);
      }

      sub_51C0();
      v34 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v47 = "USBDevice.cpp";
        v48 = 1024;
        v49 = 31;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] LogDeviceRequest()", buf, 0x12u);
      }

      if (v20 == -536854449)
      {
        sub_51C0();
        v35 = qword_2C120;
        if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_INFO))
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
        sub_51C0();
        v36 = qword_2C120;
        if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_ERROR))
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

      sub_51C0();
      v38 = qword_2C120;
      if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_INFO))
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
    sub_51C0();
    v37 = qword_2C120;
    if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_ERROR))
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

uint64_t sub_5F80(uint64_t a1)
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
          sub_51C0();
          v18 = qword_2C120;
          if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
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

uint64_t sub_620C(uint64_t a1, uint64_t a2, io_object_t object)
{
  *a1 = 0;
  *(a1 + 8) = object;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  IOObjectRetain(object);
  v5 = sub_5F80(a1);
  if (v5 || (usleep(0x186A0u), (v5 = sub_5F80(a1)) != 0))
  {
    if (a2)
    {
      *a1 = a2;
    }

    else
    {
      objecta = 0;
      if (!(*(*v5 + 168))(v5, &objecta))
      {
        operator new();
      }
    }
  }

  return a1;
}

uint64_t sub_6300(uint64_t a1)
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
    sub_4E08(*a1);
    operator delete();
  }

  return a1;
}

uint64_t sub_638C(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return 1;
  }

  v3 = sub_5F80(a1);
  if (!v3)
  {
    return 0;
  }

  if ((*(*v3 + 64))(v3))
  {
    sub_2034C();
    return v6;
  }

  else
  {
    v1 = 1;
    *(a1 + 25) = 1;
    sub_51C0();
    v4 = qword_2C120;
    if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_DEBUG))
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

BOOL sub_6510()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void *sub_6528(void *a1, uint64_t a2)
{
  v4 = IOServiceMatching("IOUSBDevice");
  sub_2110(a1, a2, v4);
  *a1 = off_28818;
  sub_6640();
  v5 = qword_2C130;
  if (os_log_type_enabled(qword_2C130, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315906;
    v8 = "USBDeviceManager.cpp";
    v9 = 1024;
    v10 = 23;
    v11 = 2048;
    v12 = a1;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBDeviceManager(%p)::USBDeviceManager(notifyRunloop %p)", &v7, 0x26u);
  }

  return a1;
}

void sub_6640()
{
  if ((atomic_load_explicit(&qword_2C138, memory_order_acquire) & 1) == 0)
  {
    sub_20414();
  }
}

uint64_t sub_6898(void *a1, uint64_t a2)
{
  v4 = IOServiceMatching("IOUSBInterface");
  result = sub_2110(a1, a2, v4);
  *a1 = off_28858;
  return result;
}

void sub_68F4()
{
  if ((atomic_load_explicit(&qword_2C148, memory_order_acquire) & 1) == 0)
  {
    sub_2047C();
  }
}

double sub_6BB8(uint64_t a1)
{
  *(a1 + 161) = 17;
  *(a1 + 164) = 2139062143;
  *&result = 0x100000001;
  *(a1 + 168) = 1;
  return result;
}

uint64_t sub_6BD4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, char *a6, uint64_t a7)
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
      v20 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(a3), xmmword_22E70)), 0x7F007F007F007FLL));
      LODWORD(v52) = vuzp1_s8(v20, v20).u32[0];
    }

    if (!(v14 >> 28))
    {
      v21 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v14), xmmword_22E70)), 0x7F007F007F007FLL));
      HIDWORD(v52) = vuzp1_s8(v21, v21).u32[0];
    }

    sub_7174();
    if (os_log_type_enabled(qword_2C150, OS_LOG_TYPE_DEBUG))
    {
      operator new();
    }

    sub_788C(a1 + 8, *(a1 + 16), &__src, &v53, 14);
  }

  else
  {
    sub_7174();
    v15 = qword_2C150;
    if (os_log_type_enabled(qword_2C150, OS_LOG_TYPE_DEBUG))
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
      sub_7174();
      v17 = qword_2C150;
      if (os_log_type_enabled(qword_2C150, OS_LOG_TYPE_ERROR))
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
      v23 = sub_7464(a1, a6, a7);
      goto LABEL_38;
    }

    if (v22 == 7)
    {
      v23 = sub_7560(a1, a6, a7);
      goto LABEL_38;
    }
  }

  else
  {
    if (v22 == 1)
    {
      v23 = sub_71A4(a1, a6, a7);
      goto LABEL_38;
    }

    if (v22 == 2)
    {
      v23 = sub_72EC(a1, a6, a7);
LABEL_38:
      v18 = v23;
      goto LABEL_39;
    }
  }

  sub_7174();
  v24 = qword_2C150;
  if (os_log_type_enabled(qword_2C150, OS_LOG_TYPE_ERROR))
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
  sub_7174();
  v25 = qword_2C150;
  if (os_log_type_enabled(qword_2C150, OS_LOG_TYPE_DEBUG))
  {
    v26 = sub_16540(a5);
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
    sub_7174();
    v27 = qword_2C150;
    if (os_log_type_enabled(qword_2C150, OS_LOG_TYPE_ERROR))
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

void sub_7174()
{
  if ((atomic_load_explicit(&qword_2C158, memory_order_acquire) & 1) == 0)
  {
    sub_204DC();
  }
}

uint64_t sub_71A4(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  __src = 99;
  v14 = 0;
  sub_788C(a1 + 8, *(a1 + 16), &__src, &v16, 1);
  v6 = *(a1 + 184);
  if ((v6 - 16) >= 2)
  {
    if ((v6 - 19) < 2)
    {
      sub_76F0(a1);
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
      sub_788C(v11, v9, v12, v10, v8);
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
  sub_788C(a1 + 8, *(a1 + 16), &v14, &__src, 1);
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
  sub_788C(a1 + 8, *(a1 + 16), &v16, &v17, 1);
  return v7;
}

uint64_t sub_72EC(uint64_t a1, _BYTE *__src, unsigned int a3)
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
      v4 = sub_7774(a1, __src, a3);
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
        sub_788C(a1 + 8, *(a1 + 16), __src, __src + 5, 5);
      }

      v12 = a3 - 5;
      if (!(v12 >> 28))
      {
        v13 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v12), xmmword_22E70)), 0x7F007F007F007FLL));
        __srca = vuzp1_s8(v13, v13).u32[0];
      }

      sub_788C(a1 + 8, *(a1 + 16), &__srca, v16, 4);
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
      sub_788C(v8, v7, v10, v9, v11);
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
  sub_788C(a1 + 8, *(a1 + 16), &v17, &v18, 1);
  return v4;
}

uint64_t sub_7464(uint64_t a1, char *__src, unsigned __int16 a3)
{
  v4 = *(a1 + 184);
  if ((v4 - 50) >= 8)
  {
    if ((v4 - 48) < 2)
    {
      if (__src)
      {
        sub_788C(a1 + 8, *(a1 + 16), __src, __src + 1, 1);
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
      sub_788C(a1 + 8, *(a1 + 16), &v12, &v13, 1);
      return 4294956452;
    }
  }

  if (__src)
  {
    if (a3)
    {
      sub_788C(a1 + 8, *(a1 + 16), __src, &__src[a3], a3);
    }
  }

  __srca = -9;
  v5 = *(a1 + 16);
  p_srca = &__srca;
  v7 = a1 + 8;
  v8 = &__srca;
LABEL_6:
  sub_788C(v7, v5, v8, p_srca + 1, 1);
  return 0;
}

uint64_t sub_7560(uint64_t a1, char *a2, int a3)
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
    sub_788C(a1 + 8, *(a1 + 16), (a1 + 161), (a1 + 172), 11);
    if (a3 != 5)
    {
      return 4294956452;
    }

    __src = *a2;
    v11 = *(a2 + 1);
    if (!(v11 >> 28))
    {
      v12 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v11), xmmword_22E70)), 0x7F007F007F007FLL));
      v15 = vuzp1_s8(v12, v12).u32[0];
    }

    sub_788C(a1 + 8, *v9, &__src, &v18, 1);
    goto LABEL_19;
  }

  if (v7 == 126)
  {
    v13 = *(a1 + 176);
    if (!(v13 >> 28))
    {
      v14 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v13), xmmword_22E70)), 0x7F007F007F007FLL));
      v15 = vuzp1_s8(v14, v14).u32[0];
    }

    v10 = a1 + 8;
    v9 = (a1 + 16);
LABEL_19:
    sub_788C(v10, *v9, &v15, v16, 4);
    goto LABEL_20;
  }

  if (v7 != 127)
  {
    return 4294956452;
  }

LABEL_20:
  v18 = -9;
  sub_788C(a1 + 8, *(a1 + 16), &v18, &v19, 1);
  return 0;
}

char *sub_76F0(uint64_t a1)
{
  v2[0] = xmmword_22E80;
  v2[1] = xmmword_22E90;
  v2[2] = xmmword_22EA0;
  return sub_788C(a1 + 8, *(a1 + 16), v2, v3, 48);
}

uint64_t sub_7774(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  result = 4294956452;
  if (a2 && a3)
  {
    v6 = *a2;
    __src[0] = v6 & 0x7F;
    __src[1] = (v6 >> 7) & 0x7F;
    sub_788C(a1 + 8, *(a1 + 16), __src, &v15, 2);
    if (v6)
    {
      v7 = a2 + 7;
      v8 = v6;
      do
      {
        sub_788C(a1 + 8, *(a1 + 16), v7 - 5, v7, 5);
        v7 += 5;
        --v8;
      }

      while (v8);
    }

    v9 = 5 * v6;
    v10 = *(a2 + (v9 + 2));
    v13[0] = v10 & 0x7F;
    v13[1] = (v10 >> 7) & 0x7F;
    sub_788C(a1 + 8, *(a1 + 16), v13, __src, 2);
    if (v10)
    {
      v11 = a2 + (v9 + 4);
      do
      {
        v12 = v11 + 5;
        sub_788C(a1 + 8, *(a1 + 16), v11, v11 + 5, 5);
        v11 = v12;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  return result;
}

char *sub_788C(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
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
    sub_CE0();
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

void sub_7AB4(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *a2;
  v7 = a2[1];
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *a3;
  v8 = *a4;
  *(a1 + 136) = 0u;
  *(a1 + 48) = v8;
  *(a1 + 56) = -1;
  *(a1 + 64) = 850045863;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = -1;
  *(a1 + 332) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 320) = MIDICapabilityGetDiscoveryMUID();
  sub_7EC8();
  v9 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
  {
    if (a3[1])
    {
      v10 = *a3 | 0x80;
    }

    else
    {
      v10 = *a3;
    }

    v11 = a3[6];
    v12 = *(a3 + 2);
    if (*(a4 + 1))
    {
      v13 = *a4 | 0x80;
    }

    else
    {
      v13 = *a4;
    }

    v14 = *(a4 + 6);
    v15 = *(a4 + 2);
    v16 = *(a1 + 320);
    buf[0] = 136317186;
    *&buf[1] = "MIDIProtocolNegotiator.cpp";
    v18 = 1024;
    v19 = 141;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v12;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = v14;
    v30 = 1024;
    v31 = v15;
    v32 = 1024;
    v33 = v16;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [*] MIDIProtocolNegotiatior(inEP: 0x%x (pipeIndex %u, mps %u), outEP: 0x%x (pipeIndex %u, mps %u) - Negotiating with MUID 0x%x", buf, 0x3Cu);
  }

  v34 = a1;
  sub_A3F8();
}

void sub_7DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    sub_18A0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_7EC8()
{
  if ((atomic_load_explicit(&qword_2C168, memory_order_acquire) & 1) == 0)
  {
    sub_20540();
  }
}

void **sub_7EF8(void **result, __int128 *a2)
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
      sub_CE0();
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
      sub_A0D0(result, v11);
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
    result = sub_A118(v18);
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

uint64_t sub_8010(uint64_t a1)
{
  sub_7EC8();
  v2 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 136315394;
    *&v10[4] = "MIDIProtocolNegotiator.cpp";
    v11 = 1024;
    v12 = 193;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] ~MIDIProtocolNegotiatior()", v10, 0x12u);
  }

  if (*(a1 + 128))
  {
    MIDITimerTaskDispose();
    *(a1 + 128) = 0;
  }

  *(a1 + 332) = 1;
  sub_7EC8();
  v3 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 136315394;
    *&v10[4] = "MIDIProtocolNegotiator.cpp";
    v11 = 1024;
    v12 = 196;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] ~MIDIProtocolNegotiatior()", v10, 0x12u);
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    sub_46A0(v4);
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    sub_46A0(v5);
  }

  *v10 = a1 + 136;
  sub_A1A0(v10);
  std::mutex::~mutex((a1 + 64));
  v6 = *(a1 + 32);
  if (v6)
  {
    sub_46A0(v6);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_81CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_18A0(a1);
}

void sub_81DC(uint64_t a1)
{
  sub_7EC8();
  v2 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "MIDIProtocolNegotiator.cpp";
    v9 = 1024;
    v10 = 201;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] MIDIProtocolNegotiatior::negotiateProtocol()", buf, 0x12u);
  }

  v5 = 2;
  v6 = 512;
  sub_6BD4(*(a1 + 16), 127, *(a1 + 320), 0xFFFFFFFu, 0x70u, &v5, 5);
  sub_7EC8();
  v3 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "MIDIProtocolNegotiator.cpp";
    v9 = 1024;
    v10 = 209;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating] Send Discovery message", buf, 0x12u);
  }

  *(a1 + 328) = 1;
  if ((*(**(a1 + 16) + 24))(*(a1 + 16)))
  {
    sub_9F44(a1, dbl_22ED0[*(a1 + 328) == 1]);
  }

  else
  {
    sub_83E8(a1);
  }

  sub_7EC8();
  v4 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "MIDIProtocolNegotiator.cpp";
    v9 = 1024;
    v10 = 220;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] MIDIProtocolNegotiatior::negotiateProtocol()", buf, 0x12u);
  }
}

void sub_83E8(uint64_t a1)
{
  if ((*(a1 + 332) & 1) == 0)
  {
    sub_7EC8();
    v2 = qword_2C160;
    if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
    {
      v3 = 136315394;
      v4 = "MIDIProtocolNegotiator.cpp";
      v5 = 1024;
      v6 = 460;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [timeout]", &v3, 0x12u);
    }

    if (*(a1 + 128))
    {
      MIDITimerTaskDispose();
      *(a1 + 128) = 0;
    }

    *(a1 + 332) = 1;
    sub_9A60(a1, 0);
  }
}

uint64_t sub_84D0(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 3758096385;
  if (a2 <= 3)
  {
    v6 = *(a1 + 8 * a2 + 160);
    if (v6)
    {
      v7 = *(*(a1 + 136) + 16 * a2);
      v8 = *(v7 + 44);
      v9 = *(a1 + 208);
      if (v8 != 1 || (*(a1 + 208) & 1) != 0)
      {
        *(v7 + 44) = 1;
        if (((v8 | v9) & 1) == 0 || a3)
        {
          *(a1 + 208) = 1;
          v12 = *(a1 + 24);
          sub_7EC8();
          v13 = qword_2C160;
          if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
          {
            if ((3 * v6) >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_A240();
            }

            v14 = *(v7 + 24);
            if ((3 * v6) >= 0x17)
            {
              operator new();
            }

            v26 = 3 * v6;
            bzero(&__p, 3 * v6);
            *(&__p + 3 * v6) = 0;
            if (v26 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v16 = v6;
            do
            {
              v17 = *v14++;
              *p_p = a0123456789abcd_0[v17 >> 4];
              p_p[1] = a0123456789abcd_0[v17 & 0xF];
              p_p[2] = 32;
              p_p += 3;
              --v16;
            }

            while (v16);
            v18 = &__p;
            if (v26 < 0)
            {
              v18 = __p;
            }

            *buf = 136315650;
            v28 = "MIDIProtocolNegotiator.cpp";
            v29 = 1024;
            v30 = 21;
            v31 = 2080;
            v32 = v18;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] writeAsyncWithBuffer: %s", buf, 0x1Cu);
            if (v26 < 0)
            {
              operator delete(__p);
            }
          }

          v19 = *(v12 + 104);
          atomic_fetch_add((v7 + 8), 1u);
          v20 = (*(*v19 + 272))(v19, *(v7 + 64), *(v7 + 24), v6, sub_9B90, a1);
          if (v20)
          {
            sub_7EC8();
            v21 = qword_2C160;
            if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
            {
              v22 = *(v7 + 64);
              v23 = *(v7 + 24);
              *buf = 136316674;
              v28 = "MIDIProtocolNegotiator.cpp";
              v29 = 1024;
              v30 = 26;
              v31 = 2048;
              v32 = v19;
              v33 = 1024;
              v34 = v22;
              v35 = 2048;
              v36 = v23;
              v37 = 2048;
              v38 = v6;
              v39 = 1024;
              v40 = v20;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] writePipeAsync(%p, %u, %p, %lu, ...) = 0x%x", buf, 0x3Cu);
            }

            v3 = (*(*v19 + 272))(v19, *(v7 + 64), *(v7 + 24), v6, sub_9B90, a1);
          }

          else
          {
            v3 = 0;
          }

          sub_7EC8();
          v10 = qword_2C160;
          if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v28 = "MIDIProtocolNegotiator.cpp";
            v29 = 1024;
            v30 = 31;
            v31 = 1024;
            LODWORD(v32) = v3;
            v11 = "%25s:%-5d [-] writeAsyncWithBuffer() = 0x%x";
            goto LABEL_31;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v3 = 3758097109;
        sub_7EC8();
        v10 = qword_2C160;
        if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v28 = "MIDIProtocolNegotiator.cpp";
          v29 = 1024;
          v30 = 229;
          v31 = 1024;
          LODWORD(v32) = a2;
          v11 = "%25s:%-5d [!] I/O pending on buffer %u";
LABEL_31:
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x18u);
        }
      }
    }
  }

  return v3;
}

void sub_8900(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((*(a1 + 332) & 1) == 0)
  {
    v5 = *(a2 + 56);
    if (v5)
    {
      v7 = std::__shared_weak_count::lock(v5);
      if (v7 && *(a2 + 48))
      {
        *(a2 + 44) = 0;
        if (a3 < 5)
        {
          v10 = 0;
        }

        else
        {
          sub_7EC8();
          v8 = qword_2C160;
          if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
          {
            *v21 = 136315650;
            *&v21[4] = "MIDIProtocolNegotiator.cpp";
            *&v21[12] = 1024;
            *&v21[14] = 261;
            v22 = 1024;
            v23 = a3;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDIProtocolNegotiatior::handleCIInput() - %u bytes received", v21, 0x18u);
          }

          *v21 = *(a2 + 24);
          *&v21[8] = a3 >> 2;
          v9 = sub_8B94(v21, a1 + 248 + *(a1 + 312), a1 + 312);
          v10 = v9;
          v11 = *(a1 + 312) + v9;
          *(a1 + 312) = v11;
          if (v9)
          {
            if (v11)
            {
              v12 = v11;
              v13 = (a1 + 248);
              while (*v13 != 247)
              {
                ++v13;
                if (!--v12)
                {
                  goto LABEL_18;
                }
              }
            }

            else
            {
              v13 = (a1 + 248);
            }

            if ((a1 + 248 + v11) != v13)
            {
              sub_9044(a1);
LABEL_21:
              if (v7)
              {
                sub_46A0(v7);
              }

              return;
            }
          }
        }

LABEL_18:
        sub_7EC8();
        v19 = qword_2C160;
        if (!os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        v20 = *(a1 + 312);
        *v21 = 136315906;
        *&v21[4] = "MIDIProtocolNegotiator.cpp";
        *&v21[12] = 1024;
        *&v21[14] = 269;
        v22 = 1024;
        v23 = v10;
        v24 = 1024;
        v25 = v20;
        v15 = "%25s:%-5d [Negotiating] Read %u bytes (%u total), reading more ...";
        v16 = v19;
        v17 = OS_LOG_TYPE_INFO;
        v18 = 30;
LABEL_20:
        _os_log_impl(&dword_0, v16, v17, v15, v21, v18);
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
    }

    sub_7EC8();
    v14 = qword_2C160;
    if (!os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *v21 = 136315394;
    *&v21[4] = "MIDIProtocolNegotiator.cpp";
    *&v21[12] = 1024;
    *&v21[14] = 255;
    v15 = "%25s:%-5d [readCallback: owning USBMIDIDevice destroyed]";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEBUG;
    v18 = 18;
    goto LABEL_20;
  }
}

uint64_t sub_8B94(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = a1;
  v5 = *a1;
  v6 = a1[1];
  sub_7EC8();
  v7 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v46 = "MIDIProtocolNegotiator.cpp";
    v47 = 1024;
    v48 = 45;
    v49 = 1024;
    v50 = v6;
    v51 = 1024;
    v52 = v3 - a2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] appendSysExToBuffer() - wordCount %u, %u bytes available", buf, 0x1Eu);
  }

  v8 = &unk_22000;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5 + 4 * v6;
    v43 = v4;
    while (1)
    {
      v12 = (*v4 + 4 * v9);
      if (v12 >= v11)
      {
        goto LABEL_53;
      }

      v13 = *v12;
      v14 = *v12 >> 28;
      if (v14 == 1)
      {
        sub_7EC8();
        v22 = qword_2C160;
        if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
        {
          v23 = *v12;
          *buf = 136315650;
          v46 = "MIDIProtocolNegotiator.cpp";
          v47 = 1024;
          v48 = 54;
          v49 = 1024;
          v50 = v23;
          v24 = v22;
          v25 = OS_LOG_TYPE_DEBUG;
          v26 = "%25s:%-5d      skipping msg: 0x%08x";
LABEL_21:
          _os_log_impl(&dword_0, v24, v25, v26, buf, 0x18u);
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = v6;
          v16 = v8;
          __src = 0;
          v17 = (v13 >> 20) & 0xF;
          v18 = v17 == 3;
          v19 = v17 == 3 || v17 == 0;
          LODWORD(v20) = HIWORD(v13) & 0xF;
          if (v17 >= 2)
          {
            v20 = v20;
          }

          else
          {
            v20 = (v20 + 1);
          }

          v21 = v20 + v19;
          if ((v20 + v19) <= 8)
          {
            v29 = v17 == 3 || v17 == 0;
            v30 = v20 + v19;
            if (v29)
            {
              *(&v57 + v21) = -9;
              v30 = v21 - 1;
            }

            if (v17 > 1)
            {
              p_src = &__src;
            }

            else
            {
              LOBYTE(__src) = -16;
              --v30;
              p_src = &__src + 1;
            }

            if (v30 >= 1)
            {
              v32 = 0;
              for (i = 0; i != v30; ++i)
              {
                if (i <= 5)
                {
                  if (i >= 2)
                  {
                    v35 = 40;
                  }

                  else
                  {
                    v35 = 8;
                  }

                  v34 = v12[i > 1] >> (v35 + v32);
                }

                else
                {
                  LOBYTE(v34) = 0;
                }

                p_src[i] = v34;
                v32 -= 8;
              }
            }
          }

          else
          {
            LODWORD(v21) = 0;
          }

          sub_7EC8();
          v36 = qword_2C160;
          if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
          {
            v37 = *v12;
            v38 = v12[1];
            v39 = "";
            if (v17 == 3)
            {
              v39 = "[END]";
            }

            *buf = 136316418;
            v46 = "MIDIProtocolNegotiator.cpp";
            v47 = 1024;
            v48 = 60;
            v49 = 1024;
            v50 = v37;
            v51 = 1024;
            v52 = v38;
            v53 = 1024;
            v54 = v21;
            v55 = 2080;
            v56 = v39;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d      sysex 0x%08x 0x%08x (%u bytes converted) %s", buf, 0x2Eu);
          }

          memcpy((a2 + v10), &__src, v21);
          v10 += v21;
          v8 = v16;
          v6 = v15;
          v4 = v43;
          goto LABEL_46;
        }

        sub_7EC8();
        v27 = qword_2C160;
        if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
        {
          v28 = *v12;
          *buf = 136315650;
          v46 = "MIDIProtocolNegotiator.cpp";
          v47 = 1024;
          v48 = 51;
          v49 = 1024;
          v50 = v28;
          v24 = v27;
          v25 = OS_LOG_TYPE_ERROR;
          v26 = "%25s:%-5d [!] appendSysExToBuffer() - sysex message cannot be interrupted with message with first word 0x%x";
          goto LABEL_21;
        }
      }

      v18 = 0;
LABEL_46:
      v9 = v9 + byte_23008[*v12 >> 28];
      if (v9 >= v6 || v18)
      {
        goto LABEL_53;
      }
    }
  }

  v10 = 0;
LABEL_53:
  sub_7EC8();
  v41 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *buf = v8[456];
    v46 = "MIDIProtocolNegotiator.cpp";
    v47 = 1024;
    v48 = 66;
    v49 = 1024;
    v50 = v10;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] appendSysExToBuffer() - %u total bytes copied", buf, 0x18u);
  }

  return v10;
}

void sub_9044(uint64_t a1)
{
  sub_7EC8();
  v2 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 312);
    if (v3)
    {
      if ((3 * v3) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_A240();
      }

      v4 = (a1 + 248);
      if ((3 * v3) >= 0x17)
      {
        operator new();
      }

      v46 = 3 * v3;
      bzero(&__p, 3 * v3);
      *(&__p + 3 * v3) = 0;
      if (v46 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      do
      {
        v7 = *v4++;
        *p_p = a0123456789abcd_0[v7 >> 4];
        p_p[1] = a0123456789abcd_0[v7 & 0xF];
        p_p[2] = 32;
        p_p += 3;
        --v3;
      }

      while (v3);
      v5 = &__p;
      if (v46 < 0)
      {
        v5 = __p;
      }
    }

    else
    {
      v46 = 0;
      LOBYTE(__p) = 0;
      v5 = &__p;
    }

    *buf = 136315650;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v48 = 1024;
    v49 = 278;
    v50 = 2080;
    *v51 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [handleMessage] RCV: %s", buf, 0x1Cu);
    if (v46 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(a1 + 328);
  if (v8 == 1)
  {
    if (sub_A258(a1 + 248, *(a1 + 312), 113, 31))
    {
      if (*(a1 + 128))
      {
        MIDITimerTaskDispose();
        *(a1 + 128) = 0;
      }

      *(a1 + 324) = *(a1 + 254) & 0x7F | ((*(a1 + 255) & 0x7F) << 7) & 0x3FFF | ((*(a1 + 256) & 0x7F) << 14) & 0xF01FFFFF | ((*(a1 + 257) & 0x7F) << 21);
      sub_7EC8();
      v9 = qword_2C160;
      if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 324);
        *buf = 136315906;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 283;
        v50 = 1024;
        *v51 = v10;
        *&v51[4] = 1024;
        *&v51[6] = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [handleMessage: Discovery Reply] Discovered MUID 0x%x (%u)", buf, 0x1Eu);
      }

      *&buf[8] = 0;
      *buf = 0x20000000001;
      sub_6BD4(*(a1 + 16), 127, *(a1 + 320), *(a1 + 324), 0x10u, buf, 10);
      *(a1 + 328) = 2;
      if ((*(**(a1 + 16) + 24))())
      {
        sub_9F44(a1, dbl_22ED0[*(a1 + 328) == 1]);
        v11 = 0;
      }

      else
      {
        v11 = -536870163;
      }

      goto LABEL_24;
    }

    v8 = *(a1 + 328);
  }

  if (v8 != 2)
  {
LABEL_60:
    if (v8 == 4 && sub_A258(a1 + 248, *(a1 + 312), 20, 64))
    {
      v31 = 0;
      while (v31 == *(a1 + v31 + 263))
      {
        if (++v31 == 48)
        {
          if (*(a1 + 128))
          {
            MIDITimerTaskDispose();
            *(a1 + 128) = 0;
          }

          sub_7EC8();
          v32 = qword_2C160;
          if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "MIDIProtocolNegotiator.cpp";
            v48 = 1024;
            v49 = 343;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating] Protocol Test: confirming new protocol established...", buf, 0x12u);
          }

          sub_6BD4(*(a1 + 16), 127, *(a1 + 320), *(a1 + 324), 0x15u, 0, 0);
          if (!(*(**(a1 + 16) + 24))())
          {
            v11 = -536870163;
            goto LABEL_25;
          }

          sub_7EC8();
          v33 = qword_2C160;
          if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "MIDIProtocolNegotiator.cpp";
            v48 = 1024;
            v49 = 349;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating] Done with negotiation.", buf, 0x12u);
          }

          sub_9A60(a1, 8);
          goto LABEL_82;
        }
      }
    }

    if (*(a1 + 312) >= 5uLL && *(a1 + 252) == 127)
    {
      sub_7EC8();
      v34 = qword_2C160;
      if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 353;
        v35 = "%25s:%-5d [Negotiating] NAK received";
        v36 = v34;
        v37 = 18;
LABEL_81:
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      }
    }

    else
    {
      sub_7EC8();
      v38 = qword_2C160;
      if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 248);
        v40 = *(a1 + 328);
        v41 = *(a1 + 312);
        v42 = v41 - 1;
        if (!v41)
        {
          v42 = 0;
        }

        v43 = *(a1 + 248 + v42);
        *buf = 136316418;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 355;
        v50 = 1024;
        *v51 = v40;
        *&v51[4] = 1024;
        *&v51[6] = v41;
        v52 = 1024;
        v53 = v39;
        v54 = 1024;
        v55 = v43;
        v35 = "%25s:%-5d [!]  status = %d, msgSize = %u (%02x ... %02x)";
        v36 = v38;
        v37 = 42;
        goto LABEL_81;
      }
    }

LABEL_82:
    bzero((a1 + 248), 0x40uLL);
    *(a1 + 312) = 0;
    return;
  }

  v12 = *(a1 + 312);
  v13 = sub_A258(a1 + 248, v12, 17, v12);
  if (v12 <= 0x11 || !v13)
  {
    v8 = *(a1 + 328);
    goto LABEL_60;
  }

  if (*(a1 + 128))
  {
    MIDITimerTaskDispose();
    *(a1 + 128) = 0;
  }

  sub_7EC8();
  v15 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v48 = 1024;
    v49 = 296;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating: Protocol Discovery] Examining protocols ...", buf, 0x12u);
  }

  v16 = *(a1 + 263);
  if (*(a1 + 263))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 264;
    do
    {
      v21 = *(a1 + v20);
      v22 = *(a1 + v20 + 2);
      sub_7EC8();
      v23 = qword_2C160;
      if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 309;
        v50 = 1024;
        *v51 = v21;
        *&v51[4] = 1024;
        *&v51[6] = v22;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating: Protocol Discovery] Found protocol: 0x%x, extension bitmap 0x%x", buf, 0x1Eu);
      }

      v24 = ((v22 & 3) == 0) | v17;
      if (v21 != 1)
      {
        v24 = v17;
      }

      if (v21 == 2)
      {
        v18 |= (v22 & 1) == 0;
      }

      else
      {
        v17 = v24;
      }

      ++v19;
      v20 += 5;
    }

    while (v19 < v16);
    if ((v17 | v18))
    {
      sub_7EC8();
      v25 = qword_2C160;
      if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
      {
        v26 = "MIDI-1UP";
        *buf = 136315650;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        if (v18)
        {
          v26 = "MIDI 2.0";
        }

        v48 = 1024;
        v49 = 324;
        v50 = 2080;
        *v51 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating: Protocol Discovery] Setting %s protocol...", buf, 0x1Cu);
      }

      if (v18)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      LOBYTE(__p) = v27;
      v28 = *(a1 + 16);
      *(&__p + 1) = 0;
      sub_6BD4(v28, 127, *(a1 + 320), *(a1 + 324), 0x12u, &__p, 5);
      *(a1 + 328) = 3;
      v11 = -536870163;
      if ((*(**(a1 + 16) + 24))())
      {
        sub_7EC8();
        v29 = qword_2C160;
        if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "MIDIProtocolNegotiator.cpp";
          v48 = 1024;
          v49 = 332;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating: Test Protocol] Sending protocol test data ...", buf, 0x12u);
        }

        v30 = *(a1 + 16);
        *(a1 + 328) = 4;
        sub_6BD4(v30, 127, *(a1 + 320), *(a1 + 324), 0x13u, 0, 0);
        if ((*(**(a1 + 16) + 24))())
        {
          sub_9F44(a1, dbl_22ED0[*(a1 + 328) == 1]);
          v11 = 0;
          *(a1 + 56) = v27;
        }
      }

LABEL_24:
      if (v11)
      {
LABEL_25:
        sub_205A0(v11);
      }

      goto LABEL_82;
    }
  }

  sub_7EC8();
  v44 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v48 = 1024;
    v49 = 317;
    _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d [Negotiation Failure] No usable protocols discovered", buf, 0x12u);
  }

  sub_83E8(a1);
}

void sub_9A60(uint64_t a1, int a2)
{
  sub_7EC8();
  v4 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_INFO))
  {
    v5 = "success";
    v9 = "MIDIProtocolNegotiator.cpp";
    v8 = 136315650;
    if (!a2)
    {
      v5 = "failure";
    }

    v10 = 1024;
    v11 = 433;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [*] MIDIProtocolNegotiator::finished(%s)", &v8, 0x1Cu);
  }

  *(a1 + 332) = 1;
  *(a1 + 328) = a2;
  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 184) & 1) == 0)
  {
    if ((a2 - 5) >= 4)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0x2010201u >> (8 * (a2 - 5));
    }

    *(a1 + 56) = v7;
    sub_9DF4(a1);
  }
}

void sub_9B90(void *a1, int a2)
{
  if (a2 == -536870165)
  {
    sub_7EC8();
    v2 = qword_2C160;
    if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "MIDIProtocolNegotiator.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 367;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [write aborted]", buf, 0x12u);
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  sub_B4C0(buf, a1);
  v3 = *buf;
  if (*buf && (*(*buf + 332) & 1) == 0)
  {
    std::mutex::lock((*buf + 64));
    v4 = *buf;
    v5 = *(*buf + 224);
    v13 = v5;
    if (!v5)
    {
LABEL_23:
      std::mutex::unlock(v3 + 1);
      goto LABEL_24;
    }

    v12 = &v13;
    *(v5 + 44) = 0;
    v6 = *(v4 + 216);
    *(v4 + 216) = v6 + 1;
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 + 1;
    }

    v8 = (*(v4 + 136) + 16 * v7);
    v9 = *v8;
    if (*(*v8 + 44) == 1)
    {
      *(v4 + 216) = v7;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v4 + 232);
      *(v4 + 224) = v9;
      *(v4 + 232) = v10;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = *(v4 + 232);
      *(v4 + 224) = 0;
      *(v4 + 232) = 0;
      if (!v11)
      {
LABEL_18:
        if (*(*buf + 24))
        {
          if (*(*buf + 224))
          {
            sub_84D0(*buf, *(*buf + 216), 1);
          }

          else
          {
            *(*buf + 208) = 0;
          }
        }

        sub_9D88(&v12);
        goto LABEL_23;
      }
    }

    sub_46A0(v11);
    goto LABEL_18;
  }

LABEL_24:
  if (*&buf[8])
  {
    sub_46A0(*&buf[8]);
  }
}

void sub_9D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint **a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v13 = v12;
  sub_9D88(&a9);
  std::mutex::unlock(v13 + 1);
  if (a12)
  {
    sub_46A0(a12);
  }

  _Unwind_Resume(a1);
}

atomic_uint ***sub_9D88(atomic_uint ***a1)
{
  v2 = **a1;
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_9DF4(uint64_t a1)
{
  sub_7EC8();
  v2 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 56);
    if (*(a1 + 41))
    {
      v4 = *(a1 + 40) | 0x80;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    if (*(a1 + 49))
    {
      v5 = *(a1 + 48) | 0x80;
    }

    else
    {
      v5 = *(a1 + 48);
    }

    v9 = 136316162;
    v10 = "MIDIProtocolNegotiator.cpp";
    v11 = 1024;
    v12 = 424;
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDIProtocolNegotiator::completeNegotiation(selectedProtocol:%x) - inEP: 0x%x, outEP: 0x%x", &v9, 0x24u);
  }

  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 184) & 1) == 0)
  {
    if (*(a1 + 41))
    {
      v7 = *(a1 + 40) | 0x80;
    }

    else
    {
      v7 = *(a1 + 40);
    }

    if (*(a1 + 49))
    {
      v8 = *(a1 + 48) | 0x80;
    }

    else
    {
      v8 = *(a1 + 48);
    }

    sub_CED8(v6, v7, v8, *(a1 + 56));
  }
}

void sub_9F44(uint64_t a1, double a2)
{
  if (!*(a1 + 128))
  {
    *(a1 + 128) = MIDITimerTaskCreate();
  }

  mach_absolute_time();
  __udivti3();
  MIDITimerTaskSetNextWakeTime();
  sub_7EC8();
  v3 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "MIDIProtocolNegotiator.cpp";
    v6 = 1024;
    v7 = 473;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating] Timeout %f ms from now", &v4, 0x1Cu);
  }
}

void sub_A07C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_18A0(a1);
}

void sub_A088(uint64_t a1)
{
  v1 = *(a1 + 212);
  if (v1 == 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 + 1;
  }

  *(a1 + 212) = v2;
  v3 = *(a1 + 136);
  v4 = *(v3 + 16 * v2);
  v5 = *(v3 + 16 * v2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 200);
  *(a1 + 192) = v4;
  if (v6)
  {
    sub_46A0(v6);
  }
}

void sub_A0D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_DD0();
}

void **sub_A118(void **a1)
{
  sub_A14C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A14C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_46A0(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_A1A0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_A1F4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_A1F4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_46A0(v4);
    }
  }

  a1[1] = v2;
}

BOOL sub_A258(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a2 < 5)
  {
    return 0;
  }

  v9 = *(a1 + 4);
  if (a2 != a4)
  {
    sub_7EC8();
    v10 = qword_2C160;
    if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315906;
      v15 = "MIDIProtocolNegotiator.cpp";
      v16 = 1024;
      v17 = 75;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] spanMatchesTypeAndLength() - msgSize %u does not match supplied length %u", &v14, 0x1Eu);
    }
  }

  if (v9 != a3)
  {
    sub_7EC8();
    v11 = qword_2C160;
    if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 4);
      v14 = 136315906;
      v15 = "MIDIProtocolNegotiator.cpp";
      v16 = 1024;
      v17 = 77;
      v18 = 1024;
      v19 = v12;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] spanMatchesTypeAndLength() - subID2 %u does not match supplied type %u", &v14, 0x1Eu);
    }
  }

  return a2 == a4 && v9 == a3;
}

void sub_A47C(void *a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_288B0;
  sub_A574((a1 + 3), a2, a3, a4);
}

void sub_A4F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_288B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A574(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  sub_A5F0(a1, v4, v7);
}

void sub_A5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_A5F0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_4D2C((a1 + 16));
  *(a1 + 8) = 1;
  *a1 = off_288E8;
  v6 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_4D7C((a1 + 16), a2);
}

void sub_A67C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_4D3C(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_A69C(void *a1)
{
  *a1 = off_288E8;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4D3C((a1 + 2));
  return a1;
}

void sub_A6F0(void *a1)
{
  *a1 = off_288E8;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4D3C((a1 + 2));

  operator delete();
}

uint64_t sub_A764(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_A790(std::mutex **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  std::mutex::lock(*a1 + 1);
  sub_7EC8();
  v4 = qword_2C160;
  v53 = v3;
  v56 = a2;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = v5 - *a2;
    if (v5 == *a2)
    {
      v59 = 0;
      LOBYTE(__p) = 0;
      p_p = &__p;
    }

    else
    {
      if ((3 * v7) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_A240();
      }

      if ((3 * v7) >= 0x17)
      {
        operator new();
      }

      v59 = 3 * v7;
      bzero(&__p, 3 * v7);
      *(&__p + 3 * v7) = 0;
      if (v59 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      do
      {
        v10 = *v6++;
        *v9 = a0123456789abcd_0[v10 >> 4];
        v9[1] = a0123456789abcd_0[v10 & 0xF];
        v9[2] = 32;
        v9 += 3;
      }

      while (v6 != v5);
      p_p = &__p;
      if (v59 < 0)
      {
        p_p = __p;
      }
    }

    *buf = 136315906;
    v61 = "MIDIProtocolNegotiator.cpp";
    v62 = 1024;
    v63 = 154;
    v64 = 1024;
    v65 = v7;
    v66 = 2080;
    v67 = p_p;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] MIDICIMessageEmitter %u bytes: %s", buf, 0x22u);
    if (v59 < 0)
    {
      operator delete(__p);
    }
  }

  if (!*&v3->__m_.__opaque[16])
  {
    goto LABEL_96;
  }

  v11 = a2[1] - *a2;
  if (!v11)
  {
    goto LABEL_96;
  }

  v12 = v11 - (**a2 == 240) - ((*a2)[v11 - 1] == 247);
  if (v12)
  {
    if (v12 % 6)
    {
      v13 = v12 / 6 + 1;
    }

    else
    {
      v13 = v12 / 6;
    }

    v14 = 8 * v13;
  }

  else
  {
    v14 = 8;
  }

  v57 = v14;
  v15 = 0;
  if (!v14)
  {
LABEL_87:
    if (v57 != v15)
    {
      sub_7EC8();
      v47 = qword_2C160;
      if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v61 = "MIDIProtocolNegotiator.cpp";
        v62 = 1024;
        v63 = 184;
        v64 = 1024;
        v65 = v15;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] MIDICIMessageEmitter did not copy %u bytes", buf, 0x18u);
      }
    }

    goto LABEL_96;
  }

  v15 = 0;
  v16 = 0;
  v54 = &v3[2].__m_.__opaque[24];
  while (1)
  {
    sig = v3[3].__m_.__sig;
    v18 = *a2;
    v19 = *(sig + 40);
    if (v19)
    {
      v55 = v15;
      v20 = 0;
      v21 = 0;
      LODWORD(v22) = 0;
      v23 = &v18[v16];
      v24 = *(sig + 24);
      v25 = v24 + v19;
      while (1)
      {
        if (v22)
        {
          v26 = 2;
        }

        else
        {
          LODWORD(v22) = v23[v20] == 240;
          if (v23[v20] == 240)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }
        }

        v27 = &v23[v22];
        v28 = v27;
        if ((v11 - v22) >= 6u)
        {
          v29 = 6;
        }

        else
        {
          v29 = (v11 - v22);
        }

        if (v11 != v22)
        {
          v30 = v29;
          v28 = &v23[v22];
          while (*v28 != 247)
          {
            ++v28;
            if (!--v30)
            {
              goto LABEL_43;
            }
          }
        }

        if (&v27[v29] == v28)
        {
LABEL_43:
          if ((v11 - v22) == 7)
          {
            LODWORD(v22) = v22 + 7;
            v31 = 3;
          }

          else
          {
            v31 = v26;
          }
        }

        else
        {
          LODWORD(v22) = v22 + v29;
          LODWORD(v29) = v29 - 1;
          v31 = 3;
        }

        v32 = v29 >= 6 ? 6 : v29;
        if (!v29)
        {
          break;
        }

        v33 = *v27;
        if (v29 == 1)
        {
          v34 = 0;
          v35 = 0;
LABEL_53:
          v36 = 0;
LABEL_54:
          v37 = 0;
LABEL_55:
          v38 = 0;
          goto LABEL_56;
        }

        v36 = v27[1];
        if (v29 < 3)
        {
          v34 = 0;
          v35 = 0;
          goto LABEL_54;
        }

        v35 = v27[2];
        if (v29 == 3)
        {
          v34 = 0;
          goto LABEL_54;
        }

        v37 = v27[3];
        if (v29 < 5)
        {
          v34 = 0;
          goto LABEL_55;
        }

        v34 = v27[4];
        if (v29 == 5)
        {
          goto LABEL_55;
        }

        v38 = v27[5] & 0x7F;
LABEL_56:
        if (&v21[v24 + 8] <= v25)
        {
          *&v21[v24] = (v31 << 20) | (v32 << 16) | ((v33 & 0x7F) << 8) | v36 & 0x7F | ((((v35 & 0x7F) << 24) | ((v37 & 0x7F) << 16) | ((v34 & 0x7F) << 8) | v38) << 32) | 0x30000000;
          if (v31 == 3)
          {
            v39 = 0;
          }

          else
          {
            v39 = v29;
          }

          if ((atomic_load_explicit(&qword_2C178, memory_order_acquire) & 1) == 0)
          {
            sub_20664();
          }

          v21 += 8;
          v22 = (v39 + v22);
          v40 = qword_2C170;
          if (os_log_type_enabled(qword_2C170, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            v61 = "USBMIDIUMPTranslation.h";
            v62 = 1024;
            v63 = 456;
            v64 = 1024;
            v65 = v22;
            v66 = 2048;
            v67 = v21;
            v68 = 1024;
            v69 = v11 - v22;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDI1SysExToUMPSysEx() - @ index %u: %lu UMP bytes written so far, %u legacy MIDI bytes remain", buf, 0x28u);
          }

          if (v31 != 3)
          {
            v20 = v22;
            if (v11 > v22)
            {
              continue;
            }
          }
        }

        LODWORD(v11) = v11 - v22;
        a2 = v56;
        v18 = *v56;
        v3 = v53;
        v15 = v55;
        goto LABEL_77;
      }

      v34 = 0;
      v35 = 0;
      v33 = 0;
      goto LABEL_53;
    }

    LODWORD(v11) = 0;
    LODWORD(v21) = 0;
LABEL_77:
    v41 = *&v3[3].__m_.__opaque[12];
    *&v54[8 * v41] = v21;
    if (!v21)
    {
      break;
    }

    v42 = a2[1];
    v43 = sub_84D0(v3, v41, 0);
    if (v43)
    {
      sub_7EC8();
      v52 = qword_2C160;
      if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v61 = "MIDIProtocolNegotiator.cpp";
        v62 = 1024;
        v63 = 174;
        v64 = 1024;
        v65 = v43;
        v49 = "%25s:%-5d [!] copyEmitter: write failed with err 0x%x";
        v50 = v52;
        v51 = 24;
LABEL_94:
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
      }

      goto LABEL_95;
    }

    if (!*&v3[3].__m_.__opaque[24])
    {
      v45 = v3[3].__m_.__sig;
      v44 = *v3[3].__m_.__opaque;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v46 = *&v3[3].__m_.__opaque[32];
      *&v3[3].__m_.__opaque[24] = v45;
      *&v3[3].__m_.__opaque[32] = v44;
      if (v46)
      {
        sub_46A0(v46);
      }

      *&v3[3].__m_.__opaque[16] = *&v3[3].__m_.__opaque[12];
    }

    v15 += v21;
    sub_A088(v3);
    if (v15 < v57)
    {
      v16 = v42 - (v18 + v11);
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  sub_7EC8();
  v48 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v61 = "MIDIProtocolNegotiator.cpp";
    v62 = 1024;
    v63 = 169;
    v49 = "%25s:%-5d [!] copyEmitter: no bytes copied";
    v50 = v48;
    v51 = 18;
    goto LABEL_94;
  }

LABEL_95:
  sub_83E8(v3);
LABEL_96:
  std::mutex::unlock(v3 + 1);
}

void sub_AE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::mutex::unlock(a10 + 1);
  sub_18A0(exception_object);
}

uint64_t sub_AEF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_B1C0(a1, 0x200u);
  *v6 = off_28938;
  *(v6 + 18) = 0;
  v7 = *a2;
  v6[10] = *a2;
  (*(v7 + 8))(v6 + 11, a2 + 1);
  v8 = *a3;
  *(a1 + 120) = *a3;
  (*(v8 + 8))(a1 + 128, a3 + 1);
  *(a1 + 165) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_6BB8(a1);
  return a1;
}

void sub_AF94(_Unwind_Exception *a1)
{
  (*(v1[15] + 24))(v1 + 16);
  (*(v1[10] + 24))(v1 + 11);
  sub_AFE0(v1);
  _Unwind_Resume(a1);
}

void *sub_AFE0(void *a1)
{
  *a1 = off_28968;
  sub_B360(a1);
  (*(a1[4] + 24))(a1 + 5);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_B050(void *a1)
{
  sub_B440(a1);

  operator delete();
}

uint64_t sub_B088(void *a1, uint64_t a2)
{
  v3 = a1 + 1;
  if (a1[2] == a1[1])
  {
    return 0;
  }

  if (*(*a2 + 32) == 1)
  {
    (**a2)(a2 + 8, v3);
  }

  else
  {
    v6 = a1[4];
    if (*(v6 + 32) == 1)
    {
      (*v6)(a1 + 5, v3);
    }
  }

  v7 = a1[1];
  result = (*(a1 + 4) - v7);
  a1[2] = v7;
  return result;
}

uint64_t sub_B114(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = v2 - v1;
  v5 = *(a1 + 72);
  if (v5 == 2)
  {
    v6 = *(a1 + 120);
    if (*(v6 + 32) != 1)
    {
      goto LABEL_10;
    }

    v7 = 128;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 80);
    if ((*(v6 + 32) & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = 88;
  }

  (*v6)(a1 + v7, a1 + 8);
LABEL_10:
  if (*(a1 + 160) == 1)
  {
    *(a1 + 160) = 0;
  }

  else
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  return v4;
}

void *sub_B1C0(void *a1, unsigned int a2)
{
  *a1 = off_28968;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = &off_28988;
  sub_B25C(a1 + 1, a2);
  return a1;
}

void sub_B22C(_Unwind_Exception *a1)
{
  (*(*(v1 + 32) + 24))(v1 + 40);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_B25C(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_CE0();
  }

  return result;
}

void sub_B328(void *a1)
{
  sub_AFE0(a1);

  operator delete();
}

uint64_t sub_B360(uint64_t a1)
{
  v3 = &off_28988;
  v1 = (*(*a1 + 16))(a1, &v3);
  (v3[3])(&v4);
  return v1;
}

void sub_B400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_18A0(exception_object);
}

void *sub_B440(void *a1)
{
  *a1 = off_28938;
  sub_B114(a1);
  (*(a1[15] + 24))(a1 + 16);
  (*(a1[10] + 24))(a1 + 11);

  return sub_AFE0(a1);
}

void *sub_B4C0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_B504();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_B504()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_B550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_48C4(a1, a5);
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *v9 = off_289D8;
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
  sub_1BD8(v9 + 344, "USBMIDIDevice.mWriteQueueMutex");
  *(a1 + 432) = a1 + 432;
  *(a1 + 440) = a1 + 432;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 478) = 0u;
  v10[0] = off_28BE0;
  v10[3] = v10;
  sub_BD1C(@"usbioresults", @"com.apple.coremidi", sub_F18, v10);
}

void sub_BAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_18A0(exception_object);
}

void sub_BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_EA0();
  sub_12A64(v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1820(va);
  sub_12DD0(v6 + 8);
  _Unwind_Resume(a1);
}

void sub_BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_EA0();
  sub_12E50(v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_BF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1820(va);
  sub_131BC(v6 + 8);
  _Unwind_Resume(a1);
}

void sub_BF6C()
{
  if ((atomic_load_explicit(&qword_2C188, memory_order_acquire) & 1) == 0)
  {
    sub_208BC();
  }
}

uint64_t sub_BFA0(void *a1)
{
  sub_BF6C();
  v2 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
  if (!v3 || (sub_638C(v3) & 1) == 0)
  {
    sub_BF6C();
    v25 = qword_2C180;
    if (!os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
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

  v4 = sub_5F80(a1[12]);
  a1[13] = v4;
  if (!v4)
  {
    sub_BF6C();
    v33 = qword_2C180;
    if (!os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
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
  v5 = sub_CD5C(a1);
  *(a1 + 189) = v5;
  if (v5)
  {
    sub_BF6C();
    v6 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
      sub_BF6C();
      v7 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
      sub_B4C0(v69, a1 + 8);
      v8 = *&v69[8];
      *buf = *v69;
      *&buf[8] = *&v69[8];
      if (*&v69[8])
      {
        atomic_fetch_add_explicit((*&v69[8] + 16), 1uLL, memory_order_relaxed);
        sub_46A0(v8);
      }

      v67 = a1;
      sub_1365C();
    }

    if (a1[20] != a1[21])
    {
      sub_B4C0(v69, a1 + 8);
      v9 = *&v69[8];
      *buf = *v69;
      *&buf[8] = *&v69[8];
      if (*&v69[8])
      {
        atomic_fetch_add_explicit((*&v69[8] + 16), 1uLL, memory_order_relaxed);
        sub_46A0(v9);
      }

      v67 = a1;
      sub_1365C();
    }

    v10 = a1[17];
    for (i = a1[18]; v10 != i; v10 += 8)
    {
      sub_BF6C();
      v12 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
      sub_BF6C();
      v17 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
    sub_BF6C();
    v35 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 191;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%25s:%-5d      MIDI-CI negotiation is necessary to determine initial protocol(s).", buf, 0x12u);
    }

    *(a1 + 188) = 1;
    memset(buf, 0, 24);
    sub_11F48(buf, a1[20], a1[21], (a1[21] - a1[20]) >> 3);
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
      sub_BF6C();
      v37 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
    sub_BF6C();
    v39 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
            sub_B4C0(&v67, a1 + 8);
            sub_137B8();
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
    sub_BF6C();
    v48 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
            sub_12040();
          }

          v56 = a1[17];
          if (v50 >= (a1[18] - v56) >> 3)
          {
            sub_12040();
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
        sub_BF6C();
        v59 = qword_2C180;
        if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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

        sub_CED8(a1, v62, v64, 255);
      }

      else
      {
        sub_81DC(*v57);
      }

      v57 += 2;
    }

    while (v57 != v58);
    if (a1[14] == a1[15])
    {
LABEL_125:
      v31 = (*(*a1 + 48))(a1);
      sub_BF6C();
      v65 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
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
    sub_2091C(a1, buf);
    return buf[0];
  }

  return v31;
}

void sub_CCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, std::__shared_weak_count *a20)
{
  if (a16)
  {
    sub_46A0(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ItemCount sub_CD5C(uint64_t a1)
{
  if (*(a1 + 491) != 1)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  result = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  if (result)
  {
    outValue = 0;
    result = MIDIDeviceGetEntity(*(a1 + 8), result - 1);
    if (result)
    {
      MIDIObjectGetIntegerProperty(result, kMIDIPropertyUMPCanTransmitGroupless, &outValue);
      return outValue != 0;
    }
  }

  return result;
}

void **sub_CDE4(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_CE0();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_A0D0(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_A118(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_CED8(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 492) == 1)
  {
    *(a1 + 188) = 0;
    sub_BF6C();
    v7 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
    {
      v8 = "";
      v9 = *(a1 + 492);
      v37 = "USBMIDIDevice.cpp";
      v36 = 136316162;
      v38 = 1024;
      if (v9)
      {
        v8 = "[AQAMIDI] defaults value midi1fallback is set";
      }

      v39 = 989;
      v40 = 1024;
      *v41 = a2;
      *&v41[4] = 1024;
      *&v41[6] = a3;
      v42 = 2080;
      v43 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoint(inEP: 0x%x, outEP: 0x%x) failed %s", &v36, 0x28u);
    }

    v10 = sub_D4F0(a1);
    sub_BF6C();
    v11 = qword_2C180;
    v12 = os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (!v12)
      {
        return;
      }

      v36 = 136315906;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 991;
      v40 = 1024;
      *v41 = a2;
      *&v41[4] = 1024;
      *&v41[6] = a3;
      v13 = "%25s:%-5d [-] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x) - Successfully fell back to MIDI 1.0 after failure.";
    }

    else
    {
      if (!v12)
      {
        return;
      }

      v36 = 136315906;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 993;
      v40 = 1024;
      *v41 = a2;
      *&v41[4] = 1024;
      *&v41[6] = a3;
      v13 = "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x) - MIDI 1.0 fallback failed.";
    }

    v16 = v11;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 30;
    goto LABEL_16;
  }

  v14 = a4;
  if (a4 == 255)
  {
    v14 = *(a1 + 493);
    sub_BF6C();
    v15 = qword_2C180;
    if (v14 == 1)
    {
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
      {
        v36 = 136315394;
        v37 = "USBMIDIDevice.cpp";
        v38 = 1024;
        v39 = 999;
        v14 = 1;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d * * * [AQAMIDI] Protocol negotiation skipped because of defaults. Forcing MIDI-1UP as default protocol. * * *", &v36, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "USBMIDIDevice.cpp";
        v38 = 1024;
        v39 = 1001;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d * * * [AQAMIDI] Protocol negotiation timed out. Using MIDI-1UP as default protocol. * * *", &v36, 0x12u);
      }

      v14 = 1;
    }
  }

  sub_BF6C();
  v19 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    v36 = 136315906;
    v37 = "USBMIDIDevice.cpp";
    v38 = 1024;
    v39 = 1004;
    v40 = 1024;
    *v41 = a2;
    *&v41[4] = 1024;
    *&v41[6] = a3;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x)", &v36, 0x1Eu);
  }

  v20 = *(a1 + 136);
  v21 = *(a1 + 144);
  v22 = v20;
  if (v20 != v21)
  {
    v22 = *(a1 + 136);
    while (1)
    {
      v23 = v22[1] ? *v22 | 0x80 : *v22;
      if (a2 == v23)
      {
        break;
      }

      v22 += 8;
      if (v22 == v21)
      {
        goto LABEL_54;
      }
    }
  }

  if (v21 != v22)
  {
    v22[7] = v14;
    v25 = *(a1 + 160);
    v24 = *(a1 + 168);
    v26 = v25;
    if (v25 != v24)
    {
      while (1)
      {
        v27 = v26[1] ? *v26 | 0x80 : *v26;
        if (a3 == v27)
        {
          break;
        }

        v26 += 8;
        if (v26 == v24)
        {
          goto LABEL_54;
        }
      }
    }

    if (v24 != v26)
    {
      v26[7] = v14;
      while (v20 != v21)
      {
        if (v20[7] == 255)
        {
          v29 = 1;
          goto LABEL_53;
        }

        v20 += 8;
      }

      if (v25 == v24)
      {
        v29 = 0;
      }

      else
      {
        v28 = v25 + 8;
        do
        {
          v29 = *(v28 - 1) == 255;
          v30 = *(v28 - 1) == 255 || v28 == v24;
          v28 += 8;
        }

        while (!v30);
      }

LABEL_53:
      *(a1 + 188) = v29;
    }
  }

LABEL_54:
  if ((*(a1 + 188) & 1) == 0)
  {
    sub_BF6C();
    v31 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      v36 = 136315394;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 1019;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d ============================================", &v36, 0x12u);
    }

    sub_BF6C();
    v32 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      v33 = "MIDI-1UP";
      v37 = "USBMIDIDevice.cpp";
      v36 = 136315650;
      if (v14 == 2)
      {
        v33 = "MIDI 2.0";
      }

      v38 = 1024;
      v39 = 1020;
      v40 = 2080;
      *v41 = v33;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%25s:%-5d == [AQAMIDI] Protocol changed to %s ==", &v36, 0x1Cu);
    }

    sub_BF6C();
    v34 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      v36 = 136315394;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 1021;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "%25s:%-5d ============================================", &v36, 0x12u);
    }

    if (((*(*a1 + 48))(a1) & 1) == 0)
    {
      sub_BF6C();
      v35 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "USBMIDIDevice.cpp";
        v38 = 1024;
        v39 = 1024;
        v13 = "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoint() - unable to start I/O";
        v16 = v35;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 18;
LABEL_16:
        _os_log_impl(&dword_0, v16, v17, v13, &v36, v18);
      }
    }
  }
}

uint64_t sub_D4F0(uint64_t a1)
{
  *(a1 + 491) = 0;
  sub_BF6C();
  v2 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDevice.cpp";
    v38 = 1024;
    v39 = 248;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d * * * [AQAMIDI] MIDI protocol negotiation failed. Falling back to USB MIDI 1.0 configuration * * *", buf, 0x12u);
  }

  NumberOfEntities = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  v4 = (NumberOfEntities - 1);
  if (NumberOfEntities - 1 >= 0)
  {
    do
    {
      Entity = MIDIDeviceGetEntity(*(a1 + 8), v4);
      MIDIDeviceRemoveEntity(*(a1 + 8), Entity);
      --v4;
    }

    while (v4 != -1);
  }

  sub_BF6C();
  v6 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDevice.cpp";
    v38 = 1024;
    v39 = 256;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice::InitializeFallback() - probing device", buf, 0x12u);
  }

  sub_1A778(*(a1 + 88), *(a1 + 96), buf);
  if (*buf)
  {
    sub_BF6C();
    v7 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      *v36 = 136315394;
      *&v36[4] = "USBMIDIDevice.cpp";
      *&v36[12] = 1024;
      *&v36[14] = 260;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d      Creating fallback port map list", v36, 0x12u);
    }

    sub_1AAD0(1, buf, v36);
    sub_BF6C();
    v8 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      *v30 = 136315394;
      v31 = "USBMIDIDevice.cpp";
      v32 = 1024;
      v33 = 264;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d      Setting alternate interface to 0", v30, 0x12u);
    }

    (*(**(a1 + 104) + 176))(*(a1 + 104), 0);
    v9 = *(a1 + 160);
    v10 = *(a1 + 168);
    while (v9 != v10)
    {
      *(v9 + 7) = 0;
      (*(**(a1 + 104) + 224))(*(a1 + 104), *(v9 + 6));
      v9 += 8;
    }

    sub_BF6C();
    v11 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      v12 = (*(a1 + 144) - *(a1 + 136)) >> 3;
      *v30 = 136315650;
      v31 = "USBMIDIDevice.cpp";
      v32 = 1024;
      v33 = 271;
      v34 = 1024;
      v35 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d      Priming %d input pipe(s)", v30, 0x18u);
    }

    v13 = *(a1 + 136);
    v14 = *(a1 + 144);
    if (v13 != v14)
    {
      v15 = 0;
      do
      {
        v16 = 0;
        *(v13 + 7) = 0;
        v17 = 1;
        do
        {
          v18 = v17;
          v19 = v16 | (2 * v15);
          v20 = *(a1 + 272);
          if (v19 >= (*(a1 + 280) - v20) >> 4)
          {
            sub_12040();
          }

          v21 = *(v20 + 16 * v19);
          *(v21 + 64) = *(v13 + 6);
          (*(**(a1 + 104) + 224))(*(a1 + 104));
          (*(*a1 + 64))(a1, v21);
          v17 = 0;
          v16 = 1;
        }

        while ((v18 & 1) != 0);
        ++v15;
        v13 += 8;
      }

      while (v13 != v14);
    }

    v23 = *(a1 + 88);
    v22 = *(a1 + 96);
    v24 = (*(**(a1 + 80) + 112))(*(a1 + 80));
    v25 = (*(**(a1 + 80) + 96))(*(a1 + 80));
    v26 = (*(**(a1 + 80) + 104))(*(a1 + 80));
    LODWORD(v23) = sub_1A9AC(v23, v22, v24, v25, v26, *(a1 + 8), v36, v40, v41, v42);
    sub_BF6C();
    v27 = qword_2C180;
    if (v23)
    {
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
      {
        *v30 = 136315394;
        v31 = "USBMIDIDevice.cpp";
        v32 = 1024;
        v33 = 287;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice::InitializeFallback() - device configured. Starting I/O.", v30, 0x12u);
      }

      v28 = (*(*a1 + 48))(a1);
    }

    else
    {
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136315394;
        v31 = "USBMIDIDevice.cpp";
        v32 = 1024;
        v33 = 290;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::InitializeFallback() - could not configure device", v30, 0x12u);
      }

      v28 = 0;
    }

    if (*v36)
    {
      *&v36[8] = *v36;
      operator delete(*v36);
    }
  }

  else
  {
    v28 = 0;
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  return v28;
}

void sub_DAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_120E8(&a19);
  _Unwind_Resume(a1);
}

void sub_DB08(uint64_t a1)
{
  v2 = MIDIGetDriverIORunLoop();
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = (*(*v3 + 40))(v3);
    if (v5)
    {
      v6 = v5;
      if (CFRunLoopContainsSource(v2, v5, kCFRunLoopDefaultMode))
      {
        CFRunLoopRemoveSource(v2, v6, kCFRunLoopDefaultMode);
      }
    }
  }

  sub_BF6C();
  v7 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "USBMIDIDevice.cpp";
    v10 = 1024;
    v11 = 326;
    v12 = 2048;
    v13 = a1;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice(%p)::UnregisterAsyncSource()", &v8, 0x1Cu);
  }
}

uint64_t sub_DC34(uint64_t a1)
{
  sub_BF6C();
  v2 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    v7.protocol = 136315650;
    *&v7.numPackets = "USBMIDIDevice.cpp";
    WORD2(v7.packet[0].timeStamp) = 1024;
    *(&v7.packet[0].timeStamp + 6) = 331;
    HIWORD(v7.packet[0].wordCount) = 2048;
    *v7.packet[0].words = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::StartIO()", &v7, 0x1Cu);
  }

  *(a1 + 480) = MIDITimerTaskCreate();
  (*(*a1 + 24))(a1, 1);
  if (*(a1 + 491))
  {
    v3 = MIDIEventListInit(&v7, kMIDIProtocol_2_0);
    v7.numPackets = 1;
    v3->timeStamp = 0;
    *&v3->wordCount = 0x3000000000000002;
    v3->words[1] = 0;
    (*(*a1 + 96))(a1, &v7, 0);
  }

  else
  {
    v7.protocol = kMIDIProtocol_1_0;
    *&v7.numPackets = 0;
    HIDWORD(v7.packet[0].timeStamp) = -135266302;
    (*(*a1 + 88))(a1, &v7, 0);
  }

  sub_BF6C();
  v4 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    v7.protocol = 136315394;
    *&v7.numPackets = "USBMIDIDevice.cpp";
    WORD2(v7.packet[0].timeStamp) = 1024;
    *(&v7.packet[0].timeStamp + 6) = 357;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d      bringing initialized device online...", &v7, 0x12u);
  }

  MIDIObjectSetIntegerProperty(*(a1 + 8), kMIDIPropertyOffline, 0);
  sub_BF6C();
  v5 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    v7.protocol = 136315650;
    *&v7.numPackets = "USBMIDIDevice.cpp";
    WORD2(v7.packet[0].timeStamp) = 1024;
    *(&v7.packet[0].timeStamp + 6) = 360;
    HIWORD(v7.packet[0].wordCount) = 2048;
    *v7.packet[0].words = a1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::StartIO() = true", &v7, 0x1Cu);
  }

  return 1;
}

uint64_t sub_DED8(uint64_t a1)
{
  v2 = a1 + 344;
  result = (*(*(a1 + 344) + 16))(a1 + 344);
  v4 = result;
  *(a1 + 488) = 0;
  if ((*(a1 + 184) & 1) == 0)
  {
    result = (*(*a1 + 72))(a1);
  }

  if (v4)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void *sub_DFB8(void *a1)
{
  *a1 = off_289D8;
  if ((a1[23] & 1) == 0)
  {
    sub_BF6C();
    v2 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 185);
      v4 = "Input";
      *&v35[4] = "USBMIDIDevice.cpp";
      v5 = *(a1 + 186);
      v6 = v3 == 0;
      v36 = 1024;
      v37 = 369;
      v7 = "Output";
      if (v6)
      {
        v4 = "N/A";
      }

      *v35 = 136316162;
      v38 = 2048;
      if (!v5)
      {
        v7 = "N/A";
      }

      v39 = a1;
      v40 = 2080;
      v41 = v4;
      v42 = 2080;
      v43 = v7;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::~USBMIDIDevice() - Halting I/O chain for: %s and %s", v35, 0x30u);
    }

    (*(*a1 + 24))(a1, 0);
    if (((*(*a1 + 112))(a1) & 1) != 0 || (*(*a1 + 104))(a1))
    {
      (*(*a1[10] + 160))(a1[10], a1);
    }

    *(a1 + 184) = 1;
    v8 = a1[20];
    v9 = a1[21];
    while (v8 != v9)
    {
      (*(*a1[13] + 224))(a1[13], *(v8 + 6));
      v8 += 8;
    }

    v10 = a1[17];
    v11 = a1[18];
    while (v10 != v11)
    {
      (*(*a1[13] + 224))(a1[13], *(v10 + 6));
      v10 += 8;
    }

    v12 = 199;
    do
    {
      v14 = a1[34];
      v13 = a1[35];
      if (v14 == v13)
      {
        v16 = 0;
      }

      else
      {
        v15 = v14 + 16;
        do
        {
          v16 = *(*(v15 - 16) + 44);
          if (v16)
          {
            break;
          }

          v6 = v15 == v13;
          v15 += 16;
        }

        while (!v6);
      }

      for (i = a1[37]; i != a1[38]; i += 16)
      {
        if (*(*i + 44))
        {
          v18 = 1;
          goto LABEL_33;
        }
      }

      v18 = 0;
      v19 = 0;
      if (!v16)
      {
        break;
      }

LABEL_33:
      usleep(0x2710u);
      v19 = v16;
    }

    while (v12-- >= 2);
    if ((v18 & 1) != 0 || v19)
    {
      sub_BF6C();
      v21 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
      {
        v22 = "complete";
        *&v35[4] = "USBMIDIDevice.cpp";
        v36 = 1024;
        v37 = 407;
        v38 = 2048;
        if (v19)
        {
          v23 = "pending";
        }

        else
        {
          v23 = "complete";
        }

        *v35 = 136316162;
        v39 = a1;
        if (v18)
        {
          v22 = "pending";
        }

        v40 = 2080;
        v41 = v23;
        v42 = 2080;
        v43 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice(%p)::~USBMIDIDevice() Input:%s Output:%s", v35, 0x30u);
      }
    }

    sub_A1F4(a1 + 34);
    sub_A1F4(a1 + 37);
    (*(*a1 + 40))(a1);
    if (a1[60])
    {
      MIDITimerTaskDispose();
    }
  }

  if (a1[13])
  {
    v24 = a1[12];
    if (v24)
    {
      sub_6208(v24);
      operator delete();
    }
  }

  v25 = a1[11];
  if (v25)
  {
    sub_4E84(v25);
    operator delete();
  }

  sub_BF6C();
  v26 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    *v35 = 136315650;
    *&v35[4] = "USBMIDIDevice.cpp";
    v36 = 1024;
    v37 = 431;
    v38 = 2048;
    v39 = a1;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::~USBMIDIDevice()", v35, 0x1Cu);
  }

  *v35 = a1 + 57;
  sub_11DA0(v35);
  sub_11E94(a1 + 54);
  sub_1C24((a1 + 43));
  *v35 = a1 + 40;
  sub_A1A0(v35);
  *v35 = a1 + 37;
  sub_A1A0(v35);
  *v35 = a1 + 34;
  sub_A1A0(v35);
  v27 = a1[33];
  if (v27)
  {
    sub_46A0(v27);
  }

  v28 = a1[31];
  if (v28)
  {
    sub_46A0(v28);
  }

  v29 = a1[29];
  if (v29)
  {
    sub_46A0(v29);
  }

  v30 = a1[24];
  if (v30)
  {
    a1[25] = v30;
    operator delete(v30);
  }

  v31 = a1[20];
  if (v31)
  {
    a1[21] = v31;
    operator delete(v31);
  }

  v32 = a1[17];
  if (v32)
  {
    a1[18] = v32;
    operator delete(v32);
  }

  *v35 = a1 + 14;
  sub_A1A0(v35);
  v33 = a1[9];
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  sub_48FC(a1);
  return a1;
}

void sub_E4FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_18A0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E520(void *a1)
{
  sub_DFB8(a1);

  operator delete();
}

void sub_E558(uint64_t a1, int a2)
{
  if (*(a1 + 491))
  {
    *(a1 + 12) = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
    v4 = *(a1 + 8);

    sub_838(a2, a1, v4, (a1 + 192), (a1 + 16), a1 + 40);
  }

  else
  {

    sub_4964(a1, a2);
  }
}

void sub_E5F4(uint64_t a1, uint64_t a2, unsigned __int8 **a3, void *a4, void *a5)
{
  v37 = 0;
  if (a1 && a2)
  {
    v9 = (*(*a2 + 152))(a2, &v37);
    sub_BF6C();
    v10 = qword_2C180;
    if (v9)
    {
      sub_209F4(qword_2C180, v9);
    }

    else
    {
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v39 = "USBMIDIDevice.cpp";
        v40 = 1024;
        v41 = 464;
        v42 = 1024;
        v43 = v37;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice::FindPipes() -- interface has %d endpoints", buf, 0x18u);
      }

      if (v37)
      {
        v11 = 1;
        v12 = 1;
        while (1)
        {
          WORD2(v36) = 0;
          BYTE6(v36) = -1;
          v13 = sub_64A8(a1, v11, &v36);
          sub_BF6C();
          v14 = qword_2C180;
          v15 = os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO);
          if (v13)
          {
            break;
          }

          if (v15)
          {
            *buf = 136315906;
            v39 = "USBMIDIDevice.cpp";
            v40 = 1024;
            v41 = 469;
            v42 = 1024;
            v43 = v36;
            v44 = 1024;
            v45 = BYTE1(v36);
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d      Got pipe 0x%x direction %d", buf, 0x1Eu);
          }

          v16 = v36;
          if (BYTE1(v36))
          {
            v16 = v36 | 0x80;
          }

          for (i = *a3; ; i += 8)
          {
            if (i == a3[1])
            {
              HIBYTE(v36) = 0;
              goto LABEL_19;
            }

            if (i[2] == v16 || i[3] == v16)
            {
              break;
            }
          }

          v29 = i[4];
          HIBYTE(v36) = v29;
          if (v29 <= 1)
          {
            if (v29)
            {
              sub_BF6C();
              v30 = qword_2C180;
              if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
              {
                if (BYTE1(v36))
                {
                  v31 = v36 | 0x80;
                }

                else
                {
                  v31 = v36;
                }

                *buf = 136316162;
                v39 = "USBMIDIDevice.cpp";
                v40 = 1024;
                v41 = 474;
                v42 = 1024;
                v43 = v11;
                v44 = 1024;
                v45 = v36;
                v46 = 1024;
                v47 = v31;
                v20 = v30;
                v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (MIDI-1UP)";
LABEL_24:
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, v21, buf, 0x24u);
                goto LABEL_25;
              }

              goto LABEL_25;
            }

LABEL_19:
            sub_BF6C();
            v18 = qword_2C180;
            if (!os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
            {
              goto LABEL_25;
            }

            if (BYTE1(v36))
            {
              v19 = v36 | 0x80;
            }

            else
            {
              v19 = v36;
            }

            *buf = 136316162;
            v39 = "USBMIDIDevice.cpp";
            v40 = 1024;
            v41 = 472;
            v42 = 1024;
            v43 = v11;
            v44 = 1024;
            v45 = v36;
            v46 = 1024;
            v47 = v19;
            v20 = v18;
            v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (legacy MIDI 1.0)";
            goto LABEL_24;
          }

          if (v29 == 2)
          {
            sub_BF6C();
            v34 = qword_2C180;
            if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
            {
              if (BYTE1(v36))
              {
                v35 = v36 | 0x80;
              }

              else
              {
                v35 = v36;
              }

              *buf = 136316162;
              v39 = "USBMIDIDevice.cpp";
              v40 = 1024;
              v41 = 476;
              v42 = 1024;
              v43 = v11;
              v44 = 1024;
              v45 = v36;
              v46 = 1024;
              v47 = v35;
              v20 = v34;
              v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (MIDI 2.0)";
              goto LABEL_24;
            }
          }

          else if (v29 == 255)
          {
            sub_BF6C();
            v32 = qword_2C180;
            if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
            {
              if (BYTE1(v36))
              {
                v33 = v36 | 0x80;
              }

              else
              {
                v33 = v36;
              }

              *buf = 136316162;
              v39 = "USBMIDIDevice.cpp";
              v40 = 1024;
              v41 = 478;
              v42 = 1024;
              v43 = v11;
              v44 = 1024;
              v45 = v36;
              v46 = 1024;
              v47 = v33;
              v20 = v32;
              v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (Use MIDI-CI to discover protocol)";
              goto LABEL_24;
            }
          }

LABEL_25:
          if (BYTE1(v36) == 1)
          {
            v24 = a4[1];
            if (v24 >= a4[2])
            {
              v25 = sub_1214C(a4, &v36);
            }

            else
            {
              *v24 = v36;
              v25 = (v24 + 1);
            }

            a4[1] = v25;
            goto LABEL_45;
          }

          if (!BYTE1(v36))
          {
            v22 = a5[1];
            if (v22 >= a5[2])
            {
              v23 = sub_1214C(a5, &v36);
            }

            else
            {
              *v22 = v36;
              v23 = (v22 + 1);
            }

            a5[1] = v23;
            goto LABEL_45;
          }

          sub_BF6C();
          v26 = qword_2C180;
          if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            v39 = "USBMIDIDevice.cpp";
            v40 = 1024;
            v41 = 487;
            v42 = 1024;
            v43 = v11;
            v44 = 1024;
            v45 = BYTE1(v36);
            v27 = v26;
            v28 = "%25s:%-5d [?]  Unknown direction for endpoint %d: %d";
LABEL_33:
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, v28, buf, 0x1Eu);
          }

LABEL_45:
          v11 = ++v12;
          if (v12 > v37)
          {
            return;
          }
        }

        if (!v15)
        {
          goto LABEL_45;
        }

        *buf = 136315906;
        v39 = "USBMIDIDevice.cpp";
        v40 = 1024;
        v41 = 491;
        v42 = 1024;
        v43 = v11;
        v44 = 1024;
        v45 = v13;
        v27 = v14;
        v28 = "%25s:%-5d [?]  Couldn't get pipe for endpoint %d (0x%x)";
        goto LABEL_33;
      }
    }
  }
}

uint64_t sub_EBB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = mach_absolute_time();
  v7 = a1[10];
  v8 = *(a2 + 24);
  v9 = *(a2 + 64);
  v10 = sub_EC58(a1, v9);
  v11 = *(*v7 + 168);

  return v11(v7, a1, v6, v8, a3, v9, v10);
}

uint64_t sub_EC58(void *a1, int a2)
{
  for (i = a1[17]; i != a1[18]; ++i)
  {
    if (a2 == BYTE6(*i))
    {
      return HIBYTE(*i);
    }
  }

  for (j = a1[20]; ; ++j)
  {
    if (j == a1[21])
    {
      return 1;
    }

    if (a2 == BYTE6(*j))
    {
      break;
    }
  }

  return HIBYTE(*j);
}

uint64_t sub_ECB8(void *a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v24 = a1 + 43;
    v25 = (*(a1[43] + 16))();
    result = sub_EFF0(a1, a3);
    v7 = result;
    v8 = a1[24];
    v9 = a3;
    if (a3 < ((a1[25] - v8) >> 3))
    {
      v9 = *(v8 + 8 * a3 + 1);
    }

    if (*a2 >= 1)
    {
      v10 = a2 + 4;
      v28 = 0;
      v27 = 0u;
      memset(__dst, 0, sizeof(__dst));
      v11 = *(a2 + 4);
      v12 = *(v10 + 8);
      if (v12 > 0x40)
      {
        v13 = malloc_type_malloc(*(v10 + 8), 0x100004077774924uLL);
        memcpy(v13, (v10 + 10), v12);
      }

      else
      {
        memcpy(__dst, (v10 + 10), *(v10 + 8));
      }

      v27 = __PAIR64__(v9, a3);
      LOBYTE(v28) = *(v7 + 6);
      operator new();
    }

    v15 = a1[20];
    v14 = a1[21];
    v16 = v14 - v15;
    if (v14 == v15)
    {
      goto LABEL_15;
    }

    v17 = 0;
    v18 = v16 >> 3;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v19 = (v15 + 6);
    while (1)
    {
      v20 = *v19;
      v19 += 8;
      if (v20 == *(result + 6))
      {
        break;
      }

      if (v18 == ++v17)
      {
        goto LABEL_15;
      }
    }

    if (v17 < 0)
    {
LABEL_15:
      __assert_rtn("Send", "USBMIDIDevice.cpp", 555, "currentBufferIndex >= 0");
    }

    v21 = a1[40];
    if (v17 >= ((a1[41] - v21) >> 4))
    {
      sub_12040();
    }

    v22 = *(v21 + 16 * v17);
    if (v22 && (*(v22 + 44) & 1) == 0 && !*(a1 + 488))
    {
      *(a1 + 488) = 1;
      v23 = a1[60];
      mach_absolute_time();
      result = MIDITimerTaskSetNextWakeTime();
    }

    if (v25)
    {
      return (*(*v24 + 24))(v24);
    }
  }

  return result;
}

void sub_EFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_18A0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_EFF0(void *a1, int a2)
{
  v2 = a1[24];
  if (((a1[25] - v2) >> 3) > a2 && (v3 = v2 + 8 * a2, v4 = *(v3 + 3), *(v3 + 3)) && (v5 = a1[20], (v6 = a1[21] - v5) != 0))
  {
    v7 = v6 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    while (*v5 != v4)
    {
      v5 += 8;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v5 = a1[20];
    if (a1[21] == v5)
    {
      sub_12040();
    }
  }

  return v5;
}

void sub_F068(uint64_t a1, int *a2, int a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return;
  }

  v6 = sub_EFF0(a1, a3);
  v7 = v6[7];
  if (!v6[7])
  {
    if (a3 == 255)
    {
      return;
    }

    v36 = *(a1 + 224);
    if (!v36)
    {
      return;
    }

    goto LABEL_45;
  }

  v8 = *a2;
  if (v7 != 2 && v8 == 2)
  {
    v36 = *(a1 + 240);
    if (!v36)
    {
      return;
    }

LABEL_45:
    *(a1 + 220) = a3;
    v37 = *(*v36 + 16);

    v37();
    return;
  }

  if (v7 == 2 && v8 == 1)
  {
    v36 = *(a1 + 256);
    if (!v36)
    {
      return;
    }

    goto LABEL_45;
  }

  v11 = v6;
  if (a3 != 255)
  {
    v12 = a2[1];
    if (v12)
    {
      v13 = a2 + 2;
      do
      {
        v14 = v13 + 3;
        v15 = v13[2];
        if (v15)
        {
          v16 = &v14[v15];
          v17 = v13 + 3;
          do
          {
            v18 = *v17;
            v19 = v18 >> 28;
            if (*v17 >> 28)
            {
              v20 = v19 == 15;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              *v17 = v18 & 0xF0FFFFFF | ((a3 & 0xF) << 24);
            }

            v17 += byte_22F20[v19];
          }

          while (v17 != v16);
          v21 = v13[2];
        }

        else
        {
          v21 = 0;
        }

        v13 = &v14[v21];
        --v12;
      }

      while (v12);
    }
  }

  v22 = a1 + 344;
  v23 = (*(*(a1 + 344) + 16))(a1 + 344);
  v24 = *(a1 + 192);
  v25 = a3;
  if (a3 < ((*(a1 + 200) - v24) >> 3))
  {
    v25 = *(v24 + 8 * a3 + 1);
  }

  v26 = v11[6];
  v27 = a2[1];
  if (v27)
  {
    v28 = (a2 + 2);
    do
    {
      if (!v28[2])
      {
        break;
      }

      sub_1239C(buf, v28, a3, v25, v26);
      sub_12330((a1 + 456), buf);
      sub_128AC(*(a1 + 464) - 296);
      sub_11E24(buf);
      v28 += v28[2] + 3;
      --v27;
    }

    while (v27);
    v26 = v11[6];
  }

  v30 = *(a1 + 160);
  v29 = *(a1 + 168);
  v31 = v29 - v30;
  if (v29 == v30)
  {
    goto LABEL_38;
  }

  v32 = 0;
  v33 = v31 >> 3;
  if (v33 <= 1)
  {
    v33 = 1;
  }

  v34 = (v30 + 6);
  while (1)
  {
    v35 = *v34;
    v34 += 8;
    if (v35 == v26)
    {
      break;
    }

    if (v33 == ++v32)
    {
      goto LABEL_38;
    }
  }

  if (v32 < 0)
  {
LABEL_38:
    __assert_rtn("SendPackets", "USBMIDIDevice.cpp", 626, "currentBufferIndex >= 0");
  }

  v38 = *(a1 + 320);
  if (v32 >= ((*(a1 + 328) - v38) >> 4))
  {
    sub_12040();
  }

  v39 = *(v38 + 16 * v32);
  if (v39)
  {
    if ((*(v39 + 44) & 1) == 0 && !*(a1 + 488))
    {
      *(a1 + 488) = 1;
      v40 = *(a1 + 480);
      mach_absolute_time();
      MIDITimerTaskSetNextWakeTime();
    }
  }

  else
  {
    sub_BF6C();
    v41 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "USBMIDIDevice.cpp";
      v44 = 1024;
      v45 = 629;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::SendPackets() - buffer not found", buf, 0x12u);
    }
  }

  if (v23)
  {
    (*(*v22 + 24))(v22);
  }
}

void sub_F464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_18A0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F4A0(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((a2 + 8), 1u);
  *(a2 + 44) = 1;
  result = (*(**(a1 + 104) + 264))(*(a1 + 104), *(a2 + 64), *(a2 + 24), *(a2 + 40), sub_F578, a2);
  if (result == -536854449 || result == -536870163)
  {
    v6 = *(**(a1 + 104) + 264);
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);

    return v6();
  }

  return result;
}

void sub_F578(uint64_t a1, int a2, unint64_t a3)
{
  *(a1 + 44) = 0;
  v4 = *(a1 + 56);
  if (!v4 || (v7 = *(a1 + 64), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    v16 = a1;
    sub_F7F8(&v16);
    return;
  }

  v9 = v8;
  v10 = *(a1 + 48);
  v16 = a1;
  if (v10 && a2 != -536870165 && (*(v10 + 184) & 1) == 0)
  {
    if (a2)
    {
      if (a2 == -536870163 && !(*(**(v10 + 104) + 224))(*(v10 + 104), v7))
      {
        (*(*v10 + 64))(v10, a1);
      }

      goto LABEL_20;
    }

    *(v10 + 185) = 1;
    v11 = *(v10 + 188);
    if (a3 <= 4)
    {
      if (*(v10 + 188))
      {
LABEL_19:
        (*(*v10 + 64))(v10, a1);
        goto LABEL_20;
      }
    }

    else if (*(v10 + 188))
    {
      v12 = *(a1 + 64);
      v13 = *(v10 + 112);
      v14 = *(v10 + 120);
      if (v13 != v14)
      {
        while (*(*v13 + 46) != v12)
        {
          v13 += 2;
          if (v13 == v14)
          {
            goto LABEL_24;
          }
        }
      }

      if (v14 == v13)
      {
LABEL_24:
        sub_BF6C();
        v15 = qword_2C180;
        if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v18 = "USBMIDIDevice.cpp";
          v19 = 1024;
          v20 = 694;
          v21 = 1024;
          v22 = v12;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] No negotiator for pipeIndex %d", buf, 0x18u);
        }
      }

      else
      {
        sub_8900(*v13, a1, a3);
      }

      goto LABEL_19;
    }

    (*(*v10 + 80))(v10, a1, a3);
    goto LABEL_19;
  }

LABEL_20:
  sub_F7F8(&v16);
  sub_46A0(v9);
}

void sub_F7D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F7F8(va);
  sub_46A0(v2);
  _Unwind_Resume(a1);
}

atomic_uint **sub_F7F8(atomic_uint **a1)
{
  v2 = *a1;
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_F85C(uint64_t a1)
{
  if (*(a1 + 491) != 1 || (v2 = *(a1 + 456), v2 == *(a1 + 464)))
  {
    if (!*(a1 + 448))
    {
      return;
    }

    v4 = 0;
    v3 = (*(a1 + 440) + 120);
  }

  else
  {
    v3 = (v2 + 292);
    v4 = 1;
  }

  v5 = *v3;
  v6 = sub_EC58(a1, *v3);
  v8 = *(a1 + 160);
  v7 = *(a1 + 168);
  v9 = v7 - v8;
  if (v7 == v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v9 >> 3;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v12 = (v8 + 6);
  while (1)
  {
    v13 = *v12;
    v12 += 8;
    if (v13 == v5)
    {
      break;
    }

    if (v11 == ++v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 0)
  {
LABEL_12:
    sub_20AAC();
  }

  v14 = *(a1 + 320);
  if (v10 >= ((*(a1 + 328) - v14) >> 4))
  {
    sub_12040();
  }

  v15 = *(v14 + 16 * v10);
  if (!v15)
  {
    sub_BF6C();
    v21 = qword_2C180;
    if (!os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v32 = 136315650;
    v33 = "USBMIDIDevice.cpp";
    v34 = 1024;
    v35 = 723;
    v36 = 1024;
    v37 = v5;
    v22 = "%25s:%-5d [!] USBMIDIDevice::DoWrite() - Buffer not found for pipeIndex = %d";
    v23 = v21;
    v24 = 24;
LABEL_37:
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, v22, &v32, v24);
    return;
  }

  v16 = *(a1 + 80);
  v17 = *(v15 + 24);
  v18 = *(v15 + 40);
  v19 = *v16;
  if (v4)
  {
    v20 = (*(v19 + 184))(v16, a1, a1 + 456, v17, v18, v6);
  }

  else
  {
    v20 = (*(v19 + 176))(v16, a1, a1 + 432, v17, v18, v6);
  }

  if (!v20)
  {
    return;
  }

  v25 = *(a1 + 160);
  v26 = *(a1 + 168);
  if (v25 != v26)
  {
    while (*(v25 + 6) != v5)
    {
      v25 += 8;
      if (v25 == v26)
      {
        goto LABEL_35;
      }
    }
  }

  if (v25 == v26)
  {
LABEL_35:
    sub_BF6C();
    v31 = qword_2C180;
    if (!os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v32 = 136315394;
    v33 = "USBMIDIDevice.cpp";
    v34 = 1024;
    v35 = 758;
    v22 = "%25s:%-5d [!] USBMIDIDevice::DoWrite() - Missing pipe for queued element";
    v23 = v31;
    v24 = 18;
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 8), 1u);
  *(v15 + 44) = 1;
  v27 = (*(**(a1 + 104) + 272))(*(a1 + 104), v5, *(v15 + 24), v20, sub_FBB4, v15);
  if (v27 == -536854449 || v27 == -536870163)
  {
    v29 = *(**(a1 + 104) + 272);
    v30 = *(v15 + 24);

    v29();
  }
}

void sub_FBB4(uint64_t a1, int a2)
{
  v3 = *(a1 + 56);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    *(a1 + 44) = 0;
    if (v7)
    {
      v8 = (*(*(v7 + 344) + 16))();
      if (a2)
      {
        (*(**(v7 + 104) + 360))(*(v7 + 104), *(a1 + 64));
      }

      else
      {
        *(v7 + 186) = 1;
      }

      if (atomic_fetch_add((a1 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*a1 + 16))(a1);
      }

      if (!a2 && (*(v7 + 184) & 1) == 0)
      {
        (*(*v7 + 72))(v7);
      }

      if (v8 == 1)
      {
        (*(*(v7 + 344) + 24))(v7 + 344);
      }

LABEL_19:

      sub_46A0(v6);
      return;
    }
  }

  else
  {
    v6 = 0;
    *(a1 + 44) = 0;
  }

  if (atomic_fetch_add((a1 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*a1 + 16))(a1);
  }

  if (v6)
  {
    goto LABEL_19;
  }
}

void sub_FDA4(uint64_t a1, int a2)
{
  sub_BF6C();
  v3 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_DEBUG))
  {
    v4 = "false";
    *buf = 136315650;
    v24 = "USBMIDIDevice.cpp";
    if (a2)
    {
      v4 = "true";
    }

    v25 = 1024;
    v26 = 897;
    v27 = 2080;
    *v28 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] USBMIDIDevice::ReconstructPortMapList(forUMP = %s)", buf, 0x1Cu);
  }

  *(a1 + 200) = *(a1 + 192);
  v5 = MIDIDeviceGetNumberOfEntities(*(a1 + 8)) - *(a1 + 189);
  if (v5 >= 1)
  {
    v6 = 0;
    v20 = v5 & 0x7FFFFFFF;
    do
    {
      outValue = 0;
      Entity = MIDIDeviceGetEntity(*(a1 + 8), v6);
      if (MIDIObjectGetIntegerProperty(Entity, @"Cable", &outValue))
      {
        v8 = v6;
      }

      else
      {
        v8 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"In Endpoint", &outValue))
      {
        v9 = 0;
      }

      else
      {
        v9 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Out Endpoint", &outValue))
      {
        v10 = 0;
      }

      else
      {
        v10 = outValue;
      }

      if (((MIDIObjectGetIntegerProperty(Entity, @"Default Protocol", &outValue) == 0) & a2) != 0)
      {
        v11 = outValue;
      }

      else
      {
        v11 = 0;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Group Terminal Block ID", &outValue))
      {
        v12 = 0;
      }

      else
      {
        v12 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"First Group", &outValue))
      {
        v13 = 0;
      }

      else
      {
        v13 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Number of Groups", &outValue))
      {
        v14 = 0;
      }

      else
      {
        v14 = outValue;
      }

      sub_BF6C();
      v15 = qword_2C180;
      if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136317186;
        v24 = "USBMIDIDevice.cpp";
        v25 = 1024;
        v26 = 923;
        v27 = 1024;
        *v28 = v6;
        *&v28[4] = 1024;
        *&v28[6] = v8;
        v29 = 1024;
        v30 = v9;
        v31 = 1024;
        v32 = v10;
        v33 = 1024;
        v34 = v11;
        v35 = 1024;
        v36 = v12;
        v37 = 1024;
        v38 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d      MIDIPortMap(entity %d, cable %d, inEP 0x%x, outEP 0x%x, protocol %d, gtbID %d, numGroups %d => mMapList", buf, 0x3Cu);
      }

      buf[0] = v6;
      buf[1] = v8;
      buf[2] = v9;
      buf[3] = v10;
      LOBYTE(v24) = v11;
      BYTE1(v24) = v13;
      BYTE2(v24) = v14;
      BYTE3(v24) = v12;
      v16 = *(a1 + 200);
      if (v16 >= *(a1 + 208))
      {
        v17 = sub_12958((a1 + 192), buf);
      }

      else
      {
        *v16 = v6;
        v16[1] = v8;
        v16[2] = v9;
        v16[3] = v10;
        v16[4] = v11;
        v16[5] = v13;
        v16[6] = v14;
        v17 = (v16 + 8);
        v16[7] = v12;
      }

      *(a1 + 200) = v17;
      ++v6;
    }

    while (v20 != v6);
  }

  sub_BF6C();
  v18 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_DEBUG))
  {
    v19 = (*(a1 + 200) - *(a1 + 192)) >> 3;
    *buf = 136315650;
    v24 = "USBMIDIDevice.cpp";
    v25 = 1024;
    v26 = 926;
    v27 = 2048;
    *v28 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] USBMIDIDevice::ReconstructPortMapList() - %lu port map(s) created", buf, 0x1Cu);
  }
}

void *sub_101B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_28A88;
  *a1 = off_28A68;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void *sub_1021C(void *a1)
{
  *a1 = off_28A68;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_10270(void *a1)
{
  *a1 = off_28A68;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_102E4(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v6 = *(a1 + 8);
    (*(v6 + 1))(v7, a1 + 16);
    v7[7] = 1;
    v7[6] = &v8;
    v5[0] = a1;
    v5[1] = &v6;
    sub_10504(a2, v5);
    return sub_10C94(&v6);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v6 = a2;
    return (**(a1 + 8))(a1 + 16, &v6);
  }
}

void sub_103C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_103DC(uint64_t a1, unsigned int *a2)
{
  v5 = *(a1 + 8);
  (*(v5 + 8))(v6, a1 + 16);
  v7 = v5;
  (*(v5 + 8))(v8, v6);
  v8[7] = 1;
  v8[6] = &v9;
  v4 = &v7;
  sub_10D08(a2, &v4);
  sub_10C94(&v7);
  return (*(v5 + 24))(v6);
}

void sub_104B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_18A0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10504(uint64_t result, uint64_t *a2)
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
      result = sub_379C(v11, &v10, &v8);
      if (result)
      {
        do
        {
          v13 = v10;
          v7 = *a2;
          v12[0] = a2[1];
          v12[1] = &v13;
          sub_105DC((v7 + 64), &v8, v12);
          v9 = 0;
          v10 = 0;
          v8 = 0;
          result = sub_379C(v11, &v10, &v8);
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

_DWORD *sub_105DC(_DWORD *result, char *__src, _DWORD **a3)
{
  v3 = *__src;
  if (((1 << (v3 >> 28)) & 0xA02F) == 0)
  {
    if (v3 >> 28 != 4)
    {
      return result;
    }

    v8 = BYTE3(v3) & 0xF | 0x20;
    v9 = *(__src + 1);
    v10 = BYTE2(v3) >> 4;
    if (v10 > 0xB)
    {
      switch(v10)
      {
        case 0xCu:
          if (v3)
          {
            v27 = 0;
            *&v26[8] = 0;
            v23 = v8 << 24;
            v24 = BYTE2(v3) << 16;
            v25 = (v24 - 0x100000) | (v8 << 24);
            *v26 = (v24 - 0x100000) & 0xFFFFFF80 | (v8 << 24) | (v9 >> 8) & 0x7F;
            sub_10900(*a3, *a3[1], v26);
            v27 = 0;
            *&v26[8] = 0;
            *v26 = v25 & 0xFFFFFF80 | v9 & 0x7F | 0x2000;
            sub_10900(*a3, *a3[1], v26);
          }

          else
          {
            v23 = v8 << 24;
            v24 = BYTE2(v3) << 16;
          }

          v27 = 0;
          *&v26[4] = 0;
          v12 = HIWORD(v9) & 0x7F00 | v23 | v24;
          break;
        case 0xDu:
          v27 = 0;
          *&v26[4] = 0;
          v12 = (BYTE2(v3) << 16) | (v8 << 24) | (v9 >> 25 << 8);
          break;
        case 0xEu:
          v27 = 0;
          *&v26[4] = 0;
          v12 = (v9 >> 10) & 0x7F00 | (BYTE2(v3) << 16) | (v8 << 24) | (v9 >> 25);
          break;
        default:
          return result;
      }

      goto LABEL_35;
    }

    if (v10 - 8 < 4)
    {
      v11 = v10 == 9;
      if (v9 >> 25)
      {
        v11 = v9 >> 25;
      }

      v27 = 0;
      *&v26[4] = 0;
      v12 = v11 | (BYTE2(v3) << 16) | (v8 << 24) | v3 & 0x7F00;
LABEL_35:
      *v26 = v12;
      return sub_10900(*a3, *a3[1], v26);
    }

    if (v10 - 2 >= 2)
    {
      return result;
    }

    v13 = (v3 >> 16) & 0xF;
    v14 = &result[12 * (BYTE3(v3) & 0xF)] + 3 * v13;
    v15 = (v3 >> 8) & 0x7F;
    v16 = *__src & 0x7F;
    v17 = (v9 >> 18) & 0x7F;
    if ((v3 & 0x100000) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (v18 == *v14 && v15 == v14[1])
    {
      v19 = v13 | 0xB0;
      if (v16 == v14[2])
      {
        v20 = (v8 << 24) | (v19 << 16);
LABEL_28:
        v27 = 0;
        *&v26[8] = 0;
        *v26 = v20 | (v9 >> 25) | 0x600;
        result = sub_10900(*a3, *a3[1], v26);
        if (!v17)
        {
          return result;
        }

        v27 = 0;
        *&v26[4] = 0;
        v12 = v17 | v20 | 0x2600;
        goto LABEL_35;
      }
    }

    else
    {
      v19 = v13 | 0xB0;
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = 25344;
    }

    else
    {
      v21 = 25856;
    }

    v27 = 0;
    *&v26[8] = 0;
    v20 = (v8 << 24) | (v19 << 16);
    v22 = v20 | v21;
    *v26 = v20 | v21 | v15;
    sub_10900(*a3, *a3[1], v26);
    v27 = 0;
    *&v26[8] = 0;
    *v26 = (v22 | v16) - 256;
    sub_10900(*a3, *a3[1], v26);
    *v14 = v18;
    v14[1] = v15;
    v14[2] = v16;
    goto LABEL_28;
  }

  v6 = *a3;
  v7 = *a3[1];

  return sub_10900(v6, v7, __src);
}