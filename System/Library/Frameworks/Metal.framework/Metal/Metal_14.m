uint64_t MTLCompilerConnectionManagerInternal::minimizeCompilerProcessesCount(MTLCompilerConnectionManagerInternal *this)
{
  v2 = MTLGetDefaultCompilerProcessesCount();
  v3 = *(*this + 48);

  return v3(this, v2);
}

uint64_t MTLLegacyCompilerScheduler::MTLLegacyCompilerScheduler(uint64_t a1, uint64_t a2, int a3)
{
  v4 = MTLCompilerConnectionManagerInternal::MTLCompilerConnectionManagerInternal(a1, a2, a3);
  *v4 = &unk_1EF475EC8;
  bzero(v4 + 20, 0x800uLL);
  *(a1 + 60) = 1;
  return a1;
}

void MTLLegacyCompilerScheduler::~MTLLegacyCompilerScheduler(MTLLegacyCompilerScheduler *this)
{
  *this = &unk_1EF475EC8;
  for (i = 2200; i != 1176; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    i -= 16;
  }

  while (i != 152);

  MTLCompilerConnectionManagerInternal::~MTLCompilerConnectionManagerInternal(this);
}

{
  MTLLegacyCompilerScheduler::~MTLLegacyCompilerScheduler(this);

  JUMPOUT(0x1865FF210);
}

void MTLLegacyCompilerScheduler::initializeCounts(MTLLegacyCompilerScheduler *this)
{
  v2 = (this + 152);
  v3 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<MTLLegacyCompilerScheduler::initializeCounts(void)::$_0 &&>>);
  }
}

void MTLLegacyCompilerScheduler::initializeDistributions(uint64_t a1)
{
  (*(*a1 + 40))(a1);
  if (*(a1 + 36))
  {
    std::allocate_shared[abi:ne200100]<MTLLegacyMonolithicCompilerConnection,std::allocator<MTLLegacyMonolithicCompilerConnection>,int &,0>();
  }

  if (*(a1 + 40) >= 1)
  {
    v2 = 0;
    v3 = a1;
    do
    {
      v4 = *(v3 + 168);
      *(v3 + 160) = 0;
      *(v3 + 168) = 0;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v5 = *(v3 + 1192);
      *(v3 + 1184) = 0u;
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  *(a1 + 61) = 1;
}

void MTLLegacyCompilerScheduler::buildRequest(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = (a1 + 88);
  v53 = 1;
  std::mutex::lock((a1 + 88));
  if ((*(a1 + 61) & 1) == 0)
  {
    (*(*a1 + 96))(a1, &v52);
  }

  v47 = a6;
  v48 = a3;
  *(a3 + 128) &= ~1u;
  v12 = (a1 + 160);
  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_12;
  }

  v44 = a4;
  v45 = a5;
  v14 = 0;
  v15 = (a1 + 160);
  v16 = &v12[2 * v13];
  do
  {
    v18 = *v15;
    v17 = v15[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v18)
    {
      ++v14;
    }

    v15 += 2;
  }

  while (v15 != v16);
  if (!v14)
  {
    v19 = 0;
    v20 = 0;
    a4 = v44;
    goto LABEL_44;
  }

  a4 = v44;
  if (*(a1 + 36))
  {
LABEL_12:
    v19 = 0;
    v20 = 0;
LABEL_44:
    v23 = 0;
    goto LABEL_45;
  }

  v21 = *(a1 + 40);
  v43 = a2;
  if (v21)
  {
    v22 = *v12;
    if (*v12)
    {
      v23 = 0;
      v24 = (a1 + 176);
      v25 = -1;
      LODWORD(v26) = 0x7FFFFFFF;
      while (1)
      {
        v27 = MTLLegacyCompilerConnection::jobCount(v22);
        v21 = *(a1 + 40);
        if (!v27)
        {
          v26 = 0;
          goto LABEL_28;
        }

        if (v27 >= v26)
        {
          v26 = v26;
        }

        else
        {
          v25 = v23;
          v26 = v27;
        }

        if (++v23 >= v21)
        {
          break;
        }

        v28 = *v24;
        v24 += 2;
        v22 = v28;
        if (!v28)
        {
          goto LABEL_28;
        }
      }

      v23 = v25;
    }

    else
    {
      v23 = 0;
      v26 = 0x7FFFFFFFLL;
    }

LABEL_28:
    if (v21 > 0x3F)
    {
      v20 = 0;
      v19 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v26 = 0x7FFFFFFFLL;
    v23 = -1;
  }

  v20 = 0;
  v19 = 0;
  v29 = v21;
  v30 = a1 + 16 * v21;
  do
  {
    if (!*(v30 + 160))
    {
      v31 = *(v30 + 1192);
      if (v31)
      {
        v32 = std::__shared_weak_count::lock(v31);
        if (v32)
        {
          v33 = v32;
          v46 = v20;
          v34 = v12;
          v35 = *(v30 + 1184);
          if (v35 && (v36 = MTLLegacyCompilerConnection::jobCount(*(v30 + 1184)), v36 < v26))
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            v46 = v33;
            v23 = v29;
          }

          else
          {
            v35 = v19;
            v36 = v26;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          v19 = v35;
          v26 = v36;
          v12 = v34;
          v20 = v46;
        }
      }
    }

    ++v29;
    v30 += 16;
  }

  while (v29 != 64);
LABEL_43:
  a5 = v45;
  a2 = v43;
  a4 = v44;
  if (v23 == -1)
  {
    goto LABEL_44;
  }

LABEL_45:
  v37 = &v12[2 * v23];
  if (!*v37 && (*(a1 + 36) & 1) == 0)
  {
    LLVMVersion = MTLCompilerConnectionManager::getLLVMVersion(a1);
    std::allocate_shared[abi:ne200100]<MTLLegacyXPCCompilerConnection,std::allocator<MTLLegacyXPCCompilerConnection>,int,0>();
  }

  if (a2)
  {
    v38 = *(a1 + 64) + 16 * a2;
    v40 = *(v38 - 16);
    v39 = *(v38 - 8);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v41 = v19;
  v42 = v20;
  if (!v19)
  {
    v41 = *v37;
    v42 = v37[1];
  }

  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v19 && v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    v20 = 0;
  }

  *(v48 + 128) &= ~1u;
  if (v53)
  {
    std::mutex::unlock(v52);
    v53 = 0;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3321888768;
    v49[2] = ___ZN26MTLLegacyCompilerScheduler12buildRequestEjP18MTLCompilerRequestbP11objc_objectU13block_pointerFv16MTLCompilerErrorPU27objcproto16OS_dispatch_data8NSObjectPKcE_block_invoke;
    v49[3] = &unk_1EF475F38;
    v49[4] = v47;
    v49[5] = v41;
    v50 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v41 + 16))(v41, v48, v40, v39, 0, a4, a5, v49);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (v53 == 1)
    {
      std::mutex::unlock(v52);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_185CB8950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (*(v22 - 104) == 1)
  {
    std::mutex::unlock(*(v22 - 112));
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN26MTLLegacyCompilerScheduler12buildRequestEjP18MTLCompilerRequestbP11objc_objectU13block_pointerFv16MTLCompilerErrorPU27objcproto16OS_dispatch_data8NSObjectPKcE_block_invoke(uint64_t a1, int a2, void *buffer, size_t size)
{
  if (buffer && size)
  {
    v5 = dispatch_data_create(buffer, size, 0, 0);
    (*(*(a1 + 32) + 16))();
    dispatch_release(v5);
  }

  else
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

uint64_t __copy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrI27MTLLegacyCompilerConnectionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrI27MTLLegacyCompilerConnectionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MTLLegacyCompilerScheduler::setCompilerProcessesCount(MTLLegacyCompilerScheduler *this, int a2)
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
      MTLLegacyCompilerScheduler::setCompilerProcessesCount::fromEnv = MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(0, 0);
    }

    if (!MTLLegacyCompilerScheduler::setCompilerProcessesCount::fromEnv)
    {
      v4 = *(this + 10);
      *(this + 10) = a2;
      if (v4 >= a2)
      {
        if (v4 > a2)
        {
          v9 = (this + 16 * a2);
          v10 = v4 - a2;
          do
          {
            v11 = v9[20];
            if (v11)
            {
              v12 = v9[21];
              if (v12)
              {
                atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
              }

              v9[148] = v11;
              v13 = v9[149];
              v9[149] = v12;
              if (v13)
              {
                std::__shared_weak_count::__release_weak(v13);
              }

              v14 = v9[21];
              v9[20] = 0;
              v9[21] = 0;
              if (v14)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v14);
              }
            }

            v9 += 2;
            --v10;
          }

          while (v10);
        }
      }

      else
      {
        v5 = (this + 16 * v4);
        do
        {
          v6 = v5[149];
          if (v6 && (v6 = std::__shared_weak_count::lock(v6)) != 0)
          {
            v7 = v5[148];
          }

          else
          {
            v7 = 0;
          }

          v8 = v5[21];
          v5[20] = v7;
          v5[21] = v6;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          ++v4;
          v5 += 2;
        }

        while (v4 < *(this + 10));
      }
    }
  }

  if (v16 == 1)
  {
    std::mutex::unlock(v15);
  }
}

void sub_185CB8C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<MTLLegacyCompilerScheduler::initializeCounts(void)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  v2 = *(v1 + 36);
  if (v2 == 1)
  {
    result = 1;
    *(v1 + 52) = 1;
  }

  else
  {
    *(v1 + 52) = MTLGetOptimalCompilerProcessesCount();
    result = MTLGetDefaultCompilerProcessesCount();
    *(v1 + 48) = result;
    v4 = *(v1 + 52);
    LOBYTE(v2) = v4 == result && v4 != 0;
  }

  *(v1 + 40) = result;
  *(v1 + 56) = 1;
  *(v1 + 60) = 1;
  *(v1 + 44) = v2;
  return result;
}

void *std::__shared_ptr_emplace<MTLLegacyMonolithicCompilerConnection>::__shared_ptr_emplace[abi:ne200100]<int &,std::allocator<MTLLegacyMonolithicCompilerConnection>,0>(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF475FF8;
  MTLLegacyMonolithicCompilerConnection::MTLLegacyMonolithicCompilerConnection((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<MTLLegacyMonolithicCompilerConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF475FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void *std::__shared_ptr_emplace<MTLLegacyXPCCompilerConnection>::__shared_ptr_emplace[abi:ne200100]<int,std::allocator<MTLLegacyXPCCompilerConnection>,0>(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF476048;
  MTLLegacyXPCCompilerConnection::MTLLegacyXPCCompilerConnection((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<MTLLegacyXPCCompilerConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF476048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

uint64_t akPurgeableToIOAccelPurgeable(uint64_t result)
{
  if ((result - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t ioAccelPurgeableToMTLPurgeable(int a1)
{
  v1 = (a1 - 2);
  if (v1 >= 3)
  {
    return 1;
  }

  else
  {
    return v1 + 2;
  }
}

uint64_t _MTLCreateComputePipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLComputePipelineDescriptor *a2, const MTLPartialDescriptorData *a3)
{
  v3 = a3;
  LinkedFunctions = createLinkedFunctions(a1, a3);
  v6 = createComputeFunctionDescriptor(a1, a2, &LinkedFunctions, *(v3 + 96));
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v7 = strlen(v3);
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v3, v7);
  *(a1 + 70) = 1;
  v9 = *(a1 + 10);
  v10 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v6);
  v11 = flatbuffers::FlatBufferBuilder::EndTable(a1, v10 + v9);
  v18 = 0x400000000;
  v19 = 0;
  *(a1 + 70) = 1;
  v12 = *(a1 + 10);
  v13 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v11);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v18);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v14);
  v15 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v15);
  v16 = flatbuffers::FlatBufferBuilder::EndTable(a1, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a1, v16, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

uint64_t createLinkedFunctions(flatbuffers::FlatBufferBuilder *a1, const MTLPartialDescriptorData *a2)
{
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v4 = (a2 + 24);
  if (v6 == v5)
  {
    FunctionArray = 0;
  }

  else
  {
    FunctionArray = createFunctionArray(a1, v4);
  }

  if (*(a2 + 7) == *(a2 + 6))
  {
    v8 = 0;
  }

  else
  {
    v8 = createFunctionArray(a1, a2 + 6);
  }

  v10 = *(a2 + 9);
  v9 = *(a2 + 10);
  if (v9 == v10)
  {
    v20 = 0;
  }

  else
  {
    v24 = FunctionArray;
    __p = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v11 = v10;
      if (*(v10 + 23) < 0)
      {
        v11 = *v10;
      }

      v12 = strlen(v11);
      String = flatbuffers::FlatBufferBuilder::CreateString(a1, v11, v12);
      v14 = createFunctionArray(a1, (v10 + 24));
      *(a1 + 70) = 1;
      v15 = *(a1 + 8);
      v16 = *(a1 + 12);
      v17 = String;
      v18 = *(a1 + 10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v17);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v14);
      v25 = flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v16 + v18);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v25);
      v10 += 48;
    }

    while (v10 != v9);
    if (v27 == __p)
    {
      v19 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionGroup>,std::allocator<flatbuffers::Offset<Air::FunctionGroup>>>(std::vector<flatbuffers::Offset<Air::FunctionGroup>> const&)::t;
    }

    else
    {
      v19 = __p;
    }

    v20 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v19, (v27 - __p) >> 2);
    FunctionArray = v24;
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  if (*(a2 + 4) == *(a2 + 3) && *(a2 + 7) == *(a2 + 6) && *(a2 + 10) == *(a2 + 9))
  {
    return 0;
  }

  *(a1 + 70) = 1;
  v21 = *(a1 + 10);
  v22 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, FunctionArray);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v20);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v22 + v21);
}

void sub_185CBBBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MTLCreateRenderPipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLRenderPipelineDescriptor *a2, const MTLPartialDescriptorData *a3)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v6 = a3;
    if (!*(a3 + 23))
    {
      goto LABEL_7;
    }

LABEL_5:
    String = 0;
    goto LABEL_8;
  }

  if (*(a3 + 1))
  {
    goto LABEL_5;
  }

  v6 = *a3;
LABEL_7:
  v8 = strlen(v6);
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v6, v8);
LABEL_8:
  if (*(a3 + 127) < 0)
  {
    if (!*(a3 + 14))
    {
      v9 = *(a3 + 13);
LABEL_14:
      v11 = strlen(v9);
      v10 = flatbuffers::FlatBufferBuilder::CreateString(a1, v9, v11);
      goto LABEL_15;
    }
  }

  else
  {
    v9 = a3 + 104;
    if (!*(a3 + 127))
    {
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_15:
  LinkedFunctions = createLinkedFunctions(a1, a3);
  v25 = createLinkedFunctions(a1, (a3 + 104));
  v12 = createVertexFunctionDescriptor(a1, a2, &LinkedFunctions, *(a3 + 96));
  v13 = createFragmentFunctionDescriptorImpl<MTLRenderPipelineDescriptorPrivate>(a1, [(MTLRenderPipelineDescriptor *)a2 _descriptorPrivate], &v25, *(a3 + 200));
  *(a1 + 70) = 1;
  v14 = *(a1 + 10);
  v15 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v13);
  v16 = flatbuffers::FlatBufferBuilder::EndTable(a1, v15 + v14);
  v23 = 0x400000000;
  v24 = 0;
  *(a1 + 70) = 1;
  v17 = *(a1 + 10);
  v18 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v16);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v23);
  v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 1);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v19);
  v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v20);
  v21 = flatbuffers::FlatBufferBuilder::EndTable(a1, v18 + v17);
  flatbuffers::FlatBufferBuilder::Finish(a1, v21, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

uint64_t _MTLCreateTileRenderPipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLTileRenderPipelineDescriptor *a2, const MTLPartialDescriptorData *a3)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = strlen(v6);
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v6, v7);
  LinkedFunctions = createLinkedFunctions(a1, a3);
  v9 = createTileFunctionDescriptor(a1, a2, &LinkedFunctions, *(a3 + 96));
  *(a1 + 70) = 1;
  v10 = *(a1 + 10);
  v11 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  v12 = flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v10);
  v19 = 0x400000000;
  v20 = 0;
  *(a1 + 70) = 1;
  v13 = *(a1 + 10);
  v14 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v12);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v19);
  v15 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 3);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v15);
  v16 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v16);
  v17 = flatbuffers::FlatBufferBuilder::EndTable(a1, v14 + v13);
  flatbuffers::FlatBufferBuilder::Finish(a1, v17, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

uint64_t createTileFunctionDescriptor(flatbuffers::FlatBufferBuilder *this, void *a2, int *a3, int a4)
{
  v6 = a2 + 7;
  v7 = a2[7];
  if (v7)
  {
    memset(&__p, 0, sizeof(__p));
    v8 = 8;
    do
    {
      v9 = *(v7 + 8);
      if (v9)
      {
        *(this + 70) = 1;
        v10 = *(this + 8);
        v11 = *(this + 12);
        v12 = *(this + 10);
        v13 = [v9 pixelFormat];
        if ((v13 - 1) >= 0x28C)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(this, 4, v14, 0);
        v29 = flatbuffers::FlatBufferBuilder::EndTable(this, v10 - v11 + v12);
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v29);
      }

      else
      {
        *(this + 70) = 1;
        v15 = *(this + 8);
        v16 = *(this + 12);
        v17 = *(this + 10);
        if (*(this + 80) == 1)
        {
          v18 = flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(this, 0);
          flatbuffers::FlatBufferBuilder::TrackField(this, 4, v18);
        }

        v29 = flatbuffers::FlatBufferBuilder::EndTable(this, v15 - v16 + v17);
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v29);
      }

      v7 += 8;
      --v8;
    }

    while (v8);
    if (__p.height == __p.width)
    {
      width = &flatbuffers::data<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>> const&)::t;
    }

    else
    {
      width = __p.width;
    }

    v20 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, width, (__p.height - __p.width) >> 2);
    if (__p.width)
    {
      __p.height = __p.width;
      operator delete(__p.width);
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(this, v6[7]);
  [a2 requiredThreadsPerThreadgroup];
  v23 = createRequiredThreadsPerThreadgroupVector(this, &__p);
  *(this + 70) = 1;
  v24 = *(this + 10);
  v25 = *(this + 8) - *(this + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 14, v21);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 10, [a2 rasterSampleCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [a2 threadgroupSizeMatchesTileSize], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [a2 maxTotalThreadsPerThreadgroup], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 24, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 12, [a2 colorSampleCount], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 20, [a2 textureWriteRoundingMode], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 16, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 22, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 18, a4, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(this, v25 + v24);
}

void sub_185CBC2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MTLCreateTileRenderPipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLTileRenderPipelineDescriptor *a2)
{
  v4 = [objc_msgSend(-[MTLTileRenderPipelineDescriptor tileFunction](a2 "tileFunction")];
  v5 = strlen(v4);
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v4, v5);
  v7 = 1;
  if (![(MTLTileRenderPipelineDescriptor *)a2 supportAddingBinaryFunctions])
  {
    v7 = [(NSArray *)[(MTLLinkedFunctions *)[(MTLTileRenderPipelineDescriptor *)a2 linkedFunctions] binaryFunctions] count]!= 0;
  }

  LODWORD(v18) = createLinkedFunctions(a1, [(MTLTileRenderPipelineDescriptor *)a2 linkedFunctions]);
  TileFunctionDescriptor = createTileFunctionDescriptor(a1, a2, &v18, v7);
  *(a1 + 70) = 1;
  v9 = *(a1 + 10);
  v10 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, TileFunctionDescriptor);
  v11 = flatbuffers::FlatBufferBuilder::EndTable(a1, v10 + v9);
  v18 = 0x400000000;
  v19 = 0;
  *(a1 + 70) = 1;
  v12 = *(a1 + 10);
  v13 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v11);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v18);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 3);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v14);
  v15 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v15);
  v16 = flatbuffers::FlatBufferBuilder::EndTable(a1, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a1, v16, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

uint64_t _MTLCreateMeshRenderPipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLMeshRenderPipelineDescriptor *a2)
{
  if ([(MTLMeshRenderPipelineDescriptor *)a2 meshFunction])
  {
    v4 = [objc_msgSend(-[MTLMeshRenderPipelineDescriptor meshFunction](a2 "meshFunction")];
    v5 = strlen(v4);
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, v4, v5);
  }

  else
  {
    String = 0;
  }

  if ([(MTLMeshRenderPipelineDescriptor *)a2 objectFunction])
  {
    v7 = [objc_msgSend(-[MTLMeshRenderPipelineDescriptor objectFunction](a2 "objectFunction")];
    v8 = strlen(v7);
    v9 = flatbuffers::FlatBufferBuilder::CreateString(a1, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  if ([(MTLMeshRenderPipelineDescriptor *)a2 fragmentFunction])
  {
    v10 = [objc_msgSend(-[MTLMeshRenderPipelineDescriptor fragmentFunction](a2 "fragmentFunction")];
    v11 = strlen(v10);
    v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = [(MTLMeshRenderPipelineDescriptor *)a2 _descriptorPrivate];
  v14 = v13;
  v15 = (*(&v13->var1.var0 + 4) & 0x10) != 0 || [(NSArray *)[(MTLLinkedFunctions *)v13->fragmentLinkedFunctions binaryFunctions] count]!= 0;
  LinkedFunctions = createLinkedFunctions(a1, *(v14 + 224));
  v16 = createFragmentFunctionDescriptorImpl<MTLMeshRenderPipelineDescriptorPrivate>(a1, v14, &LinkedFunctions, v15);
  v17 = (*(v14 + 64) & 4) != 0 || [objc_msgSend(*(v14 + 208) "binaryFunctions")] != 0;
  LODWORD(v30) = createLinkedFunctions(a1, *(v14 + 208));
  ObjectFunctionDescriptor = createObjectFunctionDescriptor(a1, v14, &v30, v17);
  v19 = 1;
  if ((*(v14 + 64) & 8) == 0)
  {
    v19 = [objc_msgSend(*(v14 + 216) "binaryFunctions")] != 0;
  }

  LODWORD(v30) = createLinkedFunctions(a1, *(v14 + 216));
  MeshFunctionDescriptor = createMeshFunctionDescriptor(a1, v14, &v30, v19);
  *(a1 + 70) = 1;
  v21 = *(a1 + 10);
  v22 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v9);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, MeshFunctionDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, ObjectFunctionDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v16);
  v23 = flatbuffers::FlatBufferBuilder::EndTable(a1, v22 + v21);
  v30 = 0x400000000;
  v31 = 0;
  *(a1 + 70) = 1;
  v24 = *(a1 + 10);
  v25 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v23);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v30);
  v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 4);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v26);
  v27 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v27);
  v28 = flatbuffers::FlatBufferBuilder::EndTable(a1, v25 + v24);
  flatbuffers::FlatBufferBuilder::Finish(a1, v28, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

uint64_t createFragmentFunctionDescriptorImpl<MTLMeshRenderPipelineDescriptorPrivate>(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  FragmentColorAttachmentDescriptorVector = createFragmentColorAttachmentDescriptorVector(a1, *a2);
  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(a1, *(a2 + 160));
  *(a1 + 70) = 1;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, FragmentColorAttachmentDescriptorVector);
  v12 = *(a2 + 8);
  if ((v12 - 1) >= 0x28C)
  {
    LOWORD(v12) = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 24, v12, 0);
  v13 = *(a2 + 16);
  if ((v13 - 1) >= 0x28C)
  {
    LOWORD(v13) = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 26, v13, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, *(a2 + 60) & 3, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, (*(a2 + 60) >> 2) & 3, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, (*(a2 + 60) >> 4) & 1, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, *(a2 + 32), 1);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, (*(a2 + 60) >> 33) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, *(a2 + 40), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, *(a2 + 48), -1);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 18, *(a2 + 56), 1.0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, (*(a2 + 60) >> 7) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, *(a2 + 24), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, (*(a2 + 60) >> 30) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, (*(a2 + 60) >> 26) & 0xF, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, (*(a2 + 60) >> 25) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, (*(a2 + 60) >> 22) & 7, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, (*(a2 + 60) >> 13) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, (*(a2 + 60) >> 5) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, (*(a2 + 60) >> 6) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 52, *(a2 + 68), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, *(a2 + 64) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 54, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, a4, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, *(a2 + 376), 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v10);
}

uint64_t _MTLCreateMeshRenderPipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLMeshRenderPipelineDescriptor *a2, const MTLPartialDescriptorData *__s)
{
  if ((*(__s + 23) & 0x80000000) == 0)
  {
    v6 = __s;
    if (!*(__s + 23))
    {
      goto LABEL_7;
    }

LABEL_5:
    String = 0;
    goto LABEL_8;
  }

  if (*(__s + 1))
  {
    goto LABEL_5;
  }

  v6 = *__s;
LABEL_7:
  v8 = strlen(v6);
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v6, v8);
LABEL_8:
  if ((*(__s + 231) & 0x80000000) == 0)
  {
    v9 = __s + 208;
    if (!*(__s + 231))
    {
      goto LABEL_14;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_15;
  }

  if (*(__s + 27))
  {
    goto LABEL_12;
  }

  v9 = *(__s + 26);
LABEL_14:
  v11 = strlen(v9);
  v10 = flatbuffers::FlatBufferBuilder::CreateString(a1, v9, v11);
LABEL_15:
  if (*(__s + 127) < 0)
  {
    if (!*(__s + 14))
    {
      v12 = *(__s + 13);
LABEL_21:
      v14 = strlen(v12);
      v13 = flatbuffers::FlatBufferBuilder::CreateString(a1, v12, v14);
      goto LABEL_22;
    }
  }

  else
  {
    v12 = __s + 104;
    if (!*(__s + 127))
    {
      goto LABEL_21;
    }
  }

  v13 = 0;
LABEL_22:
  v15 = [(MTLMeshRenderPipelineDescriptor *)a2 _descriptorPrivate];
  LinkedFunctions = createLinkedFunctions(a1, (__s + 104));
  v32 = createLinkedFunctions(a1, (__s + 208));
  v31 = createLinkedFunctions(a1, __s);
  v16 = *(__s + 96);
  v17 = *(__s + 304);
  v18 = createFragmentFunctionDescriptorImpl<MTLMeshRenderPipelineDescriptorPrivate>(a1, v15, &LinkedFunctions, *(__s + 200));
  v19 = createObjectFunctionDescriptor(a1, v15, &v32, v17);
  LODWORD(v15) = createMeshFunctionDescriptor(a1, v15, &v31, v16);
  *(a1 + 70) = 1;
  v20 = *(a1 + 10);
  v21 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v13);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v18);
  v22 = flatbuffers::FlatBufferBuilder::EndTable(a1, v21 + v20);
  v29 = 0x400000000;
  v30 = 0;
  *(a1 + 70) = 1;
  v23 = *(a1 + 10);
  v24 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v22);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v29);
  v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 4);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v25);
  v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v26);
  v27 = flatbuffers::FlatBufferBuilder::EndTable(a1, v24 + v23);
  flatbuffers::FlatBufferBuilder::Finish(a1, v27, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

uint64_t createObjectFunctionDescriptor(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(a1, *(a2 + 144));
  v14 = *(a2 + 320);
  v9 = createRequiredThreadsPerThreadgroupVector(a1, &v14);
  *(a1 + 70) = 1;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, *(a2 + 136), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, (*(a2 + 60) >> 9) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, *(a2 + 256), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, *(a2 + 24), 0);
  v12 = (*(a2 + 60) >> 37) & 0xFLL;
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v12, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, (*(a2 + 60) >> 33) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, a4, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, *(a2 + 112), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v9);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, *(a2 + 64) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, *(a2 + 128), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, (*(a2 + 60) >> 41) & 1, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v10);
}

uint64_t createMeshFunctionDescriptor(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(a1, *(a2 + 152));
  v13 = *(a2 + 344);
  v9 = createRequiredThreadsPerThreadgroupVector(a1, &v13);
  *(a1 + 70) = 1;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, (*(a2 + 60) >> 4) & 1, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, *(a2 + 136), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, (*(a2 + 60) >> 9) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, *(a2 + 264), 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, (*(a2 + 60) >> 14), 255);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, *(a2 + 24), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, (*(a2 + 60) >> 37) & 0xFLL, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, (*(a2 + 60) >> 33) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, a4, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, *(a2 + 120), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, v9);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, *(a2 + 64) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, (*(a2 + 60) >> 42) & 1, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v10);
}

uint64_t _MTLCreateFunctionScriptFromFunctionType(flatbuffers::FlatBufferBuilder *a1, MTLFunctionType a2)
{
  v14 = 0x300000000;
  v15 = 0;
  if (a2 - 7 < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  *(a1 + 70) = 1;
  v5 = *(a1 + 10);
  v6 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, 0);
  v7 = flatbuffers::FlatBufferBuilder::EndTable(a1, v6 + v5);
  *(a1 + 70) = 1;
  v8 = *(a1 + 10);
  v9 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v7);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v14);
  if (a2 == MTLFunctionTypeVisible)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, v10);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v11);
  v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v12);
  v13 = flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v8);
  flatbuffers::FlatBufferBuilder::Finish(a1, v13, "AIRF", 0);
  return *(a1 + 6) + **(a1 + 6);
}

void reorderStitchingGraphNodes(MTLFunctionStitchingGraph *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v83[0] = 0;
  v83[1] = 0;
  v82 = v83;
  memset(v80, 0, sizeof(v80));
  v81 = 1065353216;
  __p = 0;
  v79 = 0uLL;
  *&v77 = 0xFFFFFFFFLL;
  *(&v77 + 1) = [(MTLFunctionStitchingGraph *)a1 outputNode];
  std::vector<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode>>::push_back[abi:ne200100](&__p, &v77);
  v73 = a2;
  v4 = [(NSArray *)[(MTLFunctionStitchingGraph *)a1 nodes] count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      *&v98 = 0xFFFFFFFFLL;
      *(&v98 + 1) = [(NSArray *)[(MTLFunctionStitchingGraph *)a1 nodes] objectAtIndexedSubscript:v5];
      std::vector<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode>>::push_back[abi:ne200100](&__p, &v98);
      --v5;
    }

    while (v5 != -1);
  }

  v6 = v79;
  for (i = 0x1E6EE9000uLL; v79 != __p; v6 = v79)
  {
    v76 = *(v6 - 16);
    *&v79 = v6 - 16;
    v8 = v76;
    if (v76 <= 0)
    {
      std::__tree<objc_object  {objcproto24MTLFunctionStitchingNode}*>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode} const&>(&v82, &v76 + 1);
      if ((v9 & 1) == 0)
      {
        continue;
      }

      v10 = *(i + 3976);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![objc_msgSend(*(&v76 + 1) "arguments")] && !objc_msgSend(objc_msgSend(*(&v76 + 1), "controlDependencies"), "count"))
        {
          goto LABEL_23;
        }

        *(&v97[0] + 1) = *(&v76 + 1);
        *&v97[0] = 1;
        std::vector<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode>>::push_back[abi:ne200100](&__p, v97);
        v11 = *(&v76 + 1);
        v12 = *(i + 3976);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [objc_msgSend(v11 "arguments")];
          if (v13)
          {
            v14 = v13 - 1;
            do
            {
              *&v98 = 0;
              *(&v98 + 1) = [objc_msgSend(v11 arguments];
              std::vector<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode>>::push_back[abi:ne200100](&__p, &v98);
              --v14;
            }

            while (v14 != -1);
          }

          v15 = [objc_msgSend(v11 controlDependencies];
          if (v15)
          {
            v16 = v15 - 1;
            do
            {
              *&v98 = 0;
              *(&v98 + 1) = [objc_msgSend(v11 "controlDependencies")];
              std::vector<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode>>::push_back[abi:ne200100](&__p, &v98);
              --v16;
            }

            while (v16 != -1);
          }
        }

        else if ([v11 isMemberOfClass:objc_opt_class()])
        {
          v33 = v79;
          if (v79 >= *(&v79 + 1))
          {
            v35 = (v79 - __p) >> 4;
            v36 = v35 + 1;
            if ((v35 + 1) >> 60)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v37 = *(&v79 + 1) - __p;
            if ((*(&v79 + 1) - __p) >> 3 > v36)
            {
              v36 = v37 >> 3;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF0)
            {
              v38 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v36;
            }

            std::__split_buffer<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode> &>::__split_buffer(&v98, v38, v35, &__p);
            v39 = v99;
            *v99 = 0;
            *(v39 + 8) = v11;
            *&v99 = v99 + 16;
            v40 = (*(&v98 + 1) - (v79 - __p));
            memcpy(v40, __p, v79 - __p);
            v41 = __p;
            v42 = *(&v79 + 1);
            __p = v40;
            v43 = v99;
            v79 = v99;
            *&v99 = v41;
            *(&v99 + 1) = v42;
            *&v98 = v41;
            *(&v98 + 1) = v41;
            if (v41)
            {
              v72 = v43;
              operator delete(v41);
              *&v43 = v72;
            }

            v34 = v43;
          }

          else
          {
            *v79 = 0;
            *(v33 + 8) = v11;
            v34 = v33 + 16;
          }

          *&v79 = v34;
        }
      }

      else if (([*(&v76 + 1) isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(*(&v76 + 1), "conformsToProtocol:", &unk_1EF4FE358) & 1) != 0 || objc_msgSend(*(&v76 + 1), "conformsToProtocol:", &unk_1EF4FE450))
      {
LABEL_23:
        LODWORD(v76) = 1;
LABEL_24:
        v17 = *(&v76 + 1);
        v18 = *(i + 3976);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v19 = [v17 controlDependencies];
          v20 = 0;
          v21 = [v19 countByEnumeratingWithState:&v92 objects:&v98 count:16];
          if (v21)
          {
            v22 = *v93;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v93 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v92 + 1) + 8 * j);
                *&v97[0] = v24;
                if (std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>(v80, v97))
                {
                  v88[0] = v24;
                  *&v97[0] = v88;
                  v25 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v80, v88) + 6);
                  if (v20 <= v25)
                  {
                    v20 = v25;
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v92 objects:&v98 count:16];
            }

            while (v21);
          }

          v90 = 0u;
          v91 = 0u;
          *v88 = 0u;
          v89 = 0u;
          i = 0x1E6EE9000;
          v26 = [v17 arguments];
          v27 = [v26 countByEnumeratingWithState:v88 objects:v97 count:16];
          if (v27)
          {
            v28 = *v89;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v89 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = *(v88[1] + k);
                v96 = v30;
                if (std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>(v80, &v96))
                {
                  v87 = v30;
                  v96 = &v87;
                  v31 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v80, &v87) + 6);
                  if (v20 <= v31)
                  {
                    v20 = v31;
                  }
                }
              }

              v27 = [v26 countByEnumeratingWithState:v88 objects:v97 count:16];
            }

            while (v27);
          }
        }

        else
        {
          v20 = 0;
        }

        v74 = *(&v76 + 1);
        v75 = v20 + 1;
        std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::pair<objc_object  {objcproto24MTLFunctionStitchingNode} const,unsigned int>>(v80, &v74);
        if (v32)
        {
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v84, &v76 + 1);
        }

        continue;
      }

      v8 = v76;
    }

    if (v8 == 1)
    {
      goto LABEL_24;
    }
  }

  v98 = 0u;
  v99 = 0u;
  v100 = 1065353216;
  v44 = v84;
  v45 = v85;
  if (v84 == v85)
  {
LABEL_69:
    v44 = v45;
  }

  else
  {
    v46 = v84;
    while (1)
    {
      v47 = *v46;
      v48 = *(i + 3976);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      ++v46;
      v44 = (v44 + 8);
      if (v46 == v45)
      {
        goto LABEL_69;
      }
    }

    v60 = i;
    v61 = v45 - 1;
    v62 = v45 - v44;
    while (v46 != v61)
    {
      v63 = *v61;
      v64 = *(v60 + 3976);
      objc_opt_class();
      --v45;
      v62 -= 8;
      --v61;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v65 = (v62 >> 3) + 1;
        if (v62 >> 3 < 3)
        {
          v66 = 0;
          v71 = 0;
        }

        else
        {
          if (v65 >= 0xFFFFFFFFFFFFFFFLL)
          {
            v66 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v66 = (v62 >> 3) + 1;
          }

          v67 = MEMORY[0x1E69E5398];
          while (1)
          {
            v68 = operator new(8 * v66, v67);
            if (v68)
            {
              break;
            }

            v69 = v66 >> 1;
            v70 = v66 > 1;
            v66 >>= 1;
            if (!v70)
            {
              v71 = 0;
              v66 = v69;
              goto LABEL_103;
            }
          }

          v71 = v68;
        }

LABEL_103:
        v44 = std::__stable_partition_impl<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_2 &,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,long,std::pair<objc_object  {objcproto24MTLFunctionStitchingNode}*,long>>(v44, v45, v65, v71, v66);
        if (v71)
        {
          operator delete(v71);
        }

        break;
      }
    }
  }

  v49 = (v44 - v84) >> 3;
  v50 = 126 - 2 * __clz(v49);
  if (v44 == v84)
  {
    v51 = 0;
  }

  else
  {
    v51 = v50;
  }

  std::__introsort<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,false>(v84, v44, v51, 1);
  *&v89 = 0;
  v52 = 0uLL;
  *v88 = 0u;
  v53 = v84;
  if (v85 != v84)
  {
    v54 = 0;
    v55 = 1;
    while (1)
    {
      if (v55 == 1 || v49 <= v54)
      {
        goto LABEL_79;
      }

      NodeKey::NodeKey(v97, v53[v54]);
      NodeKey::NodeKey(&v92, *(v84 + v55 - 2));
      if ((NodeKey::operator==(v97, &v92) & 1) == 0)
      {
        break;
      }

LABEL_80:
      v57 = v88[0];
      v56 = v88[1];
      *&v97[0] = v84 + 8 * v54;
      *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode} const&>,std::piecewise_construct_t const&<>>(&v98, *&v97[0]) + 6) = ((v56 - v57) >> 3) - 1;
      v54 = v55;
      v53 = v84;
      ++v55;
      if (v54 >= (v85 - v84) >> 3)
      {
        v52 = *v88;
        v58 = v89;
        goto LABEL_83;
      }
    }

    v53 = v84;
LABEL_79:
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](v88, &v53[v54]);
    goto LABEL_80;
  }

  v58 = 0;
LABEL_83:
  *v73 = v52;
  *(v73 + 16) = v58;
  v88[1] = 0;
  *&v89 = 0;
  v88[0] = 0;
  std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__hash_table(v73 + 24, &v98);
  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v98);
  if (__p)
  {
    *&v79 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v80);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(&v82, v83[0]);
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  v59 = *MEMORY[0x1E69E9840];
}

void sub_185CBDA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v37 - 224);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a23);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(&a28, a29);
  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void std::vector<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    std::__split_buffer<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode> &>::__split_buffer(&v17, v10, v7, a1);
    *v19 = *a2;
    *&v19 = v19 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = &v18[-v11];
    memcpy(&v18[-v11], *a1, v11);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    v15 = v19;
    *(a1 + 8) = v19;
    *&v19 = v13;
    *(&v19 + 1) = v14;
    v17 = v13;
    v18 = v13;
    if (v13)
    {
      v16 = v15;
      operator delete(v13);
      v15 = v16;
    }

    v6 = v15;
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t createGraph(flatbuffers::FlatBufferBuilder *a1, MTLFunctionStitchingGraph *a2)
{
  v195 = *MEMORY[0x1E69E9840];
  v152 = a2;
  reorderStitchingGraphNodes(a2, &v188);
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v3 = v188;
  v155 = v189;
  if (v188 != v189)
  {
    while (1)
    {
      v4 = *v3;
      if ([*v3 isMemberOfClass:objc_opt_class()])
      {
        break;
      }

      if (![v4 isMemberOfClass:objc_opt_class()])
      {
        if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v34 = [v4 argumentIndex];
          *(a1 + 70) = 1;
          v35 = *(a1 + 5);
          v36 = *(a1 + 6);
          v37 = *(a1 + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, v34, 0);
          v38 = flatbuffers::FlatBufferBuilder::EndTable(a1, v37 - v36 + v35);
          *(a1 + 70) = 1;
          LODWORD(v36) = *(a1 + 8);
          LODWORD(v37) = *(a1 + 12);
          LODWORD(v35) = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v38);
          v39 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 1);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v39);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v36 - v37 + v35);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v157 = v3;
          v52 = [v4 bindIndex];
          *(a1 + 70) = 1;
          v53 = *(a1 + 8);
          v54 = *(a1 + 12);
          v55 = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 6, v52, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, 0, 0);
          v56 = flatbuffers::FlatBufferBuilder::EndTable(a1, v53 - v54 + v55);
          v57 = [v4 byteOffset];
          *(a1 + 70) = 1;
          v58 = *(a1 + 8);
          v59 = *(a1 + 12);
          v60 = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v57, 0);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v56);
          v61 = flatbuffers::FlatBufferBuilder::EndTable(a1, v58 - v59 + v60);
          v62 = [v4 dereference];
          v63 = v61;
          *(a1 + 70) = 1;
          if (v62)
          {
            v64 = *(a1 + 5);
            v65 = *(a1 + 6);
            v66 = *(a1 + 4);
            flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v63);
            v3 = v157;
            v67 = flatbuffers::FlatBufferBuilder::EndTable(a1, v66 - v65 + v64);
            *(a1 + 70) = 1;
            v68 = *(a1 + 8);
            v69 = *(a1 + 12);
            v70 = *(a1 + 10);
            flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v67);
            v71 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 5);
          }

          else
          {
            v68 = *(a1 + 8);
            v69 = *(a1 + 12);
            v70 = *(a1 + 10);
            flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v63);
            v3 = v157;
            v71 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 4);
          }

          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v71);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v68 - v69 + v70);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v72 = [v4 bindIndex];
          *(a1 + 70) = 1;
          v73 = *(a1 + 8);
          v74 = *(a1 + 12);
          v75 = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 6, v72, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, 0, 0);
          v76 = flatbuffers::FlatBufferBuilder::EndTable(a1, v73 - v74 + v75);
          *(a1 + 70) = 1;
          v77 = *(a1 + 8);
          v78 = *(a1 + 12);
          v79 = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v76);
          v80 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 3);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v80);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v77 - v78 + v79);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v81 = [v4 bindIndex];
          *(a1 + 70) = 1;
          v82 = *(a1 + 5);
          v83 = *(a1 + 6);
          v84 = *(a1 + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, v81, 0);
          v85 = flatbuffers::FlatBufferBuilder::EndTable(a1, v84 - v83 + v82);
          *(a1 + 70) = 1;
          LODWORD(v83) = *(a1 + 8);
          LODWORD(v84) = *(a1 + 12);
          LODWORD(v82) = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v85);
          v86 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 6);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v86);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v83 - v84 + v82);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v87 = [v4 bindIndex];
          *(a1 + 70) = 1;
          v88 = *(a1 + 5);
          v89 = *(a1 + 6);
          v90 = *(a1 + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, v87, 0);
          v91 = flatbuffers::FlatBufferBuilder::EndTable(a1, v90 - v89 + v88);
          *(a1 + 70) = 1;
          LODWORD(v89) = *(a1 + 8);
          LODWORD(v90) = *(a1 + 12);
          LODWORD(v88) = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v91);
          v92 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 7);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v92);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v89 - v90 + v88);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v93 = [v4 bindIndex];
          *(a1 + 70) = 1;
          v94 = *(a1 + 5);
          v95 = *(a1 + 6);
          v96 = *(a1 + 4);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, v93, 0);
          v97 = flatbuffers::FlatBufferBuilder::EndTable(a1, v96 - v95 + v94);
          *(a1 + 70) = 1;
          LODWORD(v95) = *(a1 + 8);
          LODWORD(v96) = *(a1 + 12);
          LODWORD(v94) = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v97);
          v98 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 8);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v98);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v95 - v96 + v94);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          *(a1 + 70) = 1;
          v99 = flatbuffers::FlatBufferBuilder::EndTable(a1, *(a1 + 16) - *(a1 + 24) + *(a1 + 10));
          *(a1 + 70) = 1;
          v100 = *(a1 + 8);
          v101 = *(a1 + 12);
          v102 = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v99);
          v103 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 9);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v103);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v100 - v101 + v102);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          *(a1 + 70) = 1;
          v104 = *(a1 + 8);
          v105 = *(a1 + 12);
          v106 = *(a1 + 10);
          v107 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 1);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v107);
          v108 = flatbuffers::FlatBufferBuilder::EndTable(a1, v104 - v105 + v106);
          *(a1 + 70) = 1;
          v109 = *(a1 + 8);
          v110 = *(a1 + 12);
          v111 = *(a1 + 10);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v108);
          v112 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 10);
          flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v112);
          LODWORD(v182) = flatbuffers::FlatBufferBuilder::EndTable(a1, v109 - v110 + v111);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          BuiltinNode = Mtl4::FunctionStitching::CreateBuiltinNode(a1, 0);
          LODWORD(v182) = Mtl4::FunctionStitching::CreateNode(a1, 10, BuiltinNode);
          std::vector<unsigned int>::push_back[abi:ne200100](&v185, &v182);
        }

        goto LABEL_56;
      }

      v182 = 0;
      v183 = 0;
      v184 = 0;
      __dst[0] = [v4 condition];
      __p = __dst;
      LODWORD(v173) = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v190, __dst) + 6);
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v19 = [v4 controlDependencies];
      v20 = [v19 countByEnumeratingWithState:&v163 objects:v192 count:16];
      if (v20)
      {
        v21 = *v164;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v164 != v21)
            {
              objc_enumerationMutation(v19);
            }

            __dst[0] = *(*(&v163 + 1) + 8 * i);
            __p = __dst;
            v174 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v190, __dst) + 6);
            std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v174);
          }

          v20 = [v19 countByEnumeratingWithState:&v163 objects:v192 count:16];
        }

        while (v20);
      }

      if (v183 == v182)
      {
        v23 = &flatbuffers::data<Air::FunctionStitching::NodeId,std::allocator<Air::FunctionStitching::NodeId>>(std::vector<Air::FunctionStitching::NodeId> const&)::t;
      }

      else
      {
        v23 = v182;
      }

      v24 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(a1, v23, (v183 - v182) >> 2);
      *(a1 + 70) = 1;
      v25 = *(a1 + 8);
      v26 = *(a1 + 12);
      v27 = *(a1 + 10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v24);
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(a1, 4, &v173);
      v28 = flatbuffers::FlatBufferBuilder::EndTable(a1, v25 - v26 + v27);
      *(a1 + 70) = 1;
      v29 = *(a1 + 8);
      v30 = *(a1 + 12);
      v31 = *(a1 + 10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v28);
      v32 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 11);
      flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v32);
      LODWORD(__p) = flatbuffers::FlatBufferBuilder::EndTable(a1, v29 - v30 + v31);
      std::vector<unsigned int>::push_back[abi:ne200100](&v185, &__p);
      v33 = v182;
      if (v182)
      {
        goto LABEL_55;
      }

