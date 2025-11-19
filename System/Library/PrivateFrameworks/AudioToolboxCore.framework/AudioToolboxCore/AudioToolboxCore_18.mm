void std::function<void ()(NSError *,std::tuple<unsigned int> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void applesauce::xpc::dict::~dict(id *this)
{
  v2 = *this;
  *this = 0;
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},unsigned int>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<unsigned int> &&)#1},std::allocator<std::tuple<unsigned int> &>,void ()(NSError,std::tuple<unsigned int>)>::operator()(uint64_t a1, id *a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},unsigned int>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<unsigned int> &&)#1},std::allocator<std::tuple<unsigned int> &>,void ()(NSError,std::tuple<unsigned int>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0327260;
  a2[1] = v2;
  return result;
}

void std::vector<auoop::RenderPipeConfig::CompactFormat>::__init_with_size[abi:ne200100]<auoop::RenderPipeConfig::CompactFormat*,auoop::RenderPipeConfig::CompactFormat*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1555555555555556)
    {
      std::allocator<auoop::RenderPipeConfig::CompactFormat>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

void sub_18F6FB5A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void auoop::RenderPipeConfig::~RenderPipeConfig(id *this)
{
  v2 = this[4];
  if (v2)
  {
    this[5] = v2;
    operator delete(v2);
  }

  v3 = this[1];
  if (v3)
  {
    this[2] = v3;
    operator delete(v3);
  }
}

void std::allocator<auoop::PipeSubPool::PipeSlot>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<auoop::PipeSubPool::PipeSlot>,auoop::PipeSubPool::PipeSlot*>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      *a3 = 0;
      v6 = v5[1];
      v7 = v5[2];
      v5[1] = 0;
      *(a3 + 8) = v6;
      *(a3 + 16) = v7;
      *(a3 + 24) = 0;
      v5 += 4;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      result = std::unique_ptr<AUOOPRenderingClient>::reset[abi:ne200100](v4 + 1, 0);
      v4 += 4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<auoop::PipeSubPool::PipeSlot>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::unique_ptr<AUOOPRenderingClient>::reset[abi:ne200100]((i - 24), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<auoop::RenderPipeConfig::CompactFormat>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void auoop::RenderPipeUser::setV3HostCallbacks(uint64_t a1, void *a2, void *a3)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v10, *(a1 + 16));
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v10);
  v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v10);
  [v7 updateHostCallbacks:(v5 != 0) | (2 * (v6 != 0)) reply:v8];

  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v11);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_18F6FB870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

__n128 initRng(int a1, uint64_t a2)
{
  v2 = 9 * ((~(a1 << 15) + a1) ^ ((~(a1 << 15) + a1) >> 10));
  v3 = (v2 ^ (v2 >> 6)) + ~((v2 ^ (v2 >> 6)) << 11);
  v4 = v3 ^ HIWORD(v3);
  v5 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = v6 ^ HIWORD(v6);
  v8 = 9 * ((v7 + ~(v7 << 15)) ^ ((v7 + ~(v7 << 15)) >> 10));
  v9 = (v8 ^ (v8 >> 6)) + ~((v8 ^ (v8 >> 6)) << 11);
  v10 = v9 ^ HIWORD(v9);
  v11 = 9 * ((v10 + ~(v10 << 15)) ^ ((v10 + ~(v10 << 15)) >> 10));
  v12 = ((v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11)) ^ (((v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11)) >> 16);
  result.n128_u64[0] = __PAIR64__(v7, v4);
  result.n128_u64[1] = __PAIR64__(v12, v10);
  v14 = 9 * ((v12 + ~(v12 << 15)) ^ ((v12 + ~(v12 << 15)) >> 10));
  *&v15 = __PAIR64__(v10, v7);
  DWORD2(v15) = v12;
  HIDWORD(v15) = ((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) ^ (((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) >> 16);
  *a2 = result;
  *(a2 + 16) = v15;
  return result;
}

float32x4_t *generateVector(float32x4_t *result, unsigned int a2, uint64_t a3, float a4)
{
  v4 = a4 * 2.3283e-10;
  v5 = *a3;
  v6 = (a3 + 16);
  v7 = *(a3 + 16);
  if (a2 < 4)
  {
    v11 = *a3;
    v10 = *(a3 + 16);
  }

  else
  {
    v8 = vdup_n_s16(0x9069u);
    v9 = vdup_n_s16(0x4650u);
    do
    {
      v10 = vsraq_n_u32(vmull_u16(vmovn_s32(v7), v8), v7, 0x10uLL);
      v11 = vsraq_n_u32(vmull_u16(vmovn_s32(v5), v9), v5, 0x10uLL);
      *result++ = vmulq_n_f32(vcvtq_f32_s32(vaddq_s32(vshlq_n_s32(v10, 0x10uLL), v11)), v4);
      a2 -= 4;
      v7 = v10;
      v5 = v11;
    }

    while (a2 > 3);
  }

  *a3 = v11;
  *(a3 + 16) = v10;
  if (a2)
  {
    v12 = 0;
    do
    {
      v13 = v12;
      v14 = 36969 * v6->i32[v12] + HIWORD(v6->i32[v12]);
      v15 = 18000 * *(a3 + 4 * v13) + HIWORD(*(a3 + 4 * v13));
      v6->i32[v13] = v14;
      *(a3 + 4 * v13) = v15;
      result->f32[0] = v4 * (v15 + (v14 << 16));
      result = (result + 4);
      if (v13 == 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = v13 + 1;
      }

      --a2;
    }

    while (a2);
    if (v13 == 2)
    {
      v19 = *(a3 + 16);
      *a3 = vextq_s8(*a3, *a3, 0xCuLL);
      v17 = vextq_s8(v19, v19, 0xCuLL);
    }

    else if (v13 == 1)
    {
      v18 = *(a3 + 16);
      *a3 = vextq_s8(*a3, *a3, 8uLL);
      v17 = vextq_s8(v18, v18, 8uLL);
    }

    else
    {
      if (v13)
      {
        return result;
      }

      v16 = *(a3 + 16);
      *a3 = vextq_s8(*a3, *a3, 4uLL);
      v17 = vextq_s8(v16, v16, 4uLL);
    }

    *v6 = v17;
  }

  return result;
}

uint64_t NotifyDStateDumpManager::unregisterSubsystem(uint64_t a1, int a2)
{
  dispatch_assert_queue_not_V2(*(a1 + 32));
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN23NotifyDStateDumpManager19unregisterSubsystemE27CACentralStateDumpSubsystem_block_invoke;
  v6[3] = &__block_descriptor_tmp_9;
  v6[4] = a1;
  v7 = a2;
  dispatch_sync(v4, v6);
  return 0;
}

uint64_t ___ZN23NotifyDStateDumpManager19unregisterSubsystemE27CACentralStateDumpSubsystem_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2 != v3)
  {
    while (*v2 != *(result + 40))
    {
      v2 += 8;
      if (v2 == v3)
      {
        v2 = *(v1 + 48);
        break;
      }
    }
  }

  if (v3 != v2)
  {
    if (v2 + 8 != v3)
    {
      do
      {
        v4 = v2;
        v2 += 8;
        result = ListenerInfo<OS::CF::String>::operator=(v4, v2);
      }

      while (result + 64 != v3);
      v3 = *(v1 + 48);
    }

    while (v3 != v2)
    {
      v3 -= 32;
      result = ListenerInfo<OS::CF::String>::~ListenerInfo(v3);
    }

    *(v1 + 48) = v2;
  }

  return result;
}

uint64_t ListenerInfo<OS::CF::String>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    OS::CF::String::operator=(a1 + 16, *(a2 + 24));
    v4 = *(a1 + 8);
    if (v4)
    {
      _Block_release(v4);
      *(a1 + 8) = 0;
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      *(a1 + 8) = v5;
      *(a2 + 8) = 0;
    }
  }

  return a1;
}

uint64_t ListenerInfo<OS::CF::String>::~ListenerInfo(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 8) = 0;
  }

  OS::CF::UntypedObject::~UntypedObject((a1 + 16));
  return a1;
}

void OS::CF::UntypedObject::~UntypedObject(OS::CF::UntypedObject *this)
{
  *this = &unk_1F0327400;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t OS::CF::String::operator=(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t NotifyDStateDumpManager::registerSubsystem(uint64_t a1, int a2, CFTypeRef cf, const void *a4)
{
  result = 4294967246;
  if (cf)
  {
    if (a4)
    {
      CFRetain(cf);
      v12[0] = &unk_1F03273E0;
      v12[1] = cf;
      v13 = a2;
      OS::CF::UntypedObject::UntypedObject(&v15, cf);
      v15 = &unk_1F03273E0;
      v14 = _Block_copy(a4);
      OS::CF::UntypedObject::~UntypedObject(v12);
      v9 = *(a1 + 32);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN23NotifyDStateDumpManager17registerSubsystemE27CACentralStateDumpSubsystemPK10__CFStringU13block_pointerFvP7__sFILEE_block_invoke;
      v10[3] = &__block_descriptor_tmp_8;
      v10[4] = a1;
      v11[8] = a2;
      ListenerInfo<OS::CF::String>::ListenerInfo(v11, &v13);
      dispatch_async(v9, v10);
      ListenerInfo<OS::CF::String>::~ListenerInfo(v11);
      ListenerInfo<OS::CF::String>::~ListenerInfo(&v13);
      return 0;
    }
  }

  return result;
}

void ___ZN23NotifyDStateDumpManager17registerSubsystemE27CACentralStateDumpSubsystemPK10__CFStringU13block_pointerFvP7__sFILEE_block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[5];
  v4 = v2[6];
  v43 = *(a1 + 72);
  v5 = (a1 + 40);
  ListenerInfo<OS::CF::String>::ListenerInfo(v44, a1 + 40);
  if (v3 == v4)
  {
LABEL_4:
    ListenerInfo<OS::CF::String>::~ListenerInfo(v44);
    v7 = v2[5];
    v6 = v2[6];
    v8 = v6 - v7;
    if (v6 == v7)
    {
      v10 = v2[6];
    }

    else
    {
      v9 = v8 >> 5;
      v10 = v2[5];
      do
      {
        v11 = v9 >> 1;
        v12 = (v10 + 32 * (v9 >> 1));
        v14 = *v12;
        v13 = v12 + 8;
        v9 += ~(v9 >> 1);
        if (v14 < *v5)
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
    }

    v18 = v2[7];
    if (v6 >= v18)
    {
      v23 = (v8 >> 5) + 1;
      if (v23 >> 59)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v24 = v18 - v7;
      if (v24 >> 4 > v23)
      {
        v23 = v24 >> 4;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFE0)
      {
        v25 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      v48 = v2 + 5;
      if (v25)
      {
        std::allocator<ListenerInfo<OS::CF::String>>::allocate_at_least[abi:ne200100](v25);
      }

      v26 = v10 - v7;
      v27 = (v10 - v7) >> 5;
      v28 = 32 * v27;
      v45 = 0;
      v46 = 32 * v27;
      v47 = (32 * v27);
      if (!v27)
      {
        if (v26 < 1)
        {
          if (v10 == v7)
          {
            v36 = 1;
          }

          else
          {
            v36 = v26 >> 4;
          }

          v54 = v2 + 5;
          std::allocator<ListenerInfo<OS::CF::String>>::allocate_at_least[abi:ne200100](v36);
        }

        v28 -= ((v26 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0;
        v46 = v28;
        *&v47 = v28;
      }

      ListenerInfo<OS::CF::String>::ListenerInfo(v28, v5);
      *&v47 = v47 + 32;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ListenerInfo<OS::CF::String>>,ListenerInfo<OS::CF::String>*>(v10, v2[6], v47);
      v37 = v2[5];
      v38 = v46;
      *&v47 = v47 + v2[6] - v10;
      v2[6] = v10;
      v39 = v38 + v37 - v10;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ListenerInfo<OS::CF::String>>,ListenerInfo<OS::CF::String>*>(v37, v10, v39);
      v40 = v2[5];
      v2[5] = v39;
      v41 = v2[7];
      *(v2 + 3) = v47;
      *&v47 = v40;
      *(&v47 + 1) = v41;
      v45 = v40;
      v46 = v40;
      std::__split_buffer<ListenerInfo<OS::CF::String>>::~__split_buffer(&v45);
    }

    else if (v10 == v6)
    {
      ListenerInfo<OS::CF::String>::ListenerInfo(v2[6], v5);
      v2[6] = v6 + 32;
    }

    else
    {
      v19 = v6 - 32;
      if (v6 < 0x20)
      {
        v21 = v2[6];
      }

      else
      {
        v20 = v6 - 32;
        v21 = v2[6];
        do
        {
          v22 = ListenerInfo<OS::CF::String>::ListenerInfo(v21, v20);
          v20 += 32;
          v21 = v22 + 32;
        }

        while (v20 < v6);
      }

      v2[6] = v21;
      if (v6 != v10 + 32)
      {
        v29 = v10 - v6 + 32;
        v30 = v6 - 64;
        do
        {
          ListenerInfo<OS::CF::String>::operator=(v19, v30);
          v19 -= 32;
          v30 -= 32;
          v29 += 32;
        }

        while (v29);
        v21 = v2[6];
      }

      v31 = v21 <= v5 || v10 > v5;
      v32 = 8;
      if (v31)
      {
        v32 = 0;
      }

      v33 = &v5[v32];
      if (v10 != v33)
      {
        *v10 = *v33;
        OS::CF::String::operator=(v10 + 16, v33[3]);
        v34 = *(v10 + 8);
        if (v34)
        {
          _Block_release(v34);
          *(v10 + 8) = 0;
        }

        v35 = v33[1];
        if (v35)
        {
          *(v10 + 8) = _Block_copy(v35);
        }
      }
    }
  }

  else
  {
    while (*v3 != v43)
    {
      v3 += 8;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    ListenerInfo<OS::CF::String>::~ListenerInfo(v44);
    v15 = CADefaultLog();
    if (v15)
    {
      v16 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 72);
        buf[0] = 136315650;
        *&buf[1] = "CACentralStateDump.cpp";
        v50 = 1024;
        v51 = 147;
        v52 = 1024;
        v53 = v17;
        _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Subsystem %d is attempting to register more than once", buf, 0x18u);
      }
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t ListenerInfo<OS::CF::String>::ListenerInfo(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F03273E0;
  *a1 = *a2;
  OS::CF::String::operator=(a1 + 16, *(a2 + 24));
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 8) = _Block_copy(v4);
  }

  return a1;
}

{
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F03273E0;
  *(a1 + 24) = 0;
  *a1 = *a2;
  OS::CF::String::operator=(a1 + 16, *(a2 + 24));
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 8) = v4;
    *(a2 + 8) = 0;
  }

  return a1;
}

void std::allocator<ListenerInfo<OS::CF::String>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<ListenerInfo<OS::CF::String>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    ListenerInfo<OS::CF::String>::~ListenerInfo(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ListenerInfo<OS::CF::String>>,ListenerInfo<OS::CF::String>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = result;
    do
    {
      ListenerInfo<OS::CF::String>::ListenerInfo(a3, v6);
      v6 += 32;
      a3 += 32;
      v5 -= 32;
    }

    while (v6 != a2);
    do
    {
      result = ListenerInfo<OS::CF::String>::~ListenerInfo(v4);
      v4 += 32;
    }

    while (v4 != a2);
  }

  return result;
}

OS::CF::UntypedObject *OS::CF::UntypedObject::UntypedObject(OS::CF::UntypedObject *this, CFTypeRef cf)
{
  *this = &unk_1F0327400;
  if (cf)
  {
    CFRetain(cf);
  }

  *(this + 1) = cf;
  return this;
}

void OS::CF::String::~String(OS::CF::String *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x193ADF220);
}

void NotifyDStateDumpManager::~NotifyDStateDumpManager(NotifyDStateDumpManager *this)
{
  NotifyDStateDumpManager::~NotifyDStateDumpManager(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03272E0;
  notify_cancel(*(this + 6));
  dispatch_release(*(this + 4));
  v2 = (this + 40);
  std::vector<ListenerInfo<OS::CF::String>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<ListenerInfo<OS::CF::String>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = ListenerInfo<OS::CF::String>::~ListenerInfo(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t OSStateDumpManager::unregisterSubsystem(uint64_t a1, int a2)
{
  dispatch_assert_queue_not_V2(*(a1 + 8));
  v4 = *(a1 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN18OSStateDumpManager19unregisterSubsystemE27CACentralStateDumpSubsystem_block_invoke;
  v6[3] = &__block_descriptor_tmp_19_2181;
  v6[4] = a1;
  v7 = a2;
  dispatch_sync(v4, v6);
  return 0;
}

uint64_t ___ZN18OSStateDumpManager19unregisterSubsystemE27CACentralStateDumpSubsystem_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v3 != v2)
  {
    while (*v3 != *(result + 40))
    {
      v3 += 24;
      if (v3 == v2)
      {
        return result;
      }
    }
  }

  if (v3 != v2)
  {
    v4 = *(v3 + 16);
    result = os_state_remove_handler();
    v5 = *(v1 + 24);
    if (v3 + 24 != v5)
    {
      do
      {
        v6 = v3;
        v3 += 24;
        result = ListenerInfo<unsigned long long>::operator=(v6, v3);
      }

      while (result + 48 != v5);
      v5 = *(v1 + 24);
    }

    while (v5 != v3)
    {
      v5 -= 24;
      result = ListenerInfo<unsigned long long>::~ListenerInfo(v5);
    }

    *(v1 + 24) = v3;
  }

  return result;
}

uint64_t ListenerInfo<unsigned long long>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v4 = *(a1 + 8);
    if (v4)
    {
      _Block_release(v4);
      *(a1 + 8) = 0;
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      *(a1 + 8) = v5;
      *(a2 + 8) = 0;
    }
  }

  return a1;
}

uint64_t ListenerInfo<unsigned long long>::~ListenerInfo(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t OSStateDumpManager::registerSubsystem(uint64_t a1, int a2, const void *a3, void *aBlock)
{
  result = 4294967246;
  if (a3)
  {
    if (aBlock)
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x4002000000;
      v13[3] = __Block_byref_object_copy__2182;
      v13[4] = __Block_byref_object_dispose__2183;
      v14 = a2;
      v15 = 0;
      v16 = 0;
      v15 = _Block_copy(aBlock);
      CFRetain(a3);
      v12[0] = &unk_1F03273E0;
      v12[1] = a3;
      v8 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18OSStateDumpManager17registerSubsystemE27CACentralStateDumpSubsystemPK10__CFStringU13block_pointerFvP7__sFILEE_block_invoke;
      block[3] = &unk_1F03273A0;
      block[5] = a1;
      v11 = a2;
      OS::CF::UntypedObject::UntypedObject(v10, a3);
      v10[0] = &unk_1F03273E0;
      block[4] = v13;
      dispatch_async(v8, block);
      OS::CF::UntypedObject::~UntypedObject(v10);
      OS::CF::UntypedObject::~UntypedObject(v12);
      _Block_object_dispose(v13, 8);
      ListenerInfo<unsigned long long>::~ListenerInfo(&v14);
      return 0;
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__2182(uint64_t result, uint64_t a2)
{
  *(result + 48) = 0;
  *(result + 40) = *(a2 + 40);
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  if (v2)
  {
    *(result + 48) = v2;
    *(a2 + 48) = 0;
  }

  return result;
}

void ___ZN18OSStateDumpManager17registerSubsystemE27CACentralStateDumpSubsystemPK10__CFStringU13block_pointerFvP7__sFILEE_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = v2[2];
  v4 = v2[3];
  if (v3 == v4)
  {
LABEL_4:
    dispatch_get_global_queue(0, 0);
    OS::CF::UntypedObject::UntypedObject(v47, *(a1 + 56));
    v46 = *(a1 + 32);
    v47[0] = &unk_1F03273E0;
    v5 = os_state_add_handler();
    if (v5)
    {
      *(*(*(a1 + 32) + 8) + 56) = v5;
      v6 = v2[2];
      v7 = v2[3];
      v8 = *(*(a1 + 32) + 8);
      v9 = v7 - v6;
      if (v7 == v6)
      {
        v11 = v2[3];
      }

      else
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        v11 = v2[2];
        do
        {
          v12 = v10 >> 1;
          v13 = (v11 + 24 * (v10 >> 1));
          v15 = *v13;
          v14 = v13 + 6;
          v10 += ~(v10 >> 1);
          if (v15 < *(v8 + 40))
          {
            v11 = v14;
          }

          else
          {
            v10 = v12;
          }
        }

        while (v10);
      }

      v19 = v11 - v6;
      v20 = v11;
      v21 = v2[4];
      if (v7 >= v21)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3) + 1;
        if (v25 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v6) >> 3);
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x555555555555555)
        {
          v27 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v27 = v25;
        }

        v52 = v2 + 2;
        if (v27)
        {
          std::allocator<ListenerInfo<unsigned long long>>::allocate_at_least[abi:ne200100](v27);
        }

        v29 = 8 * (v19 >> 3);
        v48 = 0;
        v49 = v29;
        v50 = v29;
        v51 = 0;
        if (!(0xAAAAAAAAAAAAAAABLL * (v19 >> 3)))
        {
          if (v19 < 1)
          {
            if (v11 == v6)
            {
              v38 = 1;
            }

            else
            {
              v38 = 0x5555555555555556 * (v19 >> 3);
            }

            v56 = v2 + 2;
            std::allocator<ListenerInfo<unsigned long long>>::allocate_at_least[abi:ne200100](v38);
          }

          v29 -= 24 * ((1 - 0x5555555555555555 * (v19 >> 3)) >> 1);
          v49 = v29;
          v50 = v29;
        }

        *(v29 + 8) = 0;
        *v29 = *(v8 + 40);
        *(v29 + 16) = *(v8 + 56);
        v39 = *(v8 + 48);
        if (v39)
        {
          *(v29 + 8) = _Block_copy(v39);
          v29 = v50;
        }

        v50 = v29 + 24;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ListenerInfo<unsigned long long>>,ListenerInfo<unsigned long long>*>(v11, v2[3], v29 + 24);
        v40 = v49;
        v50 += v2[3] - v11;
        v2[3] = v11;
        v41 = v2[2];
        v42 = v40 + v41 - v11;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ListenerInfo<unsigned long long>>,ListenerInfo<unsigned long long>*>(v41, v11, v42);
        v43 = v2[2];
        v2[2] = v42;
        v2[3] = v50;
        v44 = v2[4];
        v2[4] = v51;
        v50 = v43;
        v51 = v44;
        v48 = v43;
        v49 = v43;
        std::__split_buffer<ListenerInfo<unsigned long long>>::~__split_buffer(&v48);
      }

      else if (v11 == v7)
      {
        *(v7 + 8) = 0;
        *v7 = *(v8 + 40);
        *(v7 + 16) = *(v8 + 56);
        v28 = *(v8 + 48);
        if (v28)
        {
          *(v7 + 8) = _Block_copy(v28);
        }

        v2[3] = v7 + 24;
      }

      else
      {
        v22 = (v7 - 24);
        if (v7 < 0x18)
        {
          v23 = v2[3];
        }

        else
        {
          v23 = v7 + 24;
          *(v7 + 8) = 0;
          *v7 = *v22;
          *(v7 + 16) = *(v7 - 8);
          v24 = *(v7 - 16);
          if (v24)
          {
            *(v7 + 8) = v24;
            *(v7 - 16) = 0;
          }
        }

        v2[3] = v23;
        if (v7 != v11 + 24)
        {
          v30 = v7 - 48;
          v31 = v11 - v7 + 24;
          do
          {
            v22 = (ListenerInfo<unsigned long long>::operator=(v22, v30) - 24);
            v30 -= 24;
            v31 += 24;
          }

          while (v31);
          v23 = v2[3];
        }

        v32 = v8 + 40;
        v33 = v23 <= v8 + 40 || v20 > v32;
        v34 = 24;
        if (v33)
        {
          v34 = 0;
        }

        v35 = v32 + v34;
        if (v20 != v32 + v34)
        {
          *v20 = *v35;
          *(v20 + 16) = *(v35 + 16);
          v36 = *(v20 + 8);
          if (v36)
          {
            _Block_release(v36);
            *(v20 + 8) = 0;
          }

          v37 = *(v35 + 8);
          if (v37)
          {
            *(v20 + 8) = _Block_copy(v37);
          }
        }
      }
    }

    OS::CF::UntypedObject::~UntypedObject(v47);
  }

  else
  {
    while (*v3 != *(a1 + 64))
    {
      v3 += 6;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v16 = CADefaultLog();
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 64);
        buf[0] = 136315650;
        *&buf[1] = "CACentralStateDump.cpp";
        v54 = 1024;
        *v55 = 258;
        *&v55[4] = 1024;
        *&v55[6] = v18;
        _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Subsystem %d is attempting to register more than once", buf, 0x18u);
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_18F6FCFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v17 + 24) = v18;
  OS::CF::UntypedObject::~UntypedObject(v16);
  _Unwind_Resume(a1);
}

