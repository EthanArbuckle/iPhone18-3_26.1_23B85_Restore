void sub_185D108D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerScheduler::MTLCompilerScheduler(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = MTLCompilerConnectionManagerInternal::MTLCompilerConnectionManagerInternal(a1, a2, a3);
  *v6 = &unk_1EF4775A0;
  *(v6 + 192) = 0;
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 224) = 0;
  *(v6 + 232) = 0;
  *(v6 + 240) = 0;
  *(v6 + 264) = 0;
  *(v6 + 272) = 0;
  *(v6 + 256) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  *(v6 + 188) = a4;
  v7 = xpc_dictionary_create(0, 0, 0);
  *(a1 + 160) = v7;
  xpc_dictionary_set_uint64(v7, "requestType", 9uLL);
  return a1;
}

void sub_185D109C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](va);
  MTLCompilerConnectionManagerInternal::~MTLCompilerConnectionManagerInternal(v2);
  _Unwind_Resume(a1);
}

void MTLCompilerScheduler::~MTLCompilerScheduler(MTLCompilerScheduler *this)
{
  *this = &unk_1EF4775A0;
  v2 = *(this + 20);
  if (v2)
  {
    xpc_release(v2);
    *(this + 20) = 0;
  }

  v3 = (this + 256);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 224);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 192);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MTLCompilerConnectionManagerInternal::~MTLCompilerConnectionManagerInternal(this);
}

{
  MTLCompilerScheduler::~MTLCompilerScheduler(this);

  JUMPOUT(0x1865FF210);
}

void MTLCompilerScheduler::initializeCounts(MTLCompilerScheduler *this)
{
  v2 = (this + 152);
  v3 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<MTLCompilerScheduler::initializeCounts(void)::$_0 &&>>);
  }
}

void MTLCompilerScheduler::initializeDistributions(uint64_t a1)
{
  (*(*a1 + 40))(a1);
  std::vector<std::shared_ptr<MTLCompilerProcess>>::resize(a1 + 256, *(a1 + 52));
  if (*(a1 + 40) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 56);
      MTLCompilerScheduler::createCompiler(a1, v2++);
    }

    while (v2 < *(a1 + 40));
  }

  *(a1 + 61) = 1;
}

void MTLCompilerScheduler::killCompiler(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 256) + 16 * a2);
  if (*v2)
  {
    v3 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

uint64_t MTLCompilerScheduler::tryCancelRequestWithReason(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 96);
  if (v4 && *(v4 + 48) == v3 && *(a1 + 184))
  {
    return 0;
  }

  *(v3 + 162) = 1;
  *(v3 + 165) = 1;
  *(v3 + 140) = 1;
  v5 = *(v3 + 64);
  if (v5)
  {
    _Block_release(v5);
    v3 = *a2;
    *(*a2 + 64) = 0;
  }

  v6 = *(v3 + 72);
  if (v6)
  {
    _Block_release(v6);
    *(*a2 + 72) = 0;
  }

  return 1;
}

uint64_t MTLCompilerScheduler::tryGetBetterConnection(uint64_t a1, uint64_t a2)
{
  MTLCompilerScheduler::getBestConnection(a1, a2, &v6);
  v3 = v6;
  if (MTLCompilerProcess::canReceiveThreadUnsafeRequests(v6[12]) && !v3[6])
  {
    *(*a2 + 96) = v3;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_185D10CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerScheduler::shouldScheduleAfterCompilerBoost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 96);
  v21 = v6;
  if (*(v5 + 167) == 1)
  {
    (*(*v6 + 2))(v6, a2, a3);
LABEL_3:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v10 = *(v5 + 168);
  v11 = v6;
  if ((v10 & 1) == 0)
  {
    if (!MTLCompilerProcess::canReceiveThreadUnsafeRequests(v6[12]))
    {
      goto LABEL_9;
    }

    v11 = *(*a2 + 96);
  }

  if (!v11[6])
  {
    goto LABEL_36;
  }

LABEL_9:
  v12 = (*(*v6 + 2))(v6, a2, a3);
  v13 = *a2;
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = *(v13 + 96);
  if (v6 != v14 || (*(v13 + 167) & 1) != 0 || (*(v13 + 165) & 1) != 0)
  {
    goto LABEL_3;
  }

  if ((*(v13 + 168) & 1) == 0)
  {
    canReceiveThreadUnsafeRequests = MTLCompilerProcess::canReceiveThreadUnsafeRequests(*(v14 + 96));
    v13 = *a2;
    if (!canReceiveThreadUnsafeRequests)
    {
      goto LABEL_17;
    }

    v14 = *(v13 + 96);
  }

  if (!*(v14 + 48))
  {
    goto LABEL_36;
  }

LABEL_17:
  if ((*(v13 + 168) & 1) != 0 || (MTLCompilerProcess::canReceiveThreadUnsafeRequests(*(*(v13 + 96) + 96)) & 1) != 0 || (v7 = boostProcess(a2, &v21, 1, 1, a3), (v7 & 0x100) == 0))
  {
    v7 = boostProcess(a2, &v21, 0, 0, a3);
    if ((v7 & 0x100) == 0)
    {
      v16 = *(a1 + 256);
      v17 = *(a1 + 264);
      while (v16 != v17)
      {
        if (*v16)
        {
          if ((MTLCompilerProcess::isIdle(*v16) & 1) == 0)
          {
            ID = MTLCompilerProcess::getID(*v16);
            if (ID != MTLCompilerProcess::getID(*(*(*a2 + 96) + 96)))
            {
              v19 = (*(*a2 + 168) & 1) != 0 ? 0 : MTLCompilerProcess::canReceiveThreadUnsafeRequests(*v16) ^ 1;
              v7 = boostProcess(a2, &v21, v19, v19, a3);
              if ((v7 & 0x100) != 0)
              {
                return v7 & 1;
              }
            }
          }
        }

        v16 += 2;
      }

      if (!MTLCompilerScheduler::tryGetBetterConnection(a1, a2))
      {
        goto LABEL_3;
      }

      v20 = *a2;
      if ((*(*a2 + 168) & 1) == 0)
      {
        if (!MTLCompilerProcess::canReceiveThreadUnsafeRequests(*(*(v20 + 96) + 96)))
        {
          goto LABEL_3;
        }

        v20 = *a2;
      }

      if (*(*(v20 + 96) + 48))
      {
        goto LABEL_3;
      }

LABEL_36:
      LOBYTE(v7) = 1;
    }
  }

  return v7 & 1;
}

uint64_t boostProcess(uint64_t a1, void *a2, int a3, char a4, uint64_t a5)
{
  v5 = *(*(*a1 + 96) + 96);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 == v7)
  {
LABEL_20:
    v17 = 0;
    v18 = 0;
    return v17 | (v18 << 8);
  }

  while (1)
  {
    while (1)
    {
      if (!*v6)
      {
        goto LABEL_15;
      }

      if (MTLCompilerConnection::isIdle(*v6))
      {
        goto LABEL_15;
      }

      v13 = *v6;
      if (a3)
      {
        if (*(*(v13 + 6) + 168))
        {
          goto LABEL_15;
        }
      }

      if (!(*(*v13 + 16))(v13, a1, a5))
      {
        goto LABEL_15;
      }

      v14 = *a1;
      v15 = *(*a1 + 96);
      if (*a2 != v15 || (v14[167] & 1) != 0 || (v14[165] & 1) != 0)
      {
        v17 = 0;
        v18 = 1;
        return v17 | (v18 << 8);
      }

      if (v14[168])
      {
        break;
      }

      if (MTLCompilerProcess::canReceiveThreadUnsafeRequests(*(v15 + 96)))
      {
        v15 = *(*a1 + 96);
        break;
      }

      v17 = 0;
      if (a4)
      {
        goto LABEL_24;
      }

      v6 += 2;
      v18 = 0;
      if (v6 == v7)
      {
        return v17 | (v18 << 8);
      }
    }

    v16 = *(v15 + 48);
    if (!v16 || (a4 & 1) != 0)
    {
      break;
    }

LABEL_15:
    v6 += 2;
    if (v6 == v7)
    {
      goto LABEL_20;
    }
  }

  v17 = v16 == 0;
LABEL_24:
  v18 = v17;
  return v17 | (v18 << 8);
}

void MTLCompilerScheduler::setCompilerProcessesCount(MTLCompilerScheduler *this, unsigned int a2)
{
  v15 = (this + 88);
  v16 = 1;
  std::mutex::lock((this + 88));
  if ((*(this + 36) & 1) == 0)
  {
    if ((*(this + 61) & 1) == 0)
    {
      (*(*this + 96))(this, &v15);
    }

    {
      MTLCompilerScheduler::setCompilerProcessesCount::fromEnv = MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(0, 0);
    }

    if (!MTLCompilerScheduler::setCompilerProcessesCount::fromEnv)
    {
      LODWORD(v4) = *(this + 13);
      if (!v4 || v4 != *(this + 12))
      {
        if (v4 >= a2)
        {
          LODWORD(v4) = a2;
        }

        v5 = *(this + 10);
        *(this + 10) = v4;
        if (v5 >= v4)
        {
          if (v5 > v4)
          {
            v9 = 16 * v4;
            v10 = v5 - v4;
            do
            {
              v11 = *(*(this + 32) + v9);
              if (v11)
              {
                MTLCompilerProcess::setIsAlive(v11, 0);
                if (MTLCompilerProcess::isIdle(*(*(this + 32) + v9)))
                {
                  v12 = *(this + 32);
                  if (*(v12 + v9))
                  {
                    v13 = (v12 + v9);
                    v14 = v13[1];
                    *v13 = 0;
                    v13[1] = 0;
                    if (v14)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                    }
                  }
                }
              }

              v9 += 16;
              --v10;
            }

            while (v10);
            LODWORD(v4) = *(this + 10);
          }
        }

        else
        {
          v6 = 16 * v5;
          do
          {
            v7 = *(*(this + 32) + v6);
            if (v7 && (MTLCompilerProcess::isAlive(v7) & 1) == 0)
            {
              MTLCompilerProcess::setIsAlive(*(*(this + 32) + v6), 1);
            }

            else
            {
              v8 = *(this + 14);
              MTLCompilerScheduler::createCompiler(this, v5);
            }

            ++v5;
            v4 = *(this + 10);
            v6 += 16;
          }

          while (v5 < v4);
        }

        *(this + 44) = v4 == *(this + 13);
      }
    }
  }

  if (v16 == 1)
  {
    std::mutex::unlock(v15);
  }
}

void sub_185D11254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLCompilerScheduler::IDToQOS(MTLCompilerScheduler *this)
{
  if (this > 5)
  {
    return 0;
  }

  else
  {
    return dword_185DE3408[this];
  }
}

_BYTE *MTLCompilerScheduler::QOSToString@<X0>(MTLCompilerScheduler *this@<X0>, _BYTE *a2@<X8>)
{
  if (this > 20)
  {
    if (this == 21)
    {
      v4 = "QOS_DEFAULT";
    }

    else if (this == 33)
    {
      v4 = "QOS_INTERACTIVE";
    }

    else
    {
      v4 = "QOS_USER_INITIATED";
    }
  }

  else
  {
    v3 = "QOS_BKG";
    if (this != 9)
    {
      v3 = "QOS_UTILITY";
    }

    if (this)
    {
      v4 = v3;
    }

    else
    {
      v4 = "QOS_UNSPECIFIED";
    }
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v4);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<MTLCompilerScheduler::initializeCounts(void)::$_0 &&>>(uint64_t result)
{
  v1 = ***result;
  v2 = *(v1 + 36);
  if (v2 == 1)
  {
    *(v1 + 40) = 1;
    *(v1 + 52) = 0x100000001;
    *(v1 + 60) = 1;
  }

  else
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      *(v1 + 52) = [v3 maximumCompilerProcessesCount];
      *(v1 + 48) = [*(v1 + 24) defaultCompilerProcessesCount];
      *(v1 + 56) = [*(v1 + 24) threadsPerCompilerProcess];
      v4 = [*(v1 + 24) requiresLegacyCompilerProcessesCount];
      result = *(v1 + 48);
    }

    else
    {
      *(v1 + 52) = MTLGetOptimalCompilerProcessesCount();
      result = MTLGetDefaultCompilerProcessesCount();
      *(v1 + 48) = result;
      v4 = 1;
      *(v1 + 56) = 1;
    }

    *(v1 + 60) = v4;
    *(v1 + 40) = result;
    v5 = *(v1 + 52);
    LOBYTE(v2) = v5 == result && v5 != 0;
  }

  *(v1 + 44) = v2;
  return result;
}

void std::__shared_ptr_emplace<MTLCompilerProcess>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_pointer<MTLCompilerRequest *,std::shared_ptr<MTLCompilerRequest>::__shared_ptr_default_delete<MTLCompilerRequest,MTLCompilerRequest>,std::allocator<MTLCompilerRequest>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

uint64_t std::__shared_ptr_pointer<MTLCompilerRequest *,std::shared_ptr<MTLCompilerRequest>::__shared_ptr_default_delete<MTLCompilerRequest,MTLCompilerRequest>,std::allocator<MTLCompilerRequest>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<MTLCompileToken>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

unint64_t _MTLGetAttachmentSize(void *a1, char a2, uint64_t *a3, unint64_t *a4)
{
  v8 = [a1 width];
  result = [a1 height];
  v10 = v8 >> a2;
  v11 = result >> a2;
  if (v8 >> a2 <= 1)
  {
    v10 = 1;
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  *a3 = v10;
  *a4 = v11;
  return result;
}

uint64_t _MTLValidateRenderPassDescriptorTileProperties(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >> 3 <= *(a4 + 80))
  {
    v11 = *(a4 + 80);
  }

  else
  {
    v11 = a2 >> 3;
  }

  v12 = *(a4 + 56);
  v13 = *(a4 + 64);
  if (v12)
  {
    if (v12 == 32)
    {
      if (v13 != 16 && v13 != 32)
      {
        v62 = *(a4 + 64);
        _MTLMessageContextPush_(a1, 4, @"Invalid tile dimensions (%lu, %lu)", a4, a5, a6, a7, a8, 32);
      }

      v14 = 32 * v13;
    }

    else if (v12 == 16)
    {
      if (v13 != 16)
      {
        v65 = *(a4 + 64);
        _MTLMessageContextPush_(a1, 4, @"Invalid tile dimensions (%lu, %lu)", a4, a5, a6, a7, a8, 16);
      }

      v14 = 16 * v13;
    }

    else
    {
      v63 = *(a4 + 64);
      _MTLMessageContextPush_(a1, 4, @"Invalid tile dimensions (%lu, %lu)", a4, a5, a6, a7, a8, v12);
      v14 = 0;
    }
  }

  else
  {
    if (v13)
    {
      v64 = *(a4 + 64);
      _MTLMessageContextPush_(a1, 4, @"Invalid tile dimensions (%lu, %lu)", a4, a5, a6, a7, a8, 0);
    }

    v14 = [a5 minTilePixels];
  }

  v15 = *(a4 + 88);
  v16 = [a5 featureProfile];
  v22 = [a5 supportsMTL4LateBoundRenderTargets];
  v23 = *(a4 + 200);
  v24 = *(a4 + 80);
  if (v24)
  {
    if (!*(a4 + 200))
    {
      v25 = 1;
LABEL_24:
      v26 = 1;
      goto LABEL_25;
    }

    _MTLMessageContextPush_(a1, 8, @"Explicit Image blocks and Late bound render targets are incompatible", v17, v18, v19, v20, v21, v61);
  }

  else if (!*(a4 + 88) && (*(a4 + 200) & 1) == 0)
  {
    v25 = 0;
    goto LABEL_24;
  }

  if ((v23 ^ 1 | v22))
  {
    v26 = (v23 ^ 1 | v22) & (v24 == 0);
  }

  else
  {
    _MTLMessageContextPush_(a1, 8, @"Device does not support color attachment mapping", v17, v18, v19, v20, v21, v61);
    v26 = 0;
  }

  v25 = 1;
LABEL_25:
  v27 = [a5 maxThreadgroupMemoryLength];
  v33 = v27;
  v34 = *(a4 + 88);
  if (v34 > v27)
  {
    _MTLMessageContextPush_(a1, 8, @"Requested threadgroup memory length exceeds amount supported by device (%lu)", v28, v29, v30, v31, v32, v27);
  }

  v35 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = ((v16 == 0) << 6) + ((v16 == 1) << 6) + ((v16 == 4) << 6) + ((v16 == 5) << 6) + ((v16 == 6) << 6) + ((v16 == 7) << 6);
  v37 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v38 = 12288;
  if (v16)
  {
    v38 = 0;
  }

  v39 = (v16 == 1) << 14;
  v40 = v16 == 7;
  v41 = v16 == 6;
  v42 = v16 == 5;
  v43 = v16 == 4;
  v44 = v16 == 12;
  v45 = v37 == 10;
  v46 = v16 == 9;
  v47 = v16 == 8;
  if (v25)
  {
    v48 = v36 + (v47 << 6) + (v46 << 6) + (v44 << 6) + (v45 << 6);
    v49 = (v38 | v39) + (v43 << 14) + (v42 << 15) + (v41 << 15) + (v40 << 15) + (v47 << 15) + (v46 << 15) + (v44 << 15) + (v45 << 15);
  }

  else
  {
    v48 = v36 + (v47 << 7) + (v46 << 7) + (v44 << 8) + (v45 << 7);
    v49 = (((v38 | v39) + (v43 << 14)) | (v42 << 16)) + (v41 << 16) + (v40 << 16) + (v47 << 17) + (v46 << 17) + (v44 << 18) + (v45 << 17);
  }

  v50 = v35 * a3;
  v51 = 4 * (v16 == 0) + 4 * (v16 == 1) + 4 * (v16 == 4) + 4 * (v16 == 5) + 4 * (v16 == 6) + 4 * (v16 == 7) + 4 * (v16 == 8) + 4 * (v16 == 9) + 8 * (v16 == 12) + 4 * (v37 == 10);
  v52 = v48 * v51;
  if (a3)
  {
    v53 = v35 > v48;
  }

  else
  {
    v53 = 0;
  }

  v54 = !v53;
  if (v53)
  {
    _MTLMessageContextPush_(a1, 8, @"Per sample storage (%lu) cannot be greater than (%lu)", v28, v29, v30, v31, v32, v35);
  }

  v55 = v15 + v14 * v50;
  if (v51)
  {
    v56 = v50 > v52;
  }

  else
  {
    v56 = 0;
  }

  v57 = !v56;
  if (v56)
  {
    _MTLMessageContextPush_(a1, 8, @"Per pixel storage (%lu) cannot be greater than (%lu)", v28, v29, v30, v31, v32, v50);
  }

  if (v55 > v49)
  {
    _MTLMessageContextPush_(a1, 8, @"Total allocated tile memory (%lu) cannot be greater than (%lu)", v28, v29, v30, v31, v32, v55);
  }

  if (v34 <= v33)
  {
    v58 = v26;
  }

  else
  {
    v58 = 0;
  }

  v59 = v58 & v54 & v57;
  if (v55 <= v49)
  {
    return v59;
  }

  else
  {
    return 0;
  }
}

__n128 copyAttachmentPrivate(const MTLRenderPassAttachmentDescriptorPrivate *a1, MTLRenderPassAttachmentDescriptorPrivate *a2)
{
  v4 = a1->texture;

  a2->texture = a1->texture;
  v5 = a1->resolveTexture;

  a2->resolveTexture = a1->resolveTexture;
  v6 = *&a1->clearColor.red;
  *&a2->clearColor.blue = *&a1->clearColor.blue;
  *&a2->clearColor.red = v6;
  a2->clearDepth = a1->clearDepth;
  a2->clearStencil = a1->clearStencil;
  a2->stencilResolveFilter = a1->stencilResolveFilter;
  *&a2->level = *&a1->level;
  *&a2->depthPlane = *&a1->depthPlane;
  *&a2->storeAction = *&a1->storeAction;
  result = *&a1->resolveLevel;
  *&a2->resolveLevel = result;
  a2->yInvert = a1->yInvert;
  resolveFilter = a1->resolveFilter;
  a2->resolveDepthPlane = a1->resolveDepthPlane;
  a2->resolveFilter = resolveFilter;
  return result;
}

uint64_t colorAttachmentFormattedDescription(uint64_t a1, const MTLRenderPassAttachmentDescriptorPrivate *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v17 = v4;
  v18 = @"texture =";
  if (a2->texture)
  {
    v5 = [(MTLTextureImplementation *)a2->texture formattedDescription:a1 + 4];
  }

  else
  {
    v5 = @"<null>";
  }

  v19 = v5;
  v20 = v4;
  v21 = @"level =";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->level];
  v23 = v4;
  v24 = @"slice =";
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->slice];
  v26 = v4;
  v27 = @"depthPlane =";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->depthPlane];
  v29 = v4;
  v30 = @"resolveTexture =";
  resolveTexture = a2->resolveTexture;
  if (resolveTexture)
  {
    v7 = [(MTLTextureImplementation *)resolveTexture formattedDescription:a1 + 4];
  }

  else
  {
    v7 = @"<null>";
  }

  v31 = v7;
  v32 = v4;
  v33 = @"resolveLevel =";
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->resolveLevel];
  v35 = v4;
  v36 = @"resolveSlice =";
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->resolveSlice];
  v38 = v4;
  v39 = @"resolveDepthPlane =";
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->resolveDepthPlane];
  v41 = v4;
  v42 = @"loadAction =";
  loadAction = a2->loadAction;
  if (loadAction > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = *(&off_1E6EEC6C8 + loadAction);
  }

  v43 = v9;
  v44 = v4;
  v45 = @"storeAction =";
  storeAction = a2->storeAction;
  if (storeAction > 4)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = *(&off_1E6EEC6E0 + storeAction);
  }

  v46 = v11;
  v47 = v4;
  v12 = @"none";
  storeActionOptions = a2->storeActionOptions;
  if (storeActionOptions)
  {
    v12 = 0;
  }

  if (storeActionOptions)
  {
    v12 = @"MTLStoreActionOptionCustomSamplePositions";
  }

  v48 = @"storeActionOptions =";
  v49 = v12;
  v50 = v4;
  v51 = @"clearColor =";
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%g %g %g %g)", *&a2->clearColor.red, *&a2->clearColor.green, *&a2->clearColor.blue, *&a2->clearColor.alpha, v17, v18];
  v53 = v4;
  if (a2->yInvert)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v54 = @"yInvert =";
  v55 = v14;
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:{39), "componentsJoinedByString:", @" "}];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t depthAttachmentFormattedDescription(uint64_t a1, const MTLRenderPassAttachmentDescriptorPrivate *a2)
{
  v19[42] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v19[0] = v4;
  v19[1] = @"texture =";
  if (a2->texture)
  {
    v5 = [(MTLTextureImplementation *)a2->texture formattedDescription:a1 + 4];
  }

  else
  {
    v5 = @"<null>";
  }

  v19[2] = v5;
  v19[3] = v4;
  v19[4] = @"level =";
  v19[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->level];
  v19[6] = v4;
  v19[7] = @"slice =";
  v19[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->slice];
  v19[9] = v4;
  v19[10] = @"depthPlane =";
  v19[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->depthPlane];
  v19[12] = v4;
  resolveTexture = a2->resolveTexture;
  resolveLevel = a2->resolveLevel;
  if (!resolveTexture)
  {
    resolveTexture = @"<null>";
  }

  v19[13] = @"resolveTexture =";
  v19[14] = resolveTexture;
  v19[15] = v4;
  v19[16] = @"resolveLevel =";
  v19[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resolveLevel];
  v19[18] = v4;
  v19[19] = @"resolveSlice =";
  v19[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->resolveSlice];
  v19[21] = v4;
  v19[22] = @"resolveDepthPlane =";
  v19[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->resolveDepthPlane];
  v19[24] = v4;
  v19[25] = @"resolveFilter =";
  resolveFilter = a2->resolveFilter;
  if (resolveFilter > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = *(&off_1E6EEC6B0 + resolveFilter);
  }

  v19[26] = v9;
  v19[27] = v4;
  v19[28] = @"loadAction =";
  loadAction = a2->loadAction;
  if (loadAction > 2)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = *(&off_1E6EEC6C8 + loadAction);
  }

  v19[29] = v11;
  v19[30] = v4;
  v19[31] = @"storeAction =";
  storeAction = a2->storeAction;
  if (storeAction > 4)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = *(&off_1E6EEC6E0 + storeAction);
  }

  v19[32] = v13;
  v19[33] = v4;
  v14 = @"none";
  if (a2->storeActionOptions)
  {
    v14 = 0;
  }

  v15 = @"MTLStoreActionOptionCustomSamplePositions";
  if ((a2->storeActionOptions & 1) == 0)
  {
    v15 = v14;
  }

  v19[34] = @"storeActionOptions =";
  v19[35] = v15;
  v19[36] = v4;
  v19[37] = @"clearDepth =";
  v19[38] = [MEMORY[0x1E696AD98] numberWithDouble:a2->clearDepth];
  v19[39] = v4;
  if (a2->yInvert)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v19[40] = @"yInvert =";
  v19[41] = v16;
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{42), "componentsJoinedByString:", @" "}];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t stencilAttachmentFormattedDescription(uint64_t a1, const MTLRenderPassAttachmentDescriptorPrivate *a2)
{
  v22[42] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v22[0] = v4;
  v22[1] = @"texture =";
  if (a2->texture)
  {
    v5 = [(MTLTextureImplementation *)a2->texture formattedDescription:a1 + 4];
  }

  else
  {
    v5 = @"<null>";
  }

  v22[2] = v5;
  v22[3] = v4;
  v22[4] = @"level =";
  v22[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->level];
  v22[6] = v4;
  v22[7] = @"slice =";
  v22[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->slice];
  v22[9] = v4;
  v22[10] = @"depthPlane =";
  v22[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->depthPlane];
  v22[12] = v4;
  resolveTexture = a2->resolveTexture;
  resolveLevel = a2->resolveLevel;
  if (!resolveTexture)
  {
    resolveTexture = @"<null>";
  }

  v22[13] = @"resolveTexture =";
  v22[14] = resolveTexture;
  v22[15] = v4;
  v22[16] = @"resolveLevel =";
  v22[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resolveLevel];
  v22[18] = v4;
  v22[19] = @"resolveSlice =";
  v22[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->resolveSlice];
  v22[21] = v4;
  v22[22] = @"resolveDepthPlane =";
  v22[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->resolveDepthPlane];
  v22[24] = v4;
  v22[25] = @"loadAction =";
  loadAction = a2->loadAction;
  if (loadAction > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = *(&off_1E6EEC6C8 + loadAction);
  }

  v22[26] = v9;
  v22[27] = v4;
  v22[28] = @"storeAction =";
  storeAction = a2->storeAction;
  v11 = @"Unknown";
  if (storeAction <= 4)
  {
    v11 = *(&off_1E6EEC6E0 + storeAction);
  }

  v22[29] = v11;
  v22[30] = v4;
  v12 = @"none";
  if (a2->storeActionOptions)
  {
    v12 = 0;
  }

  v13 = @"MTLStoreActionOptionCustomSamplePositions";
  if ((a2->storeActionOptions & 1) == 0)
  {
    v13 = v12;
  }

  v22[31] = @"storeActionOptions =";
  v22[32] = v13;
  v22[33] = v4;
  v22[34] = @"clearStencil =";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2->clearStencil];
  stencilResolveFilter = a2->stencilResolveFilter;
  v16 = @"MTLMultisampleStencilResolveFilterDepthResolvedSample";
  if (stencilResolveFilter != 1)
  {
    v16 = @"Unknown";
  }

  v17 = stencilResolveFilter == 0;
  v18 = @"MTLMultisampleStencilResolveFilterSample0";
  v22[35] = v14;
  v22[36] = v4;
  if (!v17)
  {
    v18 = v16;
  }

  v22[37] = @"stencilResolveFilter =";
  v22[38] = v18;
  v22[39] = v4;
  v22[40] = @"yInvert =";
  v19 = @"NO";
  if (a2->yInvert)
  {
    v19 = @"YES";
  }

  v22[41] = v19;
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:{42), "componentsJoinedByString:", @" "}];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D15ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D16030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void *std::vector<objc_object  {objcproto17MPSGraphTypeProxy}*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185D16314(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D17684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLDynamicLibraryReflectionReader *>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<MTLDynamicLibraryReflectionReader *>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<MTLDynamicLibraryReflectionReader *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_185DB7AF0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_185DB7AF0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

Class getMPSGraphClassByName(char *a1)
{
  if (getMPSGraphInterface(void)::onceToken != -1)
  {
    getMPSGraphClassByName_cold_1();
  }

  v2 = getMPSGraphInterface(void)::interface;

  return _MTLMPSGraphInterface::getMPSGraphClassByName(v2, a1);
}

Class _MTLMPSGraphInterface::getMPSGraphClassByName(_MTLMPSGraphInterface *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(this + 1, __p);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return v5[5];
    }
  }

  else if (v4)
  {
    return v5[5];
  }

  Class = objc_getClass(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v10 = __p;
  std::__hash_table<std::__hash_value_type<std::string,objc_class *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,objc_class *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,objc_class *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,objc_class *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 1, __p)[5] = Class;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return Class;
}