LABEL_56:
      if (++v3 == v155)
      {
        goto LABEL_77;
      }
    }

    v156 = v3;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    __p = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v5 = [v4 arguments];
    v6 = [v5 countByEnumeratingWithState:&v175 objects:v194 count:16];
    if (v6)
    {
      v7 = *v176;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v176 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v173 = *(*(&v175 + 1) + 8 * j);
          __dst[0] = &v173;
          v174 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v190, &v173) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&v182, &v174);
        }

        v6 = [v5 countByEnumeratingWithState:&v175 objects:v194 count:16];
      }

      while (v6);
    }

    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v9 = [v4 controlDependencies];
    v10 = [v9 countByEnumeratingWithState:&v169 objects:v193 count:16];
    if (v10)
    {
      v11 = *v170;
      do
      {
        for (k = 0; k != v10; ++k)
        {
          if (*v170 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v173 = *(*(&v169 + 1) + 8 * k);
          __dst[0] = &v173;
          v174 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v190, &v173) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v174);
        }

        v10 = [v9 countByEnumeratingWithState:&v169 objects:v193 count:16];
      }

      while (v10);
    }

    if (v183 == v182)
    {
      v13 = &flatbuffers::data<Air::FunctionStitching::NodeId,std::allocator<Air::FunctionStitching::NodeId>>(std::vector<Air::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v13 = v182;
    }

    v154 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(a1, v13, (v183 - v182) >> 2);
    if (v180 == __p)
    {
      v14 = &flatbuffers::data<Air::FunctionStitching::NodeId,std::allocator<Air::FunctionStitching::NodeId>>(std::vector<Air::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v14 = __p;
    }

    v15 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(a1, v14, (v180 - __p) >> 2);
    v16 = [objc_msgSend(v4 "name")];
    v17 = strlen(v16);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v168 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    *(__dst + v18) = 0;
    if ((v168 & 0x80u) == 0)
    {
      v40 = __dst;
    }

    else
    {
      v40 = __dst[0];
    }

    if ((v168 & 0x80u) == 0)
    {
      v41 = v168;
    }

    else
    {
      v41 = __dst[1];
    }

    String = flatbuffers::FlatBufferBuilder::CreateString(a1, v40, v41);
    if (v168 < 0)
    {
      operator delete(__dst[0]);
    }

    v43 = v15;
    *(a1 + 70) = 1;
    v44 = *(a1 + 8);
    v45 = *(a1 + 12);
    v46 = *(a1 + 10);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v43);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v154);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
    v47 = flatbuffers::FlatBufferBuilder::EndTable(a1, v44 - v45 + v46);
    *(a1 + 70) = 1;
    v48 = *(a1 + 8);
    v49 = *(a1 + 12);
    v50 = *(a1 + 10);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v47);
    v51 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 2);
    flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v51);
    LODWORD(__dst[0]) = flatbuffers::FlatBufferBuilder::EndTable(a1, v48 - v49 + v50);
    std::vector<unsigned int>::push_back[abi:ne200100](&v185, __dst);
    if (__p)
    {
      v180 = __p;
      operator delete(__p);
    }

    v33 = v182;
    v3 = v156;
    if (!v182)
    {
      goto LABEL_56;
    }

LABEL_55:
    v183 = v33;
    operator delete(v33);
    goto LABEL_56;
  }

LABEL_77:
  v114 = v152;
  v115 = [(NSString *)[(MTLFunctionStitchingGraph *)v152 functionName] UTF8String];
  v116 = strlen(v115);
  v117 = flatbuffers::FlatBufferBuilder::CreateString(a1, v115, v116);
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v118 = [(MTLFunctionStitchingGraph *)v114 attributes];
  v119 = [(NSArray *)v118 countByEnumeratingWithState:&v159 objects:v191 count:16];
  if (!v119)
  {
    goto LABEL_89;
  }

  v158 = 0;
  v120 = *v160;
  do
  {
    for (m = 0; m != v119; ++m)
    {
      if (*v160 != v120)
      {
        objc_enumerationMutation(v118);
      }

      v122 = *(*(&v159 + 1) + 8 * m);
      if ([v122 isMemberOfClass:objc_opt_class()])
      {
        *(a1 + 70) = 1;
        v123 = flatbuffers::FlatBufferBuilder::EndTable(a1, *(a1 + 16) - *(a1 + 24) + *(a1 + 20));
        *(a1 + 70) = 1;
        v124 = *(a1 + 8);
        v125 = *(a1 + 12);
        v126 = *(a1 + 10);
        flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v123);
        v127 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 1);
        flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v127);
        LODWORD(__p) = flatbuffers::FlatBufferBuilder::EndTable(a1, v124 - v125 + v126);
        std::vector<unsigned int>::push_back[abi:ne200100](&v182, &__p);
      }

      else if ([v122 isMemberOfClass:objc_opt_class()])
      {
        *(a1 + 70) = 1;
        v128 = flatbuffers::FlatBufferBuilder::EndTable(a1, *(a1 + 16) - *(a1 + 24) + *(a1 + 20));
        *(a1 + 70) = 1;
        v129 = *(a1 + 8);
        v130 = *(a1 + 12);
        v131 = *(a1 + 10);
        flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v128);
        v132 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
        flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v132);
        LODWORD(__p) = flatbuffers::FlatBufferBuilder::EndTable(a1, v129 - v130 + v131);
        std::vector<unsigned int>::push_back[abi:ne200100](&v182, &__p);
        v158 = 1;
      }
    }

    v119 = [(NSArray *)v118 countByEnumeratingWithState:&v159 objects:v191 count:16];
  }

  while (v119);
  v114 = v153;
  if ((v158 & 1) == 0)
  {
LABEL_89:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 70) = 1;
      v133 = flatbuffers::FlatBufferBuilder::EndTable(a1, *(a1 + 16) - *(a1 + 24) + *(a1 + 10));
      *(a1 + 70) = 1;
      v134 = *(a1 + 8);
      v135 = *(a1 + 12);
      v136 = *(a1 + 10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v133);
      v137 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
      flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v137);
      LODWORD(__p) = flatbuffers::FlatBufferBuilder::EndTable(a1, v134 - v135 + v136);
      std::vector<unsigned int>::push_back[abi:ne200100](&v182, &__p);
    }
  }

  if (v183 == v182)
  {
    v138 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Air::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Air::FunctionStitching::Attribute>> const&)::t;
  }

  else
  {
    v138 = v182;
  }

  v139 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v138, (v183 - v182) >> 2);
  if (v186 == v185)
  {
    v140 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Air::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Air::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v140 = v185;
  }

  v141 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v140, (v186 - v185) >> 2);
  if ([(MTLFunctionStitchingGraph *)v114 outputNode])
  {
    __dst[0] = [(MTLFunctionStitchingGraph *)v114 outputNode];
    __p = __dst;
    v142 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v190, __dst) + 6);
  }

  else
  {
    v142 = 0;
  }

  LODWORD(v173) = v142;
  v143 = [(MTLFunctionStitchingGraph *)v114 outputNode];
  v144 = v139;
  *(a1 + 70) = 1;
  v145 = *(a1 + 8);
  v146 = *(a1 + 12);
  v147 = *(a1 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v144);
  if (v143)
  {
    v148 = &v173;
  }

  else
  {
    v148 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(a1, 8, v148);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v141);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v117);
  v149 = flatbuffers::FlatBufferBuilder::EndTable(a1, v145 - v146 + v147);
  if (v182)
  {
    v183 = v182;
    operator delete(v182);
  }

  if (v185)
  {
    v186 = v185;
    operator delete(v185);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v190);
  if (v188)
  {
    v189 = v188;
    operator delete(v188);
  }

  v150 = *MEMORY[0x1E69E9840];
  return v149;
}

void sub_185CBED3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::pair<std::vector<objc_object  {objcproto24MTLFunctionStitchingNode}*>,std::unordered_map<objc_object  {objcproto24MTLFunctionStitchingNode},unsigned int,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,objc_object  {objcproto24MTLFunctionStitchingNode}*<std::pair<objc_object  {objcproto24MTLFunctionStitchingNode} const,unsigned int>>>>::~pair(&a63);
  _Unwind_Resume(a1);
}

void createStitchingScriptHashImpl(uint64_t a1@<X0>, Air::FunctionStitching::Graph *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = 126 - 2 * __clz((v7 - v6) >> 5);
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v6, v7, v9, 1);
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, *a1, (*(a1 + 8) - *a1) & 0xFFFFFFE0);
  Air::FunctionStitching::Graph::HashImpl(a2, &c);
  flatbuffers::SignatureBuilder::Create(&c, __p);
  v10 = __p[0];
  v11 = *(__p[0] + 1);
  *a3 = *__p[0];
  a3[1] = v11;
  __p[1] = v10;
  operator delete(v10);
}

uint64_t Air::FunctionStitching::Graph::HashImpl(Air::FunctionStitching::Graph *this, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.Graph", 0x1Bu);
  v4 = (this - *this);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (this + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (this - *this);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (this + v12 + *(this + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = v13 + 1;
      v16 = v13 + 1;
      do
      {
        v17 = *v16++;
        Air::FunctionStitching::Node::HashImpl((v15 + v17), c);
        v15 = v16;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v18 = (this - *this);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "Air.FunctionStitching.NodeId", 0x1Cu);
    data = *(this + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (this - *this);
  if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
  {
    v23 = (this + v22 + *(this + v22));
    data = *v23;
    result = CC_SHA256_Update(c, &data, 4u);
    v25 = *v23;
    if (v25)
    {
      v26 = v23 + 1;
      v27 = v23 + 1;
      do
      {
        v28 = *v27++;
        result = Air::FunctionStitching::Attribute::HashImpl((v26 + v28), c);
        v26 = v27;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

void _MTLGetStitchingLookupHash(__int128 *a1@<X0>, MTLFunctionStitchingGraph *a2@<X1>, _OWORD *a3@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = xmmword_185DB8250;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 1;
  v16 = 256;
  v17 = 0;
  Graph = createGraph(&v9, a2);
  v7 = *a1;
  v6 = v7;
  v8 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  createStitchingScriptHashImpl(&v7, (v13 + (v12 - v13 + DWORD2(v12)) - Graph), a3);
  if (v6)
  {
    operator delete(v6);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v9);
}

void sub_185CBF1D8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a2)
  {
    operator delete(a2);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t _MTLCreateStitchingScriptFromStichedLibraryDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLStitchedLibraryDescriptor *a2, uint64_t a3)
{
  v4 = a2;
  LODWORD(v15) = 0;
  FunctionArray = createFunctionArray(a1, [(MTLStitchedLibraryDescriptor *)a2 functions:0x300000000]);
  Graph = createGraph(a1, [(NSArray *)[(MTLStitchedLibraryDescriptor *)v4 functionGraphs] objectAtIndexedSubscript:a3]);
  LODWORD(a3) = FunctionArray;
  *(a1 + 70) = 1;
  v8 = *(a1 + 10);
  v9 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, Graph);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, a3);
  v10 = flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v8);
  *(a1 + 70) = 1;
  LODWORD(a3) = *(a1 + 10);
  LODWORD(v4) = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v10);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v14);
  v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v11);
  v12 = flatbuffers::FlatBufferBuilder::EndTable(a1, v4 + a3);
  flatbuffers::FlatBufferBuilder::Finish(a1, v12, "AIRS", 0);
  return *(a1 + 6) + **(a1 + 6);
}

void MTLCalculateStitchingHash(int *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1;
  v5 = (a1 - *a1);
  if (*v5 < 9u)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[4];
    if (v6)
    {
      v6 = (v6 + a1 + *(v6 + a1));
    }
  }

  v7 = (v6 - *v6);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = (v9 + *(v9 - *v9 + 6));
  v11 = *v10;
  v220 = 0;
  v221 = 0;
  v222 = 0;
  v13 = v10 + v11 + 4;
  v12 = *(v10 + v11);
  v190 = a3;
  if (v12)
  {
    v14 = 4 * v12;
    v15 = v13;
    do
    {
      v204 = (v15 + *v15);
      std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](&v220, &v204);
      ++v15;
      v14 -= 4;
    }

    while (v14);
    v17 = v220;
    v16 = v221;
    if (v220 != v221)
    {
      v18 = v221 - 1;
      v19 = v220;
      while (1)
      {
        v20 = *v17;
        if (AirReflection::Node::node_as_KernelFunction(*v17) || Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v20))
        {
          break;
        }

        ++v17;
        ++v19;
        if (v17 == v16)
        {
          v17 = v16;
          goto LABEL_24;
        }
      }

      if (v17 != v18)
      {
        v21 = v18 - v19;
        v22 = v18;
        while (1)
        {
          v23 = *v22;
          if (!AirReflection::Node::node_as_KernelFunction(*v22) && !Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v23))
          {
            break;
          }

          --v22;
          --v18;
          v21 -= 8;
          if (v17 == v22)
          {
            goto LABEL_24;
          }
        }

        v181 = (v21 >> 3) + 1;
        if (v21 >> 3 < 3)
        {
          v183 = 0;
          v188 = 0;
        }

        else
        {
          v182 = v3;
          if (v181 >= 0xFFFFFFFFFFFFFFFLL)
          {
            v183 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v183 = v181;
          }

          v184 = MEMORY[0x1E69E5398];
          while (1)
          {
            v185 = operator new(8 * v183, v184);
            if (v185)
            {
              break;
            }

            v186 = v183 >> 1;
            v187 = v183 > 1;
            v183 >>= 1;
            if (!v187)
            {
              v188 = 0;
              v183 = v186;
              goto LABEL_198;
            }
          }

          v188 = v185;
LABEL_198:
          v3 = v182;
        }

        v17 = std::__stable_partition_impl<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_0 &,std::__wrap_iter<Air::FunctionStitching::Node const**>,long,std::pair<Air::FunctionStitching::Node const**,long>>(v19, v18, v181, v188, v183);
        if (v188)
        {
          operator delete(v188);
        }
      }
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_24:
  v24 = v17 - v220;
  v25 = 126 - 2 * __clz(v24);
  if (v17 == v220)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,false>(v220, v17, v26, 1);
  v191 = v3;
  v27 = 0uLL;
  memset(v218, 0, sizeof(v218));
  v219 = 1065353216;
  v217 = 0;
  v216 = 0u;
  v28 = v220;
  if (v221 != v220)
  {
    v29 = 0;
    v30 = 1;
    while (1)
    {
      if (v30 == 1 || v24 <= v29)
      {
        goto LABEL_33;
      }

      NodeKey::NodeKey(&v204, v28[v29]);
      NodeKey::NodeKey(&v213, v220[v30 - 2]);
      if ((NodeKey::operator==(&v204, &v213) & 1) == 0)
      {
        break;
      }

LABEL_34:
      v31 = v216;
      v204 = &v220[v29];
      *(std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const* const&>,std::tuple<>>(v218, v204) + 6) = ((*(&v31 + 1) - v31) >> 3) - 1;
      v29 = v30;
      v28 = v220;
      ++v30;
      if (v29 >= v221 - v220)
      {
        v27 = v216;
        goto LABEL_36;
      }
    }

    v28 = v220;
LABEL_33:
    std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](&v216, &v28[v29]);
    goto LABEL_34;
  }