OS::CF::UntypedObject *__copy_helper_block_e8_48c20_ZTSKN2OS2CF6StringE(uint64_t a1, uint64_t a2)
{
  result = OS::CF::UntypedObject::UntypedObject((a1 + 48), *(a2 + 56));
  *(a1 + 48) = &unk_1F03273E0;
  return result;
}

void *___ZN18OSStateDumpManager17registerSubsystemE27CACentralStateDumpSubsystemPK10__CFStringU13block_pointerFvP7__sFILEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) == 3)
  {
    v21 = 0;
    numBytes = 0;
    v23 = 0;
    v3 = funopen(&v20, 0, CAMemoryStream::Write, 0, 0);
    v20 = v3;
    if (v3)
    {
      gettimeofday(&v19, 0);
      tv_sec = v19.tv_sec;
      localtime_r(&tv_sec, &v25);
      snprintf(__str, 0x14uLL, "%02d:%02d:%02d.%03d", v25.tm_hour, v25.tm_min, v25.tm_sec, v19.tv_usec);
      fwrite("\n------------------------------------------------------------\n", 0x3EuLL, 1uLL, v3);
      OS::CF::String::AsStdString(&v25, a1 + 40);
      if (v25.tm_year >= 0)
      {
        v4 = &v25;
      }

      else
      {
        v4 = *&v25.tm_sec;
      }

      fprintf(v3, "%s %s\n", __str, v4);
      if (SHIBYTE(v25.tm_year) < 0)
      {
        operator delete(*&v25.tm_sec);
      }

      fwrite("------------------------------------------------------------\n", 0x3DuLL, 1uLL, v3);
      (*(*(*(*(a1 + 32) + 8) + 48) + 16))();
      v5 = CAMemoryStream::cstr(&v20);
      v6 = numBytes;
      v21 = 0;
      numBytes = 0;
      v23 = 0;
      v7 = *MEMORY[0x1E695E480];
      v8 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, v6, 0x600u, 0, 0);
      v19.tv_sec = &unk_1F03273E0;
      *&v19.tv_usec = v8;
      if (v8)
      {
        Data = CFPropertyListCreateData(v7, v8, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        tv_sec = Data;
        v18 = 1;
        if (Data)
        {
          Length = CFDataGetLength(Data);
          v11 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
          if (v11)
          {
            v12 = getpid();
            MEMORY[0x193ADE470](&v25, v12);
            if (v25.tm_year >= 0)
            {
              v13 = &v25;
            }

            else
            {
              v13 = *&v25.tm_sec;
            }

            snprintf(v11 + 136, 0x40uLL, "CACentralStateDump (process: %s)", v13);
            if (SHIBYTE(v25.tm_year) < 0)
            {
              operator delete(*&v25.tm_sec);
            }

            *v11 = 1;
            v27.length = CFDataGetLength(tv_sec);
            v27.location = 0;
            CFDataGetBytes(tv_sec, v27, v11 + 200);
            *(v11 + 1) = CFDataGetLength(tv_sec);
          }
        }

        else
        {
          v11 = 0;
        }

        CACFData::~CACFData(&tv_sec);
      }

      else
      {
        v11 = 0;
      }

      OS::CF::UntypedObject::~UntypedObject(&v19);
      v14 = v20;
    }

    else
    {
      v14 = 0;
      v11 = 0;
    }

    fclose(v14);
    free(v21);
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_18F6FD340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, FILE *a21, void *a22)
{
  CACFData::~CACFData(&a13);
  OS::CF::UntypedObject::~UntypedObject(&__p);
  fclose(a21);
  free(a22);
  _Unwind_Resume(a1);
}

void std::allocator<ListenerInfo<unsigned long long>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<ListenerInfo<unsigned long long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    ListenerInfo<unsigned long long>::~ListenerInfo(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ListenerInfo<unsigned long long>>,ListenerInfo<unsigned long long>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v7 = v4 + v5;
      *(a3 + 8) = 0;
      *a3 = *(v4 + v5);
      v8 = *(v4 + v5 + 8);
      *(a3 + 16) = *(v4 + v5 + 16);
      if (v8)
      {
        *(a3 + 8) = _Block_copy(v8);
      }

      a3 += 24;
      v5 += 24;
    }

    while (v7 + 24 != a2);
    do
    {
      result = ListenerInfo<unsigned long long>::~ListenerInfo(v4);
      v4 += 24;
    }

    while (v4 != a2);
  }

  return result;
}

OS::CF::UntypedObject *__copy_helper_block_e8_40c20_ZTSKN2OS2CF6StringE(uint64_t a1, uint64_t a2)
{
  result = OS::CF::UntypedObject::UntypedObject((a1 + 40), *(a2 + 48));
  *(a1 + 40) = &unk_1F03273E0;
  return result;
}

void OS::CF::String::AsStdString(std::string *this, uint64_t a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    if (CStringPtr)
    {
      std::string::__assign_external(this, CStringPtr);
    }

    else
    {
      maxBufLen = 0;
      v6 = *(a2 + 8);
      v10.length = CFStringGetLength(v6);
      v10.location = 0;
      CFStringGetBytes(v6, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      std::vector<char>::vector[abi:ne200100](buffer, maxBufLen + 1);
      v7 = *(a2 + 8);
      v11.length = CFStringGetLength(v7);
      v11.location = 0;
      CFStringGetBytes(v7, v11, 0x8000100u, 0, 0, buffer[0], maxBufLen, &maxBufLen);
      buffer[0][maxBufLen] = 0;
      std::string::__assign_external(this, buffer[0]);
      if (buffer[0])
      {
        buffer[1] = buffer[0];
        operator delete(buffer[0]);
      }
    }
  }
}

void OSStateDumpManager::~OSStateDumpManager(OSStateDumpManager *this)
{
  OSStateDumpManager::~OSStateDumpManager(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327340;
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    v4 = *(v2 + 16);
    os_state_remove_handler();
    v2 += 24;
  }

  dispatch_release(*(this + 1));
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 3);
    v7 = *(this + 2);
    if (v6 != v5)
    {
      do
      {
        v6 = ListenerInfo<unsigned long long>::~ListenerInfo(v6 - 24);
      }

      while (v6 != v5);
      v7 = *(this + 2);
    }

    *(this + 3) = v5;
    operator delete(v7);
  }
}

void ___ZN23NotifyDStateDumpManagerC2Ev_block_invoke(uint64_t a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 24) == a2)
  {
    gettimeofday(&v41, 0);
    v38.__r_.__value_.__r.__words[0] = *&v41.tm_sec;
    localtime_r(&v38, &v39);
    snprintf(__str, 0x14uLL, "%02d:%02d:%02d.%03d", v39.tm_hour, v39.tm_min, v39.tm_sec, v41.tm_hour);
    gettimeofday(&v38, 0);
    v42.__r_.__value_.__r.__words[0] = v38.__r_.__value_.__r.__words[0];
    localtime_r(&v42, &v41);
    tm_mon = v41.tm_mon;
    tm_year = v41.tm_year;
    tm_mday = v41.tm_mday;
    v6 = *(v2 + 16);
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 temporaryDirectory];
    v11 = [v10 path];
    v12 = v11;
    std::string::basic_string[abi:ne200100]<0>(&v41, [v11 UTF8String]);

    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v42, &v41);
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &__dst);
      std::__fs::filesystem::operator/[abi:ne200100](&v38, &v42, &__p);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v36 = v38;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.tm_year) < 0)
      {
        operator delete(*&v41.tm_sec);
      }
    }

    else
    {
      *&v36.__r_.__value_.__l.__data_ = *&v41.tm_sec;
      v36.__r_.__value_.__r.__words[2] = *&v41.tm_mon;
    }

    LOBYTE(v41.tm_sec) = 0;
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v36;
    }

    else
    {
      v15 = v36.__r_.__value_.__r.__words[0];
    }

    v16 = CFStringCreateWithCString(0, v15, 0x8000100u);
    v17 = [v14 fileExistsAtPath:v16 isDirectory:&v41];
    CFRelease(v16);

    if ((v17 & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AC08] defaultManager];
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v36;
      }

      else
      {
        v19 = v36.__r_.__value_.__r.__words[0];
      }

      v20 = CFStringCreateWithCString(0, v19, 0x8000100u);
      *&v41.tm_sec = 0;
      [v18 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v41];
      v21 = *&v41.tm_sec;
      CFRelease(v20);
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v36;
    }

    else
    {
      v22 = v36.__r_.__value_.__r.__words[0];
    }

    v23 = getpid();
    MEMORY[0x193ADE470](&v41, v23);
    if (v41.tm_year >= 0)
    {
      v24 = &v41;
    }

    else
    {
      v24 = *&v41.tm_sec;
    }

    snprintf(&v39, 0x80uLL, "%s/coreaudiostatedump_%s_%d_%d_%d_%s.txt", v22, v24, tm_year + 1900, tm_mon + 1, tm_mday, __str);
    if (SHIBYTE(v41.tm_year) < 0)
    {
      operator delete(*&v41.tm_sec);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v25 = fopen(&v39, "w");
    v26 = v25;
    if (v25)
    {
      fprintf(v25, "State dump triggered at %s\n", __str);
      v27 = *(v2 + 40);
      v28 = *(v2 + 48);
      if (v27 != v28)
      {
        v29 = v27 + 16;
        do
        {
          if (*(v29 - 8))
          {
            gettimeofday(&v38, 0);
            __p.__r_.__value_.__r.__words[0] = v38.__r_.__value_.__r.__words[0];
            localtime_r(&__p, &v41);
            snprintf(&v42, 0x14uLL, "%02d:%02d:%02d.%03d", v41.tm_hour, v41.tm_min, v41.tm_sec, LODWORD(v38.__r_.__value_.__r.__words[1]));
            fwrite("\n------------------------------------------------------------\n", 0x3EuLL, 1uLL, v26);
            OS::CF::String::AsStdString(&v41, v29);
            if (v41.tm_year >= 0)
            {
              v30 = &v41;
            }

            else
            {
              v30 = *&v41.tm_sec;
            }

            fprintf(v26, "%s %s\n", &v42, v30);
            if (SHIBYTE(v41.tm_year) < 0)
            {
              operator delete(*&v41.tm_sec);
            }

            fwrite("------------------------------------------------------------\n", 0x3DuLL, 1uLL, v26);
            (*(*(v29 - 8) + 16))();
          }

          v31 = v29 + 16;
          v29 += 32;
        }

        while (v31 != v28);
      }

      fclose(v26);
    }

    else
    {
      v33 = CADefaultLog();
      if (v33)
      {
        v34 = v33;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v41.tm_sec = 136315650;
          *&v41.tm_min = "CACentralStateDump.cpp";
          LOWORD(v41.tm_mday) = 1024;
          *(&v41.tm_mday + 2) = 114;
          HIWORD(v41.tm_mon) = 2080;
          *&v41.tm_year = &v39;
          _os_log_impl(&dword_18F5DF000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't successfully create state dump file (attempted location: %s)", &v41, 0x1Cu);
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_18F6FDEEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  if (*(v43 - 169) < 0)
  {
    operator delete(*(v43 - 192));
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(v44);
}

void sub_18F6FE0D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void GetStateDumpManagers(void *a1)
{
  if (GetStateDumpManagers(void)::onceToken != -1)
  {
    dispatch_once(&GetStateDumpManagers(void)::onceToken, &__block_literal_global_2206);
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_18F6FE370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = (v15 + 40);
  std::vector<ListenerInfo<OS::CF::String>>::__destroy_vector::operator()[abi:ne200100](&a15);
  MEMORY[0x193ADF220](v15, v16);
  _Unwind_Resume(a1);
}

void sub_18F6FE428(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::Reinterleaver::Zero(uint64_t this, uint64_t a2, unsigned __int8 *a3, int a4)
{
  LODWORD(v4) = a3;
  if (a3 >= 32)
  {
    v5 = a3;
    do
    {
      if (this)
      {
        v6 = (a2 + a3 - v5);
        v7 = this;
        do
        {
          *v6 = 0uLL;
          v6[1] = 0uLL;
          v6 = (v6 + a4);
          --v7;
        }

        while (v7);
      }

      LODWORD(v4) = v5 - 32;
      v8 = v5 <= 63;
      v5 -= 32;
    }

    while (!v8);
  }

  if (v4 >= 24)
  {
    v4 = v4;
    do
    {
      if (this)
      {
        v9 = (a2 + a3 - v4);
        v10 = this;
        do
        {
          *v9 = 0;
          v9[1] = 0;
          v9[2] = 0;
          v9 = (v9 + a4);
          --v10;
        }

        while (v10);
      }

      v11 = v4 - 24;
      v8 = v4 <= 47;
      v4 -= 24;
    }

    while (!v8);
    LODWORD(v4) = v11;
  }

  if (v4 >= 16)
  {
    v4 = v4;
    do
    {
      if (this)
      {
        v12 = (a2 + a3 - v4);
        v13 = this;
        do
        {
          *v12 = 0;
          v12[1] = 0;
          v12 = (v12 + a4);
          --v13;
        }

        while (v13);
      }

      v14 = v4 - 16;
      v8 = v4 <= 31;
      v4 -= 16;
    }

    while (!v8);
    LODWORD(v4) = v14;
  }

  if (v4 >= 12)
  {
    v15 = v4;
    v16 = a2 - v4 + a3 + 8;
    do
    {
      if (this)
      {
        v17 = v16;
        v18 = this;
        do
        {
          *(v17 - 1) = 0;
          *v17 = 0;
          v17 = (v17 + a4);
          --v18;
        }

        while (v18);
      }

      v19 = v15 - 12;
      v16 += 12;
      v8 = v15 <= 23;
      v15 -= 12;
    }

    while (!v8);
    LODWORD(v4) = v19;
  }

  if (v4 >= 8)
  {
    v4 = v4;
    do
    {
      if (this)
      {
        v20 = (a2 + a3 - v4);
        v21 = this;
        do
        {
          *v20 = 0;
          v20 = (v20 + a4);
          --v21;
        }

        while (v21);
      }

      v22 = v4 - 8;
      v8 = v4 <= 15;
      v4 -= 8;
    }

    while (!v8);
    LODWORD(v4) = v22;
  }

  if (v4 > 3)
  {
    v4 = v4;
    do
    {
      if (this)
      {
        v23 = (a2 + a3 - v4);
        v24 = this;
        do
        {
          *v23 = 0;
          v23 = (v23 + a4);
          --v24;
        }

        while (v24);
      }

      v25 = v4 - 4;
      v8 = v4 <= 7;
      v4 -= 4;
    }

    while (!v8);
    LODWORD(v4) = v25;
  }

  if (v4 < 3)
  {
    if (v4 == 2)
    {
      if (this)
      {
        v27 = (a2 + a3 - 2);
        do
        {
          *v27 = 0;
          v27 = (v27 + a4);
          this = (this - 1);
        }

        while (this);
      }
    }

    else if (v4 >= 1 && this)
    {
      v28 = (a2 + a3 - 1);
      do
      {
        *v28 = 0;
        v28 += a4;
        this = (this - 1);
      }

      while (this);
    }
  }

  else if (this)
  {
    v26 = (a2 + a3 - 1);
    do
    {
      *(v26 - 1) = 0;
      *v26 = 0;
      v26 += a4;
      this = (this - 1);
    }

    while (this);
  }

  return this;
}

uint64_t acv2::Reinterleaver::Blit(uint64_t this, uint64_t a2, const unsigned __int8 *a3, unsigned __int8 *a4, int a5, int a6)
{
  LODWORD(v6) = a4;
  if (a4 >= 32)
  {
    v7 = (a2 + 16);
    v8 = a3 + 16;
    v9 = a4;
    do
    {
      if (this)
      {
        v10 = v8;
        v11 = v7;
        v12 = this;
        do
        {
          v13 = *v11;
          *(v10 - 1) = *(v11 - 1);
          *v10 = v13;
          v11 = (v11 + a5);
          v10 += a6;
          --v12;
        }

        while (v12);
      }

      LODWORD(v6) = v9 - 32;
      v7 += 2;
      v8 += 32;
      v14 = v9 <= 63;
      v9 -= 32;
    }

    while (!v14);
  }

  if (v6 >= 24)
  {
    v15 = v6;
    v16 = a2 - v6;
    v17 = &a3[-v6];
    do
    {
      if (this)
      {
        v18 = v17;
        v19 = v16;
        v20 = this;
        do
        {
          v21 = &v18[a4];
          v22 = *(v19 + a4 + 16);
          *v21 = *(v19 + a4);
          *(v21 + 2) = v22;
          v19 += a5;
          v18 += a6;
          --v20;
        }

        while (v20);
      }

      v23 = v15 - 24;
      v16 += 24;
      v17 += 24;
      v14 = v15 <= 47;
      v15 -= 24;
    }

    while (!v14);
    LODWORD(v6) = v23;
  }

  if (v6 >= 16)
  {
    v6 = v6;
    do
    {
      if (this)
      {
        v24 = &a3[a4 - v6];
        v25 = (a2 + a4 - v6);
        v26 = this;
        do
        {
          *v24 = *v25;
          v25 = (v25 + a5);
          v24 += a6;
          --v26;
        }

        while (v26);
      }

      v27 = v6 - 16;
      v14 = v6 <= 31;
      v6 -= 16;
    }

    while (!v14);
    LODWORD(v6) = v27;
  }

  if (v6 >= 12)
  {
    v28 = v6;
    v29 = a2 - v6;
    v30 = &a3[-v6];
    do
    {
      if (this)
      {
        v31 = v30;
        v32 = v29;
        v33 = this;
        do
        {
          v34 = &v31[a4];
          v35 = *(v32 + a4 + 8);
          *v34 = *(v32 + a4);
          *(v34 + 2) = v35;
          v32 += a5;
          v31 += a6;
          --v33;
        }

        while (v33);
      }

      v36 = v28 - 12;
      v29 += 12;
      v30 += 12;
      v14 = v28 <= 23;
      v28 -= 12;
    }

    while (!v14);
    LODWORD(v6) = v36;
  }

  if (v6 >= 8)
  {
    v6 = v6;
    do
    {
      if (this)
      {
        v37 = &a3[a4 - v6];
        v38 = (a2 + a4 - v6);
        v39 = this;
        do
        {
          *v37 = *v38;
          v38 = (v38 + a5);
          v37 += a6;
          --v39;
        }

        while (v39);
      }

      v40 = v6 - 8;
      v14 = v6 <= 15;
      v6 -= 8;
    }

    while (!v14);
    LODWORD(v6) = v40;
  }

  if (v6 > 3)
  {
    v6 = v6;
    do
    {
      if (this)
      {
        v41 = &a3[a4 - v6];
        v42 = (a2 + a4 - v6);
        v43 = this;
        do
        {
          *v41 = *v42;
          v42 = (v42 + a5);
          v41 += a6;
          --v43;
        }

        while (v43);
      }

      v44 = v6 - 4;
      v14 = v6 <= 7;
      v6 -= 4;
    }

    while (!v14);
    LODWORD(v6) = v44;
  }

  if (v6 < 3)
  {
    if (v6 == 2)
    {
      if (this)
      {
        v49 = a4 - 2;
        v50 = &a3[v49];
        v51 = (a2 + v49);
        do
        {
          *v50 = *v51;
          v51 = (v51 + a5);
          v50 += a6;
          this = (this - 1);
        }

        while (this);
      }
    }

    else if (v6 >= 1 && this)
    {
      v52 = a4 - 1;
      v53 = &a3[v52];
      v54 = (a2 + v52);
      do
      {
        *v53 = *v54;
        v54 += a5;
        v53 += a6;
        this = (this - 1);
      }

      while (this);
    }
  }

  else if (this)
  {
    v45 = a4 - 3 + 2;
    v46 = (a2 + v45);
    v47 = &a3[v45];
    do
    {
      v48 = *v46;
      *(v47 - 1) = *(v46 - 1);
      *v47 = v48;
      v46 += a5;
      v47 += a6;
      this = (this - 1);
    }

    while (this);
  }

  return this;
}

uint64_t TInterleaver_SIMD<PCMSInt16_SIMD>::Interleave(uint64_t result, const void **a2, char *__dst, int a4)
{
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v5 = *a2;

    return memcpy(__dst, v5, 2 * a4);
  }

  v6 = 0;
  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = v8 >> 2;
  v10 = result;
  v11 = 8 * result;
  v12 = 2 * result;
  v13 = 6 * result;
  v14 = 4 * result;
  while (result >= 8)
  {
    v15 = &a2[v6];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];
    v22 = &__dst[2 * v6];
    v23 = v15[6];
    v24 = v15[7];
    if (v7 >= 7)
    {
      v25 = 0;
      v26 = v9;
      do
      {
        v27 = *&v16[v25];
        v28 = *&v17[v25];
        v29 = *&v20[v25];
        v30 = *&v21[v25];
        LODWORD(v31) = vzip1_s16(v27, v28).u32[0];
        WORD2(v31) = *&v18[v25];
        HIWORD(v31) = *&v19[v25];
        LODWORD(v32) = vzip1_s16(v29, v30).u32[0];
        WORD2(v32) = *&v23[v25];
        HIWORD(v32) = *&v24[v25];
        LODWORD(v33) = vtrn2_s16(v27, v28).u32[0];
        WORD2(v33) = WORD1(*&v18[v25]);
        HIWORD(v33) = WORD1(*&v19[v25]);
        LODWORD(v34) = vtrn2_s16(v29, v30).u32[0];
        WORD2(v34) = WORD1(*&v23[v25]);
        HIWORD(v34) = WORD1(*&v24[v25]);
        LODWORD(v35) = vzip2_s16(v27, v28).u32[0];
        WORD2(v35) = WORD2(*&v18[v25]);
        HIWORD(v35) = WORD2(*&v19[v25]);
        LODWORD(v36) = vzip2_s16(v29, v30).u32[0];
        WORD2(v36) = WORD2(*&v23[v25]);
        HIWORD(v36) = WORD2(*&v24[v25]);
        v27.i32[0] = vuzp2_s16(vuzp2_s16(v27, v28), v27).u32[0];
        v27.i16[2] = HIWORD(*&v18[v25]);
        v27.i16[3] = HIWORD(*&v19[v25]);
        v29.i32[0] = vuzp2_s16(vuzp2_s16(v29, v30), v29).u32[0];
        v29.i16[2] = HIWORD(*&v23[v25]);
        v29.i16[3] = HIWORD(*&v24[v25]);
        *v22 = v31;
        *(v22 + 1) = v32;
        v37 = &v22[v12 + 8];
        *(v37 - 1) = v33;
        *v37 = v34;
        v38 = &v22[v14];
        *v38 = v35;
        *(v38 + 1) = v36;
        v39 = &v22[v13];
        *v39 = v27;
        v39[1] = v29;
        v25 += 4;
        v22 += v11;
        --v26;
      }

      while (v26);
      v16 = (v16 + v25 * 2);
      v17 = (v17 + v25 * 2);
      v18 = (v18 + v25 * 2);
      v19 = (v19 + v25 * 2);
      v20 = (v20 + v25 * 2);
      v21 = (v21 + v25 * 2);
      v23 = (v23 + v25 * 2);
      v24 = (v24 + v25 * 2);
    }

    if ((a4 & 3) != 0)
    {
      v40 = v22 + 8;
      v41 = a4 & 3;
      do
      {
        v42 = *v16++;
        LOWORD(v43) = v42;
        WORD1(v43) = *v17++;
        WORD2(v43) = *v18++;
        HIWORD(v43) = *v19++;
        v44 = *v20++;
        LOWORD(v45) = v44;
        WORD1(v45) = *v21++;
        WORD2(v45) = *v23++;
        HIWORD(v45) = *v24++;
        *(v40 - 1) = v43;
        *v40 = v45;
        v40 = (v40 + v12);
        --v41;
      }

      while (v41);
    }

    v46 = -8;
    v47 = 8;
LABEL_34:
    v6 += v47;
    result = (result + v46);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 4)
  {
    v48 = &a2[v6];
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v52 = v48[3];
    v53 = &__dst[2 * v6];
    if (v7 >= 7)
    {
      v54 = 0;
      v55 = v9;
      do
      {
        v56 = *&v49[v54];
        v57 = *&v50[v54];
        LODWORD(v58) = vzip1_s16(v56, v57).u32[0];
        WORD2(v58) = *&v51[v54];
        HIWORD(v58) = *&v52[v54];
        LODWORD(v59) = vtrn2_s16(v56, v57).u32[0];
        WORD2(v59) = WORD1(*&v51[v54]);
        v60 = v53;
        HIWORD(v59) = WORD1(*&v52[v54]);
        LODWORD(v61) = vzip2_s16(v56, v57).u32[0];
        WORD2(v61) = WORD2(*&v51[v54]);
        HIWORD(v61) = WORD2(*&v52[v54]);
        v56.i32[0] = vuzp2_s16(vuzp2_s16(v56, v57), v56).u32[0];
        v56.i16[2] = HIWORD(*&v51[v54]);
        v56.i16[3] = HIWORD(*&v52[v54]);
        *v53 = v58;
        v62 = &v53[v12];
        *v62 = v59;
        v63 = &v62[v12];
        *v63 = v61;
        v64 = &v63[v12];
        *v64 = v56;
        v54 += 4;
        v53 = v64 + v12;
        --v55;
      }

      while (v55);
      v53 = &v60[v11];
      v52 = (v52 + v54 * 2);
      v51 = (v51 + v54 * 2);
      v50 = (v50 + v54 * 2);
      v49 = (v49 + v54 * 2);
    }

    v65 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v66 = *v49++;
        LOWORD(v67) = v66;
        WORD1(v67) = *v50++;
        WORD2(v67) = *v51++;
        HIWORD(v67) = *v52++;
        *v53 = v67;
        v53 += v12;
        --v65;
      }

      while (v65);
    }

    v46 = -4;
    v47 = 4;
    goto LABEL_34;
  }

  if (result >= 2)
  {
    v68 = &a2[v6];
    v69 = *v68;
    v70 = v68[1];
    v71 = &__dst[2 * v6];
    v72 = v9;
    if (v7 >= 7)
    {
      do
      {
        v73 = *v69++;
        v74 = v73;
        v75 = *v70++;
        v76 = v71;
        v77 = vmovl_u16(v75);
        v78 = vmovl_u16(v74);
        v79 = vextq_s8(v77, v77, 8uLL).u64[0];
        v80 = vextq_s8(v78, v78, 8uLL).u64[0];
        *v71 = v78.i16[0];
        *(v71 + 1) = vzip1_s32(*&v78, *&v77).i16[2];
        v81 = &v71[v12];
        *(v81 + 1) = v77.i16[2];
        *v81 = vdup_lane_s32(*v78.i8, 1).u16[0];
        v82 = &v71[v12 + v12];
        *(v82 + 1) = vzip1_s32(v80, v79).i16[2];
        *v82 = v80.i16[0];
        v83 = &v82[v12];
        *(v83 + 1) = v79.i16[2];
        *v83 = vdup_laneq_s32(v78, 3).u16[0];
        v71 = &v83[v12];
        --v72;
      }

      while (v72);
      v71 = &v76[v11];
    }

    v84 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v86 = v69->i16[0];
        v69 = (v69 + 2);
        v85 = v86;
        v87 = v70->i16[0];
        v70 = (v70 + 2);
        *(v71 + 1) = v87;
        *v71 = v85;
        v71 += v12;
        --v84;
      }

      while (v84);
    }

    v46 = -2;
    v47 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v88 = a2[v6];
    v89 = 2 * v10;
    v90 = &__dst[2 * v6];
    do
    {
      v91 = *v88++;
      *v90 = v91;
      v90 += v89;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t TInterleaver_SIMD<PCMSInt32_SIMD>::Interleave(uint64_t result, const void **a2, char *__dst, int a4)
{
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v5 = *a2;

    return memcpy(__dst, v5, 4 * a4);
  }

  v6 = 0;
  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = v8 >> 2;
  v10 = result;
  v11 = 16 * result;
  v12 = 4 * result;
  v13 = 12 * result;
  v14 = 8 * result;
  while (result >= 8)
  {
    v15 = &a2[v6];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];
    v22 = &__dst[4 * v6];
    v23 = v15[6];
    v24 = v15[7];
    if (v7 >= 7)
    {
      v25 = 0;
      v26 = v9;
      do
      {
        v27 = *&v16[v25];
        v28 = *&v17[v25];
        v29 = *&v20[v25];
        v30 = *&v21[v25];
        *&v31 = vzip1q_s32(v27, v28).u64[0];
        DWORD2(v31) = *&v18[v25];
        HIDWORD(v31) = *&v19[v25];
        *&v32 = vzip1q_s32(v29, v30).u64[0];
        DWORD2(v32) = *&v23[v25];
        HIDWORD(v32) = *&v24[v25];
        *&v33 = vtrn2q_s32(v27, v28).u64[0];
        DWORD2(v33) = HIDWORD(*&v18[v25]);
        HIDWORD(v33) = HIDWORD(*&v19[v25]);
        *&v34 = vtrn2q_s32(v29, v30).u64[0];
        DWORD2(v34) = HIDWORD(*&v23[v25]);
        HIDWORD(v34) = HIDWORD(*&v24[v25]);
        *&v35 = vzip2q_s32(v27, v28).u64[0];
        DWORD2(v35) = *&v18[v25 + 2];
        HIDWORD(v35) = *&v19[v25 + 2];
        *&v36 = vzip2q_s32(v29, v30).u64[0];
        DWORD2(v36) = *&v23[v25 + 2];
        HIDWORD(v36) = *&v24[v25 + 2];
        v27.i64[0] = vuzp2q_s32(vuzp2q_s32(v27, v28), v27).u64[0];
        v27.i32[2] = HIDWORD(*&v18[v25]);
        v27.i32[3] = HIDWORD(*&v19[v25]);
        v28.i64[0] = vuzp2q_s32(vuzp2q_s32(v29, v30), v29).u64[0];
        v28.i32[2] = HIDWORD(*&v23[v25]);
        v28.i32[3] = HIDWORD(*&v24[v25]);
        *v22 = v31;
        *(v22 + 1) = v32;
        v37 = &v22[v12 + 16];
        *(v37 - 1) = v33;
        *v37 = v34;
        v38 = &v22[v14];
        *v38 = v35;
        *(v38 + 1) = v36;
        v39 = &v22[v13];
        *v39 = v27;
        v39[1] = v28;
        v25 += 4;
        v22 += v11;
        --v26;
      }

      while (v26);
      v16 = (v16 + v25 * 4);
      v17 = (v17 + v25 * 4);
      v18 = (v18 + v25 * 4);
      v19 = (v19 + v25 * 4);
      v20 = (v20 + v25 * 4);
      v21 = (v21 + v25 * 4);
      v23 = (v23 + v25 * 4);
      v24 = (v24 + v25 * 4);
    }

    if ((a4 & 3) != 0)
    {
      v40 = v22 + 16;
      v41 = a4 & 3;
      do
      {
        v42 = *v16++;
        LODWORD(v43) = v42;
        DWORD1(v43) = *v17++;
        DWORD2(v43) = *v18++;
        HIDWORD(v43) = *v19++;
        v44 = *v20++;
        LODWORD(v45) = v44;
        DWORD1(v45) = *v21++;
        DWORD2(v45) = *v23++;
        HIDWORD(v45) = *v24++;
        *(v40 - 1) = v43;
        *v40 = v45;
        v40 = (v40 + v12);
        --v41;
      }

      while (v41);
    }

    v46 = -8;
    v47 = 8;
LABEL_34:
    v6 += v47;
    result = (result + v46);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 4)
  {
    v48 = &a2[v6];
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v52 = v48[3];
    v53 = &__dst[4 * v6];
    if (v7 >= 7)
    {
      v54 = 0;
      v55 = v9;
      do
      {
        v56 = *&v49[v54];
        v57 = *&v50[v54];
        *&v58 = vzip1q_s32(v56, v57).u64[0];
        DWORD2(v58) = *&v51[v54];
        HIDWORD(v58) = *&v52[v54];
        *&v59 = vtrn2q_s32(v56, v57).u64[0];
        DWORD2(v59) = HIDWORD(*&v51[v54]);
        v60 = v53;
        HIDWORD(v59) = HIDWORD(*&v52[v54]);
        *&v61 = vzip2q_s32(v56, v57).u64[0];
        DWORD2(v61) = *&v51[v54 + 2];
        HIDWORD(v61) = *&v52[v54 + 2];
        v56.i64[0] = vuzp2q_s32(vuzp2q_s32(v56, v57), v56).u64[0];
        v56.i32[2] = HIDWORD(*&v51[v54]);
        v56.i32[3] = HIDWORD(*&v52[v54]);
        *v53 = v58;
        v62 = &v53[v12];
        *v62 = v59;
        v63 = &v62[v12];
        *v63 = v61;
        v64 = &v63[v12];
        *v64 = v56;
        v54 += 4;
        v53 = &v64->i8[v12];
        --v55;
      }

      while (v55);
      v53 = &v60[v11];
      v52 = (v52 + v54 * 4);
      v51 = (v51 + v54 * 4);
      v50 = (v50 + v54 * 4);
      v49 = (v49 + v54 * 4);
    }

    v65 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v66 = *v49++;
        LODWORD(v67) = v66;
        DWORD1(v67) = *v50++;
        DWORD2(v67) = *v51++;
        HIDWORD(v67) = *v52++;
        *v53 = v67;
        v53 += v12;
        --v65;
      }

      while (v65);
    }

    v46 = -4;
    v47 = 4;
    goto LABEL_34;
  }

  if (result >= 2)
  {
    v68 = &a2[v6];
    v69 = *v68;
    v70 = v68[1];
    v71 = &__dst[4 * v6];
    v72 = v9;
    if (v7 >= 7)
    {
      do
      {
        v73 = *v69++;
        v74 = v73;
        v75 = v71;
        v76 = *v70++;
        v77 = vzip1_s32(*v74.i8, *v76.i8);
        v78 = vzip2_s32(*v74.i8, *v76.i8);
        v79 = vextq_s8(v76, v76, 8uLL).u64[0];
        v74.i64[0] = vextq_s8(v74, v74, 8uLL).u64[0];
        *v71 = v77;
        v80 = (v71 + v12);
        *v80 = v78;
        v81 = (v80 + v12);
        *v81 = vzip1_s32(*v74.i8, v79);
        v82 = (v81 + v12);
        *v82 = vzip2_s32(*v74.i8, v79);
        v71 = (v82 + v12);
        --v72;
      }

      while (v72);
      v71 = &v75[v11 / 8];
    }

    v83 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v84 = v69->i32[0];
        v69 = (v69 + 4);
        v85.i32[0] = v84;
        v85.i32[1] = v70->i32[0];
        v70 = (v70 + 4);
        *v71 = v85;
        v71 = (v71 + v12);
        --v83;
      }

      while (v83);
    }

    v46 = -2;
    v47 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v86 = a2[v6];
    v87 = 4 * v10;
    v88 = &__dst[4 * v6];
    do
    {
      v89 = *v86++;
      *v88 = v89;
      v88 += v87;
      --a4;
    }

    while (a4);
  }

  return result;
}