void sub_185D1A0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MPSDataTypeFromMTLTensorDataType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 > 36)
  {
    if (a1 <= 44)
    {
      if (a1 == 37)
      {
        return 536870928;
      }

      if (a1 == 41)
      {
        return 16;
      }
    }

    else
    {
      switch(a1)
      {
        case '-':
          return 536870920;
        case '1':
          return 8;
        case 'y':
          return 2147483664;
      }
    }

LABEL_22:
    MTLReportFailure(0, "MPSDataTypeFromMTLTensorDataType", 86, @"Unsupport MTLTensorDataType: %llu", a5, a6, a7, a8, a1);
    return v8;
  }

  if (a1 > 28)
  {
    if (a1 == 29)
    {
      return 536870944;
    }

    if (a1 == 33)
    {
      return 32;
    }

    goto LABEL_22;
  }

  v8 = 268435472;
  if (a1 == 3)
  {
    return 268435488;
  }

  if (a1 != 16)
  {
    goto LABEL_22;
  }

  return v8;
}

uint64_t MTLTensorDataTypeFromMPSDataType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == -2147483632)
  {
    return 121;
  }

  if ((a1 & 0x10000000) != 0)
  {
    if ((a1 & 0xEFFFFFFF) == 0x20)
    {
      return 3;
    }

    if ((a1 & 0xEFFFFFFF) == 0x10)
    {
      return 16;
    }
  }

  v9 = a1 & 0xDFFFFFFF;
  if ((a1 & 0xDFFFFFFF) == 8)
  {
    v10 = (a1 & 0x20000000) == 0;
    v11 = 45;
    v12 = 49;
  }

  else if (v9 == 16)
  {
    v10 = (a1 & 0x20000000) == 0;
    v11 = 37;
    v12 = 41;
  }

  else
  {
    if (v9 != 32)
    {
      MTLReportFailure(0, "MTLTensorDataTypeFromMPSDataType", 123, @"Unsupported MPSDataType: %u", a5, a6, a7, a8, a1);
      return 3;
    }

    v10 = (a1 & 0x20000000) == 0;
    v11 = 29;
    v12 = 33;
  }

  if (v10)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

uint64_t MPSShapeFromTensorExtents(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 rank];
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1EEE9AC00](v2);
    v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = 0;
    v7 = 1;
    do
    {
      *&v5[8 * v6] = [MEMORY[0x1E696AD98] numberWithInteger:{*(objc_msgSend(a1, "extents") + 8 * v3 + 8 * ~v6)}];
      v6 = v7;
    }

    while (v3 > v7++);
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:v3];
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = MEMORY[0x1E695DEC8];
    v12 = *MEMORY[0x1E69E9840];

    return [v11 array];
  }

  return result;
}

MTLTensorExtents *TensorExtentsFromMPSShape(MTLTensorExtents *result)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  v2 = [(MTLTensorExtents *)result count];
  if (v2 >= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = 0;
    do
    {
      *&v5[8 * v3 + 8 * ~v6] = [-[MTLTensorExtents objectAtIndexedSubscript:](v1 objectAtIndexedSubscript:{v6), "integerValue"}];
      v6 = (v6 + 1);
    }

    while (v3 > v6);
    result = [[MTLTensorExtents alloc] initWithRank:v3 values:v5];
LABEL_9:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  v8 = [[MTLTensorExtents alloc] initWithRank:0 values:0];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

MTLTensorExtents *newTensorExtentsWithNegativeOnes(unint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = v6;
    v2 = 1;
    do
    {
      *v1++ = -1;
      v3 = v2++;
    }

    while (v3 < a1);
  }

  result = [[MTLTensorExtents alloc] initWithRank:a1 values:v6];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tensorDataTypeBitCount(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 <= 0x31)
  {
    if (((1 << a1) & 0x220000008) != 0)
    {
      return 32;
    }

    if (((1 << a1) & 0x22000010000) != 0)
    {
      return 16;
    }

    if (((1 << a1) & 0x2200000000000) != 0)
    {
      return 8;
    }
  }

  if (a1 == 121)
  {
    return 16;
  }

  MTLReportFailure(0, "tensorDataTypeBitCount", 194, @"Unsupported MTLTensorDataType: %llu", a5, a6, a7, a8, a1);
  return 0;
}

unint64_t dataTypeToTensorDataType(unint64_t result)
{
  if ((result > 0x31 || ((1 << result) & 0x2222220010008) == 0) && result != 121)
  {
    return 0;
  }

  return result;
}

uint64_t _MTLTensorElementCount(void *a1)
{
  if (![a1 rank])
  {
    return 1;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v3 *= *([a1 extents] + 8 * v2++);
  }

  while (v2 < [a1 rank]);
  return v3;
}

void verifySlice(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = [a3 rank];
  v13 = [a4 rank];
  v19 = [a5 rank];
  if (v13 != v12)
  {
    _MTLMessageContextPush_(a1, a2, @"The rank of the origin of the %s (%lu) should match the rank of the %s (%lu)", v14, v15, v16, v17, v18, a6);
  }

  if (v19 != v12)
  {
    _MTLMessageContextPush_(a1, a2, @"The rank of the dimensions of the %s (%lu) should match the rank of the %s (%lu)", v14, v15, v16, v17, v18, a6);
  }

  if (!*a1 && [a3 rank])
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v27 = [a4 extentAtDimensionIndex:v20];
      if (v27 < 0)
      {
        _MTLMessageContextPush_(a1, a2, @"At index %lu, the origin of the %s (%llu) should be at least 0", v22, v23, v24, v25, v26, v20);
      }

      v33 = [a5 extentAtDimensionIndex:v20];
      if (v33 <= 0)
      {
        _MTLMessageContextPush_(a1, a2, @"At index %lu, the dimensions of the %s (%llu) should be greater than 0", v28, v29, v30, v31, v32, v20);
      }

      if (v33 + v27 > [a3 extentAtDimensionIndex:v20])
      {
        _MTLMessageContextPush_(a1, a2, @"At index %lu, the origin of the %s (%llu) + the dimensions of the %s (%llu) should be at most the dimensions of the %s (%llu)", v34, v35, v36, v37, v38, v20);
      }

      v20 = ++v21;
    }

    while ([a3 rank] > v21);
  }
}

void verifyStrides(void *a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v9 = [a4 rank];
  if (v9 != [a5 rank])
  {
    v26 = [a5 rank];
    [a4 rank];
    _MTLMessageContextPush_(a1, a2, @"The rank of the strides (%lu) should match the rank of the %s (%lu)", v27, v28, v29, v30, v31, v26);
  }

  if (!*a1 && [a4 rank])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v17 = [a5 extentAtDimensionIndex:v10];
      if (v17 <= 0)
      {
        _MTLMessageContextPush_(a1, a2, @"At index %lu, the stride (%llu) should be greater than 0", v12, v13, v14, v15, v16, v10);
      }

      if (!v11)
      {
        goto LABEL_15;
      }

      v18 = [a5 extentAtDimensionIndex:v11 - 1];
      v24 = [a4 extentAtDimensionIndex:v11 - 1] * v18;
      if ((a3 & 4) == 0 || v11 == 1)
      {
        if (v17 < v24)
        {
          v25 = @"At index %lu, the stride (%llu) should be at least %s's dimensions at index %lu (%llu) * stride at index %lu (%llu) (%llu)";
          goto LABEL_18;
        }
      }

      else if (v17 != v24)
      {
        v25 = @"At index %lu, the stride (%llu) should be equal to %s's dimensions at index %lu (%llu) * stride at index %lu (%llu) (%llu), when using MTLTensorUsageMachineLearning";
LABEL_18:
        _MTLMessageContextPush_(a1, a2, v25, v19, v20, v21, v22, v23, v10);
      }

LABEL_15:
      v10 = ++v11;
    }

    while ([a4 rank] > v11);
  }
}

void validateDispatchThreadsPerThreadgroupWithRTPTG(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 || a3[1] || a3[2])
  {
    if (*a2 != *a3)
    {
      v11 = *a3;
      _MTLMessageContextPush_(a1, 8, @"threadsPerThreadgroup.width(%lu) should be %lu (requiredThreadsPerThreadgroup.width)", a4, a5, a6, a7, a8, *a2);
    }

    if (a2[1] != a3[1])
    {
      v12 = a3[1];
      _MTLMessageContextPush_(a1, 8, @"threadsPerThreadgroup.height(%lu) should be %lu (requiredThreadsPerThreadgroup.height)", a4, a5, a6, a7, a8, a2[1]);
    }

    if (a2[2] != a3[2])
    {
      v13 = a3[2];
      _MTLMessageContextPush_(a1, 8, @"threadsPerThreadgroup.depth(%lu) should be %lu (requiredThreadsPerThreadgroup.depth)", a4, a5, a6, a7, a8, a2[2]);
    }
  }
}

void ___ZL20getMPSGraphInterfacev_block_invoke()
{
  if (!dlopen("/System/Library/Frameworks/MetalPerformanceShadersGraph.framework/MetalPerformanceShadersGraph", 5))
  {
    ___ZL20getMPSGraphInterfacev_block_invoke_cold_1();
  }

  operator new();
}

const void **std::__hash_table<std::__hash_value_type<std::string,objc_class *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,objc_class *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,objc_class *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,objc_class *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void MTLLegacyXPCCompilerConnection::MTLLegacyXPCCompilerConnection(MTLLegacyXPCCompilerConnection *this, int a2)
{
  MTLLegacyCompilerConnection::MTLLegacyCompilerConnection(this, a2);
  *v3 = &unk_1EF4777A0;
  *(v3 + 64) = 256;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(this + 7) = dispatch_semaphore_create(10);
  MTLLegacyXPCCompilerConnection::setupConnection(this);
}

void MTLLegacyXPCCompilerConnection::setupConnection(MTLLegacyXPCCompilerConnection *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(this + 6) = xpc_connection_create("com.apple.MTLCompilerService", 0);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 4) = dispatch_queue_create("compiler cancel queue", v2);
  v5[0] = 0;
  v5[1] = 0;
  MEMORY[0x186600220](v5);
  v3 = *(this + 6);
  xpc_connection_set_instance();
  xpc_connection_set_event_handler(*(this + 6), &__block_literal_global_22);
  xpc_connection_resume(*(this + 6));
  v4 = *MEMORY[0x1E69E9840];
}

const char *MTLLegacyXPCCompilerConnection::cancelConnection(MTLLegacyXPCCompilerConnection *this)
{
  if (*(this + 6))
  {
    v2 = *(this + 4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN30MTLLegacyXPCCompilerConnection16cancelConnectionEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_sync(v2, block);
  }

  if (*(this + 5))
  {
    return *(this + 5);
  }

  else
  {
    return "<unknown reason>";
  }
}

void ___ZN30MTLLegacyXPCCompilerConnection16cancelConnectionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48))
  {
    *(v1 + 40) = xpc_connection_copy_invalidation_reason();
    xpc_connection_cancel(*(v1 + 48));
    xpc_release(*(v1 + 48));
    *(v1 + 48) = 0;
  }
}

uint64_t MTLLegacyXPCCompilerConnection::setupSandbox(MTLLegacyXPCCompilerConnection *this)
{
  v1 = this;
  if (MTLLegacyXPCCompilerConnection::setupSandbox(unsigned char)::onceToken != -1)
  {
    MTLLegacyXPCCompilerConnection::setupSandbox();
  }

  if (v1 == 2)
  {
    return MTLLegacyXPCCompilerConnection::setupSandbox(unsigned char)::gpuArchiverSandboxToken;
  }

  if (v1 == 1)
  {
    return MTLLegacyXPCCompilerConnection::setupSandbox(unsigned char)::fromSourceSandboxTokens;
  }

  return 0;
}

void ___ZN30MTLLegacyXPCCompilerConnection12setupSandboxEh_block_invoke()
{
  v19[2] = *MEMORY[0x1E69E9840];
  MTLLegacyXPCCompilerConnection::setupSandbox(unsigned char)::fromSourceSandboxTokens = xpc_array_create(0, 0);
  MTLLegacyXPCCompilerConnection::setupSandbox(unsigned char)::gpuArchiverSandboxToken = xpc_array_create(0, 0);
  v0 = [MTLGetModulesCachePath() UTF8String];
  v1 = [MTLGetGPUArchiverCachePath() UTF8String];
  MTLGetCompilerWorkingDir(__p);
  v2 = MEMORY[0x1E69E9BE0];
  v3 = MEMORY[0x1E69E9BB0];
  if (v0)
  {
    v4 = *MEMORY[0x1E69E9BB0];
    v5 = *MEMORY[0x1E69E9BE0];
    v6 = sandbox_extension_issue_file();
  }

  else
  {
    v6 = 0;
  }

  v19[0] = v6;
  if (v18 < 0)
  {
    if (__p[1])
    {
LABEL_8:
      v7 = *MEMORY[0x1E69E9BA8];
      v8 = *v2;
      v9 = sandbox_extension_issue_file();
      goto LABEL_10;
    }
  }

  else if (v18)
  {
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  v19[1] = v9;
  if (v1)
  {
    v10 = *v3;
    v11 = *v2;
    v1 = sandbox_extension_issue_file();
  }

  for (i = 0; i != 2; ++i)
  {
    v13 = v19[i];
    if (v13)
    {
      v14 = xpc_string_create(v19[i]);
      xpc_array_append_value(MTLLegacyXPCCompilerConnection::setupSandbox(unsigned char)::fromSourceSandboxTokens, v14);
      xpc_release(v14);
      free(v13);
    }
  }

  if (v1)
  {
    v15 = xpc_string_create(v1);
    xpc_array_append_value(MTLLegacyXPCCompilerConnection::setupSandbox(unsigned char)::gpuArchiverSandboxToken, v15);
    xpc_release(v15);
    free(v1);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_185D1B390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLLegacyXPCCompilerConnection::~MTLLegacyXPCCompilerConnection(MTLLegacyXPCCompilerConnection *this)
{
  *this = &unk_1EF4777A0;
  if (*(this + 6))
  {
    xpc_connection_kill();
    v2 = *(this + 6);
    if (v2)
    {
      xpc_release(v2);
      *(this + 6) = 0;
    }
  }

  v3 = *(this + 7);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    dispatch_release(v4);
  }

  free(*(this + 5));

  MTLLegacyCompilerConnection::~MTLLegacyCompilerConnection(this);
}

{
  MTLLegacyXPCCompilerConnection::~MTLLegacyXPCCompilerConnection(this);

  JUMPOUT(0x1865FF210);
}

void MTLLegacyXPCCompilerConnection::DispatchLogReplayRequest(MTLLegacyXPCCompilerConnection *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = _MTLIsInternalBuild();
  if (a2 && v12)
  {
    if (MTLLegacyXPCCompilerConnection::checkConnectionActive(a1, &v14))
    {
      if (a5)
      {
        MTLLegacyXPCCompilerConnection::BuildRequestInternal(a1, a2, a3, a4, 0, 1, a6, &__block_literal_global_9);
      }

      else
      {
        (*(*a1 + 16))(a1, a2, a3, a4, 0, 0, a6, &__block_literal_global_9);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MTLCompiler: could not save replay log because compiler service was unreachable", v13, 2u);
    }
  }
}

void ___ZN30MTLLegacyXPCCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectbP11objc_object_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      ___ZN30MTLLegacyXPCCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectbP11objc_object_block_invoke_cold_1(a2);
    }
  }
}

BOOL MTLLegacyXPCCompilerConnection::checkConnectionActive(MTLLegacyXPCCompilerConnection *this, BOOL *a2)
{
  *a2 = 1;
  if (!*(this + 6))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MTLXPCCompilerConnection::createConnectionHandle(result, v14, v15, v16, v17, v18, v19, v20);
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "requestType", 9uLL);
  v5 = mach_absolute_time();
  v6 = 0;
  v7 = MEMORY[0x1E69E9E98];
  v8 = MEMORY[0x1E69E9E20];
  do
  {
    if (v6 == 5)
    {
      sleep(1u);
      if (*(this + 65) == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (*(this + 65))
      {
LABEL_7:
        v9 = MTLCompiler_is_waiting_for_XPC_service_to_start(*(this + 6), v4);
        *(this + 65) = 0;
        goto LABEL_11;
      }

      if (!v6)
      {
        v10 = MTLCompiler_is_waiting_for_XPC_service_to_start(*(this + 6), v4);
        goto LABEL_10;
      }
    }

    v10 = xpc_connection_send_message_with_reply_sync(*(this + 6), v4);
LABEL_10:
    v9 = v10;
LABEL_11:
    Class = object_getClass(v9);
    if (Class == v7)
    {
      if (v9 == v8)
      {
        v21 = MTLLegacyXPCCompilerConnection::cancelConnection(this);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          MTLLegacyXPCCompilerConnection::checkConnectionActive(v21);
        }

        xpc_release(MEMORY[0x1E69E9E20]);
        xpc_release(v4);
        goto LABEL_27;
      }

      *a2 = 0;
    }

    else
    {
      *a2 = 0;
      *(this + 64) = xpc_dictionary_get_BOOL(v9, "ProbGuardMalloc");
    }

    xpc_release(v9);
    if (Class != v7)
    {
      break;
    }
  }

  while (v6++ < 9);
  xpc_release(v4);
  if (Class != v7)
  {
    return 1;
  }

LABEL_27:
  v22 = deltaInMilliseconds(v5);
  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (result)
  {
    MTLXPCCompilerConnection::checkConnectionAlive(v22);
    return 0;
  }

  return result;
}

uint64_t MTLLegacyXPCCompilerConnection::BuildRequestInternal(uint64_t a1, unsigned __int8 *a2, const char *a3, NSObject *a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = _os_activity_create(&dword_185B8E000, "compiling shader", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);
  NextCompileID = MTLLegacyCompilerConnection::getNextCompileID(a1);
  dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  if (MTLTraceEnabled())
  {
    v14 = a2[168];
    kdebug_trace();
  }

  v57 = 0;
  v15 = (*(*a2 + 64))(a2, *(a1 + 28), &v57);
  if (v15)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v16, "connectionId", 0);
    xpc_dictionary_set_uint64(v16, "llvmVersion", *(a1 + 28));
    RequestType = MTLCompilerRequest::getRequestType(a2);
    xpc_dictionary_set_uint64(v16, "requestType", RequestType);
    v18 = (RequestType & 0xFFFFFFFE) == 16;
    if (RequestType > 13)
    {
      if (RequestType == 14)
      {
        if ((MTLCompilerStitchingRequest::storeOutputInBinaryArchive(a2) & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (RequestType != 15)
      {
LABEL_18:
        v22 = 1;
        if (RequestType == 3 || RequestType == 13)
        {
          goto LABEL_24;
        }

        if (!v18)
        {
LABEL_25:
          if (a4)
          {
            v24 = xpc_data_create_with_dispatch_data(a4);
            xpc_dictionary_set_value(v16, "targetData", v24);
            xpc_release(v24);
          }

          v25 = xpc_data_create_with_dispatch_data(v15);
          xpc_dictionary_set_value(v16, "data", v25);
          xpc_release(v25);
          if (a3)
          {
            xpc_dictionary_set_string(v16, "pluginPath", a3);
          }

          if (MTLCompilerRequest::getRequestType(a2) == 16)
          {
            FileDescriptor = MTLCompilerMachORequest::getFileDescriptor(a2);
            v27 = xpc_fd_create(FileDescriptor);
            xpc_dictionary_set_value(v16, "machOFD", v27);
            xpc_release(v27);
          }

          if (MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(0, 0))
          {
            xpc_dictionary_set_uint64(v16, "setRelaxedMath", 1uLL);
          }

          v28 = MTLGetProcessName();
          if (v28)
          {
            xpc_dictionary_set_string(v16, "client_name", v28);
          }

          v53 = 0;
          v54 = &v53;
          v55 = 0x2020000000;
          v56 = 1;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          v39 = ___ZN30MTLLegacyXPCCompilerConnection20BuildRequestInternalEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke;
          v40 = &unk_1E6EEC8B8;
          v47 = a1;
          v48 = a2;
          v49 = a3;
          v41 = v16;
          v42 = a4;
          v52 = a6;
          v45 = a8;
          v46 = &v53;
          v50 = a5;
          v51 = NextCompileID;
          v43 = a7;
          v44 = v13;
          if (a5 <= 0 && *(a1 + 48) && *(a1 + 65) != 1 || (v37 = 0, MTLLegacyXPCCompilerConnection::checkConnectionActive(a1, &v37)))
          {
            v30 = *(a1 + 48);
            if (a6)
            {
              v31 = xpc_connection_send_message_with_reply_sync(v30, v16);
              v39(handler, v31);
              xpc_release(v31);
              v20 = *(v54 + 24);
LABEL_48:
              _Block_object_dispose(&v53, 8);
              goto LABEL_49;
            }

            xpc_connection_send_message_with_reply(v30, v16, *(a1 + 16), handler);
          }

          else
          {
            MTLLegacyXPCCompilerConnection::reportError(a1, a6, "MTLCompiler: Compiler service could not be reached.", a8, v37);
            if (MTLTraceEnabled())
            {
              v29 = a2[168];
              kdebug_trace();
            }

            (*(*a2 + 56))(a2);
            if ((a6 & 1) == 0)
            {
              MTLLegacyCompilerConnection::decrementRequestCount(a1);
            }

            dispatch_semaphore_signal(*(a1 + 56));
          }

          v20 = 1;
          goto LABEL_48;
        }

LABEL_23:
        v22 = 2;
LABEL_24:
        v23 = MTLLegacyXPCCompilerConnection::setupSandbox(v22);
        xpc_dictionary_set_value(v16, "sandboxTokens", v23);
        goto LABEL_25;
      }
    }

    else if (RequestType != 1 && RequestType != 10)
    {
      goto LABEL_18;
    }

    v21 = MTLCompilerFunctionRequest::storeOutputInBinaryArchive(a2);
    if ((RequestType & 0xFFFFFFFE) == 0x10)
    {
      v18 = 1;
    }

    else
    {
      v18 = v21;
    }

    goto LABEL_18;
  }

  MTLLegacyXPCCompilerConnection::reportError(a1, a6, v57, a8, 0);
  free(v57);
  if (MTLTraceEnabled())
  {
    v19 = a2[168];
    kdebug_trace();
  }

  (*(*a2 + 56))(a2);
  if ((a6 & 1) == 0)
  {
    MTLLegacyCompilerConnection::decrementRequestCount(a1);
  }

  dispatch_semaphore_signal(*(a1 + 56));

  v20 = 1;
LABEL_49:
  os_activity_scope_leave(&state);
  return v20 & 1;
}

void MTLLegacyXPCCompilerConnection::reportError(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2)
  {
    if (a5)
    {

      MTLCompiler_encountered_XPC_ERROR_CONNECTION_INVALID(a4);
    }

    else
    {
      v8 = *(a4 + 16);

      v8(a4, 2, 0, 0, a3);
    }
  }

  else
  {
    v11 = v5;
    v12 = v6;
    v7 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN30MTLLegacyXPCCompilerConnection11reportErrorEbPKcU13block_pointerFvjPKvmS1_Eb_block_invoke;
    block[3] = &unk_1E6EEC890;
    v10 = a5;
    block[4] = a4;
    block[5] = a3;
    dispatch_async(v7, block);
  }
}