LABEL_36:
  v204 = 0;
  v205 = 0;
  v206 = xmmword_185DB8250;
  v207 = 0u;
  v208 = 0u;
  v209 = 0;
  v210 = 1;
  v211 = 256;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v215 = 0;
  v32 = *(&v27 + 1);
  for (i = v27; i != v32; ++i)
  {
    v34 = *i;
    v35 = (*i - **i);
    if (*v35 < 5u)
    {
      goto LABEL_61;
    }

    v36 = v35[2];
    if (!v36)
    {
      goto LABEL_61;
    }

    v37 = *(v34 + v36);
    if (v37 == 11)
    {
      LODWORD(v196) = 0;
      __p = 0;
      v202 = 0;
      v203 = 0;
      v62 = Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v34);
      v63 = v62;
      v64 = *v62;
      v65 = -v64;
      v66 = (v62 - v64);
      if (*v66 >= 5u)
      {
        v67 = v66[2];
        if (v67)
        {
          v68 = (v13 + 4 * *(v62 + v67));
          v194 = v68 + *v68;
          __src = &v194;
          LODWORD(v196) = *(std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const*&&>,std::tuple<>>(v218, &v194) + 6);
          v65 = -*v63;
        }
      }

      v69 = (v63 + v65);
      if (*v69 >= 7u)
      {
        v70 = v69[3];
        if (v70)
        {
          v71 = *(v63 + v70);
          v72 = *(v63 + v70 + v71);
          if (v72)
          {
            v73 = 4 * v72;
            v74 = (v63 + v71 + v70 + 4);
            do
            {
              v194 = v13 + 4 * *v74 + *(v13 + 4 * *v74);
              __src = &v194;
              v197 = *(std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const*&&>,std::tuple<>>(v218, &v194) + 6);
              std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v197);
              ++v74;
              v73 -= 4;
            }

            while (v73);
          }
        }
      }

      if (v202 == __p)
      {
        v75 = &flatbuffers::data<Air::FunctionStitching::NodeId,std::allocator<Air::FunctionStitching::NodeId>>(std::vector<Air::FunctionStitching::NodeId> const&)::t;
      }

      else
      {
        v75 = __p;
      }

      v76 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(&v204, v75, (v202 - __p) >> 2);
      BYTE6(v209) = 1;
      v77 = v208;
      v78 = v207;
      v79 = WORD4(v207);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 6, v76);
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(&v204, 4, &v196);
      v80 = flatbuffers::FlatBufferBuilder::EndTable(&v204, v78 - v77 + v79);
      BYTE6(v209) = 1;
      v81 = v208;
      v82 = v207;
      v83 = WORD4(v207);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 6, v80);
      v84 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(&v204, 11);
      flatbuffers::FlatBufferBuilder::TrackField(&v204, 4, v84);
      LODWORD(__src) = flatbuffers::FlatBufferBuilder::EndTable(&v204, v82 - v81 + v83);
      std::vector<unsigned int>::push_back[abi:ne200100](&v213, &__src);
      if (__p)
      {
        v202 = __p;
        operator delete(__p);
      }

      continue;
    }

    if (v37 == 2)
    {
      __p = 0;
      v202 = 0;
      v203 = 0;
      __src = 0;
      v199 = 0;
      v200 = 0;
      v38 = AirReflection::Node::node_as_KernelFunction(v34);
      v39 = v38;
      v40 = *v38;
      v41 = -v40;
      v42 = &v38[-v40];
      if (*v42 >= 7u)
      {
        v43 = *(v42 + 3);
        if (v43)
        {
          v44 = *&v38[v43];
          v45 = *&v38[v43 + v44];
          if (v45)
          {
            v46 = 4 * v45;
            v47 = v43 + v44 + 4;
            do
            {
              v48 = (v13 + 4 * *&v39[v47]);
              v196 = v48 + *v48;
              v194 = &v196;
              v197 = *(std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const*&&>,std::tuple<>>(v218, &v196) + 6);
              std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v197);
              v47 += 4;
              v46 -= 4;
            }

            while (v46);
            v41 = -*v39;
          }
        }
      }

      v49 = &v39[v41];
      if (*v49 >= 9u)
      {
        v50 = *(v49 + 4);
        if (v50)
        {
          v51 = *&v39[v50];
          v52 = *&v39[v50 + v51];
          if (v52)
          {
            v53 = 4 * v52;
            v54 = &v39[v51 + 4 + v50];
            do
            {
              v196 = v13 + 4 * *v54 + *(v13 + 4 * *v54);
              v194 = &v196;
              v197 = *(std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const*&&>,std::tuple<>>(v218, &v196) + 6);
              std::vector<unsigned int>::push_back[abi:ne200100](&__src, &v197);
              v54 += 4;
              v53 -= 4;
            }

            while (v53);
          }
        }
      }

      if (v202 == __p)
      {
        v55 = &flatbuffers::data<Air::FunctionStitching::NodeId,std::allocator<Air::FunctionStitching::NodeId>>(std::vector<Air::FunctionStitching::NodeId> const&)::t;
      }

      else
      {
        v55 = __p;
      }

      v56 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(&v204, v55, (v202 - __p) >> 2);
      if (v199 == __src)
      {
        v57 = &flatbuffers::data<Air::FunctionStitching::NodeId,std::allocator<Air::FunctionStitching::NodeId>>(std::vector<Air::FunctionStitching::NodeId> const&)::t;
      }

      else
      {
        v57 = __src;
      }

      v58 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(&v204, v57, (v199 - __src) >> 2);
      v59 = &v39[-*v39];
      if (*v59 >= 5u && (v60 = *(v59 + 2)) != 0)
      {
        String = flatbuffers::FlatBufferBuilder::CreateString(&v204, &v39[v60 + 4 + *&v39[v60]], *&v39[v60 + *&v39[v60]]);
      }

      else
      {
        String = 0;
      }

      v85 = v58;
      BYTE6(v209) = 1;
      v86 = v208;
      v87 = v207;
      v88 = WORD4(v207);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 8, v85);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 6, v56);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 4, String);
      v89 = flatbuffers::FlatBufferBuilder::EndTable(&v204, v87 - v86 + v88);
      BYTE6(v209) = 1;
      v90 = v208;
      v91 = v207;
      v92 = WORD4(v207);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 6, v89);
      v93 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(&v204, 2);
      flatbuffers::FlatBufferBuilder::TrackField(&v204, 4, v93);
      LODWORD(v194) = flatbuffers::FlatBufferBuilder::EndTable(&v204, v91 - v90 + v92);
      std::vector<unsigned int>::push_back[abi:ne200100](&v213, &v194);
      if (__src)
      {
        v199 = __src;
        operator delete(__src);
      }

      if (__p)
      {
        v202 = __p;
        operator delete(__p);
      }
    }

    else
    {
LABEL_61:
      LODWORD(__p) = Mtl4::FunctionStitching::CloneNode<Mtl4::FunctionStitching::Node>(&v204, v34);
      std::vector<unsigned int>::push_back[abi:ne200100](&v213, &__p);
    }
  }

  v94 = *v191;
  if (*(v191 - v94) < 9u)
  {
    v95 = 0;
  }

  else
  {
    v95 = *(v191 - v94 + 8);
    if (*(v191 - v94 + 8))
    {
      v95 = (v95 + v191 + *(v95 + v191));
    }
  }

  v96 = -v94;
  v97 = (v95 - *v95);
  if (*v97 >= 7u && (v98 = v97[3]) != 0)
  {
    v99 = v95 + v98 + *(v95 + v98);
  }

  else
  {
    v99 = 0;
  }

  v100 = &v99[-*v99];
  if (*v100 >= 5u && (v101 = *(v100 + 2)) != 0)
  {
    v102 = flatbuffers::FlatBufferBuilder::CreateString(&v204, &v99[v101 + 4 + *&v99[v101]], *&v99[v101 + *&v99[v101]]);
    v96 = -*v191;
    v103 = v102;
  }

  else
  {
    v103 = 0;
  }

  __p = 0;
  v202 = 0;
  v203 = 0;
  v104 = (v191 + v96);
  if (*v104 < 9u)
  {
    v105 = 0;
  }

  else
  {
    v105 = v104[4];
    if (v105)
    {
      v105 = (v105 + v191 + *(v105 + v191));
    }
  }

  v106 = (v105 - *v105);
  if (*v106 >= 7u && (v107 = v106[3]) != 0)
  {
    v108 = (v105 + v107 + *(v105 + v107));
  }

  else
  {
    v108 = 0;
  }

  v109 = (v108 - *v108);
  if (*v109 < 0xBu)
  {
LABEL_109:
    v115 = 0;
    v110 = 0;
    goto LABEL_111;
  }

  v110 = v109[5];
  if (v110)
  {
    v111 = *&v110[v108];
    v112 = *&v110[v108 + v111];
    if (v112)
    {
      v113 = 4 * v112;
      v114 = &v110[v111 + 4 + v108];
      do
      {
        LODWORD(__src) = Mtl4::FunctionStitching::CloneAttribute<Mtl4::FunctionStitching::Attribute>(&v204, &v114[*v114]);
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &__src);
        v114 += 4;
        v113 -= 4;
      }

      while (v113);
      v110 = __p;
      v115 = v202;
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v115 = 0;
LABEL_111:
  v116 = v115 - v110;
  if (v116)
  {
    v117 = v110;
  }

  else
  {
    v117 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Air::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Air::FunctionStitching::Attribute>> const&)::t;
  }

  v118 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&v204, v117, v116 >> 2);
  if (v214 == v213)
  {
    v119 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Air::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Air::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v119 = v213;
  }

  v120 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&v204, v119, (v214 - v213) >> 2);
  LODWORD(v196) = 0;
  v121 = *v191;
  if (*(v191 - v121) < 9u)
  {
    v122 = 0;
  }

  else
  {
    v122 = *(v191 - v121 + 8);
    if (*(v191 - v121 + 8))
    {
      v122 = (v122 + v191 + *(v122 + v191));
    }
  }

  v123 = -v121;
  v124 = (v122 - *v122);
  if (*v124 >= 7u && (v125 = v124[3]) != 0)
  {
    v126 = (v122 + v125 + *(v122 + v125));
  }

  else
  {
    v126 = 0;
  }

  v127 = (v126 - *v126);
  if (*v127 >= 9u)
  {
    v128 = v127[4];
    if (v128)
    {
      v129 = (v13 + 4 * *(v126 + v128));
      v194 = v129 + *v129;
      __src = &v194;
      LODWORD(v196) = *(std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const*&&>,std::tuple<>>(v218, &v194) + 6);
      v123 = -*v191;
    }
  }

  v130 = (v191 + v123);
  if (*v130 < 9u)
  {
    v131 = 0;
  }

  else
  {
    v131 = v130[4];
    if (v131)
    {
      v131 = (v131 + v191 + *(v131 + v191));
    }
  }

  v132 = (v131 - *v131);
  if (*v132 >= 7u && (v133 = v132[3]) != 0)
  {
    v134 = (v131 + v133 + *(v131 + v133));
  }

  else
  {
    v134 = 0;
  }

  v135 = (v134 - *v134);
  v136 = *v135 < 9u || !v135[4];
  v137 = v118;
  BYTE6(v209) = 1;
  v138 = v208;
  v139 = v207;
  v140 = WORD4(v207);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 10, v137);
  if (v136)
  {
    v141 = 0;
  }

  else
  {
    v141 = &v196;
  }

  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(&v204, 8, v141);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 6, v120);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 4, v103);
  v142 = flatbuffers::FlatBufferBuilder::EndTable(&v204, v139 - v138 + v140);
  __src = 0;
  v199 = 0;
  v200 = 0;
  v143 = (v191 - *v191);
  if (*v143 < 9u)
  {
    v144 = 0;
  }

  else
  {
    v144 = v143[4];
    if (v144)
    {
      v144 = (v144 + v191 + *(v144 + v191));
    }
  }

  v145 = *(v144 - *v144 + 4);
  v146 = *(v144 + v145);
  v147 = *(v144 + v145 + v146);
  if (v147)
  {
    v148 = 4 * v147;
    v149 = v144 + v146 + v145 + 4;
    do
    {
      v150 = v149;
      v151 = *v149;
      v149 += 4;
      v152 = flatbuffers::FlatBufferBuilder::CreateString(&v204, &v150[v151 + 4], *&v150[v151]);
      v153 = v199;
      if (v199 >= v200)
      {
        v155 = __src;
        v156 = v199 - __src;
        v157 = (v199 - __src) >> 2;
        v158 = v157 + 1;
        if ((v157 + 1) >> 62)
        {
          std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
        }

        v159 = v200 - __src;
        if ((v200 - __src) >> 1 > v158)
        {
          v158 = v159 >> 1;
        }

        if (v159 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v160 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v160 = v158;
        }

        if (v160)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v160);
        }

        *(4 * v157) = v152;
        v154 = 4 * v157 + 4;
        memcpy(0, v155, v156);
        v161 = __src;
        __src = 0;
        v199 = v154;
        v200 = 0;
        if (v161)
        {
          operator delete(v161);
        }
      }

      else
      {
        *v199 = v152;
        v154 = (v153 + 4);
      }

      v199 = v154;
      v148 -= 4;
    }

    while (v148);
    v162 = __src;
  }

  else
  {
    v154 = 0;
    v162 = 0;
  }

  if (v154 == v162)
  {
    v163 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v163 = v162;
  }

  v164 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&v204, v163, (v154 - v162) >> 2);
  v165 = v142;
  BYTE6(v209) = 1;
  v166 = v208;
  v167 = v207;
  v168 = WORD4(v207);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 6, v165);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 4, v164);
  v169 = flatbuffers::FlatBufferBuilder::EndTable(&v204, v167 - v166 + v168);
  v194 = 0x300000000;
  v195 = 0;
  BYTE6(v209) = 1;
  v170 = v208;
  LOWORD(v164) = v207;
  v171 = WORD4(v207);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v204, 8, v169);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(&v204, 4, &v194);
  v172 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(&v204, 2);
  flatbuffers::FlatBufferBuilder::TrackField(&v204, 6, v172);
  v173 = flatbuffers::FlatBufferBuilder::EndTable(&v204, v164 - v170 + v171);
  flatbuffers::FlatBufferBuilder::Finish(&v204, v173, "AIRS", 0);
  v174 = (v208 + *v208);
  *v192 = *a2;
  v193 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v175 = (v174 - *v174);
  if (*v175 >= 9u && (v176 = v175[4]) != 0)
  {
    v177 = (v174 + v176 + *(v174 + v176));
  }

  else
  {
    v177 = 0;
  }

  v178 = (v177 - *v177);
  if (*v178 >= 7u && (v179 = v178[3]) != 0)
  {
    v180 = (v177 + v179 + *(v177 + v179));
  }

  else
  {
    v180 = 0;
  }

  createStitchingScriptHashImpl(v192, v180, v190);
  if (v192[0])
  {
    operator delete(v192[0]);
  }

  if (__src)
  {
    v199 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v202 = __p;
    operator delete(__p);
  }

  if (v213)
  {
    v214 = v213;
    operator delete(v213);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v204);
  if (v216)
  {
    *(&v216 + 1) = v216;
    operator delete(v216);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v218);
  if (v220)
  {
    v221 = v220;
    operator delete(v220);
  }
}

void sub_185CC027C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (v39)
  {
    operator delete(v39);
  }

  v42 = *(v40 - 128);
  if (v42)
  {
    *(v40 - 120) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void createStitchingScriptHash(MTLStitchedLibraryDescriptor *a1@<X0>, const StitchingScript *a2@<X1>, _OWORD *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  __src[0] = 0;
  __src[1] = 0;
  v38 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [(MTLStitchedLibraryDescriptor *)a1 functions];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v33 + 1) + 8 * i) bitCodeHash];
        v9 = __src[1];
        if (__src[1] >= v38)
        {
          v12 = __src[0];
          v13 = __src[1] - __src[0];
          v14 = (__src[1] - __src[0]) >> 5;
          v15 = v14 + 1;
          if ((v14 + 1) >> 59)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v16 = v38 - __src[0];
          if ((v38 - __src[0]) >> 4 > v15)
          {
            v15 = v16 >> 4;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFE0)
          {
            v15 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(__src, v15);
          }

          v17 = (__src[1] - __src[0]) >> 5;
          v18 = (32 * v14);
          v19 = v8[1];
          *v18 = *v8;
          v18[1] = v19;
          v11 = (32 * v14 + 32);
          v20 = &v18[-2 * v17];
          memcpy(v20, v12, v13);
          v21 = __src[0];
          __src[0] = v20;
          __src[1] = v11;
          v38 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          v10 = v8[1];
          *__src[1] = *v8;
          v9[1] = v10;
          v11 = v9 + 2;
        }

        __src[1] = v11;
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  *__p = *__src;
  v32 = v38;
  __src[1] = 0;
  v38 = 0;
  __src[0] = 0;
  v22 = &a2[-*a2->var0];
  if (*v22->var0 >= 9u && (v23 = *v22[8].var0) != 0)
  {
    v24 = &a2[v23 + *a2[v23].var0];
  }

  else
  {
    v24 = 0;
  }

  v25 = &v24[-*v24->var0];
  if (*v25->var0 < 7u)
  {
    v28 = 0;
    v27 = a3;
  }

  else
  {
    v26 = *v25[6].var0;
    v27 = a3;
    if (v26)
    {
      v28 = &v24[v26 + *v24[v26].var0];
    }

    else
    {
      v28 = 0;
    }
  }

  createStitchingScriptHashImpl(__p, v28, v27);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_185CC0608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

dispatch_data_t _MTLCreateTileRenderPipelineScriptFromDescriptor(MTLTileRenderPipelineDescriptor *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = xmmword_185DB8250;
  v14 = 0u;
  *buffer = 0u;
  v16 = 0;
  v17 = 1;
  v18 = 256;
  v19 = 0;
  _MTLCreateTileRenderPipelineScriptFromDescriptor(&v11, a1);
  v1 = buffer[0];
  v2 = (v14 + DWORD2(v14) - LODWORD(buffer[0]));
  v5 = v11;
  v6 = v12;
  v7 = *(&v14 + 1);
  v8 = v14;
  v9 = buffer[0];
  v10 = v2;
  if (v12 == 1)
  {
    v11 = 0;
    v12 = 0;
  }

  v14 = 0u;
  *buffer = 0u;
  v3 = dispatch_data_create(v1, v2, 0, 0);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v5);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v11);
  return v3;
}

void sub_185CC0708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

dispatch_data_t _MTLCreateTileRenderPipelineScriptFromPartialDescriptor(MTLTileRenderPipelineDescriptor *a1, const MTLPartialDescriptorData *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = xmmword_185DB8250;
  v15 = 0u;
  *buffer = 0u;
  v17 = 0;
  v18 = 1;
  v19 = 256;
  v20 = 0;
  _MTLCreateTileRenderPipelineScriptFromDescriptor(&v12, a1, a2);
  v2 = buffer[0];
  v3 = (v15 + DWORD2(v15) - LODWORD(buffer[0]));
  v6 = v12;
  v7 = v13;
  v8 = *(&v15 + 1);
  v9 = v15;
  v10 = buffer[0];
  v11 = v3;
  if (v13 == 1)
  {
    v12 = 0;
    v13 = 0;
  }

  v15 = 0u;
  *buffer = 0u;
  v4 = dispatch_data_create(v2, v3, 0, 0);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v6);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v12);
  return v4;
}

void sub_185CC07E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

dispatch_data_t _MTLCreateRenderPipelineScriptFromPartialDescriptor(MTLRenderPipelineDescriptor *a1, const MTLPartialDescriptorData *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = xmmword_185DB8250;
  v15 = 0u;
  *buffer = 0u;
  v17 = 0;
  v18 = 1;
  v19 = 256;
  v20 = 0;
  if (_MTLCreateRenderPipelineScriptFromDescriptor(&v12, a1, a2))
  {
    v2 = buffer[0];
    v3 = (v15 + DWORD2(v15) - LODWORD(buffer[0]));
    v6 = v12;
    v7 = v13;
    v8 = *(&v15 + 1);
    v9 = v15;
    v10 = buffer[0];
    v11 = v3;
    if (v13 == 1)
    {
      v12 = 0;
      v13 = 0;
    }

    v15 = 0u;
    *buffer = 0u;
    v4 = dispatch_data_create(v2, v3, 0, 0);
    flatbuffers::DetachedBuffer::~DetachedBuffer(&v6);
  }

  else
  {
    v4 = 0;
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v12);
  return v4;
}

void sub_185CC08D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

dispatch_data_t _MTLCreateComputePipelineScriptFromPartialDescriptor(MTLComputePipelineDescriptor *a1, const MTLPartialDescriptorData *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = xmmword_185DB8250;
  v15 = 0u;
  *buffer = 0u;
  v17 = 0;
  v18 = 1;
  v19 = 256;
  v20 = 0;
  _MTLCreateComputePipelineScriptFromDescriptor(&v12, a1, a2);
  v2 = buffer[0];
  v3 = (v15 + DWORD2(v15) - LODWORD(buffer[0]));
  v6 = v12;
  v7 = v13;
  v8 = *(&v15 + 1);
  v9 = v15;
  v10 = buffer[0];
  v11 = v3;
  if (v13 == 1)
  {
    v12 = 0;
    v13 = 0;
  }

  v15 = 0u;
  *buffer = 0u;
  v4 = dispatch_data_create(v2, v3, 0, 0);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v6);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v12);
  return v4;
}

void sub_185CC09B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

dispatch_data_t _MTLCreateMeshRenderPipelineScriptFromPartialDescriptor(MTLMeshRenderPipelineDescriptor *a1, const MTLPartialDescriptorData *__s)
{
  v12 = 0;
  v13 = 0;
  v14 = xmmword_185DB8250;
  v15 = 0u;
  *buffer = 0u;
  v17 = 0;
  v18 = 1;
  v19 = 256;
  v20 = 0;
  _MTLCreateMeshRenderPipelineScriptFromDescriptor(&v12, a1, __s);
  v2 = buffer[0];
  v3 = (v15 + DWORD2(v15) - LODWORD(buffer[0]));
  v6 = v12;
  v7 = v13;
  v8 = *(&v15 + 1);
  v9 = v15;
  v10 = buffer[0];
  v11 = v3;
  if (v13 == 1)
  {
    v12 = 0;
    v13 = 0;
  }

  v15 = 0u;
  *buffer = 0u;
  v4 = dispatch_data_create(v2, v3, 0, 0);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v6);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v12);
  return v4;
}

void sub_185CC0A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

dispatch_data_t _MTLCreateMeshRenderPipelineScriptFromDescriptor(MTLMeshRenderPipelineDescriptor *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = xmmword_185DB8250;
  v14 = 0u;
  *buffer = 0u;
  v16 = 0;
  v17 = 1;
  v18 = 256;
  v19 = 0;
  _MTLCreateMeshRenderPipelineScriptFromDescriptor(&v11, a1);
  v1 = buffer[0];
  v2 = (v14 + DWORD2(v14) - LODWORD(buffer[0]));
  v5 = v11;
  v6 = v12;
  v7 = *(&v14 + 1);
  v8 = v14;
  v9 = buffer[0];
  v10 = v2;
  if (v12 == 1)
  {
    v11 = 0;
    v12 = 0;
  }

  v14 = 0u;
  *buffer = 0u;
  v3 = dispatch_data_create(v1, v2, 0, 0);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v5);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v11);
  return v3;
}

void sub_185CC0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

dispatch_data_t _MTLCreateFunctionScriptFromFunctionType(MTLFunctionType a1)
{
  v11 = 0;
  v12 = 0;
  v13 = xmmword_185DB8250;
  v14 = 0u;
  *buffer = 0u;
  v16 = 0;
  v17 = 1;
  v18 = 256;
  v19 = 0;
  _MTLCreateFunctionScriptFromFunctionType(&v11, a1);
  v1 = buffer[0];
  v2 = (v14 + DWORD2(v14) - LODWORD(buffer[0]));
  v5 = v11;
  v6 = v12;
  v7 = *(&v14 + 1);
  v8 = v14;
  v9 = buffer[0];
  v10 = v2;
  if (v12 == 1)
  {
    v11 = 0;
    v12 = 0;
  }

  v14 = 0u;
  *buffer = 0u;
  v3 = dispatch_data_create(v1, v2, 0, 0);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v5);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v11);
  return v3;
}

