void sub_23A43A9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  if ((a12 & 1) == 0)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::LoadBalancer::ClearProfileOverride(Phase::Controller::LoadBalancer *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 216) == 1)
  {
    *(this + 216) = 0;
    *(this + 29) |= 1uLL;
    v2 = **(Phase::Logger::GetInstance(this) + 816);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(this + 6);
      v4 = *(this + 12);
      v5 = 136316162;
      v6 = "LoadBalancer.mm";
      v7 = 1024;
      v8 = 259;
      v9 = 2048;
      v10 = this;
      v11 = 2080;
      v12 = v3;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d loadbalancer@%p: Clearing the profile override in the Load Balancer. Going back to profile with name: %s, balance: %f", &v5, 0x30u);
    }
  }
}

uint64_t Phase::LockFreeQueueMPSC::GetWriteBuffer(atomic_uchar *this, uint64_t a2, unint64_t *a3, BOOL *a4)
{
  v8 = (this + 40);
  Phase::SpinLock::Lock(this + 40);
  result = Phase::LockFreeQueueSPSC::GetWriteBuffer(this, a2, a3);
  if (result)
  {
    *a4 = 0;
    return result;
  }

  if (!*a4)
  {
    result = 0;
    goto LABEL_10;
  }

  v10 = *this;
  if (a2 + 32 <= (2 * v10))
  {
    v11 = 2 * v10;
  }

  else
  {
    v11 = a2 + 32;
  }

  result = Phase::LockFreeQueueSPSC::GrowBuffer(this, v11, a3);
  if (!result)
  {
    *a4 = 0;
LABEL_10:
    atomic_store(0, v8);
  }

  return result;
}

void Phase::LockFreeQueueSPSC::~LockFreeQueueSPSC(void **this)
{
  free(this[2]);
  v2 = this[3];
  if (v2 != this[2])
  {
    free(v2);
  }
}

_DWORD *Phase::LockFreeQueueSPSC::GetWriteBuffer(atomic_uchar *this, int a2, unint64_t *a3)
{
  explicit = atomic_load_explicit(this + 32, memory_order_acquire);
  v4 = *(this + 3);
  if (explicit)
  {
    v5 = *(this + 2);
LABEL_3:
    LODWORD(v6) = v5 - v4 - 32;
    if (v6 < a2)
    {
      goto LABEL_4;
    }

    v6 = v6;
LABEL_19:
    *a3 = v6;
    return (*(this + 3) + v4 + 16);
  }

  v5 = *(this + 1);
  if (v5 < v4)
  {
    v8 = *(this + 2) - v4 - 32;
    if (v8 >= a2)
    {
      v6 = v8;
      goto LABEL_19;
    }

    v9 = v5 - 32;
    if (v5 - 32 < a2)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (v4 < v5)
  {
    goto LABEL_3;
  }

  v10 = *(this + 2) - 32;
  if (v10 - v4 >= a2)
  {
    v6 = v10 - v4;
    goto LABEL_19;
  }

  v9 = v5 - 32;
  if (v5 - 32 >= a2)
  {
LABEL_17:
    v12 = *(this + 3);
    *v12 = 0;
    __dmb(0xBu);
    *(v12 + *(this + 3)) = -1;
    *(this + 3) = 0;
    *a3 = v9;
    return v12 + 4;
  }

  if (v10 >= a2)
  {
    v7 = 0;
    v11 = *(this + 3);
    *v11 = 0;
    __dmb(0xBu);
    *(v11 + *(this + 3)) = -1;
    *(this + 3) = 0;
    goto LABEL_5;
  }

LABEL_4:
  v7 = 0;
LABEL_5:
  *a3 = 0;
  return v7;
}

uint64_t Phase::LockFreeQueueSPSC::GrowBuffer(atomic_uchar *this, size_t size, unint64_t *a3)
{
  if (atomic_load_explicit(this + 32, memory_order_acquire))
  {
    return 0;
  }

  v4 = size;
  if (*this >= size)
  {
    return 0;
  }

  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  *(this + 2) = v4;
  *(this + 3) = 0;
  *a3 = v4 - 32;
  *(this + 3) = v7;
  *v7 = 0;
  __dmb(0xBu);
  atomic_store(1u, this + 32);
  return v7 + *(this + 3) + 16;
}

uint64_t Phase::LockFreeQueueSPSC::CommitBytes(atomic_uchar *this, int a2)
{
  explicit = atomic_load_explicit(this + 32, memory_order_acquire);
  v3 = *(this + 3);
  if ((explicit & 1) != 0 || (v4 = *(this + 1), v3 >= v4))
  {
    v4 = *(this + 2);
  }

  if (v4 - v3 - 32 < a2)
  {
    return 0;
  }

  v6 = ((a2 + 15) & 0xFFFFFFF0) + v3 + 16;
  *(this + 3) = v6;
  v7 = *(this + 3);
  *(v7 + v6) = 0;
  __dmb(0xBu);
  *(v7 + v3) = a2;
  return 1;
}

BOOL Phase::LockFreeQueueSPSC::HasData(Phase::LockFreeQueueSPSC *this)
{
  v2 = *(*(this + 2) + *(this + 1));
  __dmb(9u);
  if (v2 == -1)
  {
    *(this + 1) = 0;
    v2 = **(this + 2);
  }

  if (v2 > 0)
  {
    return 1;
  }

  if ((atomic_load_explicit(this + 32, memory_order_acquire) & 1) == 0)
  {
    return 0;
  }

  free(*(this + 2));
  v4 = *(this + 3);
  *(this + 2) = v4;
  *this = *(this + 2);
  LODWORD(v4) = *v4;
  __dmb(0xBu);
  atomic_store(0, this + 32);
  return v4 > 0;
}

uint64_t Phase::Logger::GetInstance(Phase::Logger *this)
{
  if ((atomic_load_explicit(&qword_27DF97B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97B48))
  {
    operator new();
  }

  return qword_27DF97B40;
}

void sub_23A43AF18(_Unwind_Exception *a1)
{
  MEMORY[0x23EE864A0](v1, 0x10F0C40B369B9D4);
  __cxa_guard_abort(&qword_27DF97B48);
  _Unwind_Resume(a1);
}

void sub_23A43CFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void **a14)
{
  v18 = *v16;
  if (*v16)
  {
    v14[192] = v18;
    operator delete(v18);
  }

  v19 = *a13;
  if (*a13)
  {
    v14[174] = v19;
    operator delete(v19);
  }

  v20 = *a14;
  if (*a14)
  {
    v14[171] = v20;
    operator delete(v20);
  }

  v21 = *v15;
  if (*v15)
  {
    v14[168] = v21;
    operator delete(v21);
  }

  v22 = v14[157];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void Phase::sReadDefaultsValue<float>(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    v6 = v4;
    [v4 floatValue];
    *a3 = v5;
    v4 = v6;
  }
}

void Phase::sReadDefaultsValue<int>(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    v5 = v4;
    *a3 = [v4 intValue];
    v4 = v5;
  }
}

void Phase::sReadDefaultsValue<std::vector<float>>(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = a2;
  v5 = [v26 objectForKey:v27];
  if (v5)
  {
    a3[1] = *a3;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", .0123456789"}];
    v23 = [v22 invertedSet];
    v24 = [v5 componentsSeparatedByCharactersInSet:v23];
    v25 = [v24 componentsJoinedByString:&stru_284D3D208];
    v6 = [v25 componentsSeparatedByString:{@", "}];
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          [v10 floatValue];
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            v15 = *a3;
            v16 = v13 - *a3;
            v17 = v16 >> 2;
            v18 = (v16 >> 2) + 1;
            if (v18 >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v19 = v12 - v15;
            if (v19 >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v20);
            }

            *(4 * v17) = v11;
            v14 = 4 * v17 + 4;
            memcpy(0, v15, v16);
            v21 = *a3;
            *a3 = 0;
            a3[1] = v14;
            a3[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v13 = v11;
            v14 = (v13 + 1);
          }

          a3[1] = v14;
        }

        v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
    }
  }
}

void Phase::sReadDefaultsValue<BOOL>(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    v5 = v4;
    *a3 = [v4 BOOLValue];
    v4 = v5;
  }
}

void Phase::sReadDefaultsValue<char const*>(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    v5 = v4;
    *a3 = [v5 UTF8String];
    v4 = v5;
  }
}

uint64_t Phase::Logger::CreateAudioCapturer@<X0>(Phase::Logger *this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  if (qword_27DF97B60 != -1)
  {
    dispatch_once(&qword_27DF97B60, &__block_literal_global_512);
  }

  if (off_27DF97B58)
  {
    result = off_27DF97B58(4386, "AudioCapture/PHASE", this, 1667327590, 0, a2);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

void ___ZN5Phase6Logger25CheckTailspinWithThrottleEv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0 == *MEMORY[0x277CBED28];
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  _MergedGlobals_17 = v2;
  if (v0)
  {

    CFRelease(v0);
  }
}

void Phase::Logger::DumpTailspinWithThrottleAsync(Phase::Logger *this, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (qword_27DF97B50 != -1)
  {
    dispatch_once(&qword_27DF97B50, &__block_literal_global_2);
  }

  if (_MergedGlobals_17)
  {
    mach_absolute_time();
    v4 = __udivti3();
    v5 = atomic_load(this + 208);
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    v6 = atomic_load(this + 209);
    if (v4 - v5 >= v6)
    {
LABEL_6:
      while (1)
      {
        v7 = v5;
        atomic_compare_exchange_strong(this + 208, &v7, v4);
        if (v7 == v5)
        {
          break;
        }

        v5 = v7;
        if (v7)
        {
          goto LABEL_5;
        }
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a2];
      v10 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN5Phase6Logger29DumpTailspinWithThrottleAsyncEPKc_block_invoke;
      block[3] = &unk_278B4F668;
      v13 = v9;
      v11 = v9;
      dispatch_async(v10, block);
    }
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(this) + 1104);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "Log.mm";
      v16 = 1024;
      v17 = 488;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d skipping tailspin diagnostic on unsupported build", buf, 0x12u);
    }
  }
}

void sub_23A43D86C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN5Phase6Logger29DumpTailspinWithThrottleAsyncEPKc_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = **(Phase::Logger::GetInstance(v1) + 1104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "Log.mm";
    v37 = 1024;
    v38[0] = 458;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d firing tailspin request through audio analytics", buf, 0x12u);
  }

  applesauce::CF::TypeRef::TypeRef(buf, "issue_type");
  applesauce::CF::TypeRef::TypeRef((&v36 + 4), "phase");
  v3 = v1;
  v4 = [(Phase::Logger *)v1 UTF8String];
  applesauce::CF::TypeRef::TypeRef((v38 + 2), "context");
  applesauce::CF::TypeRef::TypeRef(v39, v4);
  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&__p, 2uLL);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, 2uLL);
  for (i = 0; i != 32; i += 16)
  {
    v6 = *&buf[i];
    v7 = v33;
    if (v33 >= v34)
    {
      v9 = (v33 - __p) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v10 = (v34 - __p) >> 2;
      if (v10 <= v9 + 1)
      {
        v10 = v9 + 1;
      }

      if (v34 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v11);
      }

      v12 = (8 * v9);
      *v12 = v6;
      v8 = 8 * v9 + 8;
      v13 = v12 - (v33 - __p);
      memcpy(v13, __p, v33 - __p);
      v14 = __p;
      __p = v13;
      v33 = v8;
      v34 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v33 = v6;
      v8 = (v7 + 8);
    }

    v33 = v8;
    v15 = *(&v36 + i + 4);
    v16 = v30;
    if (v30 >= v31)
    {
      v18 = v30 - values;
      if ((v18 + 1) >> 61)
      {
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v19 = (v31 - values) >> 2;
      if (v19 <= v18 + 1)
      {
        v19 = v18 + 1;
      }

      if (v31 - values >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&values, v20);
      }

      v21 = (8 * v18);
      *v21 = v15;
      v17 = 8 * v18 + 8;
      v22 = v21 - (v30 - values);
      memcpy(v22, values, v30 - values);
      v23 = values;
      values = v22;
      v30 = v17;
      v31 = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v30 = v15;
      v17 = (v16 + 1);
    }

    v30 = v17;
  }

  v24 = CFDictionaryCreate(0, __p, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    v30 = values;
    operator delete(values);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  for (j = 0; j != -8; j -= 4)
  {
    v26 = *&v39[j * 4];
    if (v26)
    {
      CFRelease(v26);
    }

    v27 = *(&v38[j] + 2);
    if (v27)
    {
      CFRelease(v27);
    }
  }

  CAReportingClientSendSingleMessage();
  CFRelease(v24);
}

void sub_23A43DC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  __cxa_free_exception(v20);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  v22 = &a19;
  v23 = -32;
  do
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v22);
    v22 = (v24 - 16);
    v23 += 16;
  }

  while (v23);

  _Unwind_Resume(a1);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      off_27DF97B58 = result;
    }
  }

  return result;
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(result, a2);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *this = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_23A43DFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Phase::LookupInterpolator::Initialize(Phase::LookupInterpolator *this, float a2, int a3, unsigned int a4, float *a5)
{
  *(this + 2) = a2;
  *this = a3;
  *(this + 1) = a4;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(this + 2, a5, &a5[a4], a4);
  *(this + 8) = *(this + 7);
  Phase::LookupInterpolator::EvaluateMeanRange(this);
  Phase::LookupInterpolator::EvaluateInterpolationRanges(this, *(this + 11) - 1, v6);

  Phase::LookupInterpolator::EvaluateFractionsFromInterpolationRanges(this);
}

uint64_t Phase::LookupInterpolator::EvaluateMeanRange(uint64_t this)
{
  v1 = this;
  v2 = (**(this + 16) / (*(this + 8) / *this));
  if (v2)
  {
    v3 = v2 + 1;
    v4 = 1;
  }

  else
  {
    this = Phase::LookupInterpolator::GetSubbandCountBelowFirstFFTBin(this);
    if (vabds_f32(*(v1 + 8) / *v1, *(*(v1 + 16) + 4 * this)) >= ((*(*(v1 + 16) + 4 * (this + 1)) - *(*(v1 + 16) + 4 * this)) * 0.5))
    {
      v4 = this;
    }

    else
    {
      v4 = this + 1;
    }

    v3 = 2;
  }

  *(v1 + 40) = 0;
  *(v1 + 44) = v4;
  *(v1 + 48) = 0;
  *(v1 + 52) = v3;
  return this;
}

void Phase::LookupInterpolator::EvaluateInterpolationRanges(Phase::LookupInterpolator *this, unsigned int a2, double a3)
{
  v3 = *(this + 7);
  *(this + 8) = v3;
  v4 = *(this + 1);
  if (v4 - 1 > a2)
  {
    v6 = 4 * a2;
    v7 = a2;
    do
    {
      *&a3 = *(this + 2) / *this;
      a3 = COERCE_DOUBLE(vcvt_u32_f32(vdiv_f32(*(*(this + 2) + v6), vdup_lane_s32(*&a3, 0))));
      v8 = HIDWORD(a3) - LODWORD(a3);
      if (HIDWORD(a3) != LODWORD(a3))
      {
        v9 = LODWORD(a3) + 1;
        v10 = *(this + 9);
        if (v3 >= v10)
        {
          v11 = *(this + 7);
          v12 = v3 - v11;
          v13 = (v3 - v11) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v15 = v10 - v11;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v17 = v13;
          v18 = (16 * v13);
          *v18 = v7;
          v18[1] = 1;
          v18[2] = v9;
          v18[3] = v8;
          v3 = (16 * v13 + 16);
          v19 = &v18[-4 * v17];
          memcpy(v19, v11, v12);
          *(this + 7) = v19;
          *(this + 8) = v3;
          *(this + 9) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v3 = v7;
          *(v3 + 1) = 1;
          *(v3 + 2) = v9;
          *(v3 + 3) = v8;
          v3 += 16;
        }

        *(this + 8) = v3;
        v4 = *(this + 1);
      }

      ++v7;
      v6 += 4;
    }

    while (v7 < (v4 - 1));
  }
}

void Phase::LookupInterpolator::EvaluateFractionsFromInterpolationRanges(Phase::LookupInterpolator *this)
{
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 13);
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 10);
  v2 = *(this + 7);
  if (*(this + 8) != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (v2 + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v10 = *(this + 2);
      v11 = *(v10 + 4 * v6);
      v12 = *(v10 + 4 * (v7 + v6));
      std::vector<float>::vector[abi:ne200100](v23, v8);
      std::vector<float>::vector[abi:ne200100](__p, v8);
      if (v8)
      {
        v13 = *this;
        v14 = v12 - v11;
        v15 = v23[0];
        v16 = v23[0];
        v17 = v8;
        do
        {
          v18 = ((((*(this + 2) / v13) * v9) - v11) / v14) * 3.14159265;
          v19 = cosf(v18);
          *v16++ = (1.0 - ((1.0 - v19) * 0.5)) + (((1.0 - v19) * 0.5) * 0.0);
          ++v9;
          --v17;
        }

        while (v17);
        v20 = __p[0];
        do
        {
          v21 = *v15++;
          *v20++ = 1.0 - v21;
          --v8;
        }

        while (v8);
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](this + 80, v23);
      std::vector<std::vector<float>>::push_back[abi:ne200100](this + 104, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v23[0])
      {
        v23[1] = v23[0];
        operator delete(v23[0]);
      }

      v2 = *(this + 7);
      v3 = ++v4;
    }

    while (v4 < ((*(this + 8) - v2) >> 4));
  }
}

void sub_23A43E478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::LookupInterpolator::GetSubbandCountBelowFirstFFTBin(Phase::LookupInterpolator *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return (v1 - 1);
  }

  result = 0;
  while (!(*(*(this + 2) + 4 * result) / (*(this + 2) / *this)))
  {
    if (v1 == ++result)
    {
      return (v1 - 1);
    }
  }

  return result;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v21 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v11);
    }

    v12 = 24 * v8;
    v17 = 0;
    v18 = v12;
    v19 = 24 * v8;
    v20 = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v8, *a2, a2[1], (a2[1] - *a2) >> 2);
    v7 = (v19 + 24);
    v13 = *(a1 + 8) - *a1;
    v14 = &v18[-v13];
    memcpy(&v18[-v13], *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v7;
    v16 = *(a1 + 16);
    *(a1 + 16) = v20;
    v19 = v15;
    v20 = v16;
    v17 = v15;
    v18 = v15;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(&v17);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
    v7 = v5 + 3;
    *(a1 + 8) = v7;
  }

  *(a1 + 8) = v7;
  return result;
}

void sub_23A43E640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void Phase::LookupInterpolator::InterpolateWithFractions(Phase::LookupInterpolator *this, float *a2, float *a3)
{
  __C = 0.0;
  vDSP_meanv(&a2[*(this + 10)], 1, &__C, *(this + 11));
  vDSP_vfill(&__C, &a3[*(this + 12)], 1, *(this + 13));
  v6 = *(this + 7);
  v7 = *(this + 8);
  if (v7 != v6)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = (v6 + 16 * v8);
      v11 = *v10;
      v12 = v10[2];
      v13 = v10[3];
      v14 = a2[v11];
      v20 = a2[v10[1] + v11];
      __A = v14;
      v15 = 3 * v8;
      v16 = *(*(this + 13) + 8 * v15);
      v17 = &a3[v12];
      MEMORY[0x23EE87280](*(*(this + 10) + 8 * v15), 1, &__A, v17, 1, v17, 1, v13);
      MEMORY[0x23EE87280](v16, 1, &v20, v17, 1, v17, 1, v13);
      v8 = v9;
      v6 = *(this + 7);
      v7 = *(this + 8);
      ++v9;
    }

    while (v8 < (v7 - v6) >> 4);
  }

  *a3 = *a2;
  v18 = *(v7 - 4) + *(v7 - 8);
  v19 = ((*this >> 1) - v18 + 1);
  __A = a2[*(this + 1) - 1];
  vDSP_vfill(&__A, &a3[v18], 1, v19);
}

void Phase::Controller::DVM23::MasterController::~MasterController(Phase::Controller::DVM23::MasterController *this)
{
  *this = &unk_284D35BB8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284D35BB8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::DVM23::MasterController::InitGraph(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  v2 = (*(*a1 + 32))(a1, a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v2;
}

void sub_23A43E8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::MasterController::ConfigureGraph(uint64_t a1, int64x2_t *this)
{
  *(a1 + 24) = -1;
  v4 = (a1 + 24);
  v5 = *(this[11].i64[1] + 24);
  result = Phase::Controller::DVM23::DspVoiceManager23::AddGraph(this, (a1 + 24), *(this->i64[0] + 64), v5, v5, "");
  if (result)
  {
    return result;
  }

  v7 = v5;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v9 = (a1 + 40);
  v11 = (v10 - v8) >> 3;
  if (v5 <= v11)
  {
    if (v5 >= v11)
    {
      goto LABEL_15;
    }

    v16 = v8 + 8 * v5;
  }

  else
  {
    v12 = v5 - v11;
    v13 = *(a1 + 56);
    if (v12 > (v13 - v10) >> 3)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v14 = v13 - v8;
        if (v14 >> 2 > v5)
        {
          v7 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v7;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 40, v15);
      }

      std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 48), 8 * v12);
    v16 = v10 + 8 * v12;
  }

  *(a1 + 48) = v16;
LABEL_15:
  if (v5 < 1)
  {
    return 0;
  }

  v17 = 0;
  while (1)
  {
    v19 = -1;
    result = Phase::Controller::DVM23::DspVoiceManager23::AddVoice(this, &v19, 0x1CuLL);
    if (result)
    {
      break;
    }

    v18 = v19;
    result = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, *v4, v17, v19, 0);
    if (result)
    {
      break;
    }

    *(*v9 + 8 * v17++) = v18;
    if (v5 == v17)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::MasterController::Connect(Phase::Controller::DVM23::MasterController *this, Phase::Controller::DVM23::VoiceGraph **a2, Phase::Controller::DVM23::GraphController *a3)
{
  v6 = (*(*a3 + 80))(a3);
  v7 = (*(**a2 + 80))(*a2, v6);
  if (v7)
  {
    v8 = -858993459 * ((*(v7 + 40) - *(v7 + 32)) >> 3);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(**a2 + 80))(*a2, *(this + 3));
  if (v9)
  {
    v10 = -858993459 * ((*(v9 + 16) - *(v9 + 8)) >> 3);
  }

  else
  {
    v10 = 0;
  }

  if (v8 > v10)
  {
    return 9;
  }

  if (v8 < 1)
  {
LABEL_13:
    v14 = *(this + 16);
    if (v8 <= v14)
    {
      return 0;
    }

    else
    {
      v15 = 8 * v14;
      do
      {
        Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(a2, *(*(this + 5) + v15), 0, 0.0);
        Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(a2, *(*(this + 5) + v15), 0, v14++);
        v15 += 8;
      }

      while (v8 != v14);
      result = 0;
      *(this + 16) = v8;
    }
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = (*(*a3 + 80))(a3);
      result = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v13, v12, *(this + 3), v12);
      if (result)
      {
        break;
      }

      v12 = (v12 + 1);
      if (v8 == v12)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::MasterController::SetPlaystate(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v10[8] = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(a2, *(*(a1 + 40) + 8 * v8++), a3, 0.0);
    }

    while (v8 < *(a1 + 64));
  }

  if (a3 == 2)
  {
    std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v10, a4);
    v10[7] = 0;
    operator new();
  }

  return 0;
}

void sub_23A43EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v8 + 16);
  _Unwind_Resume(a1);
}

void *std::__function::__func<Phase::Controller::DVM23::MasterController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D35C20;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::MasterController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D35C20;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::MasterController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D35C20;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](a2 + 24, a1 + 24);
}

void std::__function::__func<Phase::Controller::DVM23::MasterController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](a1 + 24);

  operator delete(a1);
}