uint64_t ___ZN30MTLLegacyXPCCompilerConnection11reportErrorEbPKcU13block_pointerFvjPKvmS1_Eb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return MTLCompiler_encountered_XPC_ERROR_CONNECTION_INVALID(v3);
  }

  else
  {
    return (*(v3 + 16))(v3, 2, 0, 0, *(a1 + 40));
  }
}

void ___ZN30MTLLegacyXPCCompilerConnection20BuildRequestInternalEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  RequestType = MTLCompilerRequest::getRequestType(*(a1 + 88));
  v6 = *(*(a1 + 88) + 168);
  if (object_getClass(a2) != MEMORY[0x1E69E9E80])
  {
    if (object_getClass(a2) == MEMORY[0x1E69E9E98])
    {
      if (a2 == MEMORY[0x1E69E9E18])
      {
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v33)
        {
          MTLXPCCompilerConnection::errorHandler(v33, v34, v35, v36, v37, v38, v39, v40);
        }

        xpc_release(*(a1 + 32));
        v41 = *(a1 + 104);
        if (v41 == 2)
        {
          v42 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v42 = OS_LOG_TYPE_DEFAULT;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], v42))
        {
          v54[0] = 67109120;
          v54[1] = v41 + 1;
          _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], v42, "MTLCompiler: Compilation failed with XPC_ERROR_CONNECTION_INTERRUPTED on %d try", v54, 8u);
        }

        v16 = 2;
      }

      else if (a2 == MEMORY[0x1E69E9E20])
      {
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v43)
        {
          MTLXPCCompilerConnection::errorHandler(v43, v44, v45, v46, v47, v48, v49, v50);
        }

        xpc_release(*(a1 + 32));
        v51 = MTLLegacyXPCCompilerConnection::cancelConnection(v4);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ___ZN30MTLLegacyXPCCompilerConnection20BuildRequestInternalEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke_cold_4(a1, v51);
        }

        v16 = 1;
      }

      else
      {
        v7 = MEMORY[0x1E69E9E38];
        v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (a2 == v7)
        {
          if (v8)
          {
            MTLXPCCompilerConnection::errorHandler(v8, v9, v10, v11, v12, v13, v14, v15);
          }

          v16 = 3;
        }

        else
        {
          if (v8)
          {
            MTLXPCCompilerConnection::errorHandler(v8, v9, v10, v11, v12, v13, v14, v15);
          }

          v16 = 4;
        }

        xpc_release(*(a1 + 32));
      }

      if (RequestType != 8 && (*(a1 + 104) == 2 || *(v4 + 64) == 1))
      {
        v26 = newLogReplayRequest(*(a1 + 88), *(a1 + 96), *(a1 + 40), *(v4 + 28));
      }

      else
      {
        v26 = 0;
      }

      if (v16 != 1)
      {
        v52 = *(a1 + 104);
        if (v52 <= 1)
        {
          if (*(a1 + 112) == 1)
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
          }

          else
          {
            (*(*v4 + 16))(v4, *(a1 + 88), *(a1 + 96), *(a1 + 40), (v52 + 1), 0, *(a1 + 48), *(a1 + 64));
          }

          goto LABEL_24;
        }
      }

      v53 = *(a1 + 64);
      if (v16 == 1)
      {
        MTLCompiler_encountered_XPC_ERROR_CONNECTION_INVALID(v53);
LABEL_22:
        v29 = *(a1 + 88);
        if (v29)
        {
          (*(*v29 + 56))(v29);
        }

        goto LABEL_24;
      }

      v28 = *(v53 + 16);
LABEL_21:
      v28();
      goto LABEL_22;
    }

LABEL_15:
    xpc_release(*(a1 + 32));
    value = xpc_dictionary_get_value(a2, "reply");
    if (object_getClass(value) == MEMORY[0x1E69E9E70] && (xpc_data_get_bytes_ptr(value), xpc_data_get_length(value), RequestType != 8) && MTLEnvVarAggregator::GET_AGX_LOG_SHADER_COMPILER_REQUEST(1, 0))
    {
      v26 = newLogReplayRequest(*(a1 + 88), *(a1 + 96), *(a1 + 40), *(v4 + 28));
    }

    else
    {
      v26 = 0;
    }

    v28 = *(*(a1 + 64) + 16);
    goto LABEL_21;
  }

  if (!xpc_dictionary_get_uint64(a2, "error"))
  {
    goto LABEL_15;
  }

  v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v17)
  {
    MTLXPCCompilerConnection::eventHandler(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  xpc_release(*(a1 + 32));
  xpc_dictionary_get_uint64(a2, "error");
  xpc_dictionary_get_string(a2, "errorMessage");
  (*(*(a1 + 64) + 16))();
  v25 = *(a1 + 88);
  if (v25)
  {
    (*(*v25 + 56))(v25);
  }

  v26 = 0;
LABEL_24:
  if (MTLTraceEnabled())
  {
    v30 = *(a1 + 112);
    v31 = *(a1 + 108);
    kdebug_trace();
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    MTLLegacyCompilerConnection::decrementRequestCount(v4);
  }

  dispatch_semaphore_signal(*(v4 + 56));

  if (v26)
  {
    MTLLegacyXPCCompilerConnection::DispatchLogReplayRequest(v4, v26, *(a1 + 96), *(a1 + 40), *(a1 + 112), *(a1 + 48));
  }

  v32 = *MEMORY[0x1E69E9840];
}

void MTLLegacyXPCCompilerConnection::BuildRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  MTLLegacyCompilerConnection::incrementRequestCount(a1);
  v16 = *(a1 + 8);
  if (a6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN30MTLLegacyXPCCompilerConnection12BuildRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke;
    block[3] = &unk_1E6EEC8E0;
    v21 = a5;
    block[8] = a2;
    block[9] = a3;
    v22 = a6;
    block[4] = a4;
    block[5] = a7;
    block[6] = a8;
    block[7] = a1;
    dispatch_sync(v16, block);
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___ZN30MTLLegacyXPCCompilerConnection12BuildRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke_2;
    v17[3] = &unk_1E6EEC8E0;
    v17[8] = a2;
    v17[9] = a3;
    v18 = a5;
    v19 = 0;
    v17[4] = a4;
    v17[5] = a7;
    v17[6] = a8;
    v17[7] = a1;
    dispatch_async(v16, v17);
  }
}

uint64_t ___ZN30MTLLegacyXPCCompilerConnection12BuildRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 80);
  if (v2 <= 2)
  {
    do
    {
      if (MTLLegacyXPCCompilerConnection::BuildRequestInternal(v1, *(a1 + 64), *(a1 + 72), *(a1 + 32), v2, *(a1 + 84), *(a1 + 40), *(a1 + 48)))
      {
        break;
      }
    }

    while (v2++ != 2);
  }

  return MTLLegacyCompilerConnection::decrementRequestCount(v1);
}

void validateMTLBindingAccess(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 3)
  {
    MTLReportFailure(0, "validateMTLBindingAccess", 42, @"access (%lu) is not a valid MTLBindingAccess.", a5, a6, a7, a8, a1);
  }
}

uint64_t _MTLCompatibleTextureDataTypeAndPixelFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  MTLPixelFormatGetInfoForDevice(0, a2, v4);
  return _MTLCompatibleTextureDataTypeAndPixelFormatInfo(a1, v4);
}

uint64_t _MTLCompatibleTextureDataTypeAndPixelFormatInfo(uint64_t a1, uint64_t a2)
{
  if (a1 > 32)
  {
    if (a1 > 40)
    {
      if (a1 == 41)
      {
        v2 = 0x200000;
        return (*(a2 + 8) & v2) != 0;
      }

      if (a1 == 85)
      {
        v2 = 0x20000000;
        return (*(a2 + 8) & v2) != 0;
      }
    }

    else
    {
      if (a1 == 33)
      {
        v2 = 0x80000;
        return (*(a2 + 8) & v2) != 0;
      }

      if (a1 == 37)
      {
        v2 = 0x100000;
        return (*(a2 + 8) & v2) != 0;
      }
    }

LABEL_21:
    abort();
  }

  if (a1 > 15)
  {
    if (a1 == 16)
    {
      v2 = 0x20000;
      return (*(a2 + 8) & v2) != 0;
    }

    if (a1 == 29)
    {
      v2 = 0x40000;
      return (*(a2 + 8) & v2) != 0;
    }

    goto LABEL_21;
  }

  if (!a1)
  {
    return 1;
  }

  if (a1 != 3)
  {
    goto LABEL_21;
  }

  v2 = 0x10000;
  return (*(a2 + 8) & v2) != 0;
}

__CFString *MTLDataTypeString(unint64_t a1)
{
  if (a1 > 0x8C)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEC900[a1];
  }
}

__CFString *MTLTensorDataTypeString(uint64_t a1)
{
  if (a1 <= 36)
  {
    if (a1 > 28)
    {
      if (a1 == 29)
      {
        return @"MTLTensorDataTypeInt32";
      }

      if (a1 == 33)
      {
        return @"MTLTensorDataTypeUInt32";
      }
    }

    else
    {
      if (a1 == 3)
      {
        return @"MTLTensorDataTypeFloat32";
      }

      if (a1 == 16)
      {
        return @"MTLTensorDataTypeFloat16";
      }
    }
  }

  else if (a1 <= 44)
  {
    if (a1 == 37)
    {
      return @"MTLTensorDataTypeInt16";
    }

    if (a1 == 41)
    {
      return @"MTLTensorDataTypeUInt16";
    }
  }

  else
  {
    switch(a1)
    {
      case '-':
        return @"MTLTensorDataTypeInt8";
      case '1':
        return @"MTLTensorDataTypeUInt8";
      case 'y':
        return @"MTLTensorDataTypeBFloat16";
    }
  }

  return @"Unknown";
}

__CFString *MTLTagTypeString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EECD68[a1];
  }
}

__CFString *argumentAccessNames(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EECDC0[a1];
  }
}

MTLTensorReferenceType *newDataTypeDescriptionForIndirectArgument(void *a1, uint64_t *a2)
{
  v4 = [a1 type];
  if (v4 > 23)
  {
    if ((v4 - 24) >= 4)
    {
      if (v4 != 36)
      {
        if (v4 != 37)
        {
          goto LABEL_56;
        }

        v11 = -[MTLTensorReferenceType initWithTensorDataType:indexType:dimensions:access:]([MTLTensorReferenceType alloc], "initWithTensorDataType:indexType:dimensions:access:", [a1 tensorDataType], objc_msgSend(a1, "indexType"), objc_msgSend(a1, "dimensions"), objc_msgSend(a1, "access"));
        if ([a1 arrayLength] < 2)
        {
          v20 = 140;
          goto LABEL_54;
        }

        v12 = [MTLArrayTypeInternal alloc];
        v13 = [a1 arrayLength];
        v14 = v12;
        v15 = 140;
        goto LABEL_32;
      }

      if ([a1 arrayLength] < 2)
      {
        v11 = 0;
        v20 = 139;
        goto LABEL_54;
      }

      v23 = [MTLArrayTypeInternal alloc];
      v24 = [a1 arrayLength];
      v25 = v23;
      v26 = 139;
LABEL_53:
      v11 = [(MTLArrayTypeInternal *)v25 initWithArrayLength:v24 elementType:v26 stride:8 pixelFormat:0 aluType:0 details:0];
      [(MTLTensorReferenceType *)v11 setArgumentIndexStride:1];
      v20 = 2;
      goto LABEL_54;
    }

    if ([a1 type] == 24)
    {
      v9 = 115;
    }

    else if ([a1 type] == 25)
    {
      v9 = 117;
    }

    else if ([a1 type] == 26)
    {
      v9 = 118;
    }

    else
    {
      if ([a1 type] != 27)
      {
LABEL_50:
        if ([a1 arrayLength] < 2)
        {
          return 0;
        }

        v27 = [MTLArrayTypeInternal alloc];
        v24 = [a1 arrayLength];
        v26 = *a2;
        v25 = v27;
        goto LABEL_53;
      }

      v9 = 116;
    }

    *a2 = v9;
    goto LABEL_50;
  }

  if (v4 > 3)
  {
    if (v4 > 19)
    {
      if (v4 == 20)
      {
        if ([a1 arrayLength] >= 2)
        {
          *a2 = 2;
          v17 = [MTLArrayTypeInternal alloc];
          v6 = [a1 arrayLength];
          v7 = v17;
          v8 = 79;
          goto LABEL_29;
        }

        v11 = 0;
        v20 = 79;
        goto LABEL_54;
      }

      if (v4 == 21)
      {
        if ([a1 arrayLength] >= 2)
        {
          *a2 = 2;
          v16 = [MTLArrayTypeInternal alloc];
          v6 = [a1 arrayLength];
          v7 = v16;
          v8 = 80;
          goto LABEL_29;
        }

        v11 = 0;
        v20 = 80;
        goto LABEL_54;
      }
    }

    else
    {
      if (v4 == 4)
      {
        v11 = 0;
        *a2 = [a1 indirectConstantDataType];
        return v11;
      }

      if (v4 == 19)
      {
        if ([a1 arrayLength] >= 2)
        {
          *a2 = 2;
          v5 = [MTLArrayTypeInternal alloc];
          v6 = [a1 arrayLength];
          v7 = v5;
          v8 = 78;
LABEL_29:
          v11 = [(MTLArrayTypeInternal *)v7 initWithArrayLength:v6 elementType:v8 stride:8 pixelFormat:0 aluType:0 details:0];
          [(MTLTensorReferenceType *)v11 setArgumentIndexStride:1];
          return v11;
        }

        v11 = 0;
        v20 = 78;
        goto LABEL_54;
      }
    }

    goto LABEL_56;
  }

  if (v4)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if ([a1 arrayLength] >= 2)
        {
          *a2 = 2;
          v10 = [MTLArrayTypeInternal alloc];
          v6 = [a1 arrayLength];
          v7 = v10;
          v8 = 59;
          goto LABEL_29;
        }

        v11 = 0;
        v20 = 59;
LABEL_54:
        *a2 = v20;
        return v11;
      }

LABEL_56:
      abort();
    }

    v11 = -[MTLTextureReferenceType initWithDataType:textureType:access:isDepthTexture:]([MTLTextureReferenceType alloc], "initWithDataType:textureType:access:isDepthTexture:", [a1 textureDataType], objc_msgSend(a1, "textureType"), objc_msgSend(a1, "access"), objc_msgSend(a1, "isDepthTexture"));
    if ([a1 arrayLength] < 2)
    {
      v20 = 58;
      goto LABEL_54;
    }

    v18 = [MTLArrayTypeInternal alloc];
    v13 = [a1 arrayLength];
    v14 = v18;
    v15 = 58;
LABEL_32:
    v19 = [(MTLArrayTypeInternal *)v14 initWithArrayLength:v13 elementType:v15 stride:8 pixelFormat:0 aluType:0 details:v11];
    [(MTLTensorReferenceType *)v19 setArgumentIndexStride:1];

    v20 = 2;
    v11 = v19;
    goto LABEL_54;
  }

  *a2 = 60;
  v21 = [a1 dataTypeDescription];

  return v21;
}

uint64_t MTLAddMessageObserver(void *a1, uint64_t a2)
{
  if (_MTLCreateNotifierArrayDispatchQueue(void)::once != -1)
  {
    MTLAddMessageObserver_cold_1();
  }

  NSSelectorFromString(&cfstr_Baseobject.isa);
  [a1 device];
  if (objc_opt_respondsToSelector())
  {
    [a1 setDevice:{objc_msgSend(objc_msgSend(a1, "device"), "baseObject")}];
  }

  if (!s_notifierArray)
  {
    dispatch_sync(s_notifierArrayDispatchQueue, &__block_literal_global_23);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MTLAddMessageObserver_block_invoke_73;
  block[3] = &unk_1E6EECE10;
  block[4] = a1;
  block[5] = a2;
  block[6] = &v7;
  dispatch_sync(s_notifierArrayDispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __MTLAddMessageObserver_block_invoke()
{
  if (!s_notifierArray)
  {
    s_notifierArray = objc_opt_new();
  }
}

void __MTLAddMessageObserver_block_invoke_73(void *a1)
{
  v2 = [[_MTLMessageNotifier alloc] init:a1[5] filter:a1[4]];
  [s_notifierArray addObject:v2];
  *(*(a1[6] + 8) + 40) = v2;
}

void MTLRemoveMessageObserver(uint64_t a1)
{
  if (_MTLCreateNotifierArrayDispatchQueue(void)::once != -1)
  {
    MTLAddMessageObserver_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MTLRemoveMessageObserver_block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = a1;
  dispatch_sync(s_notifierArrayDispatchQueue, block);
}

void _MTLNotifyMessageObservers(uint64_t a1, uint64_t a2)
{
  if (_MTLCreateNotifierArrayDispatchQueue(void)::once != -1)
  {
    MTLAddMessageObserver_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___MTLNotifyMessageObservers_block_invoke;
  v4[3] = &unk_1E6EEB5C0;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(s_notifierArrayDispatchQueue, v4);
}

uint64_t _MTLMessageTypeFromFailureType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_185DE3718[a1];
  }
}

void ___ZL36_MTLCreateNotifierArrayDispatchQueuev_block_invoke()
{
  if (!s_notifierArrayDispatchQueue)
  {
    s_notifierArrayDispatchQueue = dispatch_queue_create("com.Metal.NotifierArray", 0);
  }
}

uint64_t pipelineColorAttachmentFormattedDescription(uint64_t a1, void *a2)
{
  v9[33] = *MEMORY[0x1E69E9840];
  v3 = [a2 _descriptorPrivate];
  v4 = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v9[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{MTLPixelFormatGetName(*v3 >> 42), v4, @"pixelFormat ="}];
  v9[3] = v4;
  v9[4] = @"blending =";
  v5 = *v3;
  v6 = @"YES";
  if ((v5 & 3) == 0)
  {
    v6 = @"NO";
  }

  v9[5] = v6;
  v9[6] = v4;
  v9[7] = @"Source blend factors:";
  v9[8] = v4;
  v9[9] = @"RGB   =";
  v9[10] = MTLBlendFactorString(((v5 >> 8) & 0x1F));
  v9[11] = v4;
  v9[12] = @"Alpha =";
  v9[13] = MTLBlendFactorString(((v5 >> 13) & 0x1F));
  v9[14] = v4;
  v9[15] = @"Destination blend factors:";
  v9[16] = v4;
  v9[17] = @"RGB   =";
  v9[18] = MTLBlendFactorString(((v5 >> 18) & 0x1F));
  v9[19] = v4;
  v9[20] = @"Alpha =";
  v9[21] = MTLBlendFactorString(((v5 >> 23) & 0x1F));
  v9[22] = v4;
  v9[23] = @"Blend operations:";
  v9[24] = v4;
  v9[25] = @"RGB   =";
  v9[26] = MTLBlendOperationString(((v5 >> 2) & 7));
  v9[27] = v4;
  v9[28] = @"Alpha =";
  v9[29] = MTLBlendOperationString((v5 >> 5));
  v9[30] = v4;
  v9[31] = @"writeMask =";
  v9[32] = MTLColorWriteMaskString(HIDWORD(v5) & 0x1F);
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:{33), "componentsJoinedByString:", @" "}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *MTLBlendFactorString(MTLBlendFactor a1)
{
  if (a1 > (MTLBlendFactorOneMinusSource1Alpha|MTLBlendFactorOne))
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EECE58[a1];
  }
}

__CFString *MTLBlendOperationString(MTLBlendOperation a1)
{
  if (a1 > (MTLBlendOperationMax|MTLBlendOperationSubtract))
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EECEF8[a1];
  }
}

__CFString *MTLColorWriteMaskString(uint64_t a1)
{
  if (!a1)
  {
    return @"None";
  }

  v1 = a1;
  if (a1 != 16)
  {
    v3 = [MEMORY[0x1E696AD60] string];
    v2 = v3;
    if ((v1 & 8) != 0)
    {
      [v3 appendString:@"R"];
      if ((v1 & 4) == 0)
      {
LABEL_7:
        if ((v1 & 2) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }
    }

    else if ((v1 & 4) == 0)
    {
      goto LABEL_7;
    }

    [v2 appendString:@"G"];
    if ((v1 & 2) == 0)
    {
LABEL_8:
      if ((v1 & 1) == 0)
      {
        return v2;
      }

LABEL_9:
      [v2 appendString:@"A"];
      return v2;
    }

LABEL_13:
    [v2 appendString:@"B"];
    if ((v1 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_9;
  }

  return @"RGBA";
}

uint64_t pipelineColorAttachmentDefaultFormattedDescription(uint64_t a1)
{
  v4[32] = *MEMORY[0x1E69E9840];
  v4[0] = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v4[1] = @"pixelFormat =";
  v4[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(0)];
  v4[3] = v4[0];
  v4[4] = @"blending = NO";
  v4[5] = v4[0];
  v4[6] = @"Source blend factors:";
  v4[7] = v4[0];
  v4[8] = @"RGB   =";
  v4[9] = @"MTLBlendFactorOne";
  v4[10] = v4[0];
  v4[11] = @"Alpha =";
  v4[12] = @"MTLBlendFactorOne";
  v4[13] = v4[0];
  v4[14] = @"Destination blend factors:";
  v4[15] = v4[0];
  v4[16] = @"RGB   =";
  v4[17] = @"MTLBlendFactorZero";
  v4[18] = v4[0];
  v4[19] = @"Alpha =";
  v4[20] = @"MTLBlendFactorZero";
  v4[21] = v4[0];
  v4[22] = @"Blend operations:";
  v4[23] = v4[0];
  v4[24] = @"RGB   =";
  v4[25] = @"MTLBlendOperationAdd";
  v4[26] = v4[0];
  v4[27] = @"Alpha =";
  v4[28] = @"MTLBlendOperationAdd";
  v4[29] = v4[0];
  v4[30] = @"writeMask =";
  v1 = [MEMORY[0x1E696AD60] string];
  [v1 appendString:@"R"];
  [v1 appendString:@"G"];
  [v1 appendString:@"B"];
  [v1 appendString:@"A"];
  v4[31] = v1;
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:{32), "componentsJoinedByString:", @" "}];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLRenderPipelineColorAttachmentDescriptorDescription(void *a1)
{
  v6[9] = *MEMORY[0x1E69E9840];
  v1 = [a1 _descriptorPrivate];
  v5[0] = @"Pixel Format";
  v6[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(*v1 >> 42)];
  v5[1] = @"Blending Enabled";
  v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v1 & 3];
  v5[2] = @"Source RGB Blend Factor";
  v2 = *v1;
  v6[2] = MTLBlendFactorString(((v2 >> 8) & 0x1F));
  v5[3] = @"Destination RGB Blend Factor";
  v6[3] = MTLBlendFactorString(((v2 >> 18) & 0x1F));
  v5[4] = @"Source Alpha Blend Factor";
  v6[4] = MTLBlendFactorString(((v2 >> 13) & 0x1F));
  v5[5] = @"Destination Alpha Blend Factor";
  v6[5] = MTLBlendFactorString(((v2 >> 23) & 0x1F));
  v5[6] = @"RGB Blend Operation";
  v6[6] = MTLBlendOperationString(((v2 >> 2) & 7));
  v5[7] = @"Alpha Blend Operation";
  v6[7] = MTLBlendOperationString((v2 >> 5));
  v5[8] = @"Write Mask";
  v6[8] = MTLColorWriteMaskString(HIDWORD(v2) & 0x1F);
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:9];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLRenderPipelineColorAttachmentDescriptorDefaultDescription(void)
{
  v4[9] = *MEMORY[0x1E69E9840];
  v3[0] = @"Pixel Format";
  v4[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(0)];
  v4[1] = MEMORY[0x1E695E110];
  v3[1] = @"Blending Enabled";
  v3[2] = @"Source RGB Blend Factor";
  v4[2] = @"MTLBlendFactorOne";
  v4[3] = @"MTLBlendFactorZero";
  v3[3] = @"Destination RGB Blend Factor";
  v3[4] = @"Source Alpha Blend Factor";
  v4[4] = @"MTLBlendFactorOne";
  v4[5] = @"MTLBlendFactorZero";
  v3[5] = @"Destination Alpha Blend Factor";
  v3[6] = @"RGB Blend Operation";
  v4[6] = @"MTLBlendOperationAdd";
  v4[7] = @"MTLBlendOperationAdd";
  v3[7] = @"Alpha Blend Operation";
  v3[8] = @"Write Mask";
  v0 = [MEMORY[0x1E696AD60] string];
  [v0 appendString:@"R"];
  [v0 appendString:@"G"];
  [v0 appendString:@"B"];
  [v0 appendString:@"A"];
  v4[8] = v0;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D24474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

MTLBufferBindingInternal *CreateTraceBufferBinding(unsigned int a1)
{
  LOBYTE(v3) = 0;
  v1 = [[MTLBufferBindingInternal alloc] initWithName:@"__resource_tracking_impl_trace_buffer" type:0 access:1 isActive:1 locationIndex:a1 arraySize:0 dataType:45 pixelFormat:0 aluType:45 isConstantBuffer:v3 dataSize:1 alignment:1];
  [(MTLBindingInternal *)v1 setIsArgument:1];
  return v1;
}

void sub_185D24A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D25624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *inputPrimitiveTopologyName(MTLPrimitiveTopologyClass a1)
{
  if (a1 >= 4)
  {
    abort();
  }

  return off_1E6EECF28[a1];
}

__CFString *MTLVertexAmplificationModeString(uint64_t a1)
{
  v1 = @"Unknown";
  if (!a1)
  {
    v1 = @"MTLVertexAmplificationModeCount";
  }

  if (a1 == 1)
  {
    return @"MTLVertexAmplificationModeMask";
  }

  else
  {
    return v1;
  }
}

void validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>(uint64_t a1, void *a2, void *a3)
{
  v131[56] = *MEMORY[0x1E69E9840];
  v6 = a3[4];
  v7 = [a2 supportsSeparateVisibilityAndShadingRate];
  v13 = a3[5];
  if (!v7)
  {
    if (v13)
    {
      _MTLMessageContextPush_(a1, 4, @"colorSampleCount expected to be 0.", v8, v9, v10, v11, v12, v118);
    }

    goto LABEL_17;
  }

  v14 = a3[4];
  if (v13)
  {
    v15 = v13 > v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    _MTLMessageContextPush_(a1, 4, @"colorSampleCount expected to be smaller or equal to rasterSampleCount", v8, v9, v10, v11, v12, v118);
    v14 = a3[4];
    v13 = a3[5];
    if (v14)
    {
LABEL_7:
      if (v14 < v13)
      {
        _MTLMessageContextPush_(a1, 4, @"rasterSampleCount expected to be greater or equal to colorSampleCount", v8, v9, v10, v11, v12, v118);
        v13 = a3[5];
      }
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

  if (v13)
  {
    v16 = [a2 supportsTextureSampleCount:?];
    v22 = a3[5];
    if ((v16 & 1) == 0)
    {
      _MTLMessageContextPush_(a1, 4, @"colorSampleCount (%lu) is not supported by device.", v17, v18, v19, v20, v21, a3[5]);
      v22 = a3[5];
    }

    if (v22)
    {
      v6 = v22;
    }
  }

LABEL_17:
  v122 = v6;
  v124 = a2;
  v123 = [a2 maxColorAttachments];
  v23 = 0;
  v24 = 0;
  v125 = 0;
  for (i = 0; i != 8; ++i)
  {
    v26 = *(*a3 + 8 + 8 * i);
    if (!v26)
    {
      continue;
    }

    v27 = *(v26 + 8) >> 42;
    if (!v27)
    {
      continue;
    }

    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    MTLPixelFormatGetInfoForDevice(v124, v27, &v126);
    v33 = *(v26 + 8);
    if ((v33 & 3) == 1)
    {
      if ((BYTE8(v126) & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"Blending is enabled for render target %lu; however, the pixelformat %s for this render target is not blendable.", v28, v29, v30, v31, v32, i);
        v33 = *(v26 + 8);
      }

      if (((v33 >> 10) & 7) >= 5)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v118);
        v33 = *(v26 + 8);
      }

      if ((v33 & 0x38000) >= 0x28000)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v118);
        v33 = *(v26 + 8);
      }

      if ((v33 & 0x700000) >= 0x500000)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v118);
        v33 = *(v26 + 8);
      }

      if (((v33 >> 25) & 7) >= 5)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v118);
        v33 = *(v26 + 8);
      }

      if ((~v33 & 0x18) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"func is not a valid MTLBlendOperation.", v28, v29, v30, v31, v32, v118);
        v33 = *(v26 + 8);
      }

      if ((~v33 & 0xC0) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"func is not a valid MTLBlendOperation.", v28, v29, v30, v31, v32, v118);
        v33 = *(v26 + 8);
      }

      validateMTLPixelFormat(v33 >> 42, a1);
      v34 = *(v26 + 8);
      v35 = ((v34 >> 8) & 0x1F);
      if (i)
      {
        validateBlendFactorNotDualSourced(i, v35, a1, v28, v29, v30, v31, v32, v118);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 13) & 0x1F), a1, v36, v37, v38, v39, v40, v119);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 18) & 0x1F), a1, v41, v42, v43, v44, v45, v120);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 23) & 0x1F), a1, v46, v47, v48, v49, v50, v121);
        goto LABEL_52;
      }

      if (v35 >= MTLBlendFactorSource1Color)
      {
        if ((v35 - 15) < 4)
        {
          goto LABEL_50;
        }

        if (v35 != (MTLBlendFactorOneMinusSource1Alpha|MTLBlendFactorOne))
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v118);
          v34 = *(v26 + 8);
        }
      }

      v51 = (v34 >> 13) & 0x1F;
      if (v51 >= 0xF)
      {
        if (v51 - 15 < 4)
        {
          goto LABEL_50;
        }

        if (v51 != 19)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v118);
          v34 = *(v26 + 8);
        }
      }

      v52 = (v34 >> 18) & 0x1F;
      if (v52 < 0xF)
      {
LABEL_40:
        v53 = (v34 >> 23) & 0x1F;
        if (v53 >= 0x14)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v118);
          goto LABEL_52;
        }

        v54 = 0x78000u >> v53;
        goto LABEL_51;
      }

      if (v52 - 15 >= 4)
      {
        if (v52 != 19)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v118);
          v34 = *(v26 + 8);
        }

        goto LABEL_40;
      }