void sub_185CC0C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void _MTLCreateStitchingScriptFromStichedLibraryDescriptor(MTLStitchedLibraryDescriptor *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = [(NSArray *)[(MTLStitchedLibraryDescriptor *)a1 functionGraphs] count];
  std::allocate_shared[abi:ne200100]<std::vector<stitchedAirDescriptor>,std::allocator<std::vector<stitchedAirDescriptor>>,unsigned long,0>();
}

uint64_t createFunctionArray(flatbuffers::FlatBufferBuilder *a1, uint64_t *a2)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    do
    {
      v5 = v3;
      if (*(v3 + 23) < 0)
      {
        v5 = *v3;
      }

      v6 = strlen(v5);
      String = flatbuffers::FlatBufferBuilder::CreateString(a1, v5, v6);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &String);
      v3 += 24;
    }

    while (v3 != v4);
    v7 = __p;
    v8 = v15;
  }

  v9 = v8 - v7;
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  v11 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v10, v9 >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_185CC0EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL12createGroupsRN11flatbuffers17FlatBufferBuilderEP12NSDictionaryIP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = [a2 UTF8String];
  v7 = strlen(v6);
  LODWORD(v5) = flatbuffers::FlatBufferBuilder::CreateString(v5, v6, v7);
  LODWORD(a3) = createFunctionArray(*(a1 + 40), a3);
  v8 = *(a1 + 40);
  *(v8 + 70) = 1;
  v9 = *(v8 + 40);
  v10 = *(v8 + 32) - *(v8 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(v8, 4, v5);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(v8, 6, a3);
  v11 = *(*(a1 + 32) + 8);
  v12 = flatbuffers::FlatBufferBuilder::EndTable(v8, v10 + v9);
  std::vector<unsigned int>::push_back[abi:ne200100]((v11 + 48), &v12);
}

void *std::__split_buffer<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode,std::allocator<reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::iNode> &>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 16 * a3;
  result[2] = 16 * a3;
  result[3] = 0;
  return result;
}

uint64_t NodeKey::NodeKey(uint64_t a1, void *a2)
{
  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    *a1 = 1;
    *(a1 + 8) = [a2 argumentIndex];
    return a1;
  }

  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    if ([a2 dereference])
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    *a1 = v4;
    *(a1 + 16) = [a2 bindIndex];
    *(a1 + 24) = [a2 byteOffset];
    return a1;
  }

  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    v5 = 3;
LABEL_16:
    *a1 = v5;
    *(a1 + 16) = [a2 bindIndex];
    return a1;
  }

  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    v5 = 6;
    goto LABEL_16;
  }

  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    v5 = 7;
    goto LABEL_16;
  }

  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    v5 = 8;
    goto LABEL_16;
  }

  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    *a1 = 9;
  }

  else if ([a2 isMemberOfClass:objc_opt_class()])
  {
    *a1 = 10;
    *(a1 + 32) = 1;
  }

  else if ([a2 isMemberOfClass:objc_opt_class()])
  {
    *a1 = 10;
    *(a1 + 32) = 0;
  }

  return a1;
}

uint64_t NodeKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (v2 > 5)
  {
    if ((v2 - 6) >= 3)
    {
      if (v2 == 9)
      {
        return 1;
      }

      if (v2 == 10)
      {
        return *(a1 + 32) == *(a2 + 32);
      }

      return 0;
    }

LABEL_10:
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    return v4 == v5;
  }

  if ((v2 - 4) >= 2)
  {
    if (v2 == 1)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 + 8);
      return v4 == v5;
    }

    if (v2 != 3)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  return v4 == v5;
}

uint64_t std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
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

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t Air::FunctionStitching::Node::HashImpl(AirReflection::Node *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.Node", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 5u)
  {
    goto LABEL_23;
  }

  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(a1 + v7);
  if (v8 > 5)
  {
    if (v8 <= 8)
    {
      if (v8 == 6)
      {
        v22 = AirReflection::Node::node_as_MeshFunction(a1);
        return Air::FunctionStitching::TextureNode::HashImpl(v22, c);
      }

      else if (v8 == 7)
      {
        v19 = AirReflection::Node::node_as_ObjectFunction(a1);
        return Air::FunctionStitching::SamplerNode::HashImpl(v19, c);
      }

      else
      {
        v9 = Mtl4::FunctionStitching::Node::node_as_ThreadgroupNode(a1);
        return Air::FunctionStitching::ThreadgroupNode::HashImpl(v9, c);
      }
    }

    switch(v8)
    {
      case 9:
        Mtl4::FunctionStitching::Node::node_as_ImageblockNode(a1);
        v14 = "Air.FunctionStitching.ImageblockNode";
        v15 = c;
        v16 = 36;
        return CC_SHA256_Update(v15, v14, v16);
      case 10:
        v20 = Mtl4::FunctionStitching::Node::node_as_BuiltinNode(a1);
        return Air::FunctionStitching::BuiltinNode::HashImpl(v20, c);
      case 11:
        v12 = Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(a1);
        return Air::FunctionStitching::EarlyReturnNode::HashImpl(v12, c);
    }

LABEL_23:
    v24 = 0;
    v14 = &v24;
    v15 = c;
    v16 = 4;
    return CC_SHA256_Update(v15, v14, v16);
  }

  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v17 = AirReflection::Node::node_as_FragmentFunction(a1);
      return Air::FunctionStitching::InputNode::HashImpl(v17, c);
    }

    if (v8 == 2)
    {
      v13 = AirReflection::Node::node_as_KernelFunction(a1);
      return Air::FunctionStitching::FunctionNode::HashImpl(v13, c);
    }

    goto LABEL_23;
  }

  if (v8 == 3)
  {
    v21 = AirReflection::Node::node_as_VertexFunction(a1);
    return Air::FunctionStitching::BufferNode::HashImpl(v21, c);
  }

  else if (v8 == 4)
  {
    v18 = AirReflection::Node::node_as_VisibleFunction(a1);
    return Air::FunctionStitching::BufferAddressNode::HashImpl(v18, c);
  }

  else
  {
    v11 = AirReflection::Node::node_as_IntersectionFunction(a1);
    return Air::FunctionStitching::BufferDataNode::HashImpl(v11, c);
  }
}

uint64_t Air::FunctionStitching::Attribute::HashImpl(Mtl4::FunctionConstantValue *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.Attribute", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 5u)
  {
    goto LABEL_10;
  }

  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(a1 + v7);
  if (v8 == 2)
  {
    Mtl4::FunctionConstantValue::id_as_FunctionConstantName(a1);
    v9 = "Air.FunctionStitching.KernelAttribute";
    v10 = c;
    v11 = 37;
    return CC_SHA256_Update(v10, v9, v11);
  }

  if (v8 == 1)
  {
    Mtl4::FunctionConstantValue::id_as_FunctionConstantIndex(a1);
    v9 = "Air.FunctionStitching.AlwaysInlineAttribute";
    v10 = c;
    v11 = 43;
  }

  else
  {
LABEL_10:
    v14 = 0;
    v9 = &v14;
    v10 = c;
    v11 = 4;
  }

  return CC_SHA256_Update(v10, v9, v11);
}

uint64_t Air::FunctionStitching::InputNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.InputNode", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionStitching::FunctionNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.FunctionNode", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "Air.FunctionStitching.NodeId", 0x1Cu);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    result = CC_SHA256_Update(c, &data, 4u);
    v21 = *v19;
    if (v21)
    {
      v22 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "Air.FunctionStitching.NodeId", 0x1Cu);
        v23 = *v22++;
        data = v23;
        result = CC_SHA256_Update(c, &data, 4u);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t Air::FunctionStitching::BufferNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.BufferNode", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  v10 = v7;
  return CC_SHA256_Update(c, &v10, 4u);
}

uint64_t Air::FunctionStitching::BufferAddressNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.BufferAddressNode", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    Air::FunctionStitching::BufferNode::HashImpl((a1 + v5 + *(a1 + v5)), c);
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      v7 = *(a1 + v7);
    }
  }

  v10 = v7;
  return CC_SHA256_Update(c, &v10, 8u);
}

uint64_t Air::FunctionStitching::BufferDataNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.BufferDataNode", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));

    return Air::FunctionStitching::BufferAddressNode::HashImpl(v6, c);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t Air::FunctionStitching::TextureNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.TextureNode", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionStitching::SamplerNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.SamplerNode", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionStitching::ThreadgroupNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.ThreadgroupNode", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionStitching::BuiltinNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.BuiltinNode", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionStitching::EarlyReturnNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.FunctionStitching.EarlyReturnNode", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "Air.FunctionStitching.NodeId", 0x1Cu);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = (a1 + v8 + *(a1 + v8));
    data = *v9;
    result = CC_SHA256_Update(c, &data, 4u);
    v11 = *v9;
    if (v11)
    {
      v12 = (v9 + 1);
      do
      {
        CC_SHA256_Update(c, "Air.FunctionStitching.NodeId", 0x1Cu);
        v13 = *v12++;
        data = v13;
        result = CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

void NodeKey::NodeKey(uint64_t a1, NodeKey *this)
{
  v3 = (this - *this);
  if (*v3 < 5u || (v4 = v3[2]) == 0)
  {
    *a1 = 0;
    return;
  }

  v6 = *(this + v4);
  *a1 = v6;
  if (v6 > 5)
  {
    if (v6 > 7)
    {
      if (v6 != 8)
      {
        if (v6 == 10)
        {
          v13 = Mtl4::FunctionStitching::Node::node_as_BuiltinNode(this);
          v14 = (v13 - *v13);
          if (*v14 < 5u)
          {
            LODWORD(v15) = 0;
          }

          else
          {
            v15 = v14[2];
            if (v15)
            {
              LODWORD(v15) = *(v13 + v15);
            }
          }

          *(a1 + 32) = v15;
        }

        return;
      }

      v7 = Mtl4::FunctionStitching::Node::node_as_ThreadgroupNode(this);
    }

    else if (v6 == 6)
    {
      v7 = AirReflection::Node::node_as_MeshFunction(this);
    }

    else
    {
      v7 = AirReflection::Node::node_as_ObjectFunction(this);
    }

    v22 = (v7 - *v7);
    if (*v22 >= 5u)
    {
      v9 = v22[2];
      if (!v9)
      {
LABEL_36:
        *(a1 + 16) = v9;
        return;
      }

LABEL_34:
      v9 = *(v7 + v9);
      goto LABEL_36;
    }

LABEL_35:
    v9 = 0;
    goto LABEL_36;
  }

  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v19 = AirReflection::Node::node_as_VisibleFunction(this);
      v20 = (v19 - *v19);
      if (*v20 < 5u)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20[2];
        if (v21)
        {
          v21 = (v21 + v19 + *(v21 + v19));
        }
      }

      v23 = (v21 - *v21);
      if (*v23 >= 7u && (v24 = v23[3]) != 0)
      {
        v25 = *(v21 + v24);
      }

      else
      {
        v25 = 0;
      }

      *(a1 + 16) = v25;
      v26 = AirReflection::Node::node_as_VisibleFunction(this);
      v27 = (v26 - *v26);
      if (*v27 >= 7u)
      {
        v28 = v27[3];
        if (v28)
        {
          v28 = *(v26 + v28);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v10 = AirReflection::Node::node_as_IntersectionFunction(this);
      v11 = (v10 - *v10);
      if (*v11 < 5u)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11[2];
        if (v12)
        {
          v12 = (v12 + v10 + *(v12 + v10));
        }
      }

      v29 = (v12 - *v12);
      if (*v29 >= 5u && (v30 = v29[2]) != 0)
      {
        v31 = (v12 + v30 + *(v12 + v30));
      }

      else
      {
        v31 = 0;
      }

      v32 = (v31 - *v31);
      if (*v32 >= 7u && (v33 = v32[3]) != 0)
      {
        v34 = *(v31 + v33);
      }

      else
      {
        v34 = 0;
      }

      *(a1 + 16) = v34;
      v35 = AirReflection::Node::node_as_IntersectionFunction(this);
      v36 = (v35 - *v35);
      if (*v36 < 5u)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36[2];
        if (v37)
        {
          v37 = (v37 + v35 + *(v37 + v35));
        }
      }

      v38 = (v37 - *v37);
      if (*v38 >= 7u)
      {
        v39 = v38[3];
        if (v39)
        {
          v28 = *(v37 + v39);
LABEL_66:
          *(a1 + 24) = v28;
          return;
        }
      }
    }

    v28 = 0;
    goto LABEL_66;
  }

  if (v6 == 1)
  {
    v16 = AirReflection::Node::node_as_FragmentFunction(this);
    v17 = (v16 - *v16);
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17[2];
      if (v18)
      {
        v18 = *(v16 + v18);
      }
    }

    *(a1 + 8) = v18;
  }

  else if (v6 == 3)
  {
    v7 = AirReflection::Node::node_as_VertexFunction(this);
    v8 = (v7 - *v7);
    if (*v8 >= 7u)
    {
      v9 = v8[3];
      if (!v9)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    goto LABEL_35;
  }
}

void *std::__tree<objc_object  {objcproto24MTLFunctionStitchingNode}*>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode} const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::pair<objc_object  {objcproto24MTLFunctionStitchingNode} const,unsigned int>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_2 &,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,long,std::pair<objc_object  {objcproto24MTLFunctionStitchingNode}*,long>>(int8x16_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v10 = &a1->i64[1];
    v9 = a1->i64[1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = *v6;
      *v6 = vextq_s8(*v6, *v6, 8uLL);
      v6->i64[1] = *a2;
      *a2 = v19.i64[0];
      return a2;
    }

    v11 = v6->i64[1];
    v6->i64[1] = *a2;
    *a2 = v11;
    *v6 = vextq_s8(*v6, *v6, 8uLL);
  }

  else
  {
    if (a3 == 2)
    {
      v8 = a1->i64[0];
      a1->i64[0] = *a2;
      *a2 = v8;
      return a2;
    }

    v12 = a4;
    if (a5 >= a3)
    {
      v10 = &a1->i64[1];
      *a4 = a1->i64[0];
      v20 = a4 + 1;
      if (&a1->u64[1] == a2)
      {
        a1->i64[0] = a1->i64[1];
      }

      else
      {
        do
        {
          v21 = *v10;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v23 = *v10;
          if (isKindOfClass)
          {
            *v20++ = v23;
          }

          else
          {
            v6->i64[0] = v23;
            v6 = (v6 + 8);
          }

          ++v10;
        }

        while (v10 != a2);
        v6->i64[0] = *v10;
        v10 = &v6->i64[1];
        if (v20 <= v12)
        {
          return v10;
        }
      }

      v26 = v10;
      do
      {
        v27 = *v12++;
        *v26++ = v27;
      }

      while (v12 < v20);
      return v10;
    }

    v13 = a3 / 2;
    v36 = &a1->i8[8 * (a3 / 2)];
    v14 = v36 - 8;
    v15 = *(v36 - 1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 8 - 8 * v13;
      v17 = a3 / 2;
      while (v16)
      {
        --v17;
        v18 = *(v14 - 1);
        v14 -= 8;
        objc_opt_class();
        v16 += 8;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v25 = v6;
      v24 = a5;
    }

    else
    {
      v17 = a3 / 2;
LABEL_22:
      v24 = a5;
      v25 = std::__stable_partition_impl<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_2 &,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,long,std::pair<objc_object  {objcproto24MTLFunctionStitchingNode}*,long>>(v6, v14, v17, v12, a5);
    }

    v28 = a3 - v13;
    v29 = v6->i64[v13];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v36;
LABEL_33:
      v31 = std::__stable_partition_impl<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_2 &,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,long,std::pair<objc_object  {objcproto24MTLFunctionStitchingNode}*,long>>(v30, a2, v28, v12, v24);
    }

    else
    {
      v31 = (a2 + 1);
      v30 = v36;
      v32 = (v36 + 8);
      while (v32 != a2)
      {
        --v28;
        v33 = *v32++;
        objc_opt_class();
        v30 += 8;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_33;
        }
      }
    }

    return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,objc_object  {objcproto24MTLFunctionStitchingNode}**>(v25, v36, v31);
  }

  return v10;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,objc_object  {objcproto24MTLFunctionStitchingNode}**>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,false>(uint64_t result, void **a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v7 = a2;
    v8 = a2 - 1;
    v9 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = v9;
          v10 = v7 - v9;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(v9, v9 + 1, v8);
              case 4:
                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(v9, v9 + 1, v9 + 2, v8);
              case 5:
                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(v9, v9 + 1, v9 + 2, v9 + 3, v8);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            v7 = a2;
            if (v10 == 2)
            {
              v40 = *v9;
              NodeKey::NodeKey(v93, *(a2 - 1));
              NodeKey::NodeKey(v92, v40);
              result = NodeKey::operator<(v93, v92);
              if (result)
              {
                v41 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v41;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v42 = v9 + 1;
            v43 = v9 == v7 || v42 == v7;
            v44 = v43;
            if (a4)
            {
              if ((v44 & 1) == 0)
              {
                v45 = 0;
                v46 = v9;
                do
                {
                  v48 = *v46;
                  v47 = v46[1];
                  v46 = v42;
                  NodeKey::NodeKey(v93, v47);
                  NodeKey::NodeKey(v92, v48);
                  result = NodeKey::operator<(v93, v92);
                  if (result)
                  {
                    v49 = *v46;
                    v50 = v45;
                    while (1)
                    {
                      *(v9 + v50 + 8) = *(v9 + v50);
                      if (!v50)
                      {
                        break;
                      }

                      v51 = *(v9 + v50 - 8);
                      NodeKey::NodeKey(v93, v49);
                      NodeKey::NodeKey(v92, v51);
                      result = NodeKey::operator<(v93, v92);
                      v50 -= 8;
                      if ((result & 1) == 0)
                      {
                        v52 = (v9 + v50 + 8);
                        goto LABEL_80;
                      }
                    }

                    v52 = v9;
LABEL_80:
                    *v52 = v49;
                  }

                  v42 = v46 + 1;
                  v45 += 8;
                }

                while (v46 + 1 != a2);
              }
            }

            else if ((v44 & 1) == 0)
            {
              do
              {
                v85 = *v6;
                v84 = v6[1];
                v6 = v42;
                NodeKey::NodeKey(v93, v84);
                NodeKey::NodeKey(v92, v85);
                result = NodeKey::operator<(v93, v92);
                if (result)
                {
                  v86 = *v6;
                  v87 = v6;
                  do
                  {
                    v88 = v87;
                    v89 = *--v87;
                    *v88 = v89;
                    v90 = *(v88 - 2);
                    NodeKey::NodeKey(v93, v86);
                    NodeKey::NodeKey(v92, v90);
                    result = NodeKey::operator<(v93, v92);
                  }

                  while ((result & 1) != 0);
                  *v87 = v86;
                }

                v42 = v6 + 1;
              }

              while (v6 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != v7)
            {
              v53 = v11 >> 1;
              v54 = v11 >> 1;
              do
              {
                v55 = v54;
                if (v53 >= v54)
                {
                  v56 = (2 * v54) | 1;
                  v57 = &v6[v56];
                  if (2 * v54 + 2 < v10)
                  {
                    v58 = v57[1];
                    NodeKey::NodeKey(v93, *v57);
                    NodeKey::NodeKey(v92, v58);
                    if (NodeKey::operator<(v93, v92))
                    {
                      ++v57;
                      v56 = 2 * v55 + 2;
                    }
                  }

                  v59 = &v6[v55];
                  v60 = *v59;
                  NodeKey::NodeKey(v93, *v57);
                  NodeKey::NodeKey(v92, v60);
                  result = NodeKey::operator<(v93, v92);
                  if ((result & 1) == 0)
                  {
                    v61 = *v59;
                    do
                    {
                      v62 = v57;
                      *v59 = *v57;
                      if (v53 < v56)
                      {
                        break;
                      }

                      v63 = (2 * v56) | 1;
                      v57 = &v6[v63];
                      v64 = 2 * v56 + 2;
                      if (v64 < v10)
                      {
                        v65 = v57[1];
                        NodeKey::NodeKey(v93, *v57);
                        NodeKey::NodeKey(v92, v65);
                        if (NodeKey::operator<(v93, v92))
                        {
                          ++v57;
                          v63 = v64;
                        }
                      }

                      NodeKey::NodeKey(v93, *v57);
                      NodeKey::NodeKey(v92, v61);
                      result = NodeKey::operator<(v93, v92);
                      v59 = v62;
                      v56 = v63;
                    }

                    while (!result);
                    *v62 = v61;
                  }
                }

                v54 = v55 - 1;
              }

              while (v55);
              do
              {
                v66 = 0;
                v67 = *v6;
                v68 = v6;
                do
                {
                  v69 = &v68[v66];
                  v70 = v69 + 1;
                  v71 = (2 * v66) | 1;
                  v72 = 2 * v66 + 2;
                  if (v72 >= v10)
                  {
                    v66 = (2 * v66) | 1;
                  }

                  else
                  {
                    v74 = v69[2];
                    v73 = v69 + 2;
                    NodeKey::NodeKey(v93, *(v73 - 1));
                    NodeKey::NodeKey(v92, v74);
                    result = NodeKey::operator<(v93, v92);
                    if (result)
                    {
                      v70 = v73;
                      v66 = v72;
                    }

                    else
                    {
                      v66 = v71;
                    }
                  }

                  *v68 = *v70;
                  v68 = v70;
                }

                while (v66 <= ((v10 - 2) >> 1));
                v75 = a2 - 1;
                v43 = v70 == --a2;
                if (v43)
                {
                  *v70 = v67;
                }

                else
                {
                  *v70 = *v75;
                  *v75 = v67;
                  v76 = (v70 - v6 + 8) >> 3;
                  v77 = v76 < 2;
                  v78 = v76 - 2;
                  if (!v77)
                  {
                    v79 = v78 >> 1;
                    v80 = &v6[v78 >> 1];
                    v81 = *v70;
                    NodeKey::NodeKey(v93, *v80);
                    NodeKey::NodeKey(v92, v81);
                    result = NodeKey::operator<(v93, v92);
                    if (result)
                    {
                      v82 = *v70;
                      do
                      {
                        v83 = v80;
                        *v70 = *v80;
                        if (!v79)
                        {
                          break;
                        }

                        v79 = (v79 - 1) >> 1;
                        v80 = &v6[v79];
                        NodeKey::NodeKey(v93, *v80);
                        NodeKey::NodeKey(v92, v82);
                        result = NodeKey::operator<(v93, v92);
                        v70 = v83;
                      }

                      while ((result & 1) != 0);
                      *v83 = v82;
                    }
                  }
                }

                v77 = v10-- <= 2;
              }

              while (!v77);
            }

            return result;
          }

          v12 = v10 >> 1;
          v13 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(&v6[v10 >> 1], v6, v8);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(v6, &v6[v10 >> 1], v8);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(v6 + 1, v13 - 1, a2 - 2);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(v6 + 2, &v6[v12 + 1], a2 - 3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(v13 - 1, &v6[v10 >> 1], &v6[v12 + 1]);
            v14 = *v6;
            *v6 = *v13;
            *v13 = v14;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = *v6;
          NodeKey::NodeKey(v93, *(v6 - 1));
          NodeKey::NodeKey(v92, v15);
          if (NodeKey::operator<(v93, v92))
          {
            break;
          }

          v29 = *v6;
          v30 = *v8;
          NodeKey::NodeKey(v93, *v6);
          NodeKey::NodeKey(v92, v30);
          result = NodeKey::operator<(v93, v92);
          if (result)
          {
            v9 = v6;
            do
            {
              v31 = v9[1];
              ++v9;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v31);
              result = NodeKey::operator<(v93, v92);
            }

            while ((result & 1) == 0);
          }

          else
          {
            v32 = v6 + 1;
            do
            {
              v9 = v32;
              if (v32 >= v7)
              {
                break;
              }

              ++v32;
              v33 = *v9;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v33);
              result = NodeKey::operator<(v93, v92);
            }

            while (!result);
          }

          v34 = v7;
          if (v9 < v7)
          {
            v34 = v7;
            do
            {
              v35 = *--v34;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v35);
              result = NodeKey::operator<(v93, v92);
            }

            while ((result & 1) != 0);
          }

          while (v9 < v34)
          {
            v36 = *v9;
            *v9 = *v34;
            *v34 = v36;
            do
            {
              v37 = v9[1];
              ++v9;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v37);
            }

            while (!NodeKey::operator<(v93, v92));
            do
            {
              v38 = *--v34;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v38);
              result = NodeKey::operator<(v93, v92);
            }

            while ((result & 1) != 0);
          }

          v39 = v9 - 1;
          if (v9 - 1 != v6)
          {
            *v6 = *v39;
          }

          a4 = 0;
          *v39 = v29;
        }

        v16 = 0;
        v17 = *v6;
        do
        {
          NodeKey::NodeKey(v93, v6[v16 + 1]);
          NodeKey::NodeKey(v92, v17);
          ++v16;
        }

        while ((NodeKey::operator<(v93, v92) & 1) != 0);
        v18 = &v6[v16];
        if (v16 == 1)
        {
          v7 = a2;
          do
          {
            if (v18 >= v7)
            {
              break;
            }

            v20 = *--v7;
            NodeKey::NodeKey(v93, v20);
            NodeKey::NodeKey(v92, v17);
          }

          while ((NodeKey::operator<(v93, v92) & 1) == 0);
        }

        else
        {
          do
          {
            v19 = *--v7;
            NodeKey::NodeKey(v93, v19);
            NodeKey::NodeKey(v92, v17);
          }

          while (!NodeKey::operator<(v93, v92));
        }

        if (v18 >= v7)
        {
          v26 = v18 - 1;
        }

        else
        {
          v21 = &v6[v16];
          v22 = v7;
          do
          {
            v23 = *v21;
            *v21 = *v22;
            *v22 = v23;
            do
            {
              v24 = v21[1];
              ++v21;
              NodeKey::NodeKey(v93, v24);
              NodeKey::NodeKey(v92, v17);
            }

            while ((NodeKey::operator<(v93, v92) & 1) != 0);
            do
            {
              v25 = *--v22;
              NodeKey::NodeKey(v93, v25);
              NodeKey::NodeKey(v92, v17);
            }

            while (!NodeKey::operator<(v93, v92));
          }

          while (v21 < v22);
          v26 = v21 - 1;
        }

        if (v26 != v6)
        {
          *v6 = *v26;
        }

        *v26 = v17;
        v27 = v18 >= v7;
        v7 = a2;
        if (v27)
        {
          break;
        }

