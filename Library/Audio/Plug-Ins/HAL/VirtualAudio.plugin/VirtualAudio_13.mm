void sub_EAE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4A06C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EAE3C(uint64_t a1)
{
  if ((sub_8DA94(a1) & 1) == 0)
  {
    v13 = sub_5544(14);
    v14 = sub_468EC(1, *v13, *(v13 + 8));
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "DSPChain.mm";
      v23 = 1024;
      v24 = 1897;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v19 = a1 + 48;
  v20 = 1;
  sub_26C0(a1 + 48);
  v18 = 0;
  for (i = *(a1 + 32); i != *(a1 + 24); i -= 24)
  {
    v17 = 0;
    v3 = (*(**(i - 16) + 256))(*(i - 16), 2, 0, &v17);
    if (v3)
    {
      v6 = sub_5544(14);
      v7 = sub_468EC(1, *v6, *(v6 + 8));
      v8 = v7;
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "DSPChain.mm";
        v23 = 1024;
        v24 = 1910;
        v9 = "%25s:%-5d EXCEPTION (stat) [error stat is an error]: Unexpected error from HasStaticChannelCountForBus";
        goto LABEL_14;
      }

LABEL_15:

      v10 = __cxa_allocate_exception(0x10uLL);
      *v10 = &off_6DDDD0;
      v10[2] = v3;
    }

    if (v17 == 1)
    {
      v3 = (*(**(i - 16) + 264))(*(i - 16), 2, 0, &v18);
      if (!v3)
      {
        v4 = v18;
        goto LABEL_10;
      }

      v11 = sub_5544(14);
      v12 = sub_468EC(1, *v11, *(v11 + 8));
      v8 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "DSPChain.mm";
        v23 = 1024;
        v24 = 1914;
        v9 = "%25s:%-5d EXCEPTION (stat) [error stat is an error]: Unexpected error from GetChannelCountForBus";
LABEL_14:
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
      }

      goto LABEL_15;
    }
  }

  v4 = 0;
LABEL_10:
  sub_3174(a1 + 48);
  return v4;
}

uint64_t sub_EB1BC(void *a1, AudioUnitScope inScope, unsigned int a3, int *a4)
{
  if (inScope - 3 <= 0xFFFFFFFD)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      ioDataSize = 136315394;
      v36 = "DSPProcessorManager.cpp";
      v37 = 1024;
      v38 = 770;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input", &ioDataSize, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input");
  }

  outData = 0;
  ioDataSize = 4;
  v8 = a1[9];
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  Property = AudioUnitGetProperty(v9, 0xBu, inScope, 0, &outData, &ioDataSize);
  if (Property)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      ioDataSize = 136315394;
      v36 = "DSPProcessorManager.cpp";
      v37 = 1024;
      v38 = 773;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", &ioDataSize, 0x12u);
    }

    v13 = sub_5544(25);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v15 = (*(*a1 + 160))(a1);
      sub_22170(v32, v15);
      v16 = v33;
      v17 = v32[0];
      sub_22170(__p, Property);
      v18 = v32;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v31 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      ioDataSize = 136316162;
      v36 = "DSPProcessorManager.cpp";
      v37 = 1024;
      v38 = 784;
      v39 = 2080;
      v40 = v18;
      v41 = 1024;
      v42 = Property;
      v43 = 2080;
      v44 = v19;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP (%s) static channel setup failed with error: (%d) %s", &ioDataSize, 0x2Cu);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }
  }

  else
  {
    if (outData <= a3)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        ioDataSize = 136315650;
        v36 = "DSPProcessorManager.cpp";
        v37 = 1024;
        v38 = 774;
        v39 = 1024;
        LODWORD(v40) = inScope;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): inElement cannot exceed bus count for scope: %u", &ioDataSize, 0x18u);
      }

      v29 = __cxa_allocate_exception(0x10uLL);
      sub_1DE494(v29, "inElement cannot exceed bus count for scope: %u");
    }

    v20 = 14;
    if (inScope == 1)
    {
      v20 = 11;
    }

    v21 = a1[v20] + 48 * a3;
    if ((*(v21 + 12) & 0x20) != 0)
    {
      v22 = *(v21 + 28);
    }

    else
    {
      v22 = 1;
    }

    *a4 = v22;
  }

  return Property;
}

uint64_t sub_EB5C4(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  if (v3 != 1718773105 && v3 != 1819304813)
  {
    v9 = CAVerboseAbort();
    return sub_EB670(v9);
  }

  v5 = *(result + 24);
  if (!v5)
  {
    goto LABEL_12;
  }

  if ((*(result + 12) & 0x20) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(result + 28);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 <= v5)
  {
    v7 = v5 / v6;
    goto LABEL_14;
  }

LABEL_12:
  v7 = (*(result + 32) + 7) >> 3;
LABEL_14:
  *(result + 28) = a2;
  *(result + 20) = 1;
  if (a3)
  {
    v7 *= a2;
    *(result + 24) = v7;
    v8 = *(result + 12) & 0xFFFFFFDF;
  }

  else
  {
    *(result + 24) = v7;
    v8 = *(result + 12) | 0x20;
  }

  *(result + 12) = v8;
  *(result + 16) = v7;
  return result;
}

uint64_t sub_EB670(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == (a1 + 64))
  {
LABEL_9:
    atomic_load((a1 + 16));
  }

  else
  {
    while (*(v2 + 14) == -1)
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
      if (v4 == (a1 + 64))
      {
        goto LABEL_9;
      }
    }

    v6 = atomic_load((a1 + 16));
    if ((v6 & 1) == 0)
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "PowerLogManager.cpp";
        v16 = 1024;
        v17 = 277;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): BeginPowerLogTracking()/EndPowerLogTracking() mismatch.", &v14, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "BeginPowerLogTracking()/EndPowerLogTracking() mismatch.");
    }
  }

  v7 = sub_5544(14);
  if (*(v7 + 8))
  {
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315394;
        v15 = "PowerLogManager.cpp";
        v16 = 1024;
        v17 = 279;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d EndPowerLogTracking()", &v14, 0x12u);
      }
    }
  }

  atomic_store(0, (a1 + 16));
  v9 = *(a1 + 24);
  sub_4F08C();
  result = caulk::concurrent::messenger::enqueue(&unk_70A4E0, v9);
  *(a1 + 24) = 0;
  return result;
}

void sub_EB88C(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    goto LABEL_12;
  }

  v2 = sub_5544(17);
  v3 = sub_5544(25);
  v4 = 0;
  *v11 = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&v11[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      goto LABEL_8;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_8:
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v11 = 136315394;
    *&v11[4] = "OrientationIODelegate.cpp";
    *&v11[12] = 1024;
    *&v11[14] = 113;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Unregistered from Device Orientation unexpectedly", v11, 0x12u);
  }

  if (*(a1 + 80) == 1)
  {
LABEL_12:
    sub_8BD14(v11, *(a1 + 8), *(a1 + 16));
    v9 = *v11;
    v8 = *&v11[8];
    if (*&v11[8])
    {
      atomic_fetch_add_explicit((*&v11[8] + 16), 1uLL, memory_order_relaxed);
      sub_1A8C0(v8);
    }

    sub_EBA7C();
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (!caulk::g_realtime_safe_resource)
    {
      __break(1u);
    }

    v10 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v10 + 16) = 0;
    *(v10 + 24) = v9;
    *(v10 + 32) = v8;
    *v10 = off_6CFFB0;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v10);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_EBA5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_EBA7C()
{
  if ((atomic_load_explicit(&qword_6FD708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD708))
  {
    sub_8BEE4();
    v0 = qword_709F20;
    if (qword_709F20)
    {
      dispatch_retain(qword_709F20);
    }

    object = v0;
    caulk::concurrent::messenger::messenger(&unk_6FD6F8, &object);
    if (object)
    {
      dispatch_release(object);
    }

    __cxa_guard_release(&qword_6FD708);
  }
}

void sub_EBB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  __cxa_guard_abort(&qword_6FD708);
  _Unwind_Resume(a1);
}

uint64_t sub_EBB2C(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6B90F0;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_EBBC4(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_EBC0C(a1);
  return sub_ECBC8(&v2);
}

void sub_EBBF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_ECBC8(va);
  _Unwind_Resume(a1);
}

void sub_EBC0C(uint64_t a1)
{
  sub_8AFBC(&v20, (a1 + 24), 122);
  v1 = v20;
  if (v20)
  {
    v2 = sub_5544(17);
    v3 = sub_5544(25);
    v4 = 0;
    *buf = 0x100000002;
    v5 = *(v2 + 8);
    while (1)
    {
      v6 = *&buf[v4];
      if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
      {
        break;
      }

      v4 += 4;
      if (v4 == 8)
      {
        if ((v5 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }
    }

    if ((v5 & v6) == 0)
    {
      v2 = v3;
    }

    if (*(v2 + 8))
    {
LABEL_10:
      v7 = *v2;
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = (v1 + 24);
        if (*(v1 + 47) < 0)
        {
          v8 = *v8;
        }

        *buf = 136315650;
        *&buf[4] = "OrientationIODelegate.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 84;
        v23 = 2080;
        v24[0] = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unregistering %s for Device Orientation Updates", buf, 0x1Cu);
      }
    }

LABEL_15:
    v9 = *(v1 + 104);
    v11 = (v1 + 24);
    v10 = *(v1 + 24);
    if (*(v1 + 47) >= 0)
    {
      v12 = (v1 + 24);
    }

    else
    {
      v12 = *(v1 + 24);
    }

    sub_8AA24(buf, v12);
    v13 = v9(*&buf[8]);
    sub_8AAAC(buf);
    if (v13)
    {
      v14 = sub_5544(17);
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
          goto LABEL_25;
        }
      }

      if ((v17 & v18) == 0)
      {
        v14 = v15;
      }

LABEL_25:
      v19 = *v14;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (*(v1 + 47) < 0)
        {
          v11 = *v11;
        }

        *buf = 136315906;
        *&buf[4] = "OrientationIODelegate.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 87;
        v23 = 1024;
        LODWORD(v24[0]) = v13;
        WORD2(v24[0]) = 2080;
        *(v24 + 6) = v11;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed [%d] to unregister %s for Device Orientation Updates", buf, 0x22u);
      }
    }

    *(v1 + 80) = 0;
  }

  if (v21)
  {
    sub_1A8C0(v21);
  }
}

void sub_EC16C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_EC17C(uint64_t a1)
{
  sub_EC3A8(*(a1 + 24));
  v2 = *(a1 + 24);
  memset(v11, 0, sizeof(v11));
  sub_53E8(&__p, "measuredWattsParameterID");
  v3 = *sub_89AB0(v2 + 56, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v3 != -1)
  {
    v7 = 0;
    sub_EC9BC(&__p, "Avg Watts Measured", &v7);
    sub_88E68(v11, &__p);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p)
    {
      CFRelease(__p);
    }
  }

  sub_53E8(&__p, "modelledWattsParameterID");
  v4 = *sub_89AB0(v2 + 56, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v4 != -1)
  {
    v7 = 0;
    sub_EC9BC(&__p, "Avg Watts Modelled", &v7);
    sub_88E68(v11, &__p);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p)
    {
      CFRelease(__p);
    }
  }

  v5 = sub_65448(v11);
  v6 = v5;
  __p = v11;
  sub_65830(&__p);
  sub_ECA88(&v6);
  CFRelease(v5);
  sub_68E60();
  operator new();
}

void sub_EC334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1D5D20(&__p);
  __p = &a17;
  sub_65830(&__p);
  _Unwind_Resume(a1);
}

void sub_EC3A8(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 80));
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  v4 = *(a1 + 144);
  if (v4 != v3)
  {
    LOBYTE(v15) = 0;
    v16 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    do
    {
      if (*v4)
      {
        sub_EC680(v4, "Avg Watts Measured", &v15);
        sub_EC680(v4, "Avg Watts Modelled", &v13);
      }

      ++v4;
    }

    while (v4 != v3);
    memset(buf, 0, sizeof(buf));
    v5 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    if (v16 == 1)
    {
      v17 = v15 / v5;
      sub_EC9BC(&v18, "Avg Watts Measured", &v17);
      sub_88E68(buf, &v18);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    if (v14 == 1)
    {
      v17 = v13 / v5;
      sub_EC9BC(&v18, "Avg Watts Modelled", &v17);
      sub_88E68(buf, &v18);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    v6 = sub_65448(buf);
    v12 = v6;
    v18 = buf;
    sub_65830(&v18);
    sub_ECA88(&v12);
    v7 = *(a1 + 144);
    for (i = *(a1 + 152); i != v7; i -= 8)
    {
      v9 = *(i - 8);
      sub_7622C(v9);
    }

    *(a1 + 152) = v7;
    v10 = sub_5544(14);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "PowerLogManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 357;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d PowerLogManager entries flushed.", buf, 0x12u);
        }
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  std::recursive_mutex::unlock((a1 + 80));
}

void sub_EC604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_EC680(const __CFDictionary **a1, char *__s, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_15;
  }

  v7 = strlen(__s);
  if (__s)
  {
    v8 = CFStringCreateWithBytes(0, __s, v7, 0x8000100u, 0);
    cf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v8 = 0;
    cf = 0;
  }

  v10 = CFDictionaryContainsKey(v3, v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    if (*a1)
    {
      v11 = sub_EC83C(*a1, __s);
      if (v11)
      {
        v12 = sub_EC94C(v11);
        if (*(a3 + 4) == 1)
        {
          *a3 = v12 + *a3;
        }

        else
        {
          *a3 = v12;
          *(a3 + 4) = 1;
        }

        return;
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      sub_1DC894(v13);
LABEL_18:
    }

LABEL_15:
    v13 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v13);
    goto LABEL_18;
  }
}