LABEL_50:
      LOBYTE(v54) = 1;
LABEL_51:
      v125 = v54;
    }

LABEL_52:
    v55 = *(*(*a3 + 8 + 8 * i) + 12) & 0x1F;
    v56 = v55 > 0x10 || ((1 << v55) & 0x18001) == 0;
    if (v56 && (BYTE9(v126) & 0x80) != 0)
    {
      _MTLMessageContextPush_(a1, 4, @"writeMask(0x%lx) is not MTLColorWriteMaskAll or MTLColorWriteMaskNone or MTLColorWriteMaskUnspecialized for render target %lu; however, the pixelformat %s for this render target requires MTLColorWriteMaskAll or MTLColorWriteMaskNone or MTLColorWriteMaskUnspecialized.", v28, v29, v30, v31, v32, v55);
    }

    if (i >= v123)
    {
      _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor color render target(%lu) exceeds platform max(%lu).", v28, v29, v30, v31, v32, i);
    }

    if (BYTE8(v126))
    {
      if ((BYTE8(v126) & 0x10) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"pixelFormat, for color render target(%lu), is not a valid MTLPixelFormat.", v28, v29, v30, v31, v32, i);
      if ((BYTE8(v126) & 0x10) == 0)
      {
LABEL_71:
        _MTLMessageContextPush_(a1, 4, @"pixelFormat, for color render target(%lu), %s is not color renderable.", v28, v29, v30, v31, v32, i);
      }
    }

    if (((i != 0) & v125) == 1)
    {
      _MTLMessageContextPush_(a1, 4, @"Dual source blending is used in combination with multiple render targets", v28, v29, v30, v31, v32, v118);
    }

    v130[v23] = v27;
    v57 = &v131[7 * v23++];
    v58 = v127;
    *v57 = v126;
    *(v57 + 1) = v58;
    *(v57 + 2) = v128;
    v57[6] = v129;
    v24 = 1;
  }

  v59 = *(*a3 + 8);
  if (v59)
  {
    v60 = *(v59 + 8) >> 42;
    if (v60)
    {
      v129 = 0;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      MTLPixelFormatGetInfoForDevice(v124, v60, &v126);
      v66 = *(a3 + 60);
      v67 = BYTE8(v126);
      if ((v66 & 3) != 0 && (BYTE8(v126) & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor with alphaToCoverageEnabled requires a float/unorm pixel format, but colorAttachments[0].pixelFormat(%s) is not blendable", v61, v62, v63, v64, v65, v126);
        v66 = *(a3 + 60);
        v67 = BYTE8(v126);
      }

      if ((v66 & 0xC) != 0 && (v67 & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor with alphaToOneEnabled requires a float/unorm pixel format, but colorAttachments[0].pixelFormat(%s) is not blendable", v61, v62, v63, v64, v65, v126);
      }
    }
  }

  v68 = [v124 maxFramebufferStorageBits];
  v69 = MTLPixelFormatComputeTotalSizeUsed(v131, v130, v23, v122 > 1);
  if (([v124 isLargeMRTSupported] & 1) == 0 && 8 * v69 > v68)
  {
    _MTLMessageContextPush_(a1, 4, @"This set of render targets requires %lu bytes of pixel storage. This device supports %lu bytes.", v70, v71, v72, v73, v74, v69 & 0x1FFFFFFFFFFFFFFFLL);
  }

  v75 = a3[1];
  if (v75)
  {
    MTLPixelFormatGetInfoForDevice(v124, v75, &v126);
    v81 = v126;
    LOBYTE(v26) = BYTE8(v126);
    if (BYTE8(v126))
    {
      if ((BYTE8(v126) & 0x20) != 0)
      {
        goto LABEL_86;
      }

LABEL_112:
      _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat %s is not depth renderable.", v76, v77, v78, v79, v80, v81);
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat is not a valid MTLPixelFormat.", v76, v77, v78, v79, v80, v118);
      if ((v26 & 0x20) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_86:
    v24 = 1;
  }

  v82 = a3[2];
  if (v82)
  {
    MTLPixelFormatGetInfoForDevice(v124, v82, &v126);
    v88 = v126;
    LOBYTE(i) = BYTE8(v126);
    if (BYTE8(v126))
    {
      if ((BYTE8(v126) & 0x40) != 0)
      {
        goto LABEL_90;
      }

LABEL_114:
      _MTLMessageContextPush_(a1, 4, @"stencilAttachmentPixelFormat %s is not stencil renderable.", v83, v84, v85, v86, v87, v88);
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"stencilAttachmentPixelFormat is not a valid MTLPixelFormat.", v83, v84, v85, v86, v87, v118);
      if ((i & 0x40) == 0)
      {
        goto LABEL_114;
      }
    }

LABEL_90:
    v24 = 1;
  }

  if (dyld_program_sdk_at_least() && (([v124 supportsRenderPassWithoutRenderTarget] | v24) & 1) == 0)
  {
    _MTLMessageContextPush_(a1, 4, @"No valid pixelFormats set.", v89, v90, v91, v92, v93, v118);
  }

  v94 = a3[1];
  v95 = a3[2];
  if (v94 && v95 && i & 0x20 | v26 & 0x40 && v94 != v95)
  {
    Name = MTLPixelFormatGetName(v94);
    MTLPixelFormatGetName(a3[2]);
    _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat (%s) and stencilAttachmentPixelFormat (%s) must match.", v113, v114, v115, v116, v117, Name);
    v95 = a3[2];
    if (a3[1])
    {
      goto LABEL_99;
    }
  }

  else if (v94)
  {
LABEL_99:
    if (v95)
    {
      v96 = [v124 supportsSeparateDepthStencil];
      if (i & 0x20 | v26 & 0x40 || (v96 & 1) == 0)
      {
        v97 = a3[1];
        if (v97 != a3[2])
        {
          validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>(v97, a3 + 2);
        }
      }
    }
  }

  v98 = *(a3 + 60);
  if ((v98 & 0x1E000000000) == 0)
  {
    _MTLMessageContextPush_(a1, 4, @"maxVertexAmplificationCount (%u) cannot be set to zero.", v89, v90, v91, v92, v93, 0);
    v98 = *(a3 + 60);
  }

  if (([v124 supportsVertexAmplificationCount:(v98 >> 37) & 0xF] & 1) == 0)
  {
    validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>((a3 + 60), a1, v99, v100, v101, v102, v103, v104);
  }

  if (([v124 supportsTextureWriteRoundingMode:a3[3]] & 1) == 0)
  {
    validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>(a3 + 3);
  }

  validateMTLCompareFunction((*(a3 + 60) >> 22) & 7, a1, v105, v106, v107, v108, v109, v110, v118);
  validateMTLPixelFormat(a3[1], a1);
  validateMTLPixelFormat(a3[2], a1);
  v111 = *MEMORY[0x1E69E9840];
}

dispatch_data_t createSerializedFragmentData<MTLMeshRenderPipelineDescriptorPrivate>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(*a3 + 8 + v4);
    if (v6 && *(v6 + 8) >> 42)
    {
      ++v5;
    }

    v4 += 8;
  }

  while (v4 != 64);
  v7 = *(a3 + 224);
  if (v7 && ([v7 functions] && objc_msgSend(objc_msgSend(*(a3 + 224), "functions"), "count") || objc_msgSend(*(a3 + 224), "privateFunctions") && objc_msgSend(objc_msgSend(*(a3 + 224), "privateFunctions"), "count")))
  {
    v8 = 1;
    v9 = 6;
  }

  else
  {
    v8 = 0;
    v9 = 4;
  }

  v31 = v9 * 4 + 2 * v5;
  v33 = MTLSerializePluginDataDictionary([objc_msgSend(*(a3 + 104) "device")], 0);
  v30 = v33 + v31;
  v34 = MTLSerializePluginDataDictionary(*(a3 + 184), 0);
  v10 = v34 + v33 + v31;
  if (v8)
  {
    _MTLPopulateLinkedFunctionExtraData(*(a3 + 224));
  }

  v11 = malloc_type_malloc(v10, 0x1000040504FFAC1uLL);
  bzero(v11, v10);
  v16 = 0;
  v17 = 0;
  v11[2] = (a2 << 6) & 0x40000000 | v5 | v11[2] & 0x9FFFFF00 | (((*(a3 + 60) >> 6) & 1) << 29);
  v18 = &v11[v9];
  do
  {
    v19 = *(*a3 + 8 + 8 * v16);
    if (v19)
    {
      v20 = *(v19 + 8);
      if (v20 >> 42)
      {
        *(v18 + v17++) = (v20 >> 38) & 0xFFF0 | v16;
        v21 = *(v19 + 8);
        if ((v21 & 3) != 0)
        {
          v22 = (v21 >> 8) & 0x1F;
          if (v22 >= 0xF)
          {
            if (v22 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v22 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v23 = (v21 >> 13) & 0x1F;
          if (v23 >= 0xF)
          {
            if (v23 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v23 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v24 = (v21 >> 18) & 0x1F;
          if (v24 >= 0xF)
          {
            if (v24 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v24 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v25 = (v21 >> 23) & 0x1F;
          if (v25 < 0xF)
          {
            goto LABEL_34;
          }

          if (v25 - 15 < 4)
          {
LABEL_33:
            v11[2] |= 65792 << v16;
            goto LABEL_34;
          }

          if (v25 != 19)
          {
            MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
          }
        }
      }
    }

LABEL_34:
    ++v16;
  }

  while (v16 != 8);
  v26 = *(a3 + 16);
  *(v11 + 6) = *(a3 + 8);
  *(v11 + 7) = v26;
  if (v33)
  {
    *v11 = v31;
    MTLSerializePluginDataDictionary([objc_msgSend(*(a3 + 104) "device")], v11 + v31);
  }

  if (v34)
  {
    v11[1] = v30;
    MTLSerializePluginDataDictionary(*(a3 + 184), v11 + v30);
  }

  v27 = *MEMORY[0x1E69E9648];

  return dispatch_data_create(v11, v10, 0, v27);
}

void *__MTLSerializePluginDataDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 length];
  result = [a3 length];
  v8 = result;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = (v9 + *(*(*(a1 + 32) + 8) + 24));
    *v10 = v6;
    v10[1] = result;
    v11 = v10 + 2;
    memcpy(v10 + 2, [a2 UTF8String], v6);
    result = memcpy(v11 + v6, [a3 bytes], v8);
  }

  *(*(*(a1 + 32) + 8) + 24) += v6 + v8 + 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

void MTLReleaseAssertionFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a4)
  {
    v15 = [v13 initWithCString:a4 encoding:4];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v15 arguments:&a9];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed assertion %s at line %d in %s. %@", a3, a2, a1, v16];
  }

  else
  {
    v14 = [v13 initWithFormat:@"failed assertion %s at line %d in %s", a3, a2, a1, v17];
  }

  NSLog(&stru_1EF479E60.isa, v14);
  abort();
}

uint64_t MTLGetWarningMode()
{
  if (initFailureModes(void)::pred != -1)
  {
    MTLGetWarningMode_cold_1();
  }

  return dword_1ED5B0978;
}

void MTLSetWarningMode(int a1)
{
  if (initFailureModes(void)::pred != -1)
  {
    MTLGetWarningMode_cold_1();
  }

  dword_1ED5B0978 = a1;
}

void MTLFailureTypeSetErrorModeType(unint64_t a1, int a2)
{
  if (initFailureModes(void)::pred != -1)
  {
    MTLGetWarningMode_cold_1();
  }

  if (a1 >= 5)
  {
    MTLFailureTypeSetErrorModeType_cold_2();
  }

  if (a1 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1;
  }

  errorModes[v4] = a2;
}

uint64_t MTLSetReportFailureBlock(uint64_t result)
{
  if (reportFailureBlock != result)
  {
    v1 = result;

    result = [v1 copy];
    reportFailureBlock = result;
  }

  return result;
}

void MTLReportFailure(int64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = *MEMORY[0x1E69E9840];
  ErrorModeType = MTLFailureTypeGetErrorModeType(a1);
  if (ErrorModeType == 4)
  {
    goto LABEL_29;
  }

  v14 = ErrorModeType;
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a4 arguments:&a9];
  if (reportFailureBlock)
  {
    (*(reportFailureBlock + 16))();
    goto LABEL_29;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v16 = "errorCheckExtended";
      goto LABEL_14;
    }

    if (a1 != 4)
    {
      goto LABEL_30;
    }

    if (dword_1ED5B0974 < 2)
    {
      goto LABEL_27;
    }

LABEL_6:
    v16 = "error";
LABEL_14:
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_15;
  }

  if (a1 < 2)
  {
    goto LABEL_6;
  }

  if (a1 != 2)
  {
    goto LABEL_30;
  }

  v16 = "warning";
  v17 = OS_LOG_TYPE_INFO;
LABEL_15:
  if (v14 <= 2)
  {
    if (v14 != 2)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
          v19 = MEMORY[0x1E695DF30];
          v20 = *MEMORY[0x1E695D920];
          v22[0] = @"Function Name";
          v22[1] = @"Line";
          v23[0] = v18;
          v23[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
          objc_exception_throw([v19 exceptionWithName:v20 reason:v15 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, v22, 2)}]);
        }

LABEL_30:
        abort();
      }

LABEL_26:
      MTLReportFailure_cold_1(v15, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 == 3)
  {
    fprintf_l(*MEMORY[0x1E69E9848], 0, "%s, line %u: %s '%s'\n", a2, a3, v16, [v15 UTF8String]);
    goto LABEL_29;
  }

  if (v14 == 5)
  {
LABEL_27:
    NSLog(&stru_1EF479E60.isa, v15);
    goto LABEL_29;
  }

  if (v14 != 6)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], v17))
  {
    *buf = 136315906;
    v25 = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 2080;
    v29 = v16;
    v30 = 2080;
    v31 = [v15 UTF8String];
    _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], v17, "%s, line %u: %s '%s'\n", buf, 0x26u);
  }

  if (a1 != 4)
  {
    goto LABEL_26;
  }

LABEL_29:
  v21 = *MEMORY[0x1E69E9840];
}

id errorWithMessage(NSString *a1, MTLBinaryArchiveError a2)
{
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1 forKey:*MEMORY[0x1E696A578]];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLArchiveDomain" code:a2 userInfo:v3];

  return v4;
}

void MTLBinaryArchiveLibraryChache::~MTLBinaryArchiveLibraryChache(MTLBinaryArchiveLibraryChache *this)
{
  for (i = (this + 32); ; i[3])
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  for (j = (this + 72); ; j[5])
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 16);
}

uint64_t MTLBinaryArchiveLibraryChache::addFromAirntObject(id *this, MTLAirNTObject *a2, id *a3)
{
  v3 = *a2;
  v4 = 1;
  if (*(a2 + 1) != *a2)
  {
    v8 = 0;
    for (i = 1; ; ++i)
    {
      v27 = 0;
      v10 = *(v3 + 8 * v8);
      if (*(v10 + 8))
      {
        v28 = (*(a2 + 7) + *v10);
        if (!std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(this + 2, &v28))
        {
          subrange = dispatch_data_create_subrange([this[1] dispatchData], v28, *(*(*a2 + 8 * v8) + 8));
          v27 = MTLLibraryBuilder::newLibraryWithData(*(*this + 55), *this, subrange, a3, v12, v13, v14, v15);
          __p[0] = &v28;
          std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(this + 2, &v28)[3] = v27;
          dispatch_release(subrange);
LABEL_14:
          v28 = 0;
          __p[0] = &v28;
          __p[1] = &v27;
          v26 = this;
          v28 = [(_MTLLibrary *)v27 specializedFunctionHashes];
          MTLBinaryArchiveLibraryChache::addFromAirntObject(MTLAirNTObject *,NSError **)::$_0::operator()(__p);
          v28 = [(_MTLLibrary *)v27 stitchingFunctionHashes];
          MTLBinaryArchiveLibraryChache::addFromAirntObject(MTLAirNTObject *,NSError **)::$_0::operator()(__p);
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, *(v10 + 16));
      v16 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(this + 7, __p);
      if (v16)
      {
        goto LABEL_7;
      }

      v22 = mapFileToMemory(*(*(*a2 + 8 * v8) + 16), (this[17] & 1) == 0);
      if (v22)
      {
        v23 = MTLLibraryBuilder::newLibraryWithData(*(*this + 55), *this, v22, a3, v18, v19, v20, v21);
        v27 = v23;
        if (v23)
        {
          v28 = __p;
          std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::piecewise_construct_t const&<>>(this + 7, __p)[5] = v23;
        }

        dispatch_release(v22);
        v17 = 1;
        goto LABEL_12;
      }

      if (!a3 || (this[17] & 1) != 0)
      {
LABEL_7:
        v17 = 0;
      }

      else
      {
        v17 = 0;
        *a3 = errorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to map library at path: %s", *(*(*a2 + 8 * v8) + 16)], MTLBinaryArchiveErrorInvalidFile);
      }

LABEL_12:
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
        if (v17)
        {
          goto LABEL_14;
        }
      }

      else if (v17)
      {
        goto LABEL_14;
      }

      if (!v16)
      {
        return 0;
      }

LABEL_17:
      v8 = i;
      v3 = *a2;
      if (v8 >= (*(a2 + 1) - *a2) >> 3)
      {
        return 1;
      }
    }
  }

  return v4;
}

void sub_185D2E4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBinaryArchiveLibraryChache::addFromAirntObject(MTLAirNTObject *,NSError **)::$_0::operator()(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = **a1;
  result = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v14 + 1) + 8 * v7) getValue:v19];
        v8 = [**(a1 + 8) newSpecializedFunctionWithHash:v19];
        if (v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = [**(a1 + 8) newStitchedFunctionWithHash:v19];
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        v10 = [v9 bitCodeHash];
        v18 = v19;
        v11 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((v2 + 96), v19);
        v12 = v10[1];
        *(v11 + 3) = *v10;
        *(v11 + 4) = v12;
LABEL_10:

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      v5 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

const void *MTLBinaryArchiveLibraryChache::getLibraryInAirntObject(MTLBinaryArchiveLibraryChache *this, MTLAirNTObject *a2, unsigned int a3)
{
  v4 = *(*a2 + 8 * a3);
  if (*(v4 + 8))
  {
    __p[0] = (*(a2 + 7) + *v4);
    v5 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(this + 2, __p);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, *(v4 + 16));
    v7 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(this + 7, __p);
    if (v7)
    {
      v6 = v7[5];
    }

    else
    {
      v6 = 0;
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6;
}

void sub_185D2E718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4ArchiveImpl::~MTL4ArchiveImpl(MTL4ArchiveImpl *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    [(MTLLoader *)*(*(this + 1) + 488) releaseLoadedFile:v2];
  }

  v3 = *(this + 3);
  if (v3)
  {
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 152);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 112);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 72);
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::~__hash_table(this + 32);
}