LABEL_39:
        result = std::__introsort<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,false>(v6, v26, a3, a4 & 1);
        a4 = 0;
        v9 = v26 + 1;
      }

      v28 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**>(v6, v26);
      v9 = v26 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**>(v26 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_39;
      }
    }

    a2 = v26;
    if (!v28)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(void **a1, void **a2, void **a3)
{
  v6 = *a1;
  NodeKey::NodeKey(v17, *a2);
  NodeKey::NodeKey(v16, v6);
  v7 = NodeKey::operator<(v17, v16);
  v8 = *a3;
  v9 = *a2;
  if (v7)
  {
    NodeKey::NodeKey(v17, v8);
    NodeKey::NodeKey(v16, v9);
    result = NodeKey::operator<(v17, v16);
    v11 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v11;
    }

    else
    {
      *a1 = *a2;
      *a2 = v11;
      NodeKey::NodeKey(v17, *a3);
      NodeKey::NodeKey(v16, v11);
      result = NodeKey::operator<(v17, v16);
      if (result)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else
  {
    NodeKey::NodeKey(v17, v8);
    NodeKey::NodeKey(v16, v9);
    result = NodeKey::operator<(v17, v16);
    if (result)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = *a1;
      NodeKey::NodeKey(v17, *a2);
      NodeKey::NodeKey(v16, v13);
      result = NodeKey::operator<(v17, v16);
      if (result)
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(void **a1, void **a2, void **a3, void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(a1, a2, a3);
  v8 = *a3;
  NodeKey::NodeKey(v16, *a4);
  NodeKey::NodeKey(v15, v8);
  result = NodeKey::operator<(v16, v15);
  if (result)
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = *a2;
    NodeKey::NodeKey(v16, *a3);
    NodeKey::NodeKey(v15, v11);
    result = NodeKey::operator<(v16, v15);
    if (result)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = *a1;
      NodeKey::NodeKey(v16, *a2);
      NodeKey::NodeKey(v15, v13);
      result = NodeKey::operator<(v16, v15);
      if (result)
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(void **a1, void **a2, void **a3, void **a4, void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(a1, a2, a3, a4);
  v10 = *a4;
  NodeKey::NodeKey(v20, *a5);
  NodeKey::NodeKey(v19, v10);
  result = NodeKey::operator<(v20, v19);
  if (result)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    v13 = *a3;
    NodeKey::NodeKey(v20, *a4);
    NodeKey::NodeKey(v19, v13);
    result = NodeKey::operator<(v20, v19);
    if (result)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      NodeKey::NodeKey(v20, *a3);
      NodeKey::NodeKey(v19, v15);
      result = NodeKey::operator<(v20, v19);
      if (result)
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        v17 = *a1;
        NodeKey::NodeKey(v20, *a2);
        NodeKey::NodeKey(v19, v17);
        result = NodeKey::operator<(v20, v19);
        if (result)
        {
          v18 = *a1;
          *a1 = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**>(void **a1, void **a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        NodeKey::NodeKey(v18, *(a2 - 1));
        NodeKey::NodeKey(v17, v5);
        if (NodeKey::operator<(v18, v17))
        {
          v6 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v7 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,reorderStitchingGraphNodes(MTLFunctionStitchingGraph *)::$_3 &,objc_object  {objcproto24MTLFunctionStitchingNode}**,0>(a1, a1 + 1, a1 + 2);
  v8 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *v7;
    NodeKey::NodeKey(v18, *v8);
    NodeKey::NodeKey(v17, v11);
    if (NodeKey::operator<(v18, v17))
    {
      v12 = *v8;
      v13 = v9;
      while (1)
      {
        *(a1 + v13 + 24) = *(a1 + v13 + 16);
        if (v13 == -16)
        {
          break;
        }

        v14 = *(a1 + v13 + 8);
        NodeKey::NodeKey(v18, v12);
        NodeKey::NodeKey(v17, v14);
        v13 -= 8;
        if ((NodeKey::operator<(v18, v17) & 1) == 0)
        {
          v15 = (a1 + v13 + 24);
          goto LABEL_19;
        }
      }

      v15 = a1;
LABEL_19:
      *v15 = v12;
      if (++v10 == 8)
      {
        return v8 + 1 == a2;
      }
    }

    v7 = v8;
    v9 += 8;
    if (++v8 == a2)
    {
      return 1;
    }
  }
}

uint64_t NodeKey::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 < *a2)
  {
    return 1;
  }

  if (v2 > *a2)
  {
    return 0;
  }

  if (v2 > 0xA)
  {
    goto LABEL_15;
  }

  if (((1 << v2) & 0x1C8) != 0)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    return v4 < v5;
  }

  if (((1 << v2) & 0x30) != 0)
  {
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    if (v6 < v7)
    {
      return 1;
    }

    if (v7 < v6)
    {
      return 0;
    }

    v4 = *(a1 + 24);
    v5 = *(a2 + 24);
    return v4 < v5;
  }

  if (v2 != 10)
  {
LABEL_15:
    if (v2 != 1)
    {
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    return v4 < v5;
  }

  return *(a1 + 32) < *(a2 + 32);
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode} const&>,std::piecewise_construct_t const&<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_0 &,std::__wrap_iter<Air::FunctionStitching::Node const**>,long,std::pair<Air::FunctionStitching::Node const**,long>>(AirReflection::Node **a1, AirReflection::Node **a2, uint64_t a3, AirReflection::Node **a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v9 = a1 + 1;
    v10 = a1[1];
    if (AirReflection::Node::node_as_KernelFunction(v10) || Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v10))
    {
      v11 = v6->i64[1];
      v6->i64[1] = *a2;
      *a2 = v11;
      *v6 = vextq_s8(*v6, *v6, 8uLL);
      return v9;
    }

    v24 = *v6;
    *v6 = vextq_s8(*v6, *v6, 8uLL);
    v6->i64[1] = *a2;
    *a2 = v24.i64[0];
    return a2;
  }

  if (a3 == 2)
  {
    v8 = *a1;
    *a1 = *a2;
    *a2 = v8;
    return a2;
  }

  v13 = a4;
  if (a5 >= a3)
  {
    v9 = a1 + 1;
    *a4 = *a1;
    v19 = a4 + 1;
    if (a1 + 1 == a2)
    {
      *a1 = a1[1];
    }

    else
    {
      do
      {
        v20 = *v9;
        if (AirReflection::Node::node_as_KernelFunction(*v9) || Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v20))
        {
          *v19++ = *v9;
        }

        else
        {
          v6->i64[0] = *v9;
          v6 = (v6 + 8);
        }

        ++v9;
      }

      while (v9 != a2);
      v6->i64[0] = *v9;
      v9 = &v6->i64[1];
      if (v19 <= v13)
      {
        return v9;
      }
    }

    v22 = v9;
    do
    {
      v23 = *v13++;
      *v22++ = v23;
    }

    while (v13 < v19);
    return v9;
  }

  v14 = a3 / 2;
  v32 = &a1[a3 / 2];
  v15 = 8 - 8 * (a3 / 2);
  v16 = a1 - 1;
  for (i = a3 / 2; ; --i)
  {
    v18 = v16[i];
    if (!AirReflection::Node::node_as_KernelFunction(v18) && !Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v18))
    {
      break;
    }

    if (!v15)
    {
      v21 = v6;
      goto LABEL_30;
    }

    v15 += 8;
  }

  v21 = std::__stable_partition_impl<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_0 &,std::__wrap_iter<Air::FunctionStitching::Node const**>,long,std::pair<Air::FunctionStitching::Node const**,long>>(v6, v6 - v15, i, v13, a5);
LABEL_30:
  v25 = a3 - v14;
  v26 = v6->i64[v14];
  if (AirReflection::Node::node_as_KernelFunction(v26))
  {
    v27 = v32;
  }

  else
  {
    v28 = (a2 + 1);
    v29 = (v32 + 8);
    do
    {
      if (Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v26))
      {
        break;
      }

      if (v29 == a2)
      {
        return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,objc_object  {objcproto24MTLFunctionStitchingNode}**>(v21, v32, v28);
      }

      --v25;
      v30 = *v29++;
      v26 = v30;
    }

    while (!AirReflection::Node::node_as_KernelFunction(v30));
    v27 = (v29 - 1);
  }

  v28 = std::__stable_partition_impl<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_0 &,std::__wrap_iter<Air::FunctionStitching::Node const**>,long,std::pair<Air::FunctionStitching::Node const**,long>>(v27, a2, v25, v13, a5);
  return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<objc_object  {objcproto24MTLFunctionStitchingNode}**>,objc_object  {objcproto24MTLFunctionStitchingNode}**>(v21, v32, v28);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,false>(uint64_t result, NodeKey **a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v7 = a2;
    v8 = a2 - 1;
    v9 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = v9;
          v10 = v7 - v9;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(v9, v9 + 1, v8);
              case 4:
                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(v9, v9 + 1, v9 + 2, v8);
              case 5:
                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(v9, v9 + 1, v9 + 2, v9 + 3, v8);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            v7 = a2;
            if (v10 == 2)
            {
              v40 = *v9;
              NodeKey::NodeKey(v93, *(a2 - 1));
              NodeKey::NodeKey(v92, v40);
              result = NodeKey::operator<(v93, v92);
              if (result)
              {
                v41 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v41;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v42 = v9 + 1;
            v43 = v9 == v7 || v42 == v7;
            v44 = v43;
            if (a4)
            {
              if ((v44 & 1) == 0)
              {
                v45 = 0;
                v46 = v9;
                do
                {
                  v48 = *v46;
                  v47 = v46[1];
                  v46 = v42;
                  NodeKey::NodeKey(v93, v47);
                  NodeKey::NodeKey(v92, v48);
                  result = NodeKey::operator<(v93, v92);
                  if (result)
                  {
                    v49 = *v46;
                    v50 = v45;
                    while (1)
                    {
                      *(v9 + v50 + 8) = *(v9 + v50);
                      if (!v50)
                      {
                        break;
                      }

                      v51 = *(v9 + v50 - 8);
                      NodeKey::NodeKey(v93, v49);
                      NodeKey::NodeKey(v92, v51);
                      result = NodeKey::operator<(v93, v92);
                      v50 -= 8;
                      if ((result & 1) == 0)
                      {
                        v52 = (v9 + v50 + 8);
                        goto LABEL_80;
                      }
                    }

                    v52 = v9;
LABEL_80:
                    *v52 = v49;
                  }

                  v42 = v46 + 1;
                  v45 += 8;
                }

                while (v46 + 1 != a2);
              }
            }

            else if ((v44 & 1) == 0)
            {
              do
              {
                v85 = *v6;
                v84 = v6[1];
                v6 = v42;
                NodeKey::NodeKey(v93, v84);
                NodeKey::NodeKey(v92, v85);
                result = NodeKey::operator<(v93, v92);
                if (result)
                {
                  v86 = *v6;
                  v87 = v6;
                  do
                  {
                    v88 = v87;
                    v89 = *--v87;
                    *v88 = v89;
                    v90 = *(v88 - 2);
                    NodeKey::NodeKey(v93, v86);
                    NodeKey::NodeKey(v92, v90);
                    result = NodeKey::operator<(v93, v92);
                  }

                  while ((result & 1) != 0);
                  *v87 = v86;
                }

                v42 = v6 + 1;
              }

              while (v6 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != v7)
            {
              v53 = v11 >> 1;
              v54 = v11 >> 1;
              do
              {
                v55 = v54;
                if (v53 >= v54)
                {
                  v56 = (2 * v54) | 1;
                  v57 = &v6[v56];
                  if (2 * v54 + 2 < v10)
                  {
                    v58 = v57[1];
                    NodeKey::NodeKey(v93, *v57);
                    NodeKey::NodeKey(v92, v58);
                    if (NodeKey::operator<(v93, v92))
                    {
                      ++v57;
                      v56 = 2 * v55 + 2;
                    }
                  }

                  v59 = &v6[v55];
                  v60 = *v59;
                  NodeKey::NodeKey(v93, *v57);
                  NodeKey::NodeKey(v92, v60);
                  result = NodeKey::operator<(v93, v92);
                  if ((result & 1) == 0)
                  {
                    v61 = *v59;
                    do
                    {
                      v62 = v57;
                      *v59 = *v57;
                      if (v53 < v56)
                      {
                        break;
                      }

                      v63 = (2 * v56) | 1;
                      v57 = &v6[v63];
                      v64 = 2 * v56 + 2;
                      if (v64 < v10)
                      {
                        v65 = v57[1];
                        NodeKey::NodeKey(v93, *v57);
                        NodeKey::NodeKey(v92, v65);
                        if (NodeKey::operator<(v93, v92))
                        {
                          ++v57;
                          v63 = v64;
                        }
                      }

                      NodeKey::NodeKey(v93, *v57);
                      NodeKey::NodeKey(v92, v61);
                      result = NodeKey::operator<(v93, v92);
                      v59 = v62;
                      v56 = v63;
                    }

                    while (!result);
                    *v62 = v61;
                  }
                }

                v54 = v55 - 1;
              }

              while (v55);
              do
              {
                v66 = 0;
                v67 = *v6;
                v68 = v6;
                do
                {
                  v69 = &v68[v66];
                  v70 = v69 + 1;
                  v71 = (2 * v66) | 1;
                  v72 = 2 * v66 + 2;
                  if (v72 >= v10)
                  {
                    v66 = (2 * v66) | 1;
                  }

                  else
                  {
                    v74 = v69[2];
                    v73 = v69 + 2;
                    NodeKey::NodeKey(v93, *(v73 - 1));
                    NodeKey::NodeKey(v92, v74);
                    result = NodeKey::operator<(v93, v92);
                    if (result)
                    {
                      v70 = v73;
                      v66 = v72;
                    }

                    else
                    {
                      v66 = v71;
                    }
                  }

                  *v68 = *v70;
                  v68 = v70;
                }

                while (v66 <= ((v10 - 2) >> 1));
                v75 = a2 - 1;
                v43 = v70 == --a2;
                if (v43)
                {
                  *v70 = v67;
                }

                else
                {
                  *v70 = *v75;
                  *v75 = v67;
                  v76 = (v70 - v6 + 8) >> 3;
                  v77 = v76 < 2;
                  v78 = v76 - 2;
                  if (!v77)
                  {
                    v79 = v78 >> 1;
                    v80 = &v6[v78 >> 1];
                    v81 = *v70;
                    NodeKey::NodeKey(v93, *v80);
                    NodeKey::NodeKey(v92, v81);
                    result = NodeKey::operator<(v93, v92);
                    if (result)
                    {
                      v82 = *v70;
                      do
                      {
                        v83 = v80;
                        *v70 = *v80;
                        if (!v79)
                        {
                          break;
                        }

                        v79 = (v79 - 1) >> 1;
                        v80 = &v6[v79];
                        NodeKey::NodeKey(v93, *v80);
                        NodeKey::NodeKey(v92, v82);
                        result = NodeKey::operator<(v93, v92);
                        v70 = v83;
                      }

                      while ((result & 1) != 0);
                      *v83 = v82;
                    }
                  }
                }

                v77 = v10-- <= 2;
              }

              while (!v77);
            }

            return result;
          }

          v12 = v10 >> 1;
          v13 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(&v6[v10 >> 1], v6, v8);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(v6, &v6[v10 >> 1], v8);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(v6 + 1, v13 - 1, a2 - 2);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(v6 + 2, &v6[v12 + 1], a2 - 3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(v13 - 1, &v6[v10 >> 1], &v6[v12 + 1]);
            v14 = *v6;
            *v6 = *v13;
            *v13 = v14;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = *v6;
          NodeKey::NodeKey(v93, *(v6 - 1));
          NodeKey::NodeKey(v92, v15);
          if (NodeKey::operator<(v93, v92))
          {
            break;
          }

          v29 = *v6;
          v30 = *v8;
          NodeKey::NodeKey(v93, *v6);
          NodeKey::NodeKey(v92, v30);
          result = NodeKey::operator<(v93, v92);
          if (result)
          {
            v9 = v6;
            do
            {
              v31 = v9[1];
              ++v9;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v31);
              result = NodeKey::operator<(v93, v92);
            }

            while ((result & 1) == 0);
          }

          else
          {
            v32 = v6 + 1;
            do
            {
              v9 = v32;
              if (v32 >= v7)
              {
                break;
              }

              ++v32;
              v33 = *v9;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v33);
              result = NodeKey::operator<(v93, v92);
            }

            while (!result);
          }

          v34 = v7;
          if (v9 < v7)
          {
            v34 = v7;
            do
            {
              v35 = *--v34;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v35);
              result = NodeKey::operator<(v93, v92);
            }

            while ((result & 1) != 0);
          }

          while (v9 < v34)
          {
            v36 = *v9;
            *v9 = *v34;
            *v34 = v36;
            do
            {
              v37 = v9[1];
              ++v9;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v37);
            }

            while (!NodeKey::operator<(v93, v92));
            do
            {
              v38 = *--v34;
              NodeKey::NodeKey(v93, v29);
              NodeKey::NodeKey(v92, v38);
              result = NodeKey::operator<(v93, v92);
            }

            while ((result & 1) != 0);
          }

          v39 = v9 - 1;
          if (v9 - 1 != v6)
          {
            *v6 = *v39;
          }

          a4 = 0;
          *v39 = v29;
        }

        v16 = 0;
        v17 = *v6;
        do
        {
          NodeKey::NodeKey(v93, v6[v16 + 1]);
          NodeKey::NodeKey(v92, v17);
          ++v16;
        }

        while ((NodeKey::operator<(v93, v92) & 1) != 0);
        v18 = &v6[v16];
        if (v16 == 1)
        {
          v7 = a2;
          do
          {
            if (v18 >= v7)
            {
              break;
            }

            v20 = *--v7;
            NodeKey::NodeKey(v93, v20);
            NodeKey::NodeKey(v92, v17);
          }

          while ((NodeKey::operator<(v93, v92) & 1) == 0);
        }

        else
        {
          do
          {
            v19 = *--v7;
            NodeKey::NodeKey(v93, v19);
            NodeKey::NodeKey(v92, v17);
          }

          while (!NodeKey::operator<(v93, v92));
        }

        if (v18 >= v7)
        {
          v26 = v18 - 1;
        }

        else
        {
          v21 = &v6[v16];
          v22 = v7;
          do
          {
            v23 = *v21;
            *v21 = *v22;
            *v22 = v23;
            do
            {
              v24 = v21[1];
              ++v21;
              NodeKey::NodeKey(v93, v24);
              NodeKey::NodeKey(v92, v17);
            }

            while ((NodeKey::operator<(v93, v92) & 1) != 0);
            do
            {
              v25 = *--v22;
              NodeKey::NodeKey(v93, v25);
              NodeKey::NodeKey(v92, v17);
            }

            while (!NodeKey::operator<(v93, v92));
          }

          while (v21 < v22);
          v26 = v21 - 1;
        }

        if (v26 != v6)
        {
          *v6 = *v26;
        }

        *v26 = v17;
        v27 = v18 >= v7;
        v7 = a2;
        if (v27)
        {
          break;
        }