double TInterleaver_SIMD<PCMFloat64_SIMD>::Interleave(int a1, const void **a2, char *__dst, int a4)
{
  if (!a1)
  {
    return *v5.i64;
  }

  if (a1 == 1)
  {
    v4 = *a2;

    memcpy(__dst, v4, 8 * a4);
    return *v5.i64;
  }

  v6 = 0;
  v7 = (a4 + 3);
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = v8 >> 2;
  v10 = a4 & 3;
  v113 = a1;
  v11 = 2 * a1;
  v12 = 8 * a1;
  v13 = 24 * a1;
  v14 = a1;
  v115 = a4;
  v114 = v10;
  while (a1 >= 8)
  {
    v15 = &a2[v6];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];
    v22 = &__dst[8 * v6];
    v23 = v15[6];
    v24 = v15[7];
    if (v7 >= 7)
    {
      v25 = v7;
      v26 = 0;
      v27 = v9;
      do
      {
        v29 = *&v16[v26];
        v28 = *&v16[v26 + 2];
        v31 = *&v17[v26];
        v30 = *&v17[v26 + 2];
        v33 = *&v18[v26];
        v32 = *&v18[v26 + 2];
        v35 = *&v20[v26];
        v34 = *&v20[v26 + 2];
        v37 = *&v21[v26];
        v36 = *&v21[v26 + 2];
        v39 = *&v23[v26];
        v38 = *&v23[v26 + 2];
        v40 = vzip1q_s64(v29, v31);
        v41 = vzip1q_s64(v33, *&v19[v26]);
        v42 = vzip1q_s64(v35, v37);
        v43 = vzip1q_s64(v39, *&v24[v26]);
        v33.i64[0] = vdupq_laneq_s64(v33, 1).u64[0];
        v33.i64[1] = v19[v26 + 1];
        v44 = vzip2q_s64(v29, v31);
        v45 = vzip2q_s64(v35, v37);
        v46.i64[0] = vdupq_laneq_s64(v39, 1).u64[0];
        v46.i64[1] = v24[v26 + 1];
        v47 = vzip1q_s64(v28, v30);
        v48 = vzip1q_s64(v32, *&v19[v26 + 2]);
        v49 = vzip1q_s64(v38, *&v24[v26 + 2]);
        v32.i64[0] = vdupq_laneq_s64(v32, 1).u64[0];
        v5 = vzip2q_s64(v28, v30);
        v32.i64[1] = v19[v26 + 3];
        v50.i64[0] = vdupq_laneq_s64(v38, 1).u64[0];
        v50.i64[1] = v24[v26 + 3];
        *v22 = v40;
        v22[1] = v41;
        v22[2] = v42;
        v22[3] = v43;
        v51 = (v22 + v12 + 32);
        v51[-2] = v44;
        v51[-1] = v33;
        *v51 = v45;
        v51[1] = v46;
        v52 = &v22[v14];
        *v52 = v47;
        v52[1] = v48;
        v52[2] = vzip1q_s64(v34, v36);
        v52[3] = v49;
        v53 = (v22 + v13);
        *v53 = v5;
        v53[1] = v32;
        v53[2] = vzip2q_s64(v34, v36);
        v53[3] = v50;
        v26 += 4;
        v22 = (v22 + v11 * 16);
        --v27;
      }

      while (v27);
      v16 = (v16 + v26 * 8);
      v17 = (v17 + v26 * 8);
      v18 = (v18 + v26 * 8);
      v19 = (v19 + v26 * 8);
      v20 = (v20 + v26 * 8);
      v21 = (v21 + v26 * 8);
      v23 = (v23 + v26 * 8);
      v24 = (v24 + v26 * 8);
      v7 = v25;
      a4 = v115;
      v10 = v114;
    }

    if (v10)
    {
      v54 = v22 + 2;
      v55 = v10;
      do
      {
        v56 = *v16++;
        v5.i64[0] = v56;
        v5.i64[1] = *v17++;
        v57 = *v18++;
        v58.i64[0] = v57;
        v58.i64[1] = *v19++;
        v59 = *v20++;
        v60.i64[0] = v59;
        v60.i64[1] = *v21++;
        v61 = *v23++;
        v62.i64[0] = v61;
        v62.i64[1] = *v24++;
        v54[-2] = v5;
        v54[-1] = v58;
        *v54 = v60;
        v54[1] = v62;
        v54 = (v54 + v12);
        --v55;
      }

      while (v55);
    }

    v63 = -8;
    v64 = 8;
LABEL_34:
    v6 += v64;
    a1 += v63;
    if (!a1)
    {
      return *v5.i64;
    }
  }

  if (a1 >= 4)
  {
    v65 = &a2[v6];
    v66 = *v65;
    v67 = v65[1];
    v68 = v65[2];
    v69 = v65[3];
    v70 = &__dst[8 * v6];
    if (v7 >= 7)
    {
      v71 = 0;
      v72 = v9;
      do
      {
        v73 = v70;
        v75 = *&v66[v71];
        v74 = *&v66[v71 + 2];
        v77 = *&v67[v71];
        v76 = *&v67[v71 + 2];
        v79 = *&v68[v71];
        v78 = *&v68[v71 + 2];
        v80 = vzip1q_s64(v75, v77);
        v81 = vzip1q_s64(v79, *&v69[v71]);
        v79.i64[0] = vdupq_laneq_s64(v79, 1).u64[0];
        v82 = vzip2q_s64(v75, v77);
        v79.i64[1] = v69[v71 + 1];
        v83 = vzip1q_s64(v74, v76);
        v84 = vzip1q_s64(v78, *&v69[v71 + 2]);
        v5 = vzip2q_s64(v74, v76);
        v76.i64[0] = vdupq_laneq_s64(v78, 1).u64[0];
        v76.i64[1] = v69[v71 + 3];
        *v70 = v80;
        v70[1] = v81;
        v85 = (v70 + v12);
        *v85 = v82;
        v85[1] = v79;
        v86 = (v70 + v12 + v12);
        *v86 = v83;
        v86[1] = v84;
        v87 = (v86 + v12);
        *v87 = v5;
        v87[1] = v76;
        v71 += 4;
        v70 = (v87 + v12);
        --v72;
      }

      while (v72);
      v70 = &v73[v11];
      v69 = (v69 + v71 * 8);
      v68 = (v68 + v71 * 8);
      v67 = (v67 + v71 * 8);
      v66 = (v66 + v71 * 8);
    }

    for (i = v10; i; --i)
    {
      v89 = *v66++;
      v5.i64[0] = v89;
      v5.i64[1] = *v67++;
      v90 = *v68++;
      v91.i64[0] = v90;
      v91.i64[1] = *v69++;
      *v70 = v5;
      v70[1] = v91;
      v70 = (v70 + v12);
    }

    v63 = -4;
    v64 = 4;
    goto LABEL_34;
  }

  if (a1 >= 2)
  {
    v92 = &a2[v6];
    v93 = *v92;
    v94 = v92[1];
    v95 = &__dst[8 * v6];
    v96 = v9;
    if (v7 >= 7)
    {
      do
      {
        v97 = v95;
        v99 = *v93;
        v98 = *(v93 + 1);
        v93 += 2;
        v101 = *v94;
        v100 = *(v94 + 1);
        v94 += 2;
        v102 = vzip1q_s64(v99, v101);
        v103 = vzip2q_s64(v99, v101);
        v104 = vzip1q_s64(v98, v100);
        v5 = vzip2q_s64(v98, v100);
        *v95 = v102;
        *(v95 + v12) = v103;
        v105 = (v95 + v12 + v12);
        *v105 = v104;
        v106 = (v105 + v12);
        *v106 = v5;
        v95 = (v106 + v12);
        --v96;
      }

      while (v96);
      v95 = &v97[v11];
    }

    for (j = v10; j; --j)
    {
      v108 = *v93;
      v93 = (v93 + 8);
      v5.i64[0] = v108;
      v5.i64[1] = *v94;
      v94 = (v94 + 8);
      *v95 = v5;
      v95 = (v95 + v12);
    }

    v63 = -2;
    v64 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v109 = a2[v6];
    v110 = &__dst[8 * v6];
    do
    {
      v111 = *v109++;
      v5.i64[0] = v111;
      *v110 = v111;
      v110 += 8 * v113;
      --a4;
    }

    while (a4);
  }

  return *v5.i64;
}