uint64_t MTL4ArchiveImpl::loadFromURL(MTL4ArchiveImpl *this, NSURL *a2, NSError **a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = [(MTLLoader *)*(*(this + 1) + 488) loadFileWithURL:a2 error:a3 errorDomain:&cfstr_Mtlbinaryarchi.isa invalidFileErrorCode:1];
  *(this + 2) = v6;
  if (!v6)
  {
    *(this + 3) = 0;
LABEL_8:
    if (a3)
    {
      v11 = errorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"unable to open file at URL: %@", -[NSURL absoluteString](a2, "absoluteString")], MTLBinaryArchiveErrorInvalidFile);
LABEL_10:
      v12 = v11;
      result = 0;
      *a3 = v12;
      goto LABEL_46;
    }

LABEL_45:
    result = 0;
    goto LABEL_46;
  }

  v7 = -[MTLLoadedFileContentsWrapper initWithData:]([MTLLoadedFileContentsWrapper alloc], "initWithData:", [*(this + 2) contents]);
  *(this + 3) = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0u;
  v50 = 0u;
  MTL4ArchiveImpl::deserializeBinaryArchiveHeader(this, &v47);
  v46 = 0;
  v8 = [MTLLoader sliceIDForDevice:0 legacyDriverVersion:&v46 airntDriverVersion:?];
  v45 = v8;
  if ((v47 & 1) == 0)
  {
    if (a3)
    {
      *v33 = v8;
      v34 = a2;
      v32 = a3;
      memset(__p, 0, sizeof(__p));
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v13 = v51;
      v14 = [v51 countByEnumeratingWithState:&v40 objects:v53 count:16];
      if (v14)
      {
        v15 = *v41;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(v13);
            }

            std::string::basic_string[abi:ne200100]<0>(&v38, [objc_msgSend(*(*(&v40 + 1) + 8 * i) "name")]);
            if (SHIBYTE(__p[2]) >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v18 = HIBYTE(__p[2]);
            }

            else
            {
              v18 = __p[1];
            }

            v19 = std::string::insert(&v38, 0, v17, v18);
            v20 = *&v19->__r_.__value_.__l.__data_;
            v39.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
            *&v39.__r_.__value_.__l.__data_ = v20;
            v19->__r_.__value_.__l.__size_ = 0;
            v19->__r_.__value_.__r.__words[2] = 0;
            v19->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string[abi:ne200100]<0>(v36, ", ");
            if ((v37 & 0x80u) == 0)
            {
              v21 = v36;
            }

            else
            {
              v21 = v36[0];
            }

            if ((v37 & 0x80u) == 0)
            {
              v22 = v37;
            }

            else
            {
              v22 = v36[1];
            }

            v23 = std::string::append(&v39, v21, v22);
            v24 = v23->__r_.__value_.__r.__words[0];
            v52[0] = v23->__r_.__value_.__l.__size_;
            *(v52 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
            v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            __p[0] = v24;
            __p[1] = v52[0];
            *(&__p[1] + 7) = *(v52 + 7);
            HIBYTE(__p[2]) = v25;
            if (v37 < 0)
            {
              operator delete(v36[0]);
            }

            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v39.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v40 objects:v53 count:16];
        }

        while (v14);
      }

      v26 = MEMORY[0x1E696AEC0];
      public_arch_name_from_id = air_macho_get_public_arch_name_from_id(v33[0], v33[1]);
      v28 = [(NSString *)[(NSURL *)v34 absoluteString] UTF8String];
      v29 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v29 = __p[0];
      }

      *v32 = errorWithMessage([v26 stringWithFormat:@"unable to find %s slice in archive '%s' \n available slices: %s \n", public_arch_name_from_id, v28, v29], MTLBinaryArchiveErrorInvalidFile);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_45;
  }

  memset(__p, 0, 20);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = ___ZN15MTL4ArchiveImpl11loadFromURLEP5NSURLPP7NSError_block_invoke;
  v35[3] = &__block_descriptor_48_e13_r_v24__0Q8Q16l;
  v35[4] = this;
  v35[5] = v49;
  v9 = [MTLLoader deserializeAIRNTToolsVersionForSlice:v49 sliceOffset:__p version:v35 reader:?];

  if (!v9 || (*&v39.__r_.__value_.__l.__data_ = *__p, LODWORD(v39.__r_.__value_.__r.__words[2]) = __p[2], [_MTLBinaryArchive archiveVersionCompatible:&v39 isMatchingSlice:1 device:*(this + 1)]!= 2))
  {
    if (a3)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deployment target for architecture %s found in archive '%s' is not compatible with current OS", air_macho_get_public_arch_name_from_id(v45.var0, v45.var1), -[NSString UTF8String](-[NSURL absoluteString](a2, "absoluteString"), "UTF8String")];
      v11 = errorWithMessage(v30, MTLBinaryArchiveErrorInvalidFile);
      goto LABEL_10;
    }

    goto LABEL_45;
  }

  result = MTL4ArchiveImpl::loadAirntBlocksForSlice(this, &v45, v49);
LABEL_46:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D2EC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4ArchiveImpl::deserializeBinaryArchiveHeader(uint64_t a1, uint64_t a2)
{
  v4 = [MTLLoader sliceIDForDevice:0 andDriverVersion:?];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x5812000000;
  v17[3] = __Block_byref_object_copy__22;
  v17[4] = __Block_byref_object_dispose__23;
  v17[5] = &unk_185DF1D43;
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  *v14 = 0;
  v5 = _MTLGetMTLCompilerLLVMVersionForDevice(*(a1 + 8));
  _MTLGetMaxAIRAndLanguageVersions(v5, &v14[1], v14);
  v6 = [MTLLoader sliceIDForAIRVersion:?];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke;
  v12[3] = &unk_1E6EECFC8;
  v12[8] = a2;
  v12[9] = v4;
  v12[10] = v6;
  v13 = v14[1];
  v12[4] = v15;
  v12[5] = &v20;
  v12[6] = v17;
  v12[7] = a1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke_3;
  v11[3] = &__block_descriptor_40_e13_r_v24__0Q8Q16l;
  v11[4] = a1;
  v7 = +[MTLLoader deserializeUniversalBinaryHeaderWithHandler:reader:bytes:](MTLLoader, v12, v11, [*(a1 + 24) length]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke_4;
  v10[3] = &__block_descriptor_48_e13_r_v24__0Q8Q16l;
  v10[4] = a1;
  v10[5] = a2;
  if (([MTLLoader machOConformsToAIRNTFormat:v10 type:0]& 1) != 0)
  {
    if ((*a2 & 1) == 0)
    {
      v8 = objc_alloc(MEMORY[0x1E695DEC8]);
      *(a2 + 40) = [v8 initWithArray:v21[5]];
    }

    [v21[5] removeAllObjects];
  }

  else
  {

    v7 = 0;
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v18);
  _Block_object_dispose(&v20, 8);
  return v7;
}

void sub_185D2EF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 216), 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v34 + 48);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15MTL4ArchiveImpl11loadFromURLEP5NSURLPP7NSError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40) + a2;
  if (v4 + a3 <= [*(v3 + 24) length])
  {
    return [*(v3 + 24) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

uint64_t MTL4ArchiveImpl::loadAirntBlocksForSlice(MTL4ArchiveImpl *this, const MTLLoaderSliceIdentifier *a2, uint64_t a3)
{
  v67 = 0;
  v68 = &v67;
  v69 = 0xC012000000;
  v70 = __Block_byref_object_copy__28_0;
  v71 = __Block_byref_object_dispose__29_0;
  v72 = "a";
  v5 = *(this + 3);
  v73[0] = *(this + 1);
  v73[1] = v5;
  v74 = 0u;
  v75 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 1065353216;
  v79 = 1065353216;
  v80 = 0u;
  v81 = 0u;
  v82 = 1065353216;
  v83 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x4812000000;
  v61 = __Block_byref_object_copy__31;
  v62 = __Block_byref_object_dispose__32;
  v63 = &unk_185DF1D43;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x4812000000;
  v52 = __Block_byref_object_copy__34;
  v53 = __Block_byref_object_dispose__35;
  v54 = &unk_185DF1D43;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke;
  v48[3] = &__block_descriptor_56_e69_B68__0_MTLLoaderSliceIdentifier_ii_8I16r_____32C__20r_I28Q36Q44Q52Q60l;
  v48[4] = this;
  v48[5] = a2;
  v48[6] = a3;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke_2;
  v47[3] = &unk_1E6EED030;
  v47[6] = this;
  v47[7] = a3;
  v47[4] = &v67;
  v47[5] = &v58;
  v45[5] = a3;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke_3;
  v46[3] = &unk_1E6EEBCF0;
  v46[4] = &v49;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke_5;
  v45[3] = &__block_descriptor_48_e13_r_v24__0Q8Q16l;
  v45[4] = this;
  v6 = [MTLLoader deserializeAirntMachOContainerWithHandler:v48 objectHandler:v47 pipelineHandler:v46 errorHandler:&__block_literal_global_26 reader:v45];
  v7 = v50[6];
  for (i = v50[7]; v7 != i; ++v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v7;
    v13 = *v7 + 2;
    DWORD1(v43[0]) = **v7;
    v14 = v59;
    do
    {
      v16 = *v13;
      v13 += 2;
      v15 = v16;
      if (v16 != -1)
      {
        v17 = *(v14[6] + 8 * v15);
        v18 = *(v17 + 48);
        v19 = *(v17 + 40) + a3;
        v20 = *(v17 + 68);
        v21 = *(v17 + 64) + a3;
        v22 = *(v17 + 32);
        v23 = *(v17 + 24) + a3;
        v24 = *(v17 + 72);
        LODWORD(v17) = *(v17 + 76);
        v25 = &v43[v9];
        *(v25 + 1) = v19;
        *(v25 + 2) = v18;
        *(v25 + 6) = v21;
        *(v25 + 7) = v20;
        *(v25 + 4) = v23;
        *(v25 + 5) = v22;
        *(v25 + 12) = v24 + a3;
        *(v25 + 13) = v17;
        v11 |= 1 << v10;
      }

      ++v10;
      v9 += 3;
    }

    while (v9 != 9);
    LOBYTE(v43[0]) = v11;
    if (*(v12 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v12 + 5), *(v12 + 6));
    }

    else
    {
      __p = *(v12 + 10);
    }

    v39 = v43[6];
    v40 = v43[7];
    v41 = v43[8];
    v35 = v43[2];
    v36 = v43[3];
    v37 = v43[4];
    v38 = v43[5];
    v33 = v43[0];
    v42 = v44;
    v34 = v43[1];
    std::__hash_table<std::__hash_value_type<std::string,MTLArchivePipeline>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLArchivePipeline>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLArchivePipeline>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLArchivePipeline>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLArchivePipeline>>(this + 19, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v6)
  {
    std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__hash_table(&__p, v68 + 18);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(this + 112, &__p);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&__p);
  }

  v26 = v59[6];
  for (j = v59[7]; v26 != j; ++v26)
  {
    if (*v26)
    {
      MTLAirNTObject::~MTLAirNTObject(*v26);
      MEMORY[0x1865FF210]();
    }
  }

  v28 = v50[6];
  for (k = v50[7]; v28 != k; ++v28)
  {
    v30 = *v28;
    if (*v28)
    {
      if (*(v30 + 63) < 0)
      {
        operator delete(*(v30 + 40));
      }

      MEMORY[0x1865FF210](v30, 0x1032C40B82182A8);
    }
  }

  _Block_object_dispose(&v49, 8);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  _Block_object_dispose(&v58, 8);
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  _Block_object_dispose(&v67, 8);
  MTLBinaryArchiveLibraryChache::~MTLBinaryArchiveLibraryChache(v73);
  return v6;
}

void sub_185D2FD9C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  v3 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v3;
    operator delete(v3);
  }

  _Block_object_dispose(&STACK[0x268], 8);
  v4 = STACK[0x298];
  if (STACK[0x298])
  {
    STACK[0x2A0] = v4;
    operator delete(v4);
  }

  _Block_object_dispose(&STACK[0x2B0], 8);
  MTLBinaryArchiveLibraryChache::~MTLBinaryArchiveLibraryChache((v1 + 48));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v8 = *(a1 + 56);
  if (a2 == *(a1 + 72))
  {
    v9 = *(a1 + 64);
    *v9 = 257;
LABEL_8:
    *(v9 + 8) = a3;
    *(v9 + 16) = a4;
    goto LABEL_15;
  }

  if (v24 == *(a1 + 80))
  {
    if (*(a1 + 88) >= HIDWORD(a2))
    {
      v10 = *(a1 + 64);
      if (*(v10 + 2) != 1 || *(*(*(a1 + 32) + 8) + 24) < SHIDWORD(a2))
      {
        *(v10 + 2) = 1;
        *(v10 + 24) = a3;
        *(v10 + 32) = a4;
        *(*(*(a1 + 32) + 8) + 24) = HIDWORD(a2);
      }
    }
  }

  else if ((a2 - 16777235) >= 3)
  {
    if (a2 == 16777239)
    {
      v11 = *(a1 + 64);
      *(v11 + 2) = 1;
      *(v11 + 24) = a3;
      *(v11 + 32) = a4;
    }
  }

  else
  {
    v9 = *(a1 + 64);
    *(v9 + 1) = 1;
    if (!*(v9 + 16) && !*(v9 + 8))
    {
      goto LABEL_8;
    }
  }

LABEL_15:
  v12 = [[MTLArchitecture alloc] initWithCPUType:a2 cpuSubtype:HIDWORD(a2)];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke_2;
  v23[3] = &__block_descriptor_48_e13_r_v24__0Q8Q16l;
  v13 = *(a1 + 64);
  v23[4] = v8;
  v23[5] = v13;
  if (![MTLLoader airNTMachOEmpty:v23 type:0])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = (a2 << 32) | (a2 >> 32);
    v16 = v14[7];
    if (!*&v16)
    {
      goto LABEL_33;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = (a2 << 32) | (a2 >> 32);
      if (v15 >= *&v16)
      {
        v18 = v15 % *&v16;
      }
    }

    else
    {
      v18 = (*&v16 - 1) & v15;
    }

    v19 = *(*&v14[6] + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_33:
      operator new();
    }

    while (1)
    {
      v21 = v20[1];
      if (v21 == v15)
      {
        if (v20[2] == v15)
        {
          v20[3] = a3;
          v20[4] = a4;
          break;
        }
      }

      else
      {
        if (v17.u32[0] > 1uLL)
        {
          if (v21 >= *&v16)
          {
            v21 %= *&v16;
          }
        }

        else
        {
          v21 &= *&v16 - 1;
        }

        if (v21 != v18)
        {
          goto LABEL_33;
        }
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_33;
      }
    }
  }

  return 1;
}

uint64_t ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a3 + a2 + *(*(a1 + 40) + 8);
  if (v6 <= [*(v5 + 24) length])
  {
    return [*(v5 + 24) bytes] + a2 + *(*(a1 + 40) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3 + a2 <= [*(v4 + 24) length])
  {
    return [*(v4 + 24) bytes] + a2;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZN15MTL4ArchiveImpl30deserializeBinaryArchiveHeaderER16MTLArchiveLayout_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a3 + a2 + *(*(a1 + 40) + 8);
  if (v6 <= [*(v5 + 24) length])
  {
    return [*(v5 + 24) bytes] + a2 + *(*(a1 + 40) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t __Block_byref_object_copy__28_0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  std::unordered_map<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>::unordered_map(a1 + 64, a2 + 64);
  std::unordered_map<std::string,objc_object  {objcproto13MTLLibrarySPI}*>::unordered_map(a1 + 104, a2 + 104);
  result = std::unordered_map<MTLUINT256_t,MTLUINT256_t,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,MTLUINT256_t>>>::unordered_map(a1 + 144, a2 + 144);
  *(a1 + 184) = *(a2 + 184);
  return result;
}

void sub_185D305AC(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v1 + 104);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v1 + 64);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__31(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__32(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__34(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__35(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

BOOL ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = **(a1 + 40);
  v10 = v9 != a2;
  if (v9 == a2)
  {
    v15 = *(a1 + 32);
    MTLHashKey::MTLHashKey(&v24, a4, a5, a3);
    v16 = *(a1 + 48);
    MTLHashKey::MTLHashKey(&v19, &v24);
    v20 = v16 + a6;
    v21 = a7;
    v22 = v16 + a8;
    v23 = a9;
    std::__hash_table<std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>>>::__emplace_unique_key_args<MTLHashKey,std::pair<MTLHashKey const,AIRNTStageBaseData>>((v15 + 32), &v19);
    MTLHashKey::~MTLHashKey(&v19);
    MTLHashKey::~MTLHashKey(&v24);
  }

  result = !v10;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D30748(_Unwind_Exception *a1, uint64_t a2, MTLHashKey *a3, uint64_t a4, uint64_t a5, uint64_t a6, MTLHashKey *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  MTLHashKey::~MTLHashKey(&a11);
  MTLHashKey::~MTLHashKey(&a24);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke_2(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if ((*(a2 + 80) & 0x20) != 0)
  {
    *v2 = 1;
  }

  else
  {
    *(a2 + 56) = a1[7];
    MTLBinaryArchiveLibraryChache::addFromAirntObject((*(a1[4] + 8) + 48), a2, 0);
    v5 = *(a1[5] + 8);
    v7 = v5[7];
    v6 = v5[8];
    if (v7 >= v6)
    {
      v9 = v5[6];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>((v5 + 6), v13);
      }

      *(8 * v10) = a2;
      v8 = 8 * v10 + 8;
      v14 = v5[6];
      v15 = v5[7] - v14;
      v16 = (8 * v10 - v15);
      memcpy(v16, v14, v15);
      v17 = v5[6];
      v5[6] = v16;
      v5[7] = v8;
      v5[8] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    v5[7] = v8;
    data[0] = *(a2 + 40) + a1[7];
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, *(**a2 + 24), 0x20u);
    CC_SHA256_Update(&c, data, 8u);
    CC_SHA256_Final(md, &c);
    v18 = a1[7];
    v20 = *(a2 + 24);
    v19 = *(a2 + 32);
    v22 = *(a2 + 72);
    v21 = *(a2 + 76);
    data[2] = md;
    v23 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((v2 + 72), md);
    v23[6] = v20 + v18;
    v23[7] = v19;
    *(v23 + 16) = v22 + v18;
    *(v23 + 17) = v21;
  }

  v24 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>((v3 + 6), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = v3[6];
    v14 = v3[7] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = v3[6];
    v3[6] = v15;
    v3[7] = v6;
    v3[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  v3[7] = v6;
  return 1;
}

uint64_t ___ZN15MTL4ArchiveImpl23loadAirntBlocksForSliceERK24MTLLoaderSliceIdentifiery_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40) + a2;
  if (v4 + a3 <= [*(v3 + 24) length])
  {
    return [*(v3 + 24) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

uint64_t MTL4ArchiveImpl::createSpecializedFunctionHashForArchive@<X0>(const void *a1@<X1>, uint64_t a2@<X2>, const void *a3@<X3>, void *a4@<X4>, unsigned __int8 *a5@<X8>)
{
  CC_SHA256_Init(&c);
  data = 15;
  CC_SHA256_Update(&c, &data, 4u);
  CC_SHA256_Update(&c, a3, 0x20u);
  if (a2)
  {
    CC_SHA256_Update(&c, a1, a2);
  }

  if (a4)
  {
    v11 = [a4 hash];
    CC_SHA256_Update(&c, &v11, 8u);
  }

  if (MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(0, 0))
  {
    v11 = 1;
    CC_SHA256_Update(&c, &v11, 8u);
  }

  return CC_SHA256_Final(a5, &c);
}

void MTL4ArchiveImpl::functionHashWithDescriptor(MTL4ArchiveImpl *this@<X0>, MTL4FunctionDescriptor *a2@<X1>, NSString **a3@<X2>, uint64_t a4@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  v85 = 0u;
  v86 = 0u;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [-[MTL4FunctionDescriptor library](a2 "library")];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 bitCodeHash];
      std::string::basic_string[abi:ne200100]<0>(&v73, [-[MTL4FunctionDescriptor name](a2 "name")]);
      v11 = v10[1];
      *a4 = *v10;
      *(a4 + 16) = v11;
      *(a4 + 32) = v73;
      *(a4 + 48) = v74;
      *(a4 + 56) = v9;
      goto LABEL_79;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in library", -[MTL4FunctionDescriptor name](a2, "name")];
LABEL_30:
    *a3 = v20;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    std::string::basic_string[abi:ne200100]<0>((a4 + 32), "");
    *(a4 + 56) = 0;
    goto LABEL_79;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MTL4ArchiveImpl::functionHashWithDescriptor(v81, this, [(MTL4FunctionDescriptor *)a2 functionDescriptor], a3);
    if (*a3)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      std::string::basic_string[abi:ne200100]<0>((a4 + 32), "");
LABEL_75:
      *(a4 + 56) = 0;
      goto LABEL_76;
    }

    v21 = [(MTL4FunctionDescriptor *)a2 constantValues];
    v22 = [(MTL4FunctionDescriptor *)a2 specializedName];
    if (v84)
    {
      if ([(MTL4FunctionDescriptor *)a2 specializedName])
      {
        v23 = [(MTL4FunctionDescriptor *)a2 specializedName];
        if (([v23 isEqualToString:{objc_msgSend(v84, "name")}] & 1) != 0 || objc_msgSend(-[MTL4FunctionDescriptor specializedName](a2, "specializedName"), "isEqualToString:", &stru_1EF478240))
        {
          v22 = 0;
        }
      }

      if (![objc_msgSend(v84 "functionConstants")] && !v22)
      {
        v24 = [v84 bitCodeHash];
        std::string::basic_string[abi:ne200100]<0>(&v73, [objc_msgSend(v84 "name")]);
        v25 = v24[1];
        *a4 = *v24;
        *(a4 + 16) = v25;
        *(a4 + 32) = v73;
        v26 = v84;
        *(a4 + 48) = v74;
        *(a4 + 56) = v26;
LABEL_76:
        if ((v83 & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

        v33 = v82;
LABEL_78:
        operator delete(v33);
        goto LABEL_79;
      }

      *&v73 = 0;
      v28 = newConstantScriptForFunction(v21, v84, [v84 name], v22, &v73);

      *buffer_ptr = 0;
      size_ptr[0] = 0;
      map = dispatch_data_create_map(v28, buffer_ptr, size_ptr);
      serializeConstantScript(*buffer_ptr, size_ptr[0], v69);

      goto LABEL_63;
    }

    *&v73 = 0;
    BYTE8(v73) = 0;
    v74 = xmmword_185DB8250;
    *__p = 0u;
    v76 = 0u;
    v77 = 0;
    v78 = 1;
    v79 = 256;
    v80 = 0;
    if (v83 < 0)
    {
      v27 = v82;
      if (!v82)
      {
LABEL_56:
        v34 = [v22 cStringUsingEncoding:4];
        v35 = v34;
        if (v34)
        {
          if (*v34)
          {
            v36 = strlen(v34);
            LODWORD(v35) = flatbuffers::FlatBufferBuilder::CreateString(&v73, v35, v36);
          }

          else
          {
            LODWORD(v35) = 0;
          }
        }

        v37 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&v73, &flatbuffers::data<flatbuffers::Offset<Air::FunctionConstantValue>,std::allocator<flatbuffers::Offset<Air::FunctionConstantValue>>>(std::vector<flatbuffers::Offset<Air::FunctionConstantValue>> const&)::t, 0);
        BYTE6(v77) = 1;
        v38 = v76;
        v39 = __p[0];
        v40 = __p[1];
        flatbuffers::FlatBufferBuilder::AddOffset<void>(&v73, 4, v27);
        flatbuffers::FlatBufferBuilder::AddOffset<void>(&v73, 6, v35);
        flatbuffers::FlatBufferBuilder::AddOffset<void>(&v73, 8, v37);
        v41 = flatbuffers::FlatBufferBuilder::EndTable(&v73, v39 - v38 + v40);
        BYTE6(v77) = 1;
        LOWORD(v37) = v76;
        v42 = __p[0];
        v43 = __p[1];
        v44 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(&v73, 2);
        flatbuffers::FlatBufferBuilder::TrackField(&v73, 6, v44);
        flatbuffers::FlatBufferBuilder::AddOffset<void>(&v73, 8, v41);
        v45 = flatbuffers::FlatBufferBuilder::EndTable(&v73, v42 - v37 + v43);
        flatbuffers::FlatBufferBuilder::Finish(&v73, v45, "AIRC", 0);
        v46 = v76;
        v47 = (LODWORD(__p[0]) + LODWORD(__p[1]) - v76);
        *buffer_ptr = v73;
        buffer_ptr[8] = BYTE8(v73);
        *&buffer_ptr[16] = __p[1];
        v66 = __p[0];
        v67 = v76;
        v68 = v47;
        if (BYTE8(v73) == 1)
        {
          *&v73 = 0;
          BYTE8(v73) = 0;
        }

        *__p = 0u;
        v76 = 0u;
        serializeConstantScript(v46, v47, v69);
        flatbuffers::DetachedBuffer::~DetachedBuffer(buffer_ptr);
        flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v73);
LABEL_63:
        v73 = 0u;
        v74 = 0u;
        v48 = v69[0];
        v49 = v69[1];
        if (v70)
        {
          v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        }

        else
        {
          v50 = 0;
        }

        MTL4ArchiveImpl::createSpecializedFunctionHashForArchive(v48, v49, v81, v50, &v73);
        free(v69[0]);
        if (v70)
        {
          free(v70);
        }

        v51 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(this + 14, &v73);
        if (!v22)
        {
          v22 = [v84 name];
        }

        if (v84)
        {
        }

        if (v51)
        {
          std::string::basic_string[abi:ne200100]<0>(buffer_ptr, [v22 cStringUsingEncoding:4]);
          v52 = *buffer_ptr;
          size_ptr[0] = *&buffer_ptr[8];
          *(size_ptr + 7) = *&buffer_ptr[15];
          v53 = buffer_ptr[23];
          v54 = *(v51 + 4);
          *a4 = *(v51 + 3);
          *(a4 + 16) = v54;
          v55 = size_ptr[0];
          *(a4 + 32) = v52;
          *(a4 + 40) = v55;
          *(a4 + 47) = *(size_ptr + 7);
          *(a4 + 55) = v53;
        }

        else
        {
          *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specialized function %@ was not found in archive", v22];
          v56 = v86;
          *a4 = v85;
          *(a4 + 16) = v56;
          std::string::basic_string[abi:ne200100]<0>((a4 + 32), "");
        }

        goto LABEL_75;
      }
    }

    else
    {
      v27 = &v82;
    }

    if (*v27)
    {
      v31 = strlen(v27);
      LODWORD(v27) = flatbuffers::FlatBufferBuilder::CreateString(&v73, v27, v31);
    }

    else
    {
      LODWORD(v27) = 0;
    }

    goto LABEL_56;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected function type while decoding descriptor", v58];
    goto LABEL_30;
  }

  v12 = [(MTL4FunctionDescriptor *)a2 functionGraph];
  std::string::basic_string[abi:ne200100]<0>(buffer_ptr, -[NSString UTF8String](-[MTLFunctionStitchingGraph functionName](v12, "functionName"), "UTF8String"));
  v69[0] = 0;
  v69[1] = 0;
  v70 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v13 = [(MTL4FunctionDescriptor *)a2 functionDescriptors];
  v14 = [v13 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v14)
  {
    v15 = *v62;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v62 != v15)
      {
        objc_enumerationMutation(v13);
      }

      MTL4ArchiveImpl::functionHashWithDescriptor(&v73, this, *(*(&v61 + 1) + 8 * v16), a3);
      v17 = *a3;
      if (*a3)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
        std::string::basic_string[abi:ne200100]<0>((a4 + 32), "");
        *(a4 + 56) = 0;
      }

      else
      {
        if (*(&v76 + 1))
        {
        }

        std::vector<MTLUINT256_t>::push_back[abi:ne200100](v69, &v73);
      }

      if (SBYTE7(v76) < 0)
      {
        operator delete(__p[0]);
      }

      if (v17)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    memset(v81, 0, sizeof(v81));
    *v59 = *v69;
    v60 = v70;
    v69[0] = 0;
    v69[1] = 0;
    v70 = 0;
    _MTLGetStitchingLookupHash(v59, v12, v81);
    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    v18 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(this + 14, v81);
    if (v18)
    {
      v19 = *(v18 + 4);
      v73 = *(v18 + 3);
      v74 = v19;
      if ((buffer_ptr[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(__p, *buffer_ptr, *&buffer_ptr[8]);
      }

      else
      {
        *__p = *buffer_ptr;
        *&v76 = *&buffer_ptr[16];
      }

      v32 = v74;
      *a4 = v73;
      *(a4 + 16) = v32;
      *(a4 + 32) = *__p;
      *(a4 + 48) = v76;
    }

    else
    {
      v30 = buffer_ptr;
      if (buffer_ptr[23] < 0)
      {
        v30 = *buffer_ptr;
      }

      *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stitched function %s was not found in archive", v30];
      *a4 = 0u;
      *(a4 + 16) = 0u;
      std::string::basic_string[abi:ne200100]<0>((a4 + 32), "");
    }

    *(a4 + 56) = 0;
  }

  if (v69[0])
  {
    v69[1] = v69[0];
    operator delete(v69[0]);
  }

  if ((buffer_ptr[23] & 0x80000000) != 0)
  {
    v33 = *buffer_ptr;
    goto LABEL_78;
  }

LABEL_79:
  v57 = *MEMORY[0x1E69E9840];
}

void sub_185D313A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void MTL4ArchiveImpl::functionArraysFomDescriptors(MTL4ArchiveImpl *a1@<X0>, void *a2@<X1>, NSString **a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v15 = 0uLL;
    v16 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v8 = [a2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v8)
    {
      v9 = *v14;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a2);
        }

        MTL4ArchiveImpl::functionHashWithDescriptor(a1, *(*(&v13 + 1) + 8 * v10), a3, v17);
        v11 = *a3;
        if (*a3)
        {
        }

        else
        {
          std::vector<MTLUINT256_t>::push_back[abi:ne200100](a4, v17);
          std::vector<std::string>::push_back[abi:ne200100](a4 + 24, &__p);
        }

        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v11)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [a2 countByEnumeratingWithState:&v13 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (*a3)
    {
      *(a4 + 8) = *a4;
      std::vector<std::string>::clear[abi:ne200100]((a4 + 24));
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(uint64_t a1)
{
  v4 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void MTL4ArchiveImpl::functionsInGroupsFromDescriptor(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = &v7;
  v7 = 0;
  v8 = &v7;
  v9 = 0x4812000000;
  v10 = __Block_byref_object_copy__60;
  v11 = __Block_byref_object_dispose__61;
  v12 = &unk_185DF1D43;
  memset(v13, 0, sizeof(v13));
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZN15MTL4ArchiveImpl31functionsInGroupsFromDescriptorEP12NSDictionaryIP8NSStringP7NSArrayIP22MTL4FunctionDescriptorEEPS2__block_invoke;
    v6[3] = &unk_1E6EED058;
    v6[5] = a1;
    v6[6] = a3;
    v6[4] = &v7;
    [a2 enumerateKeysAndObjectsUsingBlock:v6];
    v5 = v8;
    a2 = v8[6];
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<std::pair<std::string,std::vector<std::string>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<std::string>>*,std::pair<std::string,std::vector<std::string>>*>(a4, a2, v5[7], 0xAAAAAAAAAAAAAAABLL * ((v5[7] - a2) >> 4));
  _Block_object_dispose(&v7, 8);
  v14 = v13;
  std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_185D317AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  *(v10 - 24) = v9;
  std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100]((v10 - 24));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__60(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN15MTL4ArchiveImpl31functionsInGroupsFromDescriptorEP12NSDictionaryIP8NSStringP7NSArrayIP22MTL4FunctionDescriptorEEPS2__block_invoke(uint64_t a1, void *a2, void *a3)
{
  MTL4ArchiveImpl::functionArraysFomDescriptors(*(a1 + 40), a3, *(a1 + 48), v14);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 8);
  if (v5)
  {
    v8 = *(v6 + 48);
    for (i = *(v6 + 56); i != v8; std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](v6 + 48, i))
    {
      i -= 48;
    }

    *(v6 + 56) = v8;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v9, [a2 UTF8String]);
    std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string,std::vector<std::string>&,0>(__p, v9, v15);
    std::vector<std::pair<std::string,std::vector<std::string>>>::push_back[abi:ne200100]((v6 + 48), __p);
    v16 = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  __p[0] = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }
}

void sub_185D3192C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::pair<std::string,std::vector<std::string>>::~pair(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&a21);
  _Unwind_Resume(a1);
}

void **std::vector<std::pair<std::string,std::vector<std::string>>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(result, v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
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
    result = std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = (v4 + 48);
  }

  v3[1] = v7;
  return result;
}

uint64_t MTL4ArchiveImpl::convertColorAttachments(MTL4ArchiveImpl *this, MTLRenderPipelineColorAttachmentDescriptorArray *a2, MTL4RenderPipelineColorAttachmentDescriptorArray *a3)
{
  for (i = 0; i != 8; ++i)
  {
    -[MTLRenderPipelineColorAttachmentDescriptor setPixelFormat:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setPixelFormat:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "pixelFormat"}]);
    -[MTLRenderPipelineColorAttachmentDescriptor setBlendingStateSPI:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setBlendingStateSPI:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "blendingState"}]);
    -[MTLRenderPipelineColorAttachmentDescriptor setSourceRGBBlendFactor:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setSourceRGBBlendFactor:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "sourceRGBBlendFactor"}]);
    -[MTLRenderPipelineColorAttachmentDescriptor setSourceAlphaBlendFactor:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setSourceAlphaBlendFactor:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "sourceAlphaBlendFactor"}]);
    -[MTLRenderPipelineColorAttachmentDescriptor setDestinationRGBBlendFactor:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setDestinationRGBBlendFactor:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "destinationRGBBlendFactor"}]);
    -[MTLRenderPipelineColorAttachmentDescriptor setRgbBlendOperation:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setRgbBlendOperation:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "rgbBlendOperation"}]);
    -[MTLRenderPipelineColorAttachmentDescriptor setDestinationAlphaBlendFactor:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setDestinationAlphaBlendFactor:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "destinationAlphaBlendFactor"}]);
    -[MTLRenderPipelineColorAttachmentDescriptor setAlphaBlendOperation:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setAlphaBlendOperation:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "alphaBlendOperation"}]);
    result = -[MTLRenderPipelineColorAttachmentDescriptor setWriteMask:](-[MTLRenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2, "objectAtIndexedSubscript:", i), "setWriteMask:", [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a3 objectAtIndexedSubscript:{i), "writeMask"}]);
  }

  return result;
}