LABEL_39:
        result = std::__introsort<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,false>(v6, v26, a3, a4 & 1);
        a4 = 0;
        v9 = v26 + 1;
      }

      v28 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**>(v6, v26);
      v9 = v26 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**>(v26 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_39;
      }
    }

    a2 = v26;
    if (!v28)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(NodeKey **a1, NodeKey **a2, NodeKey **a3)
{
  v6 = *a1;
  NodeKey::NodeKey(v17, *a2);
  NodeKey::NodeKey(v16, v6);
  v7 = NodeKey::operator<(v17, v16);
  v8 = *a3;
  v9 = *a2;
  if (v7)
  {
    NodeKey::NodeKey(v17, v8);
    NodeKey::NodeKey(v16, v9);
    result = NodeKey::operator<(v17, v16);
    v11 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v11;
    }

    else
    {
      *a1 = *a2;
      *a2 = v11;
      NodeKey::NodeKey(v17, *a3);
      NodeKey::NodeKey(v16, v11);
      result = NodeKey::operator<(v17, v16);
      if (result)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else
  {
    NodeKey::NodeKey(v17, v8);
    NodeKey::NodeKey(v16, v9);
    result = NodeKey::operator<(v17, v16);
    if (result)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = *a1;
      NodeKey::NodeKey(v17, *a2);
      NodeKey::NodeKey(v16, v13);
      result = NodeKey::operator<(v17, v16);
      if (result)
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(NodeKey **a1, NodeKey **a2, NodeKey **a3, NodeKey **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(a1, a2, a3);
  v8 = *a3;
  NodeKey::NodeKey(v16, *a4);
  NodeKey::NodeKey(v15, v8);
  result = NodeKey::operator<(v16, v15);
  if (result)
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = *a2;
    NodeKey::NodeKey(v16, *a3);
    NodeKey::NodeKey(v15, v11);
    result = NodeKey::operator<(v16, v15);
    if (result)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = *a1;
      NodeKey::NodeKey(v16, *a2);
      NodeKey::NodeKey(v15, v13);
      result = NodeKey::operator<(v16, v15);
      if (result)
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(NodeKey **a1, NodeKey **a2, NodeKey **a3, NodeKey **a4, NodeKey **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(a1, a2, a3, a4);
  v10 = *a4;
  NodeKey::NodeKey(v20, *a5);
  NodeKey::NodeKey(v19, v10);
  result = NodeKey::operator<(v20, v19);
  if (result)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    v13 = *a3;
    NodeKey::NodeKey(v20, *a4);
    NodeKey::NodeKey(v19, v13);
    result = NodeKey::operator<(v20, v19);
    if (result)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      NodeKey::NodeKey(v20, *a3);
      NodeKey::NodeKey(v19, v15);
      result = NodeKey::operator<(v20, v19);
      if (result)
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        v17 = *a1;
        NodeKey::NodeKey(v20, *a2);
        NodeKey::NodeKey(v19, v17);
        result = NodeKey::operator<(v20, v19);
        if (result)
        {
          v18 = *a1;
          *a1 = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**>(NodeKey **a1, NodeKey **a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        NodeKey::NodeKey(v18, *(a2 - 1));
        NodeKey::NodeKey(v17, v5);
        if (NodeKey::operator<(v18, v17))
        {
          v6 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v7 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLCalculateStitchingHash(Air::StitchingScript const*,std::vector<MTLUINT256_t>)::$_1 &,Air::FunctionStitching::Node const**,0>(a1, a1 + 1, a1 + 2);
  v8 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *v7;
    NodeKey::NodeKey(v18, *v8);
    NodeKey::NodeKey(v17, v11);
    if (NodeKey::operator<(v18, v17))
    {
      v12 = *v8;
      v13 = v9;
      while (1)
      {
        *(a1 + v13 + 24) = *(a1 + v13 + 16);
        if (v13 == -16)
        {
          break;
        }

        v14 = *(a1 + v13 + 8);
        NodeKey::NodeKey(v18, v12);
        NodeKey::NodeKey(v17, v14);
        v13 -= 8;
        if ((NodeKey::operator<(v18, v17) & 1) == 0)
        {
          v15 = (a1 + v13 + 24);
          goto LABEL_19;
        }
      }

      v15 = a1;
LABEL_19:
      *v15 = v12;
      if (++v10 == 8)
      {
        return v8 + 1 == a2;
      }
    }

    v7 = v8;
    v9 += 8;
    if (++v8 == a2)
    {
      return 1;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const* const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::__unordered_map_hasher<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::hash<Air::FunctionStitching::Node const*>,std::equal_to<Air::FunctionStitching::Node const*>,true>,std::__unordered_map_equal<Air::FunctionStitching::Node const*,std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>,std::equal_to<Air::FunctionStitching::Node const*>,std::hash<Air::FunctionStitching::Node const*>,true>,std::allocator<std::__hash_value_type<Air::FunctionStitching::Node const*,unsigned int>>>::__emplace_unique_key_args<Air::FunctionStitching::Node const*,std::piecewise_construct_t const&,std::tuple<Air::FunctionStitching::Node const*&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__shared_ptr_emplace<std::vector<stitchedAirDescriptor>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::allocator<std::vector<stitchedAirDescriptor>>,0>(void *a1, unint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF4760B8;
  std::vector<stitchedAirDescriptor>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<stitchedAirDescriptor>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4760B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void *std::vector<stitchedAirDescriptor>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<stitchedAirDescriptor>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<stitchedAirDescriptor>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<stitchedAirDescriptor>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<stitchedAirDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<stitchedAirDescriptor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<stitchedAirDescriptor>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<stitchedAirDescriptor>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v5 = *(i - 40);
    v4 = v5;
    if (v5)
    {
      dispatch_release(v4);
    }
  }

  a1[1] = v2;
}

void MTLLegacyMonolithicCompilerConnection::MTLLegacyMonolithicCompilerConnection(MTLLegacyMonolithicCompilerConnection *this, int a2)
{
  MTLLegacyCompilerConnection::MTLLegacyCompilerConnection(this, a2);
  *v2 = &unk_1EF476148;
  v2[4] = 0;
  v2[5] = 0;
}

void MTLLegacyMonolithicCompilerConnection::~MTLLegacyMonolithicCompilerConnection(MTLLegacyMonolithicCompilerConnection *this)
{
  *this = &unk_1EF476148;
  (*(*(this + 4) + 16))(*(this + 5));
  v2 = *(this + 4);
  if (v2)
  {
    CompilerPluginInterface::~CompilerPluginInterface(v2);
    MEMORY[0x1865FF210]();
  }

  MTLLegacyCompilerConnection::~MTLLegacyCompilerConnection(this);
}

{
  MTLLegacyMonolithicCompilerConnection::~MTLLegacyMonolithicCompilerConnection(this);

  JUMPOUT(0x1865FF210);
}

void MTLLegacyMonolithicCompilerConnection::DispatchLogReplayRequest(MTLLegacyCompilerConnection *a1, unsigned __int8 *a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = _MTLIsInternalBuild();
  if (a2 && v10)
  {

    MTLLegacyMonolithicCompilerConnection::BuildRequestInternal(a1, a2, a3, a4, a5, &__block_literal_global_15);
  }
}

void ___ZN37MTLLegacyMonolithicCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_object_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      ___ZN37MTLLegacyMonolithicCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_object_block_invoke_cold_1(a2);
    }
  }
}

void MTLLegacyMonolithicCompilerConnection::BuildRequestInternal(MTLLegacyCompilerConnection *this, unsigned __int8 *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  if (!*(this + 5))
  {
    operator new();
  }

  NextCompileID = MTLLegacyCompilerConnection::getNextCompileID(this);
  __dst = 0;
  v13 = (*(*a2 + 64))(a2, *(this + 7), &__dst);
  if (!v13)
  {
    (*(a6 + 16))(a6, 2, 0, 0, __dst);
    (*(*a2 + 56))(a2);
    free(__dst);
    return;
  }

  buffer_ptr = 0;
  size_ptr = 0;
  v14 = dispatch_data_create_map(v13, &buffer_ptr, &size_ptr);
  if (MTLTraceEnabled())
  {
    v15 = a2[168];
    kdebug_trace();
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = ___ZN37MTLLegacyMonolithicCompilerConnection20BuildRequestInternalEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke;
  v25 = &unk_1E6EEB948;
  v33 = NextCompileID;
  v30 = this;
  v31 = a2;
  v32 = a3;
  v26 = v14;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  if (!a3)
  {
    v17 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v21 = 0;
  v22 = 0;
  v16 = dispatch_data_create_map(a4, &v22, &v21);
  v17 = (*(*(this + 4) + 32))(*(this + 5), a3, v22, v21);
  dispatch_release(v16);
  if (v17 != -1)
  {
LABEL_13:
    v18 = *(this + 5);
    v19 = *(*(this + 4) + 24);
    RequestType = MTLCompilerRequest::getRequestType(a2);
    v19(v18, v17, RequestType, buffer_ptr, size_ptr, v23);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    MTLLegacyMonolithicCompilerConnection::BuildRequestInternal(a3);
  }

  (v24)(v23, 2, 0, 0, 0);
}

void sub_185CC5D14(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN37MTLLegacyMonolithicCompilerConnection20BuildRequestInternalEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  dispatch_release(*(a1 + 32));
  if (MTLTraceEnabled())
  {
    v2 = *(a1 + 88);
    v3 = *(*(a1 + 72) + 168);
    kdebug_trace();
  }

  result = *(a1 + 72);
  if (result)
  {
    v5 = *(*result + 56);

    return v5();
  }

  return result;
}

void MTLLegacyMonolithicCompilerConnection::BuildRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (a6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZN37MTLLegacyMonolithicCompilerConnection12BuildRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke_2;
    v10[3] = &unk_1E6EEB970;
    v10[8] = a2;
    v10[9] = a3;
    v10[4] = a4;
    v10[5] = a7;
    v10[6] = a8;
    v10[7] = a1;
    dispatch_sync(v9, v10);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN37MTLLegacyMonolithicCompilerConnection12BuildRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke;
    block[3] = &unk_1E6EEB970;
    block[8] = a2;
    block[9] = a3;
    block[4] = a4;
    block[5] = a7;
    block[6] = a8;
    block[7] = a1;
    dispatch_async(v9, block);
  }
}

MTLAccelerationStructureCommandProgressBinsInternal *MTLProgressBinsFree(MTLAccelerationStructureCommandProgressBinsInternal *result)
{
  if (result)
  {
    MTLAccelerationStructureCommandProgressBinsInternal::~MTLAccelerationStructureCommandProgressBinsInternal(result);

    JUMPOUT(0x1865FF210);
  }

  return result;
}

uint64_t MTLProgressBinsSynchronizeBuffer(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = [a2 gpuAddress];
  v4 = 73244475 * ((73244475 * (v3 ^ (v3 >> 16))) ^ ((73244475 * (v3 ^ (v3 >> 16))) >> 16));
  v5 = (v4 ^ (v4 >> 16)) % *(a1 + 136);
  if ((v5 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = (v4 ^ (v4 >> 16)) % *(a1 + 136);
  if (std::__hash_table<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>>>::find<unsigned int>((a1 + 152), &v8))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>((a1 + 152), &v7);
  return *(*(a1 + 144) + 4 * v5);
}

uint64_t MTLProgressBinsSelectSubstreamWithDescriptor(uint64_t a1, int a2, MTLAccelerationStructureDescriptor *a3)
{
  PrimitiveCountFromDescriptor = MTLProgressBinsGetPrimitiveCountFromDescriptor(a3);

  return MTLProgressBinsSelectSubstreamWithPrimitiveCount(a1, a2, PrimitiveCountFromDescriptor);
}

uint64_t MTLProgressBinsGetPrimitiveCountFromDescriptor(MTLAccelerationStructureDescriptor *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (![(MTLAccelerationStructureDescriptor *)a1 isInstanceDescriptor])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [(MTLAccelerationStructureDescriptor *)a1 geometryDescriptors];
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v6)
    {
      goto LABEL_33;
    }

    v7 = v6;
    v8 = 0;
    v9 = *v26;
LABEL_8:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      v12 = objc_opt_class();
      if ([v12 isSubclassOfClass:objc_opt_class()])
      {
        v13 = [v11 triangleCount];
      }

      else
      {
        v14 = objc_opt_class();
        if ([v14 isSubclassOfClass:objc_opt_class()])
        {
          v13 = [v11 boundingBoxCount];
        }

        else
        {
          v15 = objc_opt_class();
          if ([v15 isSubclassOfClass:objc_opt_class()])
          {
            v16 = [v11 triangleCount];
            v17 = [v11 vertexBuffers];
LABEL_20:
            v8 += [v17 count] * v16;
            goto LABEL_21;
          }

          v18 = objc_opt_class();
          if ([v18 isSubclassOfClass:objc_opt_class()])
          {
            v16 = [v11 boundingBoxCount];
            v17 = [v11 boundingBoxBuffers];
            goto LABEL_20;
          }

          v19 = objc_opt_class();
          if (![v19 isSubclassOfClass:objc_opt_class()])
          {
            v20 = objc_opt_class();
            if (![v20 isSubclassOfClass:objc_opt_class()])
            {
              goto LABEL_21;
            }

            v16 = [v11 segmentCount];
            v17 = [v11 controlPointBuffers];
            goto LABEL_20;
          }

          v13 = [v11 segmentCount];
        }
      }

      v8 += v13;
LABEL_21:
      if (v7 == ++v10)
      {
        v21 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v7 = v21;
        if (!v21)
        {
LABEL_34:
          v24 = *MEMORY[0x1E69E9840];
          return v8;
        }

        goto LABEL_8;
      }
    }
  }

  v2 = objc_opt_class();
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = *MEMORY[0x1E69E9840];

    return [(MTLAccelerationStructureDescriptor *)a1 instanceCount];
  }

  v22 = objc_opt_class();
  if (![v22 isSubclassOfClass:objc_opt_class()])
  {
LABEL_33:
    v8 = 0;
    goto LABEL_34;
  }

  v23 = *MEMORY[0x1E69E9840];

  return [(MTLAccelerationStructureDescriptor *)a1 maxInstanceCount];
}

uint64_t MTLProgressBinsSelectSubstreamWithPrimitiveCount(uint64_t a1, int a2, unint64_t a3)
{
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  v4 = 12;
  if (a2)
  {
    v4 = 20;
  }

  v5 = *(a1 + v3);
  v6 = *(a1 + v4);
  v7 = *(a1 + 40);
  if (v7 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 24);
    v10 = (a1 + 28);
    for (i = 1; i != v7; ++i)
    {
      v12 = *v10++;
      v13 = v12;
      if (v12 < v9)
      {
        v9 = v13;
        v8 = i;
      }
    }
  }

  *(a1 + 42) = v8;
  *(a1 + 44) = v5 + (v6 * a3);
  return v8;
}

uint64_t MTLProgressBinsSelectSubstreamWithBufferWriteSize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = *(a1 + 24);
    v5 = (a1 + 28);
    for (i = 1; i != v2; ++i)
    {
      v7 = *v5++;
      v8 = v7;
      if (v7 < v4)
      {
        v4 = v8;
        v3 = i;
      }
    }
  }

  v9 = *a1 + (*(a1 + 4) * a2);
  *(a1 + 42) = v3;
  *(a1 + 44) = v9;
  return v3;
}

uint64_t MTLProgressBinsUpdate(uint64_t a1)
{
  v2 = *(a1 + 42);
  *(a1 + 4 * v2 + 24) = *(a1 + 44) + *(a1 + 4 * v2 + 24);
  *(a1 + 44) = 0;
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = *(a1 + 140);
      do
      {
        *(v3 + 8) = v4;
        *(v3 + 9) = v2;
        v3 = *v3;
      }

      while (v3);
    }

    std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__node_handle_merge_multi[abi:ne200100]<std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>((a1 + 96), (a1 + 56));
    ++*(a1 + 140);
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 176))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 140);
  *(a1 + 140) = v5 + 1;
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = *(a1 + 144);
    do
    {
      *(v7 + 4 * *(v6 + 4)) = v5;
      v6 = *v6;
    }

    while (v6);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear((a1 + 152));
  return v5;
}

void MTLAccelerationStructureCommandProgressBinsInternal::MTLAccelerationStructureCommandProgressBinsInternal(MTLAccelerationStructureCommandProgressBinsInternal *this, unsigned int a2, unsigned int a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 7) = 0u;
  *(this + 6) = 0u;
  *(this + 32) = 1065353216;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 1065353216;
  *this = a4;
  *(this + 1) = a5;
  *(this + 2) = a6;
  *(this + 3) = a7;
  *(this + 4) = a8;
  *(this + 5) = a9;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = a2;
  *(this + 21) = 0;
  *(this + 35) = 0;
  if (a2 >= 2 && a3 >= 2)
  {
    operator new[]();
  }

  *(this + 18) = 0;
  *(this + 34) = 0;
}

void sub_185CCAF34(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void MTLAccelerationStructureCommandProgressBinsInternal::~MTLAccelerationStructureCommandProgressBinsInternal(MTLAccelerationStructureCommandProgressBinsInternal *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    MEMORY[0x1865FF1F0](v2, 0x1000C8052888210);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 152);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 56);
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__node_handle_merge_multi[abi:ne200100]<std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>(void *result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(v2[2]));
      v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
      inserted = std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__node_insert_multi_prepare(v4, v6, v2 + 2);
      v8 = *v2;
      std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::remove(a2, v2, v9);
      v2[1] = v6;
      result = std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__node_insert_multi_perform(v4, v2, inserted);
      v2 = v8;
    }

    while (v8);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__equal_range_multi<objc_object  {objcproto9MTLBuffer}>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

void sub_185CCB700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

float OUTLINED_FUNCTION_8_0@<S0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + v1);
  result = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_0@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>, float a3@<S0>, float a4@<S1>)
{
  *(x8_0 + 42) = v5;
  *(x8_0 + 44) = a3 + (a4 * 8.0);

  return [a1 setSubstream:v5];
}

uint64_t OUTLINED_FUNCTION_22()
{
  v4 = *(v0 + *(v2 + 1276));

  return [v1 buffer];
}

uint64_t OUTLINED_FUNCTION_23()
{
  v4 = *(v0 + *(v2 + 1276));

  return [v1 buffer];
}

uint64_t OUTLINED_FUNCTION_26()
{
  v4 = *(v0 + *(v2 + 1276));

  return [v1 size];
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return MTLProgressBinsSynchronizeBufferAccess(v4, a2, 1, a4);
}

uint64_t OUTLINED_FUNCTION_37()
{
  v4 = *(v0 + v2);

  return [v1 buffer];
}

uint64_t OUTLINED_FUNCTION_38()
{

  return [v0 bufferOffset];
}