double TDeinterleaver_SIMD<PCMFloat64_SIMD>::Deinterleave(int a1, char *a2, void **a3, int a4)
{
  if (!a1)
  {
    return *v5.i64;
  }

  if (a1 == 1)
  {
    v4 = *a3;

    memcpy(v4, a2, 8 * a4);
    return *v5.i64;
  }

  v6 = 0;
  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = (v8 >> 2);
  v109 = a1;
  v10 = a4 & 3;
  v11 = 32 * a1;
  v12 = 8 * a1;
  while (a1 >= 8)
  {
    v13 = &a2[8 * v6];
    v14 = &a3[v6];
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    v20 = v14[5];
    v21 = v14[6];
    v22 = v14[7];
    if (v7 >= 7)
    {
      v23 = v11;
      v24 = 0;
      v25 = v9;
      v26 = v9;
      do
      {
        v27 = v13;
        v28 = &v15[v24 / 0x10];
        v29 = &v16[v24];
        v30 = &v18[v24 / 8];
        v31 = &v17[v24 / 8];
        v32 = &v19[v24 / 0x10];
        v33 = &v20[v24];
        v34 = &v21[v24 / 8];
        v35 = &v22[v24 / 8];
        v36 = v27[1];
        v38 = v27[2];
        v37 = v27[3];
        v40 = *(v27 + v12);
        v39 = *(&v27[1] + v12);
        v42 = *(&v27[2] + v12);
        v41 = *(&v27[3] + v12);
        v43 = (v27 + v12 + v12);
        v45 = *v43;
        v44 = v43[1];
        v47 = v43[2];
        v46 = v43[3];
        v48 = (v43 + v12);
        v49 = vzip1q_s64(*v27, v40);
        v50 = vzip1q_s64(v45, *v48);
        v51 = vzip2q_s64(*v27, v40);
        v40.i64[0] = vdupq_laneq_s64(v45, 1).u64[0];
        v40.i64[1] = v48->i64[1];
        v52 = vzip1q_s64(v36, v39);
        v53 = vzip1q_s64(v44, v48[1]);
        v44.i64[0] = vdupq_laneq_s64(v44, 1).u64[0];
        v5 = vzip2q_s64(v36, v39);
        v44.i64[1] = v48[1].i64[1];
        v54 = vzip1q_s64(v38, v42);
        v55 = vzip1q_s64(v47, v48[2]);
        v56 = vzip2q_s64(v38, v42);
        v42.i64[0] = vdupq_laneq_s64(v47, 1).u64[0];
        v42.i64[1] = v48[2].i64[1];
        v57 = vzip1q_s64(v37, v41);
        v58 = vzip1q_s64(v46, v48[3]);
        v59 = vzip2q_s64(v37, v41);
        v41.i64[0] = vdupq_laneq_s64(v46, 1).u64[0];
        v41.i64[1] = v48[3].i64[1];
        *v28 = v49;
        v28[1] = v50;
        *v29 = v51;
        v29[1] = v40;
        *v30 = v52;
        v30[1] = v53;
        *v31 = v5;
        v31[1] = v44;
        *v32 = v54;
        v32[1] = v55;
        *v33 = v56;
        v33[1] = v42;
        *v34 = v57;
        v34[1] = v58;
        *v35 = v59;
        v35[1] = v41;
        v24 += 32;
        v13 = (v48 + v12);
        --v26;
      }

      while (v26);
      v11 = v23;
      v13 = (v27 + v23);
      v15 = (v15 + v24);
      v16 += v24;
      v18 = (v18 + v24);
      v17 = (v17 + v24);
      v19 = (v19 + v24);
      v20 += v24;
      v21 = (v21 + v24);
      v22 = (v22 + v24);
      v9 = v25;
      v10 = a4 & 3;
    }

    if (v10)
    {
      v60 = v13 + 2;
      v61 = v10;
      do
      {
        v5 = v60[-1];
        v63 = *v60;
        v62 = v60[1];
        *v15 = v60[-2];
        v15 = (v15 + 8);
        v16 += 8;
        *v18++ = v5.i64[0];
        *v17++ = v5.i64[1];
        *v19 = v63;
        v19 = (v19 + 8);
        v20 += 8;
        *v21++ = v62.i64[0];
        v60 = (v60 + v12);
        *v22++ = v62.i64[1];
        --v61;
      }

      while (v61);
    }

    v64 = -8;
    v65 = 8;
LABEL_34:
    v6 += v65;
    a1 += v64;
    if (!a1)
    {
      return *v5.i64;
    }
  }

  if (a1 >= 4)
  {
    v66 = &a2[8 * v6];
    v67 = &a3[v6];
    v68 = *v67;
    v69 = v67[1];
    v71 = v67[2];
    v70 = v67[3];
    if (v7 >= 7)
    {
      v72 = 0;
      v73 = v9;
      do
      {
        v74 = v66;
        v75 = &v70[v72];
        v76 = &v71[v72];
        v77 = &v69[v72];
        v78 = &v68[v72];
        v79 = v74[1];
        v81 = *(v74 + v12);
        v80 = *(&v74[1] + v12);
        v82 = (v74 + v12 + v12);
        v84 = *v82;
        v83 = v82[1];
        v85 = (v82 + v12);
        v86 = vzip1q_s64(*v74, v81);
        v87 = vzip1q_s64(v84, *v85);
        v88 = vzip2q_s64(*v74, v81);
        v81.i64[0] = vdupq_laneq_s64(v84, 1).u64[0];
        v81.i64[1] = v85->i64[1];
        v89 = vzip1q_s64(v79, v80);
        v90 = vzip1q_s64(v83, v85[1]);
        v83.i64[0] = vdupq_laneq_s64(v83, 1).u64[0];
        v83.i64[1] = v85[1].i64[1];
        v5 = vzip2q_s64(v79, v80);
        *v78 = v86;
        v78[1] = v87;
        *v77 = v88;
        v77[1] = v81;
        *v76 = v89;
        v76[1] = v90;
        *v75 = v5;
        v75[1] = v83;
        v72 += 4;
        v66 = (v85 + v12);
        --v73;
      }

      while (v73);
      v66 = (v74 + v11);
      v70 = (v70 + v72 * 8);
      v71 = (v71 + v72 * 8);
      v69 = (v69 + v72 * 8);
      v68 = (v68 + v72 * 8);
    }

    for (i = v10; i; --i)
    {
      v92 = *v66;
      v5 = v66[1];
      *v68++ = v66->i64[0];
      *v69++ = v92.i64[1];
      *v71++ = v5.i64[0];
      *v70++ = v5.i64[1];
      v66 = (v66 + v12);
    }

    v64 = -4;
    v65 = 4;
    goto LABEL_34;
  }

  if (a1 >= 2)
  {
    v93 = &a2[8 * v6];
    v94 = &a3[v6];
    v95 = *v94;
    v96 = v94[1];
    v97 = v9;
    if (v7 >= 7)
    {
      do
      {
        v98 = v93;
        v99 = *(v93 + v12);
        v100 = (v93 + v12 + v12);
        v101 = *v100;
        v102 = (v100 + v12);
        v103 = vzip1q_s64(*v93, v99);
        v104 = vzip1q_s64(v101, *v102);
        v5 = vzip2q_s64(*v93, v99);
        v99.i64[0] = vdupq_laneq_s64(v101, 1).u64[0];
        v99.i64[1] = v102->i64[1];
        *v95 = v103;
        v95[1] = v104;
        v95 += 2;
        *v96 = v5;
        v96[1] = v99;
        v96 += 2;
        v93 = (v102 + v12);
        --v97;
      }

      while (v97);
      v93 = (v98 + v11);
    }

    for (j = v10; j; --j)
    {
      v5 = *v93;
      v95->i64[0] = v93->i64[0];
      v95 = (v95 + 8);
      v96->i64[0] = v5.i64[1];
      v96 = (v96 + 8);
      v93 = (v93 + v12);
    }

    v64 = -2;
    v65 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v106 = a3[v6];
    v107 = &a2[8 * v6];
    do
    {
      v5.i64[0] = *v107;
      *v106++ = *v107;
      v107 += v109;
      --a4;
    }

    while (a4);
  }

  return *v5.i64;
}

uint64_t acv2::Reinterleaver::GetPropertyInfo(acv2::Reinterleaver *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 != 1667788144)
  {
    return acv2::CBRConverter::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    *a3 = 4 * *(this + 21);
  }

  if (a4)
  {
    *a4 = 1;
  }

  return 0;
}

uint64_t acv2::Reinterleaver::description@<X0>(acv2::Reinterleaver *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  acv2::AudioConverterBase::description(this, __p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v4, v5);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 272) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "    Downmixing\n", 15);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "    Channel map:", 16);
    if (*(this + 21))
    {
      v6 = 0;
      do
      {
        LOBYTE(__p[0]) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, __p, 1);
        MEMORY[0x193ADEE50](&v13, *(*(this + 24) + 4 * v6++));
      }

      while (v6 < *(this + 21));
    }

    LOBYTE(__p[0]) = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, __p, 1);
  }

  if ((v20 & 0x10) != 0)
  {
    v8 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v8 = v16;
    }

    locale = v15[4].__locale_;
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_28;
    }

    locale = v15[1].__locale_;
    v8 = v15[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, locale, v7);
  }

LABEL_28:
  a2[v7] = 0;
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v21);
}

void sub_18F6FFCE4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x193ADF120](va);
  _Unwind_Resume(a1);
}

void acv2::Reinterleaver::SetChannelMap(uint64_t a1, char **a2)
{
  v3 = *(a1 + 84);
  v4 = (a1 + 192);
  if (v4 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(a1 + 264) = memcmp(*(a1 + 192), *(a1 + 216), (4 * v3)) == 0;

  acv2::Reinterleaver::BuildInverseChannelMap(a1);
}

uint64_t AUParameterListener::NotifyParameterValueChange(AUParameterListener *this, ParameterListenerBinding *a2)
{
  if (*(this + 64) == 1)
  {
    v4 = *(a2 + 2);
    LastValue = ParameterListenerBinding::GetLastValue(a2);
    v6 = *(this + 12);

    return std::function<void ()(void *,AudioUnitParameter const*,float)>::operator()(v6, v4, a2 + 32, LastValue);
  }

  else
  {
    v8 = *(this + 4);
    v9 = *(this + 2);

    return CAEventReceiver::Impl::timerShouldFireWithin(v9, v8);
  }
}

AudioUnitParameterValue ParameterListenerBinding::GetLastValue(ParameterListenerBinding *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 15);
  }

  v5 = v1;
  v6 = v2;
  v4 = 0.0;
  AudioUnitGetParameter(*(this + 4), *(this + 10), *(this + 11), *(this + 12), &v4);
  return v4;
}

uint64_t std::function<void ()(void *,AudioUnitParameter const*,float)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

uint64_t CAEventReceiver::Impl::timerShouldFireWithin(CAEventReceiver::Impl *this, double a2)
{
  result = *(this + 5);
  if (result)
  {
    if (dispatch_source_testcancel(result))
    {
      return 0;
    }

    else
    {
      v5 = dispatch_time(0, (a2 * 1000000000.0));
      v6 = *(this + 10);
      if (v5 < v6)
      {
        v7 = *(this + 10);
        while (1)
        {
          atomic_compare_exchange_strong(this + 10, &v7, v5);
          if (v7 == v6)
          {
            break;
          }

          v6 = v7;
          if (v5 >= v7)
          {
            return 1;
          }
        }

        dispatch_source_set_timer(*(this + 5), v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      return 1;
    }
  }

  return result;
}

uint64_t AUParameterListener::RemoveBinding(AUParameterListener *this, ListenerBinding *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      if (++v5 == v4)
      {
        v5 = *(this + 15);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v6 = v4 - (v5 + 1);
    if (v4 != v5 + 1)
    {
      memmove(v5, v5 + 1, v4 - (v5 + 1));
    }

    *(this + 15) = v5 + v6;
  }

  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t ParameterListenerBinding::ParameterValueChange(ParameterListenerBinding *this, AUListener *a2, void *a3, float *a4)
{
  if (!a4)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v5 = *a4;
  if (*(this + 56) != 1 || *(this + 15) != v5)
  {
    *(this + 15) = v5;
    v6 = 1;
LABEL_6:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
  v6 = 1;
LABEL_8:
  *(this + 56) = v6;
  if (*(this + 1) == a2)
  {
    if (!a3)
    {
      return v7;
    }

    v8 = *(this + 2) == a3;
    if (!v7)
    {
      return v7;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      return v7;
    }
  }

  if (!v8)
  {
    (*(*this + 24))(this);
    (*(**(this + 1) + 64))(*(this + 1), this);
  }

  return v7;
}

void AUParameterListener::~AUParameterListener(AUParameterListener *this)
{
  AUParameterListener::~AUParameterListener(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327538;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(void *,AudioUnitParameter const*,float)>::~__value_func[abi:ne200100](this + 72);

  AUListener::~AUListener(this);
}

uint64_t std::__function::__value_func<void ()(void *,AudioUnitParameter const*,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AUListener::~AUListener(AUListener *this)
{
  *this = &unk_1F0327658;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CAEventReceiver::~CAEventReceiver(this + 2);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void CAEventReceiver::~CAEventReceiver(std::__shared_weak_count **this)
{
  if ((CAEventReceiver::invalidate(this) & 1) == 0)
  {
    std::terminate();
  }

  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t CAEventReceiver::invalidate(CAEventReceiver *this)
{
  v3 = *this;
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (!v3)
  {
    if (!v2)
    {
      return (v3 == 0) | v1 & 1u;
    }

    goto LABEL_22;
  }

  if (!*(v3 + 40))
  {
    goto LABEL_21;
  }

  std::shared_ptr<APComponent>::shared_ptr[abi:ne200100]<APComponent,0>(&v20, *v3, *(v3 + 8));
  v4 = *(v3 + 40);
  v14 = MEMORY[0x1E69E9820];
  v15 = 1174405120;
  v16 = ___ZN15CAEventReceiver4Impl10invalidateEv_block_invoke;
  v17 = &__block_descriptor_tmp_31;
  v18 = v20;
  v19 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_cancel_handler(v4, &v14);
  dispatch_source_cancel(*(v3 + 40));
  v5 = dispatch_semaphore_create(0);
  v6 = *(v3 + 96);
  *(v3 + 96) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = atomic_exchange((v3 + 88), 0xFFFFFFFFFFFFFFFFLL);
  if (v7)
  {
    if (v7 == pthread_self() || v7 == 1 && (v9 = *(v3 + 16), v9 == CFRunLoopGetCurrent()))
    {
      v8 = 0;
      goto LABEL_16;
    }

    v10 = *(v3 + 96);
    v11 = dispatch_time(0, 250000000);
    dispatch_semaphore_wait(v10, v11);
  }

  v8 = 1;
LABEL_16:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (!v8)
  {
    if (*(v3 + 32))
    {
      std::shared_ptr<APComponent>::shared_ptr[abi:ne200100]<APComponent,0>(&v14, *v3, *(v3 + 8));
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v3 + 32);
      operator new();
    }

    v1 = 0;
    if (v2)
    {
      goto LABEL_22;
    }

    return (v3 == 0) | v1 & 1u;
  }

LABEL_21:
  v1 = 1;
  if (v2)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return (v3 == 0) | v1 & 1u;
}

void sub_18F700808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::dispatch::v1::async<CAEventReceiver::Impl::deferredSelfDestruct(void)::{lambda(void)#1}>(dispatch_queue_s *,CAEventReceiver::Impl::deferredSelfDestruct(void)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1174405120;
    v6[2] = ___ZZN15CAEventReceiver4Impl20deferredSelfDestructEvENKUlvE_clEv_block_invoke;
    v6[3] = &__block_descriptor_tmp_35;
    v5 = a1[1];
    v6[4] = v2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CFRunLoopPerformBlock(v3, v4, v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  std::default_delete<CAEventReceiver::Impl::deferredSelfDestruct(void)::{lambda(void)#1}>::operator()[abi:ne200100](a1);
}

void sub_18F7008F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::default_delete<CAEventReceiver::Impl::deferredSelfDestruct(void)::{lambda(void)#1}>::operator()[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void std::default_delete<CAEventReceiver::Impl::deferredSelfDestruct(void)::{lambda(void)#1}>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x193ADF220);
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__110shared_ptrIN15CAEventReceiver4ImplEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_32c50_ZTSNSt3__110shared_ptrIN15CAEventReceiver4ImplEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t AUEventListenerBase::SendMessage(AUEventListenerBase *this, void *a2, const AudioUnitEvent *a3, float a4)
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = mach_absolute_time();
  v9 = *(*(this + 10) + 64);
  if (a3->mEventType)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    v11 = *(this + 15);
    goto LABEL_39;
  }

  v11 = *(this + 15);
  v12 = *(this + 12);
  if (*(this + 13) != v12)
  {
    v13 = *(v12 + 8 * (v11 / 0x49));
    v14 = v13 - 4088 * (v11 / 0x49) + 56 * v11;
    v15 = *(v12 + 8 * ((*(this + 16) + v11) / 0x49)) - 4088 * ((*(this + 16) + v11) / 0x49) + 56 * (*(this + 16) + v11);
    if (v14 != v15)
    {
      v16 = 0;
      v17 = v12 + 8 * (v11 / 0x49);
      mAudioUnit = a3->mArgument.mParameter.mAudioUnit;
      mParameterID = a3->mArgument.mParameter.mParameterID;
      mScope = a3->mArgument.mParameter.mScope;
      mElement = a3->mArgument.mParameter.mElement;
      while (1)
      {
        if (*(v14 + 8) == a2)
        {
          v24 = *(v14 + 24);
          if ((v24 - 1) >= 2)
          {
            if (!v24 && v8 - *v14 < v9 && *(v14 + 32) == mAudioUnit)
            {
              v27 = *(v14 + 40);
              v22 = v14;
              if (v27 == -1)
              {
                goto LABEL_12;
              }

              v22 = v14;
              if (mParameterID == -1)
              {
                goto LABEL_12;
              }

              if (v27 == mParameterID && *(v14 + 44) == mScope)
              {
                v22 = v16;
                if (*(v14 + 48) == mElement)
                {
                  v22 = v14;
                }

                goto LABEL_12;
              }
            }
          }

          else if (*(v14 + 32) == mAudioUnit)
          {
            v25 = *(v14 + 40);
            if (v25 == -1 || mParameterID == -1)
            {
              goto LABEL_23;
            }

            if (v25 == mParameterID && *(v14 + 44) == mScope)
            {
              v22 = v16;
              if (*(v14 + 48) != mElement)
              {
                goto LABEL_12;
              }

LABEL_23:
              v22 = 0;
              goto LABEL_12;
            }
          }
        }

        v22 = v16;
LABEL_12:
        v14 += 56;
        if (v14 - v13 == 4088)
        {
          v23 = *(v17 + 8);
          v17 += 8;
          v13 = v23;
          v14 = v23;
        }

        v16 = v22;
        if (v14 == v15)
        {
          if (v22)
          {
            *v22 = v8;
            *(v22 + 16) = a4;
            goto LABEL_55;
          }

          break;
        }
      }
    }
  }

LABEL_39:
  v28 = *(this + 13);
  v29 = *(this + 12);
  v39 = *&a3->mEventType;
  v40 = *&a3->mArgument.mProperty.mPropertyID;
  if (v28 == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = 73 * ((v28 - v29) >> 3) - 1;
  }

  v31 = *(this + 16) + v11;
  if (v30 == v31)
  {
    v32 = v11 >= 0x49;
    v33 = v11 - 73;
    if (!v32)
    {
      v34 = *(this + 14);
      v35 = *(this + 11);
      if (v28 - v29 < (v34 - v35))
      {
        if (v34 != v28)
        {
          operator new();
        }

        operator new();
      }

      if (v34 == v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = (v34 - v35) >> 2;
      }

      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v36);
    }

    *(this + 15) = v33;
    v41 = *v29;
    *(this + 12) = v29 + 8;
    std::__split_buffer<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *,std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>>::emplace_back<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>(this + 11, &v41);
    v29 = *(this + 12);
    v31 = *(this + 16) + *(this + 15);
  }

  v37 = *&v29[8 * (v31 / 0x49)] - 4088 * (v31 / 0x49) + 56 * v31;
  *(v37 + 16) = a4;
  *(v37 + 24) = v39;
  *v37 = v8;
  *(v37 + 8) = a2;
  *(v37 + 20) = 0;
  *(v37 + 40) = v40;
  ++*(this + 16);
  CAEventReceiver::Impl::timerShouldFireWithin(*(*(this + 10) + 16), *(*(this + 10) + 32));
LABEL_55:

  return os_unfair_recursive_lock_unlock();
}

void sub_18F7010D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

uint64_t AUEventListenerBase::NotifyParameterValueChange(AUEventListenerBase *this, ParameterListenerBinding *a2)
{
  v4 = *(a2 + 2);
  LastValue = ParameterListenerBinding::GetLastValue(a2);

  return AUEventListenerBase::SendMessage(this, v4, (a2 + 24), LastValue);
}

uint64_t AUEventListenerBase::RemoveBinding(AUEventListenerBase *this, ListenerBinding *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(this + 15);
  v6 = *(this + 12);
  v5 = *(this + 13);
  if (v5 == v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v61 = (this + 128);
    v16 = (v6 + ((((v4 * 0x70381C0E070381C1uLL) >> 64) >> 2) & 0x1FFFFFFFFFFFFFF8));
    v59 = 1;
    v17 = *(this + 12);
  }

  else
  {
    v7 = (v6 + 8 * (v4 / 0x49));
    v8 = *v7;
    v9 = *v7 - 4088 * (v4 / 0x49) + 56 * v4;
    v10 = *(this + 16);
    v61 = (this + 128);
    v11 = *(v6 + 8 * ((v10 + v4) / 0x49)) - 4088 * ((v10 + v4) / 0x49) + 56 * (v10 + v4);
    if (v9 != v11)
    {
      while (*(a2 + 2) != *(v9 + 8) || *(v9 + 24) != *(a2 + 6))
      {
        v9 += 56;
        if (v9 - v8 == 4088)
        {
          v12 = v7[1];
          ++v7;
          v8 = v12;
          v9 = v12;
        }

        if (v9 == v11)
        {
          goto LABEL_20;
        }
      }
    }

    if (v9 == v11)
    {
LABEL_20:
      v17 = *(this + 12);
      v9 = *(v6 + 8 * ((v10 + v4) / 0x49)) - 4088 * ((v10 + v4) / 0x49) + 56 * (v10 + v4);
    }

    else
    {
      v18 = v8;
      v19 = v9;
      for (i = v7; ; v18 = *i)
      {
        v19 += 56;
        if (v19 - v18 == 4088)
        {
          v21 = i[1];
          ++i;
          v19 = v21;
        }

        if (v19 == v11)
        {
          break;
        }

        if (*(a2 + 2) != *(v19 + 8) || *(v19 + 24) != *(a2 + 6))
        {
          v22 = *v19;
          v23 = *(v19 + 16);
          v24 = *(v19 + 32);
          *(v9 + 48) = *(v19 + 48);
          *(v9 + 16) = v23;
          *(v9 + 32) = v24;
          *v9 = v22;
          v9 += 56;
          v8 = *v7;
          if (v9 - *v7 == 4088)
          {
            v25 = v7[1];
            ++v7;
            v8 = v25;
            v9 = v25;
          }
        }
      }

      v17 = *(this + 12);
      v5 = *(this + 13);
      v4 = *(this + 15);
      v10 = *(this + 16);
    }

    v26 = v4 + v10;
    v27 = (v4 + v10) / 0x49;
    v28 = (v17 + 8 * v27);
    if (v5 == v17)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 - 4088 * v27 + 56 * v26;
    }

    if (v29 == v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = 73 * (v28 - v7) + 0x6DB6DB6DB6DB6DB7 * ((v29 - *v28) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 3);
    }

    v16 = (v17 + 8 * (v4 / 0x49));
    v59 = v5 == v17;
    if (v5 == v17)
    {
      v13 = 0;
    }

    else
    {
      v13 = (*v16 - 4088 * (v4 / 0x49) + 56 * v4);
    }

    if (v9 == v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = 73 * ((v7 - v16) >> 3) + 0x6DB6DB6DB6DB6DB7 * ((v9 - *v7) >> 3) - 0x6DB6DB6DB6DB6DB7 * (&v13[-*v16] >> 3);
    }

    v6 = v5;
  }

  v63 = v16;
  v64 = v13;
  std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message*,AUEventListenerBase::Message&,AUEventListenerBase::Message**,long,73l>::operator+=[abi:ne200100](&v63, v15);
  if (v14 >= 1)
  {
    v58 = a2;
    v30 = v15;
    v31 = v63;
    v32 = v64;
    v33 = *v61;
    v34 = *v61 - v14;
    v62 = v30;
    if (v30 <= v34 >> 1)
    {
      std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message*,AUEventListenerBase::Message&,AUEventListenerBase::Message**,long,73l>::operator+=[abi:ne200100](&v63, v14);
      if (v31 == v16)
      {
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(&v63, v13, v32, v63, v64);
        a2 = v58;
        v15 = v62;
      }

      else
      {
        v51 = *v31;
        v50 = (v31 - 8);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(&v63, v51, v32, v63, v64);
        v52 = v64;
        v53 = v65;
        if (v50 == v16)
        {
          a2 = v58;
          v15 = v62;
        }

        else
        {
          a2 = v58;
          v15 = v62;
          do
          {
            v54 = *v50--;
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(&v63, v54, v54 + 4088, v52, v53);
            v52 = v64;
            v53 = v65;
          }

          while (v50 != v16);
        }

        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(&v63, v13, *v50 + 4088, v52, v53);
      }

      v55 = *(this + 16) - v14;
      *(this + 15) += v14;
      *(this + 16) = v55;
        ;
      }

      v4 = *(this + 15);
      v17 = *(this + 12);
      v6 = *(this + 13);
    }

    else
    {
      std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message*,AUEventListenerBase::Message&,AUEventListenerBase::Message**,long,73l>::operator+=[abi:ne200100](&v63, v14);
      v35 = v64;
      v36 = v4 + v33;
      v37 = (v4 + v33) / 0x49;
      v38 = (v17 + 8 * v37);
      if (v59)
      {
        v39 = 0;
      }

      else
      {
        v39 = &(*v38)[56 * v36 + -4088 * v37];
      }

      if (v63 != v38)
      {
        v40 = (v63 + 8);
        std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,AUEventListenerBase::Message *,AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(&v63, v64, (*v63 + 4088), v31, v32);
        v31 = v64;
        v32 = v65;
        if (v40 != v38)
        {
          v60 = v39;
          v41 = *v64;
          do
          {
            v42 = 0;
            v43 = *v40;
            while (1)
            {
              v44 = 0x6DB6DB6DB6DB6DB7 * ((v41 - v32 + 4088) >> 3);
              if (0x6DB6DB6DB6DB6DB7 * ((4088 - v42) >> 3) < v44)
              {
                v44 = 0x6DB6DB6DB6DB6DB7 * ((4088 - v42) >> 3);
              }

              v45 = 56 * v44;
              if (v44)
              {
                memmove(v32, &v43[v42], 56 * v44);
              }

              v42 += v45;
              if (v42 == 4088)
              {
                break;
              }

              v46 = *(v31 + 1);
              v31 += 8;
              v41 = v46;
              v32 = v46;
            }

            v32 += v45;
            v41 = *v31;
            if ((*v31 + 4088) == v32)
            {
              v47 = *(v31 + 1);
              v31 += 8;
              v41 = v47;
              v32 = v47;
            }

            ++v40;
          }

          while (v40 != v38);
          v39 = v60;
        }

        v35 = *v40;
      }

      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,AUEventListenerBase::Message *,AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(&v63, v35, v39, v31, v32);
      v48 = *(this + 16) - v14;
      *(this + 16) = v48;
      v6 = *(this + 13);
      v15 = v62;
      while (1)
      {
        v17 = *(this + 12);
        v49 = 73 * ((v6 - v17) >> 3) - 1;
        if (v6 == v17)
        {
          v49 = 0;
        }

        v4 = *(this + 15);
        if (v49 - (v48 + v4) < 0x92)
        {
          break;
        }

        operator delete(*(v6 - 8));
        v6 = *(this + 13) - 8;
        *(this + 13) = v6;
        v48 = *(this + 16);
      }

      a2 = v58;
    }
  }

  if (v6 == v17)
  {
    v56 = 0;
  }

  else
  {
    v56 = (*(v17 + 8 * (v4 / 0x49)) - 4088 * (v4 / 0x49) + 56 * v4);
  }

  v63 = (v17 + 8 * (v4 / 0x49));
  v64 = v56;
  std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message*,AUEventListenerBase::Message&,AUEventListenerBase::Message**,long,73l>::operator+=[abi:ne200100](&v63, v15);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  return os_unfair_recursive_lock_unlock();
}

void *std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message*,AUEventListenerBase::Message&,AUEventListenerBase::Message**,long,73l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = (result[1] - **result) / 56 + a2;
    if (v3 < 1)
    {
      v5 = 72 - v3;
      v6 = &v2[-(v5 / 0x49)];
      *result = v6;
      v4 = *v6 + 56 * (72 - (v5 % 0x49));
    }

    else
    {
      *result = &v2[v3 / 0x49];
      v4 = v2[v3 / 0x49] - 4088 * (v3 / 0x49) + 56 * v3;
    }

    result[1] = v4;
  }

  return result;
}

BOOL std::deque<AUEventListenerBase::Message>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0x92)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 73;
  }

  return v1 > 0x91;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,AUEventListenerBase::Message *,AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(void *result, _BYTE *__src, _BYTE *a3, void *a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v10 = *a4;
    while (1)
    {
      v11 = 0x6DB6DB6DB6DB6DB7 * ((v10 - __dst + 4088) >> 3);
      if (0x6DB6DB6DB6DB6DB7 * ((a3 - v9) >> 3) < v11)
      {
        v11 = 0x6DB6DB6DB6DB6DB7 * ((a3 - v9) >> 3);
      }

      v12 = 56 * v11;
      if (v11)
      {
        result = memmove(__dst, v9, 56 * v11);
      }

      v9 += v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = v6[1];
      ++v6;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if ((*v6 + 4088) == __dst)
    {
      v14 = v6[1];
      ++v6;
      __dst = v14;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AUEventListenerBase::Message *,std::__deque_iterator<AUEventListenerBase::Message,AUEventListenerBase::Message *,AUEventListenerBase::Message&,AUEventListenerBase::Message **,long,73l>,0>(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (&a5[-v10] >> 3);
      if (0x6DB6DB6DB6DB6DB7 * ((v11 - a2) >> 3) < v12)
      {
        v12 = 0x6DB6DB6DB6DB6DB7 * ((v11 - a2) >> 3);
      }

      v11 -= 56 * v12;
      a5 -= 56 * v12;
      if (v12)
      {
        result = memmove(a5, v11, 56 * v12);
      }

      if (v11 == a2)
      {
        break;
      }

      v13 = *--v6;
      v10 = v13;
      a5 = (v13 + 4088);
    }

    if ((*v6 + 4088) == a5)
    {
      v14 = v6[1];
      ++v6;
      a5 = v14;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

uint64_t PropertyListenerBinding::AUPropertyChanged(PropertyListenerBinding *this, OpaqueAudioComponentInstance *a2, OpaqueAudioComponentInstance *a3, unsigned int a4, AudioUnitElement a5)
{
  v6.mEventType = kAudioUnitEvent_PropertyChange;
  v6.mArgument.mParameter.mAudioUnit = a2;
  v6.mArgument.mParameter.mElement = a5;
  *&v6.mArgument.mProperty.mPropertyID = __PAIR64__(a4, a3);
  return AUEventListenerBase::SendMessage(*(this + 1), *(this + 2), &v6, 0.0);
}

void PropertyListenerBinding::~PropertyListenerBinding(PropertyListenerBinding *this)
{
  PropertyListenerBinding::~PropertyListenerBinding(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327610;
  AudioUnitRemovePropertyListenerWithUserData(*(this + 4), *(this + 10), PropertyListenerBinding::AUPropertyChanged, this);
}

uint64_t AUEventListener::MessagesAreAvailable(AUEventListener *this)
{
  while (1)
  {
    os_unfair_recursive_lock_lock_with_options();
    v2 = *(this + 16);
    if (v2)
    {
      v3 = *(this + 15);
      v4 = *(*(this + 12) + 8 * (v3 / 0x49)) - 4088 * (v3 / 0x49) + 56 * v3;
      v6 = *(v4 + 16);
      v5 = *(v4 + 32);
      v7 = *v4;
      v12 = *(v4 + 48);
      v11[0] = v6;
      v11[1] = v5;
      v10 = v7;
      *(this + 15) = v3 + 1;
      *(this + 16) = v2 - 1;
      std::deque<AUEventListenerBase::Message>::__maybe_remove_front_spare[abi:ne200100](this + 88);
      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v13 = v2;
    result = os_unfair_recursive_lock_unlock();
    if (v13 != 1)
    {
      break;
    }

    v16 = v11 + 8;
    v17 = *(&v10 + 1);
    v15 = v10;
    v14 = v11[0];
    v9 = *(this + 20);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9, &v17, &v16, &v15, &v14);
  }

  return result;
}

void AUEventListener::~AUEventListener(AUEventListener *this)
{
  AUEventListener::~AUEventListener(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03309F8;
  std::__function::__value_func<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::~__value_func[abi:ne200100](this + 136);
  *this = &unk_1F03275A0;
  std::deque<AUEventListenerBase::Message>::~deque[abi:ne200100](this + 88);

  AUListener::~AUListener(this);
}

uint64_t std::__function::__value_func<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::deque<AUEventListenerBase::Message>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 36;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 73;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t CAEventReceiver::createTimer(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v11, a2);
  if (*(a1 + 72))
  {
    std::terminate();
  }

  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a1 + 48, v11);
  if (!*(a1 + 40))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      global_queue = dispatch_get_global_queue(25, 0);
      v3 = dispatch_queue_create_with_target_V2("", 0, global_queue);
      v5 = *(a1 + 32);
      *(a1 + 32) = v3;
      if (v5)
      {
        dispatch_release(v5);
        v3 = *(a1 + 32);
      }
    }

    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
    v7 = *(a1 + 40);
    *(a1 + 40) = v6;
    if (v7)
    {
      dispatch_release(v7);
      v6 = *(a1 + 40);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZN15CAEventReceiver4Impl11createTimerENSt3__18functionIFvvEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_24;
    v10[4] = a1;
    dispatch_source_set_event_handler(v6, v10);
    dispatch_resume(*(a1 + 40));
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7021D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN15CAEventReceiver4Impl11createTimerENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    if (atomic_exchange((v1 + 88), 1uLL) != -1)
    {
      v3 = *(v1 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN15CAEventReceiver4Impl10timerFiredEv_block_invoke;
      block[3] = &__block_descriptor_tmp_25;
      block[4] = v1;
      CFRunLoopPerformBlock(v2, v3, block);
    }
  }

  else if (atomic_exchange((v1 + 88), pthread_self()) != -1)
  {
    atomic_store(0xFFFFFFFFFFFFFFFFLL, (v1 + 80));
    v4 = *(v1 + 72);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v4 + 48))(v4);
    v5 = atomic_load((v1 + 112));
    if (v5 >= 1)
    {
      atomic_fetch_add((v1 + 112), 0xFFFFFFFF);
      dispatch_semaphore_signal(*(v1 + 104));
    }

    if (atomic_exchange((v1 + 88), 0) == -1)
    {
      v6 = *(v1 + 96);

      dispatch_semaphore_signal(v6);
    }
  }
}

unint64_t ___ZN15CAEventReceiver4Impl10timerFiredEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = pthread_self();
  if (atomic_exchange((v1 + 88), result) != -1)
  {
    atomic_store(0xFFFFFFFFFFFFFFFFLL, (v1 + 80));
    v3 = *(v1 + 72);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v3 + 48))(v3);
    v4 = atomic_load((v1 + 112));
    if (v4 >= 1)
    {
      atomic_fetch_add((v1 + 112), 0xFFFFFFFF);
      result = dispatch_semaphore_signal(*(v1 + 104));
    }

    if (atomic_exchange((v1 + 88), 0) == -1)
    {
      v5 = *(v1 + 96);

      return dispatch_semaphore_signal(v5);
    }
  }

  return result;
}