void Phase::Zeppelin::MathUtils::Legendre(Phase::Zeppelin::MathUtils *this, int a2, long double a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 > this)
  {
    v6 = **(Phase::Logger::GetInstance(this) + 944);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "MathUtils.cpp";
      v12 = 1024;
      v13 = 40;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(inM > inN) is true]: ErrorDescriptions::kErrDescr_assocLegendreOrderGreaterThanDegree", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_assocLegendreOrderGreaterThanDegree);
  }

  switch(this)
  {
    case 0:
    case 1:
    case 2:
      return;
    case 3:
      if (a2 != 2 && a2 != 1)
      {
        if (a2)
        {
          pow(1.0 - a3 * a3, 1.5);
        }

        else
        {
          pow(a3, 3.0);
        }
      }

      return;
    case 4:
      if (a2 <= 1)
      {
        if (!a2)
        {
          goto LABEL_79;
        }

        return;
      }

      if (a2 != 3)
      {
        return;
      }

      v4 = 1.0 - a3 * a3;
      v5 = 1.5;
      goto LABEL_105;
    case 5:
      if (a2 <= 1)
      {
        if (!a2)
        {
          goto LABEL_79;
        }

        if (a2 != 1)
        {
          goto LABEL_123;
        }

        goto LABEL_40;
      }

      if (a2 == 2)
      {
        return;
      }

      if (a2 != 3)
      {
        if (a2 == 4)
        {
          return;
        }

LABEL_123:
        pow(1.0 - a3 * a3, 2.5);
        return;
      }

LABEL_125:
      pow(1.0 - a3 * a3, 1.5);
      return;
    case 6:
      if (a2 <= 2)
      {
        if (!a2)
        {
          goto LABEL_50;
        }

        if (a2 == 1 || a2 == 2)
        {
LABEL_40:
          pow(a3, 4.0);
          return;
        }

LABEL_126:
        pow(1.0 - a3 * a3, 3.0);
        return;
      }

      if (a2 == 3)
      {
        goto LABEL_125;
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          v4 = 1.0 - a3 * a3;
          v5 = 2.5;
          goto LABEL_105;
        }

        goto LABEL_126;
      }

      return;
    case 7:
      if (a2 <= 2)
      {
        if (a2 < 2)
        {
          goto LABEL_50;
        }

        if (a2 == 2)
        {
LABEL_79:
          pow(a3, 4.0);
          return;
        }
      }

      else
      {
        if (a2 <= 4)
        {
          if (a2 == 3)
          {
            goto LABEL_101;
          }

          return;
        }

        if (a2 == 5)
        {
          goto LABEL_68;
        }

        if (a2 == 6)
        {
          v4 = 1.0 - a3 * a3;
          v5 = 3.0;
          goto LABEL_105;
        }
      }

      pow(1.0 - a3 * a3, 3.5);
      return;
    case 8:
      if (a2 > 3)
      {
        if (a2 > 5)
        {
          if (a2 == 6)
          {
            pow(1.0 - a3 * a3, 3.0);
            return;
          }

          if (a2 == 7)
          {
            v4 = 1.0 - a3 * a3;
            v5 = 3.5;
            goto LABEL_105;
          }

          goto LABEL_137;
        }

        if (a2 == 4)
        {
          goto LABEL_40;
        }

LABEL_68:
        pow(1.0 - a3 * a3, 2.5);
      }

      else
      {
        if (a2 <= 1)
        {
          if (!a2)
          {
            goto LABEL_76;
          }

          if (a2 == 1)
          {
LABEL_50:
            pow(a3, 6.0);
            pow(a3, 4.0);
            return;
          }

LABEL_137:
          pow(1.0 - a3 * a3, 4.0);
          return;
        }

        if (a2 == 2)
        {
          goto LABEL_50;
        }

LABEL_101:
        pow(1.0 - a3 * a3, 1.5);
        pow(a3, 4.0);
      }

      return;
    case 9:
      if (a2 <= 3)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            goto LABEL_148;
          }

          goto LABEL_50;
        }

        if (!a2)
        {
          goto LABEL_112;
        }

        if (a2 == 1)
        {
LABEL_76:
          pow(a3, 8.0);
          pow(a3, 6.0);
          pow(a3, 4.0);
          return;
        }
      }

      else
      {
        if (a2 <= 5)
        {
          if (a2 == 4)
          {
            goto LABEL_145;
          }

          goto LABEL_40;
        }

        switch(a2)
        {
          case 6:
            goto LABEL_147;
          case 7:
            pow(a3 * a3 + -1.0, 3.0);
            return;
          case 8:
            v4 = a3 * a3 + -1.0;
            v5 = 4.0;
            goto LABEL_105;
        }
      }

      pow(1.0 - a3 * a3, 4.5);
      return;
    case 10:
      if (a2 <= 4)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            goto LABEL_76;
          }

          if (a2 == 3)
          {
LABEL_148:
            pow(a3, 7.0);
            pow(a3, 5.0);
            pow(a3, 3.0);
            return;
          }

          goto LABEL_50;
        }

        if (!a2)
        {
          goto LABEL_16;
        }

        if (a2 == 1)
        {
LABEL_112:
          pow(a3, 9.0);
          pow(a3, 7.0);
          pow(a3, 5.0);
          pow(a3, 3.0);
          return;
        }

LABEL_150:
        pow(a3 * a3 + -1.0, 5.0);
        return;
      }

      if (a2 > 6)
      {
        switch(a2)
        {
          case 7:
LABEL_147:
            pow(a3 * a3 + -1.0, 3.0);
            pow(a3, 3.0);
            return;
          case 8:
            pow(a3 * a3 + -1.0, 4.0);
            return;
          case 9:
            v4 = 1.0 - a3 * a3;
            v5 = 4.5;
            goto LABEL_105;
        }

        goto LABEL_150;
      }

      if (a2 == 5)
      {
LABEL_145:
        pow(a3, 5.0);
        pow(a3, 3.0);
      }

      else
      {
        pow(a3 * a3 + -1.0, 3.0);
        pow(a3, 4.0);
      }

      return;
    case 11:
      if (a2 > 4)
      {
        if (a2 <= 7)
        {
          if (a2 == 5)
          {
            pow(1.0 - a3 * a3, 2.5);
            pow(a3, 6.0);
            pow(a3, 4.0);
          }

          else if (a2 == 6)
          {
            pow(a3 * a3 + -1.0, 3.0);
            pow(a3, 5.0);
            pow(a3, 3.0);
          }

          else
          {
            pow(1.0 - a3 * a3, 3.5);
            pow(a3, 4.0);
          }

          return;
        }

        switch(a2)
        {
          case 8:
            pow(a3 * a3 + -1.0, 4.0);
            pow(a3, 3.0);
            return;
          case 9:
            pow(1.0 - a3 * a3, 4.5);
            return;
          case 10:
            v4 = a3 * a3 + -1.0;
            v5 = 5.0;
            goto LABEL_105;
        }

LABEL_158:
        pow(1.0 - a3 * a3, 5.5);
        return;
      }

      if (a2 <= 1)
      {
        if (!a2)
        {
          goto LABEL_163;
        }

        if (a2 == 1)
        {
LABEL_16:
          pow(a3, 10.0);
          pow(a3, 8.0);
          pow(a3, 6.0);
          pow(a3, 4.0);
          return;
        }

        goto LABEL_158;
      }

      if (a2 == 2)
      {
        goto LABEL_112;
      }

      if (a2 == 3)
      {
        pow(1.0 - a3 * a3, 1.5);
        pow(a3, 8.0);
        pow(a3, 6.0);
        pow(a3, 4.0);
      }

      else
      {
        pow(a3, 7.0);
        pow(a3, 5.0);
        pow(a3, 3.0);
      }

      return;
    case 12:
      if (a2 > 5)
      {
        if (a2 <= 8)
        {
          if (a2 == 6)
          {
            pow(a3 * a3 + -1.0, 3.0);
            pow(a3, 6.0);
            pow(a3, 4.0);
          }

          else if (a2 == 7)
          {
            pow(1.0 - a3 * a3, 3.5);
            pow(a3, 5.0);
            pow(a3, 3.0);
          }

          else
          {
            pow(a3 * a3 + -1.0, 4.0);
            pow(a3, 4.0);
          }

          return;
        }

        if (a2 == 9)
        {
          pow(1.0 - a3 * a3, 4.5);
          pow(a3, 3.0);
          return;
        }

        if (a2 == 10)
        {
          pow(a3 * a3 + -1.0, 5.0);
          return;
        }

        if (a2 != 11)
        {
LABEL_167:
          pow(a3 * a3 + -1.0, 6.0);
          return;
        }

        v4 = 1.0 - a3 * a3;
        v5 = 5.5;
LABEL_105:
        pow(v4, v5);
      }

      else
      {
        if (a2 <= 2)
        {
          switch(a2)
          {
            case 0:
              pow(a3, 12.0);
              pow(a3, 10.0);
              pow(a3, 8.0);
              pow(a3, 6.0);
              pow(a3, 4.0);
              return;
            case 1:
LABEL_163:
              pow(a3, 11.0);
              pow(a3, 9.0);
              pow(a3, 7.0);
              pow(a3, 5.0);
              pow(a3, 3.0);
              return;
            case 2:
              goto LABEL_16;
          }

          goto LABEL_167;
        }

        if (a2 == 3)
        {
          pow(1.0 - a3 * a3, 1.5);
          pow(a3, 9.0);
          pow(a3, 7.0);
          pow(a3, 5.0);
          pow(a3, 3.0);
        }

        else
        {
          if (a2 == 4)
          {
            goto LABEL_76;
          }

          pow(1.0 - a3 * a3, 2.5);
          pow(a3, 7.0);
          pow(a3, 5.0);
          pow(a3, 3.0);
        }
      }

      return;
    default:
      v8 = **(Phase::Logger::GetInstance(this) + 944);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "MathUtils.cpp";
        v12 = 1024;
        v13 = 447;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): ErrorDescriptions::kErrDescr_assocLegendreDegreeNotSupported", &v10, 0x12u);
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v9, Phase::Zeppelin::ErrorDescriptions::kErrDescr_assocLegendreDegreeNotSupported);
  }
}

void Phase::Zeppelin::MathUtils::ComputeSphHankelYUpToOrder(Phase::Zeppelin::MathUtils *this@<X0>, long double a2@<D0>, void *a3@<X8>)
{
  __p[3] = *MEMORY[0x277D85DE8];
  if (a2 <= 0.0)
  {
    v35 = **(Phase::Logger::GetInstance(this) + 944);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "MathUtils.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 634;
      _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(0.0 >= inX) is true]: ErrorDescriptions::kErrDescr_sphHankelNegativeArgumentsNotSupported", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_sphHankelNegativeArgumentsNotSupported);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = (this + 1);
  if (this != -1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::complex<double>>>((this + 1));
  }

  if (0xFFFFFFFF <= a2)
  {
    memset(__p, 0, 24);
    std::vector<double>::reserve(__p, v5);
    v7 = sin(a2);
    v40 = v7 / a2;
    std::vector<double>::push_back[abi:ne200100](__p, &v40);
    v40 = v7 / (a2 * a2) - cos(a2) / a2;
    std::vector<double>::push_back[abi:ne200100](__p, &v40);
    v8 = 0;
    v9 = 3;
    do
    {
      v40 = -(*(__p[0] + v8) - v9 * (*(__p[0] + v8 + 1) / a2));
      std::vector<double>::push_back[abi:ne200100](__p, &v40);
      ++v8;
      v9 += 2;
    }

    while (v5 - 2 != v8);
  }

  else
  {
    memset(__p, 0, 24);
    std::vector<double>::reserve(__p, v5);
    v6 = sin(a2) / a2;
    v40 = v6;
    v10 = (sqrt(0xFFFFFFFF) * 3.0) - 1;
    if (v10 >= 1)
    {
      v11 = v10 + 1;
      v12 = (2 * v10) | 1;
      v13 = 1.0;
      v14 = 0.0;
      do
      {
        v15 = -(v14 - v12 / a2 * v13);
        v39 = v15;
        std::vector<double>::push_back[abi:ne200100](__p, &v39);
        --v11;
        v12 -= 2;
        v14 = v13;
        v13 = v15;
      }

      while (v11 > 1);
    }

    v16 = __p[0];
    v17 = __p[1];
    if (__p[0] != __p[1])
    {
      v18 = __p[1] - 8;
      if (__p[1] - 8 > __p[0])
      {
        v19 = __p[0] + 8;
        do
        {
          v20 = *(v19 - 1);
          *(v19 - 1) = *v18;
          *v18 = v20;
          v18 -= 8;
          v21 = v19 >= v18;
          v19 += 8;
        }

        while (!v21);
      }
    }

    if (v16 != v17)
    {
      v22 = v6 / *v16;
      do
      {
        *v16 = v22 * *v16;
        ++v16;
      }

      while (v16 != v17);
    }
  }

  v23 = __p[0];
  v24 = __p[1];
  memset(__p, 0, 24);
  std::vector<double>::reserve(__p, v5);
  v25 = -cos(a2);
  v40 = v25 / a2;
  std::vector<double>::push_back[abi:ne200100](__p, &v40);
  v40 = v25 / (a2 * a2) - sin(a2) / a2;
  std::vector<double>::push_back[abi:ne200100](__p, &v40);
  v26 = 0;
  v27 = v5 - 2;
  v28 = 3;
  do
  {
    v40 = -(*(__p[0] + v26) - v28 * (*(__p[0] + v26 + 1) / a2));
    std::vector<double>::push_back[abi:ne200100](__p, &v40);
    ++v26;
    v28 += 2;
  }

  while (v27 != v26);
  v29 = __p[0];
  if (v23 != v24)
  {
    v37 = v23;
    v38 = a3;
    v30 = 0;
    do
    {
      v31 = -*v29;
      v32 = v30;
      v33 = v30 >> 4;
      if (((v30 >> 4) + 1) >> 60)
      {
        v38[1] = v30;
        v38[2] = 0;
        *v38 = 0;
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      if (v30 >> 4 != -1)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::complex<double>>>((v30 >> 4) + 1);
      }

      v34 = 16 * v33;
      *v34 = *v23;
      *(v34 + 8) = v31;
      v30 = 16 * v33 + 16;
      memcpy(0, 0, v32);
      ++v23;
      ++v29;
    }

    while (v23 != v24);
    v23 = v37;
    v38[1] = v30;
    v38[2] = 0;
    *v38 = 0;
    v29 = __p[0];
  }

  if (v29)
  {
    __p[1] = v29;
    operator delete(v29);
  }

  if (v23)
  {
    operator delete(v23);
  }
}

void sub_23A44138C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    *(v15 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::complex<double>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Phase::sGetStdStringFromNsString(Phase *this@<X0>, _BYTE *a2@<X8>)
{
  v7 = this;
  v4 = [(Phase *)v7 UTF8String];
  v5 = [(Phase *)v7 lengthOfBytesUsingEncoding:4];
  v6 = v5;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v4, v5);
  }

  a2[v6] = 0;
}

void Phase::MdlMeshAsset::~MdlMeshAsset(Phase::MdlMeshAsset *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {

    MEMORY[0x23EE864A0](v1, 0x80C40B8603338);
  }
}

void Phase::MdlMeshAsset::Initialize(Phase::MdlMeshAsset *this, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v24 = v4;

  if (!v24)
  {
    v22 = **Phase::Logger::GetInstance(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "MdlMeshAsset.mm";
      v27 = 1024;
      v28 = 161;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inMesh == nil is true]: Input pointer is not an MDLMesh instance!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Input pointer is not an MDLMesh instance!");
  }

  v5 = MEMORY[0x277CBEB18];
  v6 = [v24 submeshes];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  for (i = 0; ; ++i)
  {
    v9 = [v24 submeshes];
    v10 = [v9 count];

    if (i >= v10)
    {
      break;
    }

    v11 = [v24 submeshes];
    v12 = [v11 objectAtIndexedSubscript:i];

    v13 = [objc_alloc(MEMORY[0x277CD7B48]) initWithMDLSubmesh:v12 indexType:objc_msgSend(v12 geometryType:{"indexType"), objc_msgSend(v12, "geometryType")}];
    [v7 setObject:v13 atIndexedSubscript:i];
  }

  v14 = objc_alloc(MEMORY[0x277CD7B00]);
  v15 = [v24 vertexBuffers];
  v16 = [v24 vertexCount];
  v17 = [v24 vertexDescriptor];
  v18 = [v14 initWithVertexBuffers:v15 vertexCount:v16 descriptor:v17 submeshes:v7];
  v19 = *(this + 1);
  v20 = *v19;
  *v19 = v18;

  v21 = [v24 transform];
  [**(this + 1) setTransform:v21];
}

uint64_t Phase::MdlMeshAsset::GetName(id **this)
{
  v1 = [*this[1] name];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 UTF8String];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void Phase::MdlMeshAsset::SetVertexDescriptor(uint64_t a1, uint64_t *a2)
{
  v28 = objc_alloc_init(MEMORY[0x277CD7B90]);
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v4 = 0;
    v5 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v11 = 0;
      v12 = *(v3 + v4 + 24);
      if (v12 > 0x2E)
      {
        if (v12 == 47)
        {
          *&v13 = *(v3 + v4 + 56);
          v11 = 786435;
        }

        else
        {
          *&v13 = 0;
          if (v12 == 48)
          {
            v13 = *(v3 + v4 + 56);
            v11 = 786436;
          }
        }
      }

      else if (v12 == 45)
      {
        *&v13 = *(v3 + v4 + 56);
        v11 = 786433;
      }

      else
      {
        *&v13 = 0;
        if (v12 == 46)
        {
          *&v13 = *(v3 + v4 + 56);
          v11 = 786434;
        }
      }

      v27 = *&v13;
      v14 = objc_alloc(MEMORY[0x277CD7B80]);
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = *(v3 + v4 + 23);
      if (v16 >= 0)
      {
        v17 = v3 + v4;
      }

      else
      {
        v17 = *(v3 + v4);
      }

      if (v16 >= 0)
      {
        v18 = *(v3 + v4 + 23);
      }

      else
      {
        v18 = *(v3 + v4 + 8);
      }

      v19 = [v15 initWithBytes:v17 length:v18 encoding:1];
      v20 = [v14 initWithName:v19 format:v11 offset:*(v3 + v4 + 32) bufferIndex:*(v3 + v4 + 40)];

      [v20 setTime:*(v3 + v4 + 48)];
      [v20 setInitializationValue:v27];
      [v28 addOrReplaceAttribute:v20];

      ++v5;
      v3 = *a2;
      v4 += 72;
    }

    while (0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3) > v5);
  }

  v21 = a2[3];
  if (a2[4] != v21)
  {
    v22 = 0;
    do
    {
      v23 = *(v21 + 8 * v22);
      v24 = [v28 layouts];
      v25 = [v24 objectAtIndexedSubscript:v22];
      [v25 setStride:v23];

      ++v22;
      v21 = a2[3];
    }

    while (v22 < (a2[4] - v21) >> 3);
  }

  [**(a1 + 8) setVertexDescriptor:v28];
}

uint64_t Phase::MdlMeshAsset::GetVertexBuffer(id **this, uint64_t a2)
{
  v3 = [*this[1] vertexBuffers];
  v4 = [v3 objectAtIndexedSubscript:a2];
  v5 = [v4 map];
  v6 = [v5 bytes];

  return v6;
}

void sub_23A441EF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t Phase::MdlMeshAsset::GetSubmeshCount(id **this)
{
  v1 = [*this[1] submeshes];
  v2 = [v1 count];

  return v2;
}

void *Phase::MdlMeshAsset::GetSubmesh(id **this, uint64_t a2)
{
  v3 = [*this[1] submeshes];
  v4 = [v3 objectAtIndexedSubscript:a2];

  return v4;
}

void Phase::MdlMeshAsset::SetTopology(uint64_t a1, int a2)
{
  v3 = 0;
  if ((a2 - 1) < 5)
  {
    v4 = (a2 - 1) + 1;
  }

  else
  {
    v4 = 0;
  }

  while (1)
  {
    v5 = [**(a1 + 8) submeshes];
    v6 = [v5 count];

    if (v3 >= v6)
    {
      break;
    }

    v7 = [**(a1 + 8) submeshes];
    v8 = [v7 objectAtIndexedSubscript:v3];

    if ([v8 geometryType] != v4)
    {
      v9 = [v8 indexType];
      v10 = [objc_alloc(MEMORY[0x277CD7B48]) initWithMDLSubmesh:v8 indexType:v9 geometryType:v4];
      v11 = [**(a1 + 8) submeshes];
      [v11 setObject:v10 atIndexedSubscript:v3];
    }

    ++v3;
  }
}

uint64_t Phase::MdlMeshAsset::Submesh::GetIndexBuffer(id *this)
{
  v1 = [*this indexBuffer];
  v2 = [v1 map];
  v3 = [v2 bytes];

  return v3;
}

uint64_t Phase::MdlMeshAsset::Submesh::GetIndexBufferFormat(id *this)
{
  v1 = __ROR8__([*this indexType], 3);
  if (v1 >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x300020100uLL >> (8 * v1);
  }

  return v2 & 3;
}

void Phase::Memset8(Phase *this, void *a2, size_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  __pattern8 = a2;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 192);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "Memory.cpp";
      v8 = 1024;
      v9 = 48;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inSizeInBytes >= 0 is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: inSizeInBytes >= 0 is false.");
  }

  memset_pattern8(this, &__pattern8, a3);
}

BOOL Phase::MemCompare8(Phase *this, const void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3 < 0)
  {
    v22 = **(Phase::Logger::GetInstance(this) + 192);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "Memory.cpp";
      v26 = 1024;
      v27 = 55;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inSizeInBytes >= 0 is false.", &v24, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: inSizeInBytes >= 0 is false.");
  }

  v3 = a3 + 7;
  v4 = (a3 + 7) >> 3;
  v5 = (a3 + 7) & 0x7FFFFFFFFFFFFFC0;
  v6 = (this + v5);
  while (v5)
  {
    v7 = *this;
    v8 = *(this + 1);
    v9 = *(this + 2);
    v10 = *(this + 3);
    v11 = *(this + 4);
    v12 = *(this + 5);
    v13 = *(this + 6);
    v14 = *(this + 7);
    this = (this + 64);
    v5 -= 64;
    if (v7 != a2 || v9 != v10 || v7 != v8 || v11 != v12 || v13 != v14)
    {
      return 0;
    }
  }

  v20 = 8 * v4 - (v3 & 0x7FFFFFFFFFFFFFC0);
  do
  {
    result = v20 == 0;
    if (!v20)
    {
      break;
    }

    v21 = *v6++;
    v20 -= 8;
  }

  while (v21 == a2);
  return result;
}

uint64_t Phase::SetMetaParameterValue(void *a1, int a2, uint64_t a3, double a4)
{
  v8[4] = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    a1[7] = a3;
    return 1;
  }

  if (a2 == 1)
  {
    v6 = fmin(fmax(*&a3, *(*a1 + 32)), *(*a1 + 40));
    v8[0] = &unk_284D2F458;
    v8[1] = Phase::CurveFunction::Linear<double>;
    v8[3] = v8;
    Phase::Fader<double>::SetInternal((a1 + 1), v8, v6, a4);
    std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v8);
    a1[7] = a1[6];
    return 1;
  }

  return 0;
}