uint64_t OUTLINED_FUNCTION_40(unint64_t a1)
{
  v3 = MTLProgressBinsSelectSubstreamWithBufferWriteSize(v1, a1);

  return [v2 setSubstream:v3];
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{
  v5 = *(v1 + v2);

  return [v5 signalProgress:a1];
}

float OUTLINED_FUNCTION_44@<S0>(unint64_t a1@<X0>, __int16 a2@<W8>, float a3@<S0>, float a4@<S1>)
{
  result = a3 + (a4 * a1);
  *(v4 + 42) = a2;
  *(v4 + 44) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47()
{
  v4 = *(v0 + *(v1 + 1276));

  return [v2 buffer];
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(v11 + a11);

  return [v14 signalProgress:a1];
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, unint64_t a2)
{
  v4 = MTLProgressBinsSelectSubstreamWithBufferWriteSize(v2, a2);

  return [v3 setSubstream:v4];
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return MTLProgressBinsSynchronizeBufferAccess(v4, a2, 0, a4);
}

void sub_185CCC2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CCC9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MTLAirNTObject::~MTLAirNTObject(va);
  _Unwind_Resume(a1);
}

uint64_t ___Z40ca_log_graphics_CommandQueueRateLimitingPK8NSString_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"process_name";
  v5[0] = v1;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void createCommandQueueRateLimitingTelemetry()
{
  if (createCommandQueueRateLimitingTelemetry::onceToken != -1)
  {
    createCommandQueueRateLimitingTelemetry_cold_1();
  }
}

void __createCommandQueueRateLimitingTelemetry_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  CFRetain(MainBundle);
  if (!MainBundle)
  {
    goto LABEL_8;
  }

  Identifier = CFBundleGetIdentifier(MainBundle);
  if (!Identifier)
  {
    goto LABEL_8;
  }

  v2 = Identifier;
  Length = CFStringGetLength(Identifier);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v5);
LABEL_8:
    CFRelease(MainBundle);
    goto LABEL_9;
  }

  CFRelease(MainBundle);
  if (v5)
  {
    if (*v5)
    {
LABEL_10:
      [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      goto LABEL_11;
    }

    free(v5);
  }

LABEL_9:
  v6 = getprogname();
  v5 = strdup(v6);
  if (MainBundle)
  {
    goto LABEL_10;
  }

LABEL_11:
  AnalyticsSendEventLazy();
  free(v5);
}

void validateGPUPriority(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 > 5)
  {
    MTLReportFailure(0, "validateGPUPriority", 121, @"priority (%d) is not a valid MTLGPUPriority", a5, a6, a7, a8, a1);
  }

  else if (a1 == 3 && (a2 & 1) == 0)
  {
    validateGPUPriority_cold_1(3, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t newLogReplayRequest(MTLCompilerRequest *a1, const char *a2, NSObject *a3, uint64_t a4)
{
  if (_MTLIsInternalBuild())
  {
    objc_autoreleasePoolPush();
    add_explicit = atomic_fetch_add_explicit(&gDiagnosticLogIndex, 1u, memory_order_relaxed);
    v9 = MTLGetProcessName();
    v10 = strlen(v9);
    if (v10 < 0x7FFFFFFFFFFFFFF8)
    {
      v11 = v10;
      if (v10 < 0x17)
      {
        *(&__dst.__r_.__value_.__s + 23) = v10;
        if (v10)
        {
          memmove(&__dst, v9, v10);
        }

        __dst.__r_.__value_.__s.__data_[v11] = 0;
        v12 = std::string::append(&__dst, "_data_");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v33, add_explicit);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v33;
        }

        else
        {
          v14 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v33.__r_.__value_.__l.__size_;
        }

        v16 = std::string::append(&v35, v14, size);
        v36 = *v16;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v30 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v36.__r_.__value_.__l.__size_;
        }

        v35.__r_.__value_.__r.__words[0] = 0;
        v18 = (*(*a1 + 64))(a1, a4, &v35);
        __dst.__r_.__value_.__r.__words[0] = 0;
        v33.__r_.__value_.__r.__words[0] = 0;
        if (a3)
        {
          dispatch_data_create_map(a3, &__dst.__r_.__value_.__l.__data_, &v33);
          v19 = v33.__r_.__value_.__r.__words[0];
        }

        else
        {
          v19 = 0;
        }

        size_ptr = 0;
        buffer_ptr = 0;
        dispatch_data_create_map(v18, &buffer_ptr, &size_ptr);
        v20 = size_ptr;
        if (a2)
        {
          v21 = strlen(a2) + 1;
        }

        else
        {
          v21 = 0;
        }

        RequestType = MTLCompilerRequest::getRequestType(a1);
        v23 = v19 + v20 + v21 + 28;
        v24 = malloc_type_malloc(v23 + v17 + 17, 0x100004077774924uLL);
        *v24 = v17 + 1;
        if (v30 >= 0)
        {
          v25 = &v36;
        }

        else
        {
          v25 = v36.__r_.__value_.__r.__words[0];
        }

        memcpy(v24 + 1, v25, v17 + 1);
        *(v24 + v17 + 9) = v23;
        *(v24 + v17 + 17) = v21;
        v26 = v24 + v17 + 25;
        memcpy(v26, a2, v21);
        v27 = &v26[v21];
        *v27++ = v19;
        memcpy(v27, __dst.__r_.__value_.__l.__data_, v19);
        v28 = v27 + v19;
        *v28 = RequestType;
        *(v28 + 4) = v20;
        memcpy(v27 + v19 + 12, buffer_ptr, v20);
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

void sub_185CCE170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a13 < 0)
  {
    operator delete(*(v33 - 112));
  }

  _Unwind_Resume(exception_object);
}

void MTLLegacyCompilerConnection::MTLLegacyCompilerConnection(MTLLegacyCompilerConnection *this, int a2)
{
  *this = &unk_1EF4761C8;
  *(this + 7) = a2;
  atomic_store(0, this + 6);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 1) = dispatch_queue_create("compiler request queue", v3);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 2) = dispatch_queue_create("compiler reply queue", v4);
}

void MTLLegacyCompilerConnection::~MTLLegacyCompilerConnection(MTLLegacyCompilerConnection *this)
{
  *this = &unk_1EF4761C8;
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    dispatch_release(v3);
  }
}

BOOL MTLVersionedDB::isVersionEntry(uint64_t a1, uint64_t a2, char *__s1)
{
  if (*(a1 + 12) == 1)
  {
    if (a2 == 8)
    {
      return *__s1 == 0xFFFFFFFFLL;
    }
  }

  else if (a2 == 12)
  {
    return strncmp(__s1, "_DB_VERSION_", 0xCuLL) == 0;
  }

  return 0;
}

void MTLVersionedDB::getOrSetVersion(MTLVersionedDB *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v6 = 4;
  v7 = &v8;
  v5 = 0xFFFFFFFFLL;
  strcpy(__p, "_DB_VERSION_");
  v4 = 12;
  v2 = *(this + 12);
  operator new();
}

void sub_185CCE52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MTLVersionedDB::Transaction::~Transaction(&a9);
  MEMORY[0x1865FF210](v16, v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MTLVersionedDB::openDB(uint64_t *a1, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5)
{
  *a4 = 1;
  *a5 = 1;
  v9 = mdb_env_create(a1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLVersionedDB::openDB(v10);
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    mkdir(v11, 0x1EDu);
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v13 = mdb_env_open(*a1, v12, 0, 420);
    if (!v13)
    {
      MTLVersionedDB::getOrSetVersion(a1, a3);
    }

    v14 = v13;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLVersionedDB::openDB((a2 + 23), a2, v14);
    }

    mdb_env_close(*a1);
    *a4 = 0;
  }

  *a1 = 0;
}

void **MTLVersionedDB::MTLVersionedDB(void **a1, uint64_t *a2, int a3, char a4, char a5)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 12) = a4;
  *(a1 + 13) = a5;
  v11 = 0;
  MTLVersionedDB::openDB(a1, a2, a3, &v11 + 1, &v11);
  if (HIBYTE(v11) != 1 || (v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLVersionedDB::MTLVersionedDB();
    }

    if (*a1)
    {
      MTLVersionedDB::Transaction::Transaction(&v10, a1);
      if (v10)
      {
        mdb_drop(v10, *(a1 + 2), 0);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MTLVersionedDB::MTLVersionedDB(a2);
      }

      MTLVersionedDB::Transaction::~Transaction(&v10);
      v8 = *a1;
    }

    else
    {
      v8 = 0;
    }

    mdb_env_close(v8);
    MTLVersionedDB::openDB(a1, a2, a3, &v11 + 1, &v11);
    if (HIBYTE(v11) != 1 || (v11 & 1) == 0)
    {
      if (*a1)
      {
        mdb_env_close(*a1);
      }

      *a1 = 0;
    }
  }

  return a1;
}

MTLVersionedDB::Transaction *MTLVersionedDB::Transaction::Transaction(MTLVersionedDB::Transaction *this, MTLVersionedDB *a2)
{
  *this = 0;
  if (*a2)
  {
    v4 = mdb_txn_begin(*a2, 0, 0, this);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MTLVersionedDB::Transaction::Transaction(v5);
      }

LABEL_15:
      *this = 0;
      return this;
    }

    if (*(a2 + 13))
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    if (*(a2 + 12))
    {
      v7 = 262152;
    }

    else
    {
      v7 = 0x40000;
    }

    v8 = mdb_dbi_open(*this, 0, v7 | v6, a2 + 2);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MTLVersionedDB::Transaction::Transaction(v9);
      }

      mdb_txn_abort(*this);
      goto LABEL_15;
    }
  }

  return this;
}

void MTLVersionedDB::Transaction::~Transaction(MTLVersionedDB::Transaction *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if (v1)
  {
    v2 = mdb_txn_commit(v1);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v4 = mdb_strerror(v2);
        MTLVersionedDB::Transaction::~Transaction(v4, v5);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_185CCE974(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void MTLVersionedDB::~MTLVersionedDB(MTLVersionedDB *this)
{
  v2 = *this;
  if (v2)
  {
    mdb_dbi_close(v2, *(this + 2));
    mdb_env_close(*this);
  }
}

void MTLVersionedDB::dumpTable(MTLVersionedDB *this)
{
  v22 = *MEMORY[0x1E69E9840];
  MTLVersionedDB::Transaction::Transaction(&v11, this);
  if (v11)
  {
    v10 = 0;
    v2 = mdb_cursor_open(v11, *(this + 2), &v10);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v3 = mdb_strerror(v2);
        MTLArchiveUsageDB::prune(v3, buf);
      }
    }

    else
    {
      v5 = mdb_cursor_get(v10, v9, v8, 0);
      v6 = 0;
      v7 = MEMORY[0x1E69E9C10];
      while (v5 != -30798)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67110144;
          v13 = v6;
          v14 = 2048;
          v15 = v9[0];
          v16 = 2048;
          v17 = v9[1];
          v18 = 2048;
          v19 = v8[0];
          v20 = 2048;
          v21 = v8[1];
          _os_log_debug_impl(&dword_185B8E000, v7, OS_LOG_TYPE_DEBUG, "%d: key(%zu,%p) data(%zu,%p)", buf, 0x30u);
          ++v6;
        }

        v5 = mdb_cursor_get(v10, v9, v8, 8);
      }
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v11);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_185CCEB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

void FileSignature::FileSignature(FileSignature *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
}

uint64_t FileSignature::FileSignature(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (!stat(v4, &v11))
  {
    *a1 = v11.st_dev;
    *(a1 + 8) = v11.st_ino;
  }

  v10 = 0;
  v9 = xmmword_185DE2170;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (!getattrlist(v5, &v9, v7, 8uLL, 0x20u))
  {
    *(a1 + 16) = v8;
  }

  return a1;
}

BOOL operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
}

{
  return *(a1 + 1088) == 1 && *(a2 + 1088) == 1 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
}

uint64_t ArchivePayload::ArchivePayload(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *a1 = a4;
  *(a1 + 4) = a5;
  FileSignature::FileSignature(a1 + 8, a2);
  FileSignature::FileSignature(a1 + 32, a3);
  *(a1 + 1080) = 0;
  v7 = *(a3 + 23);
  if ((v7 & 0x8000000000000000) != 0 && (v7 = *(a3 + 8), v7 >= 0x401))
  {
    v9 = 0;
  }

  else
  {
    std::string::copy(a3, (a1 + 56), v7, 0);
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    *(a1 + 1080) = v8;
    v9 = 1;
  }

  *(a1 + 1088) = v9;
  return a1;
}

_DWORD *ArchivePayload::ArchivePayload(_DWORD *__dst, size_t __n, void *__src)
{
  __dst[2] = 0;
  *(__dst + 2) = 0;
  __dst[6] = 0;
  __dst[8] = 0;
  *(__dst + 5) = 0;
  __dst[12] = 0;
  *(__dst + 135) = 0;
  *(__dst + 1088) = 0;
  if (__n - 1081 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    memcpy(__dst, __src, __n);
    *(__dst + 135) = __n - 56;
    *(__dst + 1088) = 1;
  }

  return __dst;
}

void *ArchivePayload::getRecompiledArchive@<X0>(void *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = this[135];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    this = memcpy(a2, this + 7, v3);
  }

  a2[v3] = 0;
  return this;
}

BOOL ArchivePayload::matchesCurrent(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1088) == 1)
  {
    ArchivePayload::getRecompiledArchive(a1, __p);
    ArchivePayload::ArchivePayload(v8, a2, __p, 0, 0);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    result = operator==(v8, a1);
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185CCF74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLArchiveMapDB::remove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = v9;
  }

  v8 = 0;
  v5 = mdb_cursor_open(a2, *(a1 + 8), &v8);
  if (!v5)
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = mdb_strerror(v5);
    MTLArchiveUsageDB::prune(v6, buf);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_185CCFB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x1865FF210](v21, v20);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void MTLArchiveMapDB::read(MTLVersionedDB *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  MTLVersionedDB::Transaction::Transaction(&v12, a1);
  if (v12)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
    }

    else
    {
      v10 = *a2;
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v11 = v10;
    }

    v9 = 0;
    v5 = mdb_cursor_open(v12, *(a1 + 2), &v9);
    if (!v5)
    {
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = mdb_strerror(v5);
      MTLArchiveUsageDB::prune(v6, buf);
    }

    std::string::basic_string[abi:ne200100]<0>(a3, "");
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  MTLVersionedDB::Transaction::~Transaction(&v12);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_185CCFF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  MEMORY[0x1865FF210](v29, v28);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  MTLVersionedDB::Transaction::~Transaction(&a28);
  _Unwind_Resume(a1);
}

void MTLArchiveMapDB::store(MTLVersionedDB *a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  MTLVersionedDB::Transaction::Transaction(&v14, a1);
  if (v14)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = __p;
    }

    ArchivePayload::ArchivePayload(v15, a2, a3, a4, a5);
    if (v15[1088])
    {
      MTLArchiveMapDB::remove(a1, v14, a2);
      v10 = *(a1 + 2);
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLArchiveMapDB::store((a2 + 23), a2, a3);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v14);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_185CD0254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MTLVersionedDB::Transaction::~Transaction(&a22);
  _Unwind_Resume(a1);
}

__CFString *MTLSamplerMinMagFilterString(MTLSamplerMinMagFilter a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEBB10[a1 & 3];
  }
}

__CFString *MTLSamplerMipFilterString(MTLSamplerMipFilter a1)
{
  if (a1 > MTLSamplerMipFilterLinear)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEBB28[a1];
  }
}

__CFString *MTLSamplerAddressModeString(MTLSamplerAddressMode a1)
{
  if (a1 > (MTLSamplerAddressModeClampToZero|MTLSamplerAddressModeRepeat))
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEBB40[a1];
  }
}

__CFString *MTLSamplerBorderColorString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEBB78[a1];
  }
}

__CFString *MTLSamplerReductionModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEBB90[a1];
  }
}

void *_MTLCreateConstantSamplerDescriptorsFromBitmasks(uint64_t a1, unint64_t *a2)
{
  v3 = a1;
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a1]; v3; --v3)
  {
    v5 = *a2++;
    v6 = objc_alloc_init(MTLSamplerDescriptor);
    setDescriptorFromBitmask(v6, v5, 1);
    [i addObject:v6];
  }

  return i;
}

void setDescriptorFromBitmask(MTLSamplerDescriptor *a1, unint64_t a2, int a3)
{
  [(MTLSamplerDescriptor *)a1 setMinFilter:(a2 >> 11) & 3];
  [(MTLSamplerDescriptor *)a1 setMagFilter:(a2 >> 9) & 3];
  [(MTLSamplerDescriptor *)a1 setMipFilter:(a2 >> 13) & 3];
  if ((a2 & 7) >= 5)
  {
    MTLReportFailure(0, "addressModeFromConstantSamplerLiteral", 851, @"Unexpected MTLSamplerAddressMode from constant sampler reflection: %llu", v6, v7, v8, v9, a2 & 7);
    v10 = 4;
  }

  else
  {
    v10 = qword_185DE2190[a2 & 7];
  }

  [(MTLSamplerDescriptor *)a1 setSAddressMode:v10];
  v15 = (a2 >> 3) & 7;
  if (v15 >= 5)
  {
    MTLReportFailure(0, "addressModeFromConstantSamplerLiteral", 851, @"Unexpected MTLSamplerAddressMode from constant sampler reflection: %llu", v11, v12, v13, v14, (a2 >> 3) & 7);
    v16 = 4;
  }

  else
  {
    v16 = qword_185DE2190[v15];
  }

  [(MTLSamplerDescriptor *)a1 setTAddressMode:v16];
  v21 = (a2 >> 6) & 7;
  if (v21 >= 5)
  {
    MTLReportFailure(0, "addressModeFromConstantSamplerLiteral", 851, @"Unexpected MTLSamplerAddressMode from constant sampler reflection: %llu", v17, v18, v19, v20, (a2 >> 6) & 7);
    v22 = 4;
  }

  else
  {
    v22 = qword_185DE2190[v21];
  }

  [(MTLSamplerDescriptor *)a1 setRAddressMode:v22];
  [(MTLSamplerDescriptor *)a1 setNormalizedCoordinates:(a2 & 0x8000) == 0];
  [(MTLSamplerDescriptor *)a1 setMaxAnisotropy:((a2 >> 20) & 0xF) + 1];
  v27 = (a2 >> 16) & 0xF;
  if (v27 > 3)
  {
    if (((a2 >> 16) & 0xF) <= 5)
    {
      if (v27 == 4)
      {
        v27 = 6;
      }

      else
      {
        if (v27 != 5)
        {
          goto LABEL_29;
        }

        v27 = 2;
      }
    }

    else
    {
      switch(v27)
      {
        case 6uLL:
          v27 = 5;
          break;
        case 7uLL:
          break;
        case 8uLL:
LABEL_30:
          v27 = 0;
          break;
        default:
LABEL_29:
          MTLReportFailure(0, "compareFunctionFromConstantSamplerLiteral", 833, @"Unexpected MTLCompareFunction from constant sampler reflection: %llu", v23, v24, v25, v26, (a2 >> 16) & 0xF);
          goto LABEL_30;
      }
    }

LABEL_31:
    [(MTLSamplerDescriptor *)a1 setCompareFunction:v27];
    goto LABEL_32;
  }

  if (((a2 >> 16) & 0xF) > 1)
  {
    if (v27 == 2)
    {
      v27 = 3;
    }

    else
    {
      if (v27 != 3)
      {
        goto LABEL_29;
      }

      v27 = 4;
    }

    goto LABEL_31;
  }

  if (v27)
  {
    if (v27 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

LABEL_32:
  [(MTLSamplerDescriptor *)a1 setBorderColor:HIBYTE(a2) & 3];
  [(MTLSamplerDescriptor *)a1 setReductionMode:(a2 >> 58) & 3];
  [(MTLSamplerDescriptor *)a1 setForceResourceIndex:0];
  [(MTLSamplerDescriptor *)a1 setResourceIndex:0];
  _H0 = a2 >> 24;
  __asm { FCVT            S0, H0 }

  [(MTLSamplerDescriptor *)a1 setLodMinClamp:_D0];
  _H0 = HIDWORD(a2) >> 8;
  __asm { FCVT            S0, H0 }

  [(MTLSamplerDescriptor *)a1 setLodMaxClamp:_D0];
  if ((a2 & 0x8000000000000000) != 0 || !a3)
  {
    if ((a2 & 0x7000000000000000) != 0)
    {
      MTLReportFailure(0, "setDescriptorFromBitmask", 943, @"Constant sampler has unrecognized bits: 0x%llx", v36, v37, v38, v39, a2);
    }
  }

  else
  {
    MTLReportFailure(0, "setDescriptorFromBitmask", 939, @"Constant sampler does not have the most significant bit set: 0x%llX", v36, v37, v38, v39, a2);
  }
}

void setDescriptorFromBitmask(MTLSamplerDescriptor *a1, unint64_t *a2, uint64_t a3)
{
  if (a3 == 2)
  {
    setDescriptorFromBitmask(a1, *a2, 0);
    LOWORD(_D0) = *(a2 + 4);
    __asm { FCVT            S0, H0 }

    [(MTLSamplerDescriptor *)a1 setLodBias:_D0];
  }

  else if (a3 == 1)
  {
    v5 = *a2;

    setDescriptorFromBitmask(a1, v5, 1);
  }
}

void *_MTLCreateConstantSamplerDescriptorsFromBitmasksStrided(uint64_t a1, unsigned int a2, unint64_t *a3)
{
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a1];
  v7 = a2 >> 3;
  v8 = v7 * a1;
  if (v7 * a1)
  {
    v9 = 0;
    do
    {
      v10 = objc_alloc_init(MTLSamplerDescriptor);
      setDescriptorFromBitmask(v10, a3, v7);
      [v6 addObject:v10];

      v9 += v7;
      a3 += v7;
    }

    while (v9 < v8);
  }

  return v6;
}