uint64_t std::__function::__func<AUParameterListener::AUParameterListener(std::function<void ()(void *,AudioUnitParameter const*,float)>,CAEventReceiver,double)::$_0,std::allocator<AUParameterListener::AUParameterListener(std::function<void ()(void *,AudioUnitParameter const*,float)>,CAEventReceiver,double)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  os_unfair_recursive_lock_lock_with_options();
  v2 = v1[14];
  v3 = v1[15];
  while (v2 != v3)
  {
    v4 = *v2;
    if (atomic_exchange((*v2 + 64), 0))
    {
      v5 = *(v4 + 2);
      LastValue = ParameterListenerBinding::GetLastValue(v4);
      std::function<void ()(void *,AudioUnitParameter const*,float)>::operator()(v1[12], v5, v4 + 32, LastValue);
    }

    v2 += 8;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t std::__function::__func<AUParameterListener::AUParameterListener(std::function<void ()(void *,AudioUnitParameter const*,float)>,CAEventReceiver,double)::$_0,std::allocator<AUParameterListener::AUParameterListener(std::function<void ()(void *,AudioUnitParameter const*,float)>,CAEventReceiver,double)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0327808;
  a2[1] = v2;
  return result;
}

uint64_t AUParameterListener::AUParameterListener(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *a1 = &unk_1F0327658;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  v14[0] = 0;
  v14[1] = 0;
  *(a1 + 32) = a4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  CAEventReceiver::~CAEventReceiver(v14);
  *a1 = &unk_1F0327538;
  *(a1 + 64) = a4 == 0.0;
  v9 = a2 + 24;
  v10 = *(a2 + 24);
  if (v10)
  {
    if (v10 == a2)
    {
      *(a1 + 96) = a1 + 72;
      (*(**v9 + 24))();
      v13 = *(a1 + 64);
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    *(a1 + 96) = v10;
  }

  else
  {
    v9 = a1 + 96;
  }

  *v9 = 0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  if (a4 != 0.0)
  {
LABEL_6:
    v15[0] = &unk_1F0327808;
    v15[1] = a1;
    v15[3] = v15;
    CAEventReceiver::createTimer(*(a1 + 16), v15);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15);
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F702798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AUEventListenerBase::AUEventListenerBase(CAEventReceiver,double,double)::$_0,std::allocator<AUEventListenerBase::AUEventListenerBase(CAEventReceiver,double,double)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0327850;
  a2[1] = v2;
  return result;
}

void sub_18F702AE8(void *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  __clang_call_terminate(a1);
}

void caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine);
  }
}

uint64_t caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(uint64_t a1)
{
  for (i = 0; i != 10048; i += 2512)
  {
    v3 = a1 + i;
    v4 = 5489;
    *(a1 + i) = 5489;
    for (j = 1; j != 624; ++j)
    {
      v4 = j + 1812433253 * (v4 ^ (v4 >> 30));
      *(v3 + 4 * j) = v4;
    }

    *(v3 + 2496) = 0;
    *(v3 + 2504) = 0;
  }

  v6 = 0;
  *(a1 + 10048) = 0xFFFFFFFF00000000;
  do
  {
    v7 = mach_absolute_time();
    v8 = a1 + v6;
    *(a1 + v6) = v7;
    for (k = 1; k != 624; ++k)
    {
      v7 = k + 1812433253 * (v7 ^ (v7 >> 30));
      *(v8 + 4 * k) = v7;
    }

    *(v8 + 2496) = 0;
    v6 += 2512;
  }

  while (v6 != 10048);
  return a1;
}

uint64_t std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    for (i = caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::node_sizes[v2]; ; caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(a1 + 32, v5, i))
    {
      v5 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!v5)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    ++v2;
  }

  while (v2 != 10);

  return caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(a1 + 32);
}

uint64_t caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = atomic_load(v1);
      v4 = v1[1];
      v5 = *(v2 + 8);
      result = caulk::alloc::details::caching_page_allocator_base::deallocate();
      v1 = v3;
    }

    while (v3);
  }

  return result;
}

unint64_t *caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (result)
  {
    v7 = result;
    do
    {
      _X6 = atomic_load(result);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X6, X7, [X8] }

      if (_X4 == v7)
      {
        break;
      }

      result = _X4;
      v7 = _X4;
    }

    while (_X4);
  }

  return result;
}

uint64_t caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(uint64_t result, unint64_t a2, uint64_t a3)
{
  atomic_fetch_add((result + 36), 0x801u);
  v3 = *(result + 16);
  if (v3)
  {
    while ((v3 + 4) > a2 || a2 + a3 > (v3 + 2048))
    {
      v3 = atomic_load(v3);
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v3 = atomic_load((result + 40));
    if (v3)
    {
      v5 = (v3 + 4) > a2;
    }

    else
    {
      v5 = 1;
    }

    if (v5 || a2 + a3 > (v3 + 2048))
    {
      caulk::alloc::base_allocator::bad_dealloc(result);
    }
  }

  if ((v3 + 4) > a2 || a2 + a3 > (v3 + 2048))
  {
    caulk::alloc::base_allocator::bad_dealloc(result);
  }

  atomic_fetch_add((result + 36), 0xFFFFFFFF);
  return result;
}

void caulk::alloc::base_allocator::bad_dealloc(caulk::alloc::base_allocator *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  caulk::alloc::alloc_error::alloc_error(exception, v2);
}

std::runtime_error *caulk::alloc::alloc_error::alloc_error(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, "deallocate() called for unowned block");
  result->__vftable = &unk_1F033AD40;
  return result;
}

void caulk::alloc::alloc_error::~alloc_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F03277A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t ListenerMap::forEachBinding(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t, unint64_t, uint64_t))
{
  if (*result + 232 != a2)
  {
    v4 = result;
    do
    {
      v5 = atomic_load((a2 + 72));
      v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      if (*(a2 + 58) != 2)
      {
        v7 = atomic_load((a2 + 72));
        if ((v7 & 1) == 0)
        {
          result = (*a3)((a3 + 1), a2, a2 + 40);
          if (result)
          {
            break;
          }
        }
      }

      a2 = v6;
    }

    while (*v4 + 232 != v6);
  }

  return result;
}

uint64_t ListenerMap::forEachBindingForEvent(unint64_t a1, _OWORD *a2, uint64_t a3)
{
  v17 = 0;
  v6 = a1 + 320;
  v16[0] = a1;
  v16[1] = a1 + 320;
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  if (XAudioUnitEvent::cmp(a2, &kSentinelAudioUnitEvent))
  {
    v7 = a2[1];
    v14[0] = *a2;
    v14[1] = v7;
    v15 = 0;
    ge = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::iteration::find_ge(v16, v14);
  }

  else
  {
    ge = a1 + 232;
  }

  v12[0] = a2;
  v12[1] = a3;
  v12[2] = &v17;
  v13[0] = _ZN5caulk15rt_function_refIFbRKN11ListenerMap6MapKeyERNS1_7MapNodeEEE15functor_invokerIZZNS1_22forEachBindingForEventERK15XAudioUnitEventNS_12function_refIS7_EEENK3__0clEvEUlRKT_RT0_E_EEbRKNS_7details18erased_callable_rtIFbS4_S6_EEES4_S6_;
  v13[1] = v12;
  *&v14[0] = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>>;
  *(&v14[0] + 1) = v13;
  ListenerMap::forEachBinding(v16, ge, v14);
  v9 = v17;
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v6, v10);
  return v9;
}

uint64_t XAudioUnitEvent::cmp(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *a1 > *a2;
  }

  if (!v2)
  {
    v2 = *(a1 + 8);
    v4 = *(a2 + 8);
    v5 = v2 >= v4;
    LODWORD(v2) = v2 > v4;
    if (v5)
    {
      v2 = v2;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }

    if (*a1 > 2u)
    {
      if (v2)
      {
        return v2;
      }

      v6 = *(a1 + 16);
      v7 = *(a2 + 16);
    }

    else
    {
      if (v2)
      {
        return v2;
      }

      v6 = *(a1 + 16);
      if (v6 == -1)
      {
        return 0;
      }

      v7 = *(a2 + 16);
      if (v7 == -1)
      {
        return 0;
      }
    }

    v5 = v6 >= v7;
    LODWORD(v2) = v6 > v7;
    if (v5)
    {
      v2 = v2;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }

    if (!v2)
    {
      v8 = *(a1 + 20);
      v9 = *(a2 + 20);
      v5 = v8 >= v9;
      LODWORD(v2) = v8 > v9;
      if (v5)
      {
        v2 = v2;
      }

      else
      {
        v2 = 0xFFFFFFFFLL;
      }

      if (!v2)
      {
        v10 = *(a1 + 24);
        v11 = *(a2 + 24);
        v5 = v10 >= v11;
        LODWORD(v2) = v10 > v11;
        if (v5)
        {
          return v2;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v2;
}

uint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::iteration::find_ge(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 32);
  v6 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le>(v4, v11, 0);
  v8 = v7;
  if (XAudioUnitEvent::cmp(v6, a2))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v6 + 32) == *(a2 + 32);
  }

  if (!v9)
  {
    v6 = v8;
    if (*(v8 + 58) == 2)
    {
      return *a1 + 232;
    }
  }

  return v6;
}

unint64_t caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X19] }

  for (i = _X0; ; i = result)
  {
    v12 = (_X1 - 1);
    a2 = a2 & 0xFFFFFFFF00000000 | v12;
    _X2 = _X1 <= 1 ? 0 : i;
    _X1 = _X1 | (v2 << 32);
    __asm { CASPAL          X0, X1, X2, X3, [X19] }

    if (result == i)
    {
      break;
    }

    v2 = HIDWORD(_X1);
  }

  if (!v12 && i)
  {
    do
    {
      v15 = i;
      i = atomic_load((i + 64));
      v16 = *(a1 + 32);
      if (*(v16 + 32) == 1 && !*(v15 + 58))
      {
        (*v16)(a1 + 40, v15);
      }

      result = caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(a1 + 16), v15, caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::node_sizes[*(v15 + 56) - 1]);
    }

    while (i);
  }

  return result;
}

unint64_t caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  _X4 = a2;
  v4 = 0;
  while (caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::node_sizes[v4] < a3)
  {
    if (++v4 == 10)
    {
      __break(1u);
      break;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v7 = a1 + 32 * v4 + 48;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, a2);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, _X4);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X8] }

      v17 = _X2 ^ result;
      result = _X2;
    }

    while (v17);
  }

  atomic_fetch_add((v7 + 16), 1uLL);
  return result;
}

uint64_t _ZN5caulk15rt_function_refIFbRKN11ListenerMap6MapKeyERNS1_7MapNodeEEE15functor_invokerIZZNS1_22forEachBindingForEventERK15XAudioUnitEventNS_12function_refIS7_EEENK3__0clEvEUlRKT_RT0_E_EEbRKNS_7details18erased_callable_rtIFbS4_S6_EEES4_S6_(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (XAudioUnitEvent::cmp(a2, **a1))
  {
    return 1;
  }

  result = (*v5[1])(v5[1] + 8, a2, a3);
  if (result)
  {
    result = 1;
    *v5[2] = 1;
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le>(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = -1;
  v7 = 88;
  do
  {
    do
    {
      ++v6;
      v8 = atomic_load((a1 + v7));
      v7 += 16;
    }

    while (v6 < a3);
  }

  while (*((v8 & 0xFFFFFFFFFFFFFFFCLL) + 58) != 2);
  v9 = a1;
  if (v6 > a3)
  {
    v9 = a1;
    do
    {
      v9 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, v6--, v9, a2);
    }

    while (v6 > a3);
  }

  return caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, a3, v9, a2);
}

unint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le &>(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = atomic_load((a3 + 16 * a2 + 72));
  while (1)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 16);
    v17[0] = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
    v17[1] = v10;
    v18 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 32);
    v11 = XAudioUnitEvent::cmp(v17, a4);
    if (v11 || (v12 = *(a4 + 32), v11 = v18 > v12, v18 >= v12))
    {
      if (v11 > 0)
      {
        break;
      }
    }

    v13 = atomic_load((v9 + 72));
    v14 = v9;
    if (v13)
    {
      v14 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v5, v9);
      if (!v15)
      {
        caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v14, v9);
      }
    }

    v8 = atomic_load((v14 + 16 * a2 + 72));
    v5 = v14;
  }

  return v5;
}

unint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 | 2;
  do
  {
    v9 = (a3 + 16 * a2 + 72);
    v10 = atomic_load(v9);
    if (v10 == v8)
    {
      break;
    }

    v11 = a4;
    atomic_compare_exchange_strong(v9, &v11, v8);
    if (v11 == a4 || v11 == v8)
    {
      break;
    }

    v12 = atomic_load(v9);
    if (v12)
    {
      do
      {
        a3 = atomic_load((a3 + 16 * a2 + 80));
        v13 = atomic_load((a3 + 16 * a2 + 72));
      }

      while ((v13 & 1) != 0);
    }

    v14 = *(a4 + 16);
    v23[0] = *a4;
    v23[1] = v14;
    v24 = *(a4 + 32);
    v15 = a3;
    while (1)
    {
      a3 = v15;
      v16 = atomic_load((v15 + 16 * a2 + 72));
      v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 16);
      v25[0] = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
      v25[1] = v18;
      v26 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 32);
      v19 = XAudioUnitEvent::cmp(v25, v23);
      if (!v19)
      {
        break;
      }

      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      v20 = atomic_load((v17 + 72));
      v15 = v17;
      if (v20)
      {
        v15 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, a3, v17);
        if (!v21)
        {
          caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v15, v17);
        }
      }
    }

    if (v26 < v24)
    {
      goto LABEL_12;
    }