void sub_23A442550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::GlobalMetaParameterManager::SetGlobalMetaParameter(int8x8_t *a1, unint64_t a2, int a3, uint64_t a4, double a5)
{
  v28 = a2;
  v9 = a1 + 6;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(&a1[6], &v28);
  if (v10)
  {
    v11 = v10;
    WeakRetained = objc_loadWeakRetained(v10 + 3);
    if (WeakRetained)
    {
      v13 = WeakRetained;
      v14 = objc_loadWeakRetained(v11 + 3);
      if ([v14 getMetaParameter])
      {
        v15 = objc_loadWeakRetained(v11 + 3);
        v16 = *([v15 getMetaParameter] + 12);

        if (v16 == a3)
        {
LABEL_31:
          v26 = objc_loadWeakRetained(v11 + 3);
          v27 = [v26 getMetaParamState];

          return Phase::SetMetaParameterValue(v27, a3, a4, a5);
        }
      }

      else
      {
      }
    }
  }

  v17 = [*&a1[5] getGlobalMetaParameter:v28];
  if (v17)
  {
    v18 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v9, &v28);
    if (v18)
    {
      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(v9, v18, &v29);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>>>>::~unique_ptr[abi:ne200100](&v29);
    }

    if (Phase::GlobalMetaParameterManager::RegisterGlobalMetaParam(a1, v17))
    {
      v11 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v9, &v28);
      if (v11)
      {
        v19 = a1[7];
        if (!*&v19)
        {
          goto LABEL_30;
        }

        v20 = vcnt_s8(v19);
        v20.i16[0] = vaddlv_u8(v20);
        if (v20.u32[0] > 1uLL)
        {
          v21 = v28;
          if (*&v19 <= v28)
          {
            v21 = v28 % *&v19;
          }
        }

        else
        {
          v21 = (*&v19 - 1) & v28;
        }

        v23 = *(*v9 + 8 * v21);
        if (!v23 || (v24 = *v23) == 0)
        {
LABEL_30:
          operator new();
        }

        while (1)
        {
          v25 = v24[1];
          if (v25 == v28)
          {
            if (v24[2] == v28)
            {
              objc_storeWeak(v24 + 3, v17);

              goto LABEL_31;
            }
          }

          else
          {
            if (v20.u32[0] > 1uLL)
            {
              if (v25 >= *&v19)
              {
                v25 %= *&v19;
              }
            }

            else
            {
              v25 &= *&v19 - 1;
            }

            if (v25 != v21)
            {
              goto LABEL_30;
            }
          }

          v24 = *v24;
          if (!v24)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

  return 0;
}

void sub_23A4428D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

BOOL Phase::GlobalMetaParameterManager::RegisterGlobalMetaParam(Phase::GlobalMetaParameterManager *this, PHASEGlobalMetaParameterAsset *a2)
{
  v3 = a2;
  v4 = v3;
  v10 = 0;
  if (v3)
  {
    v5 = [(PHASEGlobalMetaParameterAsset *)v3 getMetaParamState];
    v6 = [(PHASEGlobalMetaParameterAsset *)v4 getMetaParameter];
    *v5 = v6;
    v7 = *(v6 + 6);
    *(v5 + 7) = v7;
    Phase::Fader<double>::SetDefaultValue((v5 + 1), v7);
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 6, v6))
    {
      objc_initWeak(&location, v4);
      v13 = *v6;
      objc_copyWeak(&v14, &location);
      std::__hash_table<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>>(this + 6, &v13);
      v9 = v8;
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      if (v9)
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

void sub_23A4429F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v11 + 8));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t Phase::GlobalMetaParameterManager::GetGlobalMetaParameterState(Phase::GlobalMetaParameterManager *this, unint64_t a2, MetaParamState *a3)
{
  v13 = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 6, &v13);
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = [*(this + 5) getGlobalMetaParameter:v13];
  if (!v7 || !Phase::GlobalMetaParameterManager::RegisterGlobalMetaParam(this, v7))
  {
    goto LABEL_10;
  }

  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 6, &v13);

  if (v5)
  {
LABEL_2:
    WeakRetained = objc_loadWeakRetained(v5 + 3);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [(PHASEGlobalMetaParameterAsset *)WeakRetained getMetaParamState];
      v9 = v8;
      a3->param = *v8;
      if (v8 != a3)
      {
        std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__assign_with_size[abi:ne200100]<Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(&a3->mFader, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 6);
      }

      v10 = *(v9 + 32);
      a3->mFader.mValue = *(v9 + 48);
      *&a3->mFader.mOffset = v10;
      a3->currentInputValue.stringVal = *(v9 + 56);
      v11 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v11 = 0;
LABEL_11:

    return v11;
  }

  return 0;
}

void Phase::GlobalMetaParameterManager::Update(uint64_t a1, double *a2)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(a1);
  if (*a2 > 0.0)
  {
    v4 = *(a1 + 64);
    while (v4)
    {
      WeakRetained = objc_loadWeakRetained(v4 + 3);
      v6 = WeakRetained;
      if (WeakRetained)
      {
        v7 = [WeakRetained getMetaParamState];
        v8 = v7;
        if (*(*v7 + 12) == 1)
        {
          Phase::Fader<double>::Update(v7 + 8, *a2);
          *(v8 + 56) = *(v8 + 48);
        }

        v4 = *v4;
      }

      else
      {
        v9 = *v4;
        std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove((a1 + 48), v4, v10);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>>>>::~unique_ptr[abi:ne200100](v10);
        v4 = v9;
      }
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_23A442EAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::MorphDirectionalMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  *a3 = 3;
  *(a3 + 4) = 1;
  *(a3 + 8) = 0;
  *(a3 + 204) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 176) = 0;
  *(a3 + 200) = 0;
  if (*(a1 + 104))
  {
    if ((*(a1 + 201) & 1) == 0)
    {
      Phase::SpatialModeler::SortMetadataByDelay<float>(a1);
    }

    if ((*(a2 + 201) & 1) == 0)
    {
      Phase::SpatialModeler::SortMetadataByDelay<float>(a2);
    }

    v10 = *(*(a1 + 104) + 8);
    switch(v10)
    {
      case 31:
        v53 = 0uLL;
        v54 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(a1, &v53);
        Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(a2, &v50);
        v39 = 0;
        v38 = 0uLL;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave*>(&v38, v53, *(&v53 + 1), 0x8E38E38E38E38E39 * ((*(&v53 + 1) - v53) >> 4));
        v36 = 0uLL;
        v37 = 0;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave*>(&v36, v50, v51, 0x8E38E38E38E38E39 * ((v51 - v50) >> 4));
        if (a4 == 0.0 && a5 == 1.0)
        {
          v48 = v36;
          v49 = v37;
          v37 = 0;
          v36 = 0uLL;
        }

        else if (a4 == 1.0 && a5 == 0.0)
        {
          v48 = v38;
          v49 = v39;
          v39 = 0;
          v38 = 0uLL;
        }

        else
        {
          v48 = 0uLL;
          v49 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(v38, *(&v38 + 1), &v58);
          Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(v36, *(&v36 + 1), &v55);
          if (*(&v38 + 1) == v38 || *(&v36 + 1) == v36)
          {
            Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(v38, *(&v38 + 1), v36, *(&v36 + 1), &v48, a4, a5);
          }

          else
          {
            do
            {
              if (*(&v36 + 1) == v36)
              {
                break;
              }

              Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(&v38, &v58, &v36, &v55, &v48, a4, a5);
              Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(v38, *(&v38 + 1), v36, *(&v36 + 1), &v48, a4, a5);
              v13 = *(&v38 + 1);
              v14 = v38;
              if (*(&v38 + 1) == v38)
              {
                break;
              }

              if (*(&v36 + 1) != v36)
              {
                Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(&v36, &v55, &v38, &v58, &v48, a5, a4);
                Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(v38, *(&v38 + 1), v36, *(&v36 + 1), &v48, a4, a5);
                v13 = *(&v38 + 1);
                v14 = v38;
              }
            }

            while (v13 != v14);
          }

          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          if (v58)
          {
            v59 = v58;
            operator delete(v58);
          }
        }

        v24 = v53;
        if (v53)
        {
          v25 = v53;
          if (*(&v53 + 1) != v53)
          {
            v26 = *(&v53 + 1) - 144;
            v27 = *(&v53 + 1) - 144;
            v28 = (*(&v53 + 1) - 144);
            do
            {
              v29 = *v28;
              v28 -= 18;
              (*(v29 + 16))(v27);
              v26 -= 144;
              v23 = v27 == v24;
              v27 = v28;
            }

            while (!v23);
            v25 = v53;
          }

          *(&v53 + 1) = v24;
          operator delete(v25);
        }

        v53 = v48;
        v54 = v49;
        v49 = 0;
        v48 = 0uLL;
        v58 = &v48;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v36;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v38;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__destroy_vector::operator()[abi:ne200100](&v58);
        Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(&v53, a3, 0);
        Phase::SpatialModeler::SortMetadataByDelay<float>(a3);
        v58 = &v50;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v53;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__destroy_vector::operator()[abi:ne200100](&v58);
        break;
      case 10:
        v53 = 0uLL;
        v54 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(a1, &v53);
        Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(a2, &v50);
        v43 = 0;
        v42 = 0uLL;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave*>(&v42, v53, *(&v53 + 1), (*(&v53 + 1) - v53) >> 6);
        v40 = 0uLL;
        v41 = 0;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave*>(&v40, v50, v51, (v51 - v50) >> 6);
        if (a4 == 0.0 && a5 == 1.0)
        {
          v48 = v40;
          v49 = v41;
          v41 = 0;
          v40 = 0uLL;
        }

        else if (a4 == 1.0 && a5 == 0.0)
        {
          v48 = v42;
          v49 = v43;
          v43 = 0;
          v42 = 0uLL;
        }

        else
        {
          v48 = 0uLL;
          v49 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(v42, *(&v42 + 1), &v58);
          Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(v40, *(&v40 + 1), &v55);
          if (*(&v42 + 1) == v42 || *(&v40 + 1) == v40)
          {
            Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(v42, *(&v42 + 1), v40, *(&v40 + 1), &v48, a4, a5);
          }

          else
          {
            do
            {
              if (*(&v40 + 1) == v40)
              {
                break;
              }

              Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(&v42, &v58, &v40, &v55, &v48, a4, a5);
              Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(v42, *(&v42 + 1), v40, *(&v40 + 1), &v48, a4, a5);
              v11 = *(&v42 + 1);
              v12 = v42;
              if (*(&v42 + 1) == v42)
              {
                break;
              }

              if (*(&v40 + 1) != v40)
              {
                Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(&v40, &v55, &v42, &v58, &v48, a5, a4);
                Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(v42, *(&v42 + 1), v40, *(&v40 + 1), &v48, a4, a5);
                v11 = *(&v42 + 1);
                v12 = v42;
              }
            }

            while (v11 != v12);
          }

          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          if (v58)
          {
            v59 = v58;
            operator delete(v58);
          }
        }

        v17 = v53;
        if (v53)
        {
          v18 = v53;
          if (*(&v53 + 1) != v53)
          {
            v19 = *(&v53 + 1) - 64;
            v20 = *(&v53 + 1) - 64;
            v21 = (*(&v53 + 1) - 64);
            do
            {
              v22 = *v21;
              v21 -= 8;
              (*(v22 + 16))(v20);
              v19 -= 64;
              v23 = v20 == v17;
              v20 = v21;
            }

            while (!v23);
            v18 = v53;
          }

          *(&v53 + 1) = v17;
          operator delete(v18);
        }

        v53 = v48;
        v54 = v49;
        v49 = 0;
        v48 = 0uLL;
        v58 = &v48;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v40;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v42;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__destroy_vector::operator()[abi:ne200100](&v58);
        Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(&v53, a3, 0);
        Phase::SpatialModeler::SortMetadataByDelay<float>(a3);
        v58 = &v50;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v53;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__destroy_vector::operator()[abi:ne200100](&v58);
        break;
      case 3:
        v53 = 0uLL;
        v54 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(a1, &v53);
        Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(a2, &v50);
        v47 = 0;
        v46 = 0uLL;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band*>(&v46, v53, *(&v53 + 1), (*(&v53 + 1) - v53) >> 5);
        v44 = 0uLL;
        v45 = 0;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band*>(&v44, v50, v51, (v51 - v50) >> 5);
        if (a4 == 0.0 && a5 == 1.0)
        {
          v48 = v44;
          v49 = v45;
          v45 = 0;
          v44 = 0uLL;
        }

        else if (a4 == 1.0 && a5 == 0.0)
        {
          v48 = v46;
          v49 = v47;
          v47 = 0;
          v46 = 0uLL;
        }

        else
        {
          v48 = 0uLL;
          v49 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v46, *(&v46 + 1), &v58);
          Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v44, *(&v44 + 1), &v55);
          if (*(&v46 + 1) == v46 || *(&v44 + 1) == v44)
          {
            Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v46, *(&v46 + 1), v44, *(&v44 + 1), &v48, a4, a5);
          }

          else
          {
            do
            {
              if (*(&v44 + 1) == v44)
              {
                break;
              }

              Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(&v46, &v58, &v44, &v55, &v48, a4, a5);
              Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v46, *(&v46 + 1), v44, *(&v44 + 1), &v48, a4, a5);
              v15 = *(&v46 + 1);
              v16 = v46;
              if (*(&v46 + 1) == v46)
              {
                break;
              }

              if (*(&v44 + 1) != v44)
              {
                Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(&v44, &v55, &v46, &v58, &v48, a5, a4);
                Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v46, *(&v46 + 1), v44, *(&v44 + 1), &v48, a4, a5);
                v15 = *(&v46 + 1);
                v16 = v46;
              }
            }

            while (v15 != v16);
          }

          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          if (v58)
          {
            v59 = v58;
            operator delete(v58);
          }
        }

        v30 = v53;
        if (v53)
        {
          v31 = v53;
          if (*(&v53 + 1) != v53)
          {
            v32 = *(&v53 + 1) - 32;
            v33 = *(&v53 + 1) - 32;
            v34 = (*(&v53 + 1) - 32);
            do
            {
              v35 = *v34;
              v34 -= 4;
              (*(v35 + 16))(v33);
              v32 -= 32;
              v23 = v33 == v30;
              v33 = v34;
            }

            while (!v23);
            v31 = v53;
          }

          *(&v53 + 1) = v30;
          operator delete(v31);
        }

        v53 = v48;
        v54 = v49;
        v49 = 0;
        v48 = 0uLL;
        v58 = &v48;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v44;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v46;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](&v58);
        Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(&v53, a3, 0);
        Phase::SpatialModeler::SortMetadataByDelay<float>(a3);
        v58 = &v50;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](&v58);
        v58 = &v53;
        std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](&v58);
        break;
    }
  }
}

void sub_23A4437FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v36 = *(v34 - 112);
  if (v36)
  {
    *(v34 - 104) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 88);
  if (v37)
  {
    *(v34 - 80) = v37;
    operator delete(v37);
  }

  *(v34 - 88) = &a33;
  std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100]((v34 - 88));
  *(v34 - 88) = &a25;
  std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100]((v34 - 88));
  *(v34 - 88) = &a29;
  std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100]((v34 - 88));
  *(v34 - 88) = v34 - 168;
  std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100]((v34 - 88));
  *(v34 - 88) = v34 - 144;
  std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100]((v34 - 88));
  Phase::SpatialModeler::DirectionalMetadataOutput<float>::~DirectionalMetadataOutput(v33);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(uint64_t a1, void *a2)
{
  if (*(a1 + 204))
  {
    std::terminate();
  }

  v4 = *(a1 + 104);
  if (!v4 || ((v5 = *v4, v6 = v4[1], *v4) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v9 = *a2;
    v8 = a2[1];
    if (v8 != *a2)
    {
      v10 = v8 - 32;
      v11 = (v8 - 32);
      v12 = (v8 - 32);
      do
      {
        v13 = *v12;
        v12 -= 4;
        (*(v13 + 16))(v11);
        v10 -= 32;
        v7 = v11 == v9;
        v11 = v12;
      }

      while (!v7);
    }

    a2[1] = v9;
  }

  else
  {
    v15 = *a2;
    v14 = a2[1];
    v16 = (v14 - *a2) >> 5;
    v49 = v5;
    if (v5 <= v16)
    {
      if (v5 < v16)
      {
        v22 = v6;
        v23 = &v15[4 * v5];
        if (v14 != v23)
        {
          v24 = v14 - 4;
          v25 = v24;
          v26 = v24;
          do
          {
            v27 = *v26;
            v26 -= 4;
            (*(v27 + 16))(v25);
            v24 -= 4;
            v7 = v25 == v23;
            v25 = v26;
          }

          while (!v7);
        }

        a2[1] = v23;
        v5 = v49;
        v6 = v22;
      }
    }

    else
    {
      v17 = v5 - v16;
      v18 = a2[2];
      if (v17 > (v18 - v14) >> 5)
      {
        if (!(v5 >> 59))
        {
          v19 = v18 - v15;
          v20 = v19 >> 4;
          if (v19 >> 4 <= v5)
          {
            v20 = v5;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFE0)
          {
            v21 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>>(a2, v21);
        }

        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v28 = &v14[4 * v17];
      v29 = a2[1];
      do
      {
        *v29 = &unk_284D33CC8;
        v29[1] = 0;
        v29[2] = 0;
        v29[3] = 0;
        v29 += 4;
        v14 += 4;
      }

      while (v29 != v28);
      a2[1] = v28;
    }

    v30 = 0;
    v31 = *(a1 + 8);
    v32 = *a2;
    v33 = *(a1 + 56);
    v34 = *(a1 + 104);
    v35 = (v34 + 16);
    v36 = v32 + 5;
    v37 = 4 * *(v34 + 8);
    v38 = *(a1 + 144);
    do
    {
      v39 = v31 + 12 * v30;
      v40 = &v32[4 * v30];
      v40[2] = 90.0 - *(v39 + 4);
      v41 = (180.0 - *(v39 + 8)) - (floorf((180.0 - *(v39 + 8)) / 360.0) * 360.0);
      if (v41 >= 360.0)
      {
        v43 = v6;
        v42 = nextafterf(360.0, 0.0);
        v6 = v43;
        v5 = v49;
      }

      else
      {
        v42 = v41 + 0.0;
      }

      v40[3] = v42;
      v40[4] = *(v33 + 4 * v30);
      v44 = (1 - 2 * *(v38 + v30));
      v45 = v35;
      v46 = v36;
      v47 = v6;
      do
      {
        v48 = *v45++;
        *v46++ = v48 * v44;
        --v47;
      }

      while (v47);
      ++v30;
      v36 += 8;
      v35 = (v35 + v37);
    }

    while (v30 != v5);
  }
}

void sub_23A443D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(uint64_t a1, void *a2)
{
  if (*(a1 + 204))
  {
    std::terminate();
  }

  v4 = *(a1 + 104);
  if (!v4 || ((v5 = *v4, v6 = v4[1], *v4) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v9 = *a2;
    v8 = a2[1];
    if (v8 != *a2)
    {
      v10 = v8 - 64;
      v11 = (v8 - 64);
      v12 = (v8 - 64);
      do
      {
        v13 = *v12;
        v12 -= 8;
        (*(v13 + 16))(v11);
        v10 -= 64;
        v7 = v11 == v9;
        v11 = v12;
      }

      while (!v7);
    }

    a2[1] = v9;
  }

  else
  {
    v15 = *a2;
    v14 = a2[1];
    v16 = (v14 - *a2) >> 6;
    v49 = v5;
    if (v5 <= v16)
    {
      if (v5 < v16)
      {
        v22 = v6;
        v23 = &v15[8 * v5];
        if (v14 != v23)
        {
          v24 = v14 - 8;
          v25 = v24;
          v26 = v24;
          do
          {
            v27 = *v26;
            v26 -= 8;
            (*(v27 + 16))(v25);
            v24 -= 8;
            v7 = v25 == v23;
            v25 = v26;
          }

          while (!v7);
        }

        a2[1] = v23;
        v5 = v49;
        v6 = v22;
      }
    }

    else
    {
      v17 = v5 - v16;
      v18 = a2[2];
      if (v17 > (v18 - v14) >> 6)
      {
        if (!(v5 >> 58))
        {
          v19 = v18 - v15;
          v20 = v19 >> 5;
          if (v19 >> 5 <= v5)
          {
            v20 = v5;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFC0)
          {
            v21 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>>(a2, v21);
        }

        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v28 = &v14[8 * v17];
      v29 = a2[1];
      do
      {
        *v29 = &unk_284D33CF8;
        *(v29 + 8) = 0uLL;
        *(v29 + 24) = 0uLL;
        *(v29 + 40) = 0uLL;
        *(v29 + 56) = 0;
        v29 += 64;
        v14 += 8;
      }

      while (v29 != v28);
      a2[1] = v28;
    }

    v30 = 0;
    v31 = *(a1 + 8);
    v32 = *a2;
    v33 = *(a1 + 56);
    v34 = *(a1 + 104);
    v35 = (v34 + 16);
    v36 = v32 + 5;
    v37 = 4 * *(v34 + 8);
    v38 = *(a1 + 144);
    do
    {
      v39 = v31 + 12 * v30;
      v40 = &v32[8 * v30];
      v40[2] = 90.0 - *(v39 + 4);
      v41 = (180.0 - *(v39 + 8)) - (floorf((180.0 - *(v39 + 8)) / 360.0) * 360.0);
      if (v41 >= 360.0)
      {
        v43 = v6;
        v42 = nextafterf(360.0, 0.0);
        v6 = v43;
        v5 = v49;
      }

      else
      {
        v42 = v41 + 0.0;
      }

      v40[3] = v42;
      v40[4] = *(v33 + 4 * v30);
      v44 = (1 - 2 * *(v38 + v30));
      v45 = v35;
      v46 = v36;
      v47 = v6;
      do
      {
        v48 = *v45++;
        *v46++ = v48 * v44;
        --v47;
      }

      while (v47);
      ++v30;
      v36 += 16;
      v35 = (v35 + v37);
    }

    while (v30 != v5);
  }
}

void sub_23A444074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::convertDirectionalMetadataToRayTracingPlaneWaveList<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(uint64_t a1, void *a2)
{
  if (*(a1 + 204))
  {
    std::terminate();
  }

  v3 = *(a1 + 104);
  if (!v3 || ((v4 = *v3, v5 = v3[1], *v3) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v8 = *a2;
    v7 = a2[1];
    if (v7 != *a2)
    {
      v9 = v7 - 144;
      v10 = (v7 - 144);
      v11 = (v7 - 144);
      do
      {
        v12 = *v11;
        v11 -= 18;
        (*(v12 + 16))(v10);
        v9 -= 144;
        v6 = v10 == v8;
        v10 = v11;
      }

      while (!v6);
    }

    a2[1] = v8;
  }

  else
  {
    v13 = *a2;
    v14 = a2[1];
    v15 = 0x8E38E38E38E38E39 * ((v14 - *a2) >> 4);
    v16 = v4 - v15;
    v49 = *v3;
    if (v4 <= v15)
    {
      if (v4 < v15)
      {
        v21 = a1;
        v22 = v3[1];
        v23 = &v13[18 * v4];
        if (v14 != v23)
        {
          v24 = v14 - 18;
          v25 = v24;
          v26 = v24;
          do
          {
            v27 = *v26;
            v26 -= 18;
            (*(v27 + 16))(v25);
            v24 -= 18;
            v6 = v25 == v23;
            v25 = v26;
          }

          while (!v6);
        }

        a2[1] = v23;
        v4 = v49;
        v5 = v22;
        a1 = v21;
      }
    }

    else
    {
      v17 = a2[2];
      if (0x8E38E38E38E38E39 * ((v17 - v14) >> 4) < v16)
      {
        if (v4 <= 0x1C71C71C71C71C7)
        {
          v18 = 0x8E38E38E38E38E39 * ((v17 - v13) >> 4);
          v19 = 2 * v18;
          if (2 * v18 <= v4)
          {
            v19 = v4;
          }

          if (v18 >= 0xE38E38E38E38E3)
          {
            v20 = 0x1C71C71C71C71C7;
          }

          else
          {
            v20 = v19;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>>(a2, v20);
        }

        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v28 = &v14[18 * v16];
      v29 = a2[1];
      do
      {
        *v29 = &unk_284D33D28;
        *(v29 + 8) = 0uLL;
        *(v29 + 24) = 0uLL;
        *(v29 + 40) = 0uLL;
        *(v29 + 56) = 0uLL;
        *(v29 + 72) = 0uLL;
        *(v29 + 88) = 0uLL;
        *(v29 + 104) = 0uLL;
        *(v29 + 120) = 0uLL;
        *(v29 + 136) = 0;
        v29 += 144;
        v14 += 18;
      }

      while (v29 != v28);
      a2[1] = v28;
    }

    v30 = 0;
    v31 = *(a1 + 8);
    v32 = *a2;
    v33 = *(a1 + 56);
    v34 = *(a1 + 104);
    v35 = (v34 + 16);
    v36 = v32 + 5;
    v37 = 4 * *(v34 + 8);
    v38 = *(a1 + 144);
    do
    {
      v39 = v31 + 12 * v30;
      v40 = &v32[18 * v30];
      v40[2] = 90.0 - *(v39 + 4);
      v41 = (180.0 - *(v39 + 8)) - (floorf((180.0 - *(v39 + 8)) / 360.0) * 360.0);
      if (v41 >= 360.0)
      {
        v43 = v5;
        v42 = nextafterf(360.0, 0.0);
        v5 = v43;
        v4 = v49;
      }

      else
      {
        v42 = v41 + 0.0;
      }

      v40[3] = v42;
      v40[4] = *(v33 + 4 * v30);
      v44 = (1 - 2 * *(v38 + v30));
      v45 = v35;
      v46 = v36;
      v47 = v5;
      do
      {
        v48 = *v45++;
        *v46++ = v48 * v44;
        --v47;
      }

      while (v47);
      ++v30;
      v36 += 36;
      v35 = (v35 + v37);
    }

    while (v30 != v4);
  }
}

void sub_23A444460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>>(result, a4);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>>(result, a4);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave*,Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1C71C71C71C71C8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>>(result, a4);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(const float *a1, const float *a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (a1 != a2)
  {
    v16 = v6;
    v17 = v5;
    v18 = v3;
    v19 = v4;
    v9 = a1;
    v10 = a1;
    v11 = a1;
    do
    {
      __C = 0.0;
      v12 = *v11;
      v11 += 8;
      v13 = (*v12)(v9);
      vDSP_measqv(v9 + 5, 1, &__C, v13);
      v14 = log10f(__C + 1.1755e-38) * 10.0;
      std::vector<float>::push_back[abi:ne200100](a3, &v14);
      v10 += 8;
      v9 = v11;
    }

    while (v11 != a2);
  }
}

uint64_t Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(uint64_t result, float *a2, float *a3, float *a4, uint64_t a5, float a6, float a7)
{
  v9 = a3;
  if (a2 == result)
  {
    if (a3 != a4)
    {
      do
      {
        Phase::SpatialModeler::WeightSingleReflection_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v9, a7);
        result = std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::push_back[abi:ne200100](a5, v9);
        v9 += 8;
      }

      while (v9 != a4);
    }
  }

  else if (a4 == a3)
  {
    v12 = result;
    do
    {
      Phase::SpatialModeler::WeightSingleReflection_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v12, a6);
      result = std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::push_back[abi:ne200100](a5, v12);
      v12 += 8;
    }

    while (v12 != a2);
  }

  return result;
}

uint64_t Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, float a6, float a7)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = 0;
  v15 = v13 - *a2;
  if (v13 != *a2)
  {
    v16 = 0;
    v17 = v15 >> 2;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = -3.4028e38;
    do
    {
      if (*(v12 + 4 * v16) > v18)
      {
        v18 = *(v12 + 4 * v16);
        v14 = v16;
      }

      ++v16;
    }

    while (v17 != v16);
  }

  v19 = *a1 + 32 * v14;
  v20 = *(v12 + 4 * v14);
  v21 = *(v19 + 16);
  v22 = *a3;
  v23 = a3[1];
  v24 = *a4;
  v25 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(*a3, v23, v21);
  v26 = *(v22 + 32 * v25 + 16);
  v27 = v26 + 0.1;
  v28 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v22, v23, v26 + -0.1);
  v29 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v22, v23, v27);
  if (v28 <= v29)
  {
    v30 = (v22 + 32 * v28 + 16);
    v31 = 3.4028e38;
    do
    {
      v32 = *v30;
      v30 += 8;
      v33 = ((*(v24 + 4 * v28) - v20) * (*(v24 + 4 * v28) - v20)) + (((v32 - v21) / 0.01) * ((v32 - v21) / 0.01));
      if (v33 < v31)
      {
        v31 = v33;
        v25 = v28;
      }

      ++v28;
    }

    while (v28 <= v29);
  }

  v34 = (v22 + 32 * v25);
  HIDWORD(v92) = 0;
  v93 = 0;
  v35 = *(v19 + 12);
  v36 = v34[3];
  if (vabds_f32(v35, v36) <= 180.0)
  {
    v37 = a1;
  }

  else
  {
    v37 = a1;
    if (v35 >= v36)
    {
      v36 = v36 + 360.0;
    }

    else
    {
      v35 = v35 + 360.0;
    }
  }

  v38 = (v36 * a7) + (v35 * a6);
  if (v38 > 360.0)
  {
    v38 = v38 + -360.0;
  }

  *(&v92 + 1) = v38;
  *&v92 = (v34[2] * a7) + (*(v19 + 8) * a6);
  *(&v92 + 2) = (v34[4] * a7) + (*(v19 + 16) * a6);
  result = (**v19)(v19);
  if (result >= 1)
  {
    v40 = 0;
    v41 = v34 + 5;
    v91 = a6;
    v42 = 0.0;
    v43 = 1.0;
    do
    {
      v44 = *(v19 + 20 + 4 * v40);
      v45 = fabsf(v44);
      v46 = v41[v40];
      v47 = fabsf(v46);
      if (v46 == 0.0)
      {
        v48 = COERCE_FLOAT(1);
      }

      else
      {
        v48 = v47;
      }

      if (v46 < 0.0)
      {
        v49 = -1.0;
      }

      else
      {
        v49 = 1.0;
      }

      v50 = v44 < 0.0;
      if (v44 == 0.0)
      {
        v51 = COERCE_FLOAT(1);
      }

      else
      {
        v51 = v45;
      }

      if (v50)
      {
        v52 = -1.0;
      }

      else
      {
        v52 = 1.0;
      }

      v53 = (((logf(v51) * 8.6859) / 10.0) * 10.0) * v91;
      v54 = (((logf(v48) * 8.6859) / 10.0) * 10.0) * a7;
      *(&v92 + v40 + 3) = expf((((v53 + v54) * 10.0) / 10.0) * 0.11513);
      if (v53 <= v42)
      {
        v55.n128_f32[0] = v43;
      }

      else
      {
        v55.n128_f32[0] = v52;
      }

      if (v53 <= v42)
      {
        v56 = v42;
      }

      else
      {
        v56 = v53;
      }

      if (v54 <= v56)
      {
        v43 = v55.n128_f32[0];
      }

      else
      {
        v43 = v49;
      }

      if (v54 <= v56)
      {
        v42 = v56;
      }

      else
      {
        v42 = v54;
      }

      ++v40;
      result = (**v19)(v19, v55);
    }

    while (v40 < result);
    *v94 = v43;
    v37 = a1;
    if (v43 < 0.0)
    {
      v57 = (**v19)(v19);
      result = MEMORY[0x23EE87290](&v92 + 12, 1, v94, &v92 + 12, 1, v57);
    }
  }

  v58 = *(a5 + 8);
  v59 = *(a5 + 16);
  if (v58 >= v59)
  {
    v62 = (v58 - *a5) >> 5;
    v63 = v62 + 1;
    if ((v62 + 1) >> 59)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v64 = v59 - *a5;
    if (v64 >> 4 > v63)
    {
      v63 = v64 >> 4;
    }

    if (v64 >= 0x7FFFFFFFFFFFFFE0)
    {
      v65 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v65 = v63;
    }

    v94[4] = a5;
    if (v65)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>>(a5, v65);
    }

    v66 = 32 * v62;
    v94[0] = 0;
    v94[1] = v66;
    v94[3] = 0;
    *v66 = &unk_284D33CC8;
    v67 = v92;
    *(v66 + 24) = v93;
    *(v66 + 8) = v67;
    v94[2] = 32 * v62 + 32;
    std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__swap_out_circular_buffer(a5, v94);
    v61 = *(a5 + 8);
    result = std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::~__split_buffer(v94);
  }

  else
  {
    *v58 = &unk_284D33CC8;
    v60 = v92;
    *(v58 + 24) = v93;
    *(v58 + 8) = v60;
    v61 = v58 + 32;
  }

  *(a5 + 8) = v61;
  v68 = v37[1];
  v69 = *v37 + 32 * v14;
  v70 = v69 + 32;
  if (v69 + 32 != v68)
  {
    do
    {
      *(v70 - 24) = *(v70 + 8);
      *(v70 - 8) = *(v70 + 24);
      v70 += 32;
    }

    while (v70 != v68);
    v68 = v37[1];
    v69 = v70 - 32;
  }

  if (v68 != v69)
  {
    v71 = v68 - 32;
    v72 = (v68 - 32);
    v73 = (v68 - 32);
    do
    {
      v74 = *v73;
      v73 -= 4;
      result = (*(v74 + 16))(v72);
      v71 -= 32;
      v75 = v72 == v69;
      v72 = v73;
    }

    while (!v75);
  }

  v37[1] = v69;
  v76 = a2[1];
  v77 = *a2 + 4 * v14;
  v78 = v76 - (v77 + 4);
  if (v76 != v77 + 4)
  {
    result = memmove((*a2 + 4 * v14), (v77 + 4), v76 - (v77 + 4));
  }

  a2[1] = v77 + v78;
  v79 = a3[1];
  v80 = *a3 + 32 * v25;
  v81 = v80 + 32;
  if (v80 + 32 != v79)
  {
    do
    {
      *(v81 - 24) = *(v81 + 8);
      *(v81 - 8) = *(v81 + 24);
      v81 += 32;
    }

    while (v81 != v79);
    v79 = a3[1];
    v80 = v81 - 32;
  }

  if (v79 != v80)
  {
    v82 = v79 - 32;
    v83 = (v79 - 32);
    v84 = (v79 - 32);
    do
    {
      v85 = *v84;
      v84 -= 4;
      result = (*(v85 + 16))(v83);
      v82 -= 32;
      v75 = v83 == v80;
      v83 = v84;
    }

    while (!v75);
  }

  a3[1] = v80;
  v86 = a4[1];
  v87 = *a4 + 4 * v25;
  v88 = v86 - (v87 + 4);
  if (v86 != v87 + 4)
  {
    result = memmove(v87, (v87 + 4), v86 - (v87 + 4));
  }

  a4[1] = v87 + v88;
  return result;
}

void sub_23A444F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::WeightSingleReflection_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(float *a1, float a2)
{
  v3 = expf(((((a2 * 60.0) + -60.0) * 10.0) / 10.0) * 0.11513);
  result = (**a1)(a1);
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      a1[v5 + 5] = v3 * a1[v5 + 5];
      ++v5;
      result = (**a1)(a1);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>>(result, v11);
    }

    v12 = 32 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    *v12 = &unk_284D33CC8;
    v13 = *(a2 + 8);
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 8) = v13;
    v14[2] = 32 * v8 + 32;
    std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__swap_out_circular_buffer(result, v14);
    v7 = *(v3 + 8);
    result = std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::~__split_buffer(v14);
  }

  else
  {
    *v4 = &unk_284D33CC8;
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 8) = v6;
    v7 = v4 + 32;
  }

  *(v3 + 8) = v7;
  return result;
}