const unint64_t *MTL4ArchiveImpl::copyRemapArray(MTL4ArchiveImpl *this, MTLLogicalToPhysicalColorAttachmentMap *a2, MTLLogicalToPhysicalColorAttachmentMap *a3)
{
  v9 = 0;
  result = [(MTLLogicalToPhysicalColorAttachmentMap *)a3 map:&v9];
  if (v9)
  {
    v5 = result;
    v6 = 0;
    v7 = 1;
    do
    {
      result = [(MTLLogicalToPhysicalColorAttachmentMap *)a2 setPhysicalIndex:v6 forLogicalIndex:v5[v6]];
      v6 = v7;
    }

    while (v9 > v7++);
  }

  return result;
}

uint64_t MTL4ArchiveImpl::copyTileColorAttachments(MTL4ArchiveImpl *this, MTLTileRenderPipelineColorAttachmentDescriptorArray *a2, MTLTileRenderPipelineColorAttachmentDescriptorArray *a3)
{
  for (i = 0; i != 8; ++i)
  {
    result = [[(MTLTileRenderPipelineColorAttachmentDescriptorArray *)a2 objectAtIndexedSubscript:i] setPixelFormat:[[(MTLTileRenderPipelineColorAttachmentDescriptorArray *)a3 objectAtIndexedSubscript:i] pixelFormat]];
  }

  return result;
}

void MTL4ArchiveImpl::functionId(dispatch_data_t data@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  size_ptr = 0;
  buffer_ptr = 0;
  v13 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  IsFrozen = _MTLDeviceIsFrozen(*(a2 + 8));
  PipelineFrameworkHash = _getPipelineFrameworkHash((buffer_ptr + *buffer_ptr), a6, IsFrozen);
  v16 = *(PipelineFrameworkHash + 1);
  v34 = *PipelineFrameworkHash;
  v35 = v16;
  getGPUCompilerHashForScript(buffer_ptr, a6, v24);
  v26 = v24[0];
  v27 = v24[1];
  v17 = a5[1];
  v29 = *a5;
  v25 = 1026;
  v28 = 1027;
  v30 = v17;
  v31 = 1032;
  v32 = v34;
  v33 = v35;
  __p = 0;
  v20 = 0;
  v21 = 0;
  std::vector<std::pair<unsigned int,MTLUINT256_t const>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,MTLUINT256_t const> const*,std::pair<unsigned int,MTLUINT256_t const> const*>(&__p, &v25, &v34, 3uLL);
  free(PipelineFrameworkHash);
  dispatch_release(v13);
  MTLHashKey::MTLHashKey(a7, a3, a4, &__p);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_185D31ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MTL4ArchiveReply *MTL4ArchiveImpl::newErrorReply(MTL4ArchiveImpl *this, NSString *a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", a2];
  v3 = [MTL4ArchiveReply alloc];

  return [(MTL4ArchiveReply *)v3 initWithError:v2];
}

MTL4ArchiveReply *MTL4ArchiveImpl::newArchiveReplyForPipelineWithDescriptor(MTL4ArchiveImpl *a1, void *a2, uint64_t a3, __int128 *a4)
{
  v142 = *MEMORY[0x1E69E9840];
  v119[1] = 0;
  __dst[0] = 0;
  v118 = 0;
  v119[0] = 0;
  v116 = 0;
  v117[0] = 0;
  v117[1] = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      v124 = 0u;
      memset(v125, 0, sizeof(v125));
      v126 = 0u;
      memset(v127, 0, sizeof(v127));
      v134 = 0u;
      *v135 = 0u;
      v110 = 0uLL;
      v111 = 0;
      v11 = objc_opt_new();
      if ([a2 vertexFunctionDescriptor])
      {
        MTL4ArchiveImpl::functionHashWithDescriptor(a1, [a2 vertexFunctionDescriptor], __dst, &v133);
        if (v133.var2.var0)
        {
        }

        v12 = __dst[0];
        if (__dst[0])
        {
          if (v11)
          {

            v12 = __dst[0];
          }

          v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v12]);
          v13 = 0;
          v14 = 0;
        }

        else
        {
          MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "vertexStaticLinkingDescriptor")], __dst, &v137);
          v23 = __dst[0];
          if (__dst[0])
          {
            if (v11)
            {

              v23 = __dst[0];
            }

            v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v23]);
            v13 = 0;
            v14 = 0;
          }

          else
          {
            MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "vertexStaticLinkingDescriptor")], __dst, &v112);
            v28 = __dst[0];
            if (__dst[0])
            {
              if (v11)
              {

                v28 = __dst[0];
              }

              v4 = MTL4ArchiveImpl::newErrorReply(v27, v28);
              v13 = 0;
              v14 = 0;
            }

            else
            {
              MTL4ArchiveImpl::functionsInGroupsFromDescriptor(a1, [objc_msgSend(a2 "vertexStaticLinkingDescriptor")], __dst, __p);
              v34 = __dst[0];
              v14 = __dst[0] == 0;
              if (__dst[0])
              {
                if (v11)
                {

                  v34 = __dst[0];
                }

                v4 = MTL4ArchiveImpl::newErrorReply(v33, v34);
                v13 = 0;
              }

              else
              {
                -[MTLRenderPipelineDescriptor setVertexDescriptor:](v11, "setVertexDescriptor:", [a2 vertexDescriptor]);
                -[MTLRenderPipelineDescriptor setSupportAddingVertexBinaryFunctions:](v11, "setSupportAddingVertexBinaryFunctions:", [a2 supportVertexBinaryLinking] | -[MTLRenderPipelineDescriptor supportAddingVertexBinaryFunctions](v11, "supportAddingVertexBinaryFunctions"));
                -[MTLRenderPipelineDescriptor setInputPrimitiveTopology:](v11, "setInputPrimitiveTopology:", [a2 inputPrimitiveTopology]);
                -[MTLRenderPipelineDescriptor setMaxVertexAmplificationCount:](v11, "setMaxVertexAmplificationCount:", [a2 maxVertexAmplificationCount]);
                if ((v122[7] & 0x80000000) != 0)
                {
                  operator delete(v121);
                }

                v121 = *&v133.var1.var0[8];
                *v122 = *&v133.var1.var0[24];
                v133.var1.var0[31] = 0;
                v133.var1.var0[8] = 0;
                v4 = &v121;
                std::vector<std::string>::__vdeallocate(&v122[8]);
                *&v122[8] = v139;
                memset(&v139, 0, sizeof(v139));
                std::vector<std::string>::__vdeallocate(&v122[32]);
                *&v122[32] = v114;
                *&v122[48] = v115;
                v115 = 0;
                v114 = 0uLL;
                std::vector<std::pair<std::string,std::vector<std::string>>>::__vdeallocate(&v122[56]);
                *&v122[56] = *__p;
                *&v122[72] = v109;
                __p[1] = 0;
                v109 = 0;
                __p[0] = 0;
                v123 = [a2 supportVertexBinaryLinking];
                if (a3 == 1)
                {
                  v134 = *&v133.var0.var0;
                  *v135 = *&v133.var0.var2;
                  std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v137, v138, (v138 - v137) >> 5);
                  std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v112, v113[0], (v113[0] - v112) >> 5);
                  v46 = &v121;
                  if (v122[7] < 0)
                  {
                    v46 = v121;
                  }

                  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"vertex function %s", v46];
                }

                else
                {
                  v13 = 0;
                }
              }

              *&v102 = __p;
              std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v102);
            }

            __p[0] = &v114;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
            if (v112)
            {
              v113[0] = v112;
              operator delete(v112);
            }
          }

          v112 = &v139;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v112);
          if (v137)
          {
            v138 = v137;
            operator delete(v137);
          }
        }

        if (v133.var1.var0[31] < 0)
        {
          operator delete(*&v133.var1.var0[8]);
          if (!v14)
          {
            goto LABEL_170;
          }
        }

        else if (!v14)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v13 = 0;
      }

      if (![a2 fragmentFunctionDescriptor])
      {
LABEL_166:
        -[MTLRenderPipelineDescriptor setSupportIndirectCommandBuffers:](v11, "setSupportIndirectCommandBuffers:", [a2 supportIndirectCommandBuffers] != 0);
        v66 = _MTLCreateRenderPipelineScriptFromPartialDescriptor(v11, &v121);
        MTL4ArchiveImpl::functionId(v66, a1, &v134, &v110, a4, a3, &v133);
        v10 = MTL4ArchiveImpl::newArchiveReplyForKey(a1, &v133);
        if (!v10)
        {
          v10 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Failed to find %@ with key:%@", v13, MTLHashKey::description(&v133))]);
        }

        MTLHashKey::~MTLHashKey(&v133);
        v67 = 1;
        goto LABEL_171;
      }

      MTL4ArchiveImpl::functionHashWithDescriptor(a1, [a2 fragmentFunctionDescriptor], __dst, &v133);
      if (v133.var2.var0)
      {
      }

      v57 = __dst[0];
      if (__dst[0])
      {
        if (v11)
        {

          v57 = __dst[0];
        }

        v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v57]);
        v58 = 0;
      }

      else
      {
        MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "fragmentStaticLinkingDescriptor")], __dst, &v137);
        v59 = __dst[0];
        if (__dst[0])
        {
          if (v11)
          {

            v59 = __dst[0];
          }

          v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v59]);
          v58 = 0;
        }

        else
        {
          MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "fragmentStaticLinkingDescriptor")], __dst, &v112);
          v61 = __dst[0];
          if (__dst[0])
          {
            if (v11)
            {

              v61 = __dst[0];
            }

            v4 = MTL4ArchiveImpl::newErrorReply(v60, v61);
            v58 = 0;
          }

          else
          {
            MTL4ArchiveImpl::functionsInGroupsFromDescriptor(a1, [objc_msgSend(a2 "fragmentStaticLinkingDescriptor")], __dst, __p);
            v63 = __dst[0];
            v58 = __dst[0] == 0;
            if (__dst[0])
            {
              if (v11)
              {

                v63 = __dst[0];
              }

              v4 = MTL4ArchiveImpl::newErrorReply(v62, v63);
            }

            else
            {
              v97 = [(MTLRenderPipelineDescriptor *)v11 colorAttachments];
              v64 = [a2 colorAttachments];
              MTL4ArchiveImpl::convertColorAttachments(v64, v97, v64);
              -[MTLRenderPipelineDescriptor setSupportAddingFragmentBinaryFunctions:](v11, "setSupportAddingFragmentBinaryFunctions:", [a2 supportFragmentBinaryLinking] | -[MTLRenderPipelineDescriptor supportAddingFragmentBinaryFunctions](v11, "supportAddingFragmentBinaryFunctions"));
              -[MTLRenderPipelineDescriptor setAlphaToCoverageStateSPI:](v11, "setAlphaToCoverageStateSPI:", [a2 alphaToCoverageState]);
              -[MTLRenderPipelineDescriptor setAlphaToOneStateSPI:](v11, "setAlphaToOneStateSPI:", [a2 alphaToOneState]);
              -[MTLRenderPipelineDescriptor setColorAttachmentMappingState:](v11, "setColorAttachmentMappingState:", [a2 colorAttachmentMappingState]);
              -[MTLRenderPipelineDescriptor setRasterizationEnabled:](v11, "setRasterizationEnabled:", [a2 isRasterizationEnabled]);
              -[MTLRenderPipelineDescriptor setRasterSampleCount:](v11, "setRasterSampleCount:", [a2 rasterSampleCount]);
              [(MTLRenderPipelineDescriptor *)v11 setDepthAttachmentPixelFormat:651];
              [(MTLRenderPipelineDescriptor *)v11 setStencilAttachmentPixelFormat:652];
              if (SHIBYTE(v125[0]) < 0)
              {
                operator delete(v124);
              }

              v124 = *&v133.var1.var0[8];
              v125[0] = *&v133.var1.var0[24];
              v133.var1.var0[31] = 0;
              v133.var1.var0[8] = 0;
              std::vector<std::string>::__vdeallocate(&v125[1]);
              *&v125[1] = v139;
              memset(&v139, 0, sizeof(v139));
              std::vector<std::string>::__vdeallocate(&v126);
              v126 = v114;
              v127[0] = v115;
              v115 = 0;
              v114 = 0uLL;
              std::vector<std::pair<std::string,std::vector<std::string>>>::__vdeallocate(&v127[1]);
              *&v127[1] = *__p;
              v127[3] = v109;
              __p[1] = 0;
              v109 = 0;
              __p[0] = 0;
              v128 = [a2 supportFragmentBinaryLinking];
              if (a3 == 2)
              {
                v134 = *&v133.var0.var0;
                *v135 = *&v133.var0.var2;
                std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v137, v138, (v138 - v137) >> 5);
                std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v112, v113[0], (v113[0] - v112) >> 5);
                v65 = &v124;
                if (v125[0] < 0)
                {
                  v65 = v124;
                }

                v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fragment function %s", v65];
              }
            }

            *&v102 = __p;
            std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v102);
          }

          std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v112);
        }

        v112 = &v139;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v112);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }
      }

      if (v133.var1.var0[31] < 0)
      {
        operator delete(*&v133.var1.var0[8]);
        if (v58)
        {
          goto LABEL_166;
        }
      }

      else if (v58)
      {
        goto LABEL_166;
      }

LABEL_170:
      v67 = 0;
      v10 = 0;