const void *sub_EC83C(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_EC8FC(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_20B45C(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0xEC8E8);
}

float sub_EC94C(uint64_t a1)
{
  v1 = sub_725A0(a1);
  if (!HIDWORD(v1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  return *&v1;
}

uint64_t sub_EC9BC(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_ECA54(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

const __CFDictionary *sub_ECA88(const __CFDictionary **a1)
{
  result = *a1;
  if (result)
  {
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v3 = *a1;

      return _PLLogRegisteredEvent(26, @"Speaker Amp", v3, 0);
    }
  }

  return result;
}

void sub_ECAE8(uint64_t *a1)
{
  v1 = *a1;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_ECB58(caulk::concurrent::message *this)
{
  *this = off_6B8D48;
  v2 = *(this + 4);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

caulk::concurrent::message **sub_ECBC8(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6CFFD8;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_ECC44(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_ECC8C(a1);
  return sub_ED190(&v2);
}

void sub_ECC78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_ED190(va);
  _Unwind_Resume(a1);
}

void sub_ECC8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = *(a1 + 24);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_917BC(&v3, v2, 160);
  if (v3)
  {
    sub_ECFE4(v3);
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_ECFE4(uint64_t a1)
{
  sub_921B4(&v12);
  v2 = v12;
  std::mutex::lock(v12);
  v3 = *v2[1].__m_.__opaque;
  if (v3)
  {
    opaque = v2[1].__m_.__opaque;
    v5 = *v2[1].__m_.__opaque;
    do
    {
      v6 = sub_6F834(v5 + 4, (a1 + 24));
      if ((v6 & 0x80u) == 0)
      {
        opaque = v5;
      }

      v5 = *&v5[(v6 >> 4) & 8];
    }

    while (v5);
    if (opaque != v2[1].__m_.__opaque && (sub_6F834((a1 + 24), opaque + 4) & 0x80) == 0)
    {
      v7 = *(opaque + 1);
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
        v9 = opaque;
        do
        {
          v8 = *(v9 + 2);
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (v2[1].__m_.__sig == opaque)
      {
        v2[1].__m_.__sig = v8;
      }

      --*&v2[1].__m_.__opaque[8];
      sub_75234(v3, opaque);
      sub_ED13C((opaque + 32));
      operator delete(opaque);
    }
  }

  std::mutex::unlock(v2);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_ED124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED13C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

caulk::concurrent::message **sub_ED190(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6B9118;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_ED20C(uint64_t a1, int a2)
{
  if (((*(*a1 + 472))(a1) & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "VirtualAudio_Device.cpp";
      v10 = 1024;
      v11 = 4081;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Buffer size isn't valid", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  return sub_D8D98(a1, a2, 0);
}

void sub_ED368(uint64_t a1)
{
  if ((*(a1 + 136) & 1) == 0)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v8 = "VirtualAudio_DevicePropertyManager.cpp";
        v9 = 1024;
        v10 = 345;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VirtualAudio_DevicePropertyManager has not been initialized.", buf, 0x12u);
      }
    }
  }

  v2 = *(a1 + 32);
  v5 = a1 + 32;
  v6 = (*(v2 + 16))(a1 + 32);
  sub_ED818(buf, a1);
}

void sub_ED788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_224F4C(&a13);
  _Unwind_Resume(a1);
}

void sub_ED818(void *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v3 = *(a2 + 144);
  v2 = *(a2 + 152);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_EDA08(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_65310(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_EDA40(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    v2 = *(result + 24);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  return result;
}

void sub_EDAE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_EDAFC(uint64_t *a1, uint64_t *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a2[1];
  if (!v5 || (result = std::__shared_weak_count::lock(v5), (a1[1] = result) == 0) || (v8 = *a2, *a1 = *a2, !v8))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "StandardUtilities.h";
        v14 = 1024;
        v15 = 284;
        v16 = 2080;
        v17 = "";
        v18 = 1024;
        v19 = a3;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_EDC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EDC84(uint64_t result, int a2, _DWORD *a3)
{
  if (a2 != 4)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VirtualAudio_DevicePropertyCache.cpp";
      v8 = 1024;
      v9 = 39;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  *(result + 56) = *a3;
  return result;
}

uint64_t sub_EDDA8(_BYTE *a1, uint64_t *a2, int a3, unsigned int *a4, int *a5, _DWORD *a6)
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
        v28 = 3554;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v19, "Precondition failure.");
    }

    result = (*(*a1 + 368))(a1, 1685287015, *a4, 0);
  }

  *a6 = result;
  return result;
}

void sub_EE218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE24C(CFDataRef *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  __p = off_6DCDE8;
  v10 = &_fclose;
  p_p = &__p;
  __stream = fopen(v3, "rb");
  v13[3] = v13;
  sub_EF218(&__p, v13);
  sub_EF23C(&__p);
  if (!__stream)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  fseek(__stream, 0, 2);
  v4 = ftell(__stream);
  sub_EF2C0(&__p, v4);
  fseek(__stream, 0, 0);
  fread(__p, 1uLL, v10 - __p, __stream);
  v5 = CFDataCreate(0, __p, v10 - __p);
  *a1 = v5;
  if (!v5)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  sub_EF384(&__stream);
  return sub_EF23C(v13);
}

void sub_EE414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_22A334(v14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_EF384(&a13);
  sub_EF23C(v13);
  _Unwind_Resume(a1);
}

void sub_EE47C(void *a1, uint64_t a2)
{
  *a1 = 0;
  sub_EE24C(&v4, a2);
  sub_EF3F8(v5, v4);
  v3 = v4;
  *a1 = v5[0];
  v5[0] = 0;
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_EE504(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

double sub_EE7B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  v5 = sub_5544(25);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(__p, *(a1 + 32));
    v7 = v16 >= 0 ? __p : __p[0];
    v8 = *(a1 + 31) >= 0 ? v4 : *(a1 + 8);
    *buf = 136315906;
    v18 = "DSPGraphConfig_Utilities.cpp";
    v19 = 1024;
    *v20 = 262;
    *&v20[4] = 2080;
    *&v20[6] = v7;
    v21 = 2080;
    v22 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading plist for property %s from path %s", buf, 0x26u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_EE47C(&v14, v4);
  if (v14)
  {
    operator new();
  }

  v9 = sub_5544(25);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_22170(__p, *(a1 + 32));
    if (v16 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (*(a1 + 31) >= 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = *(a1 + 8);
    }

    *buf = 136315906;
    v18 = "DSPGraphConfig_Utilities.cpp";
    v19 = 1024;
    *v20 = 271;
    *&v20[4] = 2080;
    *&v20[6] = v11;
    v21 = 2080;
    v22 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Loading plist for property %s from path %s was invalid", buf, 0x26u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  return result;
}

void sub_EEA8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 24);
  if (!v5)
  {
    sub_46A74();
  }

  (*(*v5 + 48))(&__p);
  sub_EEB58(v8, *(v2 + 72));
  sub_EF820(v8);
  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_EEB30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_12A2C4(va);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  _Unwind_Resume(a1);
}

void sub_EEB58(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v18 = *(v3 + 4);
      v4 = v3[4];
      v16 = v3[3];
      v17 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = sub_5544(25);
      v6 = *v5;
      if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(v14, v18);
        v7 = v15;
        v8 = v14[0];
        sub_1257B8(__p, v16);
        v9 = v14;
        if (v7 < 0)
        {
          v9 = v8;
        }

        v10 = __p;
        if (v13 < 0)
        {
          v10 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "RouteUtilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 120;
        *&buf[18] = 2080;
        *&buf[20] = v9;
        *&buf[28] = 2080;
        *&buf[30] = v10;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting property %s = %s", buf, 0x26u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      *buf = a2;
      *&buf[8] = &v18;
      *&buf[16] = a2;
      *&buf[24] = &v18;
      *&buf[32] = a2;
      v20 = &v18;
      v21 = a2;
      v22 = &v18;
      v23 = &v16;
      v24 = a2;
      v25 = &v18;
      v26 = &v16;
      v11 = *(v16 + 40);
      if (v11 == -1)
      {
        sub_20B4EC();
      }

      v14[0] = buf;
      (off_6C26F0[v11])(v14);
      if (v17)
      {
        sub_1A8C0(v17);
      }

      v3 = *v3;
    }

    while (v3);
  }
}

void sub_EED44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_1A8C0(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EED80(uint64_t a1, AudioUnitPropertyID a2, void *inData, UInt32 inDataSize, AudioUnitScope inScope, AudioUnitElement inElement)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  return AudioUnitSetProperty(v7, a2, inScope, inElement, inData, inDataSize);
}

void sub_EEDB0(uint64_t a1, unsigned int a2, int *a3, uint64_t *a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a3)
      {
        v4 = a2;
        while (1)
        {
          v5 = *a3;
          a3 += 3;
          if (v5 == 1919186467)
          {
            break;
          }

          if (!--v4)
          {
            v6 = sub_5544(14);
            v7 = *v6;
            if (*v6)
            {
              if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
              {
                v19 = 136315394;
                v20 = "HALDeviceManager.cpp";
                v21 = 1024;
                v22 = 147;
                _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate kAudioHardwarePropertyPhysicalDevices in inAddresses", &v19, 0x12u);
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Unable to locate kAudioHardwarePropertyPhysicalDevices in inAddresses");
          }
        }

        v9 = *a4;
        operator new();
      }

      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "HALDeviceManager.cpp";
        v21 = 1024;
        v22 = 134;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inAddresses is NULL]: inAddresses is NULL.", &v19, 0x12u);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "inAddresses is NULL.");
    }

    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALDeviceManager.cpp";
      v21 = 1024;
      v22 = 133;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inClientData is NULL]: inClientData is NULL.", &v19, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "inClientData is NULL.");
  }

  v16 = sub_5544(14);
  v17 = *v16;
  if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315394;
    v20 = "HALDeviceManager.cpp";
    v21 = 1024;
    v22 = 132;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): inNumberAddresses is 0.", &v19, 0x12u);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v18, "inNumberAddresses is 0.");
}

void sub_EF148(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = v3;
  (*(**(v2 + 16) + 56))(*(v2 + 16), **(v2 + 24), &v4, 8, 0, 0);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_EF1F0(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t sub_EF218(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6DCDE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_EF23C(uint64_t a1)
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

void *sub_EF2C0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_EF334(result, a2);
  }

  return result;
}

void sub_EF318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_EF334(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_189A00();
}

uint64_t *sub_EF384(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      sub_46A74();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

CFTypeID sub_EF3F8(void *a1, const __CFData *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
  if (!v3)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *a1 = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    goto LABEL_10;
  }

  *a1 = v4;
  v6 = CFGetTypeID(v4);
  result = CFDictionaryGetTypeID();
  if (v6 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_EF4F0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB160(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_EF530(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_EF5E8(a1, *a2);
      a2 += 6;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void *sub_EF5AC(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void *sub_EF5E8(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_EF820(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        sub_1A8C0(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_EF868(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != -1)
  {
    result = (off_6B8E68[v2])(&v3, result);
  }

  *(v1 + 40) = -1;
  return result;
}

void sub_EF8C0(uint64_t a1)
{
  LODWORD(outDataSize) = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(1u, &qword_6E9368, 0, 0, &outDataSize);
  if (PropertyDataSize)
  {
    v153 = sub_5544(14);
    v154 = *v153;
    if (*v153 && os_log_type_enabled(*v153, OS_LOG_TYPE_ERROR))
    {
      *outData = 136315394;
      *&outData[4] = "HALDeviceManager.cpp";
      *&outData[12] = 1024;
      *&outData[14] = 61;
      _os_log_impl(&dword_0, v154, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to read the property size for kAudioHardwarePropertyPhysicalDevices", outData, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = PropertyDataSize;
  }

  v2 = outDataSize >> 2;
  LODWORD(outDataSize) = outDataSize + 40;
  memset(outData, 0, 24);
  sub_F2A2C(outData, v2 + 10);
  v3 = *outData;
  PropertyData = AudioObjectGetPropertyData(1u, &qword_6E9368, 0, 0, &outDataSize, *outData);
  if (PropertyData)
  {
    v156 = sub_5544(14);
    v157 = *v156;
    if (*v156 && os_log_type_enabled(*v156, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 75;
      _os_log_impl(&dword_0, v157, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to read current device list", buf, 0x12u);
    }

    v158 = __cxa_allocate_exception(0x10uLL);
    *v158 = &off_6DDDD0;
    v158[2] = PropertyData;
  }

  v174[1] = 0;
  v174[0] = 0;
  v173 = v174;
  if (outDataSize >= 4)
  {
    v5 = outDataSize >> 2;
    v6 = v3;
    do
    {
      sub_75788(&v173, *v6++);
      --v5;
    }

    while (v5);
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  operator delete(v3);
LABEL_9:
  sub_10CA88(&v171, &v173, (a1 + 208));
  sub_10CA88(&v169, (a1 + 208), &v173);
  if (!(v172[1] | v170[1]))
  {
    goto LABEL_283;
  }

  v167 = a1;
  v168 = &v173;
  v7 = sub_5544(7);
  v161 = *(v7 + 8) & (*v7 != 0);
  if (v161 == 1)
  {
    sub_2E14C8((a1 + 208), "Cached Devices");
    sub_2E14C8(&v173, "Fetched Devices");
  }

  sub_2E14C8(&v171, "New Devices");
  sub_2E14C8(&v169, "Old Devices");
  v8 = v169;
  if (v169 != v170)
  {
    do
    {
      v9 = *(v8 + 7);
      sub_4E890();
      sub_13EB84(v9);
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v30 = *v11 == v8;
          v8 = v11;
        }

        while (!v30);
      }

      v8 = v11;
    }

    while (v11 != v170);
  }

  v165 = 0;
  __src = 0;
  v166 = 0;
  v12 = v171;
  if (v171 != v172)
  {
    do
    {
      v13 = *(v12 + 7);
      if (v13)
      {
        sub_2E1720(buf, *(v12 + 7));
        if (buf[24])
        {
          v14 = buf[23];
          if (buf[23] < 0)
          {
            sub_54A0(&outDataSize, *buf, *&buf[8]);
          }

          else
          {
            outDataSize = *buf;
            v192 = *&buf[16];
          }

          v23 = SHIBYTE(v192);
          v24 = outDataSize;
          if (v192 >= 0)
          {
            p_outDataSize = &outDataSize;
          }

          else
          {
            p_outDataSize = outDataSize;
          }

          if (v192 >= 0)
          {
            v26 = SHIBYTE(v192);
          }

          else
          {
            v26 = *(&outDataSize + 1);
          }

          if (v26 >= 19)
          {
            v27 = p_outDataSize + v26;
            v28 = p_outDataSize;
            do
            {
              v29 = memchr(v28, 86, v26 - 18);
              if (!v29)
              {
                break;
              }

              v30 = *v29 == 0x416C617574726956 && *(v29 + 1) == 0x697665446F696475;
              if (v30 && *(v29 + 11) == 0x5F6563697665446FLL)
              {
                if (v29 != v27 && v29 - p_outDataSize != -1)
                {
                  goto LABEL_92;
                }

                break;
              }

              v28 = (v29 + 1);
              v26 = v27 - v28;
            }

            while (v27 - v28 >= 19);
          }

          if (*(a1 + 200) == 1)
          {
            v32 = 0;
            while (1)
            {
              v33 = strlen(off_6C0678[v32]);
              v34 = v33;
              if ((v23 & 0x80000000) != 0)
              {
                if (v33 == *(&v24 + 1))
                {
                  v35 = v24;
                  if (*(&v24 + 1) == -1)
                  {
                    sub_1DE47C();
                  }

LABEL_59:
                  if (!memcmp(v35, off_6C0678[v32], v34))
                  {
                    break;
                  }
                }
              }

              else if (v33 == v23)
              {
                v35 = &outDataSize;
                goto LABEL_59;
              }

              if (++v32 == 6)
              {
                v36 = sub_5544(7);
                v37 = *v36;
                if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
                {
                  v38 = &outDataSize;
                  if (v192 < 0)
                  {
                    v38 = outDataSize;
                  }

                  *outData = 136315906;
                  *&outData[4] = "HALDeviceManager.cpp";
                  *&outData[12] = 1024;
                  *&outData[14] = 509;
                  *&outData[18] = 2048;
                  *&outData[20] = v13;
                  *&outData[28] = 2080;
                  *&outData[30] = v38;
                  _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing device with object ID %lu and UID %s from update list as it does not satisfy device filter AllowOnlyNull", outData, 0x26u);
                }

                sub_1C4454(&v173, v13);
                goto LABEL_92;
              }
            }
          }

          v39 = sub_5544(7);
          v40 = *v39;
          if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_INFO))
          {
            v41 = &outDataSize;
            if (v192 < 0)
            {
              v41 = outDataSize;
            }

            *outData = 136315906;
            *&outData[4] = "HALDeviceManager.cpp";
            *&outData[12] = 1024;
            *&outData[14] = 516;
            *&outData[18] = 2080;
            *&outData[20] = v41;
            *&outData[28] = 2048;
            *&outData[30] = v13;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d Newly connected device located. UID: %s, AudioObjectID: %lu", outData, 0x26u);
          }

          *outData = v13;
          if (SHIBYTE(v192) < 0)
          {
            sub_54A0(&outData[8], outDataSize, *(&outDataSize + 1));
          }

          else
          {
            *&outData[8] = outDataSize;
            *&outData[24] = v192;
          }

          v42 = v165;
          if (v165 >= v166)
          {
            v44 = __src;
            v45 = v165 - __src;
            v46 = (v165 - __src) >> 5;
            v47 = v46 + 1;
            if ((v46 + 1) >> 59)
            {
              sub_189A00();
            }

            v48 = v166 - __src;
            if ((v166 - __src) >> 4 > v47)
            {
              v47 = v48 >> 4;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFE0)
            {
              v49 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (!(v49 >> 59))
              {
                operator new();
              }

              sub_6ACD8();
            }

            v50 = (v165 - __src) >> 5;
            v51 = 32 * v46;
            *v51 = *outData;
            *(v51 + 8) = *&outData[8];
            *(v51 + 24) = *&outData[24];
            memset(&outData[8], 0, 24);
            v52 = 32 * v46 + 32;
            v53 = (v51 - 32 * v50);
            memcpy(v53, v44, v45);
            __src = v53;
            v165 = v52;
            v166 = 0;
            if (v44)
            {
              operator delete(v44);
              v165 = v52;
              if ((outData[31] & 0x80000000) != 0)
              {
                operator delete(*&outData[8]);
              }
            }

            else
            {
              v165 = v52;
            }
          }

          else
          {
            *v165 = *outData;
            v43 = *&outData[8];
            *(v42 + 3) = *&outData[24];
            *(v42 + 8) = v43;
            v165 = v42 + 32;
          }

LABEL_92:
          if (SHIBYTE(v192) < 0)
          {
            operator delete(outDataSize);
            if (v14 < 0)
            {
LABEL_102:
              operator delete(*buf);
            }
          }

          else if (v14 < 0)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v21 = sub_5544(7);
          v22 = *v21;
          if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            *outData = 136315650;
            *&outData[4] = "HALDeviceManager.cpp";
            *&outData[12] = 1024;
            *&outData[14] = 489;
            *&outData[18] = 2048;
            *&outData[20] = v13;
            v17 = v22;
            v18 = OS_LOG_TYPE_ERROR;
            v19 = "%25s:%-5d UID is NULL for newly connected device with AudioObjectID %lu. Ignoring device";
            v20 = 28;
            goto LABEL_30;
          }
        }
      }

      else
      {
        v15 = sub_5544(7);
        v16 = *v15;
        if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
        {
          *outData = 136315394;
          *&outData[4] = "HALDeviceManager.cpp";
          *&outData[12] = 1024;
          *&outData[14] = 478;
          v17 = v16;
          v18 = OS_LOG_TYPE_DEFAULT;
          v19 = "%25s:%-5d kAudioObjectUnknown AudioObjectID. Ignoring device.";
          v20 = 18;
LABEL_30:
          _os_log_impl(&dword_0, v17, v18, v19, outData, v20);
        }
      }

      v54 = v12[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v12[2];
          v30 = *v55 == v12;
          v12 = v55;
        }

        while (!v30);
      }

      v12 = v55;
    }

    while (v55 != v172);
  }

  v192 = 0;
  *(&outDataSize + 1) = 0;
  *&outDataSize = &outDataSize + 8;
  LOBYTE(v187) = 1;
  v188 = 0;
  atomic_fetch_add((sub_809C0() + 656), 1u);
  v56 = __src;
  v57 = v165;
  if (__src == v165)
  {
    goto LABEL_219;
  }

  v58 = (a1 + 8);
  v59 = a1 + 176;
  do
  {
    v60 = sub_5544(7);
    v61 = *v60;
    if (*v60 && os_log_type_enabled(*v60, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v56 + 2;
      if (*(v56 + 31) < 0)
      {
        v62 = *v62;
      }

      v63 = *v56;
      *outData = 136315906;
      *&outData[4] = "HALDeviceManager.cpp";
      *&outData[12] = 1024;
      *&outData[14] = 294;
      *&outData[18] = 2048;
      *&outData[20] = v63;
      *&outData[28] = 2080;
      *&outData[30] = v62;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling device state [Added] for Device ID: %lu for UID: %s", outData, 0x26u);
    }

    v64 = sub_5544(7);
    v65 = *v64;
    if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_INFO))
    {
      v66 = *v56;
      if (*(v56 + 31) >= 0)
      {
        v67 = v56 + 2;
      }

      else
      {
        v67 = *(v56 + 1);
      }

      *outData = 136315906;
      *&outData[4] = "HALDeviceManager.cpp";
      *&outData[12] = 1024;
      *&outData[14] = 236;
      *&outData[18] = 2048;
      *&outData[20] = v66;
      *&outData[28] = 2080;
      *&outData[30] = v67;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "%25s:%-5d Creating Device ID: %lu with UID: %s", outData, 0x26u);
    }

    v174[2] = (a1 + 8);
    v175 = 1;
    std::__shared_mutex_base::lock_shared(v58);
    v68 = *(a1 + 184);
    if (v68 == v59)
    {
      goto LABEL_129;
    }

    v69 = *v56;
    while ((*(**(v68 + 16) + 120))(*(v68 + 16)) != v69)
    {
      v68 = *(v68 + 8);
      if (v68 == v59)
      {
        goto LABEL_129;
      }
    }

    if (v68 == v59)
    {
LABEL_129:
      LODWORD(v71) = 1;
    }

    else
    {
      v70 = sub_5544(7);
      v71 = *v70;
      if (*v70)
      {
        if (os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
        {
          v72 = *v56;
          if (*(v56 + 31) >= 0)
          {
            v73 = v56 + 2;
          }

          else
          {
            v73 = *(v56 + 1);
          }

          *outData = 136315906;
          *&outData[4] = "HALDeviceManager.cpp";
          *&outData[12] = 1024;
          *&outData[14] = 251;
          *&outData[18] = 2048;
          *&outData[20] = v72;
          *&outData[28] = 2080;
          *&outData[30] = v73;
          _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d PhysicalDevice to add already exists in the DeviceManager database. Device ID %lu (uid '%s').", outData, 0x26u);
        }

        LODWORD(v71) = 0;
      }
    }

    std::__shared_mutex_base::unlock_shared(v58);
    if (!v71)
    {
      goto LABEL_206;
    }

    v162 = *v56;
    if ((atomic_load_explicit(&qword_6E5EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E5EF0))
    {
      sub_53E8(outData, "Codec");
      *&outData[24] = off_6B77E8;
      *(&v197 + 1) = &outData[24];
      sub_53E8(v198, "Baseband Voice");
      v200 = off_6B7868;
      v201[2] = &v200;
      sub_53E8(&v202, "USB Audio Output");
      v205[0] = off_6B78E8;
      v206 = v205;
      sub_53E8(v207, "USB IDAM");
      v208 = off_6B7968;
      v210[1] = &v208;
      sub_53E8(v211, "Speaker");
      v214[0] = off_6B79E8;
      v215 = v214;
      sub_53E8(&v216, "AppleSongbirdDSP");
      v218[0] = off_6B7A68;
      v220 = v218;
      sub_53E8(v221, "PuffinInput");
      v223 = off_6B7AE8;
      v224[2] = &v223;
      sub_53E8(&v225, "PuffinOutput");
      v228[0] = off_6B7B68;
      v229 = v228;
      sub_53E8(v230, "Actuator");
      v231 = off_6B7BE8;
      v233[1] = &v231;
      sub_53E8(v234, "AOP Audio-1");
      v237[0] = off_6B7C68;
      v238 = v237;
      sub_53E8(v239, "HP16Mic");
      v240[0] = off_6B7C68;
      v240[3] = v240;
      sub_53E8(v241, "Digital Mic");
      v242[0] = off_6B7CE8;
      v242[3] = v242;
      sub_53E8(v243, "DigitalMic");
      v244[0] = off_6B7CE8;
      v244[3] = v244;
      sub_53E8(v245, "Mic");
      v246[0] = off_6B7CE8;
      v246[3] = v246;
      sub_53E8(v247, "Hawking");
      v248[0] = off_6B7D68;
      v248[3] = v248;
      sub_53E8(v249, "Flicker");
      v250[0] = off_6B7D68;
      v250[3] = v250;
      sub_53E8(v251, "Penrose");
      v252[0] = off_6B7D68;
      v252[3] = v252;
      sub_53E8(v253, "Halogen");
      v254[0] = off_6B7DE8;
      v254[3] = v254;
      sub_53E8(v255, "MaggieDebug");
      v256[0] = off_6B7E68;
      v256[3] = v256;
      sub_53E8(v257, "AudioDebug");
      v258[0] = off_6B7E68;
      v258[3] = v258;
      sub_53E8(v259, "AudioDebug2");
      v260[0] = off_6B7E68;
      v260[3] = v260;
      sub_53E8(v261, "DSP Debug1");
      v262[0] = off_6B7EE8;
      v262[3] = v262;
      sub_53E8(v263, "DSP Debug2");
      v264[0] = off_6B7EE8;
      v264[3] = v264;
      sub_53E8(v265, "Haptic Debug");
      v266[0] = off_6B7F68;
      v266[3] = v266;
      sub_53E8(v267, "Virtual eARC");
      v268[0] = off_6B7FE8;
      v268[3] = v268;
      sub_53E8(v269, "Squid Audio");
      v270[0] = off_6B8068;
      v270[3] = v270;
      sub_53E8(v271, "HPMic");
      v272[0] = off_6B80E8;
      v272[3] = v272;
      sub_53E8(v273, "Receiver");
      v274[0] = off_6B8168;
      v274[3] = v274;
      sub_53E8(v275, "LPMicInjection");
      v276[0] = off_6B81E8;
      v276[3] = v276;
      sub_1EB3D8(outData, 29);
      for (i = 1568; i != -56; i -= 56)
      {
        sub_1EB97C(&outData[i]);
      }

      __cxa_guard_release(&qword_6E5EF0);
    }

    v74 = 0;
    v75 = *(v56 + 31);
    v76 = *(v56 + 1);
    v77 = *(v56 + 2);
    while (1)
    {
      v78 = strlen(off_6B77C0[v74]);
      v79 = v78;
      if ((v75 & 0x80) == 0)
      {
        break;
      }

      if (v78 == v77)
      {
        v80 = v76;
        if (v77 == -1)
        {
          sub_1DE47C();
        }

        goto LABEL_138;
      }

LABEL_139:
      if (++v74 == 3)
      {
        goto LABEL_143;
      }
    }

    v80 = v56 + 2;
    if (v79 != v75)
    {
      goto LABEL_139;
    }

LABEL_138:
    v81 = memcmp(v80, off_6B77C0[v74], v79);
    if (v81)
    {
      goto LABEL_139;
    }

    kind = caulk::build::detail::get_kind(v81);
    if ((kind & 1) == 0 && (caulk::build::detail::get_kind(kind) & 2) == 0)
    {
      goto LABEL_153;
    }

LABEL_143:
    v83 = sub_1EB9B8(v56 + 1);
    if (!v83)
    {
      v85 = sub_5544(7);
      v86 = *v85;
      if (*v85 && os_log_type_enabled(*v85, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v56 + 31) >= 0)
        {
          v87 = v56 + 2;
        }

        else
        {
          v87 = *(v56 + 1);
        }

        *outData = 136315906;
        *&outData[4] = "DeviceFactory.cpp";
        *&outData[12] = 1024;
        *&outData[14] = 144;
        *&outData[18] = 2080;
        *&outData[20] = v87;
        *&outData[28] = 2048;
        *&outData[30] = v162;
        _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled UID %s for PhysicalDevice with AudioObjectID %lu", outData, 0x26u);
      }

LABEL_153:
      v177 = 0;
      v176 = 0;
      goto LABEL_156;
    }

    v184 = v162;
    v84 = v83[8];
    if (!v84)
    {
      goto LABEL_213;
    }

    (*(*v84 + 48))(&v176);
    if (v176)
    {
      goto LABEL_146;
    }

    if (v177)
    {
      sub_1A8C0(v177);
    }

LABEL_156:
    if ((atomic_load_explicit(&qword_6E5F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E5F20))
    {
      *outData = 1634300528;
      *&outData[8] = off_6B8268;
      *&outData[32] = &outData[8];
      LODWORD(v197) = 1651275109;
      *(&v197 + 1) = off_6B82E8;
      v199 = &v197 + 8;
      LODWORD(v200) = 1970496032;
      v201[0] = off_6B8368;
      v202 = v201;
      v203 = 1685090932;
      v204 = off_6B83E8;
      v205[2] = &v204;
      LODWORD(v206) = 1751412073;
      v207[0] = off_6B83E8;
      v208 = v207;
      v209 = 1986818665;
      v210[0] = off_6B8468;
      v212 = v210;
      v213 = 1853189228;
      v214[0] = off_6B84E8;
      v215 = v214;
      v216 = 1937011307;
      v217 = off_6B8568;
      v218[1] = &v217;
      v219 = 1835169139;
      v220 = off_6B85E8;
      v222 = &v220;
      LODWORD(v223) = 1953002862;
      v224[0] = off_6B8668;
      v225 = v224;
      v226 = 1885563168;
      v227 = off_6B8668;
      v228[2] = &v227;
      LODWORD(v229) = 1667463012;
      v230[0] = off_6B86E8;
      v231 = v230;
      v232 = 1667463020;
      v233[0] = off_6B86E8;
      v235 = v233;
      v236 = 1668506482;
      v237[0] = off_6B8768;
      v238 = v237;
      sub_1EBAB4(outData, 14);
      for (j = 528; j != -32; j -= 40)
      {
        sub_1EBFD4(&outData[j]);
      }

      __cxa_guard_release(&qword_6E5F20);
    }

    *buf = v162;
    strcpy(outData, "nartbolg");
    outData[9] = 0;
    *&outData[10] = 0;
    v88 = sub_542F0(buf, outData, 0, 0);
    v90 = v88;
    if (!v88)
    {
      if ((v89 & 1) == 0)
      {
        sub_1EC054();
      }

      if (v88 == 0x6373637200000000 && (sub_311548() & 1) == 0)
      {
        v103 = sub_5544(7);
        v104 = *v103;
        if (!*v103 || !os_log_type_enabled(*v103, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_193;
        }

        v105 = *(v56 + 31);
        v106 = *(v56 + 1);
        sub_22170(v180, 0x63736372u);
        if (v105 >= 0)
        {
          v107 = v56 + 2;
        }

        else
        {
          v107 = v106;
        }

        v108 = v180;
        if (v181 < 0)
        {
          v108 = v180[0];
        }

        *outData = 136316162;
        *&outData[4] = "DeviceFactory.cpp";
        *&outData[12] = 1024;
        *&outData[14] = 191;
        *&outData[18] = 2048;
        *&outData[20] = v162;
        *&outData[28] = 2080;
        *&outData[30] = v107;
        *&outData[38] = 2080;
        *&v197 = v108;
        _os_log_impl(&dword_0, v104, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PhysicalDevice with AudioObjectID %lu and UID %s does not support Oneness transport type %s.", outData, 0x30u);
        if ((v181 & 0x80000000) == 0)
        {
          goto LABEL_193;
        }

        v95 = v180[0];
      }

      else
      {
        v96 = HIDWORD(v90);
        v97 = sub_1EC0A0(v96);
        if (v97)
        {
          v186 = v162;
          v185 = v96;
          v98 = v97[6];
          if (v98)
          {
            (*(*v98 + 48))(&v176);
            if (v176)
            {
LABEL_146:
              *outData = a1 + 8;
              outData[8] = 1;
              std::__shared_mutex_base::lock(v58);
              sub_12A818();
            }

            if (v177)
            {
              sub_1A8C0(v177);
            }

            goto LABEL_194;
          }

LABEL_213:
          sub_46A74();
        }

        v99 = sub_5544(7);
        v100 = *v99;
        if (!*v99 || !os_log_type_enabled(*v99, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_193;
        }

        sub_22170(v178, v96);
        v101 = v178;
        if (v179 < 0)
        {
          v101 = v178[0];
        }

        v102 = *(v56 + 31) >= 0 ? (v56 + 2) : *(v56 + 1);
        *outData = 136316162;
        *&outData[4] = "DeviceFactory.cpp";
        *&outData[12] = 1024;
        *&outData[14] = 200;
        *&outData[18] = 2080;
        *&outData[20] = v101;
        *&outData[28] = 2048;
        *&outData[30] = v162;
        *&outData[38] = 2080;
        *&v197 = v102;
        _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled transport type %s for PhysicalDevice with AudioObjectID %lu and UID %s", outData, 0x30u);
        if ((v179 & 0x80000000) == 0)
        {
          goto LABEL_193;
        }

        v95 = v178[0];
      }

LABEL_167:
      operator delete(v95);
      goto LABEL_193;
    }

    v91 = sub_5544(7);
    v92 = *v91;
    if (*v91 && os_log_type_enabled(*v91, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v182, v90);
      v93 = v182;
      if (v183 < 0)
      {
        v93 = v182[0];
      }

      v94 = *(v56 + 31) >= 0 ? (v56 + 2) : *(v56 + 1);
      *outData = 136316418;
      *&outData[4] = "DeviceFactory.cpp";
      *&outData[12] = 1024;
      *&outData[14] = 180;
      *&outData[18] = 1024;
      *&outData[20] = v90;
      *&outData[24] = 2080;
      *&outData[26] = v93;
      *&outData[34] = 1024;
      *&outData[36] = v162;
      LOWORD(v197) = 2080;
      *(&v197 + 2) = v94;
      _os_log_impl(&dword_0, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') getting transport type for PhysicalDevice with AudioObjectID %u and UID %s", outData, 0x32u);
      if (v183 < 0)
      {
        v95 = v182[0];
        goto LABEL_167;
      }
    }

LABEL_193:
    v177 = 0;
    v176 = 0;
LABEL_194:
    v109 = sub_5544(7);
    v110 = *v109;
    if (*v109 && os_log_type_enabled(*v109, OS_LOG_TYPE_INFO))
    {
      if (*(v56 + 31) >= 0)
      {
        v111 = v56 + 2;
      }

      else
      {
        v111 = *(v56 + 1);
      }

      *outData = 136315906;
      *&outData[4] = "DeviceFactory.cpp";
      *&outData[12] = 1024;
      *&outData[14] = 228;
      *&outData[18] = 2048;
      *&outData[20] = v162;
      *&outData[28] = 2080;
      *&outData[30] = v111;
      _os_log_impl(&dword_0, v110, OS_LOG_TYPE_INFO, "%25s:%-5d Could not create PhysicalDevice with AudioObjectID %lu and UID %s", outData, 0x26u);
    }

    v112 = sub_5544(7);
    v113 = *v112;
    v57 = v165;
    if (*v112 && os_log_type_enabled(*v112, OS_LOG_TYPE_INFO))
    {
      v114 = *v56;
      if (*(v56 + 31) >= 0)
      {
        v115 = v56 + 2;
      }

      else
      {
        v115 = *(v56 + 1);
      }

      *outData = 136315906;
      *&outData[4] = "HALDeviceManager.cpp";
      *&outData[12] = 1024;
      *&outData[14] = 278;
      *&outData[18] = 2048;
      *&outData[20] = v114;
      *&outData[28] = 2080;
      *&outData[30] = v115;
      _os_log_impl(&dword_0, v113, OS_LOG_TYPE_INFO, "%25s:%-5d PhysicalDevice to add could not be created. Skipping. ID: %lu; UID: %s.", outData, 0x26u);
    }

LABEL_206:
    v56 += 8;
  }

  while (v56 != v57);
LABEL_219:
  sub_240CCC(&v187);
  if (v192)
  {
    v159 = __cxa_allocate_exception(0x40uLL);
    sub_2E1CA0(v159, &outDataSize);
  }

  sub_477A0(*(&outDataSize + 1));
  if (v161)
  {
    v118 = v169;
    if (v169 != v170)
    {
      do
      {
        v119 = *(v118 + 7);
        v120 = sub_5544(7);
        v121 = *v120;
        if (*v120 && os_log_type_enabled(*v120, OS_LOG_TYPE_INFO))
        {
          *outData = 136315650;
          *&outData[4] = "HALDeviceManager.cpp";
          *&outData[12] = 1024;
          *&outData[14] = 543;
          *&outData[18] = 2048;
          *&outData[20] = v119;
          _os_log_impl(&dword_0, v121, OS_LOG_TYPE_INFO, "%25s:%-5d Newly disconnected device located. AudioObjectID: %lu", outData, 0x1Cu);
        }

        v122 = v118[1];
        if (v122)
        {
          do
          {
            v123 = v122;
            v122 = *v122;
          }

          while (v122);
        }

        else
        {
          do
          {
            v123 = v118[2];
            v30 = *v123 == v118;
            v118 = v123;
          }

          while (!v30);
        }

        v118 = v123;
      }

      while (v123 != v170);
    }
  }

  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  *&outDataSize = &outDataSize;
  *(&outDataSize + 1) = &outDataSize;
  v192 = 0;
  LOBYTE(v187) = 0;
  v188 = 0;
  atomic_fetch_add((sub_809C0() + 656), 1u);
  v124 = v169;
  if (v169 != v170)
  {
    v125 = (a1 + 8);
    v126 = a1 + 176;
    do
    {
      v127 = *(v124 + 7);
      v190 = *(v124 + 7);
      v128 = sub_5544(7);
      v129 = *v128;
      if (*v128 && os_log_type_enabled(*v128, OS_LOG_TYPE_DEFAULT))
      {
        *outData = 136315650;
        *&outData[4] = "HALDeviceManager.cpp";
        *&outData[12] = 1024;
        *&outData[14] = 374;
        *&outData[18] = 2048;
        *&outData[20] = v127;
        _os_log_impl(&dword_0, v129, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling device state [Removed] for Device ID: %lu", outData, 0x1Cu);
      }

      v130 = sub_5544(7);
      v131 = *v130;
      if (*v130 && os_log_type_enabled(*v130, OS_LOG_TYPE_INFO))
      {
        *outData = 136315650;
        *&outData[4] = "HALDeviceManager.cpp";
        *&outData[12] = 1024;
        *&outData[14] = 324;
        *&outData[18] = 2048;
        *&outData[20] = v127;
        _os_log_impl(&dword_0, v131, OS_LOG_TYPE_INFO, "%25s:%-5d Deleting Device ID: %lu", outData, 0x1Cu);
      }

      v193 = a1 + 8;
      v194 = 1;
      std::__shared_mutex_base::lock_shared(v125);
      v132 = a1 + 176;
      if (*(a1 + 184) != v126)
      {
        v132 = *(a1 + 184);
        while ((*(**(v132 + 16) + 120))(*(v132 + 16)) != v127)
        {
          v132 = *(v132 + 8);
          if (v132 == v126)
          {
            v132 = a1 + 176;
            break;
          }
        }
      }

      std::__shared_mutex_base::unlock_shared(v125);
      if (v132 != v126)
      {
        v133 = *(v132 + 16);
        v134 = *(v132 + 24);
        if (v134)
        {
          atomic_fetch_add_explicit((v134 + 8), 1uLL, memory_order_relaxed);
        }

        std::__shared_mutex_base::lock(v125);
        sub_241E28(v126, v132);
        std::__shared_mutex_base::unlock(v125);
        (*(*v133 + 80))(v133);
        operator new();
      }

      v135 = sub_5544(7);
      v136 = *v135;
      if (*v135 && os_log_type_enabled(*v135, OS_LOG_TYPE_ERROR))
      {
        *outData = 136315394;
        *&outData[4] = "HALDeviceManager.cpp";
        *&outData[12] = 1024;
        *&outData[14] = 336;
        _os_log_impl(&dword_0, v136, OS_LOG_TYPE_ERROR, "%25s:%-5d PhysicalDevice to remove does not exist in the DeviceManager database", outData, 0x12u);
      }

      v137 = v124[1];
      if (v137)
      {
        do
        {
          v138 = v137;
          v137 = *v137;
        }

        while (v137);
      }

      else
      {
        do
        {
          v138 = v124[2];
          v30 = *v138 == v124;
          v124 = v138;
        }

        while (!v30);
      }

      v124 = v138;
    }

    while (v138 != v170);
  }

  sub_240CCC(&v187);
  v139 = (a1 + 208);
  if (v192)
  {
    for (k = *(&outDataSize + 1); k != &outDataSize; k = *(k + 8))
    {
      v141 = sub_5544(7);
      v142 = sub_5544(16);
      v143 = 0;
      *outData = 0x100000002;
      v144 = *(v141 + 8);
      while (1)
      {
        v145 = *&outData[v143];
        if (((v144 & v145) != 0) != ((*(v142 + 8) & v145) != 0))
        {
          break;
        }

        v143 += 4;
        if (v143 == 8)
        {
          if ((v144 & 1) == 0)
          {
            goto LABEL_273;
          }

          goto LABEL_267;
        }
      }

      if ((v144 & v145) == 0)
      {
        v141 = v142;
      }

      if (*(v141 + 8))
      {
LABEL_267:
        v146 = *v141;
        if (v146 && os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
        {
          v147 = *(k + 16);
          sub_23148(&v187, v147 + 2);
          v148 = &v187;
          if (v189 < 0)
          {
            v148 = v187;
          }

          *outData = 136315906;
          *&outData[4] = "HALDeviceManager.cpp";
          *&outData[12] = 1024;
          *&outData[14] = 409;
          *&outData[18] = 2048;
          *&outData[20] = v147;
          *&outData[28] = 2080;
          *&outData[30] = v148;
          _os_log_impl(&dword_0, v146, OS_LOG_TYPE_DEBUG, "%25s:%-5d Queueing device %p (%s) for deletion.", outData, 0x26u);
          if (v189 < 0)
          {
            operator delete(v187);
          }
        }

        continue;
      }

LABEL_273:
      ;
    }

    v139 = (a1 + 208);
    v149 = sub_8703C();
    v150 = (*(*v149 + 336))(v149);
    if ((v150 & 1) == 0)
    {
      v151 = sub_5544(7);
      v152 = *v151;
      if (*v151)
      {
        if (os_log_type_enabled(*v151, OS_LOG_TYPE_ERROR))
        {
          *outData = 136315394;
          *&outData[4] = "HALDeviceManager.cpp";
          *&outData[12] = 1024;
          *&outData[14] = 432;
          _os_log_impl(&dword_0, v152, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to locate a valid serialization context. Deleting devices synchronously. This may lead to a crash if someone tries to access it or its controls subsequently.", outData, 0x12u);
        }
      }
    }

    sub_240DF0(qword_70A338, &outDataSize, v150);
  }

  if (*&buf[16])
  {
    v160 = __cxa_allocate_exception(0x40uLL);
    sub_2E1CA0(v160, buf);
  }

  sub_87980(&outDataSize);
  sub_477A0(*&buf[8]);
  if (v139 != &v173)
  {
    sub_4ABC8(v139, v173, v174);
  }

  *outData = &__src;
  sub_2E1C14(outData);
LABEL_283:
  sub_477A0(v170[0]);
  sub_477A0(v172[0]);
  sub_477A0(v174[0]);
}

void sub_F2600(void *a1, int a2)
{
  sub_240CCC(&STACK[0x3A0]);
  sub_87980(&STACK[0x3C0]);
  sub_477A0(STACK[0x3F8]);
  if (a2 == 2)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = sub_5544(7);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v7 = (*(*v4 + 16))(v4);
      LODWORD(STACK[0x410]) = 136315650;
      STACK[0x414] = "HALDeviceManager.cpp";
      LOWORD(STACK[0x41C]) = 1024;
      LODWORD(STACK[0x41E]) = 554;
      LOWORD(STACK[0x422]) = 2080;
      STACK[0x424] = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Error removing old devices: %s", &STACK[0x410], 0x1Cu);
    }

    sub_2E1AA8(&STACK[0x2D0]);
    __cxa_end_catch();
    v8 = STACK[0x250];
    JUMPOUT(0xF237CLL);
  }

  v10 = &v9;
  sub_2E1C14(&v10);
  JUMPOUT(0xF2964);
}

void sub_F2678(void *a1, int a2)
{
  __cxa_free_exception(v2);
  sub_87980(&STACK[0x3C0]);
  sub_477A0(STACK[0x3F8]);
  if (a2 == 2)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = sub_5544(7);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v8 = (*(*v5 + 16))(v5);
      LODWORD(STACK[0x410]) = 136315650;
      STACK[0x414] = "HALDeviceManager.cpp";
      LOWORD(STACK[0x41C]) = 1024;
      LODWORD(STACK[0x41E]) = 554;
      LOWORD(STACK[0x422]) = 2080;
      STACK[0x424] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error removing old devices: %s", &STACK[0x410], 0x1Cu);
    }

    sub_2E1AA8(&STACK[0x2D0]);
    __cxa_end_catch();
    v9 = STACK[0x250];
    JUMPOUT(0xF237CLL);
  }

  JUMPOUT(0xF2838);
}

void sub_F268C(void *a1, int a2)
{
  sub_477A0(v9[23]);
  if (a2 == 2)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = sub_5544(7);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v7 = ((*v4)[2])(v4);
      v10 = 136315650;
      v11 = "HALDeviceManager.cpp";
      v12 = 1024;
      v13 = 527;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Error adding devices: %s", &v10, 0x1Cu);
    }

    sub_2E1AA8(&v8);
    sub_2E1B94(v4[5], v4 + 6, v9);
    __cxa_end_catch();
    JUMPOUT(0xF1C54);
  }

  JUMPOUT(0xF2838);
}

void sub_F2798()
{
  __cxa_end_catch();
  v1 = &v0;
  sub_2E1C14(&v1);
  JUMPOUT(0xF2964);
}

void sub_F27A8()
{
  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (v0 < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  v2 = &v1;
  sub_2E1C14(&v2);
  JUMPOUT(0xF2964);
}

void sub_F293C()
{
  __cxa_end_catch();
  v1 = &v0;
  sub_2E1C14(&v1);
  JUMPOUT(0xF2964);
}

void sub_F2950(_Unwind_Exception *a1)
{
  sub_477A0(STACK[0x318]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_F2980(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_F2990(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0xF29A4);
  }

  _Unwind_Resume(a1);
}

void sub_F29BC(uint64_t *a1)
{
  sub_EF8C0(*a1);

  operator delete();
}

void sub_F2A2C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D7C28(v10);
      }

      sub_189A00();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64_t sub_F2B40(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, _DWORD *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *&a2->mSelector;
      LODWORD(v19) = a2->mElement;
      sub_22CE0(v22);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *&a2->mSelector;
      LODWORD(v19) = a2->mElement;
      sub_22CE0(v22);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = &off_6DDDD0;
    v17[2] = 561211770;
  }

  mSelector = a2->mSelector;
  v9 = &dword_4;
  if (a2->mSelector > 1835103843)
  {
    if (mSelector != 1835103844 && mSelector != 1937208176)
    {
      if (mSelector == 1986164323)
      {
        v21 = 1886613611;
        v22[1] = 0;
        v23 = 0;
        v22[0] = 0;
        sub_4625C(v22, &v21, v22, 1uLL);
        *buf = *v22;
        v25 = v23;
        strcpy(v26, "cwdv");
        v26[8] = 0;
        v27 = 3;
        v29[0] = 0;
        v29[1] = 0;
        v28 = v29;
        v30 = 44739242;
        v32 = 0;
        v33 = 0;
        __p = 0;
        sub_161C7C(&v18, a1, buf);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p);
        }

        sub_477A0(v29[0]);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        if (v20 == 1 && (v10 = *(v19 + 24)) != 0)
        {
          v9 = *(v19 + 16);
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v11 = std::__shared_weak_count::lock(v10);
          if (v11)
          {
            v12 = v11;
            if (v9)
            {
              v9 = (*(*v9 + 32))(v9, a2, a3, a4);
            }

            sub_1A8C0(v12);
          }

          else
          {
            v9 = 0;
          }

          std::__shared_weak_count::__release_weak(v10);
        }

        else
        {
          v9 = 0;
        }

        sub_65310(&v18);
        return v9;
      }

      goto LABEL_24;
    }

    return v9;
  }

  if (mSelector == 1064725619 || mSelector == 1668049764)
  {
    return v9;
  }

  if (mSelector == 1684435056)
  {
    if (a3 != 8)
    {
      return 0;
    }

    v9 = 0;
    if (*a4 == 1936748595 && a4[1] == 64001)
    {
      sub_3E76D4(buf, a1);
      v9 = sub_3E7DD8(*&buf[8]);
      sub_8AAAC(buf);
    }

    return v9;
  }

LABEL_24:

  return sub_5BD20(a1, a2, a3, a4);
}

void sub_F308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1A8C0(v10);
  std::__shared_weak_count::__release_weak(v9);
  sub_65310(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_F30C8(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v10 = *a1;
  for (i = *(a1 + 2); v2 != a2; v2 = v2[1])
  {
    v4 = v2[3];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = v2[2];
        if (v7)
        {
          v8 = (*(*v7 + 16))(v7, &v10);
          sub_1A8C0(v6);
          if (v8)
          {
            return 1;
          }
        }

        else
        {
          sub_1A8C0(v6);
        }
      }
    }
  }

  return 0;
}

void *sub_F31A0(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_849B8();
  }

  return result;
}

uint64_t sub_F320C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_868A0(result, a4);
  }

  return result;
}

void *sub_F3284(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_119534(v7);
  return v4;
}

uint64_t sub_F330C(uint64_t a1, void **a2, unint64_t a3, uint64_t *a4, int a5, unsigned int a6, int a7, char a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, char a13)
{
  if (!*(a1 + 16))
  {
    v136 = sub_5544(14);
    v137 = *v136;
    if (*v136 && os_log_type_enabled(*v136, OS_LOG_TYPE_ERROR))
    {
      *__s = 136315394;
      *&__s[4] = "AggregateDeviceUtilities.cpp";
      *&__s[12] = 1024;
      *&__s[14] = 390;
      _os_log_impl(&dword_0, v137, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inAggregateTopology is empty.", __s, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inAggregateTopology is empty.");
  }

  if (!sub_108B50())
  {
    v139 = sub_5544(14);
    v140 = *v139;
    if (*v139 && os_log_type_enabled(*v139, OS_LOG_TYPE_ERROR))
    {
      *__s = 136315394;
      *&__s[4] = "AggregateDeviceUtilities.cpp";
      *&__s[12] = 1024;
      *&__s[14] = 391;
      _os_log_impl(&dword_0, v140, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL v5 plugin ID is 0.", __s, 0x12u);
    }

    v141 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v141, "HAL v5 plugin ID is 0.");
  }

  __p = *a2;
  sub_68108(&inAddress, &__p);
  if ((inAddress.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_inAddress = &inAddress;
  }

  else
  {
    p_inAddress = inAddress.__r_.__value_.__r.__words[0];
  }

  snprintf(__str, 0x100uLL, "VAD %s AggDev", p_inAddress);
  snprintf(__s, 0x100uLL, "%s %u", __str, dword_6E4A40);
  ++dword_6E4A40;
  v17 = strlen(__s);
  value = CFStringCreateWithBytes(0, __s, v17, 0x8000100u, 0);
  if (!value)
  {
    v142 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v142, "Could not construct");
  }

  if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(inAddress.__r_.__value_.__l.__data_);
  }

  sub_A69D8(&v173, a2);
  sub_5659C(&__p, (*(*(a1 + 8) + 24) + 16), "", 400);
  v18 = a4[1];
  if (v18)
  {
    v18 = std::__shared_weak_count::lock(v18);
    if (v18)
    {
      v19 = v18;
      v20 = *a4;
      if (*a4)
      {
        v21 = sub_5544(17);
        v22 = *v21;
        if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
        {
          v23 = a3;
          sub_23148(__str, __p + 2);
          v24 = SHIBYTE(v179[0]);
          v25 = *__str;
          sub_23148(&inAddress, v20 + 2);
          v26 = __str;
          if (v24 < 0)
          {
            v26 = v25;
          }

          if ((inAddress.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &inAddress;
          }

          else
          {
            v27 = inAddress.__r_.__value_.__r.__words[0];
          }

          *__s = 136315906;
          *&__s[4] = "AggregateDeviceUtilities.cpp";
          *&__s[12] = 1024;
          *&__s[14] = 409;
          v183 = 2080;
          *v184 = v26;
          *&v184[8] = 2080;
          *&v184[10] = v27;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d Overrode default master device (%s) with device %s.", __s, 0x26u);
          if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(inAddress.__r_.__value_.__l.__data_);
          }

          a3 = v23;
          if (SHIBYTE(v179[0]) < 0)
          {
            operator delete(*__str);
          }
        }

        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = v19;
LABEL_27:
        v147 = v19;
        sub_1A8C0(v18);
        v19 = v176;
        goto LABEL_28;
      }
    }
  }

  v20 = __p;
  v19 = v176;
  if (v176)
  {
    atomic_fetch_add_explicit(&v176->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v147 = v19;
  if (v18)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v19)
  {
    sub_1A8C0(v19);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *&numBytes[1] = Mutable;
  v172 = 257;
  if (value && Mutable)
  {
    CFDictionarySetValue(Mutable, @"uid", value);
  }

  if (*&numBytes[1])
  {
    CFDictionarySetValue(*&numBytes[1], @"name", @"VAD Aggregate Device");
  }

  (*(*&v20->_os_unfair_lock_opaque + 128))(bytes, v20);
  v29 = numBytes[0];
  if ((numBytes[0] & 0x8000000000000000) != 0)
  {
    v29 = v170;
    if (v170 == 12)
    {
      v31 = *bytes;
      if (**bytes == 0x206C617574726956 && *(*bytes + 8) == 1129464165)
      {
        goto LABEL_109;
      }

      v29 = 12;
      if (!*bytes)
      {
LABEL_108:
        v32 = 0;
        *__s = 0;
LABEL_43:
        if (HIBYTE(v172) == 1 && v32 && *&numBytes[1])
        {
          CFDictionarySetValue(*&numBytes[1], @"master", v32);
          v32 = *__s;
        }

        if (v32)
        {
          CFRelease(v32);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v31 = *bytes;
      if (!*bytes)
      {
        goto LABEL_108;
      }
    }

LABEL_42:
    v32 = CFStringCreateWithBytes(0, v31, v29, 0x8000100u, 0);
    *__s = v32;
    if (!v32)
    {
      v143 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v143, "Could not construct");
    }

    goto LABEL_43;
  }

  if (numBytes[0] != 12 || (*bytes == 0x206C617574726956 ? (v30 = v170 == 1129464165) : (v30 = 0), !v30))
  {
    v31 = bytes;
    goto LABEL_42;
  }

LABEL_109:
  if (HIBYTE(v172) == 1 && *&numBytes[1])
  {
    CFDictionarySetValue(*&numBytes[1], @"master", @"Virtual eARC");
  }

LABEL_49:
  if ((a10 & 0x100000000) != 0)
  {
    sub_A1CA4(&numBytes[1], @"isolated use case", a10);
  }

  if (*a2 == 1986818404)
  {
    *__s = kCFBooleanTrue;
    __s[8] = 1;
    if (kCFBooleanTrue)
    {
      CFRetain(kCFBooleanTrue);
    }

    if (HIBYTE(v172) == 1 && kCFBooleanTrue && *&numBytes[1])
    {
      CFDictionarySetValue(*&numBytes[1], @"LDCM", kCFBooleanTrue);
    }

    sub_2E46B4(__s);
  }

  if (*(a12 + 56) == 1)
  {
    v152 = a3;
    v156 = a4;
    *__str = *a12;
    v33 = *(a12 + 24);
    v179[0] = *(a12 + 16);
    v179[1] = v33;
    v34 = *(a12 + 32);
    v179[2] = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = *(a12 + 40);
    v180 = *(a12 + 40);
    v36 = *(a12 + 48);
    if (v36)
    {
      CFRetain(*(a12 + 48));
    }

    v37 = v20;
    v181 = v36;
    sub_1D9D24(__s, "inputPortType", __str);
    sub_3BE72C(&__s[16], "inputPortSubType", &__str[4]);
    sub_3BE72C(&v184[12], "inputSubPortType", &__str[8]);
    sub_88CE8(&v186, "outputPortType");
    LODWORD(valuePtr) = *&__str[12];
    if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
    {
      v144 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v144, "Could not construct");
    }

    sub_DF828(&v188, "outputPortSubType", v179);
    sub_DF828(&v189, "outputSubPortType", v179 + 1);
    sub_88CE8(v190, "isSharePlayActive");
    v38 = &kCFBooleanTrue;
    if (!v35)
    {
      v38 = &kCFBooleanFalse;
    }

    v190[1] = *v38;
    sub_88CE8(&v191, "firFilterIDs");
    if (v36)
    {
      CFRetain(v36);
    }

    v192[0] = v36;
    inAddress.__r_.__value_.__r.__words[0] = __s;
    inAddress.__r_.__value_.__l.__size_ = 8;
    v39 = sub_69CE8(&inAddress);
    v40 = 0;
    __p = v39;
    do
    {
      v41 = v192[v40];
      if (v41)
      {
        CFRelease(v41);
      }

      v42 = v192[v40 - 1];
      if (v42)
      {
        CFRelease(v42);
      }

      v40 -= 2;
    }

    while (v40 != -16);
    sub_88CE8(&inAddress, "content creation recording");
    CFRetain(v39);
    inAddress.__r_.__value_.__l.__size_ = v39;
    *__s = &inAddress;
    *&__s[8] = 1;
    v43 = sub_69CE8(__s);
    valuePtr = v43;
    if (inAddress.__r_.__value_.__l.__size_)
    {
      CFRelease(inAddress.__r_.__value_.__l.__size_);
    }

    if (inAddress.__r_.__value_.__r.__words[0])
    {
      CFRelease(inAddress.__r_.__value_.__l.__data_);
    }

    v44 = sub_5544(17);
    v45 = *v44;
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
    {
      *__s = 136315906;
      *&__s[4] = "AggregateDeviceUtilities.cpp";
      *&__s[12] = 1024;
      *&__s[14] = 466;
      v183 = 2112;
      *v184 = v43;
      *&v184[8] = 2080;
      *&v184[10] = "content creation recording";
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding HAL DSP configuration information %@ to aggregate device dictionary for %s.", __s, 0x26u);
    }

    if (HIBYTE(v172) == 1 && *&numBytes[1])
    {
      CFDictionarySetValue(*&numBytes[1], @"dsp input settings override", v43);
    }

    CFRelease(v43);
    v20 = v37;
    CFRelease(v39);
    if (v36)
    {
      CFRelease(v36);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_weak(v34);
    }

    a4 = v156;
    a3 = v152;
  }

  if (a11)
  {
    sub_A1CA4(&numBytes[1], @"use legacy reference stream offset", 1);
  }

  v46 = *a2;
  if (*a2 <= 1986818403)
  {
    if (v46 == 1986291046)
    {
      v47 = 316;
      goto LABEL_132;
    }

    if (v46 == 1986552183)
    {
      v47 = 304;
      goto LABEL_132;
    }

    goto LABEL_114;
  }

  if (v46 == 1986818404)
  {
    v47 = 305;
    goto LABEL_132;
  }

  if (v46 == 1987276900)
  {
LABEL_131:
    v47 = 303;
    goto LABEL_132;
  }

  if (v46 != 1987738234)
  {
LABEL_114:
    if ((a10 & 0x100000000) == 0)
    {
      goto LABEL_133;
    }

    if (a10 <= 1935962991)
    {
      if (a10 <= 1819309170)
      {
        if (a10)
        {
          if (a10 != 1752200307)
          {
            goto LABEL_133;
          }

          v47 = 311;
        }

        else
        {
          v47 = 315;
        }
      }

      else
      {
        switch(a10)
        {
          case 0x6C707473:
            v47 = 312;
            break;
          case 0x6D746B64:
            v47 = 308;
            break;
          case 0x70657263:
            v47 = 313;
            break;
          default:
            goto LABEL_133;
        }
      }

      goto LABEL_132;
    }

    if (a10 > 1936614496)
    {
      switch(a10)
      {
        case 0x736E6461:
          v47 = 310;
          break;
        case 0x73707664:
          v47 = 317;
          break;
        case 0x7663636C:
          v47 = 309;
          break;
        default:
          goto LABEL_133;
      }

      goto LABEL_132;
    }

    if (a10 == 1935962992)
    {
      v47 = 314;
      goto LABEL_132;
    }

    if (a10 != 1936290409)
    {
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  v47 = 301;
LABEL_132:
  sub_A1CA4(&numBytes[1], @"VAD power assertion category", v47);
LABEL_133:
  strcpy(__s, "dklcbolg");
  __s[9] = 0;
  *&__s[10] = 0;
  v148 = v20;
  if ((*(*&v20->_os_unfair_lock_opaque + 16))(v20, __s))
  {
    LODWORD(v49) = sub_1082B4(v20);
  }

  else
  {
    LODWORD(v49) = 0;
  }

  v157 = 0;
  cf = 0;
  if (*(a9 + 56) == 1 && HIDWORD(a3))
  {
    v157 = sub_3BE5C4(a4, a8);
  }

  v50 = *(a9 + 24);
  if ((v50 & 1) != 0 || v157)
  {
    v30 = v50 == 0;
    v51 = 32;
    if (!v30)
    {
      v51 = 0;
    }

    v52 = (a9 + v51);
    v53 = sub_127A6C((a9 + v51));
    v54 = *(v52 + 23);
    if (v54 < 0)
    {
      if (!*v52)
      {
        v55 = 0;
LABEL_147:
        cf = v55;
        if (HIDWORD(v53))
        {
          v56 = sub_5544(17);
          v57 = *v56;
          if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(__str, *a2);
            v58 = v179[0] >= 0 ? __str : *__str;
            *__s = 136315906;
            *&__s[4] = "AggregateDeviceUtilities.cpp";
            *&__s[12] = 1024;
            *&__s[14] = 508;
            v183 = 2112;
            *v184 = v55;
            *&v184[8] = 2080;
            *&v184[10] = v58;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding external clock %@ to aggregate device dictionary for %s. This implies that drift correction will be enabled on subdevices.", __s, 0x26u);
            if (SHIBYTE(v179[0]) < 0)
            {
              operator delete(*__str);
            }
          }

          if (HIBYTE(v172) == 1 && v55 && *&numBytes[1])
          {
            CFDictionarySetValue(*&numBytes[1], @"clock", v55);
          }

          *__str = v53;
          strcpy(__s, "dklcbolg");
          __s[9] = 0;
          *&__s[10] = 0;
          v59 = sub_542F0(__str, __s, 0, 0);
          v61 = v59;
          if (v59 || (v60 & 1) == 0)
          {
            v145 = __cxa_allocate_exception(0x10uLL);
            *v145 = &off_6DDDD0;
            v145[2] = v61;
          }

          v49 = HIDWORD(v59);
        }

        goto LABEL_162;
      }

      v54 = *(v52 + 1);
      v52 = *v52;
    }

    v55 = CFStringCreateWithBytes(0, v52, v54, 0x8000100u, 0);
    *__s = v55;
    if (!v55)
    {
      v146 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v146, "Could not construct");
    }

    goto LABEL_147;
  }

LABEL_162:
  v62 = sub_5544(17);
  v63 = *v62;
  if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
  {
    v64 = *(a1 + 16);
    *__s = 136315650;
    *&__s[4] = "AggregateDeviceUtilities.cpp";
    *&__s[12] = 1024;
    *&__s[14] = 513;
    v183 = 2048;
    *v184 = v64;
    _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Topology contains %lu items...", __s, 0x1Cu);
  }

  v65 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v166 = v65;
  v167 = 257;
  v66 = *(a1 + 8);
  if (v66 != a1)
  {
    do
    {
      v67 = sub_5544(17);
      v68 = *v67;
      if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_DEBUG))
      {
        v69 = *(v66 + 32);
        *__s = 136315650;
        *&__s[4] = "AggregateDeviceUtilities.cpp";
        *&__s[12] = 1024;
        *&__s[14] = 518;
        v183 = 2048;
        *v184 = v69;
        _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEBUG, "%25s:%-5d Vertical topo item contains %lu elements...", __s, 0x1Cu);
      }

      v70 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v71 = v66 + 16;
      theArray = v70;
      v165 = 257;
      v151 = v66;
      v72 = *(v66 + 24);
      if (v72 != v66 + 16)
      {
        while (1)
        {
          sub_5659C(ioDataSize, (v72 + 16), "", 523);
          v73 = sub_5544(17);
          v74 = *v73;
          if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_DEBUG))
          {
            v75 = *ioDataSize;
            v76 = (*(**ioDataSize + 120))(*ioDataSize);
            (*(*v75 + 128))(__str, v75);
            v77 = __str;
            if (v179[0] < 0)
            {
              v77 = *__str;
            }

            *__s = 136315906;
            *&__s[4] = "AggregateDeviceUtilities.cpp";
            *&__s[12] = 1024;
            *&__s[14] = 526;
            v183 = 1024;
            *v184 = v76;
            *&v184[4] = 2080;
            *&v184[6] = v77;
            _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning PhysicalDevice ID %u (uid %s).", __s, 0x22u);
            if (SHIBYTE(v179[0]) < 0)
            {
              operator delete(*__str);
            }
          }

          *&v160[1] = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v161 = 257;
          v78 = *ioDataSize;
          (*(**ioDataSize + 128))(&valuePtr, *ioDataSize);
          v79 = v160[0];
          if ((v160[0] & 0x8000000000000000) != 0)
          {
            v79 = v159;
            if (v159 != 12)
            {
              p_valuePtr = valuePtr;
              if (!valuePtr)
              {
                goto LABEL_226;
              }

              goto LABEL_183;
            }

            p_valuePtr = valuePtr;
            if (*valuePtr != 0x206C617574726956 || *(valuePtr + 2) != 1129464165)
            {
              v79 = 12;
              if (!valuePtr)
              {
LABEL_226:
                v82 = 0;
                *__s = 0;
LABEL_184:
                if (HIBYTE(v161) == 1 && v82 && *&v160[1])
                {
                  CFDictionarySetValue(*&v160[1], @"uid", v82);
                  v82 = *__s;
                }

                if (v82)
                {
                  CFRelease(v82);
                }

                v78 = *ioDataSize;
                goto LABEL_191;
              }

LABEL_183:
              v82 = CFStringCreateWithBytes(0, p_valuePtr, v79, 0x8000100u, 0);
              *__s = v82;
              if (!v82)
              {
                v135 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v135, "Could not construct");
              }

              goto LABEL_184;
            }
          }

          else if (v160[0] != 12 || (valuePtr == 0x206C617574726956 ? (v80 = v159 == 1129464165) : (v80 = 0), !v80))
          {
            p_valuePtr = &valuePtr;
            goto LABEL_183;
          }

          if (HIBYTE(v161) == 1 && *&v160[1])
          {
            CFDictionarySetValue(*&v160[1], @"uid", @"Virtual eARC");
          }

LABEL_191:
          strcpy(__s, "dklcbolg");
          __s[9] = 0;
          *&__s[10] = 0;
          if ((*(*&v78->_os_unfair_lock_opaque + 16))(v78, __s))
          {
            v83 = sub_1082B4(v78);
          }

          else
          {
            v83 = 0;
          }

          if (v83 == v49)
          {
            if (v49)
            {
              if (!v157)
              {
                v109 = sub_5544(17);
                v110 = *v109;
                if (*v109 && os_log_type_enabled(*v109, OS_LOG_TYPE_DEFAULT))
                {
                  sub_23148(__str, v78 + 2);
                  v111 = __str;
                  if (v179[0] < 0)
                  {
                    v111 = *__str;
                  }

                  *__s = 136315650;
                  *&__s[4] = "AggregateDeviceUtilities.cpp";
                  *&__s[12] = 1024;
                  *&__s[14] = 566;
                  v183 = 2080;
                  *v184 = v111;
                  _os_log_impl(&dword_0, v110, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Drift compensation is NOT being applied to subdevice %s", __s, 0x1Cu);
                  if (SHIBYTE(v179[0]) < 0)
                  {
                    operator delete(*__str);
                  }
                }

                goto LABEL_260;
              }

              v84 = sub_5544(17);
              v85 = *v84;
              if (*v84 && os_log_type_enabled(*v84, OS_LOG_TYPE_DEBUG))
              {
                sub_23148(__str, v78 + 2);
                v86 = __str;
                if (v179[0] < 0)
                {
                  v86 = *__str;
                }

                *__s = 136315650;
                *&__s[4] = "AggregateDeviceUtilities.cpp";
                *&__s[12] = 1024;
                *&__s[14] = 364;
                v183 = 2080;
                *v184 = v86;
                _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEBUG, "%25s:%-5d Enabling drift correction because: Aggregate device uses a TimeSync clock. Device: %s.", __s, 0x1Cu);
                if (SHIBYTE(v179[0]) < 0)
                {
                  operator delete(*__str);
                }
              }

LABEL_234:
              sub_67EA8();
              if ((qword_6E8DD8 & 0x100000000) != 0)
              {
                v98 = qword_6E8DD8;
              }

              else
              {
                v98 = 64;
              }

              v97 = 2;
              goto LABEL_238;
            }

            v95 = sub_5544(17);
            v96 = *v95;
            if (*v95 && os_log_type_enabled(*v95, OS_LOG_TYPE_DEBUG))
            {
              *__s = 136315394;
              *&__s[4] = "AggregateDeviceUtilities.cpp";
              *&__s[12] = 1024;
              *&__s[14] = 346;
              _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEBUG, "%25s:%-5d Enabling drift correction because: Main clock has an unspecified clock domain.", __s, 0x12u);
            }
          }

          else
          {
            v87 = sub_5544(17);
            v88 = *v87;
            if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__str, v83);
              if (v179[0] >= 0)
              {
                v89 = __str;
              }

              else
              {
                v89 = *__str;
              }

              sub_22170(&inAddress, v49);
              v90 = SHIBYTE(inAddress.__r_.__value_.__r.__words[2]);
              v91 = inAddress.__r_.__value_.__r.__words[0];
              sub_23148(&__p, v78 + 2);
              v92 = &inAddress;
              if (v90 < 0)
              {
                v92 = v91;
              }

              p_p = &__p;
              if (v177 < 0)
              {
                p_p = __p;
              }

              *__s = 136316162;
              *&__s[4] = "AggregateDeviceUtilities.cpp";
              *&__s[12] = 1024;
              *&__s[14] = 338;
              v183 = 2080;
              *v184 = v89;
              *&v184[8] = 2080;
              *&v184[10] = v92;
              *&v184[18] = 2080;
              v185 = p_p;
              _os_log_impl(&dword_0, v88, OS_LOG_TYPE_DEBUG, "%25s:%-5d Enabling drift correction because: Device's clock domain (%s) diverges from the domain of the aggregate's main clock (%s). Device: %s.", __s, 0x30u);
              if (v177 < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(inAddress.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v179[0]) < 0)
              {
                operator delete(*__str);
              }
            }
          }

          v97 = a5;
          v98 = a6;
          if (v157)
          {
            goto LABEL_234;
          }

LABEL_238:
          v99 = sub_5544(17);
          v100 = *v99;
          if (*v99 && os_log_type_enabled(*v99, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(__str, v97);
            if (v179[0] >= 0)
            {
              v101 = __str;
            }

            else
            {
              v101 = *__str;
            }

            v102 = "min";
            if (v98 >= 0x20)
            {
              v102 = "low";
              if (v98 >= 0x40)
              {
                v102 = "medium";
                if (v98 >= 0x60)
                {
                  if (v98 >= 0x7F)
                  {
                    v102 = "max";
                  }

                  else
                  {
                    v102 = "high";
                  }
                }
              }
            }

            sub_53E8(&inAddress, v102);
            v103 = SHIBYTE(inAddress.__r_.__value_.__r.__words[2]);
            v104 = inAddress.__r_.__value_.__r.__words[0];
            sub_23148(&__p, (*ioDataSize + 8));
            v105 = &inAddress;
            if (v103 < 0)
            {
              v105 = v104;
            }

            v106 = &__p;
            if (v177 < 0)
            {
              v106 = __p;
            }

            *__s = 136316162;
            *&__s[4] = "AggregateDeviceUtilities.cpp";
            *&__s[12] = 1024;
            *&__s[14] = 558;
            v183 = 2080;
            *v184 = v101;
            *&v184[8] = 2080;
            *&v184[10] = v105;
            *&v184[18] = 2080;
            v185 = v106;
            _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying drift compensation (algorithm: %s, quality: %s) to subdevice %s.", __s, 0x30u);
            if (v177 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(inAddress.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(inAddress.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v179[0]) < 0)
            {
              operator delete(*__str);
            }
          }

          sub_A1CA4(&v160[1], @"drift", 1);
          sub_A1CA4(&v160[1], @"drift algorithm", v97);
          sub_A1CA4(&v160[1], @"drift quality", v98);
LABEL_260:
          if (a7)
          {
            v107 = sub_5544(17);
            v108 = *v107;
            if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_INFO))
            {
              *__s = 136315394;
              *&__s[4] = "AggregateDeviceUtilities.cpp";
              *&__s[12] = 1024;
              *&__s[14] = 572;
              _os_log_impl(&dword_0, v108, OS_LOG_TYPE_INFO, "%25s:%-5d Disabling HAL safety offset padding", __s, 0x12u);
            }

            sub_A1CA4(&v160[1], @"don't pad", 1);
          }

          if (theArray && HIBYTE(v165) == 1)
          {
            CFArrayAppendValue(theArray, *&v160[1]);
          }

          if ((v160[0] & 0x80000000) != 0)
          {
            operator delete(valuePtr);
          }

          sub_A1D30(&v160[1]);
          if (v163)
          {
            sub_1A8C0(v163);
          }

          v72 = *(v72 + 8);
          if (v72 == v71)
          {
            v70 = theArray;
            break;
          }
        }
      }

      if (v166 && HIBYTE(v167) == 1)
      {
        CFArrayAppendValue(v166, v70);
      }

      sub_A0804(&theArray);
      v66 = *(v151 + 8);
    }

    while (v66 != a1);
    v65 = v166;
  }

  if (HIBYTE(v172) == 1 && v65 && *&numBytes[1])
  {
    CFDictionarySetValue(*&numBytes[1], @"subdevices", v65);
  }

  if ((a8 & 1) != 0 || a13)
  {
    v112 = sub_5544(17);
    v113 = *v112;
    if (*v112 && os_log_type_enabled(*v112, OS_LOG_TYPE_DEFAULT))
    {
      *__s = 136315394;
      *&__s[4] = "AggregateDeviceUtilities.cpp";
      *&__s[12] = 1024;
      *&__s[14] = 586;
      _os_log_impl(&dword_0, v113, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling HAL AirPods offload DSP for VP or FarField use case", __s, 0x12u);
    }

    *&inAddress.__r_.__value_.__l.__data_ = 0uLL;
    v114 = sub_69CE8(&inAddress);
    valuePtr = v114;
    sub_88CE8(__str, "airpods noise suppression");
    CFRetain(v114);
    *&__str[8] = v114;
    *__s = __str;
    *&__s[8] = 1;
    v115 = sub_69CE8(__s);
    __p = v115;
    if (*&__str[8])
    {
      CFRelease(*&__str[8]);
    }

    if (*__str)
    {
      CFRelease(*__str);
    }

    CFRelease(v114);
    if (HIBYTE(v172) == 1 && *&numBytes[1])
    {
      CFDictionarySetValue(*&numBytes[1], @"dsp offload bypass override", v115);
    }

    CFRelease(v115);
  }

  LODWORD(theArray) = 0;
  inAddress.__r_.__value_.__r.__words[0] = 0x676C6F6263616767;
  LODWORD(inAddress.__r_.__value_.__r.__words[1]) = 0;
  __p = *&numBytes[1];
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_AggregateCreation", 0x14uLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v116 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if ((v116 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v117 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        *__s = 138412290;
        *&__s[4] = __p;
        _os_signpost_emit_with_name_impl(&dword_0, v117, OS_SIGNPOST_INTERVAL_BEGIN, v116, "VA_AggregateCreation", "Creating HAL aggregate with dictionary: %@", __s, 0xCu);
      }
    }
  }

  else
  {
    v116 = 0;
  }

  valuePtr = v116;
  v118 = sub_5544(43);
  if (*(v118 + 8))
  {
    v119 = *v118;
    if (*v118)
    {
      if (os_log_type_enabled(*v118, OS_LOG_TYPE_DEBUG))
      {
        *__s = 136315650;
        *&__s[4] = "SignpostUtilities.h";
        *&__s[12] = 1024;
        *&__s[14] = 96;
        v183 = 2080;
        *v184 = "kAggregateCreation";
        _os_log_impl(&dword_0, v119, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", __s, 0x1Cu);
      }
    }
  }

  v120 = sub_5544(17);
  v121 = *v120;
  if (*v120 && os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
  {
    *__s = 136315650;
    *&__s[4] = "AggregateDeviceUtilities.cpp";
    *&__s[12] = 1024;
    *&__s[14] = 609;
    v183 = 2112;
    *v184 = __p;
    _os_log_impl(&dword_0, v121, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating HAL Aggregate with dictionary: %@", __s, 0x1Cu);
  }

  ioDataSize[0] = 4;
  v122 = sub_108B50();
  PropertyData = AudioObjectGetPropertyData(v122, &inAddress, 8u, &__p, ioDataSize, &theArray);
  if (PropertyData)
  {
    v131 = sub_5544(14);
    v132 = *v131;
    if (*v131 && os_log_type_enabled(*v131, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__str, PropertyData);
      v133 = v179[0] >= 0 ? __str : *__str;
      *__s = 136315650;
      *&__s[4] = "AggregateDeviceUtilities.cpp";
      *&__s[12] = 1024;
      *&__s[14] = 612;
      v183 = 2080;
      *v184 = v133;
      _os_log_impl(&dword_0, v132, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: HAL failure during attempt to create the aggregate device: %s", __s, 0x1Cu);
      if (SHIBYTE(v179[0]) < 0)
      {
        operator delete(*__str);
      }
    }

    v134 = __cxa_allocate_exception(0x10uLL);
    *v134 = &off_6DDDD0;
    v134[2] = PropertyData;
  }

  v124 = sub_5544(17);
  v125 = *v124;
  if (*v124 && os_log_type_enabled(*v124, OS_LOG_TYPE_DEBUG))
  {
    v126 = theArray;
    v127 = (*(*&v148->_os_unfair_lock_opaque + 120))(v148);
    (*(*&v148->_os_unfair_lock_opaque + 128))(__str, v148);
    v128 = v179[0] >= 0 ? __str : *__str;
    *__s = 136316162;
    *&__s[4] = "AggregateDeviceUtilities.cpp";
    *&__s[12] = 1024;
    *&__s[14] = 614;
    v183 = 1024;
    *v184 = v126;
    *&v184[4] = 1024;
    *&v184[6] = v127;
    *&v184[10] = 2080;
    *&v184[12] = v128;
    _os_log_impl(&dword_0, v125, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created aggregate device ID %u with master PhysicalDevice ID %u (uid %s).", __s, 0x28u);
    if (SHIBYTE(v179[0]) < 0)
    {
      operator delete(*__str);
    }
  }

  v129 = theArray;
  sub_119A00(&valuePtr);
  sub_A0804(&v166);
  if (cf)
  {
    CFRelease(cf);
  }

  if ((numBytes[0] & 0x80000000) != 0)
  {
    operator delete(*bytes);
  }

  sub_A1D30(&numBytes[1]);
  if (v147)
  {
    sub_1A8C0(v147);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v129;
}

void sub_F530C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, const void *a46, const void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  sub_1A8C0(v56);
  if (a49)
  {
    sub_1A8C0(a49);
  }

  sub_452F0(&a46);
  sub_452F0(&a47);
  _Unwind_Resume(a1);
}

void sub_F5714(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_F5768(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_F5768(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_1A8C0(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_F57B4(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 2003332927;
LABEL_16:
    exception[2] = v11;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      v16 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 561211770;
    goto LABEL_16;
  }

  if (a2->mSelector == 1937006964)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

uint64_t sub_F5AC0(uint64_t a1, AudioObjectPropertyAddress *a2, uint64_t a3, __CFString *a4)
{
  sub_10BB88(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 2003332927;
LABEL_22:
    exception[2] = v14;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *&a2->mSelector;
      v19 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 561211770;
    goto LABEL_22;
  }

  if (a2->mSelector == 1936482681)
  {
    v8 = 936;
    if (a2->mScope == 1768845428)
    {
      v8 = 920;
    }

    v9 = *(a1 + v8);
    if (v9 && (v10 = *v9) != 0)
    {
      return (16 * v10) | 8u;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_6B708(a1, a2, a3, a4);
  }
}

uint64_t sub_F5E10(uint64_t a1)
{
  v2 = (*(*a1 + 88))(a1, 0);
  if (v2 && (v3 = (v2 - 1), (v4 = (*(*a1 + 96))(a1, 0, v3)) != 0))
  {
    v5 = sub_59410(v4);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    *(&v11 + 1) = v9;
    *&v11 = v5;
    v10 = v11 >> 32;
    if ((v10 & 0x100000000) != 0 && v10)
    {
      v8 = v3 & 0xFFFFFF00;
      v7 = v3;
      v6 = 0x100000000;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  return v6 | v8 | v7;
}

uint64_t sub_F5EFC(uint64_t a1)
{
  sub_5EE3C(&v3, (a1 + 80), "", 762);
  v1 = (*(*v3 + 96))(v3);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1;
}

void sub_F5F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5F90(_DWORD *a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v26 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v27 = *&a2->mSelector;
      v30 = a2->mElement;
      sub_22CE0(__p);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = &off_6DDDD0;
    v19[2] = 561211770;
  }

  if (!a6)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v28 = *&a2->mSelector;
      v31 = a2->mElement;
      sub_22CE0(__p);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = &off_6DDDD0;
    v21[2] = 561211770;
  }

  if (a2->mSelector == 1937006964)
  {
    v12 = a1[133];
    if (v12 != 1937006968 && v12 != 1937010030)
    {
      v23 = sub_5544(14);
      v24 = *v23;
      if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "Device_CarPlay_Aspen.cpp";
        v34 = 1024;
        v35 = 534;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
      }

      v25 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v25, "Precondition failure.");
    }

    __p[0] = a1[67];
    strcpy(&buf, "tatsbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v13 = sub_542F0(__p, &buf, 0, 0);
    v15 = v13;
    if (v13 || (v14 & 1) == 0)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      *v22 = &off_6DDDD0;
      v22[2] = v15;
    }

    sub_5440C(SHIDWORD(v13), a5, a6);
  }

  else
  {

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
  }
}

BOOL sub_F6574(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1937006964)
  {
    return 1;
  }

  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

uint64_t sub_F65F4(_DWORD *a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  v4 = a1[20];
  outDataSize = 0;
  if (a2->mSelector == 1936092513 || a2->mSelector == 1885762657)
  {
    memset(__p, 0, sizeof(__p));
    v6 = (*(*a1 + 104))(a1, __p);
    if (v6)
    {
      v11 = *sub_5544(14);
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "Stream_HAL_Common.cpp";
          v20 = 1024;
          v21 = 131;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: error obtaining stream formats.", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v6;
    }

    v7 = (LODWORD(__p[1]) - LODWORD(__p[0])) & 0xFFFFFFF8;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    PropertyDataSize = AudioObjectGetPropertyDataSize(v4, a2, a3, a4, &outDataSize);
    v9 = PropertyDataSize;
    if (PropertyDataSize)
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = "Stream_HAL_Common.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 140;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to determine the property's data size.", __p, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = &off_6DDDD0;
      v16[2] = v9;
    }

    return outDataSize;
  }

  return v7;
}

void sub_F6848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F6870(AudioObjectID *a1, AudioObjectPropertyAddress *inAddress, UInt32 a3, const void *a4, UInt32 *ioDataSize, void *a6)
{
  mSelector = inAddress->mSelector;
  if (inAddress->mSelector > 1936092512)
  {
    if (mSelector == 1936092513)
    {
LABEL_13:
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v17 = (*(*a1 + 104))(a1, &v68);
      if (v17)
      {
        v51 = sub_5544(14);
        v52 = *v51;
        if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Stream_HAL_Common.cpp";
          v72 = 1024;
          v73 = 171;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: error obtaining stream formats.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = v17;
      }

      v18 = v68;
      if (0x6DB6DB6DB6DB6DB7 * ((v69 - v68) >> 3) >= *ioDataSize / 0x38uLL)
      {
        v19 = *ioDataSize / 0x38uLL;
      }

      else
      {
        v19 = 0x6DB6DB6DB6DB6DB7 * ((v69 - v68) >> 3);
      }

      if (v19)
      {
        v20 = a6;
        v21 = v19;
        do
        {
          v22 = *v18;
          v23 = v18[1];
          v24 = v18[2];
          v20[6] = *(v18 + 6);
          *(v20 + 1) = v23;
          *(v20 + 2) = v24;
          *v20 = v22;
          v20 += 7;
          v18 = (v18 + 56);
          --v21;
        }

        while (v21);
      }

      *ioDataSize = 56 * v19;
      v25 = sub_5544(23);
      v26 = sub_5544(36);
      v27 = 0;
      *buf = 0x100000002;
      v28 = *(v25 + 8);
      while (1)
      {
        v29 = *&buf[v27];
        if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
        {
          break;
        }

        v27 += 4;
        if (v27 == 8)
        {
          goto LABEL_31;
        }
      }

      if ((v28 & v29) == 0)
      {
        v25 = v26;
      }

LABEL_31:
      v31 = *v25;
      if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        if ((*(*a1 + 96))(a1))
        {
          v32 = "output";
        }

        else
        {
          v32 = "input";
        }

        sub_53E8(v64, v32);
        v33 = v65;
        v34 = v64[0];
        v35 = a1[20];
        sub_22170(__p, inAddress->mScope);
        v36 = v64;
        if (v33 < 0)
        {
          v36 = v34;
        }

        if (v63 >= 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = __p[0];
        }

        mElement = inAddress->mElement;
        *buf = 136316418;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v72 = 1024;
        v73 = 187;
        v74 = 2080;
        v75 = v36;
        v76 = 1024;
        v77 = v35;
        v78 = 2080;
        v79 = v37;
        v80 = 1024;
        v81 = mElement;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get %s stream's available formats from HAL stream %u (scope: '%s'; element: %u):", buf, 0x32u);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }

        if (v65 < 0)
        {
          operator delete(v64[0]);
        }
      }

      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          v40 = sub_5544(23);
          v41 = sub_5544(36);
          v42 = 0;
          *buf = 0x100000002;
          v43 = *(v40 + 8);
          while (1)
          {
            v44 = *&buf[v42];
            if (((v43 & v44) != 0) != ((*(v41 + 8) & v44) != 0))
            {
              break;
            }

            v42 += 4;
            if (v42 == 8)
            {
              goto LABEL_53;
            }
          }

          if ((v43 & v44) == 0)
          {
            v40 = v41;
          }

LABEL_53:
          v45 = *v40;
          if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            sub_1243E4(v64);
          }
        }
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      return;
    }

    if (mSelector != 1936092532)
    {
      goto LABEL_59;
    }
  }

  else if (mSelector != 1885762592)
  {
    if (mSelector != 1885762657)
    {
LABEL_59:
      PropertyData = AudioObjectGetPropertyData(a1[20], inAddress, a3, a4, ioDataSize, a6);
      if (PropertyData)
      {
        v54 = PropertyData;
        v55 = sub_5544(14);
        v56 = *v55;
        if (*v55)
        {
          if (os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "Stream_HAL_Common.cpp";
            v72 = 1024;
            v73 = 199;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to obtain property data.", buf, 0x12u);
          }
        }

        v57 = __cxa_allocate_exception(0x10uLL);
        *v57 = &off_6DDDD0;
        v57[2] = v54;
      }

      return;
    }

    goto LABEL_13;
  }

  v10 = *ioDataSize;
  if (v10 != (*(*a1 + 32))(a1, inAddress))
  {
    v58 = sub_5544(14);
    v59 = *v58;
    if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Stream_HAL_Common.cpp";
      v72 = 1024;
      v73 = 158;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Bad data size for property kAudioStreamPropertyPhysical/VirtualFormat", buf, 0x12u);
    }

    v60 = __cxa_allocate_exception(0x10uLL);
    *v60 = &off_6DDDD0;
    v60[2] = 561211770;
  }

  v11 = (*(*a1 + 120))(a1, a6);
  if (v11)
  {
    v47 = v11;
    v48 = sub_5544(14);
    v49 = *v48;
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Stream_HAL_Common.cpp";
      v72 = 1024;
      v73 = 160;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: error obtaining format", buf, 0x12u);
    }

    v50 = __cxa_allocate_exception(0x10uLL);
    *v50 = &off_6DDDD0;
    v50[2] = v47;
  }

  v12 = sub_5544(23);
  v13 = sub_5544(36);
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
      goto LABEL_26;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_26:
  v30 = *v12;
  if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v66 = *&inAddress->mSelector;
    v67 = inAddress->mElement;
    sub_22CE0(&v68);
  }
}