void sub_23A44512C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(uint64_t a1, uint64_t a2, float a3)
{
  v3 = (a2 - a1) >> 5;
  v4 = v3 - 1;
  if (v3 >= 3)
  {
    v5 = 0;
    v6 = v3 - 1;
    while (1)
    {
      v7 = *(a1 + 32 * v5 + 16);
      v8 = *(a1 + 32 * v6 + 16);
      v9 = v7 - v8;
      if ((v7 - v8) < 0.0)
      {
        v9 = -(v7 - v8);
      }

      v10 = fminf(fmaxf((a3 - v7) / (v8 - v7), 0.0), 1.0);
      v11 = v7 <= a3;
      if (v7 >= a3)
      {
        v12 = 0.5;
      }

      else
      {
        v12 = 1.0;
      }

      if (!v11)
      {
        v12 = 0.0;
      }

      if (v9 > 0.00000011921)
      {
        v12 = v10;
      }

      v13 = llroundf((v12 * v6) + ((1.0 - v12) * v5));
      v14 = *(a1 + 32 * v13 + 16);
      if (v14 == a3)
      {
        LODWORD(v16) = v13;
        goto LABEL_23;
      }

      if (v14 >= a3)
      {
        v16 = (v13 - 1);
        if (v13 < 1)
        {
          LODWORD(v16) = 0;
          v13 = 0;
          goto LABEL_23;
        }

        v6 = v13 - 1;
        if (*(a1 + 32 * v16 + 16) < a3)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v4 <= v13)
        {
          LODWORD(v16) = v4;
          goto LABEL_22;
        }

        v5 = v13 + 1;
        v15 = *(a1 + 32 * (v13 + 1) + 16);
        LODWORD(v16) = v13++;
        if (v15 > a3)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v16) = v5;
      v13 = v6;
      if (v6 <= v5 + 1)
      {
        goto LABEL_23;
      }
    }
  }

  LODWORD(v16) = 0;
LABEL_22:
  v13 = v4;
LABEL_23:
  v17 = *(a1 + 32 * v16 + 16);
  v18 = *(a1 + 32 * v13 + 16);
  v19 = v17 - v18;
  if ((v17 - v18) < 0.0)
  {
    v19 = -(v17 - v18);
  }

  v20 = fminf(fmaxf((a3 - v17) / (v18 - v17), 0.0), 1.0);
  v21 = v17 < a3;
  v22 = v17 <= a3;
  v23 = 0.5;
  if (v21)
  {
    v23 = 1.0;
  }

  if (!v22)
  {
    v23 = 0.0;
  }

  if (v19 > 0.00000011921)
  {
    v23 = v20;
  }

  return llroundf((v23 * v16) + ((1.0 - v23) * v13));
}

void Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(const float *a1, const float *a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (a1 != a2)
  {
    v16 = v6;
    v17 = v5;
    v18 = v3;
    v19 = v4;
    v9 = a1;
    v10 = a1;
    v11 = a1;
    do
    {
      __C = 0.0;
      v12 = *v11;
      v11 += 16;
      v13 = (*v12)(v9);
      vDSP_measqv(v9 + 5, 1, &__C, v13);
      v14 = log10f(__C + 1.1755e-38) * 10.0;
      std::vector<float>::push_back[abi:ne200100](a3, &v14);
      v10 += 16;
      v9 = v11;
    }

    while (v11 != a2);
  }
}

uint64_t Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(uint64_t result, float *a2, float *a3, float *a4, uint64_t a5, float a6, float a7)
{
  v9 = a3;
  if (a2 == result)
  {
    if (a3 != a4)
    {
      do
      {
        Phase::SpatialModeler::WeightSingleReflection_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v9, a7);
        result = std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::push_back[abi:ne200100](a5, v9);
        v9 += 16;
      }

      while (v9 != a4);
    }
  }

  else if (a4 == a3)
  {
    v12 = result;
    do
    {
      Phase::SpatialModeler::WeightSingleReflection_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v12, a6);
      result = std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::push_back[abi:ne200100](a5, v12);
      v12 += 16;
    }

    while (v12 != a2);
  }

  return result;
}

uint64_t Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, float a6, float a7)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = 0;
  v15 = v13 - *a2;
  if (v13 != *a2)
  {
    v16 = 0;
    v17 = v15 >> 2;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = -3.4028e38;
    do
    {
      if (*(v12 + 4 * v16) > v18)
      {
        v18 = *(v12 + 4 * v16);
        v14 = v16;
      }

      ++v16;
    }

    while (v17 != v16);
  }

  v19 = *a1 + (v14 << 6);
  v20 = *(v12 + 4 * v14);
  v21 = *(v19 + 16);
  v22 = *a3;
  v23 = a3[1];
  v24 = *a4;
  v25 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(*a3, v23, v21);
  v26 = *(v22 + (v25 << 6) + 16);
  v27 = v26 + 0.1;
  v28 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(v22, v23, v26 + -0.1);
  v29 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(v22, v23, v27);
  if (v28 <= v29)
  {
    v30 = (v22 + (v28 << 6) + 16);
    v31 = 3.4028e38;
    do
    {
      v32 = *v30;
      v30 += 16;
      v33 = ((*(v24 + 4 * v28) - v20) * (*(v24 + 4 * v28) - v20)) + (((v32 - v21) / 0.01) * ((v32 - v21) / 0.01));
      if (v33 < v31)
      {
        v31 = v33;
        v25 = v28;
      }

      ++v28;
    }

    while (v28 <= v29);
  }

  v34 = (v22 + (v25 << 6));
  memset(&v96[8], 0, 44);
  v35 = *(v19 + 12);
  v36 = v34[3];
  if (vabds_f32(v35, v36) > 180.0)
  {
    if (v35 >= v36)
    {
      v36 = v36 + 360.0;
    }

    else
    {
      v35 = v35 + 360.0;
    }
  }

  v37 = (v36 * a7) + (v35 * a6);
  if (v37 > 360.0)
  {
    v37 = v37 + -360.0;
  }

  *&v96[4] = v37;
  *v96 = (v34[2] * a7) + (*(v19 + 8) * a6);
  *&v96[8] = (v34[4] * a7) + (*(v19 + 16) * a6);
  result = (**v19)(v19);
  if (result >= 1)
  {
    v39 = 0;
    v40 = v34 + 5;
    v95 = a6;
    v41 = 0.0;
    v42 = 1.0;
    do
    {
      v43 = *(v19 + 20 + 4 * v39);
      v44 = fabsf(v43);
      v45 = v40[v39];
      v46 = fabsf(v45);
      if (v45 == 0.0)
      {
        v47 = COERCE_FLOAT(1);
      }

      else
      {
        v47 = v46;
      }

      if (v45 < 0.0)
      {
        v48 = -1.0;
      }

      else
      {
        v48 = 1.0;
      }

      v49 = v43 < 0.0;
      if (v43 == 0.0)
      {
        v50 = COERCE_FLOAT(1);
      }

      else
      {
        v50 = v44;
      }

      if (v49)
      {
        v51 = -1.0;
      }

      else
      {
        v51 = 1.0;
      }

      v52 = (((logf(v50) * 8.6859) / 10.0) * 10.0) * v95;
      v53 = (((logf(v47) * 8.6859) / 10.0) * 10.0) * a7;
      *&v96[4 * v39 + 12] = expf((((v52 + v53) * 10.0) / 10.0) * 0.11513);
      if (v52 <= v41)
      {
        v54.n128_f32[0] = v42;
      }

      else
      {
        v54.n128_f32[0] = v51;
      }

      if (v52 <= v41)
      {
        v55 = v41;
      }

      else
      {
        v55 = v52;
      }

      if (v53 <= v55)
      {
        v42 = v54.n128_f32[0];
      }

      else
      {
        v42 = v48;
      }

      if (v53 <= v55)
      {
        v41 = v55;
      }

      else
      {
        v41 = v53;
      }

      ++v39;
      result = (**v19)(v19, v54);
    }

    while (v39 < result);
    *v97 = v42;
    if (v42 < 0.0)
    {
      v56 = (**v19)(v19);
      result = MEMORY[0x23EE87290](&v96[12], 1, v97, &v96[12], 1, v56);
    }
  }

  v57 = *(a5 + 8);
  v58 = *(a5 + 16);
  if (v57 >= v58)
  {
    v63 = (v57 - *a5) >> 6;
    v64 = v63 + 1;
    if ((v63 + 1) >> 58)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v65 = v58 - *a5;
    if (v65 >> 5 > v64)
    {
      v64 = v65 >> 5;
    }

    if (v65 >= 0x7FFFFFFFFFFFFFC0)
    {
      v66 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v66 = v64;
    }

    v97[4] = a5;
    if (v66)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>>(a5, v66);
    }

    v67 = v63 << 6;
    v97[0] = 0;
    v97[1] = v67;
    v97[3] = 0;
    *v67 = &unk_284D33CF8;
    v68 = *&v96[32];
    v69 = *&v96[48];
    v70 = *v96;
    *(v67 + 24) = *&v96[16];
    *(v67 + 8) = v70;
    *(v67 + 56) = v69;
    *(v67 + 40) = v68;
    v97[2] = (v63 << 6) + 64;
    std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__swap_out_circular_buffer(a5, v97);
    v62 = *(a5 + 8);
    result = std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::~__split_buffer(v97);
  }

  else
  {
    *v57 = &unk_284D33CF8;
    v59 = *v96;
    v60 = *&v96[16];
    v61 = *&v96[32];
    *(v57 + 56) = *&v96[48];
    *(v57 + 40) = v61;
    *(v57 + 24) = v60;
    *(v57 + 8) = v59;
    v62 = v57 + 64;
  }

  *(a5 + 8) = v62;
  v71 = a1[1];
  v72 = (*a1 + (v14 << 6));
  v73 = v72 + 8;
  if (v72 + 8 != v71)
  {
    do
    {
      *(v73 - 7) = *(v73 + 1);
      *(v73 - 5) = *(v73 + 3);
      *(v73 - 3) = *(v73 + 5);
      *(v73 - 2) = *(v73 + 14);
      v73 += 8;
    }

    while (v73 != v71);
    v71 = a1[1];
    v72 = v73 - 8;
  }

  if (v71 != v72)
  {
    v74 = v71 - 8;
    v75 = v71 - 8;
    v76 = v71 - 8;
    do
    {
      v77 = *v76;
      v76 -= 8;
      result = (*(v77 + 16))(v75);
      v74 -= 8;
      v78 = v75 == v72;
      v75 = v76;
    }

    while (!v78);
  }

  a1[1] = v72;
  v79 = a2[1];
  v80 = *a2 + 4 * v14;
  v81 = v79 - (v80 + 4);
  if (v79 != v80 + 4)
  {
    result = memmove((*a2 + 4 * v14), (v80 + 4), v79 - (v80 + 4));
  }

  a2[1] = v80 + v81;
  v82 = a3[1];
  v83 = *a3 + (v25 << 6);
  v84 = v83 + 64;
  if (v83 + 64 != v82)
  {
    do
    {
      *(v84 - 56) = *(v84 + 8);
      *(v84 - 40) = *(v84 + 24);
      *(v84 - 24) = *(v84 + 40);
      *(v84 - 8) = *(v84 + 56);
      v84 += 64;
    }

    while (v84 != v82);
    v82 = a3[1];
    v83 = v84 - 64;
  }

  if (v82 != v83)
  {
    v85 = v82 - 64;
    v86 = (v82 - 64);
    v87 = (v82 - 64);
    do
    {
      v88 = *v87;
      v87 -= 8;
      result = (*(v88 + 16))(v86);
      v85 -= 64;
      v78 = v86 == v83;
      v86 = v87;
    }

    while (!v78);
  }

  a3[1] = v83;
  v89 = a4;
  v90 = a4[1];
  v91 = *a4 + 4 * v25;
  v92 = v90 - (v91 + 4);
  if (v90 != v91 + 4)
  {
    result = memmove(v91, (v91 + 4), v90 - (v91 + 4));
    v89 = a4;
  }

  v89[1] = v91 + v92;
  return result;
}

void sub_23A445B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *result) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - *result;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>>(result, v13);
    }

    v14 = v10 << 6;
    v18[0] = 0;
    v18[1] = v14;
    v18[3] = 0;
    *v14 = &unk_284D33CF8;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    v17 = *(a2 + 8);
    *(v14 + 24) = *(a2 + 24);
    *(v14 + 8) = v17;
    *(v14 + 56) = v16;
    *(v14 + 40) = v15;
    v18[2] = (v10 << 6) + 64;
    std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__swap_out_circular_buffer(result, v18);
    v9 = *(v3 + 8);
    result = std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::~__split_buffer(v18);
  }

  else
  {
    *v4 = &unk_284D33CF8;
    v6 = *(a2 + 8);
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v8;
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    v9 = v4 + 64;
  }

  *(v3 + 8) = v9;
  return result;
}

void sub_23A445C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(uint64_t a1, uint64_t a2, float a3)
{
  v3 = (a2 - a1) >> 6;
  v4 = v3 - 1;
  if (v3 >= 3)
  {
    v5 = 0;
    v6 = v3 - 1;
    while (1)
    {
      v7 = *(a1 + (v5 << 6) + 16);
      v8 = *(a1 + (v6 << 6) + 16);
      v9 = v7 - v8;
      if ((v7 - v8) < 0.0)
      {
        v9 = -(v7 - v8);
      }

      v10 = fminf(fmaxf((a3 - v7) / (v8 - v7), 0.0), 1.0);
      v11 = v7 <= a3;
      if (v7 >= a3)
      {
        v12 = 0.5;
      }

      else
      {
        v12 = 1.0;
      }

      if (!v11)
      {
        v12 = 0.0;
      }

      if (v9 > 0.00000011921)
      {
        v12 = v10;
      }

      v13 = llroundf((v12 * v6) + ((1.0 - v12) * v5));
      v14 = *(a1 + (v13 << 6) + 16);
      if (v14 == a3)
      {
        LODWORD(v16) = v13;
        goto LABEL_23;
      }

      if (v14 >= a3)
      {
        v16 = (v13 - 1);
        if (v13 < 1)
        {
          LODWORD(v16) = 0;
          v13 = 0;
          goto LABEL_23;
        }

        v6 = v13 - 1;
        if (*(a1 + (v16 << 6) + 16) < a3)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v4 <= v13)
        {
          LODWORD(v16) = v4;
          goto LABEL_22;
        }

        v5 = v13 + 1;
        v15 = *(a1 + ((v13 + 1) << 6) + 16);
        LODWORD(v16) = v13++;
        if (v15 > a3)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v16) = v5;
      v13 = v6;
      if (v6 <= v5 + 1)
      {
        goto LABEL_23;
      }
    }
  }

  LODWORD(v16) = 0;