LABEL_15:
    ;
  }

  while (v17 == a4);
  return a3;
}

unint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _X20 = a4;
  v7 = result;
  v8 = a4 + 16 * a2;
  v9 = (v8 + 72);
  atomic_store(a3, (v8 + 80));
  while (1)
  {
    v10 = atomic_load(v9);
    if (v10)
    {
      break;
    }

    v11 = atomic_load(v9);
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v9, &v12, v12 | 1);
    if ((v12 & 2) != 0)
    {
      result = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v7, a2, _X20, v12 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  v13 = atomic_load(v9);
  v14 = _X20 | 2;
  atomic_compare_exchange_strong((a3 + 16 * a2 + 72), &v14, v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 == (_X20 | 2) && atomic_fetch_add((_X20 + 59), 0xFFu) == 1)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    atomic_store(_X2, (_X20 + 64));
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X8] }

    if (result != _X2)
    {
      do
      {
        atomic_store(result, (_X20 + 64));
        _X3 = 0;
        __asm { CASPAL          X2, X3, X20, X21, [X8] }

        v25 = _X2 ^ result;
        result = _X2;
      }

      while (v25);
    }
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::remove(unint64_t a1, uint64_t a2)
{
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  v4 = *(a2 + 16);
  v18 = *a2;
  v19 = v4;
  v20 = *(a2 + 32);
  v5 = -1;
  v6 = 88;
  do
  {
    v7 = atomic_load((a1 + v6));
    ++v5;
    v6 += 16;
  }

  while (*((v7 & 0xFFFFFFFFFFFFFFFCLL) + 58) != 2);
  v8 = a1;
  if (v5)
  {
    v8 = a1;
    do
    {
      v8 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, v5--, v8, &v18);
    }

    while (v5);
  }

  v9 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, 0, v8, &v18);
  v11 = v10;
  if (!XAudioUnitEvent::cmp(v10, a2))
  {
    v12 = *(v11 + 32);
    if (v12 == *(a2 + 32))
    {
      v13 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, 0, v9, v11);
      v15 = v14;
      if (!v14)
      {
        caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, 0, v13, v11);
      }

      if ((v15 & 0x100000000) != 0 && v11)
      {
        v16 = *(a2 + 16);
        v18 = *a2;
        v19 = v16;
        v20 = *(a2 + 32);
        caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v18, 0);
      }
    }
  }

  return caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 320, v12);
}

unint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = atomic_load((a3 + 16 * a2 + 72));
  while (1)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 16);
    v16[0] = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
    v16[1] = v10;
    v17 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 32);
    v11 = XAudioUnitEvent::cmp(v16, a4);
    if (!v11)
    {
      break;
    }

    if ((v11 & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_6:
    v12 = atomic_load((v9 + 72));
    v13 = v9;
    if (v12)
    {
      v13 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v5, v9);
      if (!v14)
      {
        caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v13, v9);
      }
    }

    v8 = atomic_load((v13 + 16 * a2 + 72));
    v5 = v13;
  }

  if (v17 < *(a4 + 32))
  {
    goto LABEL_6;
  }

  return v5;
}

uint64_t caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::RemoveListener(AUListener *)::$_0>(uint64_t a1, uint64_t a2, caulk::pooled_semaphore_mutex *this)
{
  v5 = *a1;
  v6 = *(*a1 + 8);
  caulk::pooled_semaphore_mutex::_lock(this);
  v7 = *(this + 1);
  if (v7 && **v5 == v7[1])
  {
    v8 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v8;
    v11 = *(a2 + 32);
    caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::remove(v6, v10);
    *(this + 1) = 0;
    (*(*v7 + 8))(v7);
  }

  caulk::pooled_semaphore_mutex::_unlock(this);
  return 0;
}

BOOL caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::CanInsertEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>(void ***a1, int a2, caulk::pooled_semaphore_mutex *this)
{
  v4 = *a1;
  caulk::pooled_semaphore_mutex::_lock(this);
  v5 = *(this + 1);
  if (v5 && *(v5 + 8) == **v4)
  {
    v8 = *v4[1];
    if (v8)
    {
      v6 = *(v5 + 16) == v8;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  caulk::pooled_semaphore_mutex::_unlock(this);
  return v6;
}

unint64_t caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::emplace<ListenerBinding *&>(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = XAudioUnitEvent::cmp(a2, a1);
  if (!v11)
  {
    v12 = *(a2 + 32);
    v13 = *(a1 + 32);
    v11 = v12 > v13;
    if (v12 < v13)
    {
      goto LABEL_23;
    }
  }

  if (v11 < 1)
  {
    goto LABEL_23;
  }

  v14 = XAudioUnitEvent::cmp(a2, a1 + 232);
  if (!v14)
  {
    v12 = *(a2 + 32);
    if (v12 < *(a1 + 264))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    v23 = v5 + 32 * v12 + 48;
    v24 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
    if (v24)
    {
      v22 = v24;
      atomic_fetch_add((v23 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v22 = caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(v5, v6);
    }

LABEL_27:
    v26 = *(a2 + 16);
    v52 = *a2;
    v25 = v52;
    v53 = v26;
    v54 = *(a2 + 32);
    v27 = v54;
    v22[56] = i;
    *(v22 + 57) = 1;
    v22[59] = i;
    *(v22 + 6) = 0;
    *(v22 + 5) = 0;
    *v22 = v25;
    *(v22 + 1) = v26;
    *(v22 + 4) = v27;
    v28 = *v49;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((v22 + 40));
    *(v22 + 6) = v28;
    *(v22 + 9) = 0;
    v29 = (v22 + 72);
    *(v22 + 8) = 0;
    *(v22 + 10) = 0;
    v30 = v22[56];
    if (v22[56])
    {
      v31 = (v22 + 80);
      do
      {
        atomic_store(0, v31 - 1);
        atomic_store(0, v31);
        v31 += 2;
        --v30;
      }

      while (v30);
    }

    v32 = 0;
    __dmb(0xBu);
    while (XAudioUnitEvent::cmp(v3, v22) || *(v3 + 32) != *(v22 + 8))
    {
      v33 = (v3 + 16 * v32 + 72);
      v34 = atomic_load(v33);
      if ((v34 & 2) != 0)
      {
        caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, v32, v3, v34 & 0xFFFFFFFFFFFFFFFCLL);
        goto LABEL_41;
      }

      atomic_store(v4, &v29[2 * v32]);
      v35 = v4;
      atomic_compare_exchange_strong(v33, &v35, v22);
      if (v35 == v4)
      {
        v45 = v22;
LABEL_50:
        if (!(v45 | v32))
        {
          caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(a1 + 336), v22, caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::node_sizes[v22[56] - 1]);
          return caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 320, v17);
        }

        v17 = atomic_load(v29);
        if (v17)
        {
          return caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 320, v17);
        }

        if (++v32 == i)
        {
          return caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 320, v17);
        }

        v46 = *(a2 + 16);
        v52 = *a2;
        v53 = v46;
        v54 = *(a2 + 32);
        v3 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v52, v32);
        v4 = v47;
      }

      else
      {
        if ((v35 & 2) != 0)
        {
          caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, v32, v3, v35 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v36 = atomic_load(v33);
        if (v36)
        {
          do
          {
            v3 = atomic_load((v3 + 16 * v32 + 80));
            v37 = atomic_load((v3 + 16 * v32 + 72));
          }

          while ((v37 & 1) != 0);
        }

LABEL_41:
        v38 = *(v22 + 1);
        v50[0] = *v22;
        v50[1] = v38;
        v51 = *(v22 + 4);
        v39 = v3;
        while (1)
        {
          v3 = v39;
          v40 = atomic_load((v39 + 16 * v32 + 72));
          v4 = v40 & 0xFFFFFFFFFFFFFFFCLL;
          v41 = *((v40 & 0xFFFFFFFFFFFFFFFCLL) + 16);
          v52 = *(v40 & 0xFFFFFFFFFFFFFFFCLL);
          v53 = v41;
          v54 = *((v40 & 0xFFFFFFFFFFFFFFFCLL) + 32);
          v42 = XAudioUnitEvent::cmp(&v52, v50);
          if (v42 || (v42 = v54 > v51, v54 >= v51))
          {
            if (v42 > 0)
            {
              break;
            }
          }

          v43 = atomic_load((v4 + 72));
          v39 = v4;
          if (v43)
          {
            v39 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, v32, v3, v4);
            if (!v44)
            {
              caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, v32, v39, v4);
            }
          }
        }
      }
    }

    v45 = 0;
    goto LABEL_50;
  }

  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  v15 = *(a2 + 16);
  v52 = *a2;
  v53 = v15;
  v54 = *(a2 + 32);
  v3 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v52, 0);
  v4 = v16;
  if (XAudioUnitEvent::cmp(v3, a2) || (v17 = *(v3 + 32), v17 != *(a2 + 32)))
  {
    v49 = a3;
    v18 = 0;
    v19 = 0;
    for (i = 1; i != 9; ++i)
    {
      if (i == 1)
      {
        caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::random_engine();
        v20 = 0;
        while (1)
        {
          v21 = &caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v20 + 2504;
          if ((atomic_exchange(v21, 1u) & 1) == 0)
          {
            break;
          }

          v20 += 2512;
          if (v20 == 10048)
          {
            v20 = 0;
          }
        }

        v19 = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((&caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v20), dword_1EAD0E458);
        atomic_store(0, v21);
        v18 = 3;
      }

      if ((v18 & ~v19) != 0)
      {
        break;
      }

      v18 *= 4;
    }

    v12 = 0;
    v5 = *(a1 + 336);
    do
    {
      v6 = caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::node_sizes[v12];
      if (v6 >= caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::node_sizes[i - 1])
      {
        goto LABEL_24;
      }

      ++v12;
    }

    while (v12 != 10);
    v22 = 0;
    goto LABEL_27;
  }

  return caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 320, v17);
}

char *caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(uint64_t a1, unint64_t a2)
{
  atomic_fetch_add((a1 + 36), 0x801u);
  explicit = *(a1 + 24);
  if (explicit)
  {
    v5 = 0;
    goto LABEL_3;
  }

  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v5 = explicit;
  if (explicit)
  {
LABEL_3:
    v6 = explicit;
    while (1)
    {
      result = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v6 + 2, a2);
      if (result)
      {
        goto LABEL_23;
      }

      v6 = atomic_load(v6);
      if (!v6)
      {
        v6 = atomic_load_explicit((a1 + 16), memory_order_acquire);
        v5 = v6;
      }

      if (v6 == explicit)
      {
        v8 = atomic_load_explicit((a1 + 16), memory_order_acquire);
        goto LABEL_11;
      }
    }
  }

  v8 = 0;
LABEL_11:
  v9 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

  v6 = v8;
  if (v8 == v5)
  {
    goto LABEL_21;
  }

  while (1)
  {
    result = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v6 + 2, a2);
    if (result)
    {
      break;
    }

    v6 = atomic_load(v6);
    if (v6)
    {
      v10 = v5 == v6;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_21:
      while (1)
      {
        v6 = caulk::alloc::details::caching_page_allocator_base::allocate(*(a1 + 8));
        *v6 = 0;
        v6[1] = v11;
        v6[2] = 0;
        __dmb(0xBu);
        atomic_store(v9, v6);
        v8 = v9;
        atomic_compare_exchange_strong((a1 + 16), &v8, v6);
        if (v8 != v9)
        {
          break;
        }

        result = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v6 + 2, a2);
        if (result)
        {
          goto LABEL_23;
        }
      }

      v12 = v6[1];
      v13 = *(a1 + 8);
      caulk::alloc::details::caching_page_allocator_base::deallocate();
      v5 = v9;
      goto LABEL_11;
    }
  }

LABEL_23:
  *(a1 + 24) = v6;
  atomic_fetch_add((a1 + 36), 0xFFFFFFFF);
  return result;
}

char *caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(atomic_ullong *a1, unint64_t a2)
{
  v2 = (a2 + 7) & 0x7FF8;
  v3 = a2 > 0x3FF0 || v2 == 0;
  if (v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = ~(a1 + 23 + *a1) & 7;
  v6 = *a1 + v2 + v5;
  if (v6 > 0x3FE0)
  {
    return 0;
  }

  v8 = *a1;
  atomic_compare_exchange_strong(a1, &v8, v6);
  if (v8 != v4)
  {
    do
    {
      v5 = ~(a1 + 23 + v8) & 7;
      v9 = v8 + v2 + v5;
      if (v9 >= 0x3FE1)
      {
        return 0;
      }

      v4 = v8;
      v10 = v8;
      atomic_compare_exchange_strong(a1, &v10, v9);
      v3 = v10 == v8;
      v8 = v10;
    }

    while (!v3);
  }

  result = a1 + v4 + v5 + 16;
  if ((result & 7) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, _DWORD *a2)
{
  result = a2[1];
  v4 = result - *a2;
  if (result != *a2)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    }

    else
    {
      v7 = __clz(v5);
      v8 = 31;
      if (((v5 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      v9 = v8 - v7;
      v10 = v9 >> 5;
      if ((v9 & 0x1F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFF >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      do
      {
        v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) & v11;
      }

      while (v12 >= v5);
      return *a2 + v12;
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::RemoveEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>(uint64_t a1, uint64_t a2, caulk::pooled_semaphore_mutex *this)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  caulk::pooled_semaphore_mutex::_lock(this);
  v7 = *(this + 1);
  if (v7)
  {
    if (*(v7 + 8) == **v5 && ((v8 = *v5[1]) == 0 || *(v7 + 16) == v8))
    {
      v9 = *(a2 + 16);
      v11[0] = *a2;
      v11[1] = v9;
      v12 = *(a2 + 32);
      caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::remove(v6, v11);
      *(this + 1) = 0;
      (*(***v5 + 56))(**v5, v7);
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  caulk::pooled_semaphore_mutex::_unlock(this);
  return (v7 != 0) & v6;
}

uint64_t ListenerMap::AddParameter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 20) == -1 || *(a4 + 24) == -1 || *(a4 + 16) == -1)
  {
    return 4294967246;
  }

  v22 = a2;
  v16[0] = &v22;
  v16[1] = outValue;
  *outValue = a3;
  *&v20[0] = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::CanInsertEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>;
  *(&v20[0] + 1) = v16;
  if (ListenerMap::forEachBindingForEvent(a1, a4, v20))
  {
    return 4294967246;
  }

  outValue[0] = 0.0;
  Parameter = AudioUnitGetParameter(*(a4 + 8), *(a4 + 16), *(a4 + 20), *(a4 + 24), outValue);
  v10 = Parameter;
  if (!Parameter || Parameter == -10867)
  {
    XAUParameter::GetParamProxy(v16, (a4 + 8));
    if (v18 == 1)
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = outValue;
      }

      v14 = (*(*a2 + 32))(a2, a3, a4, v13);
      v22 = v14;
      v15 = *(a4 + 16);
      v20[0] = *a4;
      v20[1] = v15;
      add = atomic_fetch_add((a1 + 400), 1u);
      caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::emplace<ListenerBinding *&>(a1, v20, &v22);
      if (!v10)
      {
        (*(*v14 + 16))(v14, a2, a3, outValue);
      }

      if (v18 == 1 && v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }

    else
    {
      return 4294900547;
    }
  }

  return v10;
}

void sub_18F704600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a13 == 1)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ListenerMap::NotifyParameterChange(ListenerMap *this, AUListener *a2, void *a3, const XAUParameter *a4, float *a5)
{
  v42 = a3;
  v43 = a2;
  v38 = 0;
  v39 = *a4;
  v40 = *(a4 + 2);
  v41 = a5;
  v37 = 0;
  if (!*a4)
  {
    return 0;
  }

  v7 = this + 320;
  v35 = this;
  v36 = this + 320;
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  v8 = *a4;
  v21 = 0;
  v23 = 0u;
  v22 = v8;
  LODWORD(v24) = 0;
  ge = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::iteration::find_ge(&v35, &v21);
  v10 = this + 232;
  if ((this + 232) != ge)
  {
    atomic_load(ge + 9);
    v10 = *ge;
    if (!v10)
    {
      v21 = &v37;
      v22 = &v37 + 1;
      *&v23 = &v43;
      *(&v23 + 1) = &v42;
      v24 = &v41;
      v44 = caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyParameterChange(AUListener *,void *,XAUParameter const&,float *)::$_0>;
      v45 = &v21;
      v31 = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>>;
      v32 = &v44;
      ListenerMap::forEachBindingForEvent(this, &v38, &v31);
      v10 = *(a4 + 2);
      if (v10 != -1)
      {
        if (v37 != 1 || (v10 = HIBYTE(v37), HIBYTE(v37) == 1))
        {
          XAUParameter::GetParamProxy(&v31, a4);
          v10 = v34;
          if ((v34 & 1) == 0)
          {
            v11 = v31;
            goto LABEL_5;
          }

          v10 = v32;
          v13 = *(v32 + 10);
          v30 = v13;
          if ((v13 & 0x30000000) != 0)
          {
            v14 = *(v32 + 12);
            if (v14 == -1)
            {
              v16 = 0;
            }

            else
            {
              v15 = *(v31 + 6);
              if (v14 >= v15)
              {
                std::terminate();
              }

              v16 = v31 + 8 * v14 + (v15 >> 32);
            }

            v17 = *(v32 + 11);
            v29[0] = v16;
            v29[1] = v17;
            v27[1] = v7;
            v28 = v29;
            v27[0] = this;
            caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
            v18 = *a4;
            v21 = 0;
            v22 = v18;
            *&v23 = vand_s8(*(a4 + 12), vcltz_s32(vshl_n_s32(vdup_n_s32((v13 & 0x10000000) == 0), 0x1FuLL)));
            DWORD2(v23) = 0;
            LODWORD(v24) = 0;
            v19 = caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::iteration::find_ge(v27, &v21);
            v21 = a4;
            v22 = &v30;
            *&v23 = &v28;
            *(&v23 + 1) = &v37;
            v24 = &v43;
            v25 = &v42;
            v26[0] = caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyParameterChange(AUListener *,void *,XAUParameter const&,float *)::$_1>;
            v26[1] = &v21;
            v44 = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>>;
            v45 = v26;
            ListenerMap::forEachBinding(v27, v19, &v44);
            caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v7, v20);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_5:
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v36, v10);
  return v11;
}

void sub_18F704890(_Unwind_Exception *a1@<X0>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v22, a2);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(*(v23 - 144), v25);
  _Unwind_Resume(a1);
}

uint64_t caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyParameterChange(AUListener *,void *,XAUParameter const&,float *)::$_1>(AudioUnit ***a1, uint64_t a2, caulk::pooled_semaphore_mutex *this)
{
  v3 = *a1;
  v4 = **a1;
  if (*(a2 + 8) != *v4 || (*(v3[1] + 3) & 0x20) != 0 && (*(a2 + 20) != *(v4 + 3) || *(a2 + 24) != *(v4 + 4)))
  {
    return 1;
  }

  v7 = *(a2 + 16);
  if (v7 != -1)
  {
    v8 = *(v4 + 2);
    if (v8 != -1)
    {
      if (v7 == v8)
      {
        v9 = *(a2 + 20);
        if (*(a2 + 20) == *(v4 + 12))
        {
          return 0;
        }
      }

      else
      {
        v9 = *(a2 + 20);
      }

      v10 = *v3[2];
      v11 = *v10;
      v12 = v10[1];
      if (v12)
      {
        v13 = (v9 << 61) | ((*(a2 + 24) & 0x1FFFFFFF) << 32) | v7;
        v14 = 8 * v12;
        for (i = v11; *i != v13; ++i)
        {
          result = 0;
          v14 -= 8;
          if (!v14)
          {
            return result;
          }
        }
      }

      else
      {
        i = v11;
      }

      if (i != &v11[v12])
      {
        caulk::pooled_semaphore_mutex::_lock(this);
        v16 = *(this + 1);
        if (v16)
        {
          outValue = 0.0;
          if (*v3[3])
          {
            p_outValue = 0;
          }

          else
          {
            if (AudioUnitGetParameter(**v3, *(*v3 + 2), *(*v3 + 3), *(*v3 + 4), &outValue))
            {
              p_outValue = 0;
            }

            else
            {
              p_outValue = &outValue;
            }

            v16 = *(this + 1);
          }

          (*(*v16 + 16))(v16, *v3[4], *v3[5], p_outValue);
        }

        caulk::pooled_semaphore_mutex::_unlock(this);
      }
    }
  }

  return 0;
}

uint64_t caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyParameterChange(AUListener *,void *,XAUParameter const&,float *)::$_0>(uint64_t *a1, int a2, caulk::pooled_semaphore_mutex *this)
{
  v4 = *a1;
  caulk::pooled_semaphore_mutex::_lock(this);
  v5 = *(this + 1);
  if (v5)
  {
    **v4 = 1;
    **(v4 + 8) |= (*(*v5 + 16))(v5, **(v4 + 16), **(v4 + 24), **(v4 + 32));
  }

  caulk::pooled_semaphore_mutex::_unlock(this);
  return 0;
}

uint64_t caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>(void ***a1, int a2, caulk::pooled_semaphore_mutex *this)
{
  v4 = *a1;
  caulk::pooled_semaphore_mutex::_lock(this);
  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6 != **v4 || (v8 = *v4[1]) != 0 && *(v5 + 16) != v8)
    {
      (*(*v6 + 72))(v6);
    }
  }

  caulk::pooled_semaphore_mutex::_unlock(this);
  return 0;
}

uint64_t CA::ADMBuilder::Impl::parse_stream_format(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "audioChannelFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioPackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioTrackFormatIDRef"))
  {
    operator new();
  }

  return 1;
}

uint64_t EC3AudioFile::ParseAudioFile(EC3AudioFile *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 21) == 1633889587)
  {
    v2 = 10;
  }

  else
  {
    v2 = 12;
  }

  v10 = 0;
  v9 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, v2);
  FPosForNextSyncWord = EC3AudioFile::GetFPosForNextSyncWord(this, &v9, &v8, *(this + 13));
  if (!FPosForNextSyncWord)
  {
    v4 = v9;
    (*(**(this + 13) + 48))(*(this + 13), 0, v9, v2, __p[0], &v10);
    *(this + 9) = v4;
    operator new();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x1E69E9840];
  return FPosForNextSyncWord;
}