void sub_F71C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_F7240(uint64_t a1)
{
  (*(*a1 + 72))(__p);
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = *__p;
  *(a1 + 32) = v3;
  HIBYTE(v3) = 0;
  LOBYTE(__p[0]) = 0;
  os_unfair_lock_unlock((a1 + 8));
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_F72D8(uint64_t a1, int a2)
{
  v2 = 824;
  if (a2)
  {
    v2 = 848;
  }

  return (*(a1 + v2 + 8) - *(a1 + v2)) >> 3;
}

uint64_t sub_F72FC(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 824;
  if (a2)
  {
    v3 = 848;
  }

  v4 = *(a1 + v3);
  if (a3 >= ((*(a1 + v3 + 8) - v4) >> 3))
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "AggregateDevice_Common2.cpp";
      *&v11[12] = 1024;
      *&v11[14] = 2461;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  (*(**(v4 + 8 * a3) + 144))(v11);
  if (!*&v11[8])
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(*&v11[8]);
  if (v5)
  {
    v6 = *v11;
    sub_1A8C0(v5);
  }

  else
  {
    v6 = 0;
  }

  if (*&v11[8])
  {
    std::__shared_weak_count::__release_weak(*&v11[8]);
  }

  return v6;
}

uint64_t sub_F749C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_F74B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4EBC(a1);
  outData = 0;
  inAddress.mElement = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6275696420;
  PropertyData = AudioObjectGetPropertyData(*(a1 + 128), &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v5 = sub_5544(17);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, PropertyData);
        v7 = v12 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v17 = 1024;
        v18 = 722;
        v19 = 2080;
        v20 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectGetPropertyData(kAudioDevicePropertyDeviceUID) returned status %s.", buf, 0x1Cu);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v8 = outData;
  if (outData)
  {
    *buf = outData;
    v9 = CFGetTypeID(outData);
    if (v9 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    sub_F76D4(a2, v8);
    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_F7684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  __cxa_free_exception(v15);
  sub_1DB0E0(&a15);
  _Unwind_Resume(a1);
}

_BYTE *sub_F76D4(UInt8 *a1, const __CFString *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  return sub_125D8(a1, a2);
}

std::string *sub_F7748@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = (*(*a1 + 120))(a1);
  std::to_string(&v40, v3);
  v4 = std::string::insert(&v40, 0, "[ id: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v40, __str);
  v8 = std::string::insert(&v40, 0, "; addr: ", 8uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 128))(&v40, a1);
  v12 = std::string::insert(&v40, 0, "; uid: ", 8uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v16 = *(a1 + 304);
  if ((v16 & 0x100000000) != 0)
  {
    sub_22170(&v40, v16);
    v17 = std::string::insert(&v40, 0, "; isolatedUseCaseID: ", 0x16uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v19, v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  sub_53E8(&v39, "{ ");
  v21 = 0;
  do
  {
    v22 = v21;
    v23 = (*(*a1 + 88))(a1, v21 & 1);
    if (v23)
    {
      v24 = 0;
      if (v22)
      {
        v25 = "o/";
      }

      else
      {
        v25 = "i/";
      }

      do
      {
        v26 = (*(*a1 + 96))(a1, v22 & 1, v24);
        snprintf(__s, 0x13uLL, "%p", v26);
        sub_53E8(&v40, __s);
        v27 = std::string::insert(&v40, 0, v25, 2uLL);
        v28 = *&v27->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v39, v29, v30);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        v24 = (v24 + 1);
        if ((v22 & (v24 >= v23)) == 0)
        {
          std::string::append(&v39, ", ", 2uLL);
        }
      }

      while (v23 != v24);
    }

    v21 = 1;
  }

  while ((v22 & 1) == 0);
  std::string::append(&v39, " }", 2uLL);
  v31 = std::string::insert(&v39, 0, "; virt strms: ", 0xFuLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v43 = v31->__r_.__value_.__r.__words[2];
  *__str = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v43 >= 0)
  {
    v33 = __str;
  }

  else
  {
    v33 = *__str;
  }

  if (v43 >= 0)
  {
    v34 = HIBYTE(v43);
  }

  else
  {
    v34 = *&__str[8];
  }

  std::string::append(a2, v33, v34);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; phys devs: { ", 0xFuLL);
  sub_F7D80(&__p, *(a1 + 192), (a1 + 184));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v35, v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " } ]", 4uLL);
}

void sub_F7C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_F7D80(std::string *a1, void *a2, void *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = a2[3];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = a2[2];
          if (v10)
          {
            sub_23148(__p, v10 + 2);
            sub_1A8C0(v9);
            v11 = v15;
            goto LABEL_9;
          }

          sub_1A8C0(v8);
        }
      }

      v15 = 7;
      strcpy(__p, "expired");
      v11 = 7;
LABEL_9:
      if ((v11 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = __p[1];
      }

      std::string::append(a1, v12, v13);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = a2[1];
      if (a2 == a3)
      {
        return std::string::append(a1, " }", 2uLL);
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_F7EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F7F0C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *(a1 + 24) = v6;
    operator delete(v6);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return a1;
}

uint64_t sub_F7F88(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_167E98(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_F7FD4(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *sub_F8204(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  if (v8)
  {
    while (1)
    {
      v9 = v8[4];
      if (!v9)
      {
        goto LABEL_21;
      }

      v10 = std::__shared_weak_count::lock(v9);
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = v8[3];
      if (!v11)
      {
        break;
      }

      v12 = *(v11 + 184);
      sub_1A8C0(v10);
      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    sub_1A8C0(v10);
LABEL_21:
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315394;
      *&v28[4] = "PhysicalDevice.cpp";
      v29 = 1024;
      v30 = 196;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v28, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

LABEL_7:
  v13 = *(a4 + 16);
  if (v13)
  {
    while (1)
    {
      v14 = v13[4];
      if (!v14)
      {
        goto LABEL_26;
      }

      v15 = std::__shared_weak_count::lock(v14);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = v13[3];
      if (!v16)
      {
        break;
      }

      v17 = *(v16 + 184);
      sub_1A8C0(v15);
      if (v17)
      {
        goto LABEL_26;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    sub_1A8C0(v15);
LABEL_26:
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315394;
      *&v28[4] = "PhysicalDevice.cpp";
      v29 = 1024;
      v30 = 202;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v28, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v27, "Precondition failure.");
  }

LABEL_13:
  result = sub_102FB0(a1, a2);
  v19 = *(a3 + 16);
  if (v19)
  {
    v20 = (v19 + 24);
    if (*(v19 + 40) != *(v19 + 48))
    {
      sub_25704(v28, v20, "", 213);
      sub_3166A0(a1, *v28, v19 + 40, *(v19 + 16));
    }

    sub_25704(v28, v20, "", 209);
    sub_103218(a1, *v28, *(v19 + 16));
  }

  v21 = *(a4 + 16);
  if (v21)
  {
    sub_88A00(v28, (v21 + 24), "", 218);
    sub_103218(a1, *v28, *(v21 + 16));
  }

  return result;
}

void sub_F8560(uint64_t a1, uint64_t a2)
{
  if (!sub_FC3EC(*(a2 + 8), 3))
  {
    return;
  }

  v4 = sub_14BD5C(a2, 3);
  v5 = *(v4 + 24);
  v30 = *(v4 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_CE168();
  sub_53E8(__p, "Codec");
  sub_CDEB8(&v32, __p);
  v6 = v33;
  if (v33)
  {
    v7 = std::__shared_weak_count::lock(v33);
    if (v7)
    {
      v8 = v32;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v37 < 0)
  {
    operator delete(*__p);
  }

  if (!v8)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26)
    {
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
        v35 = 1024;
        v36 = 70;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Could not locate codec device", __p, 0x12u);
      }
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  if (v9 == v10)
  {
    goto LABEL_46;
  }

  v31 = v5;
  do
  {
    if (!*(v9 + 16))
    {
      goto LABEL_43;
    }

    v11 = *(v9 + 8);
    v12 = *(v11 + 24);
    if (!v12)
    {
      goto LABEL_43;
    }

    v13 = std::__shared_weak_count::lock(v12);
    if (!v13)
    {
      goto LABEL_43;
    }

    v14 = *(v11 + 16);
    sub_1A8C0(v13);
    if (!v14)
    {
      goto LABEL_43;
    }

    v15 = *(v9 + 8);
    v16 = std::__shared_weak_count::lock(*(v15 + 24));
    v17 = *(v15 + 16);
    v18 = *(v17 + 200);
    if (!v18)
    {
      v21 = 0;
      goto LABEL_25;
    }

    v19 = *(v17 + 192);
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v20 = std::__shared_weak_count::lock(v18);
    v21 = v20;
    if (!v20)
    {
      std::__shared_weak_count::__release_weak(v18);
LABEL_25:
      v19 = 0;
      if (!v7)
      {
        goto LABEL_27;
      }

LABEL_26:
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_27;
    }

    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v18);
    sub_1A8C0(v21);
    if (v7)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (v21)
    {
      v22 = std::__shared_weak_count::lock(v21);
      if (!v22)
      {
        v19 = 0;
      }

      if (!v7)
      {
LABEL_36:
        v24 = v19 == 0;
        if (!v22)
        {
          goto LABEL_38;
        }

LABEL_37:
        sub_1A8C0(v22);
        goto LABEL_38;
      }
    }

    else
    {
      v19 = 0;
      v22 = 0;
      if (!v7)
      {
        goto LABEL_36;
      }
    }

    v23 = std::__shared_weak_count::lock(v7);
    if (!v23)
    {
      goto LABEL_36;
    }

    v24 = v19 == v8;
    sub_1A8C0(v23);
    if (v22)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    sub_1A8C0(v16);
    if (v24)
    {
      goto LABEL_45;
    }

LABEL_43:
    v9 += 24;
  }

  while (v9 != v10);
  v9 = v10;
LABEL_45:
  v10 = *(a1 + 48);
  v5 = v31;
LABEL_46:
  if (v10 == v9)
  {
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28)
    {
      if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
        v35 = 1024;
        v36 = 79;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Could not locate codec device's port list in the provided device description", __p, 0x12u);
      }
    }
  }

  if (*(a1 + 48) != v9)
  {
    if (v5)
    {
      v25 = std::__shared_weak_count::lock(v5);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v25);
      }
    }

    operator new();
  }

  if (v7)
  {
    sub_1A8C0(v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_F894C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    sub_1A8C0(v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_F89AC(std::string *a1, uint64_t a2)
{
  sub_53E8(a1, "{ ");
  sub_5659C(&v43, a2, "", 281);
  sub_23148(&v44, (v43.__r_.__value_.__r.__words[0] + 8));
  v4 = std::string::insert(&v44, 0, "Physical Device: ", 0x11uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v46 = v4->__r_.__value_.__r.__words[2];
  v45 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v6 = &v45;
  }

  else
  {
    v6 = v45;
  }

  if (v46 >= 0)
  {
    v7 = HIBYTE(v46);
  }

  else
  {
    v7 = *(&v45 + 1);
  }

  std::string::append(a1, v6, v7);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v43.__r_.__value_.__l.__size_)
  {
    sub_1A8C0(v43.__r_.__value_.__l.__size_);
  }

  std::to_string(&v42, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  v8 = std::string::insert(&v42, 0, ", Associated Input Ports (", 0x1AuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v43, "): ", 3uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  sub_F8FE0(&__p, *(a2 + 16), *(a2 + 24));
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

  v14 = std::string::append(&v44, p_p, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v46 = v14->__r_.__value_.__r.__words[2];
  v45 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v16 = &v45;
  }

  else
  {
    v16 = v45;
  }

  if (v46 >= 0)
  {
    v17 = HIBYTE(v46);
  }

  else
  {
    v17 = *(&v45 + 1);
  }

  std::string::append(a1, v16, v17);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  std::to_string(&v42, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  v18 = std::string::insert(&v42, 0, ", Associated Output Ports(", 0x1AuLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v43, "): ", 3uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  sub_F8FE0(&__p, *(a2 + 40), *(a2 + 48));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&v44, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v46 = v24->__r_.__value_.__r.__words[2];
  v45 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v26 = &v45;
  }

  else
  {
    v26 = v45;
  }

  if (v46 >= 0)
  {
    v27 = HIBYTE(v46);
  }

  else
  {
    v27 = *(&v45 + 1);
  }

  std::string::append(a1, v26, v27);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  std::to_string(&v43, *(a2 + 80));
  v28 = std::string::insert(&v43, 0, ", Associated Input SubPorts (", 0x1DuLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v44, ")", 1uLL);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v46 = v30->__r_.__value_.__r.__words[2];
  v45 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v32 = &v45;
  }

  else
  {
    v32 = v45;
  }

  if (v46 >= 0)
  {
    v33 = HIBYTE(v46);
  }

  else
  {
    v33 = *(&v45 + 1);
  }

  std::string::append(a1, v32, v33);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  std::to_string(&v43, *(a2 + 104));
  v34 = std::string::insert(&v43, 0, ", Associated Output SubPorts (", 0x1EuLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v44, ")", 1uLL);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v46 = v36->__r_.__value_.__r.__words[2];
  v45 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v38 = &v45;
  }

  else
  {
    v38 = v45;
  }

  if (v46 >= 0)
  {
    v39 = HIBYTE(v46);
  }

  else
  {
    v39 = *(&v45 + 1);
  }

  std::string::append(a1, v38, v39);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_F8E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_F8FE0(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_8E920(&__p, a2, 1);
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      a2 += 24;
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_F90C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_F90E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0xF90CCLL);
}

void sub_F90FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_25AEAC(a2);
  }

  sub_189A00();
}

uint64_t sub_F9150(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      sub_C31F4(*(v3 - 16));
      sub_C31F4(*(v3 - 40));
      v6 = (v3 - 72);
      sub_1084A8(&v6);
      v6 = (v3 - 96);
      sub_1084A8(&v6);
      v5 = *(v3 - 104);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v3 -= 112;
    }
  }

  return a1;
}

void sub_F92C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_5544(20);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_108DF0(&__p, a2);
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 160;
    v115 = 2080;
    v116 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activating route %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((sub_FC3EC(*(a5 + 8), 0) & 1) == 0)
  {
    v60 = sub_5544(14);
    v61 = *v60;
    if (*v60 && os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((sub_FC3EC(*(a5 + 8), 1) & 1) == 0)
  {
    v63 = sub_5544(14);
    v64 = *v63;
    if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 162;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v65 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v65, "Precondition failure.");
  }

  v90 = sub_14BD5C(a5, 0);
  v91 = sub_14BD5C(a5, 1);
  v10 = *(a2 + 8);
  v9 = *(a2 + 12);
  sub_25704(&v111, v90, "", 169);
  v89 = v9;
  sub_25704(&v109, (v91 + 16), "", 170);
  v11 = v111;
  v12 = *(v111 + 144);
  v92 = *(v109 + 144);
  *buf = *(v111 + 192);
  v13 = *(v111 + 200);
  *&buf[8] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v107, buf, "", 176);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = v107;
  v14 = v108;
  if (v108)
  {
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v89;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  (*(*v15 + 128))(buf, v15);
  v86 = v12;
  if (SBYTE3(v116) < 0)
  {
    if (*&buf[8] == 5)
    {
      v21 = **buf != 1701080899 || *(*buf + 4) != 99;
      operator delete(*buf);
      if (v21)
      {
        goto LABEL_23;
      }

LABEL_32:
      sub_CE168();
      sub_53E8(buf, "Codec");
      sub_CDEB8(&__p, buf);
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_)
      {
        v87 = std::__shared_weak_count::lock(__p.__r_.__value_.__l.__size_);
        if (v87)
        {
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v87 = 0;
        v23 = 0;
      }

      v19 = v23;
      if (v14)
      {
        sub_1A8C0(v16);
        v23 = v19;
      }

      if (size)
      {
        std::__shared_weak_count::__release_weak(size);
        v23 = v19;
      }

      if (SBYTE3(v116) < 0)
      {
        operator delete(*buf);
        v23 = v19;
      }

      v17 = v89;
      if (!v23)
      {
        v57 = sub_5544(14);
        v58 = *v57;
        if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 185;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [inputControlDevice is NULL]: could not get codec device", buf, 0x12u);
        }

        v59 = __cxa_allocate_exception(0x10uLL);
        *v59 = &off_6DDDD0;
        v59[2] = 2003329396;
      }

      sub_CE1E4(buf, v23, v11, a2, v90[7], *(a2 + 12));
      v24 = v112;
      v103[0] = v11;
      v103[1] = v112;
      if (v112)
      {
        atomic_fetch_add_explicit(v112 + 2, 1uLL, memory_order_relaxed);
      }

      sub_301DE0(&__p.__r_.__value_.__l.__data_, buf, v103);
      sub_16B928(&v104, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }

      if (*(v19 + 924) < ((v105 - v104) >> 2))
      {
        v73 = sub_5544(14);
        v74 = *v73;
        if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = 202;
          _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): could not get input device", &__p, 0x12u);
        }

        v75 = __cxa_allocate_exception(0x10uLL);
        *v75 = &off_6DDDD0;
        v75[2] = 2003329396;
      }

      if (v87)
      {
        atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v14)
      {
        sub_1A8C0(v14);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

LABEL_59:
      v93 = v19;
      if (v10 > 1668313714)
      {
        v25 = v86;
        if (v10 == 1668703084 || v10 == 1668576377)
        {
          goto LABEL_80;
        }

        v26 = 29299;
      }

      else
      {
        v25 = v86;
        if (v10 == 1668301427 || v10 == 1668309362)
        {
LABEL_67:
          if (v17 > 1919776354)
          {
            if (v17 > 1987081832)
            {
              if (v17 == 1987081839)
              {
                goto LABEL_80;
              }

              v28 = 30313;
            }

            else
            {
              if (v17 == 1919776355)
              {
                goto LABEL_80;
              }

              v28 = 26467;
            }

            v27 = v28 | 0x76700000;
          }

          else if (v17 > 1768779618)
          {
            if (v17 == 1768779619)
            {
              goto LABEL_80;
            }

            v27 = 1768781411;
          }

          else
          {
            if (v17 == 1735222132)
            {
              goto LABEL_80;
            }

            v27 = 1768057203;
          }

          if (v17 == v27)
          {
LABEL_80:
            if (sub_34C924(*(v11 + 192), *(v11 + 200)))
            {
              *buf = v15;
              *&buf[8] = v14;
              if (v14)
              {
                atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              __p.__r_.__value_.__r.__words[0] = 0x676C6F6265764164;
              LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
              sub_3024F0(buf, &__p);
              if (v14)
              {
                std::__shared_weak_count::__release_weak(v14);
              }
            }
          }

LABEL_85:
          if (v25 == 1885629550 && v92 == 1886743662)
          {
            strcpy(buf, "crscbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            sub_301F70(buf);
            strcpy(buf, "sddmurtp");
            buf[9] = 0;
            *&buf[10] = 0;
            sub_301F70(buf);
          }

          sub_2FBAF8(v93, 0, *(a2 + 12), *(a2 + 184), v90[7], a3);
          sub_147688();
          if (byte_6E6560 == 1)
          {
            v29 = sub_3F8E40(*(a2 + 104), *(a2 + 12), v25);
            sub_300DD0((v29 > 0xFFu) & v29, v107);
          }

          sub_CE1E4(v103, v93, v111, a2, v90[7], *(a2 + 12));
          *buf = v111;
          *&buf[8] = v112;
          if (v112)
          {
            atomic_fetch_add_explicit(v112 + 2, 1uLL, memory_order_relaxed);
          }

          sub_FC464(v103, buf, v93);
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_weak(*&buf[8]);
          }

          v30 = v109;
          v31 = *(v109 + 200);
          if (!v31 || (v32 = *(v109 + 192), atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed), v33 = std::__shared_weak_count::lock(v31), std::__shared_weak_count::__release_weak(v31), (v88 = v33) == 0) || !v32)
          {
            v66 = sub_5544(14);
            v67 = *v66;
            if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
            {
              (*(*v30 + 144))(&__p, v30);
              v68 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              v69 = __p.__r_.__value_.__r.__words[0];
              sub_22170(&v101, v30[36]);
              p_p = &__p;
              if (v68 < 0)
              {
                p_p = v69;
              }

              if (v102 >= 0)
              {
                v71 = &v101;
              }

              else
              {
                v71 = v101;
              }

              *buf = 136315906;
              *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 242;
              v115 = 2080;
              v116 = p_p;
              v117 = 2080;
              v118 = v71;
              _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [outputIODevice is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
              if (v102 < 0)
              {
                operator delete(v101);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v72 = __cxa_allocate_exception(0x10uLL);
            *v72 = &off_6DDDD0;
            v72[2] = 2003329396;
          }

          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v92 == 1886545251)
          {
            sub_CE168();
            sub_53E8(buf, "Speaker");
            sub_CDEB8(&__p, buf);
            v34 = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_)
            {
              v35 = std::__shared_weak_count::lock(__p.__r_.__value_.__l.__size_);
              if (v35)
              {
                v36 = __p.__r_.__value_.__r.__words[0];
                sub_1A8C0(v35);
              }

              else
              {
                v36 = 0;
              }

              std::__shared_weak_count::__release_weak(v34);
            }

            else
            {
              v36 = 0;
            }

            if (SBYTE3(v116) < 0)
            {
              operator delete(*buf);
            }

            strcpy(buf, "shCSptuo");
            buf[9] = 0;
            *&buf[10] = 0;
            if (v36 && (*(*v36 + 16))(v36, buf) && sub_3E7F7C(v36))
            {
              v37 = *a2;
              operator new();
            }
          }

          v38 = (*(*&v32->_os_unfair_lock_opaque + 240))(v32, v92);
          v99 = 0x6F7574706D757465;
          v100 = v38;
          if ((*(*&v32->_os_unfair_lock_opaque + 24))(v32, &v99))
          {
            operator new();
          }

          sub_2FBAF8(v32, 1, *(a2 + 12), *(a2 + 184), *(v91 + 56), a3);
          if (!sub_FC3EC(*(a5 + 8), 3))
          {
            goto LABEL_123;
          }

          v39 = sub_14BD5C(a5, 3);
          v97 = 0;
          v98 = 0;
          v40 = *(v39 + 24);
          if (!v40)
          {
            goto LABEL_124;
          }

          v41 = std::__shared_weak_count::lock(v40);
          if (v41)
          {
            v42 = v41;
            v43 = *(v39 + 16);
            atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v97 = v43;
            v98 = v41;
            sub_1A8C0(v41);
            v44 = std::__shared_weak_count::lock(v42);
            if (v44)
            {
              if (v43)
              {
                if (v92 != 1886545251)
                {
                  v76 = sub_5544(14);
                  v77 = *v76;
                  if (*v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 281;
                    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Detected presence of HAC connection in a non-Receiver route. Database error?", buf, 0x12u);
                  }

                  v78 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v78, "Detected presence of HAC connection in a non-Receiver route. Database error?");
LABEL_193:
                }

                v45 = *(v43 + 200);
                if (v45)
                {
                  v46 = *(v43 + 192);
                  atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v47 = std::__shared_weak_count::lock(v45);
                  if (v47)
                  {
                    v48 = v47;
                    atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_weak(v45);
                    sub_1A8C0(v48);
                    v49 = v88;
                    atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v50 = std::__shared_weak_count::lock(v48);
                    v51 = 0;
                    if (!v50)
                    {
                      v46 = 0;
                    }

LABEL_137:
                    v55 = std::__shared_weak_count::lock(v49);
                    if (v55)
                    {
                      v56 = v46 == v32;
                      sub_1A8C0(v55);
                      if (!v50)
                      {
LABEL_140:
                        std::__shared_weak_count::__release_weak(v88);
                        if ((v51 & 1) == 0)
                        {
                          std::__shared_weak_count::__release_weak(v48);
                        }

                        if (v56)
                        {
                          if (*(v43 + 144) == 1885888867)
                          {
                            if (!sub_FC3EC(*(a5 + 8), 2))
                            {
                              (*(*&v32->_os_unfair_lock_opaque + 240))(v32, 1885888867);
                              operator new();
                            }

                            v83 = sub_5544(14);
                            v84 = *v83;
                            if (*v83)
                            {
                              if (os_log_type_enabled(*v83, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315394;
                                *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
                                *&buf[12] = 1024;
                                *&buf[14] = 287;
                                _os_log_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: both HAC and ANC are present in route. Database error", buf, 0x12u);
                              }
                            }

                            v78 = __cxa_allocate_exception(0x10uLL);
                            std::logic_error::logic_error(v78, "Illegal route: both HAC and ANC are present in route. Database error");
                          }

                          else
                          {
                            v81 = sub_5544(14);
                            v82 = *v81;
                            if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136315394;
                              *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
                              *&buf[12] = 1024;
                              *&buf[14] = 285;
                              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: HAC connection's destination port type is not HAC. Database error?", buf, 0x12u);
                            }

                            v78 = __cxa_allocate_exception(0x10uLL);
                            std::logic_error::logic_error(v78, "Illegal route: HAC connection's destination port type is not HAC. Database error?");
                          }
                        }

                        else
                        {
                          v79 = sub_5544(14);
                          v80 = *v79;
                          if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136315394;
                            *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
                            *&buf[12] = 1024;
                            *&buf[14] = 283;
                            _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: HAC and downlink connections' destination devices do not match. Database error?", buf, 0x12u);
                          }

                          v78 = __cxa_allocate_exception(0x10uLL);
                          std::logic_error::logic_error(v78, "Illegal route: HAC and downlink connections' destination devices do not match. Database error?");
                        }

                        goto LABEL_193;
                      }
                    }

                    else
                    {
                      v56 = v46 == 0;
                      if (!v50)
                      {
                        goto LABEL_140;
                      }
                    }

                    sub_1A8C0(v50);
                    goto LABEL_140;
                  }

                  std::__shared_weak_count::__release_weak(v45);
                }

                v48 = 0;
                v46 = 0;
                v50 = 0;
                v49 = v88;
                v51 = 1;
                atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                goto LABEL_137;
              }

              sub_1A8C0(v44);
            }
          }

          else
          {
LABEL_123:
            v97 = 0;
            v98 = 0;
          }

LABEL_124:
          v52 = v109;
          v53 = *(a2 + 12);
          if (*(v109 + 304) == 1752709424)
          {
            sub_300D58(*(a2 + 12), v32);
            v53 = *(a2 + 12);
          }

          sub_C4A80(&v101, v52, a2, *(v91 + 56), v53, 0);
          v54 = v110;
          *buf = v52;
          *&buf[8] = v110;
          if (v110)
          {
            atomic_fetch_add_explicit(&v110->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_FC464(&v101, buf, v32);
          if (v54)
          {
            std::__shared_weak_count::__release_weak(v54);
          }

          *buf = v111;
          *&buf[8] = v112;
          if (v112)
          {
            atomic_fetch_add_explicit(v112 + 2, 1uLL, memory_order_relaxed);
          }

          __p.__r_.__value_.__r.__words[0] = v52;
          __p.__r_.__value_.__l.__size_ = v54;
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_FE624(&v96, a1, v93, v32, buf, &__p, v103, a2, &v104, a5);
        }

        v26 = 29250;
      }

      if (v10 != (v26 | 0x63700000))
      {
        goto LABEL_85;
      }

      goto LABEL_67;
    }

    operator delete(*buf);
  }

  else if (SBYTE3(v116) == 5)
  {
    if (*buf != 1701080899 || buf[4] != 99)
    {
LABEL_23:
      v19 = v15;
      v17 = v89;
      goto LABEL_59;
    }

    goto LABEL_32;
  }

  v19 = v15;
  goto LABEL_59;
}

void sub_FBB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *__p)
{
  __cxa_free_exception(v72);
  sub_1A8C0(v74);
  std::__shared_weak_count::__release_weak(v73);
  sub_1A8C0(a18);
  if (a18)
  {
    sub_1A8C0(a18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a66)
  {
    operator delete(a66);
    if (!a17)
    {
LABEL_7:
      if (!a14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!a17)
  {
    goto LABEL_7;
  }

  sub_1A8C0(a17);
  if (!a14)
  {
LABEL_9:
    if (a70)
    {
      sub_1A8C0(a70);
    }

    if (a72)
    {
      sub_1A8C0(a72);
    }

    if (STACK[0x208])
    {
      sub_1A8C0(STACK[0x208]);
    }

    _Unwind_Resume(a1);
  }

LABEL_8:
  sub_1A8C0(a14);
  goto LABEL_9;
}

void sub_FC33C(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*a2)
      {
        sub_23148(a1, (*a2 + 8));

        sub_1A8C0(v6);
        return;
      }

      sub_1A8C0(v5);
    }
  }

  sub_53E8(a1, "expired");
}

uint64_t *sub_FC3EC(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = result;
    do
    {
      v3 = *(v2 + 8);
      if (v3 <= a2)
      {
        if (v3 >= a2)
        {
          return (**sub_14BADC(result, a2) != 0);
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
    return 0;
  }

  return result;
}

void sub_FC464(unsigned int **a1, uint64_t *a2, os_unfair_lock_s *a3)
{
  if (*a1 != a1[1])
  {
    v5 = "";
    sub_25704(&v38, a2, "", 1389);
    v6 = sub_5544(21);
    if (*(v6 + 8))
    {
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = v38;
          if ((*(v38 + 184) & 1) == 0)
          {
            v5 = "not ";
          }

          sub_10898C(&v37, *a1, a1[1]);
          v9 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
          v10 = v37.__r_.__value_.__r.__words[0];
          sub_23148(__p, v8 + 2);
          v11 = &v37;
          if (v9 < 0)
          {
            v11 = v10;
          }

          if (v36 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          *buf = 136316162;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1393;
          v41 = 2080;
          v42 = v5;
          v43 = 2080;
          v44 = v11;
          v45 = 2080;
          v46 = v12;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will %smark sub-ports %s active on port %s.", buf, 0x30u);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    v13 = sub_5544(21);
    if (*(v13 + 8))
    {
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = &v37;
          sub_10898C(&v37, *a1, a1[1]);
          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v15 = v37.__r_.__value_.__r.__words[0];
          }

          sub_23148(__p, (v38 + 8));
          v16 = v36;
          v17 = __p[0];
          sub_23148(v33, a3 + 2);
          v18 = __p;
          if (v16 < 0)
          {
            v18 = v17;
          }

          if (v34 >= 0)
          {
            v19 = v33;
          }

          else
          {
            v19 = v33[0];
          }

          *buf = 136316162;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1395;
          v41 = 2080;
          v42 = v15;
          v43 = 2080;
          v44 = v18;
          v45 = 2080;
          v46 = v19;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will activate sub-ports %s for port %s on device %s.", buf, 0x30u);
          if (v34 < 0)
          {
            operator delete(v33[0]);
          }

          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    v20 = a1[1] - *a1;
    if (v20 < 5)
    {
      if (v20 != 4)
      {
        goto LABEL_57;
      }

      v28 = v38;
      (*(*v38 + 432))(buf, v38, **a1);
      (*(*&a3->_os_unfair_lock_opaque + 408))(a3, buf, v28[92] & 1);
      (*(*v28 + 480))(v28, **a1);
      v29 = *buf;
      if (!*buf)
      {
        goto LABEL_57;
      }

      *&buf[8] = *buf;
    }

    else
    {
      v21 = v38;
      (*(*&a3->_os_unfair_lock_opaque + 408))(a3, a1, *(v38 + 184) & 1);
      if (v21[36]._os_unfair_lock_opaque == 1886216809)
      {
        v22 = sub_5544(21);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
        {
          sub_23148(&v37, v21 + 2);
          v24 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
          v25 = v37.__r_.__value_.__r.__words[0];
          sub_22170(__p, 0x616C6C20u);
          v26 = &v37;
          if (v24 < 0)
          {
            v26 = v25;
          }

          if (v36 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1406;
          v41 = 2080;
          v42 = v26;
          v43 = 2080;
          v44 = v27;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%25s:%-5d Setting multiple sub-ports active on Port: %s.  Converting to a single sub-port with ID: %s", buf, 0x26u);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }
        }

        (*(*&v21->_os_unfair_lock_opaque + 480))(v21, 1634495520);
        goto LABEL_57;
      }

      v30 = sub_5544(21);
      if ((*(v30 + 8) & 1) == 0)
      {
        goto LABEL_57;
      }

      v31 = *v30;
      if (!*v30 || !os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_57;
      }

      sub_23148(&v37, v21 + 2);
      v32 = (v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v37 : v37.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1412;
      v41 = 2080;
      v42 = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to set multiple sub-ports active on Port: %s.  Ignoring.", buf, 0x1Cu);
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if (v39)
        {
          sub_1A8C0(v39);
        }

        return;
      }

      v29 = v37.__r_.__value_.__r.__words[0];
    }

    operator delete(v29);
    goto LABEL_57;
  }
}

void sub_FCA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28)
{
  if (a26)
  {
    sub_1A8C0(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FCAC4(uint64_t a1, uint64_t a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v43 = sub_5544(14);
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v65 = *(a2 + 8);
      sub_22CE0(&v66);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v45 = sub_5544(14);
    if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v65 = *(a2 + 8);
      sub_22CE0(&v66);
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    *v46 = &off_6DDDD0;
    v46[2] = 561211770;
  }

  if (!a6)
  {
    v47 = sub_5544(14);
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v65 = *(a2 + 8);
      sub_22CE0(&v66);
    }

    v48 = __cxa_allocate_exception(0x10uLL);
    *v48 = &off_6DDDD0;
    v48[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v49 = sub_5544(14);
    if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v65 = *(a2 + 8);
      sub_22CE0(&v66);
    }

    v50 = __cxa_allocate_exception(0x10uLL);
    *v50 = &off_6DDDD0;
    v50[2] = 1852797029;
  }

  if (*a2 == 1937138532)
  {
    if (*(a1 + 532) != 1937010030)
    {
      v51 = sub_5544(14);
      v52 = *v51;
      if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "Device_CarPlay_Aspen.cpp";
        v69 = 1024;
        v70 = 626;
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
      }

      v53 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v53, "Precondition failure.");
    }

    v62 = a6;
    LOWORD(v63) = 0;
    v18 = sub_5544(18);
    v19 = sub_5544(30);
    v20 = 0;
    *&buf.mSelector = 0x100000002;
    v21 = *(v18 + 8);
    while (1)
    {
      v22 = *(&buf.mSelector + v20);
      if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
      {
        break;
      }

      v20 += 4;
      if (v20 == 8)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_67;
      }
    }

    if ((v21 & v22) == 0)
    {
      v18 = v19;
    }

    if (*(v18 + 8))
    {
LABEL_67:
      v39 = *v18;
      if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v60 = *a2;
        v61 = *(a2 + 8);
        sub_22CE0(&v66);
      }
    }

LABEL_70:
    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    p_buf = &v62;
    return sub_A1D30(p_buf);
  }

  if (*a2 == 1937006964)
  {
    v12 = *(a1 + 532);
    if (v12 != 1937006968 && v12 != 1937010030)
    {
      v54 = sub_5544(14);
      v55 = *v54;
      if (*v54 && os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "Device_CarPlay_Aspen.cpp";
        v69 = 1024;
        v70 = 556;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
      }

      v56 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v56, "Precondition failure.");
    }

    LODWORD(v60) = *a6;
    v13 = sub_5544(18);
    v14 = sub_5544(30);
    v15 = 0;
    *&buf.mSelector = 0x100000002;
    v16 = *(v13 + 8);
    while (1)
    {
      v17 = *(&buf.mSelector + v15);
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

    if (*(v13 + 8))
    {
LABEL_26:
      v24 = *v13;
      if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v62 = *a2;
        v63 = *(a2 + 8);
        sub_22CE0(&v66);
      }
    }

LABEL_29:
    std::mutex::lock((a1 + 552));
    *(a1 + 664) = 0;
    std::mutex::unlock((a1 + 552));
    v25 = *(a1 + 268);
    strcpy(&buf, "tatsbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v26 = AudioObjectSetPropertyData(v25, &buf, 0, 0, 4u, &v60);
    if (v26)
    {
      v40 = sub_5544(14);
      v41 = *v40;
      if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "Device_CarPlay_Aspen.cpp";
        v69 = 1024;
        v70 = 571;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error attempting to set kAudioDevicePropertyStarkStreamAudioType.", &buf, 0x12u);
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      *v42 = &off_6DDDD0;
      v42[2] = v26;
    }

    v27 = sub_5544(18);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_CarPlay_Aspen.cpp";
      v69 = 1024;
      v70 = 573;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CarPlay Device is waiting on the Config Change to end.", &buf, 0x12u);
    }

    if ((*(a1 + 520) & 1) == 0)
    {
      v29.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_ + 2000000;
      while (1)
      {
        if (std::chrono::system_clock::now().__d_.__rep_ >= v29.__d_.__rep_)
        {
          goto LABEL_58;
        }

        sub_27A4();
        LOBYTE(v66) = sub_2E6B08();
        *&buf.mSelector = a1 + 552;
        LOBYTE(buf.mElement) = 1;
        std::mutex::lock((a1 + 552));
        v30.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
        while ((*(a1 + 664) & 1) == 0)
        {
          if (v30.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
          {
            goto LABEL_53;
          }

          v31.__d_.__rep_ = v30.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
          if (v31.__d_.__rep_ >= 1)
          {
            std::chrono::steady_clock::now();
            v32.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            if (v32.__d_.__rep_)
            {
              if (v32.__d_.__rep_ < 1)
              {
                if (v32.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                {
                  goto LABEL_47;
                }

                v33 = 0x8000000000000000;
              }

              else
              {
                if (v32.__d_.__rep_ > 0x20C49BA5E353F7)
                {
                  v33 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_48;
                }

LABEL_47:
                v33 = 1000 * v32.__d_.__rep_;
LABEL_48:
                if (v33 > (v31.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  v34.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_51:
                  std::condition_variable::__do_timed_wait((a1 + 616), &buf, v34);
                  std::chrono::steady_clock::now();
                  goto LABEL_52;
                }
              }
            }

            else
            {
              v33 = 0;
            }

            v34.__d_.__rep_ = v33 + v31.__d_.__rep_;
            goto LABEL_51;
          }

LABEL_52:
          if (std::chrono::steady_clock::now().__d_.__rep_ >= v30.__d_.__rep_)
          {
LABEL_53:
            v35 = *(a1 + 664);
            goto LABEL_55;
          }
        }

        v35 = 1;
LABEL_55:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(&v66);
        if (v35)
        {
LABEL_58:
          if (*(a1 + 664) != 1)
          {
            v57 = sub_5544(14);
            v58 = *v57;
            if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
            {
              buf.mSelector = 136315394;
              *&buf.mScope = "Device_CarPlay_Aspen.cpp";
              v69 = 1024;
              v70 = 602;
              _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): CarPlay Device failed to receive the Config Change completion event.", &buf, 0x12u);
            }

            v59 = __cxa_allocate_exception(0x10uLL);
            *v59 = &off_6DDDD0;
            v59[2] = 2003329396;
          }

          v36 = sub_5544(18);
          v37 = *v36;
          if (*v36)
          {
            if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
            {
              buf.mSelector = 136315394;
              *&buf.mScope = "Device_CarPlay_Aspen.cpp";
              v69 = 1024;
              v70 = 598;
              _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CarPlay Device is done waiting for the Config Change to complete.", &buf, 0x12u);
            }
          }

          break;
        }
      }
    }

    v66 = 0x676C6F6273766364;
    v67 = 0;
    result = (*(*a1 + 16))(a1, &v66);
    if (result)
    {
      *&buf.mSelector = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      LOWORD(buf.mElement) = 257;
      sub_FDA38(&buf, @"vocoder sample rate", 0.0);
      sub_A1CA4(&buf, @"vocoder type", 0);
      (*(*a1 + 48))(a1, &v66, 0, 0, 8, &buf);
      p_buf = &buf;
      return sub_A1D30(p_buf);
    }
  }

  else
  {

    return sub_FDAC4(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_FD9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_A1D30(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_FDA38(uint64_t a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v7 = v5;
  v8 = 1;
  if (*(a1 + 9) == 1 && v5 && *a1)
  {
    CFDictionarySetValue(*a1, a2, v5);
  }

  return sub_A07C4(&v7);
}

void sub_FDAB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A07C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_FDAC4(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  sub_4DFC0(a1);
  mSelector = a2->mSelector;
  if (a2->mSelector == 1836414053)
  {
    v13 = sub_5544(18);
    v14 = sub_5544(39);
    v15 = 0;
    *buf = 0x100000002;
    v16 = *(v13 + 8);
    while (1)
    {
      v17 = *&buf[v15];
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

LABEL_8:
    v18 = *v13;
    v19 = v18;
    if (v18)
    {
      v20 = v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v70 = a3;
        v21 = *a6;
        v22 = *(a1 + 268);
        sub_22170(__p, a2->mScope);
        if (v80 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        mElement = a2->mElement;
        *buf = 136316418;
        *&buf[4] = "Device_HAL_Common.mm";
        v82 = 1024;
        v83 = 266;
        v84 = 1024;
        *v85 = v21;
        *&v85[4] = 1024;
        *&v85[6] = v22;
        *&v85[10] = 2080;
        *&v85[12] = v23;
        *&v85[20] = 1024;
        *&v85[22] = mElement;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set mute value of %u on HAL device %u (selector: kAudioDevicePropertyMute; scope: '%s'; element: %u).", buf, 0x2Eu);
        if (v80 < 0)
        {
          operator delete(__p[0]);
        }

        a3 = v70;
      }
    }

    mSelector = a2->mSelector;
  }

  if (mSelector == 1987013732)
  {
    v25 = sub_5544(18);
    v26 = sub_5544(39);
    v27 = 0;
    *buf = 0x100000002;
    v28 = *(v25 + 8);
    while (1)
    {
      v29 = *&buf[v27];
      if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
      {
        break;
      }

      v27 += 4;
      if (v27 == 8)
      {
        goto LABEL_25;
      }
    }

    if ((v28 & v29) == 0)
    {
      v25 = v26;
    }

LABEL_25:
    v30 = *v25;
    v31 = v30;
    if (v30)
    {
      v32 = v30;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *a6;
        v34 = *(a1 + 268);
        sub_22170(__p, a2->mScope);
        v35 = v80 >= 0 ? __p : __p[0];
        v36 = a2->mElement;
        *buf = 136316418;
        *&buf[4] = "Device_HAL_Common.mm";
        v82 = 1024;
        v83 = 270;
        v84 = 2048;
        *v85 = v33;
        *&v85[8] = 1024;
        *&v85[10] = v34;
        *&v85[14] = 2080;
        *&v85[16] = v35;
        *&v85[24] = 1024;
        *&v85[26] = v36;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set decibel volume value of %f on HAL device %u (selector: kAudioDevicePropertyVolumeDecibels; scope: '%s'; element: %u).", buf, 0x32u);
        if (v80 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    mSelector = a2->mSelector;
  }

  if (mSelector == 1853059700)
  {
    v37 = sub_5544(18);
    v38 = sub_5544(37);
    v39 = 0;
    *buf = 0x100000002;
    v40 = *(v37 + 8);
    while (1)
    {
      v41 = *&buf[v39];
      if (((v40 & v41) != 0) != ((*(v38 + 8) & v41) != 0))
      {
        break;
      }

      v39 += 4;
      if (v39 == 8)
      {
        goto LABEL_41;
      }
    }

    if ((v40 & v41) == 0)
    {
      v37 = v38;
    }

LABEL_41:
    v42 = *v37;
    v43 = v42;
    if (v42)
    {
      v44 = v42;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v71 = a3;
        v45 = *a6;
        v46 = *(a1 + 268);
        sub_22170(__p, a2->mScope);
        if (v80 >= 0)
        {
          v47 = __p;
        }

        else
        {
          v47 = __p[0];
        }

        v48 = a2->mElement;
        *buf = 136316418;
        *&buf[4] = "Device_HAL_Common.mm";
        v82 = 1024;
        v83 = 274;
        v84 = 2048;
        *v85 = v45;
        *&v85[8] = 1024;
        *&v85[10] = v46;
        *&v85[14] = 2080;
        *&v85[16] = v47;
        *&v85[24] = 1024;
        *&v85[26] = v48;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting sample rate value of %f on HAL device %u (selector: kAudioDevicePropertyNominalSampleRate; scope: '%s'; element: %u).", buf, 0x32u);
        if (v80 < 0)
        {
          operator delete(__p[0]);
        }

        a3 = v71;
      }
    }

    mSelector = a2->mSelector;
  }

  if (mSelector == 1936945763)
  {
    v49 = sub_5544(18);
    if (*(v49 + 8))
    {
      v50 = *v49;
      if (v50)
      {
        v51 = v50;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, *a6);
          v52 = *(a1 + 268);
          v74 = *&a2->mSelector;
          v75 = a2->mElement;
          sub_22CE0(v77);
        }
      }
    }
  }

  result = AudioObjectSetPropertyData(*(a1 + 268), a2, a3, a4, a5, a6);
  v54 = result;
  if (result)
  {
    v55 = *sub_5544(18);
    v56 = v55;
    if (v55)
    {
      v57 = v55;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v54);
        if (v80 >= 0)
        {
          v58 = __p;
        }

        else
        {
          v58 = __p[0];
        }

        v59 = *(a1 + 268);
        v60 = v77;
        (*(*a1 + 128))(v77, a1);
        if (v78 < 0)
        {
          v60 = v77[0];
        }

        sub_22170(&v74, a2->mSelector);
        v61 = v76;
        v62 = v74;
        sub_22170(v72, a2->mScope);
        v63 = &v74;
        if (v61 < 0)
        {
          v63 = v62;
        }

        v64 = v72;
        if (v73 < 0)
        {
          v64 = v72[0];
        }

        v65 = a2->mElement;
        *buf = 136317186;
        *&buf[4] = "Device_HAL_Common.mm";
        v82 = 1024;
        v83 = 283;
        v84 = 1024;
        *v85 = v54;
        *&v85[4] = 2080;
        *&v85[6] = v58;
        *&v85[14] = 1024;
        *&v85[16] = v59;
        *&v85[20] = 2080;
        *&v85[22] = v60;
        v86 = 2080;
        v87 = v63;
        v88 = 2080;
        v89 = v64;
        v90 = 1024;
        v91 = v65;
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %d (%s): mDeviceID %u (uid %s); selector %s; scope '%s'; element %u", buf, 0x4Cu);
        if (v73 < 0)
        {
          operator delete(v72[0]);
        }

        if (v76 < 0)
        {
          operator delete(v74);
        }

        if (v78 < 0)
        {
          operator delete(v77[0]);
        }

        if (v80 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v66 = sub_5544(14);
    v67 = sub_468EC(1, *v66, *(v66 + 8));
    v68 = v67;
    if (v67)
    {
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_HAL_Common.mm";
        v82 = 1024;
        v83 = 284;
        _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to set property data.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v54;
  }

  return result;
}

void sub_FE34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v30 < 0)
  {
    operator delete(v28);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_FE3C0(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_FE610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F7F88(va);
  _Unwind_Resume(a1);
}

void sub_FE624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_25704(&v73, a5, "", 476);
  sub_25704(&v72, a6, "", 477);
  v58 = v72;
  v14 = *(v72 + 144);
  v15 = sub_FC3EC(*(a10 + 8), 4);
  if (v14 == 1886613611)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    v17 = sub_14BD5C(a10, 4);
    v18 = v17[1];
    v54 = *v17;
    v70 = *v17;
    v71 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v54 = 0;
    v18 = 0;
    v70 = 0;
    v71 = 0;
  }

  if (sub_FC3EC(*(a10 + 8), 3))
  {
    v19 = sub_14BD5C(a10, 3);
    v20 = *(v19 + 24);
    v68 = *(v19 + 16);
    v69 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  if (sub_FC3EC(*(a10 + 8), 9))
  {
    v21 = sub_14BD5C(a10, 9);
    v22 = v21[1];
    v66 = *v21;
    v67 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  if (*(a8 + 12) != 1768057203)
  {
    goto LABEL_25;
  }

  if (*(a8 + 312) == 1)
  {
    v23 = sub_5544(20);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a8 + 288;
        if (*(a8 + 311) < 0)
        {
          v25 = *(a8 + 288);
        }

        *buf = 136315906;
        *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 495;
        *&buf[18] = 2080;
        *&buf[20] = v25;
        *&buf[28] = 2080;
        *&buf[30] = "NetworkUplinkClock_UID";
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Conflict: Multiple clock devices present for Ibis. Route-defined clock %s, network uplink clock %s", buf, 0x26u);
      }
    }
  }

  if (*(a8 + 12) == 1768057203)
  {
    sub_53E8(buf, "NetworkUplinkClock_UID");
    *v63 = *buf;
    v64 = *&buf[16];
    v65 = 1;
  }

  else
  {
LABEL_25:
    sub_80534(v63, (a8 + 288));
  }

  v26 = sub_5544(20);
  v27 = *v26;
  if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_53E8(__p, "none");
    if (v65 == 1)
    {
      if (SHIBYTE(v64) < 0)
      {
        sub_54A0(__dst, v63[0], v63[1]);
      }

      else
      {
        *__dst = *v63;
        *&v78 = v64;
      }
    }

    else
    {
      *__dst = *__p;
      *&v78 = v76;
      *&v76 = 0;
      __p[0] = 0;
      __p[1] = 0;
    }

    v28 = __dst;
    if (SBYTE7(v78) < 0)
    {
      v28 = *__dst;
    }

    *buf = 136315650;
    *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 501;
    *&buf[18] = 2080;
    *&buf[20] = v28;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Clock UID is %s", buf, 0x1Cu);
    if (SBYTE7(v78) < 0)
    {
      operator delete(*__dst);
    }

    if (SBYTE7(v76) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v56 = *(a8 + 192);
  *a1 = 0;
  v29 = sub_102988(*(a8 + 12));
  if (*(a8 + 268))
  {
    v30 = *(a8 + 264);
  }

  else
  {
    v30 = v29;
  }

  v55 = v30;
  if (*(a8 + 128))
  {
    v31 = 0;
  }

  else
  {
    v31 = *(a8 + 124) == 1986291046;
  }

  v32 = v31;
  if (a3 != a4)
  {
    if (v18)
    {
      std::__shared_weak_count::lock(v18);
    }

    *&buf[8] = 0;
    *buf = 0;
    v37 = a5[1];
    if (v37)
    {
      v38 = std::__shared_weak_count::lock(v37);
      if (v38)
      {
        v39 = v38;
        v40 = *a5;
        atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v41 = *&buf[8];
        *buf = v40;
        *&buf[8] = v39;
        if (v41)
        {
          std::__shared_weak_count::__release_weak(v41);
        }

        sub_1A8C0(v39);
      }

      else
      {
        v42 = *&buf[8];
        *&buf[8] = 0;
        *buf = 0;
        if (v42)
        {
          std::__shared_weak_count::__release_weak(v42);
        }
      }
    }

    *&buf[24] = 0;
    *&buf[16] = 0;
    if (v18)
    {
      v43 = std::__shared_weak_count::lock(v18);
      if (v43)
      {
        v44 = v43;
        atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v45 = *&buf[24];
        *&buf[16] = v54;
        *&buf[24] = v44;
        if (v45)
        {
          std::__shared_weak_count::__release_weak(v45);
        }

        sub_1A8C0(v44);
      }

      else
      {
        v46 = *&buf[24];
        *&buf[16] = 0;
        *&buf[24] = 0;
        if (v46)
        {
          std::__shared_weak_count::__release_weak(v46);
        }
      }
    }

    sub_CF934(v62, buf, 2);
    v47 = 24;
    while (1)
    {
      v48 = *&buf[v47];
      if (v48)
      {
        std::__shared_weak_count::__release_weak(v48);
      }

      v47 -= 16;
      if (v47 == -8)
      {
        *&buf[8] = 0;
        *buf = 0;
        sub_3568E8(v62, buf);
        v49 = *(a3 + 80);
        v50 = *(a3 + 88);
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 16), 1uLL, memory_order_relaxed);
        }

        LODWORD(__p[0]) = v55;
        BYTE4(__p[0]) = v56;
        BYTE5(__p[0]) = v32;
        operator new();
      }
    }
  }

  if (!v18)
  {
    v33 = *(v58 + 144);
    *buf = *(v73 + 144);
    *&buf[4] = v33;
    sub_4BA00(v61, buf, 2);
    v60[0] = v60;
    v60[1] = v60;
    v60[2] = 0;
    v34 = a5[1];
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      if (v35)
      {
        v36 = *a5;
        atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v35);
      }
    }

    operator new();
  }

  v51 = sub_5544(14);
  v52 = *v51;
  if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "RoutingHandler_PlaybackAndRecord_GenericConfig1.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 513;
    _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}