LABEL_22:
  v13 = v4;
LABEL_23:
  v17 = *(a1 + (v16 << 6) + 16);
  v18 = *(a1 + (v13 << 6) + 16);
  v19 = v17 - v18;
  if ((v17 - v18) < 0.0)
  {
    v19 = -(v17 - v18);
  }

  v20 = fminf(fmaxf((a3 - v17) / (v18 - v17), 0.0), 1.0);
  v21 = v17 < a3;
  v22 = v17 <= a3;
  v23 = 0.5;
  if (v21)
  {
    v23 = 1.0;
  }

  if (!v22)
  {
    v23 = 0.0;
  }

  if (v19 > 0.00000011921)
  {
    v23 = v20;
  }

  return llroundf((v23 * v16) + ((1.0 - v23) * v13));
}

void Phase::SpatialModeler::PrecalculateDbLevels<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(const float *a1, const float *a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (a1 != a2)
  {
    v16 = v6;
    v17 = v5;
    v18 = v3;
    v19 = v4;
    v9 = a1;
    v10 = a1;
    v11 = a1;
    do
    {
      __C = 0.0;
      v12 = *v11;
      v11 += 36;
      v13 = (*v12)(v9);
      vDSP_measqv(v9 + 5, 1, &__C, v13);
      v14 = log10f(__C + 1.1755e-38) * 10.0;
      std::vector<float>::push_back[abi:ne200100](a3, &v14);
      v10 += 36;
      v9 = v11;
    }

    while (v11 != a2);
  }
}

uint64_t Phase::SpatialModeler::TerminateAndWeightRemainder_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(uint64_t result, float *a2, float *a3, float *a4, uint64_t a5, float a6, float a7)
{
  v9 = a3;
  if (a2 == result)
  {
    if (a3 != a4)
    {
      do
      {
        Phase::SpatialModeler::WeightSingleReflection_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v9, a7);
        result = std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::push_back[abi:ne200100](a5, v9);
        v9 += 36;
      }

      while (v9 != a4);
    }
  }

  else if (a4 == a3)
  {
    v12 = result;
    do
    {
      Phase::SpatialModeler::WeightSingleReflection_dBDomain<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(v12, a6);
      result = std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::push_back[abi:ne200100](a5, v12);
      v12 += 36;
    }

    while (v12 != a2);
  }

  return result;
}

uint64_t Phase::SpatialModeler::FindPairAndMerge<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, float a6, float a7)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = 0;
  v14 = v12 - *a2;
  if (v12 != *a2)
  {
    v15 = 0;
    v16 = v14 >> 2;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = -3.4028e38;
    do
    {
      if (*(v11 + 4 * v15) > v17)
      {
        v17 = *(v11 + 4 * v15);
        v13 = v15;
      }

      ++v15;
    }

    while (v16 != v15);
  }

  v18 = *a1 + 144 * v13;
  v19 = *(v11 + 4 * v13);
  v20 = *(v18 + 16);
  v21 = *a3;
  v22 = a3[1];
  v23 = *a4;
  v24 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(*a3, v22, v20);
  v25 = *(v21 + 144 * v24 + 16);
  v26 = v25 + 0.1;
  v27 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(v21, v22, v25 + -0.1);
  v28 = Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(v21, v22, v26);
  if (v27 <= v28)
  {
    v29 = (v21 + 144 * v27 + 16);
    v30 = 3.4028e38;
    do
    {
      v31 = *v29;
      v29 += 36;
      v32 = ((*(v23 + 4 * v27) - v19) * (*(v23 + 4 * v27) - v19)) + (((v31 - v20) / 0.01) * ((v31 - v20) / 0.01));
      if (v32 < v30)
      {
        v30 = v32;
        v24 = v27;
      }

      ++v27;
    }

    while (v27 <= v28);
  }

  v33 = (v21 + 144 * v24);
  memset(&v102[8], 0, 128);
  v34 = *(v18 + 12);
  v35 = v33[3];
  v36 = a1;
  if (vabds_f32(v34, v35) > 180.0)
  {
    if (v34 >= v35)
    {
      v35 = v35 + 360.0;
    }

    else
    {
      v34 = v34 + 360.0;
    }
  }

  v37 = (v35 * a7) + (v34 * a6);
  if (v37 > 360.0)
  {
    v37 = v37 + -360.0;
  }

  *&v102[4] = v37;
  *v102 = (v33[2] * a7) + (*(v18 + 8) * a6);
  *&v102[8] = (v33[4] * a7) + (*(v18 + 16) * a6);
  result = (**v18)(v18);
  if (result >= 1)
  {
    v39 = 0;
    v40 = v33 + 5;
    v101 = a6;
    v41 = 0.0;
    v42 = 1.0;
    do
    {
      v43 = *(v18 + 20 + 4 * v39);
      v44 = fabsf(v43);
      v45 = v40[v39];
      v46 = fabsf(v45);
      if (v45 == 0.0)
      {
        v47 = COERCE_FLOAT(1);
      }

      else
      {
        v47 = v46;
      }

      if (v45 < 0.0)
      {
        v48 = -1.0;
      }

      else
      {
        v48 = 1.0;
      }

      v49 = v43 < 0.0;
      if (v43 == 0.0)
      {
        v50 = COERCE_FLOAT(1);
      }

      else
      {
        v50 = v44;
      }

      if (v49)
      {
        v51 = -1.0;
      }

      else
      {
        v51 = 1.0;
      }

      v52 = (((logf(v50) * 8.6859) / 10.0) * 10.0) * v101;
      v53 = (((logf(v47) * 8.6859) / 10.0) * 10.0) * a7;
      *&v102[4 * v39 + 12] = expf((((v52 + v53) * 10.0) / 10.0) * 0.11513);
      if (v52 <= v41)
      {
        v54.n128_f32[0] = v42;
      }

      else
      {
        v54.n128_f32[0] = v51;
      }

      if (v52 <= v41)
      {
        v55 = v41;
      }

      else
      {
        v55 = v52;
      }

      if (v53 <= v55)
      {
        v42 = v54.n128_f32[0];
      }

      else
      {
        v42 = v48;
      }

      if (v53 <= v55)
      {
        v41 = v55;
      }

      else
      {
        v41 = v53;
      }

      ++v39;
      result = (**v18)(v18, v54);
    }

    while (v39 < result);
    *v103 = v42;
    v36 = a1;
    if (v42 < 0.0)
    {
      v56 = (**v18)(v18);
      result = MEMORY[0x23EE87290](&v102[12], 1, v103, &v102[12], 1, v56);
    }
  }

  v57 = *(a5 + 8);
  v58 = *(a5 + 16);
  if (v57 >= v58)
  {
    v66 = 0x8E38E38E38E38E39 * ((v57 - *a5) >> 4);
    v67 = v66 + 1;
    if (v66 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v68 = 0x8E38E38E38E38E39 * ((v58 - *a5) >> 4);
    if (2 * v68 > v67)
    {
      v67 = 2 * v68;
    }

    if (v68 >= 0xE38E38E38E38E3)
    {
      v69 = 0x1C71C71C71C71C7;
    }

    else
    {
      v69 = v67;
    }

    v103[4] = a5;
    if (v69)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>>(a5, v69);
    }

    v70 = 144 * v66;
    v103[0] = 0;
    v103[1] = v70;
    v103[3] = 0;
    *v70 = &unk_284D33D28;
    v71 = *&v102[80];
    v72 = *&v102[96];
    v73 = *&v102[112];
    *(v70 + 136) = *&v102[128];
    *(v70 + 120) = v73;
    *(v70 + 104) = v72;
    *(v70 + 88) = v71;
    v74 = *&v102[16];
    v75 = *&v102[32];
    v76 = *&v102[48];
    *(v70 + 72) = *&v102[64];
    *(v70 + 56) = v76;
    *(v70 + 40) = v75;
    *(v70 + 24) = v74;
    *(v70 + 8) = *v102;
    v103[2] = 144 * v66 + 144;
    std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__swap_out_circular_buffer(a5, v103);
    v65 = *(a5 + 8);
    result = std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::~__split_buffer(v103);
  }

  else
  {
    *v57 = &unk_284D33D28;
    *(v57 + 8) = *v102;
    v59 = *&v102[16];
    v60 = *&v102[32];
    v61 = *&v102[48];
    *(v57 + 72) = *&v102[64];
    *(v57 + 56) = v61;
    *(v57 + 40) = v60;
    *(v57 + 24) = v59;
    v62 = *&v102[80];
    v63 = *&v102[96];
    v64 = *&v102[112];
    *(v57 + 136) = *&v102[128];
    *(v57 + 120) = v64;
    *(v57 + 104) = v63;
    *(v57 + 88) = v62;
    v65 = v57 + 144;
  }

  *(a5 + 8) = v65;
  v77 = v36[1];
  v78 = *v36 + 144 * v13;
  if (v78 + 144 != v77)
  {
    do
    {
      *(v78 + 88) = *(v78 + 232);
      *(v78 + 104) = *(v78 + 248);
      *(v78 + 136) = *(v78 + 280);
      *(v78 + 24) = *(v78 + 168);
      *(v78 + 40) = *(v78 + 184);
      *(v78 + 56) = *(v78 + 200);
      *(v78 + 72) = *(v78 + 216);
      *(v78 + 8) = *(v78 + 152);
      v79 = v78 + 288;
      *(v78 + 120) = *(v78 + 264);
      v78 += 144;
    }

    while (v79 != v77);
    v77 = v36[1];
  }

  if (v77 != v78)
  {
    v80 = v77 - 144;
    v81 = (v77 - 144);
    v82 = (v77 - 144);
    do
    {
      v83 = *v82;
      v82 -= 18;
      result = (*(v83 + 16))(v81);
      v80 -= 144;
      v84 = v81 == v78;
      v81 = v82;
    }

    while (!v84);
  }

  v36[1] = v78;
  v85 = a2[1];
  v86 = *a2 + 4 * v13;
  v87 = v85 - (v86 + 4);
  if (v85 != v86 + 4)
  {
    result = memmove((*a2 + 4 * v13), (v86 + 4), v85 - (v86 + 4));
  }

  a2[1] = v86 + v87;
  v88 = a3[1];
  v89 = *a3 + 144 * v24;
  if (v89 + 144 != v88)
  {
    do
    {
      *(v89 + 88) = *(v89 + 232);
      *(v89 + 104) = *(v89 + 248);
      *(v89 + 136) = *(v89 + 280);
      *(v89 + 24) = *(v89 + 168);
      *(v89 + 40) = *(v89 + 184);
      *(v89 + 56) = *(v89 + 200);
      *(v89 + 72) = *(v89 + 216);
      *(v89 + 8) = *(v89 + 152);
      v90 = v89 + 288;
      *(v89 + 120) = *(v89 + 264);
      v89 += 144;
    }

    while (v90 != v88);
    v88 = a3[1];
  }

  if (v88 != v89)
  {
    v91 = v88 - 144;
    v92 = (v88 - 144);
    v93 = (v88 - 144);
    do
    {
      v94 = *v93;
      v93 -= 18;
      result = (*(v94 + 16))(v92);
      v91 -= 144;
      v84 = v92 == v89;
      v92 = v93;
    }

    while (!v84);
  }

  a3[1] = v89;
  v95 = a4[1];
  v96 = *a4 + 4 * v24;
  v97 = v95 - (v96 + 4);
  if (v95 != v96 + 4)
  {
    result = memmove(v96, (v96 + 4), v95 - (v96 + 4));
  }

  a4[1] = v96 + v97;
  return result;
}

uint64_t std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v13 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 4);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xE38E38E38E38E3)
    {
      v16 = 0x1C71C71C71C71C7;
    }

    else
    {
      v16 = v14;
    }

    v24[4] = result;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>>(result, v16);
    }

    v17 = 144 * v13;
    v24[0] = 0;
    v24[1] = v17;
    v24[3] = 0;
    *v17 = &unk_284D33D28;
    v18 = *(a2 + 88);
    v19 = *(a2 + 104);
    v20 = *(a2 + 120);
    *(v17 + 136) = *(a2 + 136);
    *(v17 + 120) = v20;
    *(v17 + 104) = v19;
    *(v17 + 88) = v18;
    v21 = *(a2 + 24);
    v22 = *(a2 + 40);
    v23 = *(a2 + 56);
    *(v17 + 72) = *(a2 + 72);
    *(v17 + 56) = v23;
    *(v17 + 40) = v22;
    *(v17 + 24) = v21;
    *(v17 + 8) = *(a2 + 8);
    v24[2] = 144 * v13 + 144;
    std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__swap_out_circular_buffer(result, v24);
    v12 = *(v3 + 8);
    result = std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::~__split_buffer(v24);
  }

  else
  {
    *v4 = &unk_284D33D28;
    *(v4 + 8) = *(a2 + 8);
    v6 = *(a2 + 24);
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    *(v4 + 72) = *(a2 + 72);
    *(v4 + 56) = v8;
    *(v4 + 40) = v7;
    *(v4 + 24) = v6;
    v9 = *(a2 + 88);
    v10 = *(a2 + 104);
    v11 = *(a2 + 120);
    *(v4 + 136) = *(a2 + 136);
    *(v4 + 120) = v11;
    *(v4 + 104) = v10;
    *(v4 + 88) = v9;
    v12 = v4 + 144;
  }

  *(v3 + 8) = v12;
  return result;
}

void sub_23A446934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::GetNearestReflectionIndex<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(uint64_t a1, uint64_t a2, float a3)
{
  v3 = 954437177 * ((a2 - a1) >> 4);
  if (v3 >= 3)
  {
    v4 = 0;
    v5 = v3 - 1;
    while (1)
    {
      v6 = *(a1 + 144 * v4 + 16);
      v7 = *(a1 + 144 * v5 + 16);
      v8 = v6 - v7;
      if ((v6 - v7) < 0.0)
      {
        v8 = -(v6 - v7);
      }

      v9 = fminf(fmaxf((a3 - v6) / (v7 - v6), 0.0), 1.0);
      v10 = v6 <= a3;
      if (v6 >= a3)
      {
        v11 = 0.5;
      }

      else
      {
        v11 = 1.0;
      }

      if (!v10)
      {
        v11 = 0.0;
      }

      if (v8 > 0.00000011921)
      {
        v11 = v9;
      }

      v12 = llroundf((v11 * v5) + ((1.0 - v11) * v4));
      v13 = *(a1 + 144 * v12 + 16);
      if (v13 == a3)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v13 >= a3)
      {
        v5 = v12 - 1;
        if (v12 < 1)
        {
          v15 = 0;
          v12 = 0;
          goto LABEL_23;
        }

        v15 = v12 - 1;
        if (*(a1 + 144 * v5 + 16) < a3)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v3 - 1 <= v12)
        {
          v15 = v3 - 1;
          goto LABEL_22;
        }

        v4 = v12 + 1;
        v14 = *(a1 + 144 * v12 + 160);
        v15 = v12++;
        if (v14 > a3)
        {
          goto LABEL_23;
        }
      }

      v15 = v4;
      v12 = v5;
      if (v5 <= v4 + 1)
      {
        goto LABEL_23;
      }
    }
  }

  v15 = 0;
LABEL_22:
  v12 = v3 - 1;
LABEL_23:
  v16 = *(a1 + 144 * v15 + 16);
  v17 = *(a1 + 144 * v12 + 16);
  v18 = v16 - v17;
  if ((v16 - v17) < 0.0)
  {
    v18 = -(v16 - v17);
  }

  v19 = fminf(fmaxf((a3 - v16) / (v17 - v16), 0.0), 1.0);
  v20 = v16 < a3;
  v21 = v16 <= a3;
  v22 = 0.5;
  if (v20)
  {
    v22 = 1.0;
  }

  if (!v21)
  {
    v22 = 0.0;
  }

  if (v18 > 0.00000011921)
  {
    v22 = v19;
  }

  return llroundf((v22 * v15) + ((1.0 - v22) * v12));
}

void Phase::DspLayer::NUPConvolver::NUPConvolver(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  *a1 = &unk_284D35C68;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *a2, a2[1], (a2[1] - *a2) >> 2);
  v6 = *(a2[1] - 4);
  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  bzero(v7, 4 * v6);
  *(a1 + 96) = 0;
  *(a1 + 96) = malloc_type_malloc(8 * *(a1 + 8), 0x2004093837F09uLL);
  if (*(a1 + 8) >= 1)
  {
    operator new();
  }

  v8 = *(a1 + 40) - *(a1 + 32);
  *(a1 + 12) = v8 >> 2;
  *(a1 + 24) = malloc_type_malloc((v8 << 30) >> 29, 0x2004093837F09uLL);
  if (*(a1 + 40) - *(a1 + 32) == 4)
  {
    operator new();
  }

  operator new();
}

void sub_23A446D5C(_Unwind_Exception *a1)
{
  MEMORY[0x23EE864A0](v2, 0x10E1C4077BC1CF2);
  free(*(v1 + 56));
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void Phase::DspLayer::NUPConvolver::~NUPConvolver(Phase::DspLayer::NUPConvolver *this)
{
  *this = &unk_284D35C68;
  v2 = *(this + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 3) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 3);
      }
    }
  }

  v5 = *(this + 2);
  if (v5 >= 1)
  {
    for (j = 0; j < v5; ++j)
    {
      v7 = *(*(this + 12) + 8 * j);
      if (v7)
      {
        free(*v7);
        MEMORY[0x23EE864A0](v7, 0x1080C4068AA72D0);
        v5 = *(this + 2);
      }
    }
  }

  free(*(this + 3));
  free(*(this + 12));
  free(*(this + 7));
  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }
}

{
  Phase::DspLayer::NUPConvolver::~NUPConvolver(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer::NUPConvolver::GetFilterLength(Phase::DspLayer::NUPConvolver *this)
{
  if (*(this + 4) < 1)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v4 = *(*(this + 3) + 8 * v2);
    v3 = (*(*v4 + 40))(v4) + v3;
    ++v2;
  }

  while (v2 < *(this + 4));
  return v3;
}

uint64_t Phase::DspLayer::NUPConvolver::GetMaxFilterLength(Phase::DspLayer::NUPConvolver *this)
{
  if (*(this + 3) < 1)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v4 = *(*(this + 3) + 8 * v2);
    v3 = (*(*v4 + 48))(v4) + v3;
    ++v2;
  }

  while (v2 < *(this + 3));
  return v3;
}

void Phase::DspLayer::NUPConvolver::Reset(Phase::DspLayer::NUPConvolver *this)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  bzero(*(this + 7), 4 * *(this + 8));
  if (*(this + 3) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 3) + 8 * v2);
      (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(this + 3));
  }

  if (*(this + 2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 12) + 8 * v4);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      bzero(*v5, 4 * *(v5 + 8));
      ++v4;
    }

    while (v4 < *(this + 2));
  }
}

uint64_t Phase::DspLayer::NUPConvolver::SetFilter(Phase::DspLayer::NUPConvolver *this, uint64_t a2, float *a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 2;
  }

  if (*(this + 2) <= a2)
  {
    return 2;
  }

  if (a4 < 1 || (*(*this + 48))(this) < a4)
  {
    return 1;
  }

  *(this + 4) = 0;
  if (*(this + 3) < 2)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(this + 3) + 8 * v9);
      v12 = (*(*v11 + 48))(v11);
      if (a4 - v10 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = (a4 - v10);
      }

      v13 = *(*(this + 3) + 8 * v9);
      (*(*v13 + 16))(v13, a2, &a3[v10], v14);
      v10 += v12;
      v15 = *(this + 3);
      ++*(this + 4);
      ++v9;
    }

    while (v9 < v15 - 1 && v10 < a4);
    if (v10 >= a4)
    {
      return 0;
    }
  }

  v16 = *(*(this + 3) + 8 * v9);
  (*(*v16 + 16))(v16, a2, &a3[v10], (a4 - v10));
  result = 0;
  ++*(this + 4);
  return result;
}

void Phase::DspLayer::NUPConvolver::Process(Phase::DspLayer::NUPConvolver *this, const float *a2, float **a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = (*(***(this + 3) + 56))(**(this + 3));
  v7 = *(*(this + 3) + 8 * *(this + 4) - 8);
  v8 = (*(*v7 + 56))(v7);
  v9 = Phase::DspLayer23::BasicReblocker<float>::Write(this + 56, a2, v6);
  v10 = *(this + 2);
  v11 = v8;
  MEMORY[0x28223BE20](v9);
  v13 = (&v70 - v12);
  bzero(&v70 - v12, v14);
  v70 = v13;
  if (v10 == 2)
  {
    v71 = v13;
    v72 = &v13[v11];
    LODWORD(v27) = *(this + 4);
    if (v27 < 1)
    {
      LODWORD(v28) = 0;
LABEL_51:
      if (v28 == v27)
      {
        *(this + 9) = 0;
        *(this + 10) = 0;
        *(this + 88) = 0;
      }

      if (v6)
      {
        v59 = *(this + 12);
        v61 = *v59;
        v60 = v59[1];
        v62 = *(v61 + 16);
        v63 = *(v61 + 24) + v6;
        if (v63 == *(v61 + 8))
        {
          v63 = 0;
        }

        *(v61 + 24) = v63;
        *(v61 + 32) = v63 == v62;
        v64 = *(v60 + 16);
        v65 = *(v60 + 24) + v6;
        if (v65 == *(v60 + 8))
        {
          v65 = 0;
        }

        *(v60 + 24) = v65;
        *(v60 + 32) = v65 == v64;
      }

      Phase::DspLayer::NUPConvolver::WriteReblockedOutputsToConvolverOutput(this, 0, *a3, v6);
      v56 = a3[1];
      v57 = this;
      v58 = 1;
      goto LABEL_60;
    }

    v28 = 0;
    while (1)
    {
      v29 = *(*(this + 3) + 8 * v28);
      v30 = (*(*v29 + 56))(v29);
      v31 = v30;
      v32 = *(this + 9);
      v33 = *(this + 10);
      v34 = v33 >= v32;
      v35 = v33 - v32;
      if (!v34)
      {
        break;
      }

      if (v35 == 0 || !v34)
      {
        if (*(this + 88) == 1)
        {
          break;
        }

        v35 = 0;
      }

LABEL_20:
      if (v35 % v30)
      {
        LODWORD(v27) = *(this + 4);
        goto LABEL_51;
      }

      v36 = *(*(this + 3) + 8 * v28);
      (*(*v36 + 24))(v36, *(this + 7) + 4 * v32 + 4 * (v35 - v31), &v71);
      Phase::DspLayer::NUPConvolver::AddPartitionOutputToReblocker(this, 0, v71, v31);
      Phase::DspLayer::NUPConvolver::AddPartitionOutputToReblocker(this, 1, v72, v31);
      ++v28;
      v27 = *(this + 4);
      if (v28 >= v27)
      {
        goto LABEL_51;
      }
    }

    v35 = *(this + 8) - v32;
    goto LABEL_20;
  }

  if (v10 != 1)
  {
    v37 = v10;
    MEMORY[0x28223BE20](v15);
    v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v39, v38);
    if (v37 >= 1)
    {
      v40 = v39;
      do
      {
        *v40++ = v13;
        v13 += v11;
        --v37;
      }

      while (v37);
    }

    LODWORD(v41) = *(this + 4);
    if (v41 < 1)
    {
      LODWORD(v42) = 0;
LABEL_62:
      if (v42 == v41)
      {
        *(this + 9) = 0;
        *(this + 10) = 0;
        *(this + 88) = 0;
      }

      if (*(this + 2) >= 1)
      {
        v66 = 0;
        do
        {
          if (v6)
          {
            v67 = *(*(this + 12) + 8 * v66);
            v68 = *(v67 + 16);
            v69 = *(v67 + 24) + v6;
            if (v69 == *(v67 + 8))
            {
              v69 = 0;
            }

            *(v67 + 24) = v69;
            *(v67 + 32) = v69 == v68;
          }

          Phase::DspLayer::NUPConvolver::WriteReblockedOutputsToConvolverOutput(this, v66, a3[v66], v6);
          ++v66;
        }

        while (v66 < *(this + 2));
      }

      return;
    }

    v42 = 0;
    while (1)
    {
      v43 = *(*(this + 3) + 8 * v42);
      v44 = (*(*v43 + 56))(v43);
      v45 = v44;
      v46 = *(this + 9);
      v47 = *(this + 10);
      v48 = v47 >= v46;
      v49 = v47 - v46;
      if (!v48)
      {
        break;
      }

      if (v49 == 0 || !v48)
      {
        if (*(this + 88) == 1)
        {
          break;
        }

        v49 = 0;
      }

LABEL_33:
      if (v49 % v44)
      {
        LODWORD(v41) = *(this + 4);
        goto LABEL_62;
      }

      v50 = *(this + 7) + 4 * v46 + 4 * (v49 - v44);
      v51 = *(*(this + 3) + 8 * v42);
      (*(*v51 + 24))(v51, v50, v39);
      if (*(this + 2) >= 1)
      {
        v52 = 0;
        do
        {
          Phase::DspLayer::NUPConvolver::AddPartitionOutputToReblocker(this, v52, *&v39[8 * v52], v45);
          ++v52;
        }

        while (v52 < *(this + 2));
      }

      ++v42;
      v41 = *(this + 4);
      if (v42 >= v41)
      {
        goto LABEL_62;
      }
    }

    v49 = *(this + 8) - v46;
    goto LABEL_33;
  }

  LODWORD(v16) = *(this + 4);
  if (v16 < 1)
  {
    LODWORD(v17) = 0;
    goto LABEL_43;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(*(this + 3) + 8 * v17);
    v19 = (*(*v18 + 56))(v18);
    v20 = v19;
    v21 = *(this + 9);
    v22 = *(this + 10);
    v23 = v22 >= v21;
    v24 = v22 - v21;
    if (!v23)
    {
LABEL_6:
      v24 = *(this + 8) - v21;
      goto LABEL_10;
    }

    if (v24 == 0 || !v23)
    {
      if (*(this + 88) == 1)
      {
        goto LABEL_6;
      }

      v24 = 0;
    }

LABEL_10:
    if (v24 % v19)
    {
      break;
    }

    v25 = *(this + 7) + 4 * v21 + 4 * (v24 - v19);
    v26 = *(*(this + 3) + 8 * v17);
    (*(*v26 + 24))(v26, v25, &v70);
    Phase::DspLayer::NUPConvolver::AddPartitionOutputToReblocker(this, 0, v70, v20);
    ++v17;
    v16 = *(this + 4);
    if (v17 >= v16)
    {
      goto LABEL_43;
    }
  }

  LODWORD(v16) = *(this + 4);