void sub_18F705860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  operator delete(v31);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t EC3AudioFile::GetFPosForNextSyncWord(EC3AudioFile *this, uint64_t *a2, unsigned int *a3, DataSource *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(this + 21) == 1633889587)
  {
    v8 = 10;
  }

  else
  {
    v8 = 12;
  }

  v18 = 0;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v18, 0x28uLL, 1);
  v9 = v18;
  if (v18)
  {
    v10 = *a2;
LABEL_6:
    v19 = 0;
    v11 = (*(*a4 + 48))(a4, 0, v10, 40, v9, &v19);
    v12 = v19;
    if (v19 < v8)
    {
      v13 = 4294967257;
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v13 = v11;
    v14 = 0;
    while (1)
    {
      v15 = v14;
      EC3PacketParser::EC3PacketParser(buf, *(this + 21), &v9[v14], v12);
      if (EC3PacketParser::IsValid(buf))
      {
        break;
      }

      v14 = v15 + 1;
      v12 = v19 - 1;
      v19 = v12;
      if (v8 + v15 + 1 > v12)
      {
        v10 += v14;
        goto LABEL_6;
      }
    }

    *a3 = v24;
    *a2 = v10 + v15;
    if (v9)
    {
LABEL_12:
      free(v9);
    }
  }

  else
  {
    v13 = 1685348671;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "EC3AudioFile.cpp";
      v22 = 1024;
      v23 = 891;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  couldn't make space", buf, 0x12u);
    }
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_18F705AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EC3AudioFile::ParseOneCycle(EC3AudioFile *this, uint64_t a2, int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(this + 161))
  {
LABEL_2:
    v3 = 0;
  }

  else
  {
    v10 = *(this + 21) == 1633889587;
    *&v40[1] = 0;
    *v41 = 0;
    if (v10)
    {
      v7 = 10;
    }

    else
    {
      v7 = 12;
    }

    if (a3)
    {
      bzero(this + 200, 0x40uLL);
    }

    v3 = (*(**(this + 13) + 24))(*(this + 13), &v40[1]);
    if (!v3)
    {
      bzero(*(this + 22), *(this + 46));
      v8 = (*(**(this + 13) + 48))(*(this + 13), 0, a2, v7, *(this + 22), &v41[1]);
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v41[1] == 0;
      }

      if (v10)
      {
        v3 = v8;
        *(this + 161) = 1;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v35 = 0;
        v36 = 0;
        v39 = 0;
        memset(&v38.mFormatID, 0, 32);
        v16 = this + 200;
        while (1)
        {
          v38.mSampleRate = 0.0;
          v40[0] = 0;
          v18.n128_f64[0] = EC3StreamParser::AssessPacketHeader((*(this + 22) + 12 * v15), v7, v41, v40, &v38.mFormatID, (&v38.mSampleRate + 4), &v38, v9);
          v3 = v17;
          if (a3 && !v17)
          {
            if (v14 == *(this + 47))
            {
              *(this + 48) = LODWORD(v38.mSampleRate);
            }

            v3 = EC3StreamParser::AssessPacket(*(this + 21), (*(this + 22) + 12 * v15), v7, v15, buf, &v37);
          }

          v19 = v41[0];
          v21 = v3 == -2 && v41[0] != 0;
          if (v3 && !v21)
          {
            if (kAFSubSytemEC3)
            {
              v31 = *kAFSubSytemEC3;
              if (!*kAFSubSytemEC3)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v31 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "EC3AudioFile.cpp";
              *v43 = 1024;
              *&v43[2] = 470;
              v44 = 2048;
              v45 = this;
              v46 = 1024;
              v47 = v3;
              _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EC3AudioFile(%p): AssessPacketHeader failed, err = %d", buf, 0x22u);
            }

            goto LABEL_16;
          }

          if (v15)
          {
            if (v40[0])
            {
              v3 = 0;
              goto LABEL_65;
            }
          }

          else if ((v40[0] & 1) == 0)
          {
            goto LABEL_78;
          }

          v22 = *(this + 21);
          if (v22 == 1633889587)
          {
            *&v16[8 * v14] += v41[0];
            v36 += v19;
          }

          else
          {
            if (v15)
            {
              if (HIDWORD(v38.mSampleRate) == 1 && ++v14 >= 8)
              {
LABEL_78:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_16;
              }
            }

            *&v16[8 * v14] += v41[0];
            v23 = *(this + 47);
            if (v14 == v23)
            {
              v24 = v19;
            }

            else
            {
              v24 = 0;
            }

            v26 = v35;
            v25 = v36;
            v27 = v24 + v36;
            if (v14 >= v23)
            {
              v25 = v27;
            }

            else
            {
              v26 = v19 + v35;
            }

            v35 = v26;
            v36 = v25;
          }

          v13 += v19;
          if ((*(this + 161) & 1) != 0 || v13 + a2 >= *&v40[1])
          {
            v3 = 0;
            ++v15;
            goto LABEL_64;
          }

          if (v15)
          {
            if (v15 - 71 < 0xFFFFFFB8)
            {
              goto LABEL_62;
            }
          }

          else if (v22 == 1633889587)
          {
LABEL_62:
            v3 = 0;
            ++v15;
            goto LABEL_65;
          }

          v28 = *(this + 22) + 12 * (v15 + 1);
          v29 = (*(**(this + 13) + 48))(*(this + 13), 0, v18);
          if (v29 || v41[1] == 0)
          {
            break;
          }

          ++v15;
        }

        v3 = v29;
        ++v15;
LABEL_64:
        *(this + 161) = 1;
LABEL_65:
        if (!v3 && v36)
        {
          v32 = a2 + v35;
          if (v32 + v36 > *&v40[1])
          {
            goto LABEL_2;
          }

          *buf = v32 - *(this + 9);
          *&buf[8] = 0;
          *v43 = v36;
          AudioFileObject::AppendPacket(this, buf);
          if (v36 > (*(*this + 640))(this))
          {
            (*(*this + 656))(this, v36);
          }

          if (a3)
          {
            (*(*this + 184))(this, &v38.mFormatID);
            v34 = v38.mBytesPerPacket == 1633889587 && v15 > 1;
            *(this + 160) = v34;
            v3 = EC3AudioFile::ConstructMagicCookie(this);
          }

          else
          {
            v3 = 0;
          }

          *(this + 33) = v13 + a2;
        }
      }

      if (v3)
      {
LABEL_16:
        *(this + 161) = 1;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

void EC3StreamParser::~EC3StreamParser(EC3StreamParser *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(*(this + 2));
}

void std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<AudioFormatListItem>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<AudioFormatListItem>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t EC3AudioFile::ConstructMagicCookie(EC3AudioFile *this)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (v2 && *(v2 + 24) > 0)
  {
    v30 = 0;
    CompressedPacketTable::operator[](buf, v2, 0);
    v3 = *size;
    v4 = malloc_type_malloc(*size, 0x69C19EF0uLL);
    v5 = v4;
    if (v3 && !v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v25 = std::bad_alloc::bad_alloc(exception);
    }

    bzero(v4, v3);
    v6 = *(this + 13);
    v7 = *(this + 9);
    CompressedPacketTable::operator[](buf, v2, 0);
    v8 = *buf;
    CompressedPacketTable::operator[](v29, v2, 0);
    v9 = (*(*v6 + 48))(v6, 0, v8 + v7, v29[3], v5, &v30);
    if (v9)
    {
      goto LABEL_40;
    }

    free(*(this + 18));
    *(this + 18) = 0;
    *(this + 38) = 0;
    v10 = *(this + 8);
    v28 = 45;
    v29[0] = 11;
    if (v10 == 1633889587)
    {
      v11 = 11;
    }

    else
    {
      v11 = 0;
    }

    v12 = (v10 == 1700998451) | *(this + 160);
    if ((v10 == 1700998451) | *(this + 160) & 1)
    {
      v13 = v11 + 45;
    }

    else
    {
      v13 = v11;
    }

    v14 = malloc_type_malloc(v13, 0xB82AB62AuLL);
    v15 = v14;
    if (!v14 && (v10 == 1633889587) | v12 & 1)
    {
      v26 = __cxa_allocate_exception(8uLL);
      v27 = std::bad_alloc::bad_alloc(v26);
    }

    bzero(v14, v13);
    *(this + 18) = v15;
    if (v10 == 1633889587)
    {
      v16 = ConvertAC3HeaderToAC3MP4Cookie(v5, v30, v15, v29);
      v17 = v29[0];
      if (v16)
      {
        v9 = v16;
        goto LABEL_29;
      }

      v19 = v29[0];
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    if (v10 == 1700998451 || (*(this + 160) & 1) != 0)
    {
      v9 = ConvertEAC3HeaderToEAC3MP4Cookie(v5, v30, (*(this + 18) + v19), &v28);
      if (v9)
      {
LABEL_30:
        if (kAFSubSytemEC3)
        {
          v20 = *kAFSubSytemEC3;
          if (!*kAFSubSytemEC3)
          {
LABEL_38:
            free(*(this + 18));
            v21 = 0;
            *(this + 18) = 0;
            goto LABEL_39;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "EC3AudioFile.cpp";
          *size = 1024;
          *&size[2] = 636;
          size_6 = 2048;
          v34 = this;
          v35 = 1024;
          v36 = v9;
          _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EC3AudioFile(%p): got a bad magic cookie, err = %d!", buf, 0x22u);
        }

        goto LABEL_38;
      }

LABEL_34:
      v21 = v28 + v17;
LABEL_39:
      *(this + 38) = v21;
LABEL_40:
      free(v5);
      goto LABEL_41;
    }

    v9 = 0;
LABEL_29:
    v28 = 0;
    if (v9)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (!kAFSubSytemEC3)
  {
    v18 = MEMORY[0x1E69E9C10];
LABEL_21:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EC3AudioFile.cpp";
      *size = 1024;
      *&size[2] = 588;
      size_6 = 2048;
      v34 = this;
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EC3AudioFile(%p): cannot find magic cookie, packet data not available!", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

  v18 = *kAFSubSytemEC3;
  if (*kAFSubSytemEC3)
  {
    goto LABEL_21;
  }

LABEL_23:
  v9 = 0xFFFFFFFFLL;
LABEL_41:
  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t EC3AudioFile::ScanForPackets(EC3AudioFile *this, uint64_t a2, DataSource *a3, char a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if ((*(this + 161) & 1) == 0)
  {
    v5 = a3;
    v6 = a2;
    if (!a3)
    {
      v5 = *(this + 13);
    }

    v8 = *(this + 15);
    if (!v8)
    {
      operator new();
    }

    v9 = *(v8 + 24);
    if (a2 == -1 || v9 < a2)
    {
      FPosForNextSyncWord = (*(*v5 + 24))(v5, &v18);
      if (FPosForNextSyncWord)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v21 = "EC3AudioFile.cpp";
          v22 = 1024;
          v23 = 1220;
          v11 = MEMORY[0x1E69E9C10];
          v12 = "%25s:%-5d  GetSize failed";
LABEL_11:
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
        }
      }

      else
      {
        v13 = 264;
        if (!v9)
        {
          v13 = 72;
        }

        v19 = *(this + v13);
        if (v19 >= v18)
        {
LABEL_30:
          FPosForNextSyncWord = 0;
          *(this + 161) = a4;
          goto LABEL_29;
        }

        if (v6 != -1)
        {
          v14 = *(this + 15);
          if (v14)
          {
            v14 = *(v14 + 24);
          }

          v6 = v6 - v14 + 1;
        }

        while (1)
        {
          FPosForNextSyncWord = EC3AudioFile::GetFPosForNextSyncWord(this, &v19, &v17, v5);
          if (FPosForNextSyncWord)
          {
            break;
          }

          FPosForNextSyncWord = EC3AudioFile::ParseOneCycle(this, v19, 0);
          if (FPosForNextSyncWord)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              break;
            }

            *buf = 136315394;
            v21 = "EC3AudioFile.cpp";
            v22 = 1024;
            v23 = 1247;
            v11 = MEMORY[0x1E69E9C10];
            v12 = "%25s:%-5d  EC3AudioFile::ScanForPackets : ParseOneCycle failed";
            goto LABEL_11;
          }

          v19 = *(this + 33);
          if (v6 == -1)
          {
            if (*(this + 161))
            {
              goto LABEL_28;
            }
          }

          else if (!--v6)
          {
            goto LABEL_28;
          }
        }
      }

      if (FPosForNextSyncWord != -40)
      {
        if (FPosForNextSyncWord != -39)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }
  }

LABEL_28:
  FPosForNextSyncWord = 0;
LABEL_29:
  v15 = *MEMORY[0x1E69E9840];
  return FPosForNextSyncWord;
}

uint64_t EC3AudioFile::GetEstimatedDuration(EC3AudioFile *this, double *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 11);
  if (*(this + 161) == 1)
  {
    if (v5)
    {
      v6 = ((*(*this + 248))(this) * v5) / v4;
    }

    else
    {
      v6 = 0.0;
    }

    result = 0;
  }

  else
  {
    *a2 = 0.0;
    v7 = *(this + 13);
    v9 = 0;
    result = (*(*v7 + 24))(v7, &v9);
    if (result)
    {
      return result;
    }

    v6 = (v9 / *(*(this + 21) + 36) * v5) / v4;
  }

  *a2 = v6;
  return result;
}

uint64_t EC3AudioFile::GetLoudnessInfo(EC3AudioFile *this, CACFDictionary *a2)
{
  if (*(this + 48) < 0xFFFFFFE1)
  {
    return 0xFFFFFFFFLL;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = 257;
  CACFDictionary::AddFloat32(a2, @"dialnorm", *(this + 48));
  CACFDictionary::~CACFDictionary(&Mutable);
  return 0;
}

uint64_t EC3AudioFile::GetInfoDictionary(EC3AudioFile *this, CACFDictionary *a2)
{
  v5 = 0.0;
  v3 = (*(*this + 552))(this, &v5);
  if (v3)
  {
    return 1886681407;
  }

  AudioFileObject::AddDurationToInfoDictionary(v3, a2, &v5);
  return 0;
}

double EC3AudioFile::GetChannelLayout(EC3AudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  if (a2)
  {
    if (*a2 >= 0x20)
    {
      result = 0.0;
      *&a3->mChannelLayoutTag = 0u;
      *&a3->mChannelDescriptions[0].mChannelFlags = 0u;
      a3->mChannelLayoutTag = *(this + 39);
    }
  }

  return result;
}

uint64_t EC3AudioFile::GetChannelLayoutSize(EC3AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 32;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

uint64_t EC3AudioFile::GetMagicCookieData(EC3AudioFile *this, unsigned int *a2, void *__dst)
{
  v3 = *(this + 38);
  if (*a2 < v3)
  {
    return 561211770;
  }

  result = 2003334207;
  if (__dst)
  {
    v7 = *(this + 18);
    if (v7)
    {
      memcpy(__dst, v7, v3);
      result = 0;
      *a2 = *(this + 38);
    }
  }

  return result;
}

uint64_t EC3AudioFile::GetMagicCookieDataSize(EC3AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = *(this + 38);
  }

  return 0;
}

uint64_t EC3AudioFile::GetBitRate(EC3AudioFile *this, unsigned int *a2)
{
  if (*(this + 21) != 1633889587)
  {
    if (!a2)
    {
      return 2003334207;
    }

    v5 = *(this + 10);
    v6 = *(this + 11);
    v7 = *(this + 3);
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      result = 0;
      v12 = v5 * 8.0 * v7 / v6;
LABEL_19:
      *a2 = v12;
      return result;
    }

    v9 = (*(*this + 248))(this);
    if ((*(this + 161) & 1) == 0)
    {
      do
      {
        EC3AudioFile::ParseOneCycle(this, *(this + 33), 0);
      }

      while (*(this + 161) != 1);
    }

    v10 = *(this + *(this + 47) + 25);
    if (v6)
    {
      v11 = v9 * v6;
    }

    else
    {
      v13 = *(this + 15);
      if (!v13)
      {
        return 1886681407;
      }

      if (*(v13 + 24) != v9)
      {
        return 1685348671;
      }

      if (v9 < 1)
      {
        goto LABEL_26;
      }

      v14 = 0;
      v11 = 0;
      do
      {
        CompressedPacketTable::operator[](v15, v13, v14);
        v11 += v16;
        ++v14;
      }

      while (v9 != v14);
    }

    if (v11 && v7 != 0.0)
    {
      result = 0;
      v12 = v10 * 8.0 / (v11 / v7);
      goto LABEL_19;
    }

LABEL_26:
    result = 0;
    *a2 = 0;
    return result;
  }

  return AudioFileObject::GetBitRate(this, a2);
}

uint64_t EC3AudioFile::GetNumPackets(EC3AudioFile *this)
{
  if ((*(this + 161) & 1) == 0)
  {
    do
    {
      EC3AudioFile::ParseOneCycle(this, *(this + 33), 0);
    }

    while (*(this + 161) != 1);
  }

  v2 = *(this + 15);
  if (v2)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t EC3AudioFile::GetNumBytes(EC3AudioFile *this)
{
  v4 = 0;
  v2 = (*(**(this + 13) + 24))(*(this + 13), &v4);
  result = v4;
  if (!v2)
  {
    return v4 - *(this + 9);
  }

  return result;
}

uint64_t EC3AudioFile::GetFormatList(EC3AudioFile *this, UInt32 *ioPropertyDataSize, AudioFormatListItem *outPropertyData)
{
  v8 = *(this + 24);
  v9 = *(this + 40);
  v10 = *(this + 7);
  inSpecifier[0] = v8;
  inSpecifier[1] = v9;
  v6 = *(this + 18);
  v12 = v10;
  v13 = v6;
  v14 = *(this + 38);
  if (AudioFormatGetProperty(0x666C7374u, 0x38u, inSpecifier, ioPropertyDataSize, outPropertyData))
  {
    *&outPropertyData->mASBD.mSampleRate = v8;
    *&outPropertyData->mASBD.mBytesPerPacket = v9;
    *&outPropertyData->mASBD.mBitsPerChannel = v10;
    outPropertyData->mASBD.mFramesPerPacket = *(this + 11);
    outPropertyData->mChannelLayoutTag = *(this + 39);
    *ioPropertyDataSize = 48;
  }

  return 0;
}

uint64_t EC3AudioFile::GetFormatListInfo(EC3AudioFile *this, UInt32 *outPropertyDataSize, unsigned int *a3)
{
  v5 = *(this + 40);
  v8[0] = *(this + 24);
  v8[1] = v5;
  v6 = *(this + 18);
  v9 = *(this + 7);
  v10 = v6;
  v11 = *(this + 38);
  if (AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, v8, outPropertyDataSize))
  {
    *outPropertyDataSize = 48;
    *a3 = 0;
  }

  return 0;
}

uint64_t EC3AudioFile::SetProperty(EC3AudioFile *this, int a2, unsigned int a3, uint64_t *a4)
{
  if (a2 == 1969321067)
  {
    result = 1886681407;
    if ((*(this + 100) & 2) == 0 && *(this + 21) != 1633889587)
    {
      if (a3 >= 4)
      {
        v6 = *a4;
        if (*a4 >= *(*(this + 21) + 4))
        {
          return 2003334207;
        }

        else if (v6 == *(this + 47))
        {
          return 0;
        }

        else
        {
          *(this + 161) = 0;
          AudioFileObject::DeletePacketTable(this);
          *(this + 47) = v6;
          v7 = *(this + 9);

          return EC3AudioFile::ParseOneCycle(this, v7, 1);
        }
      }

      else
      {
        return 561211770;
      }
    }
  }

  else
  {

    return AudioFileObject::SetProperty(this, a2, a3, a4);
  }

  return result;
}

uint64_t EC3AudioFile::GetProperty(EC3AudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 > 1886090593)
  {
    if (a2 == 1886090594)
    {
      goto LABEL_5;
    }

    if (a2 != 1969321067)
    {
      if (a2 == 1886616165)
      {
LABEL_5:
        if (*a3 == 4)
        {
          if (!*(this + 10) && (*(this + 161) & 1) == 0)
          {
            result = (*(*this + 696))(this, -1, 0, 1);
            if (result)
            {
              return result;
            }
          }

          goto LABEL_23;
        }

        return 561211770;
      }

LABEL_23:

      return AudioFileObject::GetProperty(this, a2, a3, a4);
    }

    if (*(this + 21) == 1633889587)
    {
      return 1886681407;
    }

    if (*a3 < 4)
    {
      return 561211770;
    }

    result = 0;
    v18 = *(this + 47);
LABEL_34:
    *a4 = v18;
    return result;
  }

  if (a2 == 1635017588)
  {
    if (*a3 < 4)
    {
      return 561211770;
    }

    v18 = *(*(this + 21) + 4);
    if (!v18)
    {
      return 2003334207;
    }

    result = 0;
    goto LABEL_34;
  }

  if (a2 != 1718383476)
  {
    goto LABEL_23;
  }

  result = AudioFileObject::GetProperty(this, 1718383476, a3, a4);
  if (!result)
  {
    if (*a3 >= 0x30)
    {
      v9 = *(this + 11);
      v10 = *a3 / 0x30uLL;
      v11 = (v10 + 3) & 0xFFFFFFC;
      v12 = vdupq_n_s64(v10 - 1);
      v13 = xmmword_18F9016B0;
      v14 = xmmword_18F9016C0;
      v15 = a4 + 29;
      v16 = vdupq_n_s64(4uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v12, v14));
        if (vuzp1_s16(v17, *v12.i8).u8[0])
        {
          *(v15 - 24) = v9;
        }

        if (vuzp1_s16(v17, *&v12).i8[2])
        {
          *(v15 - 12) = v9;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
        {
          *v15 = v9;
          v15[12] = v9;
        }

        v13 = vaddq_s64(v13, v16);
        v14 = vaddq_s64(v14, v16);
        v15 += 48;
        v11 -= 4;
      }

      while (v11);
    }

    return 0;
  }

  return result;
}

uint64_t EC3AudioFile::GetPropertyInfo(EC3AudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 1969321067)
  {
    if (*(this + 21) == 1633889587)
    {
      return 1886681407;
    }

    if (a3)
    {
      *a3 = 4;
    }

    if (a4)
    {
      result = 0;
      *a4 = 1;
      return result;
    }
  }

  else
  {
    if (a2 != 1635017588)
    {
      return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
    }

    if (a3)
    {
      *a3 = 4;
    }

    if (a4)
    {
      result = 0;
      *a4 = 0;
      return result;
    }
  }

  return 0;
}