LABEL_171:
      if (v110)
      {
        *(&v110 + 1) = v110;
        operator delete(v110);
      }

      for (i = 0; i != -26; i -= 13)
      {
        v133.var0.var0 = &v127[i + 1];
        std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v133);
        v133.var0.var0 = &v127[i - 2];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
        v133.var0.var0 = &v125[i + 1];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
        if (SHIBYTE(v125[i]) < 0)
        {
          operator delete(v125[i - 2]);
        }
      }

      goto LABEL_177;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_opt_new();
      v121 = 0u;
      memset(v122, 0, sizeof(v122));
      MTL4ArchiveImpl::functionHashWithDescriptor(a1, [a2 tileFunctionDescriptor], __dst, &v137);
      if (v141)
      {
      }

      v15 = __dst[0];
      if (__dst[0])
      {
        if (v4)
        {

          v15 = __dst[0];
        }

        v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v15]);
        v16 = 0;
        v10 = 0;
      }

      else
      {
        MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "staticLinkingDescriptor")], __dst, &v112);
        v24 = __dst[0];
        if (__dst[0])
        {
          if (v4)
          {

            v24 = __dst[0];
          }

          v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v24]);
          v16 = 0;
          v10 = 0;
        }

        else
        {
          MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "staticLinkingDescriptor")], __dst, &v134);
          v30 = __dst[0];
          if (__dst[0])
          {
            if (v4)
            {

              v30 = __dst[0];
            }

            v4 = MTL4ArchiveImpl::newErrorReply(v29, v30);
            v16 = 0;
            v10 = 0;
          }

          else
          {
            MTL4ArchiveImpl::functionsInGroupsFromDescriptor(a1, [objc_msgSend(a2 "staticLinkingDescriptor")], __dst, &v110);
            v36 = __dst[0];
            v16 = __dst[0] == 0;
            if (__dst[0])
            {
              if (v4)
              {

                v36 = __dst[0];
              }

              v4 = MTL4ArchiveImpl::newErrorReply(v35, v36);
              v10 = 0;
            }

            else
            {
              __p[0] = 0;
              __p[1] = 0;
              v109 = 0;
              std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(__p, 0, v112, v113[0], (v113[0] - v112) >> 5);
              std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(__p, __p[1], v134, *(&v134 + 1), (*(&v134 + 1) - v134) >> 5);
              v96 = [(MTL4ArchiveReply *)v4 colorAttachments];
              v47 = [a2 colorAttachments];
              MTL4ArchiveImpl::copyTileColorAttachments(v47, v96, v47);
              -[MTL4ArchiveReply setRasterSampleCount:](v4, "setRasterSampleCount:", [a2 rasterSampleCount]);
              -[MTL4ArchiveReply setThreadgroupSizeMatchesTileSize:](v4, "setThreadgroupSizeMatchesTileSize:", [a2 threadgroupSizeMatchesTileSize]);
              -[MTL4ArchiveReply setMaxTotalThreadsPerThreadgroup:](v4, "setMaxTotalThreadsPerThreadgroup:", [a2 maxTotalThreadsPerThreadgroup]);
              -[MTL4ArchiveReply setSupportAddingBinaryFunctions:](v4, "setSupportAddingBinaryFunctions:", [a2 supportBinaryLinking] | -[MTL4ArchiveReply supportAddingBinaryFunctions](v4, "supportAddingBinaryFunctions"));
              if ((v122[7] & 0x80000000) != 0)
              {
                operator delete(v121);
              }

              v121 = *&v139.__end_;
              *v122 = v140;
              HIBYTE(v140) = 0;
              LOBYTE(v139.__end_) = 0;
              std::vector<std::string>::__vdeallocate(&v122[8]);
              *&v122[8] = v114;
              *&v122[24] = v115;
              v115 = 0;
              v114 = 0uLL;
              std::vector<std::string>::__vdeallocate(&v122[32]);
              *&v122[32] = *&v135[8];
              *&v122[48] = v136;
              *&v135[16] = 0;
              v136 = 0;
              *&v135[8] = 0;
              std::vector<std::pair<std::string,std::vector<std::string>>>::__vdeallocate(&v122[56]);
              *&v122[56] = v110;
              *&v122[72] = v111;
              v111 = 0;
              v110 = 0uLL;
              v123 = [(MTL4ArchiveReply *)v4 supportAddingBinaryFunctions];
              v48 = _MTLCreateTileRenderPipelineScriptFromPartialDescriptor(v4, &v121);
              MTL4ArchiveImpl::functionId(v48, a1, &v137, __p, a4, a3, &v133);
              v10 = MTL4ArchiveImpl::newArchiveReplyForKey(a1, &v133);
              if (!v10)
              {
                v49 = MEMORY[0x1E696AEC0];
                v50 = v122[7];
                v51 = v121;
                v52 = MTLHashKey::description(&v133);
                v53 = &v121;
                if (v50 < 0)
                {
                  v53 = v51;
                }

                v54 = [v49 stringWithFormat:@"Failed to find tile function: %s with key:%@", v53, v52];
                v10 = MTL4ArchiveImpl::newErrorReply(v54, v54);
              }

              MTLHashKey::~MTLHashKey(&v133);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }
            }

            v133.var0.var0 = &v110;
            std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v133);
          }

          std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v134);
        }

        v133.var0.var0 = &v114;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
        if (v112)
        {
          v113[0] = v112;
          operator delete(v112);
        }
      }

      if (SHIBYTE(v140) < 0)
      {
        operator delete(v139.__end_);
      }

      v133.var0.var0 = &v122[56];
      std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v133);
      v133.var0.var0 = &v122[32];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
      v133.var0.var0 = &v122[8];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
      if ((v122[7] & 0x80000000) != 0)
      {
        operator delete(v121);
        if (!v16)
        {
          goto LABEL_179;
        }
      }

      else if (!v16)
      {
        goto LABEL_179;
      }

      goto LABEL_178;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_178;
    }

    v18 = objc_opt_new();
    v121 = 0u;
    memset(v122, 0, sizeof(v122));
    v124 = 0u;
    memset(v125, 0, sizeof(v125));
    v126 = 0u;
    memset(v127, 0, sizeof(v127));
    memset(v129, 0, sizeof(v129));
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v134 = 0u;
    *v135 = 0u;
    v110 = 0uLL;
    v111 = 0;
    if ([a2 meshFunctionDescriptor])
    {
      MTL4ArchiveImpl::functionHashWithDescriptor(a1, [a2 meshFunctionDescriptor], __dst, &v133);
      if (v133.var2.var0)
      {
      }

      v19 = __dst[0];
      if (__dst[0])
      {
        if (v18)
        {

          v19 = __dst[0];
        }

        v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v19]);
        v20 = 0;
        v21 = 0;
      }

      else
      {
        MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "meshStaticLinkingDescriptor")], __dst, &v137);
        v32 = __dst[0];
        if (__dst[0])
        {
          if (v18)
          {

            v32 = __dst[0];
          }

          v4 = MTL4ArchiveImpl::newErrorReply(v31, v32);
          v20 = 0;
          v21 = 0;
        }

        else
        {
          MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "meshStaticLinkingDescriptor")], __dst, &v112);
          v38 = __dst[0];
          if (__dst[0])
          {
            if (v18)
            {

              v38 = __dst[0];
            }

            v4 = MTL4ArchiveImpl::newErrorReply(v37, v38);
            v20 = 0;
            v21 = 0;
          }

          else
          {
            MTL4ArchiveImpl::functionsInGroupsFromDescriptor(a1, [objc_msgSend(a2 "meshStaticLinkingDescriptor")], __dst, __p);
            v56 = __dst[0];
            v21 = __dst[0] == 0;
            if (__dst[0])
            {
              if (v18)
              {

                v56 = __dst[0];
              }

              v4 = MTL4ArchiveImpl::newErrorReply(v55, v56);
              v20 = 0;
            }

            else
            {
              -[MTLMeshRenderPipelineDescriptor setRasterizationEnabled:](v18, "setRasterizationEnabled:", [a2 isRasterizationEnabled]);
              -[MTLMeshRenderPipelineDescriptor setMaxTotalThreadsPerMeshThreadgroup:](v18, "setMaxTotalThreadsPerMeshThreadgroup:", [a2 maxTotalThreadsPerMeshThreadgroup]);
              -[MTLMeshRenderPipelineDescriptor setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:](v18, "setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:", [a2 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth]);
              -[MTLMeshRenderPipelineDescriptor setSupportAddingMeshBinaryFunctions:](v18, "setSupportAddingMeshBinaryFunctions:", [a2 supportMeshBinaryLinking] | -[MTLMeshRenderPipelineDescriptor supportAddingMeshBinaryFunctions](v18, "supportAddingMeshBinaryFunctions"));
              if (a2)
              {
                [a2 requiredThreadsPerMeshThreadgroup];
              }

              else
              {
                v104 = 0uLL;
                v105 = 0;
              }

              v102 = v104;
              v103 = v105;
              [(MTLMeshRenderPipelineDescriptor *)v18 setRequiredThreadsPerMeshThreadgroup:&v102];
              if ((v122[7] & 0x80000000) != 0)
              {
                operator delete(v121);
              }

              v121 = *&v133.var1.var0[8];
              *v122 = *&v133.var1.var0[24];
              v133.var1.var0[31] = 0;
              v133.var1.var0[8] = 0;
              v4 = &v121;
              std::vector<std::string>::__vdeallocate(&v122[8]);
              *&v122[8] = v139;
              memset(&v139, 0, sizeof(v139));
              std::vector<std::string>::__vdeallocate(&v122[32]);
              *&v122[32] = v114;
              *&v122[48] = v115;
              v115 = 0;
              v114 = 0uLL;
              v123 = [(MTLMeshRenderPipelineDescriptor *)v18 supportAddingMeshBinaryFunctions];
              if (a3 == 7)
              {
                v134 = *&v133.var0.var0;
                *v135 = *&v133.var0.var2;
                std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v137, v138, (v138 - v137) >> 5);
                std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v112, v113[0], (v113[0] - v112) >> 5);
                v71 = &v121;
                if (v122[7] < 0)
                {
                  v71 = v121;
                }

                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mesh function %s", v71];
              }

              else
              {
                v20 = 0;
              }
            }

            *&v102 = __p;
            std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v102);
          }

          std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v112);
        }

        std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v137);
      }

      if (v133.var1.var0[31] < 0)
      {
        operator delete(*&v133.var1.var0[8]);
      }

      if (!v21)
      {
        goto LABEL_265;
      }
    }

    else
    {
      v20 = 0;
    }

    if (![a2 objectFunctionDescriptor])
    {
      goto LABEL_261;
    }

    MTL4ArchiveImpl::functionHashWithDescriptor(a1, [a2 objectFunctionDescriptor], __dst, &v133);
    if (v133.var2.var0)
    {
    }

    v73 = __dst[0];
    if (__dst[0])
    {
      if (v18)
      {

        v73 = __dst[0];
      }

      v4 = MTL4ArchiveImpl::newErrorReply(v72, v73);
      v74 = 0;
    }

    else
    {
      MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "objectStaticLinkingDescriptor")], __dst, &v137);
      v76 = __dst[0];
      if (__dst[0])
      {
        if (v18)
        {

          v76 = __dst[0];
        }

        v4 = MTL4ArchiveImpl::newErrorReply(v75, v76);
        v74 = 0;
      }

      else
      {
        MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "objectStaticLinkingDescriptor")], __dst, &v112);
        v78 = __dst[0];
        if (__dst[0])
        {
          if (v18)
          {

            v78 = __dst[0];
          }

          v4 = MTL4ArchiveImpl::newErrorReply(v77, v78);
          v74 = 0;
        }

        else
        {
          MTL4ArchiveImpl::functionsInGroupsFromDescriptor(a1, [objc_msgSend(a2 "objectStaticLinkingDescriptor")], __dst, __p);
          v80 = __dst[0];
          v74 = __dst[0] == 0;
          if (__dst[0])
          {
            if (v18)
            {

              v80 = __dst[0];
            }

            v4 = MTL4ArchiveImpl::newErrorReply(v79, v80);
          }

          else
          {
            -[MTLMeshRenderPipelineDescriptor setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:](v18, "setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:", [a2 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth]);
            if (a2)
            {
              [a2 requiredThreadsPerObjectThreadgroup];
            }

            else
            {
              v100 = 0uLL;
              v101 = 0;
            }

            v102 = v100;
            v103 = v101;
            [(MTLMeshRenderPipelineDescriptor *)v18 setRequiredThreadsPerObjectThreadgroup:&v102];
            -[MTLMeshRenderPipelineDescriptor setMaxTotalThreadsPerObjectThreadgroup:](v18, "setMaxTotalThreadsPerObjectThreadgroup:", [a2 maxTotalThreadsPerObjectThreadgroup]);
            -[MTLMeshRenderPipelineDescriptor setSupportAddingObjectBinaryFunctions:](v18, "setSupportAddingObjectBinaryFunctions:", [a2 supportObjectBinaryLinking] | -[MTLMeshRenderPipelineDescriptor supportAddingObjectBinaryFunctions](v18, "supportAddingObjectBinaryFunctions"));
            if (SHIBYTE(v129[0].__end_cap_.__value_) < 0)
            {
              operator delete(v129[0].__begin_);
            }

            v129[0] = *&v133.var1.var0[8];
            v133.var1.var0[31] = 0;
            v133.var1.var0[8] = 0;
            std::vector<std::string>::__vdeallocate(&v129[1]);
            v129[1] = v139;
            memset(&v139, 0, sizeof(v139));
            std::vector<std::string>::__vdeallocate(&v130);
            v130 = v114;
            *&v131 = v115;
            v115 = 0;
            v114 = 0uLL;
            v123 = [(MTLMeshRenderPipelineDescriptor *)v18 supportAddingObjectBinaryFunctions];
            if (a3 == 8)
            {
              v134 = *&v133.var0.var0;
              *v135 = *&v133.var0.var2;
              std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v137, v138, (v138 - v137) >> 5);
              std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v112, v113[0], (v113[0] - v112) >> 5);
              begin = v129;
              if (SHIBYTE(v129[0].__end_cap_.__value_) < 0)
              {
                begin = v129[0].__begin_;
              }

              v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"object function %s", begin];
            }
          }

          *&v102 = __p;
          std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v102);
        }

        std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v112);
      }

      std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v137);
    }

    if (v133.var1.var0[31] < 0)
    {
      operator delete(*&v133.var1.var0[8]);
    }

    if (v74)
    {
LABEL_261:
      if (![a2 fragmentFunctionDescriptor])
      {
        goto LABEL_262;
      }

      MTL4ArchiveImpl::functionHashWithDescriptor(a1, [a2 fragmentFunctionDescriptor], __dst, &v133);
      if (v133.var2.var0)
      {
      }

      v83 = __dst[0];
      if (__dst[0])
      {
        if (v18)
        {

          v83 = __dst[0];
        }

        v4 = MTL4ArchiveImpl::newErrorReply(v82, v83);
        v84 = 0;
      }

      else
      {
        MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "fragmentStaticLinkingDescriptor")], __dst, &v137);
        v86 = __dst[0];
        if (__dst[0])
        {
          if (v18)
          {

            v86 = __dst[0];
          }

          v4 = MTL4ArchiveImpl::newErrorReply(v85, v86);
          v84 = 0;
        }

        else
        {
          MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "fragmentStaticLinkingDescriptor")], __dst, &v112);
          v88 = __dst[0];
          if (__dst[0])
          {
            if (v18)
            {

              v88 = __dst[0];
            }

            v4 = MTL4ArchiveImpl::newErrorReply(v87, v88);
            v84 = 0;
          }

          else
          {
            MTL4ArchiveImpl::functionsInGroupsFromDescriptor(a1, [objc_msgSend(a2 "fragmentStaticLinkingDescriptor")], __dst, __p);
            v90 = __dst[0];
            v84 = __dst[0] == 0;
            if (__dst[0])
            {
              if (v18)
              {

                v90 = __dst[0];
              }

              v4 = MTL4ArchiveImpl::newErrorReply(v89, v90);
            }

            else
            {
              v98 = [(MTLMeshRenderPipelineDescriptor *)v18 colorAttachments];
              v91 = [a2 colorAttachments];
              MTL4ArchiveImpl::convertColorAttachments(v91, v98, v91);
              -[MTLMeshRenderPipelineDescriptor setSupportAddingFragmentBinaryFunctions:](v18, "setSupportAddingFragmentBinaryFunctions:", [a2 supportFragmentBinaryLinking] | -[MTLMeshRenderPipelineDescriptor supportAddingFragmentBinaryFunctions](v18, "supportAddingFragmentBinaryFunctions"));
              -[MTLMeshRenderPipelineDescriptor setAlphaToCoverageStateSPI:](v18, "setAlphaToCoverageStateSPI:", [a2 alphaToCoverageState]);
              -[MTLMeshRenderPipelineDescriptor setAlphaToOneStateSPI:](v18, "setAlphaToOneStateSPI:", [a2 alphaToOneState]);
              -[MTLMeshRenderPipelineDescriptor setColorAttachmentMappingState:](v18, "setColorAttachmentMappingState:", [a2 colorAttachmentMappingState]);
              -[MTLMeshRenderPipelineDescriptor setRasterizationEnabled:](v18, "setRasterizationEnabled:", [a2 isRasterizationEnabled]);
              -[MTLMeshRenderPipelineDescriptor setRasterSampleCount:](v18, "setRasterSampleCount:", [a2 rasterSampleCount]);
              [(MTLMeshRenderPipelineDescriptor *)v18 setDepthAttachmentPixelFormat:651];
              [(MTLMeshRenderPipelineDescriptor *)v18 setStencilAttachmentPixelFormat:652];
              if (SHIBYTE(v125[0]) < 0)
              {
                operator delete(v124);
              }

              v124 = *&v133.var1.var0[8];
              v125[0] = *&v133.var1.var0[24];
              v133.var1.var0[31] = 0;
              v133.var1.var0[8] = 0;
              std::vector<std::string>::__vdeallocate(&v125[1]);
              *&v125[1] = v139;
              memset(&v139, 0, sizeof(v139));
              std::vector<std::string>::__vdeallocate(&v126);
              v126 = v114;
              v127[0] = v115;
              v115 = 0;
              v114 = 0uLL;
              std::vector<std::pair<std::string,std::vector<std::string>>>::__vdeallocate(&v127[1]);
              *&v127[1] = *__p;
              v127[3] = v109;
              __p[1] = 0;
              v109 = 0;
              __p[0] = 0;
              v128 = [(MTLMeshRenderPipelineDescriptor *)v18 supportAddingFragmentBinaryFunctions];
              if (a3 == 2)
              {
                v134 = *&v133.var0.var0;
                *v135 = *&v133.var0.var2;
                std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v137, v138, (v138 - v137) >> 5);
                std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&v110, *(&v110 + 1), v112, v113[0], (v113[0] - v112) >> 5);
                if (v125[0] >= 0)
                {
                  v92 = &v124;
                }

                else
                {
                  v92 = v124;
                }

                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fragment function %s", v92];
              }
            }

            *&v102 = __p;
            std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v102);
          }

          std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v112);
        }

        std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&v137);
      }

      if (v133.var1.var0[31] < 0)
      {
        operator delete(*&v133.var1.var0[8]);
      }

      if (v84)
      {
LABEL_262:
        -[MTLMeshRenderPipelineDescriptor setSupportIndirectCommandBuffers:](v18, "setSupportIndirectCommandBuffers:", [a2 supportIndirectCommandBuffers] != 0);
        -[MTLMeshRenderPipelineDescriptor setPayloadMemoryLength:](v18, "setPayloadMemoryLength:", [a2 payloadMemoryLength]);
        -[MTLMeshRenderPipelineDescriptor setMaxVertexAmplificationCount:](v18, "setMaxVertexAmplificationCount:", [a2 maxVertexAmplificationCount]);
        -[MTLMeshRenderPipelineDescriptor setMaxTotalThreadgroupsPerMeshGrid:](v18, "setMaxTotalThreadgroupsPerMeshGrid:", [a2 maxTotalThreadgroupsPerMeshGrid]);
        v93 = _MTLCreateMeshRenderPipelineScriptFromPartialDescriptor(v18, &v121);
        MTL4ArchiveImpl::functionId(v93, a1, &v134, &v110, a4, a3, &v133);
        v10 = MTL4ArchiveImpl::newArchiveReplyForKey(a1, &v133);
        if (!v10)
        {
          v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find %@ with key:%@", v20, MTLHashKey::description(&v133)];
          v10 = MTL4ArchiveImpl::newErrorReply(v94, v94);
        }

        MTLHashKey::~MTLHashKey(&v133);
        v67 = 1;
        goto LABEL_266;
      }
    }

LABEL_265:
    v67 = 0;
    v10 = 0;
LABEL_266:
    if (v110)
    {
      *(&v110 + 1) = v110;
      operator delete(v110);
    }

    v95 = 39;
    do
    {
      v133.var0.var0 = &v119[v95];
      std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v133);
      v133.var0.var0 = &v117[v95];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
      v133.var0.var0 = &v114 + v95 * 8 + 8;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
      if (*(&v114 + v95 * 8 + 7) < 0)
      {
        operator delete(v113[v95]);
      }

      v95 -= 13;
    }

    while (v95 * 8);
LABEL_177:
    if ((v67 & 1) == 0)
    {
      goto LABEL_179;
    }

LABEL_178:
    [(MTL4ArchiveReply *)v10 setTypeInternal:a3];
    v4 = v10;
    goto LABEL_179;
  }

  v4 = objc_opt_new();
  MTL4ArchiveImpl::functionHashWithDescriptor(a1, [a2 computeFunctionDescriptor], __dst, &v137);
  if (v141)
  {
  }

  v8 = __dst[0];
  if (__dst[0])
  {
    if (v4)
    {

      v8 = __dst[0];
    }

    v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v8]);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "staticLinkingDescriptor")], __dst, &v112);
    v17 = __dst[0];
    if (__dst[0])
    {
      if (v4)
      {

        v17 = __dst[0];
      }

      v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v17]);
      v9 = 0;
      v10 = 0;
    }

    else
    {
      MTL4ArchiveImpl::functionArraysFomDescriptors(a1, [objc_msgSend(a2 "staticLinkingDescriptor")], __dst, &v134);
      v22 = __dst[0];
      if (__dst[0])
      {
        if (v4)
        {

          v22 = __dst[0];
        }

        v4 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v22]);
        v9 = 0;
        v10 = 0;
      }

      else
      {
        MTL4ArchiveImpl::functionsInGroupsFromDescriptor(a1, [objc_msgSend(a2 "staticLinkingDescriptor")], __dst, &v110);
        v26 = __dst[0];
        v9 = __dst[0] == 0;
        if (__dst[0])
        {
          if (v4)
          {

            v26 = __dst[0];
          }

          v4 = MTL4ArchiveImpl::newErrorReply(v25, v26);
          v10 = 0;
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v109 = 0;
          std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(__p, 0, v112, v113[0], (v113[0] - v112) >> 5);
          std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(__p, __p[1], v134, *(&v134 + 1), (*(&v134 + 1) - v134) >> 5);
          -[MTL4ArchiveReply setThreadGroupSizeIsMultipleOfThreadExecutionWidth:](v4, "setThreadGroupSizeIsMultipleOfThreadExecutionWidth:", [a2 threadGroupSizeIsMultipleOfThreadExecutionWidth]);
          -[MTL4ArchiveReply setMaxTotalThreadsPerThreadgroup:](v4, "setMaxTotalThreadsPerThreadgroup:", [a2 maxTotalThreadsPerThreadgroup]);
          -[MTL4ArchiveReply setMaxTotalThreadsPerThreadgroup:](v4, "setMaxTotalThreadsPerThreadgroup:", [a2 maxTotalThreadsPerThreadgroup]);
          if (a2)
          {
            [a2 requiredThreadsPerThreadgroup];
          }

          else
          {
            v106 = 0uLL;
            v107 = 0;
          }

          v121 = v106;
          *v122 = v107;
          [(MTL4ArchiveReply *)v4 setRequiredThreadsPerThreadgroup:&v121];
          -[MTL4ArchiveReply setSupportAddingBinaryFunctions:](v4, "setSupportAddingBinaryFunctions:", [a2 supportBinaryLinking] | -[MTL4ArchiveReply supportAddingBinaryFunctions](v4, "supportAddingBinaryFunctions"));
          memset(&v122[8], 0, 72);
          v121 = *&v139.__end_;
          *v122 = v140;
          HIBYTE(v140) = 0;
          LOBYTE(v139.__end_) = 0;
          std::vector<std::string>::__vdeallocate(&v122[8]);
          *&v122[8] = v114;
          *&v122[24] = v115;
          v115 = 0;
          v114 = 0uLL;
          std::vector<std::string>::__vdeallocate(&v122[32]);
          *&v122[32] = *&v135[8];
          *&v122[48] = v136;
          *&v135[16] = 0;
          v136 = 0;
          *&v135[8] = 0;
          std::vector<std::pair<std::string,std::vector<std::string>>>::__vdeallocate(&v122[56]);
          *&v122[56] = v110;
          *&v122[72] = v111;
          v111 = 0;
          v110 = 0uLL;
          v123 = [(MTL4ArchiveReply *)v4 supportAddingBinaryFunctions];
          v39 = _MTLCreateComputePipelineScriptFromPartialDescriptor(v4, &v121);
          MTL4ArchiveImpl::functionId(v39, a1, &v137, __p, a4, a3, &v133);
          v10 = MTL4ArchiveImpl::newArchiveReplyForKey(a1, &v133);
          if (!v10)
          {
            v40 = MEMORY[0x1E696AEC0];
            v41 = v122[7];
            v42 = v121;
            v43 = MTLHashKey::description(&v133);
            v44 = &v121;
            if (v41 < 0)
            {
              v44 = v42;
            }

            v45 = [v40 stringWithFormat:@"Failed to find compute function: %s with key:%@", v44, v43];
            v10 = MTL4ArchiveImpl::newErrorReply(v45, v45);
          }

          MTLHashKey::~MTLHashKey(&v133);
          MTLPartialDescriptorData::~MTLPartialDescriptorData(&v121);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        *&v121 = &v110;
        std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v121);
      }

      *&v121 = &v135[8];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v121);
      if (v134)
      {
        *(&v134 + 1) = v134;
        operator delete(v134);
      }
    }

    *&v121 = &v114;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v121);
    if (v112)
    {
      v113[0] = v112;
      operator delete(v112);
    }
  }

  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139.__end_);
  }

  if (v9)
  {
    goto LABEL_178;
  }

LABEL_179:
  *&v121 = &v116;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v121);
  *&v121 = &v118;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v121);
  v69 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_185D33D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  a17 = &a27;
  std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(&a35);
  std::pair<std::vector<MTLUINT256_t>,std::vector<std::string>>::~pair(v49 - 168);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  for (i = 208; i != -104; i -= 104)
  {
    MTLPartialDescriptorData::~MTLPartialDescriptorData((&a49 + i));
  }

  STACK[0x280] = &a41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  STACK[0x280] = &a44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  _Unwind_Resume(a1);
}