LABEL_43:
  if (v17 == v16)
  {
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 88) = 0;
  }

  if (v6)
  {
    v53 = **(this + 12);
    v54 = *(v53 + 16);
    v55 = *(v53 + 24) + v6;
    if (v55 == *(v53 + 8))
    {
      v55 = 0;
    }

    *(v53 + 24) = v55;
    *(v53 + 32) = v55 == v54;
  }

  v56 = *a3;
  v57 = this;
  v58 = 0;
LABEL_60:
  Phase::DspLayer::NUPConvolver::WriteReblockedOutputsToConvolverOutput(v57, v58, v56, v6);
}

void Phase::DspLayer::NUPConvolver::AddPartitionOutputToReblocker(Phase::DspLayer::NUPConvolver *this, int a2, float *a3, int a4)
{
  v4 = *(*(this + 12) + 8 * a2);
  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 - v5;
  if (v6 < v5)
  {
    goto LABEL_2;
  }

  if (v6 <= v5)
  {
    if ((v4[4] & 1) == 0)
    {
LABEL_2:
      v7 = v4[1] - v5;
      goto LABEL_6;
    }

    v7 = 0;
  }

LABEL_6:
  v8 = *v4;
  if (a4 > v7)
  {
    MEMORY[0x23EE871C0](v8 + 4 * v5, 1, a3, 1, v8 + 4 * v5, 1, v7);
  }

  JUMPOUT(0x23EE871C0);
}

void Phase::DspLayer::NUPConvolver::WriteReblockedOutputsToConvolverOutput(Phase::DspLayer::NUPConvolver *this, int a2, float *__dst, int a4)
{
  v7 = *(*(this + 12) + 8 * a2);
  v8 = (*v7 + 4 * v7[2]);
  v9 = a4;
  memcpy(__dst, v8, 4 * a4);
  if (a4)
  {
    v10 = *(*(this + 12) + 8 * a2);
    v11 = *(v10 + 16) + v9;
    if (v11 == *(v10 + 8))
    {
      v11 = 0;
    }

    *(v10 + 16) = v11;
    *(v10 + 32) = 0;
  }

  vDSP_vclr(v8, 1, v9);
}

uint64_t Phase::DspLayer::NUPConvolver::GetPartition(Phase::DspLayer::NUPConvolver *this, int a2)
{
  if (*(this + 4) >= a2)
  {
    return *(*(this + 3) + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t Phase::DspLayer::NUPConvolver::CopyStateFrom(Phase::DspLayer::NUPConvolver *this, Phase::DspLayer::IConvolver *a2)
{
  v4 = (*(*a2 + 96))(a2);
  if (v4)
  {
    v5 = v4;
    memcpy(*(this + 7), *v4, 4 * *(this + 8));
    *(this + 72) = *(v5 + 1);
    *(this + 88) = *(v5 + 32);
  }

  if (*(this + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 12) + 8 * v6);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      bzero(*v7, 4 * *(v7 + 8));
      ++v6;
    }

    while (v6 < *(this + 2));
  }

  v8 = (*(*this + 72))(this);
  v9 = (*(*a2 + 72))(a2);
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  *(this + 4) = v10;
  if (v10 < 1)
  {
    return 0;
  }

  LODWORD(v11) = 0;
  v12 = 0;
  do
  {
    v13 = (*(*a2 + 80))(a2, v12);
    v14 = (*(*this + 80))(this, v12);
    v15 = (*(*v14 + 88))(v14);
    v16 = (*(*v13 + 88))(v13);
    v11 = Phase::DspLayer::IConvolver::FilterState::CopyStateFrom(v15, v16) + v11;
    v12 = (v12 + 1);
  }

  while (v12 < *(this + 4));
  return v11;
}

uint64_t Phase::DspLayer::IConvolver::FilterState::CopyStateFrom(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a1 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (!v5 || (v6 = *(a2 + 8)) == 0 || (memcpy(v5, v6, 4 * v2), v7 = *(a1 + 16), v7 != *(a1 + 20)) && *(a2 + 16) != *(a2 + 20))
  {
    v8 = *(a1 + 20);
    v9 = *(a2 + 20);
    if (v8 == v9)
    {
      memcpy(*a1, *a2, 4 * v8);
      *(a1 + 24) = *(a2 + 24);
      return *(a1 + 20);
    }

    else
    {
      v10 = *(a2 + 24);
      if (v8 >= v10)
      {
        v11 = *(a2 + 24);
      }

      else
      {
        v11 = *(a1 + 20);
      }

      v12 = v10 - v11;
      v13 = v9 - v10;
      v14 = v8 - v11;
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      v7 = (v15 + v11);
      memcpy(*a1, (*a2 + 4 * (v9 - v15)), 4 * v15);
      memcpy((*a1 + 4 * v15), (*a2 + 4 * v12), 4 * v11);
      *(a1 + 24) = v7 % *(a1 + 20);
    }
  }

  return v7;
}

uint64_t Phase::ParserSetParseError(uint64_t a1, uint64_t a2, char *__src, const char *a4, const char *a5, ...)
{
  va_start(va, a5);
  *a1 = a2;
  v8 = (a1 + 136);
  strncpy((a1 + 8), __src, 0x80uLL);
  strncpy(v8, a4, 0x80uLL);
  return vsnprintf((a1 + 264), 0x100uLL, a5, va);
}

uint64_t Phase::BuildActionTree(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v160 = v4;
  v5 = v1;
  v216 = *MEMORY[0x277D85DE8];
  v7 = v6;
  v159 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v198 = 0;
    v189 = 0u;
    v188 = 0u;
    v187 = 0u;
    v186 = 0u;
    v185 = 0u;
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    v199 = 1;
    if (Phase::ReadString(v5, v7, @"Name", &v180, 0x80uLL, v160))
    {
      v8 = v180;
      if (v180)
      {
        v9 = v181;
        v10 = 0xCBF29CE484222325;
        do
        {
          v10 = 0x100000001B3 * (v10 ^ v8);
          v11 = *v9++;
          v8 = v11;
        }

        while (v11);
      }

      else
      {
        v10 = 0;
      }

      *&v181[127] = v10;
      v157 = [v7 objectForKeyedSubscript:@"Submixes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memset(v169, 0, sizeof(v169));
        v170 = 1065353216;
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        obj = v157;
        v12 = [obj countByEnumeratingWithState:&v172 objects:v213 count:16];
        if (!v12)
        {
          v82 = 1;
          goto LABEL_180;
        }

        v151 = *v173;
LABEL_12:
        v13 = 0;
        v145 = v12;
LABEL_13:
        if (*v173 != v151)
        {
          objc_enumerationMutation(obj);
        }

        v153 = v13;
        v14 = *(*(&v172 + 1) + 8 * v13);
        bzero(__src, 0x1738uLL);
        if ((Phase::ReadString(v5, v14, @"Name", v212, 0x80uLL, 0) & 1) == 0)
        {
          *(v5 + 72) = xmmword_23A5967A0;
          *(v5 + 88) = unk_23A5967B0;
          *(v5 + 104) = xmmword_23A5967C0;
          *(v5 + 120) = unk_23A5967D0;
          *(v5 + 8) = *"<SubmixStruct>";
          *(v5 + 24) = *&algn_23A59676F[1];
          *(v5 + 40) = xmmword_23A596780;
          *(v5 + 56) = unk_23A596790;
          goto LABEL_179;
        }

        std::string::basic_string[abi:ne200100]<0>(v214, v212);
        v15 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v169, v214);
        if (v215 < 0)
        {
          operator delete(v214[0]);
        }

        if (v15)
        {
          Phase::ParserSetParseError(v5, 1346924646, &v180, v212, "Mixer array contains multiple mixers named the same thing");
          goto LABEL_179;
        }

        std::string::basic_string[abi:ne200100]<0>(v214, v212);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v169, v214);
        if (v215 < 0)
        {
          operator delete(v214[0]);
        }

        if ((Phase::ReadPhaseId(v5, v14, @"Name", __src, v160) & 1) == 0)
        {
          goto LABEL_147;
        }

        v16 = v14;
        v17 = @"Type";
        v18 = [v16 objectForKeyedSubscript:@"Type"];
        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            __src[1] = GetMixerType(v18);
            if (__src[1])
            {

              if ((Phase::ReadFloatTypeWithDefault<double>(v5, v16, @"Gain", &__src[2], 1.0, 0.0, 1.0) & 1) == 0 || (Phase::ReadParamIdx(v5, v16, @"GainParameterName", &v180, &__src[3] + 2, v160) & 1) == 0)
              {
                goto LABEL_147;
              }

              LOWORD(__src[3]) = 0;
              if (__src[1] > 1)
              {
                if (__src[1] != 2)
                {
                  if (__src[1] != 3)
                  {
                    goto LABEL_106;
                  }

                  v162 = 0;
                  v19 = Phase::ReadAVAudioChannelLayout(v5, v16, &v162);
                  v20 = v162;
                  if (!v19)
                  {
                    v88 = v20;
                    strncpy((v5 + 8), v212, 0x80uLL);

                    goto LABEL_179;
                  }

                  v21 = v20;
                  v22 = [v20 layout];
                  v149 = v21;
LABEL_104:
                  LODWORD(__src[4]) = *v22;
                  goto LABEL_105;
                }

                v161 = 0;
                v29 = Phase::ReadAVAudioChannelLayout(v5, v16, &v161);
                v149 = v161;
                if (v29)
                {
                  v30 = v16;
                  v31 = @"Orientation";
                  v32 = [v30 objectForKeyedSubscript:@"Orientation"];
                  if (!v32)
                  {
                    *(&__src[4] + 4) = xmmword_23A554920;

LABEL_103:
                    v22 = [v149 layout];
                    goto LABEL_104;
                  }

                  v146 = v30;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if ([v32 count] == 4)
                    {
                      v178 = 0u;
                      v179 = 0u;
                      v176 = 0u;
                      v177 = 0u;
                      v33 = v32;
                      v34 = [v33 countByEnumeratingWithState:&v176 objects:v214 count:16];
                      if (v34)
                      {
                        v35 = *v177;
                        v36 = &__src[4] + 1;
                        while (2)
                        {
                          for (i = 0; i != v34; ++i)
                          {
                            if (*v177 != v35)
                            {
                              objc_enumerationMutation(v33);
                            }

                            v38 = *(*(&v176 + 1) + 8 * i);
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              Phase::ParserSetParseError(v5, 1346924646, "", [(__CFString *)@"Orientation" UTF8String], "Invalid quaternion coefficient type");

                              goto LABEL_140;
                            }

                            [v38 floatValue];
                            *v36++ = v39;
                          }

                          v34 = [v33 countByEnumeratingWithState:&v176 objects:v214 count:16];
                          if (v34)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      goto LABEL_103;
                    }

                    Phase::ParserSetParseError(v5, 1346924646, "", [(__CFString *)@"Orientation" UTF8String], "Invalid quaternion size");
                  }

                  else
                  {
                    Phase::ParserSetParseError(v5, 1346924643, "", [(__CFString *)@"Orientation" UTF8String], "Field should be a quaternion (4 float array).");
                  }
                }

LABEL_140:
                strncpy((v5 + 8), v212, 0x80uLL);

                goto LABEL_179;
              }

              if (__src[1] != 1)
              {
                if (__src[1])
                {
                  goto LABEL_106;
                }

                goto LABEL_179;
              }

              v23 = v16;
              memset(&__src[4], 0, 416);
              v24 = v23;
              v25 = @"DistanceModelType";
              v26 = @"DistanceModelType";
              v27 = [(__CFString *)v24 objectForKeyedSubscript:@"DistanceModelType"];
              if (!v27)
              {
                LOBYTE(__src[4]) = 0;
                v40 = v24;
                goto LABEL_55;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                Phase::ParserSetParseError(v5, 1346924643, "", [(__CFString *)@"DistanceModelType" UTF8String], "Field should be a string");

                goto LABEL_165;
              }

              DistanceModelType = GetDistanceModelType(v27);
              LOBYTE(__src[4]) = DistanceModelType;

              if (DistanceModelType != 2)
              {
                if (DistanceModelType != 1 || (Phase::ReadFloatTypeWithDefault<double>(v5, v24, @"RolloffFactor", &__src[5], 1.0, 0.0, 1.79769313e308) & 1) != 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_165;
              }

              LODWORD(__src[6]) = 0;
              v171 = 0;
              OptionalChildArray = Phase::GetOptionalChildArray(v5, v24, @"EnvelopeSegments", &v171);
              v74 = v171;
              v75 = v74;
              if ((OptionalChildArray & 1) == 0)
              {
                Phase::ParserSetParseError(v5, 1346924643, v212, [@"EnvelopeSegments" UTF8String], "Submix envelope segment array object must be an array");

                goto LABEL_166;
              }

              v178 = 0u;
              v179 = 0u;
              v176 = 0u;
              v177 = 0u;
              v25 = v74;
              v76 = [(__CFString *)v25 countByEnumeratingWithState:&v176 objects:v214 count:16];
              if (!v76)
              {
                goto LABEL_134;
              }

              v77 = 0;
              v78 = *v177;
LABEL_124:
              v79 = 0;
              while (1)
              {
                if (*v177 != v78)
                {
                  objc_enumerationMutation(v25);
                }

                v80 = *(*(&v176 + 1) + 8 * v79);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  Phase::ParserSetParseError(v5, 1346924643, v212, [@"EnvelopeSegments" UTF8String], "Submix envelope segment object must be a dictionary");
                  goto LABEL_162;
                }

                if (v77 >= 0x11)
                {
                  break;
                }

                v81 = &__src[3 * v77 + 7];
                if ((Phase::ReadFloatTypeWithDefault<double>(v5, v80, @"Distance", v81, 1.79769313e308, 0.0, 1.79769313e308) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(v5, v80, @"Gain", v81 + 1, 1.0, 0.0, 1.0) & 1) == 0 || (Phase::ReadEnumWithDefault<PHASECurveType>(v5, v80, v81 + 2) & 1) == 0)
                {
                  strncpy((v5 + 8), v212, 0x80uLL);
                  goto LABEL_162;
                }

                v77 = ++LODWORD(__src[6]);
                if (v76 == ++v79)
                {
                  v76 = [(__CFString *)v25 countByEnumeratingWithState:&v176 objects:v214 count:16];
                  if (!v76)
                  {
LABEL_134:
                    v40 = v25;
LABEL_55:

LABEL_56:
                    if (Phase::ReadFloatTypeWithDefault<double>(v5, v24, @"FadeOutCullDistance", &__src[55], 1.79769313e308, 1.0, 1.79769313e308))
                    {

                      if (!Phase::ParseDirectivityModelParams(v5, v24, v212, &__src[56], 1) || !Phase::ParseDirectivityModelParams(v5, v24, v212, &__src[182], 0))
                      {
                        goto LABEL_179;
                      }

                      if (Phase::ReadFloatTypeWithDefault<double>(v5, v24, @"ListenerDopplerFactor", &__src[308], 1.0, 0.0, 1.79769313e308) & 1) != 0 && (Phase::ReadFloatTypeWithDefault<double>(v5, v24, @"SourceDopplerFactor", &__src[309], 1.0, 0.0, 1.79769313e308))
                      {
                        LODWORD(__src[310]) = 0;
                        HIDWORD(__src[318]) = 0;
                        v168 = 0;
                        v41 = Phase::GetOptionalChildArray(v5, v24, @"SpatialCategories", &v168);
                        v42 = v168;
                        v43 = v42;
                        if ((v41 & 1) == 0)
                        {
                          Phase::ParserSetParseError(v5, 1346924643, v212, [@"SpatialCategories" UTF8String], "Submix spatial categories object must be an array");

                          goto LABEL_179;
                        }

                        v210 = 0u;
                        v209 = 0u;
                        memset(buf, 0, sizeof(buf));
                        v149 = v42;
                        v44 = [v149 countByEnumeratingWithState:buf objects:&v204 count:16];
                        if (!v44)
                        {
                          goto LABEL_101;
                        }

                        v45 = 0;
                        v46 = **&buf[16];
                        v135 = **&buf[16];
LABEL_64:
                        v47 = 0;
                        v136 = v44;
                        while (2)
                        {
                          if (**&buf[16] != v46)
                          {
                            objc_enumerationMutation(v149);
                          }

                          v48 = *(*&buf[8] + 8 * v47);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            if (v45 >= 9)
                            {
                              Phase::ParserSetParseError(v5, 1346924646, v212, [@"SpatialCategories" UTF8String], "Too many spatial categories. Max = %d");
                            }

                            else if (Phase::ReadString(v5, v48, @"Category", v214, 0x80uLL, 0))
                            {
                              v49 = &__src[53 * v45 + 319];
                              *(v49 + 9) = 0;
                              v50 = v48;
                              v51 = @"Category";
                              v52 = [v50 objectForKeyedSubscript:@"Category"];
                              if (v52)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  SpatialCategory = GetSpatialCategory(v52);
                                  *v49 = SpatialCategory;
                                  if (SpatialCategory)
                                  {
                                    v138 = v47;

                                    if ((Phase::ReadFloatTypeWithDefault<double>(v5, v50, @"Send", v49 + 1, 1.0, 0.0, 1.0) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(v5, v50, @"SendHF", v49 + 2, 1.0, 0.0, 1.0) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(v5, v50, @"SendLF", v49 + 3, 1.0, 0.0, 1.0) & 1) == 0 || (Phase::ReadParamIdx(v5, v50, @"SendParameterName", &v180, v49 + 32, v160) & 1) == 0 || (Phase::ReadParamIdx(v5, v50, @"SendHFParameterName", &v180, v49 + 33, v160) & 1) == 0 || (Phase::ReadParamIdx(v5, v50, @"SendLFParameterName", &v180, v49 + 34, v160) & 1) == 0)
                                    {
                                      goto LABEL_177;
                                    }

                                    v167 = 0;
                                    OptionalChildDictionary = Phase::GetOptionalChildDictionary(v5, v50, @"TweakParams", &v167);
                                    v55 = v167;
                                    v56 = v55;
                                    if ((OptionalChildDictionary & 1) == 0)
                                    {
                                      Phase::ParserSetParseError(v5, 1346924643, v212, v214, "Submix category tweak param object must be a dictionary");
LABEL_159:

                                      break;
                                    }

                                    v165 = 0u;
                                    v166 = 0u;
                                    v163 = 0u;
                                    v164 = 0u;
                                    v137 = v55;
                                    v147 = v55;
                                    v57 = [v147 countByEnumeratingWithState:&v163 objects:&v200 count:16];
                                    if (v57)
                                    {
                                      v143 = *v164;
                                      while (2)
                                      {
                                        for (j = 0; j != v57; ++j)
                                        {
                                          if (*v164 != v143)
                                          {
                                            objc_enumerationMutation(v147);
                                          }

                                          v59 = *(*(&v163 + 1) + 8 * j);
                                          v60 = *(v49 + 9);
                                          if (v160 && (Phase::AddStringToPool(v5, v160, *(*(&v163 + 1) + 8 * j)) & 1) == 0)
                                          {
LABEL_153:
                                            v89 = v59;
                                            v86 = [v59 UTF8String];
                                            v85 = (v5 + 8);
LABEL_154:
                                            strncpy(v85, v86, 0x80uLL);
                                            goto LABEL_158;
                                          }

                                          v62 = &v49[3 * v60 + 5];
                                          if ([v59 hasPrefix:@"metaparam_"])
                                          {
                                            v64 = [v59 substringFromIndex:{objc_msgSend(@"metaparam_", "length")}];
                                            if (v160)
                                            {
                                              if ((Phase::AddStringToPool(v5, v160, v59) & 1) == 0)
                                              {
                                                goto LABEL_156;
                                              }

                                              if ((Phase::AddStringToPool(v5, v160, v64) & 1) == 0)
                                              {
                                                v59 = v64;
LABEL_156:
                                                v90 = v59;
                                                v87 = [v59 UTF8String];
LABEL_157:
                                                strncpy((v5 + 8), v87, 0x80uLL);

LABEL_158:
                                                v56 = v137;
                                                goto LABEL_159;
                                              }
                                            }

                                            *v62 = Phase::GetStringHashId(v64, v63);
                                            *(v62 + 8) = 0;
                                            if (!Phase::ReadParamIdx(v5, v147, v59, &v180, (v62 + 16), v160))
                                            {
                                              v87 = v212;
                                              goto LABEL_157;
                                            }
                                          }

                                          else
                                          {
                                            if (v160 && (Phase::AddStringToPool(v5, v160, v59) & 1) == 0)
                                            {
                                              goto LABEL_153;
                                            }

                                            *v62 = Phase::GetStringHashId(v59, v61);
                                            if ((Phase::ReadFloatTypeWithDefault<double>(v5, v147, v59, (v62 + 8), 1.0, -INFINITY, INFINITY) & 1) == 0)
                                            {
                                              v85 = (v5 + 8);
                                              v86 = v212;
                                              goto LABEL_154;
                                            }

                                            *(v62 + 16) = -1;
                                          }

                                          ++*(v49 + 9);
                                        }

                                        v57 = [v147 countByEnumeratingWithState:&v163 objects:&v200 count:16];
                                        if (v57)
                                        {
                                          continue;
                                        }

                                        break;
                                      }
                                    }

                                    v45 = ++HIDWORD(__src[318]);
                                    v47 = v138 + 1;
                                    v46 = v135;
                                    if (v138 + 1 != v136)
                                    {
                                      continue;
                                    }

                                    v44 = [v149 countByEnumeratingWithState:buf objects:&v204 count:16];
                                    if (v44)
                                    {
                                      goto LABEL_64;
                                    }

LABEL_101:

LABEL_105:
LABEL_106:
                                    v65 = *(&v197 + 1);
                                    if (*(&v197 + 1) >= v198)
                                    {
                                      v67 = v197;
                                      v68 = *(&v197 + 1) - v197;
                                      v69 = 0x74CD59ED64F3F0D7 * ((*(&v197 + 1) - v197) >> 3) + 1;
                                      if (v69 > 0xB068BE30ED0CBLL)
                                      {
                                        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                                      }

                                      if (0xE99AB3DAC9E7E1AELL * ((v198 - v197) >> 3) > v69)
                                      {
                                        v69 = 0xE99AB3DAC9E7E1AELL * ((v198 - v197) >> 3);
                                      }

                                      if ((0x74CD59ED64F3F0D7 * ((v198 - v197) >> 3)) >= 0x58345F1876865)
                                      {
                                        v70 = 0xB068BE30ED0CBLL;
                                      }

                                      else
                                      {
                                        v70 = v69;
                                      }

                                      if (v70)
                                      {
                                        if (v70 <= 0xB068BE30ED0CBLL)
                                        {
                                          operator new();
                                        }

                                        std::__throw_bad_array_new_length[abi:ne200100]();
                                      }

                                      v71 = (8 * ((*(&v197 + 1) - v197) >> 3));
                                      memcpy(v71, __src, 0x1738uLL);
                                      v66 = v71 + 5944;
                                      v72 = &v71[-v68];
                                      memcpy(v72, v67, v68);
                                      *&v197 = v72;
                                      *(&v197 + 1) = v66;
                                      v198 = 0;
                                      if (v67)
                                      {
                                        operator delete(v67);
                                      }
                                    }

                                    else
                                    {
                                      memcpy(*(&v197 + 1), __src, 0x1738uLL);
                                      v66 = (v65 + 5944);
                                    }

                                    *(&v197 + 1) = v66;
                                    v13 = v153 + 1;
                                    if (v153 + 1 == v145)
                                    {
                                      v12 = [obj countByEnumeratingWithState:&v172 objects:v213 count:16];
                                      v82 = 1;
                                      if (!v12)
                                      {
                                        goto LABEL_180;
                                      }

                                      goto LABEL_12;
                                    }

                                    goto LABEL_13;
                                  }

                                  v91 = [(__CFString *)@"Category" UTF8String];
                                  [(__CFString *)@"Category" UTF8String];
                                  v92 = v52;
                                  [(NSString *)v52 UTF8String];
                                  Phase::ParserSetParseError(v5, 1346924643, "", v91, "Field is bad %s - %s");
                                }

                                else
                                {
                                  Phase::ParserSetParseError(v5, 1346924643, "", [(__CFString *)@"Category" UTF8String], "Field should be a string");
                                }
                              }

                              else
                              {
                                Phase::ParserSetParseError(v5, 1346924642, "", [(__CFString *)@"Category" UTF8String], "");
                              }

LABEL_177:
                              strncpy((v5 + 8), v212, 0x80uLL);
                            }

                            else
                            {
                              strncpy((v5 + 8), v212, 0x80uLL);
                              *(v5 + 200) = xmmword_23A596821;
                              *(v5 + 216) = unk_23A596831;
                              *(v5 + 232) = xmmword_23A596841;
                              *(v5 + 248) = unk_23A596851;
                              strcpy((v5 + 136), "<SpatialCategoryStruct>");
                              *(v5 + 160) = unk_23A5967F9;
                              *(v5 + 168) = xmmword_23A596801;
                              *(v5 + 184) = unk_23A596811;
                            }
                          }

                          else
                          {
                            Phase::ParserSetParseError(v5, 1346924643, v212, [@"SpatialCategories" UTF8String], "Submix spatial categories object must be a dictionary");
                          }

                          break;
                        }

                        goto LABEL_179;
                      }

LABEL_147:
                      strncpy((v5 + 8), v212, 0x80uLL);
                      goto LABEL_179;
                    }

LABEL_165:
                    strncpy((v5 + 8), v212, 0x80uLL);
                    goto LABEL_166;
                  }

                  goto LABEL_124;
                }
              }

              Phase::ParserSetParseError(v5, 1346924646, v212, [@"EnvelopeSegments" UTF8String], "Too many submix envelope segments.  Max = %d");