uint64_t EC3AudioFile::WritePackets(EC3AudioFile *this, unsigned __int8 a2, unsigned int a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = (*(*this + 248))(this);
  v25 = 0;
  if ((a5 & 0x8000000000000000) == 0 && v12 != a5)
  {
    v13 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "EC3AudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 826;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  Invalid starting packet";
LABEL_13:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
    v13 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "EC3AudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 827;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  Packet Descriptions were not provided";
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  v16 = *(this + 15);
  if (!v16)
  {
    operator new();
  }

  if (!*(v16 + 24))
  {
    v17 = 0;
LABEL_17:
    v26.mStartOffset = v17;
    if (*a6)
    {
      v18 = 0;
      v19 = *(this + 9);
      p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
      do
      {
        v21 = *(p_mVariableFramesInPacket - 1);
        v22 = p_mVariableFramesInPacket[1];
        v26.mVariableFramesInPacket = *p_mVariableFramesInPacket;
        v26.mDataByteSize = v22;
        v13 = (*(**(this + 13) + 56))(*(this + 13), 0, v17 + v19, v22, &a7[v21], &v25);
        AudioFileObject::AppendPacket(this, &v26);
        v17 += v22;
        v26.mStartOffset = v17;
        v19 = *(this + 9);
        *(this + 33) = v19 + v17;
        ++v18;
        p_mVariableFramesInPacket += 4;
      }

      while (v18 < *a6);
    }

    else
    {
      LODWORD(v18) = 0;
      v13 = 0;
    }

    *a6 = v18;
    goto LABEL_23;
  }

  if (v12 <= a5)
  {
    CompressedPacketTable::operator[](buf, v16, v12 - 1);
    v26 = *buf;
    v17 = *buf + *&buf[12];
    goto LABEL_17;
  }

  v13 = 1885563711;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "EC3AudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 840;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  Invalid starting packet";
    goto LABEL_13;
  }

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t EC3AudioFile::ReadPackets(EC3AudioFile *this, unsigned int a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = *a6;
  if (v9)
  {
    if (a3)
    {
      *a3 = 0;
    }

    *a6 = 0;
    v15 = *(this + 15);
    if (v15)
    {
      v16 = *(v15 + 24);
      if (v16 >= a5)
      {
        v22 = v9 + a5;
        do
        {
          if (v16 >= v22)
          {
            break;
          }

          v23 = EC3AudioFile::ParseOneCycle(this, *(this + 33), 0);
          v24 = v23;
          v16 = *(this + 15);
          if (v16)
          {
            v16 = *(v16 + 24);
          }

          if (v23)
          {
            goto LABEL_27;
          }
        }

        while (*(this + 161) != 1);
        v24 = 0;
LABEL_27:
        if (v22 <= v16)
        {
          v25 = v9;
        }

        else
        {
          v25 = v16 - a5;
        }

        v42 = v25;
        if (v25)
        {
          if (v8)
          {
            *buf = v25;
            AudioFileObject::GetPacketDescriptions(this, a5, buf, a4);
            v26 = 0;
            LODWORD(v42) = *buf;
          }

          else
          {
            v27 = v25 + a5;
            if (a5 >= v42 + a5)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v29 = a5;
              v30 = v27;
              do
              {
                CompressedPacketTable::operator[](buf, v15, v29);
                v28 += v45[0];
                ++v29;
              }

              while (v30 != v29);
            }

            v43 = v28;
            CompressedPacketTable::operator[](buf, v15, a5);
            v31 = (*(*this + 72))(this, a2, *buf, &v43, a7);
            v17 = v31;
            if (v31 != -39 && v31 != 0)
            {
              goto LABEL_19;
            }

            v26 = v43;
            if (a4)
            {
              v33 = 0;
              v34 = 0;
              v35 = 1;
              v36 = v43;
              do
              {
                CompressedPacketTable::operator[](buf, v15, v33 + a5);
                if (v36 >= v45[0])
                {
                  CompressedPacketTable::operator[](buf, v15, v33 + a5);
                  v37 = v45[0];
                }

                else
                {
                  v37 = v36 & ~(v36 >> 63);
                }

                v38 = &a4[v33];
                v38->mStartOffset = v34;
                v38->mVariableFramesInPacket = 0;
                v38->mDataByteSize = v37;
                v34 += v37;
                v36 -= v37;
                v33 = v35;
              }

              while (v42 > v35++);
              v24 = 0;
              if (v17 && v17 != -39)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v24 = 0;
            }
          }

          if (a3)
          {
            *a3 = v26;
          }

          *a6 = v42;
          v17 = v24;
          goto LABEL_19;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "EC3AudioFile.cpp";
          LOWORD(v45[0]) = 1024;
          *(v45 + 2) = 709;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  EOF", buf, 0x12u);
        }

        v17 = 4294967257;
      }

      else
      {
        v17 = 1885563711;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "EC3AudioFile.cpp";
          LOWORD(v45[0]) = 1024;
          *(v45 + 2) = 696;
          v18 = MEMORY[0x1E69E9C10];
          v19 = "%25s:%-5d  Invalid starting packet index";
LABEL_18:
          _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
        }
      }
    }

    else
    {
      v17 = 1685348671;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "EC3AudioFile.cpp";
        LOWORD(v45[0]) = 1024;
        *(v45 + 2) = 692;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "%25s:%-5d  Could not get PacketTable";
        goto LABEL_18;
      }
    }
  }

  else
  {
    v17 = 2003334207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "EC3AudioFile.cpp";
      LOWORD(v45[0]) = 1024;
      *(v45 + 2) = 683;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%25s:%-5d  invalid num packets parameter";
      goto LABEL_18;
    }
  }

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t EC3AudioFile::InitializeDataSource(EC3AudioFile *this, const AudioStreamBasicDescription *a2)
{
  if (a2->mFormatID == *(this + 21))
  {
    return 0;
  }

  else
  {
    return 1718449215;
  }
}

uint64_t EC3AudioFile::OpenFromDataSource(EC3AudioFile *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = (*(*this + 736))(this);
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "EC3AudioFile.cpp";
    v6 = 1024;
    v7 = 319;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  EC3AudioFile::ParseAudioFile failed", &v4, 0x12u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t EC3AudioFile::Create(EC3AudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 21);
  if (a3->mFormatID != v4)
  {
    if (kAFSubSytemEC3)
    {
      v7 = *kAFSubSytemEC3;
      if (!*kAFSubSytemEC3)
      {
LABEL_11:
        v8 = *MEMORY[0x1E69E9840];
        return 1718449215;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v10, v4);
      CAX4CCString::CAX4CCString(v9, a3->mFormatID);
      *buf = 136315906;
      v12 = "EC3AudioFile.cpp";
      v13 = 1024;
      v14 = 346;
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = v9;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: cannot create file, mismatch in formatID (expected = %s, specified = %s)", buf, 0x26u);
    }

    goto LABEL_11;
  }

  v5 = *MEMORY[0x1E69E9840];

  return AudioFileObject::Create(this, a2, a3);
}

void EC3AudioFile::~EC3AudioFile(EC3AudioFile *this)
{
  EC3AudioFile::~EC3AudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327898;
  v2 = *(this + 22);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    EC3StreamParser::~EC3StreamParser(v3);
    MEMORY[0x193ADF220]();
    *(this + 21) = 0;
  }

  v4 = *(this + 18);
  if (v4)
  {
    free(v4);
    *(this + 18) = 0;
  }

  AudioFileObject::~AudioFileObject(this);
}

void sub_18F707EF8(_Unwind_Exception *a1)
{
  AudioFileObject::~AudioFileObject(v1);
  MEMORY[0x193ADF220]();
  _Unwind_Resume(a1);
}

uint64_t EC3AudioFormat::GetHFSCodes(EC3AudioFormat *this, unsigned int *a2, void *__dst)
{
  if (*(this + 2) == 1633889587)
  {
    v3 = 1633889587;
  }

  else
  {
    v3 = 1700998451;
  }

  __src = v3;
  v4 = 4 * (*a2 > 3);
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

uint64_t EC3AudioFormat::GetAvailableStreamDescriptions(EC3AudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  if ((a2 | 0x4000000) == 0x65632D33)
  {
    v10 = v4;
    v11 = v5;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    DWORD2(v8[0]) = a2;
    if (*a3 >= 0x28)
    {
      v6 = 40;
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    if (__dst)
    {
      memcpy(__dst, v8, v6);
    }

    return 0;
  }

  else
  {
    *a3 = 0;
    return 1718449215;
  }
}

uint64_t EC3AudioFormat::GetAvailableFormatIDs(EC3AudioFormat *this, unsigned int *a2, void *__dst)
{
  if (*(this + 2) == 1633889587)
  {
    v3 = 1633889587;
  }

  else
  {
    v3 = 1700998451;
  }

  __src = v3;
  v4 = 4 * (*a2 > 3);
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

void EC3AudioFormat::GetFileTypeName(EC3AudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  if (*(this + 2) == 1633889587)
  {
    v4 = @"AC3";
  }

  else
  {
    v4 = @"EC3";
  }

  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *EC3AudioFormat::GetMIMETypes(EC3AudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v4 = v3 == 1633889587;
  if (v3 == 1633889587)
  {
    v5 = @"audio/ac3";
  }

  else
  {
    v5 = @"audio/eac3";
  }

  v6 = @"audio/x-eac3";
  if (v4)
  {
    v6 = @"audio/x-ac3";
  }

  values[0] = v5;
  values[1] = v6;
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *EC3AudioFormat::GetUTIs(EC3AudioFormat *this, const __CFArray **a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*(this + 2) == 1633889587)
  {
    v3 = @"public.ac3-audio";
  }

  else
  {
    v3 = @"public.enhanced-ac3-audio";
  }

  v6[0] = v3;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v6, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void EC3AudioFormat::GetExtensions(EC3AudioFormat *this, const __CFArray **a2)
{
  if (*(this + 2) == 1633889587)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  std::vector<__CFString const*>::vector[abi:ne200100](values, v4);
  if (*(this + 2) == 1633889587)
  {
    *values[0] = @"ac3";
    v5 = values[0];
  }

  else
  {
    *values[0] = @"ec3";
    v5 = values[0];
    values[0][1] = @"eac3";
  }

  *a2 = CFArrayCreate(*MEMORY[0x1E695E480], v5, v4, MEMORY[0x1E695E9C0]);
  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }
}

void sub_18F7082F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_18F708384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EC3AudioFormat::FileDataIsThisFormat(EC3AudioFormat *this, unsigned int a2, const void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(this + 2) == 1633889587)
  {
    v6 = 10;
  }

  else
  {
    v6 = 12;
  }

  std::vector<unsigned char>::vector[abi:ne200100](__p, v6);
  v7 = __p[0];
  if (a2 >= 0x18)
  {
    v17 = 0;
    v16 = &unk_1F033E8B8;
    v18 = a2;
    v19 = a3;
    v20 = 0;
    memcpy(__p[0], a3, v6);
    v21 = v6;
    v11 = *(this + 2);
    v24 = 0;
    v23 = 0;
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v23, 0x28uLL, 1);
    v12 = v23;
    if (v23)
    {
      v24 = 0;
      (*(v16 + 6))(&v16, 0, 0, 40, v23, &v24);
      if (v24 == 40)
      {
        if (v11 == 1633889587)
        {
          v13 = 31;
        }

        else
        {
          v13 = 29;
        }

        v14 = 40;
        v15 = v12;
        while (1)
        {
          EC3PacketParser::EC3PacketParser(buf, v11, v15, v14);
          if (EC3PacketParser::IsValid(buf))
          {
            break;
          }

          v14 = --v24;
          ++v15;
          if (!--v13)
          {
            v8 = 0;
            if (v12)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        v8 = 1;
        if (!v12)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v8 = 0;
      }

LABEL_23:
      free(v12);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "EC3AudioFile.cpp";
        v27 = 1024;
        v28 = 56;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  couldn't make space", buf, 0x12u);
      }

      v8 = 0;
    }

LABEL_24:
    v7 = __p[0];
    if (__p[0])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
    if (__p[0])
    {
LABEL_6:
      __p[1] = v7;
      operator delete(v7);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_18F708610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19)
  {
    free(a19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL EC3AudioFormat::ExtensionIsThisFormat(EC3AudioFormat *this, CFStringRef theString1)
{
  if (*(this + 2) == 1633889587)
  {
    v3 = @"ac3";
    return CFStringCompare(theString1, v3, 1uLL) == kCFCompareEqualTo;
  }

  v4 = 1;
  if (CFStringCompare(theString1, @"ec3", 1uLL))
  {
    v3 = @"eac3";
    return CFStringCompare(theString1, v3, 1uLL) == kCFCompareEqualTo;
  }

  return v4;
}

uint64_t DSPGraph::MantissaRandomizerBox::initialize(DSPGraph::MantissaRandomizerBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "in");
    v10 = (this + 32);
    if (*(this + 55) < 0)
    {
      v10 = *v10;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v9, v10, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(this + 11);
  if (*(this + 12) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "out");
    v12 = (this + 32);
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v5 = *(*(v3 + 120) + 28);
  if (v5 != *(*((*(*v4 + 40))(v4) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(v27, "initialize");
    v17 = *(this + 8);
    if (*(this + 9) != v17)
    {
      v18 = (*(*v17 + 40))(v17);
      v19 = *(this + 11);
      if (*(this + 12) != v19)
      {
        v20 = *(*(v18 + 120) + 28);
        v21 = (*(*v19 + 40))(v19);
        DSPGraph::strprintf("input and output must have the same channel count, but have %u and %u", v22, v20, *(*(v21 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v30, "out");
      v26 = (this + 32);
      if (*(this + 55) < 0)
      {
        v26 = *v26;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v25, v26, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "in");
    v24 = (this + 32);
    if (*(this + 55) < 0)
    {
      v24 = *v24;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v23, v24, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = *(this + 8);
  if (*(this + 9) == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "in");
    v14 = (this + 32);
    if (*(this + 55) < 0)
    {
      v14 = *v14;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, v14, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v6 + 40))(v6) + 120) + 8) != 1819304813)
  {
    goto LABEL_21;
  }

  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "out");
    v16 = (this + 32);
    if (*(this + 55) < 0)
    {
      v16 = *v16;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v15, v16, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v7 + 40))(v7);
  if (*(*(result + 120) + 8) != 1819304813)
  {
LABEL_21:
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v30, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v29, "input and output must both be time-domain");
    DSPGraph::ThrowException(1718449215, &v31, 117, &v30, &v29);
  }

  return result;
}

void sub_18F708BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::MantissaRandomizerBox::process(DSPGraph::MantissaRandomizerBox *this, unsigned int a2, double a3, double a4, double a5, int32x2_t a6)
{
  v7 = atomic_load(this + 194);
  v8 = atomic_load(this + 772);
  if ((v8 & 1) != 0 || !v7)
  {
    v31 = *(this + 8);
    if (*(this + 9) == v31)
    {
      std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v63, "in");
      v54 = (this + 32);
      if (*(this + 55) < 0)
      {
        v54 = *v54;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v53, v54, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v32 = (*(*v31 + 40))(v31);
    v33 = *(this + 11);
    if (*(this + 12) == v33)
    {
      std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v63, "out");
      v58 = (this + 32);
      if (*(this + 55) < 0)
      {
        v58 = *v58;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v57, v58, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v34 = *(v32 + 56);
    v35 = (*(*v33 + 40))(v33);
    DSPGraph::SimpleABL::copy((v34 + 80), (*(v35 + 56) + 80), 1);
  }

  else
  {
    v10 = (v7 + 3) & 0xFFFFFFFC;
    v11 = xmmword_18F901740;
    v12 = 0uLL;
    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    v14.i64[0] = 0x400000004;
    v14.i64[1] = 0x400000004;
    do
    {
      v15 = v11;
      v16 = v12;
      v12 = vorrq_s8(v12, vshlq_u32(v13, v11));
      v11 = vaddq_s32(v11, v14);
      v10 -= 4;
    }

    while (v10);
    v17 = *(this + 11);
    if (*(this + 12) == v17)
    {
      std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v63, "out");
      v56 = (this + 32);
      if (*(this + 55) < 0)
      {
        v56 = *v56;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v55, v56, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v59 = v15;
    v60 = v16;
    v61 = v12;
    a6.i32[0] = v7 - 1;
    v62 = a6;
    v18 = **(*((*(*v17 + 40))(v17) + 56) + 80);
    if (v18)
    {
      v19 = 0;
      v20 = vbslq_s8(vcgtq_u32(v59, vdupq_lane_s32(v62, 0)), v60, v61);
      *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v21 = v20.i32[0] | v20.i32[1];
      v22 = ~(v20.i32[0] | v20.i32[1]);
      do
      {
        v23 = *(this + 8);
        if (*(this + 9) == v23)
        {
          std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v63, "in");
          v48 = (this + 32);
          if (*(this + 55) < 0)
          {
            v48 = *v48;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, v48, (*(this + 9) - *(this + 8)) >> 5, 0);
        }

        v24 = (*(*v23 + 40))(v23);
        v25 = *(this + 11);
        if (*(this + 12) == v25)
        {
          std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v63, "out");
          v50 = (this + 32);
          if (*(this + 55) < 0)
          {
            v50 = *v50;
          }

          DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v49, v50, (*(this + 12) - *(this + 11)) >> 5, 0);
        }

        v26 = *(*(*(v24 + 56) + 80) + 16 * v19 + 16);
        v27 = (*(*v25 + 40))(v25);
        if (a2)
        {
          v28 = *(*(*(v27 + 56) + 80) + 16 * v19 + 16);
          v29 = 4 * a2;
          do
          {
            v30 = *v26++;
            v64[0] = 0;
            v64[1] = v21;
            *v28++ = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((this + 784), v64) | v30 & v22;
            v29 -= 4;
          }

          while (v29);
        }

        ++v19;
      }

      while (v19 != v18);
    }
  }

  v36 = *(this + 8);
  if (*(this + 9) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v63, "in");
    v52 = (this + 32);
    if (*(this + 55) < 0)
    {
      v52 = *v52;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v51, v52, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  result = (*(*v36 + 40))(v36);
  v39 = *(this + 11);
  v38 = *(this + 12);
  if (v39 != v38)
  {
    v40 = result[7];
    result = v39;
    v41 = v39;
    do
    {
      v42 = *v41;
      v41 += 4;
      v43 = *((*(v42 + 40))(result) + 56);
      v44 = *(v40 + 56);
      v45 = *(v40 + 40);
      v46 = *(v40 + 24);
      *(v43 + 8) = *(v40 + 8);
      *(v43 + 24) = v46;
      *(v43 + 40) = v45;
      *(v43 + 56) = v44;
      *(v43 + 72) = 0;
      v39 += 32;
      result = v41;
    }

    while (v41 != v38);
  }

  return result;
}

void sub_18F709298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::MantissaRandomizerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.62656313e219;
  *a1 = xmmword_18F9017D0;
  *(a1 + 16) = 0;
  return result;
}

size_t DSPGraph::MantissaRandomizerBox::getParameterInfo@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = -10866;
  }

  else
  {
    if (!a2)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      DWORD2(v16) = 1102577664;
      LODWORD(v16) = 1;
      v17 = 3221225472;
      result = strlcpy(&v11, "bits to randomize", 0x34uLL);
      *(&v15 + 1) = @"bits to randomize";
      LODWORD(v17) = v17 | 0x8000000;
      v8 = v12;
      *a3 = v11;
      *(a3 + 16) = v8;
      v9 = v14;
      *(a3 + 32) = v13;
      *(a3 + 48) = v9;
      v10 = v16;
      *(a3 + 64) = v15;
      *(a3 + 80) = v10;
      *(a3 + 96) = v17;
      *(a3 + 104) = 1;
      goto LABEL_6;
    }

    v5 = -10878;
  }

  *a3 = v5;
  *(a3 + 104) = 0;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F709424(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSPGraph::MantissaRandomizerBox::getParameterList@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v7[0] = v3;
    v7[1] = v4;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v6, v7, 1uLL);
  }

  return result;
}

float DSPGraph::MantissaRandomizerBox::getParameter(DSPGraph::MantissaRandomizerBox *this, int a2, int a3, int a4)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10866, &v8, 73, &v7, &v6);
  }

  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10877, &v8, 76, &v7, &v6);
  }

  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10878, &v8, 81, &v7, &v6);
  }

  return atomic_load(this + 194);
}

void sub_18F7095A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::MantissaRandomizerBox::setParameter(uint64_t this, int a2, int a3, int a4, float a5)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10866, &v10, 92, &v9, &v8);
  }

  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10877, &v10, 95, &v9, &v8);
  }

  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_MantissaRandomizerBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "");
    DSPGraph::ThrowException(-10878, &v10, 102, &v9, &v8);
  }

  v5 = llroundf(a5);
  v6 = 23;
  if (v5 < 0x17)
  {
    v6 = v5;
  }

  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  atomic_store(v7, (this + 776));
  return this;
}

void sub_18F709738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::MantissaRandomizerBox::~MantissaRandomizerBox(DSPGraph::MantissaRandomizerBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AUSpatialMixerPropertyMarshaller::GetSpatialMixerMarshaller(AUSpatialMixerPropertyMarshaller *this)
{
  v1 = this;
  result = 0;
  if (v1 > 3199)
  {
    switch(v1)
    {
      case 3200:
      case 3202:
      case 3204:
      case 3206:
      case 3208:
        operator new();
      case 3201:
      case 3203:
      case 3205:
      case 3207:
      case 3209:
        operator new();
      case 3210:
      case 3211:
      case 3212:
      case 3213:
      case 3215:
      case 3216:
      case 3217:
      case 3218:
      case 3219:
      case 3220:
      case 3221:
      case 3222:
      case 3224:
      case 3225:
      case 3226:
      case 3227:
      case 3228:
      case 3229:
      case 3232:
      case 3234:
      case 3235:
      case 3239:
      case 3242:
        return result;
      case 3214:
      case 3230:
      case 3233:
      case 3236:
      case 3240:
      case 3243:
      case 3244:
        goto LABEL_20;
      case 3223:
      case 3238:
      case 3241:
LABEL_16:
        operator new();
      case 3231:
        operator new();
      case 3237:
LABEL_17:
        operator new();
      default:
        if (v1 == 4600)
        {
          goto LABEL_20;
        }

        return result;
    }
  }

  if (v1 > 3099)
  {
    switch(v1)
    {
      case 3100:
      case 3101:
      case 3103:
      case 3106:
      case 3110:
      case 3111:
      case 3113:
      case 3114:
      case 3116:
        goto LABEL_20;
      case 3102:
      case 3115:
        goto LABEL_17;
      case 3104:
      case 3105:
        operator new();
      case 3107:
        operator new();
      case 3108:
        goto LABEL_16;
      case 3109:
      case 3112:
        operator new();
      default:
        return result;
    }
  }

  if ((v1 - 3000) <= 0xD)
  {
    if (((1 << (v1 + 72)) & 0x2029) != 0)
    {
      goto LABEL_20;
    }

    if (v1 == 3010)
    {
      operator new();
    }
  }

  if (v1 <= 0x25 && ((1 << v1) & 0x2004000400) != 0 || v1 == 1005)
  {
LABEL_20:
    operator new();
  }

  return result;
}

uint64_t TSimpleMarshaller<MixerDistanceParams>::DeserializeT(int a1, CADeserializer *this, char *a3)
{
  CADeserializer::Read(this, a3);
  CADeserializer::Read(this, a3 + 4);

  return CADeserializer::Read(this, a3 + 8);
}

uint64_t TSimpleMarshaller<MixerDistanceParams>::SerializeT(int a1, CASerializer *this, char *a3)
{
  CASerializer::Write(this, a3);
  CASerializer::Write(this, a3 + 4);

  return CASerializer::Write(this, a3 + 8);
}

uint64_t TMarshaller<MixerDistanceParams>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 == 12 || *a4 == 0)
  {
    Marshaller::CheckDest(a1, a3, a4, 0xCuLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v8 = *(a2 + 32) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL TMarshaller<MixerDistanceParams>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 12)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 12;
}

void TSimpleMarshaller<MixerDistanceParams>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t MarshalSpatialMixerImpulseResponses::Deserialize(MarshalSpatialMixerImpulseResponses *this, CADeserializer *a2, void **a3, unsigned int *a4)
{
  v22 = 0;
  CADeserializer::Read(a2, &v22 + 4);
  CADeserializer::Read(a2, &v22);
  if (a2->var4)
  {
    return 0;
  }

  Marshaller::CheckDest(this, a3, a4, 8 * (v22 * WORD2(v22) + WORD2(v22)) + 40);
  v9 = v22;
  v8 = WORD2(v22);
  v10 = *a3;
  v10[2] = HIDWORD(v22);
  v10[3] = v9;
  CADeserializer::Read(a2, v10 + 4);
  CADeserializer::Read(a2, v10 + 8);
  if (a2->var4)
  {
    return 0;
  }

  if (*(v10 + 4))
  {
    Ptr = CADeserializer::GetAndAdvanceReadPtr(a2);
    var4 = a2->var4;
    *(v10 + 3) = Ptr;
    if (var4)
    {
      return 0;
    }
  }

  else
  {
    *(v10 + 3) = 0;
  }

  v14 = *a3 + 40;
  v15 = v8;
  if (v8)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 0;
    v18 = &v16[(8 * v15)];
    do
    {
      if (v9)
      {
        v19 = v18;
        v20 = v9;
        do
        {
          if (*(v10 + 2))
          {
            v21 = CADeserializer::GetAndAdvanceReadPtr(a2);
            if (a2->var4)
            {
              return 0;
            }
          }

          else
          {
            v21 = 0;
          }

          *v19++ = v21;
          --v20;
        }

        while (v20);
      }

      *&v16[8 * v17] = &v16[8 * v17 + (8 * v15)];
      ++v17;
      ++v18;
    }

    while (v17 != v15);
  }

  *v10 = v16;
  return 1;
}