MTL4ArchiveReply *MTL4ArchiveImpl::newArchiveReplyForKey(MTL4ArchiveImpl *this, MTLHashKey *a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::find<MTLHashKey>(this + 4, a2);
  if (!v4)
  {
    v11 = 0;
    goto LABEL_22;
  }

  v5 = v4[12];
  v7 = *(v4 + 28);
  v6 = *(v4 + 29);
  subrange = dispatch_data_create_subrange([*(this + 3) dispatchData], v5, v4[13]);
  v9 = subrange;
  if (v6)
  {
    subrange = dispatch_data_create_subrange([*(this + 3) dispatchData], v7, v6);
    v10 = subrange;
  }

  else
  {
    v10 = 0;
  }

  MTL4ArchiveImpl::reflectionHashWithFunctionId(subrange, a2, v5, v23);
  v12 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(this + 9, v23);
  if (!v12)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v13 = v12;
  v14 = *(v12 + 16);
  if (v14 == v7)
  {
    dispatch_retain(v10);
    v15 = v10;
  }

  else
  {
    v16 = *(v12 + 17);
    if (v16)
    {
      v15 = dispatch_data_create_subrange([*(this + 3) dispatchData], v14, v16);
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = v13[7];
  if (!v17)
  {
LABEL_16:
    v18 = 0;
    if (!v9)
    {
LABEL_21:
      v20 = [MTL4ArchiveReply alloc];
      v11 = -[MTL4ArchiveReply initWithError:](v20, "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Entry found in the archive is not complete. Key :%@", MTLHashKey::description(a2)]);
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v18 = dispatch_data_create_subrange([*(this + 3) dispatchData], v13[6], v17);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (!v10 || !v15 || !v18)
  {
    goto LABEL_21;
  }

  v19 = MTLNewReflectionBlock(0, v10, v15);
  v11 = [[MTL4ArchiveReply alloc] initWithData:v9 reflectionBlock:v19 airScript:v18];

LABEL_22:
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

void MTLPartialDescriptorData::~MTLPartialDescriptorData(void **this)
{
  v2 = this + 9;
  std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

MTL4ArchiveReply *MTL4ArchiveImpl::newArchiveReplyForBinaryFunctionWithDescriptor(MTL4ArchiveImpl *this, MTL4BinaryFunctionDescriptor *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  MTL4ArchiveImpl::functionHashWithDescriptor(this, [(MTL4BinaryFunctionDescriptor *)a2 functionDescriptor], &v17, v20);
  if (v17)
  {

    v3 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v17]);
  }

  else
  {
    v4 = [v23 functionType];
    v5 = _MTLCreateFunctionScriptFromFunctionType(v4);
    __p = 0;
    v15 = 0;
    v16 = 0;
    memset(v19, 0, sizeof(v19));
    MTL4ArchiveImpl::functionId(v5, this, v20, &__p, v19, v4, &v18);
    v3 = MTL4ArchiveImpl::newArchiveReplyForKey(this, &v18);
    if (!v3)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v22;
      v8 = v21;
      v9 = MTLHashKey::description(&v18);
      v10 = &v21;
      if (v7 < 0)
      {
        v10 = v8;
      }

      v11 = [v6 stringWithFormat:@"Failed to find binary function %s with key:%@", v10, v9];
      v3 = -[MTL4ArchiveReply initWithError:]([MTL4ArchiveReply alloc], "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed with error: %@", v11]);
    }

    [(MTL4ArchiveReply *)v3 setTypeInternal:v4];
    MTLHashKey::~MTLHashKey(&v18);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_185D344DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, MTLHashKey *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v15 - 81) < 0)
  {
    operator delete(*(v15 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4ArchiveImpl::reflectionHashWithFunctionId@<X0>(MTL4ArchiveImpl *this@<X0>, const MTLHashKey *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X8>)
{
  data = a3;
  Hash = MTLHashKey::getHash(a2, 0, 0);
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, Hash, 0x20u);
  CC_SHA256_Update(&v7, &data, 8u);
  return CC_SHA256_Final(a4, &v7);
}

uint64_t MTL4ArchiveImpl::newArchiveArrayReplyForPipelineName(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 152), a2);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    __p = 0;
    v28 = 0;
    v7 = (v4 + 6);
    v29 = 0;
    do
    {
      if ((*(v5 + 40) >> v6))
      {
        v8 = MTL4ArchiveImpl::newArchiveReplyForPipelineStage(a1, v7);
        v9 = v8;
        v10 = *(v5 + 11);
        if (v10)
        {
          if (v10 == 3)
          {
            v11 = qword_185DE3788[v6];
          }

          else
          {
            v11 = 3;
          }
        }

        else if (v6)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        [v8 setTypeInternal:v11];
        v12 = v28;
        if (v28 >= v29)
        {
          v14 = (v28 - __p) >> 3;
          if ((v14 + 1) >> 61)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v15 = (v29 - __p) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v29 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&__p, v16);
          }

          v17 = (8 * v14);
          *v17 = v9;
          v13 = 8 * v14 + 8;
          v18 = v17 - (v28 - __p);
          memcpy(v18, __p, v28 - __p);
          v19 = __p;
          __p = v18;
          v28 = v13;
          v29 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v28 = v9;
          v13 = (v12 + 8);
        }

        v28 = v13;
      }

      ++v6;
      v7 += 48;
    }

    while (v6 != 3);
    v20 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
    v21 = __p;
    if (__p != v28)
    {
      do
      {
      }

      while (v21 != v28);
      v21 = __p;
    }

    if (v21)
    {
      v28 = v21;
      operator delete(v21);
    }
  }

  else
  {
    v22 = [MTL4ArchiveReply alloc];
    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    v24 = -[MTL4ArchiveReply initWithError:](v22, "initWithError:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Pipeline %s not found in archive", v23]);
    v30[0] = v24;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t MTL4ArchiveImpl::newArchiveReplyForPipelineStage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  subrange = dispatch_data_create_subrange([*(a1 + 24) dispatchData], *a2, *(a2 + 8));
  v9 = dispatch_data_create_subrange([*(a1 + 24) dispatchData], v6, v7);
  v10 = dispatch_data_create_subrange([*(a1 + 24) dispatchData], v4, v5);
  v11 = v10;
  v12 = *(a2 + 40);
  if (*(a2 + 16) == v12)
  {
    dispatch_retain(v10);
    v13 = v11;
    if (!subrange)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *(a2 + 44);
    if (v14)
    {
      v13 = dispatch_data_create_subrange([*(a1 + 24) dispatchData], v12, v14);
      if (!subrange)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (!subrange)
      {
        goto LABEL_12;
      }
    }
  }

  if (v11 && v13 && v9)
  {
    v15 = MTLNewReflectionBlock(0, v11, v13);
    v16 = [[MTL4ArchiveReply alloc] initWithData:subrange reflectionBlock:v15 airScript:v9];

    return v16;
  }

LABEL_12:
  v18 = [MTL4ArchiveReply alloc];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entry found in the archive is not complete."];

  return [(MTL4ArchiveReply *)v18 initWithError:v19];
}

void sub_185D34CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

uint64_t std::unordered_map<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,objc_object  {objcproto13MTLLibrarySPI}> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,objc_object  {objcproto13MTLLibrarySPI}> const&>(void *a1, unint64_t *a2)
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

uint64_t std::unordered_map<std::string,objc_object  {objcproto13MTLLibrarySPI}*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<std::string,std::pair<std::string const,objc_object  {objcproto13MTLLibrarySPI}> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<std::string,std::pair<std::string const,objc_object  {objcproto13MTLLibrarySPI}> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__construct_node_hash<std::pair<std::string const,objc_object  {objcproto13MTLLibrarySPI}> const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D35664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3572C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<MTLUINT256_t,MTLUINT256_t,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,MTLUINT256_t>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,MTLUINT256_t> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLUINT256_t>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,MTLUINT256_t> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

uint64_t std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string,std::vector<std::string>&,0>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = a1 + 24;
  *(v5 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_185D35A6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::vector<std::string>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>>>::__emplace_unique_key_args<MTLHashKey,std::pair<MTLHashKey const,AIRNTStageBaseData>>(void *a1, MTLHashKey *this)
{
  v4 = MTLHashKey::hash(this);
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
    std::__hash_table<std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,AIRNTStageBaseData>>>::__construct_node_hash<std::pair<MTLHashKey const,AIRNTStageBaseData>>();
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

  if (!MTLHashKey::operator==(v11 + 2, this))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D35D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,AIRNTStageExtraData>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLArchivePipeline>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLArchivePipeline>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLArchivePipeline>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLArchivePipeline>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLArchivePipeline>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MTLArchivePipeline>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLArchivePipeline>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLArchivePipeline>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLArchivePipeline>>>::__construct_node_hash<std::pair<std::string const,MTLArchivePipeline>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D36254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D36364(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](v4, i - 48);
  }
}

uint64_t std::vector<std::pair<std::string,std::vector<std::string>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<std::string>>*,std::pair<std::string,std::vector<std::string>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::vector<std::string>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185D3658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::vector<std::string>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>,std::pair<std::string,std::vector<std::string>>*,std::pair<std::string,std::vector<std::string>>*,std::pair<std::string,std::vector<std::string>>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<std::string>>>,std::pair<std::string,std::vector<std::string>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_185D36714(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<std::string>>>,std::pair<std::string,std::vector<std::string>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<std::string>>>,std::pair<std::string,std::vector<std::string>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<std::string>>>,std::pair<std::string,std::vector<std::string>>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::vector<std::pair<std::string,std::vector<std::string>>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

MTL4ArchiveImpl *std::unique_ptr<MTL4ArchiveImpl>::reset[abi:ne200100](MTL4ArchiveImpl **a1, MTL4ArchiveImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MTL4ArchiveImpl::~MTL4ArchiveImpl(result);

    JUMPOUT(0x1865FF210);
  }

  return result;
}

void *MTLIOAccelDeviceShmemPoolCreateShmem(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 + 1;
    v4 = v2[2];
    v5 = v2[3];
    if (v4)
    {
      *(v4 + 24) = v5;
      v6 = v2[2];
      v5 = v2[3];
    }

    else
    {
      v6 = 0;
      *(a1 + 16) = v5;
    }

    *v5 = v6;
    --*(a1 + 28);
    v2[2] = 0;
    v2[3] = 0;
    os_unfair_lock_unlock((a1 + 24));
    goto LABEL_8;
  }

  os_unfair_lock_unlock((a1 + 24));
  v7 = [objc_alloc(*(a1 + 32)) initWithDevice:*(a1 + 40) shmemSize:*(a1 + 48)];
  v2 = v7;
  if (v7)
  {
    v3 = (v7 + 8);
LABEL_8:
    *v3 = a1;
    v8 = a1;
  }

  return v2;
}

void *MTLIOAccelCommandBufferStorageCreateExt(uint64_t a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(0x340uLL, 1uLL, 0xF75FBC78uLL);
  *v6 = a1;
  Shmem = MTLIOAccelDeviceShmemPoolCreateShmem(*a2);
  if (!Shmem)
  {
    goto LABEL_6;
  }

  v8 = Shmem[7];
  *(v6 + 8) = Shmem;
  *(v6 + 9) = v8;
  *(v6 + 10) = v8 + *(Shmem + 13);
  *(v6 + 97) = v8;
  v9 = *(a1 + 752);
  *(v6 + 200) = -1;
  v10 = *(a1 + 744);
  IOAccelResourceListInit();
  v11 = MTLIOAccelDeviceShmemPoolCreateShmem(*(a2 + 8));
  if (!v11)
  {
    MTLIOAccelDeviceShmemRelease(*(v6 + 8));
LABEL_6:
    free(v6);
    return 0;
  }

  v12 = v11[7];
  *(v6 + 4) = v11;
  *(v6 + 5) = v12;
  *(v6 + 7) = v12 + *(v11 + 13);
  *(v6 + 6) = v11[7];
  v13 = *(a2 + 24);
  if (v13)
  {
    *(v6 + 94) = *(a2 + 16);
    v14 = malloc_type_calloc(1uLL, v13 << 6, 0x10B0040CDE4EDB6uLL);
    LODWORD(v13) = *(a2 + 24);
  }

  else
  {
    v14 = 0;
  }

  *(v6 + 92) = v14;
  *(v6 + 190) = v13;
  ResourceList = *(a2 + 40);
  if (ResourceList)
  {
    ResourceList = MTLResourceListPoolCreateResourceList(ResourceList);
  }

  *(v6 + 88) = ResourceList;
  if (a3)
  {
    *(v6 + 87) = MTLResourceListPoolCreateResourceList(*(a2 + 32));
  }

  else
  {
    *(v6 + 87) = 0;
  }

  return v6;
}

void MTLIOAccelCommandBufferStorageGrowSegmentList(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(v2 + 52);
  if (v3 >= 0x200000)
  {
    v4 = v3 + 0x100000;
  }

  else
  {
    v4 = 2 * v3;
  }

  [*(v2 + 8) setShmemSize:v4];
  Shmem = MTLIOAccelDeviceShmemPoolCreateShmem(*(v2 + 8));
  if (!Shmem)
  {
    v27 = *(a1 + 88);
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v27)
    {
      if (v28)
      {
        MTLIOAccelCommandBufferStorageGrowSegmentList_cold_1(v27);
        abort();
      }
    }

    else if (v28)
    {
      MTLIOAccelCommandBufferStorageGrowSegmentList_cold_2();
    }

    abort();
  }

  v6 = Shmem;
  memcpy(Shmem[7], *(a1 + 72), *(*(a1 + 64) + 52));
  MTLIOAccelDeviceShmemRelease(*(a1 + 64));
  *(a1 + 64) = v6;
  if (*(a1 + 804))
  {
    v11 = *(a1 + 96) - *(a1 + 72);
    v12 = v6[7];
    v13 = v12 + *(v6 + 13);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    v14 = v12 + v11;
    *(a1 + 88) = v12;
    *(a1 + 96) = v14;
    *(a1 + 104) = v14 + 24;
LABEL_11:

    IOAccelResourceListReset();
    return;
  }

  v15 = *(a1 + 800);
  if (!v15)
  {
    v20 = *(a1 + 72);
    v21 = *(a1 + 88) - v20;
    v22 = *(a1 + 96) - v20;
    v23 = v6[7];
    v24 = v23 + *(v6 + 13);
    *(a1 + 72) = v23;
    *(a1 + 80) = v24;
    v25 = v23 + v21;
    *(a1 + 776) = v25;
    v26 = v23 + v22;
    *(a1 + 88) = v25;
    *(a1 + 96) = v26;
    *(a1 + 104) = v26 + 24;
    goto LABEL_11;
  }

  if (v15 != 1)
  {
    MTLReleaseAssertionFailure("_mtlIOAccelCommandBufferStorageRebaseShmemHeader", 510, "false", 0, v7, v8, v9, v10, v29);
  }

  v16 = *(a1 + 784) - *(a1 + 72);
  v17 = v6[7];
  v18 = v17 + *(v6 + 13);
  *(a1 + 72) = v17;
  *(a1 + 80) = v18;
  v19 = v17 + v16;
  *(a1 + 784) = v19;
  *(a1 + 776) = v19;
}

void MTLIOAccelCommandBufferStorageDealloc(void *a1)
{
  if (a1[1])
  {
    MTLIOAccelCommandBufferStorageReset(a1);
    v8 = a1[1];

    MTLIOAccelCommandBufferStoragePoolReturnStorage(v8, a1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    v9 = a1[4];
    if (v9)
    {
      MTLIOAccelDeviceShmemRelease(v9);
      a1[4] = 0;
    }

    v10 = a1[8];
    if (v10)
    {
      MTLIOAccelDeviceShmemRelease(v10);
      a1[8] = 0;
    }

    IOAccelResourceListDestroy();
    MTLIOAccelCommandBufferStorageReleaseAllResources(a1);

    free(a1);
  }
}

void *MTLIOAccelCommandBufferStorageReset(uint64_t a1)
{
  MTLIOAccelCommandBufferStorageReleaseExtraResources(a1);
  v2 = *(a1 + 696);
  if (v2)
  {
    [v2 releaseAllObjectsAndReset];
  }

  result = *(a1 + 704);
  if (result)
  {
    result = [result releaseAllObjectsAndReset];
  }

  *(a1 + 48) = *(a1 + 40);
  *(a1 + 776) = *(a1 + 72);
  *(a1 + 800) = -1;
  *(a1 + 808) = 0;
  *(a1 + 784) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  v4 = *(a1 + 760);
  if (v4)
  {
    v5 = (*(a1 + 736) + 24);
    do
    {
      *v5 = *(v5 - 2);
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  *(a1 + 744) = 0;
  return result;
}

uint64_t MTLIOAccelCommandBufferStoragePoolReturnStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 8) = 0;
  if (*(a2 + 800) != -1)
  {
    MTLIOAccelCommandBufferStoragePoolReturnStorage_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a2 + 800) = -2;
  os_unfair_lock_lock((a1 + 16));
  v10 = *a1;
  *(a2 + 16) = *a1;
  if (v10)
  {
    v11 = (v10 + 24);
  }

  else
  {
    v11 = (a1 + 8);
  }

  *v11 = a2 + 16;
  *a1 = a2;
  *(a2 + 24) = a1;
  ++*(a1 + 20);
  os_unfair_lock_unlock((a1 + 16));
  v12 = *(a1 + 32);

  return [v12 kickCleanupQueue];
}

uint64_t MTLIOAccelCommandBufferStorageReleaseAllResources(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2)
  {
    v3 = *(a1 + 760);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 736) + v4;
        v7 = *(v6 + 32);
        if (v7)
        {
          MTLIOAccelPooledResourceRelease(v7);
          *(v6 + 32) = 0;
          *(v6 + 56) = 0;
          v3 = *(a1 + 760);
        }

        v4 += 64;
      }

      v2 = *(a1 + 736);
    }

    free(v2);
    *(a1 + 736) = 0;
  }

  MTLIOAccelCommandBufferStorageReleaseExtraResources(a1);
  v8 = *(a1 + 696);
  if (v8)
  {
    [v8 releaseAllObjectsAndReset];
    MTLResourceListRelease(*(a1 + 696));
    *(a1 + 696) = 0;
  }

  v9 = *(a1 + 704);
  if (v9)
  {
    [v9 releaseAllObjectsAndReset];
    MTLResourceListRelease(*(a1 + 704));
    *(a1 + 704) = 0;
  }

  v10 = *a1;

  return [v10 kickCleanupQueue];
}

void MTLIOAccelCommandBufferStorageReleaseExtraResources(uint64_t a1)
{
  v1 = *(a1 + 712);
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 712);
    do
    {
      v5 = *(*(a1 + 728) + 8 * v3);
      if (v5)
      {
        MTLIOAccelPooledResourceRelease(v5);
        v1 = *v4;
      }

      ++v3;
    }

    while (v3 < v1);
    free(*(a1 + 728));
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }
}

char *MTLIOAccelCommandBufferStorageGrowKernelCommandBuffer(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 8);
  v6 = *(v5 + 48);
  while (v6 < a2 + *(a1 + 56) - v4 + 24)
  {
    if (v6 >= 0x200000)
    {
      v6 += 0x100000;
    }

    else
    {
      v6 *= 2;
    }
  }

  v7 = *(a1 + 48);
  [*(v3 + 8) setShmemSize:?];
  Shmem = MTLIOAccelDeviceShmemPoolCreateShmem(v5);
  *(a1 + 32) = Shmem;
  if (!Shmem)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      MTLIOAccelCommandBufferStorageGrowKernelCommandBuffer_cold_1(a1);
    }

    abort();
  }

  v9 = *(Shmem + 13);
  result = Shmem[7];
  *(a1 + 40) = result;
  *(a1 + 56) = &result[v9];
  if (v3)
  {
    memcpy(result, *(v3 + 56), (v7 - v4));
    MTLIOAccelDeviceShmemRelease(v3);
    result = *(a1 + 40);
  }

  *(a1 + 48) = &result[(v7 - v4)];
  return result;
}

__n128 MTLIOAccelCommandBufferStorageAllocResourceAtIndex(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = *(a1 + 736) + (a2 << 6);
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(a1 + 712);
    v8 = *(a1 + 720);
    if (v7 >= v8)
    {
      v10 = 2 * v8;
      if (!v8)
      {
        v10 = 32;
      }

      *(a1 + 720) = v10;
      v9 = malloc_type_realloc(*(a1 + 728), 8 * v10, 0x80040B8603338uLL);
      *(a1 + 728) = v9;
      v7 = *(a1 + 712);
    }

    else
    {
      v9 = *(a1 + 728);
    }

    *(a1 + 712) = v7 + 1;
    v9[v7] = v6;
  }

  PooledResource = MTLIOAccelResourcePoolCreatePooledResource(*(*(a1 + 752) + 8 * v4));
  if (!PooledResource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      MTLIOAccelCommandBufferStorageAllocResourceAtIndex_cold_1();
    }

    abort();
  }

  v12 = PooledResource;
  if (MTLValidationEnabled())
  {
    -[__n128 setLabel:](v12, "setLabel:", [MEMORY[0x1E696AEC0] stringWithFormat:@"MTLIOAccelResourcePool (dbclass: %d)", a2]);
  }

  *(v5 + 32) = v12;
  v13 = v12[10].n128_u64[1];
  *(v5 + 8) = v13;
  *(v5 + 24) = v13;
  *(v5 + 16) = (v12[4].n128_u64[1] & 0xFFFFFFFFFFFFFFLL) + v13;
  *v5 = v12[6].n128_u64[1];
  result = v12[4];
  *(v5 + 56) = v12[5].n128_u64[0];
  *(v5 + 40) = result;
  return result;
}

void MTLIOAccelCommandBufferStorageReleaseDeviceShmems(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    MTLIOAccelDeviceShmemRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    MTLIOAccelDeviceShmemRelease(v3);
    *(a1 + 64) = 0;
  }
}

void MTLIOAccelCommandBufferStorageBeginKernelCommands(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 784);
  if (v10)
  {
    v11 = a2 - *(a1 + 40);
  }

  else
  {
    v12 = *(a1 + 800);
    if (v12 == -1)
    {
      v10 = *(a1 + 776);
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v13 = "storage->currentShmemHeaderType != eIOAccelSegmentListShmemHeaderTypeKernelCommandList";
          v14 = 566;
        }

        else
        {
          v13 = "false";
          v14 = 577;
        }

        MTLReleaseAssertionFailure("_mtlIOAccelCommandBufferStorageBeginKernelCommandList", v14, v13, 0, a5, a6, a7, a8, v17);
      }

      v10 = *(a1 + 96);
      *(*(a1 + 88) + 12) = v10 - *(a1 + 88);
      *(a1 + 776) = v10;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0u;
      *(a1 + 816) = 0u;
    }

    *(a1 + 784) = v10;
    *(a1 + 800) = 1;
    *(a1 + 792) = 0;
    if ((v10 + 48) >= *(a1 + 80))
    {
      MTLIOAccelCommandBufferStorageGrowSegmentList(a1);
      v10 = *(a1 + 784);
    }

    *v10 = *(a1 + 768);
    *(v10 + 8) = 0x4000000100000000;
    v11 = a2 - *(a1 + 40);
    *(v10 + 16) = v11;
  }

  v15 = *(a1 + 792);
  v16 = *(a1 + 796);
  if (v16)
  {
    if (*(v10 + 8 * (v16 - 1) + 20) == v11)
    {
      return;
    }

    ++v15;
  }

  if (v10 + 8 * (v15 + 1) + 16 >= *(a1 + 80))
  {
    MTLIOAccelCommandBufferStorageGrowSegmentList(a1);
    v10 = *(a1 + 784);
  }

  *(v10 + 8 * v15 + 16) = v11;
  *(a1 + 792) = v15;
}

uint64_t MTLIOAccelCommandBufferStorageEndKernelCommands(uint64_t result, int a2)
{
  v2 = *(result + 784);
  v3 = a2 - *(result + 40);
  v4 = *(result + 792);
  *(result + 796) = v4 + 1;
  *(v2 + 8 * v4 + 20) = v3;
  return result;
}

uint64_t MTLIOAccelCommandBufferStorageFinalizeShmemHeader(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 776);
  v10 = *(result + 800);
  if (v10 == 1)
  {
    v12 = *(result + 784);
    v13 = *(result + 792) + 1;
    *(v12 + 8) = v13;
    *(result + 776) = v12 + 8 * v13 + 16;
    *(result + 800) = -1;
    *(result + 784) = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

  if (v9 == *(result + 72))
  {
    result = _mtlIOAccelCommandBufferStorageBeginSegmentList(result, a2, a3, a4, a5, a6, a7, a8);
LABEL_5:
    v11 = *(v8 + 96);
    *(*(v8 + 88) + 12) = v11 - *(v8 + 88);
    *(v8 + 776) = v11;
    *(v8 + 800) = -1;
    *(v8 + 88) = 0;
    *(v8 + 96) = 0u;
    *(v8 + 816) = 0u;
  }

LABEL_7:
  *(v9 + 12) |= 0x80000000;
  return result;
}

uint64_t _mtlIOAccelCommandBufferStorageBeginSegmentList(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 800);
  if (v8 == -1)
  {
    v11 = *(result + 776);
  }

  else
  {
    if (v8 != 1)
    {
      if (v8)
      {
        v9 = "false";
        v10 = 648;
      }

      else
      {
        v9 = "storage->currentShmemHeaderType != eIOAccelSegmentListShmemHeaderTypeSegmentList";
        v10 = 637;
      }

      MTLReleaseAssertionFailure("_mtlIOAccelCommandBufferStorageBeginSegmentList", v10, v9, 0, a5, a6, a7, a8, vars0);
    }

    v12 = *(result + 784);
    v13 = *(result + 792) + 1;
    *(v12 + 8) = v13;
    v11 = (v12 + 8 * v13 + 16);
    *(result + 776) = v11;
    *(result + 784) = 0;
  }

  *(result + 800) = 0;
  *(result + 88) = v11;
  *v11 = *(result + 768);
  v11[1] = 0;
  *(result + 96) = v11 + 2;
  *(result + 104) = v11 + 5;
  return result;
}