LABEL_162:

LABEL_166:
LABEL_179:
              v82 = 0;
LABEL_180:

              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v169);
              if (v82)
              {
                v93 = [v7 objectForKeyedSubscript:@"Parameters"];
                v94 = Phase::BuildParameters(v5, v93, &v188, v160);

                if (v94)
                {
                  v95 = [v7 objectForKeyedSubscript:@"Nodes"];
                  v96 = v159;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v152 = v96;
                    v158 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    obja = objc_alloc_init(MEMORY[0x277CBEB58]);
                    v207 = 0u;
                    v205 = 0u;
                    v206 = 0u;
                    v204 = 0u;
                    v154 = v95;
                    v97 = [v154 countByEnumeratingWithState:&v204 objects:__src count:16];
                    if (v97)
                    {
                      v98 = *v205;
LABEL_185:
                      v99 = 0;
                      while (1)
                      {
                        if (*v205 != v98)
                        {
                          objc_enumerationMutation(v154);
                        }

                        v100 = *(*(&v204 + 1) + 8 * v99);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          Phase::ParserSetParseError(v5, 1346924643, &v180, [@"Nodes" UTF8String], "Member of array is not a structure");
                          goto LABEL_231;
                        }

                        v101 = [v100 objectForKeyedSubscript:@"Name"];
                        if (!v101 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          Phase::ParserSetParseError(v5, 1346924646, &v180, [@"Name" UTF8String], "Node has a missing or bad node name");

LABEL_231:
                          v122 = v154;
                          goto LABEL_243;
                        }

                        v102 = [v100 objectForKeyedSubscript:@"Type"];
                        if (!v102)
                        {
                          break;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          break;
                        }

                        v103 = [v158 objectForKey:v101];
                        v104 = v103 == 0;

                        if (!v104)
                        {
                          v121 = v101;
                          Phase::ParserSetParseError(v5, 1346924646, &v180, [v101 UTF8String], "Node array contains multiple nodes named the same thing");
                          goto LABEL_230;
                        }

                        [v158 setObject:v100 forKeyedSubscript:v101];
                        [obja addObject:v101];

                        if (v97 == ++v99)
                        {
                          v97 = [v154 countByEnumeratingWithState:&v204 objects:__src count:16];
                          if (v97)
                          {
                            goto LABEL_185;
                          }

                          goto LABEL_196;
                        }
                      }

                      v120 = v101;
                      Phase::ParserSetParseError(v5, 1346924646, &v180, [v101 UTF8String], "Node has a missing or bad type");
LABEL_230:

                      goto LABEL_231;
                    }

LABEL_196:

                    v202 = 0u;
                    v203 = 0u;
                    v200 = 0u;
                    v201 = 0u;
                    v105 = v154;
                    v144 = v105;
                    v106 = [v105 countByEnumeratingWithState:&v200 objects:v214 count:16];
                    if (!v106)
                    {
                      goto LABEL_224;
                    }

                    v142 = *v201;
LABEL_198:
                    v107 = 0;
                    v141 = v106;
LABEL_199:
                    if (*v201 != v142)
                    {
                      objc_enumerationMutation(v105);
                    }

                    v108 = *(*(&v200 + 1) + 8 * v107);
                    v109 = [v108 objectForKeyedSubscript:@"Name"];
                    v148 = v109;
                    if (v109 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v110 = [v108 objectForKeyedSubscript:@"Type"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        NodeType = Phase::GetNodeType(v110, v111);
                        v112 = [v108 objectForKeyedSubscript:@"Children"];
                        if (!v112)
                        {
                          goto LABEL_222;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v140 = v108;
                          v178 = 0u;
                          v179 = 0u;
                          v176 = 0u;
                          v177 = 0u;
                          v113 = v112;
                          v114 = [v113 countByEnumeratingWithState:&v176 objects:v213 count:16];
                          v139 = v107;
                          if (!v114)
                          {
                            goto LABEL_221;
                          }

                          v115 = *v177;
LABEL_208:
                          v116 = 0;
                          while (1)
                          {
                            if (*v177 != v115)
                            {
                              objc_enumerationMutation(v113);
                            }

                            v117 = *(*(&v176 + 1) + 8 * v116);
                            if ((NodeType - 2) >= 3)
                            {
                              if (NodeType != 5)
                              {
                                goto LABEL_232;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                v123 = [v140 objectForKeyedSubscript:@"Name"];
                                v131 = v123;
                                Phase::ParserSetParseError(v5, 1346924643, [v123 UTF8String], objc_msgSend(@"Children", "UTF8String"), "Child list must be an array of strings");
                                goto LABEL_241;
                              }

                              v118 = v117;
                            }

                            else
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                v123 = [v140 objectForKeyedSubscript:@"Name"];
                                v127 = v123;
                                Phase::ParserSetParseError(v5, 1346924643, [v123 UTF8String], objc_msgSend(@"Children", "UTF8String"), "Child object must be a struct");
LABEL_241:

                                goto LABEL_242;
                              }

                              v118 = [v117 objectForKeyedSubscript:@"SubTreeNodeName"];
                            }

                            v119 = v118;
                            if (!v118)
                            {
LABEL_232:
                              v123 = [v140 objectForKeyedSubscript:@"Name"];
                              v124 = v123;
                              Phase::ParserSetParseError(v5, 1346924641, [v123 UTF8String], "", "SubtreeNodeName was not found");
                              goto LABEL_241;
                            }

                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              v125 = [v140 objectForKeyedSubscript:@"Name"];
                              v126 = v125;
                              Phase::ParserSetParseError(v5, 1346924646, [v125 UTF8String], "", "SubtreeNodeName is not a valid string");

                              v123 = v119;
                              goto LABEL_241;
                            }

                            [obja removeObject:v119];

                            if (v114 == ++v116)
                            {
                              v114 = [v113 countByEnumeratingWithState:&v176 objects:v213 count:16];
                              if (v114)
                              {
                                goto LABEL_208;
                              }

LABEL_221:

                              v107 = v139;
LABEL_222:

                              ++v107;
                              v105 = v144;
                              if (v107 == v141)
                              {
                                v106 = [v144 countByEnumeratingWithState:&v200 objects:v214 count:16];
                                if (!v106)
                                {
LABEL_224:

                                  Phase::MsgBuffer::Init((&v189 + 8));
                                }

                                goto LABEL_198;
                              }

                              goto LABEL_199;
                            }
                          }
                        }

                        v133 = [v108 objectForKeyedSubscript:@"Name"];
                        v134 = v133;
                        Phase::ParserSetParseError(v5, 1346924643, [v133 UTF8String], objc_msgSend(@"Children", "UTF8String"), "Children field must be an array");
                      }

                      else
                      {
                        v128 = v109;
                        v129 = Phase::ParserSetParseError(v5, 1346924643, &v180, [v109 UTF8String], "NodeType is not a valid string");
                        v130 = **(Phase::Logger::GetInstance(v129) + 16);
                        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          *&buf[4] = "ParserCore.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 2124;
                          _os_log_impl(&dword_23A302000, v130, OS_LOG_TYPE_ERROR, "%25s:%-5d NodeType is not a valid string", buf, 0x12u);
                        }
                      }
                    }

                    else
                    {
                      Phase::ParserSetParseError(v5, 1346924646, &v180, [@"Name" UTF8String], "Node has a missing or bad node name");
                    }

LABEL_242:
                    v122 = v144;
LABEL_243:
                  }

                  else
                  {
                    Phase::ParserSetParseError(v5, 1346924643, &v180, [@"Nodes" UTF8String], "Field should be an array");
                  }
                }
              }

              goto LABEL_244;
            }

            v83 = [(__CFString *)@"Type" UTF8String];
            [(__CFString *)@"Type" UTF8String];
            v84 = v18;
            [(NSString *)v18 UTF8String];
            Phase::ParserSetParseError(v5, 1346924643, "", v83, "Field is bad %s - %s");
          }

          else
          {
            Phase::ParserSetParseError(v5, 1346924643, "", [(__CFString *)@"Type" UTF8String], "Field should be a string");
          }
        }

        else
        {
          Phase::ParserSetParseError(v5, 1346924642, "", [(__CFString *)@"Type" UTF8String], "");
        }

        goto LABEL_147;
      }

      Phase::ParserSetParseError(v5, 1346924643, "", [@"Submixes" UTF8String], "Submix array object must be an array");
    }

LABEL_244:
    Phase::ActionTreeBuilder::~ActionTreeBuilder(&v180);
    goto LABEL_245;
  }

  Phase::ParserSetParseError(v5, 1346924643, "<ActionTreeStruct>", "", "Actiontree object must be a structure");
LABEL_245:

  return 0;
}

void sub_23A44A110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _Unwind_Exception *exception_objecta, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Phase::ActionTreeBuilder::~ActionTreeBuilder(&a66);

  _Unwind_Resume(a1);
}

uint64_t Phase::ReadString(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = a3;
  v12 = [a2 objectForKeyedSubscript:v11];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 lengthOfBytesUsingEncoding:4] <= a5)
      {
        [v12 getCString:a4 maxLength:a5 encoding:4];
        if (!a6 || (Phase::AddStringToPool(a1, a6, v12) & 1) != 0)
        {
          v14 = 1;
          goto LABEL_8;
        }

        strncpy((a1 + 8), [v12 UTF8String], 0x80uLL);
      }

      else
      {
        v13 = [v11 UTF8String];
        [v12 UTF8String];
        strlen([v12 UTF8String]);
        Phase::ParserSetParseError(a1, 1346924645, "", v13, "Field too long: %s must be length %d or shorter. Current size: %d");
      }
    }

    else
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [v11 UTF8String], "Field should be a string");
    }
  }

  else
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [v11 UTF8String], "");
  }

  v14 = 0;
LABEL_8:

  return v14;
}

uint64_t Phase::BuildParameters(uint64_t a1, void *a2, void *a3, void *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v61 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [@"Parameters" UTF8String], "Parameter array object must be an array");
    v45 = 0;
    goto LABEL_110;
  }

  memset(v74, 0, sizeof(v74));
  v75 = 1065353216;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (!v8)
  {
    v45 = 1;
    goto LABEL_109;
  }

  v58 = a3;
  v59 = *v71;
  while (2)
  {
    v9 = 0;
    v57 = v8;
    do
    {
      if (*v71 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v70 + 1) + 8 * v9);
      memset(__src, 0, sizeof(__src));
      if ((Phase::ReadString(a1, v10, @"Name", __s, 0x80uLL, 0) & 1) == 0)
      {
        *(a1 + 72) = xmmword_23A5968A2;
        *(a1 + 88) = unk_23A5968B2;
        *(a1 + 104) = xmmword_23A5968C2;
        *(a1 + 120) = unk_23A5968D2;
        strcpy((a1 + 8), "<ParameterStruct>");
        *(a1 + 26) = 0;
        *(a1 + 28) = 0;
        *(a1 + 32) = unk_23A59687A;
        *(a1 + 40) = xmmword_23A596882;
        *(a1 + 56) = unk_23A596892;
        goto LABEL_108;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v74, __p);
      if (v68 < 0)
      {
        operator delete(__p[0]);
      }

      if (v11)
      {
        Phase::ParserSetParseError(a1, 1346924646, "MetaParameters", __s, "Mixer array contains multiple mixers named the same thing");
        goto LABEL_108;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v74, __p);
      if (v68 < 0)
      {
        operator delete(__p[0]);
      }

      if ((Phase::ReadPhaseId(a1, v10, @"Name", __src, a4) & 1) == 0)
      {
        goto LABEL_97;
      }

      v12 = v10;
      v13 = @"Type";
      v14 = [v12 objectForKeyedSubscript:@"Type"];
      if (!v14)
      {
        Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"Type" UTF8String], "");
        goto LABEL_92;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"Type" UTF8String], "Field should be a string");
        goto LABEL_92;
      }

      ParamType = Phase::GetParamType(v14, v15);
      DWORD2(__src[0]) = ParamType;
      if (!ParamType)
      {
        v49 = [(__CFString *)@"Type" UTF8String];
        [(__CFString *)@"Type" UTF8String];
        v50 = v14;
        [(Phase *)v14 UTF8String];
        Phase::ParserSetParseError(a1, 1346924643, "", v49, "Field is bad %s - %s");
LABEL_92:

LABEL_97:
        strncpy((a1 + 8), __s, 0x80uLL);
LABEL_108:
        v45 = 0;
        goto LABEL_109;
      }

      v17 = v12;
      v18 = @"InputType";
      v19 = [v17 objectForKeyedSubscript:@"InputType"];
      if (!v19)
      {
        Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"InputType" UTF8String], "");
LABEL_96:

        goto LABEL_97;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"InputType" UTF8String], "Field should be a string");
        goto LABEL_96;
      }

      InputParamType = Phase::GetInputParamType(v19, v20);
      HIDWORD(__src[0]) = InputParamType;
      if (!InputParamType)
      {
        v51 = [(__CFString *)@"InputType" UTF8String];
        [(__CFString *)@"InputType" UTF8String];
        v52 = v19;
        [v19 UTF8String];
        Phase::ParserSetParseError(a1, 1346924643, "", v51, "Field is bad %s - %s");
        goto LABEL_96;
      }

      if (ParamType == 3)
      {
        if ((Phase::ReadEnumWithoutDefault<Phase::OutputMetaParamType>(a1, v17, &__src[1]) & 1) == 0 || (Phase::ReadPhaseId(a1, v17, @"LinkedInputParameter", &__src[1] + 1, a4) & 1) == 0)
        {
          goto LABEL_97;
        }

        v25 = [v17 objectForKeyedSubscript:@"DiscreteValues"];
        if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          DWORD2(__src[3]) = 0;
          v26 = v25;
          v56 = v26;
          if ([v26 count] >= 0x10)
          {
            Phase::ParserSetParseError(a1, 1346924646, __s, __s, "Discrete value range has too many segments %d > %d", [v26 count], 16);
          }

          else
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v23 = v26;
            v27 = [v23 countByEnumeratingWithState:&v62 objects:v76 count:16];
            if (v27)
            {
              v28 = 0;
              v29 = *v63;
LABEL_37:
              v30 = 0;
              while (1)
              {
                if (*v63 != v29)
                {
                  objc_enumerationMutation(v23);
                }

                v31 = *(*(&v62 + 1) + 8 * v30);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  break;
                }

                if (HIDWORD(__src[0]) == 2)
                {
                  PhaseId = Phase::ReadPhaseId(a1, v31, @"InputValue", &__src[v28 + 4], a4);
                }

                else
                {
                  if (HIDWORD(__src[0]) != 1)
                  {
                    v46 = "";
                    v47 = "Invalid input type for dicrete mapped parameter";
                    goto LABEL_100;
                  }

                  PhaseId = Phase::ReadFloatType<double>(a1, v31, @"InputValue", &__src[v28 + 4]);
                }

                if ((PhaseId & 1) == 0)
                {
                  goto LABEL_82;
                }

                if (SLODWORD(__src[1]) <= 1)
                {
                  if (LODWORD(__src[1]) != 1)
                  {
                    goto LABEL_99;
                  }

                  if ((Phase::ReadFloatType<double>(a1, v31, @"OutputValue", &__src[DWORD2(__src[3]) + 4] + 1) & 1) == 0)
                  {
LABEL_82:
                    strncpy((a1 + 8), __s, 0x80uLL);
LABEL_105:

                    goto LABEL_106;
                  }

                  FloatTypeWith = Phase::ReadFloatTypeWithDefault<double>(a1, v17, @"DefaultValue", &__src[3], 0.0, -INFINITY, INFINITY);
                }

                else
                {
                  if (LODWORD(__src[1]) != 2)
                  {
                    if (LODWORD(__src[1]) == 3)
                    {
                      v46 = "";
                      v47 = "ParamSet params are not yet implemented";
LABEL_103:
                      v54 = 1346924649;
                      v48 = __s;
                      v53 = a1;
                    }

                    else
                    {
                      if (LODWORD(__src[1]) == 4)
                      {
                        v46 = "";
                        v47 = "InsertFx params are not yet implemented";
                        goto LABEL_103;
                      }

LABEL_99:
                      v46 = "";
                      v47 = "Invalid output type for mapped range parameter";
LABEL_100:
                      v48 = __s;
LABEL_101:
                      v53 = a1;
                      v54 = 1346924643;
                    }

                    Phase::ParserSetParseError(v53, v54, v46, v48, v47);
                    goto LABEL_105;
                  }

                  if ((Phase::ReadPhaseId(a1, v31, @"OutputValue", &__src[DWORD2(__src[3]) + 4] + 1, a4) & 1) == 0)
                  {
                    goto LABEL_82;
                  }

                  FloatTypeWith = Phase::ReadPhaseIdWithDefault(a1, v17, @"DefaultValue", &__src[3], a4);
                }

                if ((FloatTypeWith & 1) == 0)
                {
                  goto LABEL_82;
                }

                v28 = ++DWORD2(__src[3]);
                if (v27 == ++v30)
                {
                  v27 = [v23 countByEnumeratingWithState:&v62 objects:v76 count:16];
                  if (v27)
                  {
                    goto LABEL_37;
                  }

                  v34 = v28 == 0;

                  a3 = v58;
                  if (!v34)
                  {

                    goto LABEL_29;
                  }

                  goto LABEL_115;
                }
              }

              v48 = [@"DiscreteValues" UTF8String];
              v47 = "Range array object must be a structure";
              v46 = __s;
              goto LABEL_101;
            }

LABEL_115:
            Phase::ParserSetParseError(a1, 1346924641, __s, "", "Mapped param doesn't have any ranges");
LABEL_106:
            v26 = v56;
          }
        }

        else
        {
          Phase::ParserSetParseError(a1, 1346924643, __s, [@"DiscreteValues" UTF8String], "Range array object must be an array");
        }

        goto LABEL_108;
      }

      if (ParamType == 2)
      {
        if ((Phase::ReadEnumWithoutDefault<Phase::OutputMetaParamType>(a1, v17, &__src[1]) & 1) == 0 || (Phase::ReadPhaseId(a1, v17, @"LinkedInputParameter", &__src[1] + 1, a4) & 1) == 0)
        {
          goto LABEL_97;
        }

        if (*(__src + 12) != 0x100000001)
        {
          Phase::ParserSetParseError(a1, 1346924643, "", __s, "Invalid input/output type for mapped range parameter");
        }

        v66 = 0;
        ChildDictionary = Phase::GetChildDictionary(a1, v17, &v66);
        v23 = v66;
        if ((ChildDictionary & 1) == 0 || !Phase::ParseEnvelope(a1, v23, __s, &__src[3] + 8))
        {
          strncpy((a1 + 8), __s, 0x80uLL);

          goto LABEL_108;
        }

        v24 = *(&__src[5] + 3 * (DWORD2(__src[4]) - 1));
        *&__src[2] = *(&__src[3] + 1);
        *(&__src[2] + 1) = v24;
LABEL_29:
      }

      else
      {
        if (InputParamType == 1)
        {
          if ((Phase::ReadFloatTypeWithDefault<double>(a1, v17, @"RangeMin", &__src[2], -INFINITY, -INFINITY, INFINITY) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(a1, v17, @"RangeMax", &__src[2] + 1, INFINITY, -INFINITY, INFINITY) & 1) == 0)
          {
            goto LABEL_97;
          }

          PhaseIdWithDefault = Phase::ReadFloatTypeWithDefault<double>(a1, v17, @"DefaultValue", &__src[3], 0.0, -INFINITY, INFINITY);
        }

        else
        {
          PhaseIdWithDefault = Phase::ReadPhaseIdWithDefault(a1, v17, @"DefaultValue", &__src[3], a4);
        }

        if ((PhaseIdWithDefault & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      v37 = a3[1];
      v36 = a3[2];
      if (v37 >= v36)
      {
        v39 = *a3;
        v40 = v37 - *a3;
        v41 = 0x34F72C234F72C235 * (v40 >> 4) + 1;
        if (v41 > 0x8D3DCB08D3DCB0)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v42 = 0x34F72C234F72C235 * ((v36 - v39) >> 4);
        if (2 * v42 > v41)
        {
          v41 = 2 * v42;
        }

        if (v42 >= 0x469EE58469EE58)
        {
          v43 = 0x8D3DCB08D3DCB0;
        }

        else
        {
          v43 = v41;
        }

        if (v43)
        {
          if (v43 <= 0x8D3DCB08D3DCB0)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        memcpy((16 * (v40 >> 4)), __src, 0x1D0uLL);
        v38 = 16 * (v40 >> 4) + 464;
        v44 = (16 * (v40 >> 4) - v40);
        memcpy(v44, v39, v40);
        *v58 = v44;
        v58[1] = v38;
        v58[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        memcpy(a3[1], __src, 0x1D0uLL);
        v38 = v37 + 464;
      }

      v58[1] = v38;
      a3 = v58;
      ++v9;
    }

    while (v9 != v57);
    v8 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
    v45 = 1;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_109:

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v74);
LABEL_110:

  return v45;
}

void sub_23A44B378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&STACK[0x2D0]);

  _Unwind_Resume(a1);
}

uint64_t Phase::BuildObjArray<Phase::MetaParameter>(void *a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    is_mul_ok(0x34F72C234F72C235 * (v2 >> 4), 0x1D0uLL);
    operator new[]();
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {

    JUMPOUT(0x23EE86470);
  }

  return result;
}

uint64_t Phase::BuildObjArray<unsigned long long>(void *a1, uint64_t *a2)
{
  if (a1[1] != *a1)
  {
    operator new[]();
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {

    JUMPOUT(0x23EE86470);
  }

  return result;
}

uint64_t Phase::LoadAssetDef(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "<AssetDefinition>", "", "Asset definition object must be a structure");
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if (Phase::ReadString(a1, v7, @"Name", __src, 0x80uLL, 0))
  {
    if ((Phase::ReadPhaseId(a1, v7, @"Name", a3, a4) & 1) == 0 || (Phase::ReadString(a1, v7, @"Path", a3 + 8, 0x400uLL, a4) & 1) == 0)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v9 = @"AssetType";
    v10 = [v8 objectForKeyedSubscript:@"AssetType"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"AssetType" UTF8String], "Field should be a string");

        goto LABEL_20;
      }

      AssetType = Phase::GetAssetType(v10, v11);
    }

    else
    {
      AssetType = 0;
    }

    *(a3 + 1032) = AssetType;

    v14 = v8;
    v15 = @"NormalizationMode";
    v16 = [v14 objectForKeyedSubscript:@"NormalizationMode"];
    if (!v16)
    {
      NormalizationMode = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NormalizationMode = Phase::GetNormalizationMode(v16, v17);
LABEL_16:
      *(a3 + 1040) = NormalizationMode;

      if (Phase::ReadAudioChannelLayoutTag(a1, v14, @"ChannelLayout", (a3 + 1056)) & 1) != 0 && (Phase::ReadFloatTypeWithDefault<double>(a1, v14, @"TargetLKFS", (a3 + 1048), -12.0, -100.0, 0.0))
      {
        v13 = 1;
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"NormalizationMode" UTF8String], "Field should be a string");

LABEL_20:
    strncpy((a1 + 8), __src, 0x80uLL);
    goto LABEL_21;
  }

  v13 = 0;
  *(a1 + 72) = xmmword_23A596923;
  *(a1 + 88) = unk_23A596933;
  *(a1 + 104) = xmmword_23A596943;
  *(a1 + 120) = unk_23A596953;
  strcpy((a1 + 8), "<AssetDefinition>");
  *(a1 + 26) = unk_23A5968F5;
  *(a1 + 28) = unk_23A5968F7;
  *(a1 + 32) = unk_23A5968FB;
  *(a1 + 40) = xmmword_23A596903;
  *(a1 + 56) = unk_23A596913;
LABEL_22:

  return v13;
}

uint64_t Phase::ReadPhaseId(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v9 objectForKeyedSubscript:v10];
  if (!v11)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [v10 UTF8String], "");
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [v10 UTF8String], "Field should be a string");
    goto LABEL_8;
  }

  *a4 = Phase::GetStringHashId(v11, v12);
  if (a5 && (Phase::AddStringToPool(a1, a5, v11) & 1) == 0)
  {
    strncpy((a1 + 8), [(Phase *)v11 UTF8String], 0x80uLL);
    goto LABEL_8;
  }

  v13 = 1;
LABEL_9:

  return v13;
}

uint64_t Phase::GetAssetType(Phase *this, NSString *a2)
{
  v2 = this;
  if (([(Phase *)v2 isEqualToString:@"resident"]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(Phase *)v2 isEqualToString:@"streamed"];
  }

  return v3;
}

uint64_t Phase::GetNormalizationMode(Phase *this, NSString *a2)
{
  v2 = this;
  if (([(Phase *)v2 isEqualToString:@"none"]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(Phase *)v2 isEqualToString:@"dynamic"];
  }

  return v3;
}

uint64_t Phase::ReadAudioChannelLayoutTag(uint64_t a1, void *a2, void *a3, unsigned int *a4)
{
  v7 = a3;
  v8 = [a2 objectForKeyedSubscript:v7];
  if (!v8)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [v7 UTF8String], "");
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [v7 UTF8String];
    v12 = "Field should be a stringified channel layout tag.";
    v13 = 1346924643;
LABEL_11:
    Phase::ParserSetParseError(a1, v13, "", v11, v12);
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
  LayoutTagFromString = Phase::ChannelLayout::GetLayoutTagFromString(__p);
  *a4 = LayoutTagFromString;
  if (v16 < 0)
  {
    operator delete(__p[0]);
    LayoutTagFromString = *a4;
  }

  if (LayoutTagFromString > 0xFFFEFFFF || (LayoutTagFromString & 0xFFFF0000) == 0x930000)
  {
    v11 = [v7 UTF8String];
    v12 = "Invalid Channel Layout name";
    v13 = 1346924646;
    goto LABEL_11;
  }

  v10 = 1;
LABEL_13:

  return v10;
}

void sub_23A44BE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::ReadFloatTypeWithDefault<double>(uint64_t a1, void *a2, void *a3, double *a4, double a5, double a6, double a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = v15;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [v14 UTF8String], "Field should be a number");
      v21 = 0;
      goto LABEL_11;
    }

    v15 = [(Phase::Logger *)v16 doubleValue];
    a5 = v17;
  }

  *a4 = a5;
  if (a5 < a6 || a5 > a7)
  {
    v18 = **(Phase::Logger::GetInstance(v15) + 16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v14 UTF8String];
      v20 = *a4;
      v23 = 136316418;
      v24 = "ParserCore.mm";
      v25 = 1024;
      v26 = 617;
      v27 = 2080;
      v28 = v19;
      v29 = 2048;
      v30 = v20;
      v31 = 2048;
      v32 = a6;
      v33 = 2048;
      v34 = a7;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d WARNING: %s %f is out of range [%f, %f]. Clamping...", &v23, 0x3Au);
    }

    *a4 = fmin(fmax(*a4, a6), a7);
  }

  v21 = 1;
LABEL_11:

  return v21;
}

uint64_t Phase::LoadChannelMapping(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "<ChannelMapping>", "", "ChannelMapping object must be a structure");
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if ((Phase::ReadString(a1, v7, @"Name", __src, 0x80uLL, 0) & 1) == 0)
  {
    v12 = 0;
    *(a1 + 72) = xmmword_23A5969A4;
    *(a1 + 88) = unk_23A5969B4;
    *(a1 + 104) = xmmword_23A5969C4;
    *(a1 + 120) = unk_23A5969D4;
    strcpy((a1 + 8), "<ChannelMapping>");
    *(a1 + 25) = unk_23A596975;
    *(a1 + 26) = unk_23A596976;
    *(a1 + 28) = unk_23A596978;
    *(a1 + 32) = unk_23A59697C;
    *(a1 + 40) = xmmword_23A596984;
    *(a1 + 56) = unk_23A596994;
    goto LABEL_19;
  }

  if ((Phase::ReadPhaseId(a1, v7, @"Name", a3, a4) & 1) == 0)
  {
LABEL_17:
    strncpy((a1 + 8), __src, 0x80uLL);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = @"NumInputChannels";
  v10 = [v8 objectForKeyedSubscript:@"NumInputChannels"];
  if (!v10)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"NumInputChannels" UTF8String], "");
LABEL_16:

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"NumInputChannels" UTF8String], "Field should be a number");
    goto LABEL_16;
  }

  *(a3 + 8) = [v10 longLongValue];

  if ((Phase::ReadPhaseId(a1, v8, @"OutputConfiguration", (a3 + 16), a4) & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = [v8 objectForKeyedSubscript:@"Matrix"];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    Phase::ParserSetParseError(a1, 1346924643, __src, [@"Matrix" UTF8String], "Matrix object must be an array");
    goto LABEL_22;
  }

  if ([v11 count] != *(a3 + 8))
  {
    Phase::ParserSetParseError(a1, 1346924641, __src, [@"NumInputChannels" UTF8String], "The NumInputChannels and number of rows in the matrix do not match");
    goto LABEL_22;
  }

  if ([v11 count] >= 0xD)
  {
    Phase::ParserSetParseError(a1, 1346924641, __src, [@"NumInputChannels" UTF8String], "Exceeded maximum number of input channels");
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v14)
  {
    v12 = 1;
    goto LABEL_50;
  }

  LODWORD(v15) = 0;
  v16 = *v46;
  v17 = a3 + 24;
  v39 = 0xFFFFFFFFLL;
  v36 = *v46;
  v32 = a3 + 24;
  while (2)
  {
    v37 = 0;
    v15 = v15;
    v40 = v17 + 96 * v15;
    v35 = v14;
    do
    {
      if (*v46 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v45 + 1) + 8 * v37);
      if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v29 = [@"Matrix" UTF8String];
        Phase::ParserSetParseError(a1, 1346924643, __src, v29, "Matrix row object must be an array", v33);
LABEL_48:
        v12 = 0;
        goto LABEL_50;
      }

      if (v39 == 0xFFFFFFFFLL)
      {
        v19 = [v18 count];
      }

      else
      {
        v20 = [v18 count];
        v19 = v39;
        if (v20 != v39)
        {
          v30 = [@"Matrix" UTF8String];
          v31 = "Inconsistant number of columns in matrix";
          goto LABEL_54;
        }
      }

      if (v19 >= 0xD)
      {
        v30 = [@"OutputConfiguration" UTF8String];
        v31 = "Exceeded maximum number of output channels";
LABEL_54:
        Phase::ParserSetParseError(a1, 1346924641, __src, v30, v31, v32);
        goto LABEL_48;
      }

      v39 = v19;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v21 = v18;
      v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v22)
      {
        v23 = 0;
        v24 = *v42;
        v34 = v15;
        while (2)
        {
          v25 = 0;
          v26 = v23;
          do
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v41 + 1) + 8 * v25);
            if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              Phase::ParserSetParseError(a1, 1346924643, __src, [@"Matrix" UTF8String], "Matrix object is not a number");

              goto LABEL_48;
            }

            [v27 floatValue];
            v23 = v26 + 1;
            *(v40 + 8 * v26) = v28;
            ++v25;
            ++v26;
          }

          while (v22 != v25);
          v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
          v15 = v34;
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      ++v15;
      v16 = v36;
      v40 += 96;
      ++v37;
    }

    while (v37 != v35);
    v12 = 1;
    v16 = v36;
    v17 = v32;
    v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_50:

LABEL_23:
LABEL_19:

  return v12;
}

id Phase::GetNSErrorFromParserError(uint64_t *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 17);
  if (*(a1 + 136))
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:@"%s : Struct: %s Field: %s" value:&stru_284D3D208 table:0];
    v6 = [v3 stringWithFormat:v5, a1 + 33, a1 + 1, v2];
  }

  else
  {
    v7 = *(a1 + 8) == 0;
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = v9;
    if (v7)
    {
      v5 = [v9 localizedStringForKey:@"%s" value:&stru_284D3D208 table:0];
      [v8 stringWithFormat:v5, a1 + 33];
    }

    else
    {
      v5 = [v9 localizedStringForKey:@"%s : Struct: %s" value:&stru_284D3D208 table:0];
      [v8 stringWithFormat:v5, a1 + 33, a1 + 1];
    }
    v6 = ;
  }

  v10 = v6;

  v12 = **(Phase::Logger::GetInstance(v11) + 16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *a1;
    v14 = [v10 UTF8String];
    if ((v13 - 1346924642) > 7)
    {
      v15 = "Parse Error";
    }

    else
    {
      v15 = off_278B4F688[v13 - 1346924642];
    }

    *buf = 136315906;
    v22 = "ParserCore.mm";
    v23 = 1024;
    v24 = 3314;
    v25 = 2080;
    v26 = v15;
    v27 = 2080;
    v28 = v14;
    _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: %s - %s", buf, 0x26u);
  }

  v19 = *MEMORY[0x277CCA450];
  v20 = v10;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v16];

  return v17;
}

void sub_23A44D1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 - 224);
  if (v9)
  {
    operator delete(v9);
  }

  std::unique_ptr<Phase::DataBundle>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void *std::unique_ptr<Phase::DataBundle>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[8];
    v2[8] = 0;
    if (v3)
    {
      MEMORY[0x23EE86470](v3, 0x1000C80D9B47DDELL);
    }

    v4 = v2[6];
    v2[6] = 0;
    if (v4)
    {
      MEMORY[0x23EE86470](v4, 0x1000C80281E3F58);
    }

    v5 = v2[4];
    v2[4] = 0;
    if (v5)
    {
      MEMORY[0x23EE86470](v5, 0x1000C8039DDB5B0);
    }

    v6 = v2[2];
    v2[2] = 0;
    if (v6)
    {
      std::default_delete<Phase::ActionTree []>::operator()[abi:ne200100]<Phase::ActionTree>((v2 + 2), v6);
    }

    MEMORY[0x23EE864A0](v2, 0x1020C40FCA6A2D1);
  }

  return a1;
}

void Phase::MakeActionTree(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  operator new();
}

void sub_23A44D504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<Phase::ActionTree>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

Phase::ActionTree **std::unique_ptr<Phase::ActionTree>::~unique_ptr[abi:ne200100](Phase::ActionTree **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::ActionTree::~ActionTree(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void Phase::MakeGlobalMetaParameters(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v10[65] = *MEMORY[0x277D85DE8];
  v7 = a1;
  memset(__p, 0, sizeof(__p));
  if (a3)
  {
    *a3 = 0;
  }

  if (Phase::BuildParameters(v10, v7, __p, a2))
  {
    *a4 = 0;
    Phase::BuildObjArray<Phase::MetaParameter>(__p, a4);
  }

  else
  {
    v8 = Phase::GetNSErrorFromParserError(v10);
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }

    *a4 = 0;
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_23A44D65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::GetStringHashId(Phase *this, NSString *a2)
{
  v2 = this;
  v3 = [(Phase *)v2 cStringUsingEncoding:4];
  if (v3 && (v4 = *v3, *v3))
  {
    v5 = v3 + 1;
    v6 = 0xCBF29CE484222325;
    do
    {
      v6 = 0x100000001B3 * (v6 ^ v4);
      v7 = *v5++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t Phase::AddStringToPool(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_23A44D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    Phase::ParserSetParseError(v16, 1346924644, "", "", "Out of memory");
    __cxa_end_catch();
    JUMPOUT(0x23A44D7A4);
  }

  _Unwind_Resume(a1);
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t Phase::ReadParamIdx(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = [v11 objectForKeyedSubscript:v12];
  if (!v13)
  {
    *a5 = -1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [v12 UTF8String], "Field should be a string");
    goto LABEL_23;
  }

  StringHashId = Phase::GetStringHashId(v13, v14);
  if ((Phase::GetParamIndex(a4, StringHashId, a5, v16) & 1) == 0)
  {
    v18 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(Phase *)v18 length])
      {
        v20 = Phase::GetStringHashId(v18, v19);
        v28 = v20;
        if (v20)
        {
          v21 = *(a4 + 136);
          v22 = *(a4 + 144);
          if (v21 != v22)
          {
            while (*v21 != v20)
            {
              if (++v21 == v22)
              {
                goto LABEL_19;
              }
            }
          }

          if (v21 == v22)
          {
LABEL_19:
            std::vector<unsigned long long>::push_back[abi:ne200100]((a4 + 136), &v28);
          }
        }
      }

      v25 = Phase::GetStringHashId(v18, v24);
      if (Phase::GetParamIndex(a4, v25, a5, v26))
      {
        goto LABEL_4;
      }

      v23 = [v12 UTF8String];
      [(Phase *)v18 UTF8String];
    }

    else
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(Phase *)v18 UTF8String], "Parameter name should be a string");

      v23 = [v12 UTF8String];
      [(Phase *)v18 UTF8String];
    }

    Phase::ParserSetParseError(a1, 1346924643, "", v23, "Failed to parse %s as a param index");
    goto LABEL_23;
  }

LABEL_4:
  if (a6 && (Phase::AddStringToPool(a1, a6, v13) & 1) == 0)
  {
    strncpy((a1 + 8), [(Phase *)v13 UTF8String], 0x80uLL);
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

LABEL_8:
  v17 = 1;
LABEL_24:

  return v17;
}

uint64_t Phase::ParseDirectivityModelParams(uint64_t a1, void *a2, char *a3, double *a4, int a5)
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a2;
  bzero(a4, 0x3F0uLL);
  if (a5)
  {
    v9 = @"ListenerDirectivityModelType";
  }

  else
  {
    v9 = @"SourceDirectivityModelType";
  }

  v10 = v8;
  v11 = v9;
  v12 = [v10 objectForKeyedSubscript:v11];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)v11 UTF8String], "Field should be a string");

      strncpy((a1 + 8), a3, 0x80uLL);
LABEL_64:
      v41 = 0;
      goto LABEL_65;
    }

    DirectivityModelType = GetDirectivityModelType(v12);
  }

  else
  {
    DirectivityModelType = 0;
  }

  *a4 = DirectivityModelType;

  v14 = *a4;
  switch(v14)
  {
    case 3:
      if (a5)
      {
        v39 = @"ListenerSphericalCapDirectivityParameters";
      }

      else
      {
        v39 = @"SourceSphericalCapDirectivityParameters";
      }

      v47 = 0;
      OptionalChildDictionary = Phase::GetOptionalChildDictionary(a1, v10, v39, &v47);
      v18 = v47;
      if ((OptionalChildDictionary & 1) == 0)
      {
        Phase::ParserSetParseError(a1, 1346924643, a3, [(__CFString *)v39 UTF8String], "Submix %s directivity parameters object must be a dictionary");
LABEL_63:

        goto LABEL_64;
      }

      if ((Phase::ReadFloatTypeWithDefault<double>(a1, v18, @"SphereRadius", a4 + 1, 0.3, 0.001, 10.0) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(a1, v18, @"CapOpeningAngle", a4 + 2, 30.0, 0.01, 360.0) & 1) == 0)
      {
        strncpy((a1 + 8), a3, 0x80uLL);
        goto LABEL_63;
      }

      break;
    case 2:
      *(a4 + 2) = 0;
      if (a5)
      {
        v26 = @"ListenerConeDirectivitySubbands";
      }

      else
      {
        v26 = @"SourceConeDirectivitySubbands";
      }

      v52 = 0;
      OptionalChildArray = Phase::GetOptionalChildArray(a1, v10, v26, &v52);
      v28 = v52;
      v18 = v28;
      if (OptionalChildArray)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v29 = v28;
        v30 = [v29 countByEnumeratingWithState:&v48 objects:v66 count:16];
        if (v30)
        {
          v45 = *v49;
          while (2)
          {
            v44 = v30;
            for (i = 0; i != v44; ++i)
            {
              if (*v49 != v45)
              {
                objc_enumerationMutation(v29);
              }

              v32 = *(*(&v48 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                Phase::ParserSetParseError(a1, 1346924643, a3, [@"EnvelopeSegments" UTF8String], "Submix %s directivity subband object must be a dictionary");
                goto LABEL_74;
              }

              v33 = *(a4 + 2);
              if (v33 >= 0x20)
              {
                Phase::ParserSetParseError(a1, 1346924646, a3, [@"EnvelopeSegments" UTF8String], "Too many submix %s directivity subbands.  Max = %d");
                goto LABEL_74;
              }

              v34 = &a4[4 * v33 + 2];
              if ((Phase::ReadFloatTypeWithDefault<double>(a1, v32, @"Frequency", v34, 1000.0, 20.0, 20000.0) & 1) == 0)
              {
                goto LABEL_67;
              }

              if ((Phase::ReadFloatTypeWithDefault<double>(a1, v32, @"InnerAngle", v34 + 1, 360.0, 0.0, 360.0) & 1) == 0)
              {
                goto LABEL_67;
              }

              FloatTypeWith = Phase::ReadFloatTypeWithDefault<double>(a1, v32, @"OuterAngle", v34 + 2, 360.0, 0.0, 360.0);
              if ((FloatTypeWith & 1) == 0)
              {
                goto LABEL_67;
              }

              if (v34[1] > v34[2])
              {
                v36 = **(Phase::Logger::GetInstance(FloatTypeWith) + 16);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  v37 = *(v34 + 1);
                  v38 = *(v34 + 2);
                  *buf = 136315906;
                  v59 = "ParserCore.mm";
                  v60 = 1024;
                  v61 = 2488;
                  v62 = 2048;
                  v63 = v37;
                  v64 = 2048;
                  v65 = v38;
                  _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d WARNING: subband.mInnerAngleInDegrees %f is greater than subband.mOuterAngleInDegrees %f. Clamping subband.mInnerAngleInDegrees to subband.mOuterAngleInDegrees.", buf, 0x26u);
                }

                v34[1] = v34[2];
              }

              if ((Phase::ReadFloatTypeWithDefault<double>(a1, v32, @"OuterGain", v34 + 3, 1.0, 0.0, 1.0) & 1) == 0)
              {
LABEL_67:
                strncpy((a1 + 8), a3, 0x80uLL);
LABEL_74:

                goto LABEL_64;
              }

              ++*(a4 + 2);
            }

            v30 = [v29 countByEnumeratingWithState:&v48 objects:v66 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        break;
      }

      v42 = [@"EnvelopeSegments" UTF8String];
LABEL_62:
      Phase::ParserSetParseError(a1, 1346924643, a3, v42, "Submix %s directivity subband array object must be an array");
      goto LABEL_63;
    case 1:
      *(a4 + 2) = 0;
      if (a5)
      {
        v15 = @"ListenerCardioidDirectivitySubbands";
      }

      else
      {
        v15 = @"SourceCardioidDirectivitySubbands";
      }

      v57 = 0;
      v16 = Phase::GetOptionalChildArray(a1, v10, v15, &v57);
      v17 = v57;
      v18 = v17;
      if (v16)
      {
        v56 = 0u;
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
        if (v20)
        {
          v21 = *v54;
          while (2)
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v54 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v53 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                Phase::ParserSetParseError(a1, 1346924643, a3, [@"EnvelopeSegments" UTF8String], "Submix %s directivity subband object must be a dictionary");
                goto LABEL_71;
              }

              v24 = *(a4 + 2);
              if (v24 >= 0x20)
              {
                Phase::ParserSetParseError(a1, 1346924646, a3, [@"EnvelopeSegments" UTF8String], "Too many submix %s directivity subbands.  Max = %d");
                goto LABEL_71;
              }

              v25 = &a4[3 * v24 + 2];
              if ((Phase::ReadFloatTypeWithDefault<double>(a1, v23, @"Frequency", v25, 1000.0, 20.0, 20000.0) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(a1, v23, @"Pattern", v25 + 1, 0.0, 0.0, 1.0) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(a1, v23, @"Sharpness", v25 + 2, 1.0, 1.0, 1.79769313e308) & 1) == 0)
              {
                strncpy((a1 + 8), a3, 0x80uLL);
LABEL_71:

                goto LABEL_64;
              }

              ++*(a4 + 2);
            }

            v20 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        break;
      }

      v42 = [@"EnvelopeSegments" UTF8String];
      goto LABEL_62;
  }

  v41 = 1;
LABEL_65:

  return v41;
}