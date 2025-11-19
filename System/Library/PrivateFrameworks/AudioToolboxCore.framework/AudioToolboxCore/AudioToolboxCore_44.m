void sub_18F8C01FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t original::AudioConverterOOP::reset(original::AudioConverterOOP *this, double a2)
{
  result = AudioConverterRenderClient::sendReset(*(*(this + 11) + 8), a2);
  v4 = *(this + 11);
  *(*(v4 + 80) + 60) = 0;
  *(v4 + 88) = 0;
  *(v4 + 116) = 0;
  *(v4 + 128) = 0;
  return result;
}

void original::AudioConverterOOP::~AudioConverterOOP(original::AudioConverterOOP *this)
{
  original::AudioConverterOOP::~AudioConverterOOP(this);

  JUMPOUT(0x193ADF220);
}

{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F033CFB8;
  v2 = (this + 88);
  if (*(this + 11))
  {
    if ((*(this + 12) & 1) == 0)
    {
      if (*(this + 80) == 1)
      {
        AT::ScopedTrace::~ScopedTrace((this + 40));
        *(this + 80) = 0;
      }

      *(this + 40) = 1;
      *(this + 11) = 2757;
      *(this + 3) = 0u;
      *(this + 4) = 0u;
      kdebug_trace();
      *(this + 80) = 1;
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v3 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "AudioConverterOOPOriginal.cpp";
      v8 = 1024;
      v9 = 269;
      v10 = 2048;
      v11 = this;
      _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> %p: Disposing of service.", &v6, 0x1Cu);
    }

    v4 = atomic_load((*v2 + 240));
    if (v4)
    {
      if ((*(this + 104) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      AudioConverterXPC_Client::dispose(**(this + 11), *(this + 12));
      AudioConverterXPC_Client::deleteRenderer(**(this + 11), *(*(this + 11) + 8));
    }
  }

  else
  {
    std::unique_ptr<original::AudioConverterOOP::Impl>::reset[abi:ne200100](this + 11);
  }

  std::unique_ptr<original::AudioConverterOOP::Impl>::reset[abi:ne200100](v2);
  if (*(this + 80) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((this + 40));
  }

  AudioConverterAPI::~AudioConverterAPI(this);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_18F8C0480(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::unique_ptr<original::AudioConverterOOP::Impl>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    AudioConverterXPC_Client::disconnect(*v1);
    std::unique_ptr<auoop::WorkgroupPropagator>::reset[abi:ne200100]((v1 + 232), 0);
    v2 = *(v1 + 200);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    ExtendedAudioBufferList_Destroy(*(v1 + 176));
    v3 = *(v1 + 104);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    ExtendedAudioBufferList_Destroy(*(v1 + 80));
    std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100]((v1 + 32), 0);
    std::unique_ptr<AudioConverterRenderClient>::reset[abi:ne200100]((v1 + 8), 0);
    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

const std::__fs::filesystem::path **std::unique_ptr<AudioConverterRenderClient>::reset[abi:ne200100](const std::__fs::filesystem::path ***a1, const std::__fs::filesystem::path **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AudioConverterRenderClient::~AudioConverterRenderClient(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void original::AudioConverterOOP::Impl::setUpClientRenderer(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v6;
  v7 = a3[1];
  v18 = *a3;
  v21 = a5;
  v22 = a4;
  v17 = *(a2 + 32);
  v19 = v7;
  v20 = *(a3 + 4);
  *buf = 0x100000000;
  while (1)
  {
    v8 = *&buf[v5];
    v9 = v16 + 14 * v8;
    LODWORD(outPropertyData[0]) = 0;
    ioPropertyDataSize[0] = 4;
    v10 = v9[2];
    if (v10 == 1818440480 || v10 == 1935827744)
    {
      v12 = 1;
    }

    else if (AudioFormatGetProperty(0x66766272u, 0x28u, v16 + 56 * v8, ioPropertyDataSize, outPropertyData))
    {
      v12 = v9[4] == 0;
    }

    else
    {
      v12 = outPropertyData[0];
    }

    v13 = &v21 + v8;
    if (!*v13)
    {
      v13 = v9 + 4;
    }

    v14 = *v13;
    v15 = ioPropertyDataSize[v8 - 2];
    v9[10] = v12;
    v9[11] = v15;
    v9[12] = v14;
    v5 += 4;
    if (v5 == 8)
    {
      operator new();
    }
  }
}

void sub_18F8C09B4(_Unwind_Exception *a1, int a2)
{
  __cxa_guard_abort(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm33EEEtlA33_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100]((v4 + 344));
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100]((v4 + 336));
  if (*(v2 + 360) == 1)
  {
    *(v5 - 144) = v2 + 280;
    std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100]((v5 - 144));
  }

  audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender(v3);
  MEMORY[0x193ADF220](v2, 0x10F2C40267D4E1CLL);
  if (a2 == 2)
  {
    v8 = __cxa_begin_catch(a1);
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v9 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v10 = (*(*v8 + 16))(v8);
      *(v5 - 144) = 136315650;
      v11 = v5 - 144;
      *(v11 + 4) = "AudioConverterOOPOriginal.cpp";
      *(v5 - 132) = 1024;
      *(v11 + 14) = 107;
      *(v5 - 126) = 2080;
      *(v11 + 20) = v10;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterOOP: Error creating real time renderer: %s.", (v5 - 144), 0x1Cu);
    }

    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v12 = __cxa_begin_catch(a1);
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v13 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *(v5 - 144) = 136315394;
      v14 = v5 - 144;
      *(v14 + 4) = "AudioConverterOOPOriginal.cpp";
      *(v5 - 132) = 1024;
      *(v14 + 14) = 111;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterOOP: Error creating real time renderer.", (v5 - 144), 0x12u);
    }

    v15 = *v12;
    __cxa_end_catch();
  }

  JUMPOUT(0x18F8C085CLL);
}

void remoteAudioConverterClient(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    xpc_retain(a2);
  }

  else
  {
    v2 = xpc_null_create();
  }

  inactive = dispatch_workloop_create_inactive("ACClient");
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  if (object_getClass(v2) == MEMORY[0x1E69E9E68])
  {
    *v7 = 0u;
    v8 = 0u;
    *v6 = 0u;
    v9 = v2;
    if (v2)
    {
      xpc_retain(v2);
LABEL_9:
      if (inactive)
      {
        dispatch_retain(inactive);
      }

      v10 = inactive;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      dispatch_release(inactive);
      xpc_release(v2);
      operator new();
    }

    v5 = xpc_null_create();
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0;
    v7[0] = 0;
    v4 = selectAudioConverterService();
    std::string::basic_string[abi:ne200100]<0>(&v7[1], v4);
    v5 = xpc_null_create();
  }

  v9 = v5;
  goto LABEL_9;
}

void sub_18F8C0E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__function::__func<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1},std::allocator<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1}>,void ()(swix::ipc_endpoint&,applesauce::xpc::object const&)>::operator()(uint64_t a1, uint64_t a2, swix **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v5 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    swix::xpc_object_description(__p, *a3, v6);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315906;
    v12 = "AudioConverterOOPOriginal.cpp";
    v13 = 1024;
    v14 = 81;
    v15 = 2048;
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterOOP -> %p: Converter connection was invalidated with error %s.", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  atomic_store(0, (v4 + 240));
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1},std::allocator<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1}>,void ()(swix::ipc_endpoint&,applesauce::xpc::object const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033D168;
  a2[1] = v2;
  return result;
}

const char *selectAudioConverterService()
{
  v0 = "com.apple.audio.AudioConverterService";
  if (_os_feature_enabled_impl())
  {
    if (isPlatformBinary(void)::once != -1)
    {
      dispatch_once(&isPlatformBinary(void)::once, &__block_literal_global_14191);
    }

    if (isPlatformBinary(void)::platformBinary != 1)
    {
      return "com.apple.audio.AudioConverterService.HighCapacity";
    }
  }

  return v0;
}

void ___ZL16isPlatformBinaryv_block_invoke_14199()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    CodeSignStatus = SecTaskGetCodeSignStatus(v0);
    isPlatformBinary(void)::platformBinary = (CodeSignStatus & 0xC000001) == 67108865;
    if ((CodeSignStatus & 0xC000001) != 0x4000001)
    {
      v3 = CodeSignStatus;
      v4 = os_variant_allows_internal_security_policies();
      if ((v3 & 0x1C000000) == 0x14000000)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      isPlatformBinary(void)::platformBinary = v5;
    }

    CFRelease(v1);
  }
}

void std::__function::__func<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(applesauce::xpc::dict const&)#1},std::allocator<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(applesauce::xpc::dict const&)#1}>,void ()(applesauce::xpc::dict const&)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  v2 = **(a1 + 8);
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v4 = v3;
  }

  AudioConverterXPC_Client::synchronizeWorkgroups(v2, &v4);
  xpc_release(v3);
}

uint64_t std::__function::__func<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(applesauce::xpc::dict const&)#1},std::allocator<original::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*)::{lambda(applesauce::xpc::dict const&)#1}>,void ()(applesauce::xpc::dict const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033D100;
  a2[1] = v2;
  return result;
}

void original::AudioConverterOOP::AudioConverterOOP(BaseOpaqueObject *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *(v1 + 12) = 0;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F033CFB8;
  *(v1 + 40) = 0;
  *(v1 + 80) = 0;
  operator new();
}

void sub_18F8C1F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, AT::ScopedTrace *a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  std::unique_ptr<original::AudioConverterOOP::Impl>::reset[abi:ne200100]((v14 + 88));
  if (*(v14 + 80) == 1)
  {
    AT::ScopedTrace::~ScopedTrace(a9);
  }

  AudioConverterAPI::~AudioConverterAPI(v14);
  _Unwind_Resume(a1);
}

uint64_t acv2::DitherConverter::SetBitDepth(acv2::DitherConverter *this, unsigned int a2)
{
  if (a2 > 0x18)
  {
    return 560096368;
  }

  result = 0;
  *(this + 42) = a2;
  return result;
}

void acv2::TPDFDitherConverter::ConvertBufferList(uint64_t a1, int a2, unsigned int **a3, _DWORD **a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = **a3;
  if (v5 != **a4)
  {
    std::terminate();
  }

  v8 = 1;
  if ((*(a1 + 28) & 0x20) == 0)
  {
    v8 = *(a1 + 44);
  }

  v9 = scalbnf(1.0, 1 - *(a1 + 168));
  if (v5)
  {
    v10 = v9;
    v11 = 0;
    v12 = (v8 * a2);
    do
    {
      v13 = *&v4[4 * v11 + 4];
      v14 = *&(*a4)[4 * v11 + 4];
      if (v12)
      {
        v15 = 0;
        v16 = v12;
        do
        {
          if (v16 >= 0x200)
          {
            v17 = 512;
          }

          else
          {
            v17 = v16;
          }

          generateVector((v14 + 4 * v15), v17, a1 + 176, v10);
          generateVector(v21, v17, a1 + 208, v10);
          MEMORY[0x193AE07B0](v14 + 4 * v15, 1, v21, 1, v14 + 4 * v15, 1, v17);
          v15 += v17;
          v16 -= v17;
        }

        while (v16);
      }

      MEMORY[0x193AE07B0](v13, 1, v14, 1, v14, 1, v12);
      ++v11;
      v4 = *a3;
    }

    while (v11 < **a3);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_18F8C23C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void acv2::DitherConverter::description(acv2::DitherConverter *this@<X0>, std::string *a2@<X8>)
{
  acv2::AudioConverterBase::description(this, &v12);
  v4 = std::string::append(&v12, "    bitdepth: ", 0xEuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(this + 42));
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

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "\n", 1uLL);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_18F8C24EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void acv2::TPDFDitherConverter::~TPDFDitherConverter(acv2::TPDFDitherConverter *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

void acv2::NoiseShapingDitherConverter::ConvertBufferList(acv2::NoiseShapingDitherConverter *this, unsigned int a2, unsigned int **a3, _DWORD **a4)
{
  v4 = *a3;
  v5 = **a3;
  if (v5 != **a4 || ((v7 = *(this + 21), (*(this + 68) & 0x20) != 0) ? (v8 = 1) : (v8 = v7), v8 * v5 != v7))
  {
    std::terminate();
  }

  if (v5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (v8)
      {
        v13 = *&v4[4 * v11 + 4];
        v14 = *&(*a4)[4 * v11 + 4];
        acv2::NoiseShapingDitherConverter::ConvertSingleChannel(this, a2, v12, v13, v8, v14, v8);
        v15 = v13 + 1;
        v16 = v14 + 1;
        ++v12;
        v17 = v8 - 1;
        if (v8 != 1)
        {
          do
          {
            acv2::NoiseShapingDitherConverter::ConvertSingleChannel(this, a2, v12, v15++, v8, v16++, v8);
            --v17;
            ++v12;
          }

          while (v17);
        }

        v4 = *a3;
        v5 = **a3;
      }

      ++v11;
    }

    while (v11 < v5);
  }
}

void acv2::NoiseShapingDitherConverter::ConvertSingleChannel(acv2::NoiseShapingDitherConverter *this, unsigned int a2, unsigned int a3, const float *a4, int a5, float *a6, int a7)
{
  v14 = *(this + 42);
  v15 = scalbnf(0.5, v14);
  *v16.i32 = scalbnf(2.0, -v14);
  v17 = *(this + 22);
  v18.i32[0] = *(v17 + 4 * a3);
  if (a2)
  {
    v19 = 0;
    v20 = 0;
    v21 = a2;
    v22 = *(this + 24) + 32 * a3;
    do
    {
      v23 = -(*v18.i32 - (v15 * a4[v19]));
      v24 = roundf(v23);
      v25 = v24 - v23;
      v18 = *v22;
      v26 = *(v22 + 16);
      v27 = vextq_s8(*v22, v26, 4uLL);
      v28 = vextq_s8(v26, v16, 4uLL);
      v28.i32[3] = 0;
      *v22 = vmlaq_n_f32(v27, xmmword_18F901CD0, v25);
      *(v22 + 16) = vmlaq_n_f32(v28, xmmword_18F901CE0, v25);
      a6[v20] = *v16.i32 * v24;
      v20 += a7;
      v19 += a5;
      --v21;
    }

    while (v21);
    v17 = *(this + 22);
  }

  *(v17 + 4 * a3) = v18.i32[0];
}

uint64_t acv2::NoiseShapingDitherConverter::Reset(acv2::NoiseShapingDitherConverter *this)
{
  v2 = *(this + 22);
  v3 = *(this + 23) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = *(this + 24);
  v5 = *(this + 25) - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  return 0;
}

void acv2::NoiseShapingDitherConverter::~NoiseShapingDitherConverter(acv2::NoiseShapingDitherConverter *this)
{
  acv2::NoiseShapingDitherConverter::~NoiseShapingDitherConverter(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033D2E0;
  v3 = (this + 192);
  v2 = *(this + 24);
  if (v2)
  {
    v4 = *(this + 25);
    if (v4 != v2)
    {
      *(this + 25) = &v4[(v2 - v4 + 31) & 0xFFFFFFFFFFFFFFE0];
    }

    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
  }

  v5 = *(this + 22);
  if (v5)
  {
    v6 = *(this + 23);
    if (v6 != v5)
    {
      *(this + 23) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v5);
    *(this + 22) = 0;
    *(this + 23) = 0;
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

void acv2::UV22DitherConverter::ConvertBufferList(uint64_t a1, int a2, void *a3, _DWORD **a4)
{
  v4 = **a3;
  if (v4 != **a4)
  {
    CAAssertRtn();
LABEL_19:
    v20 = CAAssertRtn();
    acv2::UV22DitherConverter::ConvertChannel<float,float>(v20, v21, v22, v23, v24, v25);
    return;
  }

  v6 = *(a1 + 84);
  if ((*(a1 + 68) & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 * v4 != v6)
  {
    goto LABEL_19;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v12 = *(*a3 + 16 * i + 16);
      v13 = *&(*a4)[4 * i + 4];
      if (*(a1 + 28))
      {
        if (v7)
        {
          acv2::UV22DitherConverter::ConvertChannel<float,float>(a1, *(*a3 + 16 * i + 16), v7, *&(*a4)[4 * i + 4], v7, a2);
          v17 = (v12 + 4);
          v18 = (v13 + 4);
          v19 = v7 - 1;
          if (v7 != 1)
          {
            do
            {
              acv2::UV22DitherConverter::ConvertChannel<float,float>(a1, v17++, v7, v18++, v7, a2);
              --v19;
            }

            while (v19);
          }
        }
      }

      else if (v7)
      {
        acv2::UV22DitherConverter::ConvertChannel<int,short>(a1, *(*a3 + 16 * i + 16), v7, *&(*a4)[4 * i + 4], v7, a2);
        v14 = (v12 + 4);
        v15 = (v13 + 2);
        v16 = v7 - 1;
        if (v7 != 1)
        {
          do
          {
            acv2::UV22DitherConverter::ConvertChannel<int,short>(a1, v14++, v7, v15++, v7, a2);
            --v16;
          }

          while (v16);
        }
      }
    }
  }
}

void acv2::UV22DitherConverter::ConvertChannel<float,float>(_DWORD *a1, float *a2, unsigned int a3, float *a4, unsigned int a5, int a6)
{
  v12 = scalbnf(1.0, a1[47] - a1[44] - 7);
  if (a6)
  {
    v13 = a1[43];
    v14 = a1[46];
    v15 = a1[45];
    v16 = v13 + acv2::UV22DitherConverter::m_pcDriverTable[v15];
    if (v16 <= 7)
    {
      v17 = v13 + acv2::UV22DitherConverter::m_pcDriverTable[v15];
    }

    else
    {
      v17 = v16 - 8;
    }

    do
    {
      *a4 = *a2 + (v12 * (acv2::UV22DitherConverter::m_pcDitherSequence[4096 * v17 + v14] + 0.5));
      if (v14 + 1 < 4096)
      {
        ++v14;
      }

      else
      {
        v14 -= 4095;
        if (v15 == 2047)
        {
          LODWORD(v15) = 0;
        }

        else
        {
          LODWORD(v15) = v15 + 1;
        }

        a1[45] = v15;
        v17 = v13 + acv2::UV22DitherConverter::m_pcDriverTable[v15];
        if (v17 > 7)
        {
          v17 -= 8;
        }
      }

      a2 += a3;
      a4 += a5;
      --a6;
    }

    while (a6);
    a1[46] = v14;
  }
}

_DWORD *acv2::UV22DitherConverter::ConvertChannel<int,short>(_DWORD *result, _DWORD *a2, unsigned int a3, _WORD *a4, unsigned int a5, int a6)
{
  if (a6)
  {
    v6 = result[46];
    v7 = result[47] - 8;
    v8 = result[43];
    v9 = result[44];
    v10 = v7 + v9;
    v11 = (1 << (v7 + v9 - 1)) + (1 << (v9 - 1));
    v12 = result[45];
    v13 = v8 + acv2::UV22DitherConverter::m_pcDriverTable[v12];
    if (v13 <= 7)
    {
      v14 = v8 + acv2::UV22DitherConverter::m_pcDriverTable[v12];
    }

    else
    {
      v14 = v13 - 8;
    }

    v15 = 4 * a3;
    do
    {
      v16 = (v11 + *a2 + ((acv2::UV22DitherConverter::m_pcDitherSequence[4096 * v14 + v6] - 128) << v10)) >> 9;
      if ((v16 & 0x80000000) != 0)
      {
        if (v16 < 0xFFFF8000)
        {
          LOWORD(v16) = 0x8000;
        }
      }

      else if (v16 >> 15)
      {
        LOWORD(v16) = 0x7FFF;
      }

      *a4 = v16;
      v17 = v6 + 1;
      result[46] = v6 + 1;
      if (v6 + 1 >= 4096)
      {
        v17 = v6 - 4095;
        if (v12 == 2047)
        {
          LODWORD(v12) = 0;
        }

        else
        {
          LODWORD(v12) = v12 + 1;
        }

        result[45] = v12;
        result[46] = v17;
        v14 = v8 + acv2::UV22DitherConverter::m_pcDriverTable[v12];
        if (v14 > 7)
        {
          v14 -= 8;
        }
      }

      a2 = (a2 + v15);
      a4 += a5;
      v6 = v17;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t acv2::UV22DitherConverter::Reset(acv2::UV22DitherConverter *this)
{
  *(this + 46) = 0;
  *(this + 47) = 3;
  *(this + 43) = 0;
  *(this + 45) = 0;
  return 0;
}

void acv2::UV22DitherConverter::~UV22DitherConverter(acv2::UV22DitherConverter *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

void std::vector<CA::CommonPCMFormat>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t _ZNSt3__18valarrayIDv8_fED2Ev(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 31) & 0xFFFFFFFFFFFFFFE0];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t std::valarray<float>::~valarray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t MP4BoxParser_SyncSampleTable::Init(MP4BoxParser **this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser_Full::Initialize(this);
  if (!v2)
  {
    if (*(this + 5) != 1937011571)
    {
      v2 = 4294967294;
      goto LABEL_10;
    }

    v3 = (*(*this + 3))(this);
    v12 = 0;
    v4 = this[3];
    if (v4 <= (*(*this + 3))(this) || this[3] <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        v2 = 0;
        *(this + 60) = 0;
        goto LABEL_10;
      }

      *buf = 136315394;
      v14 = "MP4_BoxParser_SyncSampleTable.cpp";
      v15 = 1024;
      v16 = 105;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  'stss' box is too small for its entry count";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
      goto LABEL_8;
    }

    v9 = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, &v12);
    if (!v9)
    {
      v10 = bswap32(v12);
      *(this + 16) = v10;
      this[9] = 4;
      v11 = this[3];
      if (v11 > (*(*this + 3))(this) && this[3] >= 4 * v10 + 4)
      {
        v2 = 0;
        *(this + 60) = 1;
        goto LABEL_10;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 136315394;
      v14 = "MP4_BoxParser_SyncSampleTable.cpp";
      v15 = 1024;
      v16 = 116;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  'stss' box is too small for its entries";
      goto LABEL_7;
    }

    v2 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "MP4_BoxParser_SyncSampleTable.cpp";
      v15 = 1024;
      v16 = 108;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't read sync sample box entry count", buf, 0x12u);
    }
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void MP4BoxParser_SyncSampleTable::~MP4BoxParser_SyncSampleTable(MP4BoxParser_SyncSampleTable *this)
{
  MP4BoxParser_SyncSampleTable::~MP4BoxParser_SyncSampleTable(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033D510;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void MP4BoxParser_SyncSampleTable::MP4BoxParser_SyncSampleTable(MP4BoxParser_SyncSampleTable *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F033D510;
  *(this + 60) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
}

uint64_t MP4BoxParser_SyncSampleTable::GetSyncSampleTable(MP4BoxParser_SyncSampleTable *this, SyncSampleTable *a2)
{
  v2 = a2;
  v54 = *MEMORY[0x1E69E9840];
  v5 = (this + 80);
  v4 = *(this + 80);
  if (*(this + 60) != 1 || (*(this + 80) & 1) != 0)
  {
LABEL_32:
    *v2 = v4;
    if (v5 == v2)
    {
      DataSourceBytes = 0;
    }

    else
    {
      v29 = *(v2 + 1);
      v31 = *(this + 11);
      v30 = *(this + 12);
      v32 = v30 - v31;
      v33 = *(v2 + 3);
      if (v33 - v29 < (v30 - v31))
      {
        v34 = v32 >> 3;
        if (v29)
        {
          *(v2 + 2) = v29;
          operator delete(v29);
          v33 = 0;
          *(v2 + 1) = 0;
          *(v2 + 2) = 0;
          *(v2 + 3) = 0;
        }

        if (!(v34 >> 61))
        {
          v35 = v33 >> 2;
          if (v33 >> 2 <= v34)
          {
            v35 = v32 >> 3;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          std::vector<double>::__vallocate[abi:ne200100](v2 + 8, v36);
        }

        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v37 = *(v2 + 2);
      v38 = v37 - v29;
      if (v37 - v29 >= v32)
      {
        if (v30 != v31)
        {
          memmove(v29, v31, v30 - v31);
        }

        DataSourceBytes = 0;
        v41 = &v29[v32];
      }

      else
      {
        if (v37 != v29)
        {
          memmove(*(v2 + 1), v31, v37 - v29);
          v37 = *(v2 + 2);
        }

        v39 = &v31[v38];
        v40 = v30 - &v31[v38];
        if (v40)
        {
          memmove(v37, v39, v40);
        }

        DataSourceBytes = 0;
        v41 = &v37[v40];
      }

      *(v2 + 2) = v41;
    }

    goto LABEL_54;
  }

  v6 = *(this + 16);
  if (!v6)
  {
LABEL_31:
    v4 = 1;
    *v5 = 1;
    goto LABEL_32;
  }

  v44 = (this + 80);
  memset(v49, 0, sizeof(v49));
  if (v6 >= 0x2000)
  {
    v7 = 0x2000;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(this + 9);
  buf[0] = 0;
  v46 = v7;
  std::vector<unsigned char>::__append(v49, (4 * v7), buf);
  v9 = v49[0];
  while (1)
  {
    v10 = v6 >= v46 ? v46 : v6;
    v11 = (*(*this + 24))(this);
    DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v8 + v11, 4 * v10, v9);
    if (DataSourceBytes)
    {
      break;
    }

    v47 = v8;
    v48 = v6;
    v13 = 0;
    if (v10 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = *(this + 12);
    v16 = 4 * v14;
    do
    {
      v17 = bswap32(*&v9[v13]) - 1;
      v18 = *(this + 13);
      if (v15 >= v18)
      {
        v19 = *(this + 11);
        v20 = v15 - v19;
        v21 = (v15 - v19) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v23 = v18 - v19;
        if (v23 >> 2 > v22)
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

        if (v24)
        {
          std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v24);
        }

        v25 = v21;
        v26 = (8 * v21);
        v27 = &v26[-v25];
        *v26 = v17;
        v15 = v26 + 1;
        memcpy(v27, v19, v20);
        v28 = *(this + 11);
        *(this + 11) = v27;
        *(this + 12) = v15;
        *(this + 13) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v15++ = v17;
      }

      *(this + 12) = v15;
      *(this + 80) = 1;
      v13 += 4;
    }

    while (v16 != v13);
    v8 = v47 + 4 * v10;
    v6 = v48 - v10;
    if (v48 == v10)
    {
      operator delete(v9);
      v5 = v44;
      v2 = a2;
      goto LABEL_31;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "MP4_BoxParser_SyncSampleTable.cpp";
    v52 = 1024;
    v53 = 72;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't read sync sample entries", buf, 0x12u);
  }

  if (v9)
  {
    operator delete(v9);
  }

LABEL_54:
  v42 = *MEMORY[0x1E69E9840];
  return DataSourceBytes;
}

void sub_18F8C36DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OggAudioFile::PageForPacket(OggAudioFile *this, int64_t a2)
{
  v3 = *(this + 53);
  v2 = *(this + 54);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    return -1;
  }

  v5 = 0;
  v6 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 3);
  v7 = v6 <= 1 ? 1 : v6;
  v8 = (v3 + 40);
  while (*(v8 - 1) + *v8 <= a2)
  {
    v8 += 14;
    if (v7 == ++v5)
    {
      v5 = v7;
      break;
    }
  }

  if (v5 == v6)
  {
    return -1;
  }

  if (!v5)
  {
    return 0;
  }

  v10 = v3 + 56 * v5;
  v11 = *(v10 + 32);
  if (v11 < a2 || v11 == a2 && (*v10 & 1) == 0)
  {
    return v5;
  }

  v12 = v5 - 1;
  v13 = v3 + 56 * v5 - 56;
  do
  {
    result = v12;
    if (!v12)
    {
      break;
    }

    --v5;
    if (*(v13 + 40))
    {
      return v5;
    }

    --v12;
    v14 = *v13;
    v13 -= 56;
  }

  while ((v14 & 1) != 0);
  return result;
}

uint64_t OggAudioFile::NextPage(OggAudioFile *this)
{
  if (*(this + 520))
  {
    return 0;
  }

  *v65 = 0;
  *&v65[8] = 0;
  *&v65[23] = 0;
  *&v65[16] = 0;
  bzero(v61, 0x410uLL);
  v3 = *(this + 48);
  v1 = OggAudioFile::ParsePage(this, v3, v65, v61);
  if (v1)
  {
    return v1;
  }

  if (*(this + 98) != *&v65[14])
  {
    v8 = v3 + 27;
    v9 = v62;
LABEL_69:
    v1 = 0;
    *(this + 48) = v8 + v65[26] + v9;
    return v1;
  }

  v60.mStartOffset = 0;
  *&v60.mVariableFramesInPacket = 0;
  v5 = *(this + 53);
  v4 = *(this + 54);
  v6 = *(this + 76);
  if (v6)
  {
    if (v6[1])
    {
      v7 = 0;
    }

    else
    {
      v10 = *v6;
      if (v10 == 1869641075)
      {
        v7 = 2;
      }

      else
      {
        v7 = v10 == 1987015266;
      }
    }

    std::vector<unsigned char>::reserve(this + 56, v7);
  }

  else
  {
    v7 = 0;
  }

  v11 = v63;
  if (v63 && (*(this + 59) & 0x8000000000000000) == 0 && *(this + 120))
  {
    if ((v65[5] & 1) == 0)
    {
      return 1685348671;
    }

    v47 = *(this + 120) + Ogg::PagePacketInfo::operator[](v61, 0);
    *(this + 120) = v47;
    v60.mStartOffset = *(this + 59);
    v60.mDataByteSize = v47;
    v48 = *(this + 76);
    if (v48)
    {
      v49 = v11;
      v50 = *(this + 56);
      v51 = *(this + 57) - v50;
      if (v51 < v7)
      {
        LODWORD(v52) = v7 - v51;
        v53 = Ogg::PagePacketInfo::operator[](v61, 0);
        if (v53 >= v7 - v51)
        {
          v52 = v52;
        }

        else
        {
          v52 = v53;
        }

        v59 = 0;
        std::vector<unsigned char>::resize((this + 448), (v52 + v51));
        v54 = (*(**(this + 13) + 48))(*(this + 13), 0, v3 + v65[26] + 27, v52, *(this + 56) + v51, &v59);
        if (v59 >= v52)
        {
          v1 = v54;
        }

        else
        {
          v1 = 4294967257;
        }

        if (v1)
        {
          return v1;
        }

        v48 = *(this + 76);
        v50 = *(this + 56);
      }

      v60.mVariableFramesInPacket = PacketDurationParser::FramesInPacket(v48, v50, v7);
      *(this + 57) = *(this + 56);
      v11 = v49;
    }

    else
    {
      v60.mVariableFramesInPacket = 0;
    }

    AudioFileObject::AppendPacket(this, &v60);
    *(this + 120) = 0;
    *(this + 59) = -1;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = v65[5];
  v14 = *&v65[6];
  v15 = v3 + 27 + v65[26];
  v16 = v62;
  v58 = v3 + 27;
  if (v4 == v5)
  {
    v18 = 0;
    v17 = 0;
    v21 = v64;
    *(this + 9) = v15;
  }

  else
  {
    v17 = 0;
    v18 = *(*(this + 53) + v4 - v5 - 24) + *(*(this + 53) + v4 - v5 - 16);
    if ((v65[5] & 1) != 0 && v11)
    {
      v19 = v62;
      v20 = Ogg::PagePacketInfo::operator[](v61, 0);
      v16 = v19;
      v17 = v20;
    }

    v21 = v64;
  }

  v22 = *(this + 54);
  v23 = *(this + 55);
  if (v22 >= v23)
  {
    v55 = v18;
    v56 = v14;
    v57 = v11;
    v25 = *(this + 53);
    v26 = v22 - v25;
    v27 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v25) >> 3);
    v28 = v27 + 1;
    if ((v27 + 1) > 0x492492492492492)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v29 = 0x6DB6DB6DB6DB6DB7 * ((v23 - v25) >> 3);
    if (2 * v29 > v28)
    {
      v28 = 2 * v29;
    }

    if (v29 >= 0x249249249249249)
    {
      v30 = 0x492492492492492;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      if (v30 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v31 = 56 * v27;
    *v31 = v13;
    *(v31 + 4) = 0;
    *(v31 + 8) = v56;
    *(v31 + 16) = v15;
    *(v31 + 24) = v16;
    *(v31 + 28) = 0;
    *(v31 + 32) = v55;
    *(v31 + 40) = v57;
    *(v31 + 44) = v17;
    *(v31 + 48) = v21;
    *(v31 + 52) = 0;
    v24 = 56 * v27 + 56;
    v32 = v31 - v26;
    memcpy((v31 - v26), v25, v26);
    *(this + 53) = v32;
    *(this + 54) = v24;
    *(this + 55) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v22 = v13;
    *(v22 + 4) = 0;
    *(v22 + 8) = v14;
    *(v22 + 16) = v15;
    *(v22 + 24) = v16;
    *(v22 + 28) = 0;
    *(v22 + 32) = v18;
    *(v22 + 40) = v11;
    *(v22 + 44) = v17;
    v24 = v22 + 56;
    *(v22 + 48) = v21;
    *(v22 + 52) = 0;
  }

  *(this + 54) = v24;
  v33 = v15 - *(this + 9);
  v60.mStartOffset = v33;
  if (v12)
  {
    v33 += Ogg::PagePacketInfo::operator[](v61, 0);
    v60.mStartOffset = v33;
  }

  v34 = v63;
  if (v12 < v63)
  {
    v1 = 1685348671;
    do
    {
      v35 = Ogg::PagePacketInfo::operator[](v61, v12);
      v60.mDataByteSize = v35;
      if (*(this + 76))
      {
        v59 = 0;
        v36 = *(this + 56);
        v37 = *(this + 57) - v36;
        if (v7 <= v37)
        {
          if (v7 < v37)
          {
            *(this + 57) = v36 + v7;
          }
        }

        else
        {
          std::vector<unsigned char>::__append((this + 448), v7 - v37);
          v36 = *(this + 56);
        }

        v38 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9) + v33, v7, v36, &v59);
        if (v59 >= v7)
        {
          v39 = v38;
        }

        else
        {
          v39 = 4294967257;
        }

        if (v39)
        {
          return v39;
        }

        v60.mVariableFramesInPacket = PacketDurationParser::FramesInPacket(*(this + 76), *(this + 56), v7);
        if (!v60.mVariableFramesInPacket)
        {
          return v1;
        }

        *(this + 57) = *(this + 56);
      }

      AudioFileObject::AppendPacket(this, &v60);
      v33 += v35;
      v60.mStartOffset = v33;
      ++v12;
    }

    while (v34 != v12);
  }

  v40 = v64;
  if (!v64)
  {
    goto LABEL_68;
  }

  if (*(this + 59) == -1)
  {
    v41 = 0;
    *(this + 59) = v33;
    ++*(this + 64);
  }

  else
  {
    v41 = *(this + 120);
  }

  if ((*(this + 120) = v41 + v40, !*(this + 76)) || (v42 = *(this + 57) - *(this + 56), v42 >= v7) || (v40 >= v7 - v42 ? (v43 = (v7 - v42)) : (v43 = v40), (v59 = 0, std::vector<unsigned char>::resize((this + 448), (v43 + v42)), v44 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9) + v33, v43, *(this + 56) + v42, &v59), v59 >= v43) ? (v1 = v44) : (v1 = 4294967257), !v1))
  {
LABEL_68:
    v45 = (*(*this + 232))(this);
    v9 = v62;
    (*(*this + 240))(this, v45 + v62);
    v8 = v58;
    goto LABEL_69;
  }

  return v1;
}

uint64_t OggAudioFile::ParsePage(uint64_t a1, uint64_t a2, uint64_t a3, Ogg::PagePacketInfo *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  LODWORD(result) = (*(**(a1 + 104) + 48))(*(a1 + 104), 0, a2, 27, &v14, &v12);
  if (v12 >= 0x1B)
  {
    result = result;
  }

  else
  {
    result = 4294967257;
  }

  if (!result)
  {
    v9 = v14;
    *a3 = bswap32(v14);
    result = 1685348671;
    if (v9 == 1399285583)
    {
      *(a3 + 4) = v15;
      *(a3 + 6) = v16;
      *(a3 + 14) = v17;
      *(a3 + 22) = v18;
      *(a3 + 26) = v19;
      LODWORD(result) = (*(**(a1 + 104) + 48))(*(a1 + 104), 0, a2 + 27);
      v10 = *(a3 + 26);
      if (v12 >= v10)
      {
        result = result;
      }

      else
      {
        result = 4294967257;
      }

      if (!result)
      {
        if (Ogg::PagePacketInfo::Deserialize(a4, v13, v10))
        {
          result = 1685348671;
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OggAudioFile::ParseAudioFile(OggAudioFile *this)
{
  v76 = *MEMORY[0x1E69E9840];
  *&__len[1] = 0;
  *v73 = 0;
  *&v73[15] = 0;
  *&v73[8] = 0;
  bzero(v69, 0x410uLL);
  memset(&v68, 0, sizeof(v68));
  memset(__p, 0, sizeof(__p));
  v66 = 0;
  v2 = (*(**(this + 13) + 24))(*(this + 13), this + 376);
  if (!v2)
  {
    if (*(this + 151))
    {
LABEL_6:
      if (*(this + 368) != 1)
      {
        v2 = 1718449215;
        goto LABEL_84;
      }

      v5 = *(this + 10);
      *buf = *(this + 9);
      *&buf[16] = v5;
      v75 = *(this + 22);
      (*(*this + 184))(this, buf);
      *v63 = 0;
      v64 = 0;
      v65 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v63, *(this + 29), *(this + 30), *(this + 30) - *(this + 29));
      v6 = *v63;
      (*(*this + 424))(this, (v64 - *v63), *v63);
      v60 = 0;
      v61 = 0;
      v62 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v60, *(this + 26), *(this + 27), *(this + 27) - *(this + 26));
      v7 = v60;
      (*(*this + 352))(this, (v61 - v60), v60);
      if (!*&buf[20])
      {
        operator new();
      }

      VorbisComment::operator=(this + 552, this + 256);
      (*(*this + 696))(this, 2, 0, 1);
      v8 = *(this + 53);
      if (*(this + 54) == v8)
      {
        goto LABEL_77;
      }

      v9 = *(this + 15);
      if (v9)
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = 0;
      }

      v49 = *(v8 + 40);
      if (v10 >= v49)
      {
        if (*&buf[20])
        {
          v50 = (*&buf[20] * v49);
          goto LABEL_76;
        }

        if (v49)
        {
          v51 = 0;
          v50 = 0;
          do
          {
            if (v51 || *&buf[8] != 1987015266)
            {
              CompressedPacketTable::operator[](v58, v9, v51);
              v50 += v59;
              v8 = *(this + 53);
            }

            ++v51;
          }

          while (v51 < *(v8 + 40));
          goto LABEL_76;
        }
      }

      v50 = 0;
LABEL_76:
      *(this + 66) = *(v8 + 8) - v50;
LABEL_77:
      if ((*(this + 45) & 0x8000000000000000) == 0)
      {
        (*(*this + 256))(this);
      }

      if (v7)
      {
        operator delete(v7);
      }

      if (v6)
      {
        operator delete(v6);
      }

      v2 = 0;
      goto LABEL_84;
    }

    v11 = 0;
    v54 = (this + 488);
    while (1)
    {
      if (v11 >= *(this + 47))
      {
        goto LABEL_6;
      }

      v12 = OggAudioFile::ParsePage(this, v11, &__len[1], v69);
      if (v12 == -39)
      {
        v2 = 1685348671;
      }

      else
      {
        v2 = v12;
      }

      if (v2)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *&buf[4] = "OggAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 394;
        v3 = MEMORY[0x1E69E9C10];
        v4 = "%25s:%-5d  Page parsing failed";
        goto LABEL_4;
      }

      v13 = v73[18];
      v14 = v70;
      if (v70 <= (v68.__end_ - v68.__begin_))
      {
        if (v70 < (v68.__end_ - v68.__begin_))
        {
          v68.__end_ = &v68.__begin_[v70];
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&v68, v70 - (v68.__end_ - v68.__begin_));
      }

      v15 = v11 + v13 + 27;
      if (*(this + 592) != 1 || *(this + 98) == *&v73[6])
      {
        break;
      }

LABEL_58:
      v11 = v15 + v14;
      *(this + 48) = v11;
      *v73 = 0;
      *&v73[8] = 0;
      *&__len[1] = 0;
      *&v73[15] = 0;
      bzero(v69, 0x410uLL);
      if (*(this + 151))
      {
        goto LABEL_6;
      }
    }

    v16 = v14;
    v17 = v71;
    begin = v68.__begin_;
    end = v68.__end_;
    v2 = (*(**(this + 13) + 48))(*(this + 13), 0, v15, (LODWORD(v68.__end_) - LODWORD(v68.__begin_)), v68.__begin_, &v66);
    if (v2)
    {
      goto LABEL_68;
    }

    if (v66 < v14)
    {
      v2 = 0;
LABEL_68:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *buf = 136315394;
      *&buf[4] = "OggAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 406;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "%25s:%-5d  Read of packet data failed";
      goto LABEL_4;
    }

    if (v17)
    {
      v19 = *v54;
      v20 = *(this + 62);
      v21 = *v54;
      if (v20 == *v54)
      {
        v26 = 0;
      }

      else
      {
        if ((__len[2] & 0x100) == 0)
        {
          v2 = 1685348671;
          goto LABEL_84;
        }

        v22 = Ogg::PagePacketInfo::operator[](v69, 0);
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v54, v20, begin, &begin[v22], v22);
        *v63 = 0;
        v64 = 0;
        v23 = *(this + 61);
        HIDWORD(v64) = *(this + 124) - v23;
        v2 = OggAudioFile::ParseHeaderPackets(this, *&v73[6], 1u, v23, v63, v24, v25);
        if (v2)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }

          *buf = 136315394;
          *&buf[4] = "OggAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 423;
          v3 = MEMORY[0x1E69E9C10];
          v4 = "%25s:%-5d  ParseHeaderPackets failed";
          goto LABEL_4;
        }

        *(this + 62) = *(this + 61);
        if (!--v17)
        {
          goto LABEL_43;
        }

        v26 = 1;
      }

      v27 = v17;
      std::vector<AudioStreamPacketDescription>::resize(__p, v17);
      v55 = v15;
      v28 = 0;
      v29 = __p[0];
      v30 = __p[0];
      do
      {
        if (v28)
        {
          *v30 = *(v30 - 2) + *(v30 - 1);
        }

        else
        {
          if (v20 == v21)
          {
            v31 = 0;
          }

          else
          {
            v31 = Ogg::PagePacketInfo::operator[](v69, 0);
          }

          *v29 = v31;
        }

        *(v30 + 3) = Ogg::PagePacketInfo::operator[](v69, v26 + v28++);
        v30 += 2;
      }

      while (v27 != v28);
      v15 = v55;
      v2 = OggAudioFile::ParseHeaderPackets(this, *&v73[6], v27, begin, v29, v32, v33);
      v14 = v16;
      if (v2)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *&buf[4] = "OggAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 442;
        v3 = MEMORY[0x1E69E9C10];
        v4 = "%25s:%-5d  ParseHeaderPackets failed";
        goto LABEL_4;
      }
    }

LABEL_43:
    v34 = __len[0];
    if (__len[0])
    {
      v35 = &end[-__len[0]];
      v37 = *(this + 62);
      v36 = *(this + 63);
      if (v36 - v37 >= __len[0])
      {
        memmove(*(this + 62), &end[-__len[0]], __len[0]);
        *(this + 62) = &v37[v34];
      }

      else
      {
        v38 = *(this + 61);
        v39 = &v37[-v38];
        v40 = &v37[__len[0] - v38];
        if (v40 < 0)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v41 = v36 - v38;
        if (2 * v41 > v40)
        {
          v40 = 2 * v41;
        }

        if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v42 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          operator new();
        }

        v56 = v15;
        v43 = &v39[__len[0]];
        v44 = &v37[-v38];
        do
        {
          v45 = *v35++;
          *v44++ = v45;
          --v34;
        }

        while (v34);
        v46 = *(this + 62) - v37;
        memcpy(v43, v37, v46);
        v47 = &v43[v46];
        *(this + 62) = v37;
        v48 = *(this + 61);
        memcpy(&v39[v48 - v37], v48, v37 - v48);
        *(this + 61) = &v39[v48 - v37];
        *(this + 62) = v47;
        *(this + 63) = 0;
        v15 = v56;
        if (v48)
        {
          operator delete(v48);
        }
      }
    }

    goto LABEL_58;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "OggAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 386;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "%25s:%-5d  Can't get file length";
LABEL_4:
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, v4, buf, 0x12u);
  }

LABEL_84:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v68.__begin_)
  {
    operator delete(v68.__begin_);
  }

  v52 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_18F8C4BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  MEMORY[0x193ADF220](v28, 0x1000C40BD41A4CDLL);
  if (v27)
  {
    operator delete(v27);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t OggAudioFile::ParseHeaderPackets(OggAudioFile *this, int a2, unsigned int a3, const unsigned __int8 *a4, const unsigned __int8 *a5, const AudioStreamPacketDescription *a6, unsigned int *a7)
{
  if (*(this + 592) == 1 && *(this + 98) != a2)
  {
    return 0;
  }

  Ogg::File::ParseHeaderPackets((this + 144), a3, *(this + 150), a4, a5, (this + 596), a7);
  if (*(this + 592) == 1)
  {
    goto LABEL_6;
  }

  if (*(this + 149))
  {
    *(this + 592) = 1;
    *(this + 98) = a2;
LABEL_6:
    v10 = *(this + 150) + a3;
    *(this + 150) = v10;
    goto LABEL_7;
  }

  v12 = *(this + 50);
  v13 = *(this + 51);
  v14 = v12;
  if (v12 != v13)
  {
    v14 = *(this + 50);
    while (*v14 != a2)
    {
      v14 += 4;
      if (v14 == v13)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14 != v13)
  {
    return 1685348671;
  }

LABEL_17:
  v15 = *(this + 52);
  if (v13 >= v15)
  {
    v17 = v13 - v12;
    v18 = (v13 - v12) >> 2;
    v19 = v18 + 1;
    if ((v18 + 1) >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v20 = v15 - v12;
    if (v20 >> 1 > v19)
    {
      v19 = v20 >> 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v21 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v21);
    }

    v22 = (v13 - v12) >> 2;
    v23 = (4 * v18);
    v24 = (4 * v18 - 4 * v22);
    *v23 = a2;
    v16 = v23 + 1;
    memcpy(v24, v12, v17);
    v25 = *(this + 50);
    *(this + 50) = v24;
    *(this + 51) = v16;
    *(this + 52) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v13 = a2;
    v16 = v13 + 4;
  }

  *(this + 51) = v16;
  v10 = *(this + 150);
LABEL_7:
  *(this + 151) = *(this + 149) - 1 < v10;
  if (v10 < 3 || *(this + 368) == 1)
  {
    return 0;
  }

  return 1685348671;
}

uint64_t OggAudioFile::ScanForPackets(OggAudioFile *this, uint64_t a2, DataSource *a3, char a4)
{
  if (*(this + 520))
  {
    return 0;
  }

  v8 = *(this + 15);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 24);
  if (!v9)
  {
    (*(*this + 656))(this, 0, a3);
    v9 = 0;
  }

  if (a2 == -1)
  {
    a2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 >= a2)
  {
    return 0;
  }

  do
  {
    result = (*(*this + 744))(this);
    v10 = *(this + 15);
    if (v10)
    {
      v10 = *(v10 + 24);
    }
  }

  while (v10 < a2 && !result);
  if (result == -39)
  {
    result = 0;
    *(this + 520) = a4;
  }

  return result;
}

uint64_t OggAudioFile::GetEstimatedDuration(OggAudioFile *this, double *a2)
{
  result = OggAudioFile::GetLastPageGranulePosition(this);
  v5 = 0.0;
  if (!result)
  {
    v6 = *(this + 68);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v5 = (v6 - (*(this + 66) & ~(*(this + 66) >> 63))) / *(this + 3);
    }
  }

  *a2 = v5;
  return result;
}

uint64_t OggAudioFile::GetLastPageGranulePosition(OggAudioFile *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(this + 68) & 0x8000000000000000) == 0)
  {
LABEL_2:
    v1 = 0;
    goto LABEL_3;
  }

  v5 = (*(*this + 696))(this, -1, 0, 1);
  if (!v5)
  {
    *(this + 536) = 0u;
    if (*(this + 520) == 1)
    {
      v6 = *(this + 54);
      v7 = v6 - *(this + 53);
      if (v7)
      {
        v8 = (v6 - 48);
        v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3) - 1;
        do
        {
          v11 = *v8;
          v8 -= 7;
          v10 = v11;
          v12 = v9-- != 0;
          v13 = v12;
        }

        while (v10 < 0 && (v13 & 1) != 0);
        if ((v10 & 0x8000000000000000) == 0)
        {
          *(this + 68) = v10;
          if (v10 && v9 != -1)
          {
            do
            {
              v16 = *v8;
              v8 -= 7;
              v15 = v16;
              v12 = v9-- != 0;
              v17 = v12;
            }

            while (v15 < 0 && (v17 & 1) != 0);
            if ((v15 & 0x8000000000000000) == 0)
            {
              v1 = 0;
              *(this + 67) = v15;
              goto LABEL_3;
            }
          }
        }
      }
    }

    goto LABEL_2;
  }

  v1 = v5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "OggAudioFile.cpp";
    v20 = 1024;
    v21 = 1092;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ScanForPackets failed", &v18, 0x12u);
  }

LABEL_3:
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t OggAudioFile::GetInfoDictionary(const __CFString **this, CACFDictionary *a2)
{
  VorbisComment::FillInfoDictionary(this + 32, a2);
  v6 = 0.0;
  v4 = ((*this)[17].info)(this, &v6);
  if (!v4)
  {
    AudioFileObject::AddDurationToInfoDictionary(v4, a2, &v6);
  }

  return 0;
}

uint64_t OggAudioFile::GetChannelLayout(OggAudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  v3 = 561211770;
  if (a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v9, *(this + 29), *(this + 30), *(this + 30) - *(this + 29));
    v6 = v9;
    v7 = v10 - v9;
    if (v10 - v9 <= *a2)
    {
      *a2 = v7;
      memcpy(a3, v6, v7);
      v3 = 0;
    }

    if (v6)
    {
      operator delete(v6);
    }
  }

  return v3;
}

uint64_t OggAudioFile::GetChannelLayoutSize(OggAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = *(this + 60) - *(this + 58);
  }

  return 0;
}

uint64_t OggAudioFile::GetMagicCookieData(OggAudioFile *this, unsigned int *a2, void *a3)
{
  v3 = 561211770;
  if (a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v9, *(this + 26), *(this + 27), *(this + 27) - *(this + 26));
    v6 = v9;
    v7 = v10 - v9;
    if (v10 - v9 <= *a2)
    {
      *a2 = v7;
      memcpy(a3, v6, v7);
      v3 = 0;
    }

    if (v6)
    {
      operator delete(v6);
    }
  }

  return v3;
}

uint64_t OggAudioFile::GetMagicCookieDataSize(OggAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = *(this + 54) - *(this + 52);
  }

  return 0;
}

uint64_t OggAudioFile::GetBitRate(OggAudioFile *this, unsigned int *a2)
{
  if (*(this + 520) != 1)
  {
    return AudioFileObject::GetBitRate(this, a2);
  }

  v4 = (*(*this + 232))(this);
  v7 = 0.0;
  if ((*(*this + 552))(this, &v7))
  {
    return AudioFileObject::GetBitRate(this, a2);
  }

  if (v7 <= 0.0 || v4 <= 0)
  {
    return AudioFileObject::GetBitRate(this, a2);
  }

  result = 0;
  *a2 = ((8 * v4) / v7);
  return result;
}

uint64_t OggAudioFile::GetNumPackets(OggAudioFile *this)
{
  if (((*(this + 520) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1)) && (v2 = *(this + 15)) != 0)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t OggAudioFile::GetProperty(OggAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  v7 = this;
  if (a2 <= 1886283374)
  {
    switch(a2)
    {
      case 1633776244:
        if (*a3 >= 8)
        {
          v11 = *(this + 37);
          if (!v11)
          {
            return 1886681407;
          }

          v12 = CFRetain(v11);
          result = 0;
LABEL_34:
          *a4 = v12;
          v16 = 8;
          goto LABEL_35;
        }

        break;
      case 1650683508:
        goto LABEL_16;
      case 1886090594:
        if (*(this + 520) == 1)
        {
          v8 = 1886090594;
LABEL_19:

          return AudioFileObject::GetProperty(this, v8, a3, a4);
        }

        if (*a3 == 4)
        {
          v17 = *(this + 8);
          switch(v17)
          {
            case 1718378851:
              result = 0;
              v27 = *(v7 + 9);
              if ((v27 & 4) != 0)
              {
                v28 = 4;
              }

              else
              {
                v28 = 2;
              }

              if ((v27 & 2) != 0)
              {
                v29 = 3;
              }

              else
              {
                v29 = v28;
              }

              if (v27)
              {
                v30 = 2;
              }

              else
              {
                v30 = v29;
              }

              v18 = *(v7 + 13) * *(v7 + 11) * v30 + 82;
              break;
            case 1987015266:
              result = 0;
              v18 = 4096;
              break;
            case 1869641075:
              result = 0;
              v18 = 61440;
              break;
            default:
              return 1718449215;
          }

          *a4 = v18;
          return result;
        }

        break;
      default:
LABEL_18:
        this = v7;
        v8 = a2;
        goto LABEL_19;
    }

    return 561211770;
  }

  if (a2 <= 1936745331)
  {
    if (a2 != 1886283375)
    {
      if (a2 != 1886616165)
      {
        goto LABEL_18;
      }

LABEL_16:
      if ((*(this + 520) & 1) == 0)
      {
        result = (*(*this + 696))(this, -1, 0, 1);
        if (result)
        {
          return result;
        }
      }

      goto LABEL_18;
    }

    result = 561211770;
    if (!a3 || *a3 < 0x10)
    {
      return result;
    }

    v13 = *(v7 + 8);
    v14 = *(v7 + 43);
    if (v14 < 0 || (v15 = *(v7 + 88), v15 < 0))
    {
      result = OggAudioFile::GetLastPageGranulePosition(v7);
      if (result)
      {
        return result;
      }

      *a4 = 0;
      a4[1] = 0;
      *a3 = 16;
      v19 = *(v7 + 54);
      if (v19 != *(v7 + 53))
      {
        result = 0;
        v20 = *(v19 - 16);
        if (!v20)
        {
          return result;
        }

        v21 = *(v7 + 15);
        if (!v21)
        {
          return result;
        }

        if (*(v21 + 24) >= v20)
        {
          v22 = *(v7 + 66);
          v23 = v22 & ~(v22 >> 63);
          v24 = *(v7 + 68);
          v25 = __OFSUB__(v24, v23);
          v26 = v24 - v23;
          if ((v26 < 0) ^ v25 | (v26 == 0))
          {
            v26 = 0;
          }

          *a4 = v26;
          if (v13 == 1987015266)
          {
            if (v22 >= 0xFFFFFFFF80000000)
            {
              *(a4 + 2) = -v22;
            }

            CompressedPacketTable::operator[](v42, v21, 0);
            *(a4 + 2) += v43;
            v24 = *(v7 + 68);
          }

          else
          {
            v31 = *(v7 + 84);
            *(a4 + 2) = v31;
            v25 = __OFSUB__(v26, v31);
            v32 = v26 - v31;
            if ((v32 < 0) ^ v25 | (v32 == 0))
            {
              v32 = 0;
            }

            *a4 = v32;
          }

          v33 = *(v7 + 67);
          v34 = v24 <= v33;
          v35 = v24 - v33;
          v36 = v34 ? 0 : v35;
          v37 = *(v7 + 11);
          if (v37)
          {
            v38 = v37 * v20;
          }

          else
          {
            v39 = *(v7 + 15);
            if (v39)
            {
              v40 = *(v39 + 24);
            }

            else
            {
              v40 = 0;
            }

            v38 = 0;
            if (v39)
            {
              goto LABEL_84;
            }

            while (v40 > v39 - v20)
            {
              CompressedPacketTable::operator[](v42, v21, --v40);
              v38 += v43;
              v39 = *(v7 + 15);
              if (v39)
              {
LABEL_84:
                v39 = *(v39 + 24);
              }
            }
          }

          v41 = v38 - v36;
          if (v38 <= v36)
          {
            v41 = 0;
          }

          if (v41 <= 0xFFFFFFFFLL)
          {
            result = 0;
            *(a4 + 3) = v41;
            return result;
          }
        }
      }

      return 0;
    }

    result = 0;
    *a4 = v14;
    *(a4 + 2) = *(v7 + 84);
    *(a4 + 3) = v15;
    v16 = 16;
LABEL_35:
    *a3 = v16;
    return result;
  }

  if (a2 == 1936745332)
  {
    result = 561211770;
    if (!a3)
    {
      return result;
    }

    if (*a3 < 8)
    {
      return result;
    }

    result = (*(*v7 + 696))(v7, -1, 0, 1);
    if (result)
    {
      return result;
    }

    v12 = *(v7 + 64);
    goto LABEL_34;
  }

  if (a2 != 1986225779)
  {
    goto LABEL_18;
  }

  v9 = (this + 256);

  return VorbisComment::GetVorbisCommentFieldList(v9, a3, a4);
}

uint64_t OggAudioFile::GetPropertyInfo(OggAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 <= 1936745331)
  {
    if (a2 != 1633776244)
    {
      if (a2 == 1886283375)
      {
        if (a3)
        {
          v4 = 16;
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
    }

LABEL_13:
    v4 = 8;
    goto LABEL_16;
  }

  if (a2 == 1936745332)
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a2 != 1986225779)
  {
    return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    if (*(this + 32))
    {
      v6 = *(this + 33);
      v5 = *(this + 34);
    }

    else
    {
      v6 = *(this + 33);
      v5 = *(this + 34);
      if (v5 == v6)
      {
        v4 = 0;
        goto LABEL_16;
      }
    }

    v4 = 24 * ((v5 - v6) >> 4) + 16;
LABEL_16:
    *a3 = v4;
  }

LABEL_17:
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t OggAudioFile::ReadPacketData(OggAudioFile *this, unsigned __int8 a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, _BYTE *a7)
{
  v8 = a5;
  v10 = this;
  v77 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = *a3;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_15:
    if (a7)
    {
      v16 = 1;
    }

    else
    {
      v16 = a4 == 0;
    }

    if (!v16 || v11)
    {
      goto LABEL_23;
    }

LABEL_21:
    v17 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    *&buf[4] = "OggAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1234;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  invalid ioNumBytes parameter";
LABEL_25:
    _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
    goto LABEL_37;
  }

  v11 = 0;
  if (!a6)
  {
    goto LABEL_15;
  }

LABEL_3:
  v12 = *a6;
  if (a4)
  {
    v13 = a7 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (!v13 && !v11)
  {
    goto LABEL_21;
  }

  if (!v12)
  {
LABEL_23:
    v17 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    *&buf[4] = "OggAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1235;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  invalid ioNumPackets parameter";
    goto LABEL_25;
  }

  *a6 = 0;
  if (a3)
  {
    *a3 = 0;
    v15 = *a6;
  }

  else
  {
    v15 = 0;
  }

  v20 = (*(*this + 696))(this, v15 + a5, 0, 1);
  if (v20)
  {
    v21 = v20;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OggAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1244;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ScanForPackets (Ogg) failed", buf, 0x12u);
    }

LABEL_30:
    if (v21 == -39)
    {
      v17 = 0;
    }

    else
    {
      v17 = v21;
    }
  }

  else if (v14)
  {
    *buf = v12;
    AudioFileObject::GetPacketDescriptions(v10, v8, buf, a4);
    *a6 = *buf;
    if (a3)
    {
      *a3 = 0;
    }

    v17 = 0;
  }

  else
  {
    v74 = *(v10 + 15);
    v24 = (*(*v10 + 752))(v10, v8);
    if (v24 == -1)
    {
      result = 4294967257;
      goto LABEL_40;
    }

    v71 = v24;
    v73 = v11;
    v70 = v12;
    v66 = 0;
    v67 = a7;
    v64 = v12;
    v65 = v11;
    v69 = v10;
    while (1)
    {
      v25 = *(v10 + 53);
      if (v71 >= 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 54) - v25) >> 3))
      {
        v21 = -39;
LABEL_99:
        *a6 = v12 - v70;
        *a3 = v11 - v73;
        goto LABEL_30;
      }

      v26 = v25 + 56 * v71;
      v27 = v8 - *(v26 + 32);
      if (!v27 && (*v26 & 1) != 0)
      {
        break;
      }

      v28 = *(v26 + 40);
      v29 = v28 - v27;
      if (v28 <= v27)
      {
        v21 = 0;
      }

      else
      {
        v75 = 0;
        v30 = v8;
        CompressedPacketTable::operator[](buf, v74, v8);
        v31 = 0;
        v32 = 0;
        v33 = *buf;
        v34 = *(v69 + 9);
        while (1)
        {
          v35 = v32;
          if (v29 == v31)
          {
            break;
          }

          v36 = v31;
          CompressedPacketTable::operator[](buf, v74, v30 + v31);
          if (v70 != v36)
          {
            v32 = (*&buf[12] + v35);
            v31 = v36 + 1;
            if (v73 - v35 >= *&buf[12])
            {
              continue;
            }
          }

          LODWORD(v29) = v36;
          break;
        }

        v21 = 0;
        if (v29 && v35)
        {
          v37 = (*(**(v69 + 13) + 48))(*(v69 + 13), 0, v34 + v33, v35, v67, &v75);
          if (v75 < v35)
          {
            break;
          }

          v21 = v37;
          v38 = v29;
          v39 = v66;
          v40 = &a4[v66];
          v41 = v30;
          do
          {
            CompressedPacketTable::operator[](buf, v74, v41);
            *v40 = *buf;
            if (v39)
            {
              v42 = v40[-1].mStartOffset + v40[-1].mDataByteSize;
            }

            else
            {
              v42 = 0;
            }

            v40->mStartOffset = v42;
            ++v40;
            ++v39;
            ++v41;
            --v38;
          }

          while (v38);
          v8 = v30 + v29;
          v66 += v29;
          v70 -= v29;
          v73 -= v35;
          v67 += v35;
        }

        else
        {
          v8 = v30;
        }

        v12 = v64;
        v11 = v65;
        v10 = v69;
      }

      if (v70 && !v21 && *(*(v10 + 53) + 56 * v71 + 48))
      {
        v63 = v8;
        CompressedPacketTable::operator[](buf, v74, v8);
        v43 = *&buf[12];
        if (v73 >= *&buf[12])
        {
          v62 = v73 - *&buf[12];
          v44 = *buf;
          v61 = *&buf[8];
          v10 = v69;
          v45 = *(v69 + 9);
          v46 = *(v69 + 53);
          v47 = *(v46 + 56 * v71 + 48);
          *buf = 0;
          v48 = v67;
          if (v47 > *&buf[12])
          {
LABEL_95:
            v17 = 1685348671;
            goto LABEL_37;
          }

          v49 = v71;
          v60 = v67 - a7;
          v50 = v45 + v44;
          v51 = 56 * v71;
          v52 = v47;
          while (1)
          {
            if (v52)
            {
              v53 = v43;
              v54 = v48;
              v55 = (*(**(v10 + 13) + 48))(*(v10 + 13), 0, v50, v52);
              if (*buf >= v52)
              {
                v21 = v55;
              }

              else
              {
                v21 = -39;
              }

              if (v21)
              {
                goto LABEL_97;
              }

              v10 = v69;
              v46 = *(v69 + 53);
              v48 = v54;
              v43 = v53;
            }

            v48 += v52;
            if (v47 == v43 && v49 > v71)
            {
              v56 = *(v46 + v51 + 40);
              if (v56)
              {
                break;
              }
            }

            if (v49 + 1 >= 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 54) - v46) >> 3))
            {
              v21 = -39;
LABEL_97:
              v12 = v64;
              v11 = v65;
              goto LABEL_99;
            }

            v57 = v46 + v51;
            if (*(v46 + v51 + 56))
            {
              v50 = *(v57 + 72);
              v58 = 44;
              if (!*(v57 + 96))
              {
                v58 = 48;
              }

              v52 = *(v57 + v58 + 56);
              *buf = 0;
              LODWORD(v47) = v47 + v52;
              v51 += 56;
              ++v49;
              if (v47 <= v43)
              {
                continue;
              }
            }

            goto LABEL_95;
          }

          v67 = v48;
          if (v56 == 1 && !*(v46 + v51 + 48))
          {
            ++v49;
          }

          v12 = v64;
          v11 = v65;
          v21 = 0;
          v59 = &a4[v66];
          v59->mStartOffset = v60;
          v59->mVariableFramesInPacket = v61;
          v59->mDataByteSize = v43;
          ++v66;
          --v70;
          v71 = v49;
          v8 = v63 + 1;
          v73 = v62;
        }

        else
        {
          v21 = 0;
          v12 = v64;
          v11 = v65;
          v10 = v69;
        }
      }

      else
      {
        ++v71;
      }

      if (!v70 || v21)
      {
        goto LABEL_99;
      }
    }

    v17 = 2003334207;
  }

LABEL_37:
  if (*a6)
  {
    result = v17;
  }

  else
  {
    result = 4294967257;
  }

LABEL_40:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OggAudioFile::ReadPackets(OggAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (a6)
  {
    v8 = *a6;
    if (v8)
    {
      if (a7)
      {
        v15 = (*(*this + 696))(this, v8 + a5, 0, 1);
        if (v15)
        {
          v16 = v15;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v25 = "OggAudioFile.cpp";
            v26 = 1024;
            v27 = 1201;
            v17 = MEMORY[0x1E69E9C10];
            v18 = "%25s:%-5d  ScanForPackets (Ogg) failed";
LABEL_9:
            _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
            goto LABEL_17;
          }

          goto LABEL_17;
        }

        v19 = (*(*this + 640))(this);
        if (!v19)
        {
          v19 = (*(*this + 664))(this);
        }

        v23 = *a6 * v19;
      }

      v20 = (*(*this + 96))(this, a2, &v23, a4, a5, a6, a7);
      v16 = v20;
      if (a3 && !v20)
      {
        *a3 = v23;
      }

      goto LABEL_17;
    }
  }

  v16 = 2003334207;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "OggAudioFile.cpp";
    v26 = 1024;
    v27 = 1193;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  invalid ioNumPackets parameter";
    goto LABEL_9;
  }

LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t OggAudioFile::OpenFromDataSource(OggAudioFile *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = (*(*this + 736))(this);
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "OggAudioFile.cpp";
    v6 = 1024;
    v7 = 265;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  OggAudioFile::ParseAudioFile failed", &v4, 0x12u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void OggAudioFile::~OggAudioFile(OggAudioFile *this)
{
  OggAudioFile::~OggAudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033D5E8;
  v2 = *(this + 76);
  *(this + 76) = 0;
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C40BD41A4CDLL);
  }

  v3 = *(this + 73);
  if (v3)
  {
    CFRelease(v3);
  }

  v9 = (this + 560);
  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v4 = *(this + 69);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 61);
  if (v5)
  {
    *(this + 62) = v5;
    operator delete(v5);
  }

  v6 = *(this + 56);
  if (v6)
  {
    *(this + 57) = v6;
    operator delete(v6);
  }

  v7 = *(this + 53);
  if (v7)
  {
    *(this + 54) = v7;
    operator delete(v7);
  }

  v8 = *(this + 50);
  if (v8)
  {
    *(this + 51) = v8;
    operator delete(v8);
  }

  Ogg::File::~File((this + 144));

  AudioFileObject::~AudioFileObject(this);
}

uint64_t OggAudioFormat::GetHFSCodes(OggAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 0x4F6767534F676741;
  v3 = *a2 >> 2;
  if (v3 >= 2)
  {
    v3 = 2;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

uint64_t OggAudioFormat::GetAvailableStreamDescriptions(OggAudioFormat *this, int a2, unsigned int *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (PropertyInfo)
  {
    goto LABEL_23;
  }

  v8 = outPropertyDataSize;
  v9 = outPropertyDataSize >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&v17, v9, 1);
  PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, v17);
  v10 = v17;
  if (!PropertyInfo)
  {
    if (v8 < 4)
    {
      if (v17)
      {
        free(v17);
      }
    }

    else
    {
      v11 = 0;
      v12 = 1;
      do
      {
        if (*(v17 + v11) == a2 && (a2 == 1718378851 || a2 == 1869641075 || a2 == 1987015266))
        {
          break;
        }

        v12 = ++v11 < v9;
      }

      while (v9 != v11);
      free(v17);
      v17 = 0;
      if (v12)
      {
        v20 = 0;
        memset(outPropertyData, 0, sizeof(outPropertyData));
        DWORD2(outPropertyData[0]) = a2;
        ioPropertyDataSize = 40;
        AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, outPropertyData);
        if (*a3 >= 0x28)
        {
          v13 = 40;
        }

        else
        {
          v13 = 0;
        }

        *a3 = v13;
        if (a4)
        {
          memcpy(a4, outPropertyData, v13);
        }

        PropertyInfo = 0;
        v10 = v17;
        if (v17)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }
    }

    *a3 = 0;
    PropertyInfo = 1718449215;
    goto LABEL_23;
  }

  if (v17)
  {
LABEL_4:
    free(v10);
  }

LABEL_23:
  v14 = *MEMORY[0x1E69E9840];
  return PropertyInfo;
}

void sub_18F8C683C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OggAudioFormat::GetAvailableFormatIDs(OggAudioFormat *this, unsigned int *a2, _DWORD *a3)
{
  if (a3)
  {
    v3 = *a2 >> 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  for (i = 0; i != 16; i += 4)
  {
    v6 = *&OggAudioFormat::GetAvailableFormatIDs(unsigned int *,void *)::kXiphSanctionedOggAudioFormatIDs[i];
    if (v6 == 1718378851 || v6 == 1987015266 || v6 == 1869641075)
    {
      if (a3 && v4 < v3)
      {
        a3[v4] = v6;
      }

      ++v4;
    }
  }

  *a2 = 4 * v4;
  return 0;
}

void OggAudioFormat::GetFileTypeName(OggAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"Ogg");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"Ogg", @"Ogg", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *OggAudioFormat::GetMIMETypes(OggAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/ogg";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *OggAudioFormat::GetUTIs(OggAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"org.xiph.ogg-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *OggAudioFormat::GetExtensions(OggAudioFormat *this, const __CFArray **a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"opus";
  v5[1] = @"ogg";
  v5[2] = @"oga";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 3, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OggAudioFormat::FileDataIsThisFormat(OggAudioFormat *this, unsigned int a2, _DWORD *a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 >= 4)
  {
    if (a2 >= 0x1B && *a3 == 1399285583)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t OggAudioFormat::ExtensionIsThisFormat(OggAudioFormat *this, const __CFString *a2)
{
  theArray = 0;
  (*(*this + 64))(this, &theArray);
  v3 = theArray;
  if (!theArray)
  {
    return 0;
  }

  v7.length = CFArrayGetCount(theArray);
  v7.location = 0;
  v4 = CFArrayContainsValue(v3, v7, a2);
  CFRelease(theArray);
  return v4;
}

void sub_18F8C731C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(a1);
}

void sub_18F8C78B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15)
{
  std::default_delete<caulk::synchronized<AUExtensionScanner,caulk::mach::unfair_lock,caulk::empty_atomic_interface<AUExtensionScanner>>>::operator()[abi:ne200100](v19);

  _Unwind_Resume(a1);
}

void ___ZN27AudioComponentRegistrarImpl16getComponentListER14ConnectionInfoP8NSStringbbU13block_pointerFvP6NSDatabS5_P7NSArrayE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  atomic_store(1u, (v1 + 2));
  AudioComponentRegistrarImpl::replyWithComponentList(v1, *(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t std::default_delete<caulk::synchronized<AUExtensionScanner,caulk::mach::unfair_lock,caulk::empty_atomic_interface<AUExtensionScanner>>>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 136);
    if (v2)
    {
      for (i = *(result + 144); i != v2; std::allocator_traits<std::allocator<AUExtensionScanner::ExtensionComponents>>::destroy[abi:ne200100]<AUExtensionScanner::ExtensionComponents,void,0>(i))
      {
        i -= 32;
      }

      *(v1 + 144) = v2;
      operator delete(*(v1 + 136));
    }

    for (j = 0; j != -72; j -= 24)
    {
    }

    std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::~__value_func[abi:ne200100](v1 + 32);
    v5 = *(v1 + 24);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void ___ZN27AudioComponentRegistrarImpl21_initialExtensionScanEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = atomic_load((v1 + 2));
  if ((v2 & 1) == 0)
  {
    v23 = *(a1 + 40);
    v3 = *(v1 + 256);
    os_unfair_lock_lock(v3);
    v4 = (v3 + 8);
    v25 = *(v3 + 8);
    memset(&v29, 0, 24);
    v29.mSorted = 1;
    lock = v3;
    Current = CFAbsoluteTimeGetCurrent();
    v6 = 0;
    v7 = v3 + 64;
    v26 = *MEMORY[0x1E696A2F8];
    do
    {
      v8 = [&unk_1F034DEA8 objectAtIndexedSubscript:v6];
      v45 = v26;
      v46[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      *v42 = 0;
      *&v42[8] = v42;
      *&v42[16] = 0x3032000000;
      *&v42[24] = __Block_byref_object_copy__7797;
      v43 = __Block_byref_object_dispose__7798;
      v44 = 0;
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = ___ZN18AUExtensionScanner11initialScanEv_block_invoke;
      v33 = &unk_1E72C1510;
      v37 = v4;
      v10 = v9;
      v38 = v7;
      v34 = v10;
      v36 = v42;
      v11 = v8;
      v35 = v11;
      v39 = v25;
      if (!Synchronously(&v30))
      {
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v12 = *gAudioComponentLogCategory;
        v13 = *gAudioComponentLogCategory;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AUExtensionScanner.mm";
          *&buf[12] = 1024;
          *&buf[14] = 165;
          _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Timeout running task synchronously", buf, 0x12u);
        }
      }

      AUExtensionScanner::addExtensions(buf, v4, *(*&v42[8] + 40));
      AudioComponentVector::append(&v29, *buf, *&buf[8]);
      v40 = buf;
      std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v40);

      _Block_object_dispose(v42, 8);
      ++v6;
      v7 += 24;
    }

    while (v6 != 3);
    v15 = CFAbsoluteTimeGetCurrent();
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v16 = *gAudioComponentLogCategory;
    v17 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v42 = 136315650;
      *&v42[4] = "AUExtensionScanner.mm";
      *&v42[12] = 1024;
      *&v42[14] = 172;
      *&v42[18] = 2048;
      *&v42[20] = v15 - Current;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %.6fs", v42, 0x1Cu);
    }

    if (lock)
    {
      os_unfair_lock_unlock(lock);
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    LOBYTE(v33) = 1;
    v19 = *(v23 + 40);
    if (!v19)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v19 + 48))(v19, &v29, &v30);
    *v42 = &v30;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v42);
    v30 = &v29;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v1 = v23;
  }

  v20 = [*(v1 + 80) _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN27AudioComponentRegistrarImpl21_initialExtensionScanEU13block_pointerFvvE_block_invoke_2;
  block[3] = &unk_1E72C2AF0;
  v28 = *(a1 + 32);
  dispatch_sync(v20, block);

  v21 = *MEMORY[0x1E69E9840];
}

void sub_18F8C7F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_t lock, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  *(v39 - 208) = &a24;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100]((v39 - 208));
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<caulk::synchronized<AUExtensionScanner,caulk::mach::unfair_lock,caulk::empty_atomic_interface<AUExtensionScanner>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F8C8420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18F8C8534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void localUIImagePNGRepresentation(UIImage *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getUIImagePNGRepresentationSymbolLoc(void)::ptr;
  v11 = getUIImagePNGRepresentationSymbolLoc(void)::ptr;
  if (!getUIImagePNGRepresentationSymbolLoc(void)::ptr)
  {
    v3 = UIKitLibrary();
    v9[3] = dlsym(v3, "UIImagePNGRepresentation");
    getUIImagePNGRepresentationSymbolLoc(void)::ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = v2(v1);

    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData *localUIImagePNGRepresentation(UIImage *__strong)"];
    [v6 handleFailureInFunction:v7 file:@"AudioComponentRegistrar.mm" lineNumber:627 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18F8C86D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *___ZL36getUIImagePNGRepresentationSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIImagePNGRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIImagePNGRepresentationSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIKitLibrary(void)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL16UIKitLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72C2BC0;
    v7 = 0;
    UIKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitLibraryCore(char **)::frameworkLibrary;
  if (!UIKitLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary()"];
    [v0 handleFailureInFunction:v4 file:@"AudioComponentRegistrar.mm" lineNumber:623 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL16UIKitLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8C8CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id getISImageDescriptorClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISImageDescriptorClass(void)::softClass;
  v7 = getISImageDescriptorClass(void)::softClass;
  if (!getISImageDescriptorClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL25getISImageDescriptorClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL25getISImageDescriptorClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F8C8E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkISImageDescriptorHomeScreenSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IconServicesLibrary(void)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IconServicesLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL23IconServicesLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72C2B88;
    v7 = 0;
    IconServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore(char **)::frameworkLibrary;
  if (!IconServicesLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconServicesLibrary()"];
    [v0 handleFailureInFunction:v4 file:@"AudioComponentRegistrar.mm" lineNumber:629 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void ___ZL16getUIScreenClassv_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIScreen");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIScreenClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIScreenClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AudioComponentRegistrar.mm" lineNumber:625 description:{@"Unable to find class %s", "UIScreen"}];

    __break(1u);
  }
}

id getISIconClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISIconClass(void)::softClass;
  v7 = getISIconClass(void)::softClass;
  if (!getISIconClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL14getISIconClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL14getISIconClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F8C91F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIImageClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass(void)::softClass;
  v7 = getUIImageClass(void)::softClass;
  if (!getUIImageClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL15getUIImageClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL15getUIImageClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F8C92D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL15getUIImageClassv_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIImageClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AudioComponentRegistrar.mm" lineNumber:624 description:{@"Unable to find class %s", "UIImage"}];

    __break(1u);
  }
}

void ___ZL14getISIconClassv_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISIconClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AudioComponentRegistrar.mm" lineNumber:630 description:{@"Unable to find class %s", "ISIcon"}];

    __break(1u);
  }
}

uint64_t ___ZL23IconServicesLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconServicesLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL25getISImageDescriptorClassv_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImageDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageDescriptorClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AudioComponentRegistrar.mm" lineNumber:632 description:{@"Unable to find class %s", "ISImageDescriptor"}];

    __break(1u);
  }
}

void sub_18F8C9CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  os_unfair_lock_unlock(v12);

  _Unwind_Resume(a1);
}

void sub_18F8C9F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  v28 = *(v26 - 96);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  os_unfair_lock_unlock(v22);
  a19 = &a11;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = &a15;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void AudioComponentRegistrarImpl::addRemoveComponents(AudioComponentRegistrarImpl *this, const AudioComponentVector *a2, AudioComponentVector *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2->__begin_ != a2->__end_ || a3->__begin_ != a3->__end_)
  {
    AudioComponentVector::subtract(&buf, (this + 136), a3);
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(this + 17);
    *(this + 136) = *&buf.__begin_;
    *(this + 19) = buf.__cap_;
    memset(&buf, 0, 24);
    *(this + 160) = buf.mSorted;
    p_buf = &buf;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&p_buf);
    AudioComponentVector::append((this + 136), a2->__begin_, a2->__end_);
    AudioComponentVector::sort((this + 136));
    if (*(this + 1) == 1)
    {
      v5 = *(this + 30);
      *(this + 30) = 0;

      v6 = *(this + 25);
      *(this + 25) = 0;

      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v7 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a2->__end_ - a2->__begin_) >> 4;
        v10 = (a3->__end_ - a3->__begin_) >> 4;
        v11 = *(this + 16);
        LODWORD(buf.__begin_) = 136316162;
        *(&buf.__begin_ + 4) = "AudioComponentRegistrar.mm";
        WORD2(buf.__end_) = 1024;
        *(&buf.__end_ + 6) = 160;
        WORD1(buf.__cap_) = 1024;
        HIDWORD(buf.__cap_) = v9;
        *&buf.mSorted = 1024;
        *(&buf.mSorted + 2) = v10;
        *(&buf.mSorted + 3) = 2112;
        v43 = v11;
        _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %d added, %d removed, conns %@", &buf, 0x28u);
      }

      begin = a2->__begin_;
      end = a2->__end_;
      if (a2->__begin_ != end)
      {
        do
        {
          if (!gAudioComponentLogCategory)
          {
            operator new();
          }

          log = *gAudioComponentLogCategory;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            CAFormatter::CAFormatter(&p_buf, (*begin + 36));
            LODWORD(buf.__begin_) = 136315650;
            *(&buf.__begin_ + 4) = "AudioComponentRegistrar.mm";
            WORD2(buf.__end_) = 1024;
            *(&buf.__end_ + 6) = 162;
            WORD1(buf.__cap_) = 2080;
            *(&buf.__cap_ + 4) = p_buf;
            _os_log_impl(&dword_18F5DF000, log, OS_LOG_TYPE_DEFAULT, "%25s:%-5d added %s", &buf, 0x1Cu);
            if (p_buf)
            {
              free(p_buf);
            }
          }

          begin += 16;
        }

        while (begin != end);
      }

      v15 = a3->__begin_;
      v16 = a3->__end_;
      if (a3->__begin_ != v16)
      {
        do
        {
          if (!gAudioComponentLogCategory)
          {
            operator new();
          }

          loga = *gAudioComponentLogCategory;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
          {
            CAFormatter::CAFormatter(&p_buf, (*v15 + 36));
            LODWORD(buf.__begin_) = 136315650;
            *(&buf.__begin_ + 4) = "AudioComponentRegistrar.mm";
            WORD2(buf.__end_) = 1024;
            *(&buf.__end_ + 6) = 165;
            WORD1(buf.__cap_) = 2080;
            *(&buf.__cap_ + 4) = p_buf;
            _os_log_impl(&dword_18F5DF000, loga, OS_LOG_TYPE_DEFAULT, "%25s:%-5d removed %s", &buf, 0x1Cu);
            if (p_buf)
            {
              free(p_buf);
            }
          }

          v15 += 16;
        }

        while (v15 != v16);
      }

      v18 = *(this + 31);
      if (v18)
      {
        logb = *(*v18 + 96);
      }

      else
      {
        logb = 0;
      }

      buf.__begin_ = this + 208;
      LOBYTE(buf.__end_) = 0;
      p_buf = this + 168;
      v40 = 0;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = *(this + 16);
      v19 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v19)
      {
        v20 = *v36;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v35 + 1) + 8 * i);
            v23 = v22;
            mExtUsePermission = v22[1].mExtUsePermission;
            if (mExtUsePermission == -1)
            {
              mExtUsePermission = ConnectionInfo::_canUseExtensions(v22 + 1);
              v23[1].mExtUsePermission = mExtUsePermission;
            }

            WeakRetained = objc_loadWeakRetained(&v23[1].mConnection);
            v26 = [WeakRetained remoteObjectProxy];
            if (mExtUsePermission == 1)
            {
              p_p_buf = &p_buf;
            }

            else
            {
              p_p_buf = &buf;
            }

            v28 = PurgeableDataWrapper::accessor::data(p_p_buf);
            [v26 registrationsChanged:v28 includesExtensions:mExtUsePermission == 1 fsHash:logb];
          }

          v19 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v19);
      }

      notify_post("com.apple.coreaudio.components.changed");
      if (v40 == 1)
      {
        [*(p_buf + 4) endContentAccess];
      }

      if (LOBYTE(buf.__end_) == 1)
      {
        [*(buf.__begin_ + 4) endContentAccess];
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_18F8CA5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN27AudioComponentRegistrarImpl33listenerShouldAcceptNewConnectionEP13NSXPCListenerP15NSXPCConnection_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 128);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v1 removeObject:?];
}

void ___ZN27AudioComponentRegistrarImpl33listenerShouldAcceptNewConnectionEP13NSXPCListenerP15NSXPCConnection_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 128);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v1 removeObject:?];
}

void sub_18F8CACD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AudioComponentRegistrar;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18F8CB43C(_Unwind_Exception *a1, RegistrarService *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, std::mutex *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  std::mutex::~mutex(&a21);
  v28 = *(v22 + 264);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::unique_ptr<AudioComponentPluginScanner>::reset[abi:ne200100](v25, 0);

  std::__function::__value_func<NSData * ()(void)>::~__value_func[abi:ne200100](v22 + 208);
  std::__function::__value_func<NSData * ()(void)>::~__value_func[abi:ne200100](v22 + 168);
  a21 = (v22 + 136);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a21);

  RegistrarService::~RegistrarService(v23);
  RegistrarService::~RegistrarService(a10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v24);
  std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::~__value_func[abi:ne200100](v22 + 16);

  MEMORY[0x193ADF220](v22, 0x10A0C401440404FLL);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<NSData * ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<NSData * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

id **std::unique_ptr<AudioComponentPluginScanner>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void ___ZN27AudioComponentRegistrarImpl15_initSubsystemsEv_block_invoke(void *a1)
{
  v30[3] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *(v2 + 31);
  v4 = *v2;
  std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::__value_func[abi:ne200100](v25, (v2 + 16));
  v28 = 0;
  if (v26)
  {
    operator new();
  }

  v24[0] = &unk_1F033DA60;
  v24[3] = v24;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v5 = *gAudioComponentLogCategory;
  v6 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__begin_) = 136315394;
    *(&buf.__begin_ + 4) = "AudioComponentPluginScanner.mm";
    WORD2(buf.__end_) = 1024;
    *(&buf.__end_ + 6) = 716;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Scanning for bundles", &buf, 0x12u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = *v3;
  if (!*v3)
  {
    v10 = objc_opt_new();
    v11 = *v3;
    *v3 = v10;

    v9 = *v3;
  }

  v12 = v28;
  if (!v28)
  {
    goto LABEL_13;
  }

  if (v28 != v27)
  {
    v12 = ((*v28)[2])();
LABEL_13:
    *&buf.mSorted = v12;
    goto LABEL_15;
  }

  *&buf.mSorted = &buf;
  ((*v28)[3])();
LABEL_15:
  v13 = (v9 + 4);
  if (v9 + 4 != &buf)
  {
    v14 = *&buf.mSorted;
    v15 = v9[7];
    if (*&buf.mSorted == &buf)
    {
      if (v15 == v13)
      {
        (*(**&buf.mSorted + 24))();
        (*(**&buf.mSorted + 32))(*&buf.mSorted);
        *&buf.mSorted = 0;
        (*(*v9[7] + 24))(v9[7], &buf);
        (*(*v9[7] + 32))(v9[7]);
        v9[7] = 0;
        *&buf.mSorted = &buf;
        (*(v30[0] + 24))(v30, v9 + 4);
        (*(v30[0] + 32))(v30);
      }

      else
      {
        (*(**&buf.mSorted + 24))();
        (*(**&buf.mSorted + 32))(*&buf.mSorted);
        *&buf.mSorted = v9[7];
      }

      v9[7] = v13;
    }

    else if (v15 == v13)
    {
      (*(*v15 + 24))(v9[7], &buf);
      (*(*v9[7] + 32))(v9[7]);
      v9[7] = *&buf.mSorted;
      *&buf.mSorted = &buf;
    }

    else
    {
      *&buf.mSorted = v9[7];
      v9[7] = v14;
    }
  }

  std::__function::__value_func<void ()(AudioComponentVector &,AudioComponentVector &)>::~__value_func[abi:ne200100](&buf);
  std::function<void ()(void)>::operator=(*v3 + 64, v24);
  if (*v3)
  {
    [*v3 postInit:v4];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  v16 = CFAbsoluteTimeGetCurrent();
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v17 = *gAudioComponentLogCategory;
  v18 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__begin_) = 136315650;
    *(&buf.__begin_ + 4) = "AudioComponentPluginScanner.mm";
    WORD2(buf.__end_) = 1024;
    *(&buf.__end_ + 6) = 734;
    WORD1(buf.__cap_) = 2048;
    *(&buf.__cap_ + 4) = v16 - Current;
    _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d Finished scanning for bundles (%.3f s)", &buf, 0x1Cu);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v24);
  std::__function::__value_func<void ()(AudioComponentVector &,AudioComponentVector &)>::~__value_func[abi:ne200100](v27);
  std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::~__value_func[abi:ne200100](v25);
  v20 = a1[5];
  v21 = a1[6];
  std::mutex::lock(v20);
  memset(&buf, 0, 24);
  buf.mSorted = 1;
  AudioComponentRegistrarImpl::addRemoveComponents(v21, &v23, &buf);
  v27[0] = &buf;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v27);
  std::mutex::unlock(v20);
  buf.__begin_ = &v23;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&buf);
  v22 = *MEMORY[0x1E69E9840];
}

void sub_18F8CBD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>,std::allocator<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>>,void ()(AudioComponentVector&,AudioComponentVector&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__function::__func<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>,std::allocator<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>>,void ()(AudioComponentVector&,AudioComponentVector&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>,std::allocator<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>>,void ()(AudioComponentVector&,AudioComponentVector&)>::~__func(void *a1)
{
  *a1 = &unk_1F033DA18;
  std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x193ADF220);
}

void *std::__function::__func<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>,std::allocator<std::function<void ()(AudioComponentVector const&,AudioComponentVector&)>>,void ()(AudioComponentVector&,AudioComponentVector&)>::~__func(void *a1)
{
  *a1 = &unk_1F033DA18;
  std::__function::__value_func<void ()(AudioComponentVector const&,AudioComponentVector&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AudioComponentRegistrarImpl::_initSubsystems(void)::$_0,std::allocator<AudioComponentRegistrarImpl::_initSubsystems(void)::$_0>,void ()(AudioComponentVector const&,AudioComponentVector&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = [*(v5 + 80) _queue];
  dispatch_assert_queue_not_V2(v6);

  v7 = [*(v5 + 80) _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZZN27AudioComponentRegistrarImpl15_initSubsystemsEvENK3__0clERK20AudioComponentVectorRS1__block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = v5;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v7, block);
}

uint64_t std::__function::__func<AudioComponentRegistrarImpl::_initSubsystems(void)::$_0,std::allocator<AudioComponentRegistrarImpl::_initSubsystems(void)::$_0>,void ()(AudioComponentVector const&,AudioComponentVector&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033D9D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_2,std::allocator<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_2>,BOOL ()(void)>::operator()(LS *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = LS::LSDatabaseReady(a1);
  if ((v1 & 1) == 0)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v2 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "AudioComponentRegistrar.mm";
      v8 = 1024;
      v9 = 83;
      _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioComponentRegistrar: LS Database rebuild is in progress, can't scan for extensions now!", &v6, 0x12u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t std::__function::__func<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_1,std::allocator<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_1>,NSData * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033D940;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_0,std::allocator<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_0>,NSData * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033D8F8;
  a2[1] = v2;
  return result;
}

UIImage *__cdecl AudioOutputUnitGetHostIcon(AudioUnit au, float desiredPointSize)
{
  *&outData = desiredPointSize;
  ioDataSize = 8;
  if (AudioUnitGetProperty(au, 0xBB5u, 0, 0, &outData, &ioDataSize))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

id IPCAUIcons::GetIconFromBundle(IPCAUIcons *this, const __CFString *a2)
{
  v10 = 0;
  v11 = 0;
  GlobalComponentPluginMgr(v9);
  v3 = v9[1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN29AudioComponentMgr_NSExtension23iconForInterAppBundleIDEPK10__CFStringR13APIconRequest_block_invoke;
  aBlock[3] = &__block_descriptor_40_e16_v16__0__NSData_8l;
  aBlock[4] = &v10;
  v4 = _Block_copy(aBlock);
  v5 = AudioComponentMgr_RegistrarService::syncPrefServerProxy(v3);
  [v5 getInterAppIcon:this reply:v4];

  if (v9[0])
  {
    std::recursive_mutex::unlock(v9[0]);
  }

  v6 = v11;
  v7 = v11;

  return v6;
}

void sub_18F8CC6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::recursive_mutex *a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a10)
  {
    std::recursive_mutex::unlock(a10);
  }

  _Unwind_Resume(a1);
}

id copyConfigurationInfoFromCache(const __CFString *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14620;
  v10 = __Block_byref_object_dispose__14621;
  v11 = 0;
  v2 = syncCacheServerProxy();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___Z30copyConfigurationInfoFromCachePK10__CFString_block_invoke;
  v5[3] = &unk_1E72C2C00;
  v5[4] = &v6;
  [v2 copyConfigurationInfoFromCache:a1 reply:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_18F8CC814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id syncCacheServerProxy(void)
{
  v0 = cacheServerConnection();
  v1 = [v0 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_14623];

  return v1;
}

id cacheServerConnection(void)
{
  v0 = gCacheServerConnection;
  if (!gCacheServerConnection)
  {
    v1 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.audio.AudioComponentPrefs" options:4096];
    v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0354878];
    [v1 setRemoteObjectInterface:v2];

    [v1 setInterruptionHandler:&__block_literal_global_34_14630];
    [v1 setInvalidationHandler:&__block_literal_global_37_14631];
    [v1 resume];
    v3 = gCacheServerConnection;
    gCacheServerConnection = v1;

    v0 = gCacheServerConnection;
  }

  return v0;
}

void ___ZL20syncCacheServerProxyv_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "AudioComponentConfigurationInfoCache.mm";
    v8 = 1024;
    v9 = 58;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d cache server proxy error: %@", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void ___ZL21cacheServerConnectionv_block_invoke_35()
{
  v7 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v0 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "AudioComponentConfigurationInfoCache.mm";
    v5 = 1024;
    v6 = 45;
    _os_log_impl(&dword_18F5DF000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d cache server proxy error: Connection Invalidated", &v3, 0x12u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void ___ZL21cacheServerConnectionv_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v0 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "AudioComponentConfigurationInfoCache.mm";
    v5 = 1024;
    v6 = 42;
    _os_log_impl(&dword_18F5DF000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d cache server proxy error: Connection Interrupted", &v3, 0x12u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void writeConfigurationInfoToCache(const __CFString *a1, const __CFDictionary *a2)
{
  v4 = syncCacheServerProxy();
  [v4 writeConfigurationInfoToCache:a1 configurationInfo:a2];
}

uint64_t createConfgurationInfoCacheKey(const AudioComponentDescription *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  CAX4CCString::CAX4CCString(v9, a1->componentType);
  CAX4CCString::CAX4CCString(v8, a1->componentSubType);
  CAX4CCString::CAX4CCString(v7, a1->componentManufacturer);
  result = [v4 stringWithFormat:@"%d-%s-%s-%s-0x%X", 7, v9, v8, v7, a2];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void clearConfigInfoCache(const AudioComponentDescription *a1, uint64_t a2)
{
  componentType = a1->componentType;
  componentSubType = a1->componentSubType;
  componentManufacturer = a1->componentManufacturer;
  v7 = cacheServerConnection();
  v10 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_43];

  if (componentType)
  {
    v8 = componentSubType == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || componentManufacturer == 0)
  {
    [v10 clearConfigurationInfoCache:0];
  }

  else
  {
    [v10 clearConfigurationInfoCache:{createConfgurationInfoCacheKey(a1, a2)}];
  }
}

void ___ZL21asyncCacheServerProxyv_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "AudioComponentConfigurationInfoCache.mm";
    v8 = 1024;
    v9 = 65;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d cache server proxy error: %@", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

id getValidationResultFromCache(const AudioComponentDescription *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = createValidationResultCacheKey(a1, a2, a3, a4, a5);
  v6 = copyConfigurationInfoFromCache(v5);

  return v6;
}

id createValidationResultCacheKey(const AudioComponentDescription *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = @"arm64";
  if (a2 == 16777223)
  {
    v5 = @"x86_64";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"validation-%d-'%x'-'%x'-'%x'-0x%X-0x%X-%@-%d", 7, a1->componentType, a1->componentSubType, a1->componentManufacturer, a3, a4, v5, a5];

  return v6;
}

void writeValidationResultToCache(const AudioComponentDescription *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6)
{
  v7 = createValidationResultCacheKey(a1, a2, a3, a4, a5);
  writeConfigurationInfoToCache(v7, a6);
}

void *CDelaunayTriangles3D::check_avail_vertices(void *result, unint64_t a2, int a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = HIDWORD(a2);
  v9 = result;
  while (1)
  {
    v9 = v9[1];
    if (v9 == result)
    {
      break;
    }

    v10 = *(v9 + 4);
    if (v10 == a2 || *(v9 + 5) == a2)
    {
      v7 = 1;
    }

    if (v10 == HIDWORD(a2) || *(v9 + 5) == HIDWORD(a2))
    {
      v5 = 1;
    }

    if (v10 == a3 || *(v9 + 5) == a3)
    {
      v6 = 1;
    }

    if (v7 & v5 & 1) != 0 && (v6)
    {
      return result;
    }
  }

  if (v7)
  {
    if (v5)
    {
      goto LABEL_17;
    }

LABEL_20:
    result = std::list<int>::remove(v4 + 3, v8);
    if (v6)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = std::list<int>::remove(result + 3, a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v6)
  {
    return result;
  }

LABEL_21:

  return std::list<int>::remove(v4 + 3, a3);
}

void *std::list<int>::remove(uint64_t *a1, int a2)
{
  v14[0] = v14;
  v14[1] = v14;
  v15 = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      if (*(v2 + 4) == a2)
      {
        while (v4 != a1)
        {
          v5 = *(v4 + 4) == a2;
          if (*(v4 + 4) != a2)
          {
            goto LABEL_8;
          }

          v4 = v4[1];
        }

        v5 = 1;
LABEL_8:
        if (v2 != v4)
        {
          v6 = *v4;
          if (v14 != a1)
          {
            if (v6 == v2)
            {
              v9 = 1;
            }

            else
            {
              v7 = -1;
              v8 = v2;
              do
              {
                v8 = v8[1];
                ++v7;
              }

              while (v8 != v6);
              v9 = v7 + 2;
            }

            a1[2] -= v9;
            v3 += v9;
            v15 = v3;
          }

          v10 = v6[1];
          v11 = *v2;
          *(v11 + 8) = v10;
          *v10 = v11;
          v12 = v14[0];
          *(v14[0] + 8) = v2;
          *v2 = v12;
          v14[0] = v6;
          v6[1] = v14;
        }

        if (!v5)
        {
          v4 = v4[1];
        }
      }

      v2 = v4;
    }

    while (v4 != a1);
  }

  return std::__list_imp<ID3FrameInfo>::clear(v14);
}

void *CDelaunayTriangles3D::add_edge_to_buffer(CDelaunayTriangles3D *this, int32x2_t *a2)
{
  v4 = *(this + 2);
  v7 = vrev64_s32(*a2);
  result = std::list<std::array<int,2ul>>::remove(this, &v7);
  if (*(this + 2) == v4)
  {
    v6 = *a2;
    operator new();
  }

  return result;
}

void *std::list<std::array<int,2ul>>::remove(void *a1, void *a2)
{
  v14[0] = v14;
  v14[1] = v14;
  v15 = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      if (v2[2] == *a2)
      {
        while (v4 != a1)
        {
          v5 = v4[2] == *a2;
          if (v4[2] != *a2)
          {
            goto LABEL_10;
          }

          v4 = v4[1];
        }

        v5 = 1;
LABEL_10:
        if (v2 != v4)
        {
          v6 = *v4;
          if (v14 != a1)
          {
            if (v6 == v2)
            {
              v9 = 1;
            }

            else
            {
              v7 = -1;
              v8 = v2;
              do
              {
                v8 = v8[1];
                ++v7;
              }

              while (v8 != v6);
              v9 = v7 + 2;
            }

            a1[2] -= v9;
            v3 += v9;
            v15 = v3;
          }

          v10 = v6[1];
          v11 = *v2;
          *(v11 + 8) = v10;
          *v10 = v11;
          v12 = v14[0];
          *(v14[0] + 8) = v2;
          *v2 = v12;
          v14[0] = v6;
          v6[1] = v14;
        }

        if (!v5)
        {
          v4 = v4[1];
        }
      }

      v2 = v4;
    }

    while (v4 != a1);
  }

  return std::__list_imp<ID3FrameInfo>::clear(v14);
}

uint64_t CDelaunayTriangles3D::find_one_delaunay3(CDelaunayTriangles3D *this, const double *a2, const double *a3, const double *a4, int *a5, int a6)
{
  v6 = *(this + 5);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 != 1)
  {
    v12 = this + 24;
    v13 = *(this + 4);
    if (v13 != (this + 24))
    {
      v14 = 0;
      v15 = *(this + 4);
      do
      {
        result = *(v15 + 16);
        if (result != a5 && result != a6)
        {
          v17.f64[0] = a2[a5];
          v18 = a2[a6];
          v19 = a2[result];
          v20.f64[0] = a3[a5];
          v21 = a3[a6];
          v22 = a3[result];
          v23.f64[0] = a4[a5];
          v24 = a4[a6];
          v25 = a4[result];
          if (v17.f64[0] * (v21 * v25 - v24 * v22) - v20.f64[0] * (v18 * v25 - v24 * v19) + v23.f64[0] * (v18 * v22 - v21 * v19) > 0.0)
          {
            v26.f64[0] = v20.f64[0] * v20.f64[0] + v17.f64[0] * v17.f64[0] + v23.f64[0] * v23.f64[0];
            v26.f64[1] = v21 * v21 + v18 * v18 + v24 * v24;
            v17.f64[1] = a2[a6];
            v20.f64[1] = a3[a6];
            v23.f64[1] = a4[a6];
            v27 = vnegq_f64(v20);
            v28 = v14;
            v29 = v13;
            while (1)
            {
              if (v28)
              {
                v30 = *(v29 + 4);
                if (v30 != a5 && v30 != a6)
                {
                  v32.f64[0] = v22 * v22 + v19 * v19 + v25 * v25;
                  v32.f64[1] = a3[v30] * a3[v30] + a2[v30] * a2[v30] + a4[v30] * a4[v30];
                  v33.f64[0] = a2[result];
                  v33.f64[1] = a2[v30];
                  *v34.i64 = a3[result];
                  *&v34.i64[1] = a3[v30];
                  *v35.i64 = a4[result];
                  *&v35.i64[1] = a4[v30];
                  v36 = vextq_s8(v34, v20, 8uLL);
                  v37 = vnegq_f64(v36);
                  v38 = vextq_s8(v20, v34, 8uLL);
                  v39 = vnegq_f64(v38);
                  v40 = vextq_s8(v35, v23, 8uLL);
                  v41 = vextq_s8(v23, v35, 8uLL);
                  v42 = vmlaq_f64(vmulq_f64(v23, v39), v41, v20);
                  v43 = vmulq_f64(v33, vmlaq_f64(vmulq_f64(v40, v39), v41, v36));
                  v44 = vextq_s8(v33, v17, 8uLL);
                  v45 = vextq_s8(v17, v33, 8uLL);
                  v46 = vmlaq_f64(vmlaq_f64(v43, vmlaq_f64(vmulq_f64(v35, v37), v40, v34), v45), vmlaq_f64(vmulq_f64(v41, vnegq_f64(v34)), v35, v38), v44);
                  v47 = vmulq_f64(v32, vmlaq_f64(vmlaq_f64(vmulq_f64(v17, vmlaq_f64(vmulq_f64(v41, v37), v40, v38)), v42, v44), vmlaq_f64(vmulq_f64(v40, v27), v23, v36), v45));
                  v48 = vmulq_f64(v26, v46);
                  if (vaddvq_f64(vsubq_f64(vzip1q_s64(v48, v47), vzip2q_s64(v48, v47))) > 1.0e-13)
                  {
                    break;
                  }
                }
              }

              v29 = *(v29 + 1);
              --v28;
              if (v29 == v12)
              {
                return result;
              }
            }
          }
        }

        v15 = *(v15 + 8);
        ++v14;
      }

      while (v15 != v12);
    }

    return 0xFFFFFFFFLL;
  }

  v7 = *(*(this + 4) + 16);
  if (v7 == a5 || v7 == a6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2[a6];
  v10 = a2[v7];
  if (a2[a5] * (a3[a6] * a4[v7] - a4[a6] * a3[v7]) - a3[a5] * (v9 * a4[v7] - a4[a6] * v10) + a4[a5] * (v9 * a3[v7] - a3[a6] * v10) <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

uint64_t CDelaunayTriangles3D::find_subtriangle_containment(unint64_t this, double a2, double a3, double a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((this & 0x8000000000000000) != 0)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = this;
    if (a3 <= -0.00000011920929)
    {
      v5 = 4 * (a2 > -0.00000011920929);
    }

    else
    {
      v5 = (4 * (a2 > -0.00000011920929)) | 2;
    }

    if (a4 <= -0.00000011920929)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (this)
    {
      v6 = (v6 << (2 * this));
      v7 = fabs(a4);
      v8 = fabs(a3);
      v9 = fabs(a2);
      v10 = MEMORY[0x1E69E9C10];
      do
      {
        v11 = v4;
        v12 = v8 + v8;
        v13 = v7 + v7;
        v14 = v9 + v9;
        v15 = v7 - v8 - v9;
        if (v8 + v8 >= v9 - v8 - v7)
        {
          v16 = v9 - v8 - v7;
        }

        else
        {
          v16 = v8 + v8;
        }

        if (v13 < v16)
        {
          v16 = v7 + v7;
        }

        if (v12 >= v14)
        {
          v17 = v9 + v9;
        }

        else
        {
          v17 = v8 + v8;
        }

        if (v15 < v17)
        {
          v17 = v7 - v8 - v9;
        }

        *v29 = v16;
        *&v29[1] = v17;
        if (v8 - v9 - v7 >= v14)
        {
          v18 = v9 + v9;
        }

        else
        {
          v18 = v8 - v9 - v7;
        }

        if (v13 < v18)
        {
          v18 = v7 + v7;
        }

        if (v9 - v8 + v7 >= v8 + v7 - v9)
        {
          v19 = v8 + v7 - v9;
        }

        else
        {
          v19 = v9 - v8 + v7;
        }

        if (v9 + v8 - v7 < v19)
        {
          v19 = v9 + v8 - v7;
        }

        *&v29[2] = v18;
        *&v29[3] = v19;
        v20 = v29;
        for (i = 1; i != 4; ++i)
        {
          if (v16 < *&v29[i])
          {
            v16 = *&v29[i];
            v20 = &v29[i];
          }
        }

        --v4;
        if (*v20 > -0.00000011920929)
        {
          v22 = (v20 - v29) >> 3;
          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v26 = 2 * v4;
              goto LABEL_58;
            }

            if (v22 == 3)
            {
              v24 = 2 * v4;
LABEL_52:
              v6 = ((v22 << v24) + v6);
              v14 = v8 + v7 - v9;
              v12 = v9 - v8 + v7;
              v15 = v9 + v8 - v7;
              goto LABEL_60;
            }
          }

          else
          {
            if (!v22)
            {
              goto LABEL_48;
            }

            if (v22 == 1)
            {
              v23 = 2 * v4;
              goto LABEL_47;
            }
          }
        }

        if (*v20 <= -0.0000011920929)
        {
          goto LABEL_53;
        }

        v25 = (v20 - v29) >> 3;
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v26 = 2 * v4;
            LODWORD(v22) = 2;
LABEL_58:
            v6 = ((v22 << v26) + v6);
            v12 = v8 - v9 - v7;
LABEL_59:
            v15 = v7 + v7;
            goto LABEL_60;
          }

          if (v25 != 3)
          {
LABEL_53:
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v31 = "DelaunayTriangles3D.cpp";
              v32 = 1024;
              v33 = 477;
              v34 = 2080;
              v35 = "find_subtriangle_containment";
              v36 = 1024;
              v37 = 477;
              _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: subtriangle still not found in computing rank with relaxed test!", buf, 0x22u);
            }

            v14 = v9;
            v12 = v8;
            v15 = v7;
            goto LABEL_60;
          }

          v24 = 2 * v4;
          LODWORD(v22) = 3;
          goto LABEL_52;
        }

        if (!v25)
        {
LABEL_48:
          v14 = v9 - v8 - v7;
          goto LABEL_59;
        }

        if (v25 != 1)
        {
          goto LABEL_53;
        }

        v23 = 2 * v4;
        LODWORD(v22) = 1;
LABEL_47:
        v6 = ((v22 << v23) + v6);
LABEL_60:
        v7 = v15;
        v8 = v12;
        v9 = v14;
      }

      while (v11 > 1);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CDelaunayTriangles3D::check_coplanar(float64_t *this, const double *a2, const double *a3, const double *a4, double a5, float64x2_t a6, double a7, double a8, double a9, double a10, float64x2_t a11)
{
  if (a4 < 4)
  {
    return 1;
  }

  v11 = 0;
  v12 = 2;
  v13 = 1;
  do
  {
    if (v11 + 2 < a4)
    {
      v14.f64[0] = this[v11];
      v14.f64[1] = a2[v11];
      a6.f64[0] = a3[v11];
      v15.f64[0] = v14.f64[0];
      *&v15.f64[1] = vextq_s8(v14, v14, 8uLL).u64[0];
      v16 = v13;
      v17 = v12;
      while (2)
      {
        v18 = &a3[v17];
        v19 = &a2[v17];
        v20 = &this[v17];
        v21.f64[0] = this[v16];
        v21.f64[1] = a2[v16];
        a11.f64[0] = a3[v16];
        v25 = vsubq_f64(v21, v15);
        v22 = vextq_s8(v25, v25, 8uLL);
        v23 = vsubq_f64(a11, a6);
        v24.f64[0] = v23.f64[0];
        v24.f64[1] = v25.f64[0];
        *&v24.f64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
        v25.f64[1] = v22.f64[0];
        v26 = v17;
        do
        {
          v27.f64[0] = *v20;
          *&a11.f64[0] = *v18;
          v27.f64[1] = *v19;
          v28 = vsubq_f64(v27, __PAIR128__(*&v15.f64[1], *&v14.f64[0]));
          v29 = vsubq_f64(a11, a6);
          v30 = vnegq_f64(v29);
          v29.f64[1] = v28.f64[0];
          v31 = vmlaq_f64(vmulq_f64(v24, vnegq_f64(v28)), v25, v29);
          v32 = vmlaq_laneq_f64(vmulq_f64(v22, v30), v23, v28, 1);
          a11.f64[0] = v32.f64[0];
          a11.f64[1] = v31.f64[0];
          if (vabsq_f64(vdupq_laneq_s64(v31, 1)).f64[0] + vaddvq_f64(vabsq_f64(a11)) > 0.05)
          {
            v34 = 0;
            v35.f64[0] = v31.f64[0];
            *&v35.f64[1] = vextq_s8(v31, v31, 8uLL).u64[0];
            v36 = vmulq_f64(v35, v35);
            *v36.f64 = sqrt(v36.f64[1] + vmulq_f64(v32, v32).f64[0] + v36.f64[0]);
            v37 = *v36.f64;
            while (1)
            {
              if (v11 != v34 && v16 != v34 && v26 != v34)
              {
                v38.f64[0] = this[v34];
                v38.f64[1] = a2[v34];
                v25.f64[0] = a3[v34];
                v25 = vmulq_laneq_f64(vsubq_f64(v25, a6), v31, 1);
                if (fabs((v25.f64[0] + vaddvq_f64(vmulq_f64(a11, vsubq_f64(v38, v14)))) / v37) > 0.01)
                {
                  break;
                }
              }

              if (a4 == ++v34)
              {
                return 1;
              }
            }

            return 0;
          }

          ++v26;
          ++v18;
          ++v19;
          ++v20;
        }

        while (v26 < a4);
        ++v16;
        ++v17;
        if (v16 != a4 - 1)
        {
          continue;
        }

        break;
      }
    }

    ++v11;
    ++v12;
    ++v13;
    v33 = 1;
  }

  while (v11 != a4 - 2);
  return v33;
}

uint64_t std::list<int>::__sort<std::__less<void,void>>(uint64_t result, uint64_t **a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v4 = *a2;
      if (*(*a2 + 4) < *(result + 16))
      {
        v6 = *v4;
        v5 = v4[1];
        *(v6 + 8) = v5;
        *v5 = v6;
        v7 = *result;
        *(v7 + 8) = v4;
        *v4 = v7;
        *result = v4;
        v4[1] = result;
        return v4;
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = (a3 >> 1) + 1;
      v11 = result;
      do
      {
        v11 = *(v11 + 8);
        --v10;
      }

      while (v10 > 1);
      v12 = std::list<int>::__sort<std::__less<void,void>>(result, v11, a3 >> 1);
      result = std::list<int>::__sort<std::__less<void,void>>(v11, a2, a3 - v9);
      v13 = *(v12 + 16);
      if (*(result + 16) >= v13)
      {
        v15 = *(v12 + 8);
        i = result;
        result = v12;
      }

      else
      {
          ;
        }

        v16 = *i;
        v17 = *(*i + 8);
        v18 = *result;
        *(v18 + 8) = v17;
        *v17 = v18;
        v19 = *v12;
        v15 = *(v12 + 8);
        *(v19 + 8) = result;
        *result = v19;
        *v12 = v16;
        *(v16 + 8) = v12;
      }

      if (v15 != i && i != a2)
      {
        v20 = i;
        do
        {
          v21 = *(v15 + 4);
          if (*(i + 16) >= v21)
          {
            v15 = v15[1];
          }

          else
          {
              ;
            }

            v23 = *j;
            v24 = *(*j + 8);
            v25 = *i;
            *(v25 + 8) = v24;
            *v24 = v25;
            if (v20 == i)
            {
              v20 = j;
            }

            v27 = *v15;
            v26 = v15[1];
            *(v27 + 8) = i;
            *i = v27;
            *v15 = v23;
            *(v23 + 8) = v15;
            v15 = v26;
            i = j;
          }
        }

        while (v15 != v20 && i != a2);
      }
    }
  }

  return result;
}

BOOL CDelaunayTriangles3D::is_origin_inside_hull(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int16x4_t a6)
{
  v11 = (a4[1] - *a4) >> 2;
  __A.i32[0] = 0;
  std::vector<float>::resize(a5, v11, &__A, a6);
  v14 = *a5;
  v15 = a5[1] - *a5;
  if ((v15 >> 2) >= 3)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    v18 = *a4;
    do
    {
      v19 = v16;
      v20 = &v49;
      v21 = 3;
      do
      {
        v22 = *(v18 + 4 * v19);
        v23 = *(a1 + 8 * v22);
        v24 = *(a2 + 8 * v22);
        v25 = *(a3 + 8 * v22);
        *(v20 - 2) = v23;
        *(v20 - 1) = v24;
        v26 = v25;
        *v20 = v26;
        v20 += 3;
        ++v19;
        --v21;
      }

      while (v21);
      v27 = 0;
      v28 = &v50;
      do
      {
        v29 = *(v28 - 3);
        __C.f32[v27] = *v28 - v29;
        v44.f32[v27++] = v28[3] - v29;
        ++v28;
      }

      while (v27 != 3);
      v30 = vcvtq_f64_f32(__C);
      v12.f64[0] = v47;
      v31 = vcvtq_f64_f32(v44);
      v13.f64[0] = v45;
      v32 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v12), v31, 1), v13, v30, 1);
      v13.f64[1] = v31.f64[0];
      v33 = (v14 + 4 * (3 * v17));
      v12.f64[1] = v30.f64[0];
      v34 = vmlaq_f64(vmulq_f64(v13, vnegq_f64(v30)), v31, v12);
      v12 = vmulq_f64(v34, v34);
      v31.f64[0] = vmulq_f64(v32, v32).f64[0];
      v32.f64[1] = v34.f64[0];
      v12.f64[0] = 1.0 / sqrt(v12.f64[1] + v31.f64[0] + v12.f64[0]);
      *v33 = vcvt_f32_f64(vmulq_n_f64(v32, v12.f64[0]));
      *v34.f64 = vmulq_laneq_f64(v12, v34, 1).f64[0];
      v33[1].i32[0] = LODWORD(v34.f64[0]);
      v17 = (v17 + 1);
      v16 += 3;
    }

    while ((v15 >> 2) / 3uLL > v17);
  }

  if (v15 < 9)
  {
    return 1;
  }

  v35 = 0;
  LODWORD(v36) = 0;
  while (1)
  {
    v49 = 0.0;
    __A = 0;
    v37 = 0;
    v38 = 0.0;
    v39 = v35;
    v40 = 3;
    do
    {
      v41 = *(*a4 + 4 * v39);
      v42.f64[0] = *(a1 + 8 * v41);
      v42.f64[1] = *(a2 + 8 * v41);
      v37 = vcvt_f32_f64(vaddq_f64(v42, vcvtq_f64_f32(v37)));
      v38 = *(a3 + 8 * v41) + v38;
      ++v39;
      --v40;
    }

    while (v40);
    __A = v37;
    v49 = v38;
    __C.i32[0] = 0;
    vDSP_dotpr(&__A, 1, (v14 + 4 * (3 * v36)), 1, &__C, 3uLL);
    result = __C.f32[0] > 0.0;
    if (__C.f32[0] <= 0.0)
    {
      break;
    }

    v36 = (v36 + 1);
    v14 = *a5;
    v35 += 3;
    if (v36 >= ((a5[1] - *a5) >> 2) / 3uLL)
    {
      return 1;
    }
  }

  return result;
}

OSStatus AudioUnitAddRenderNotify(AudioUnit inUnit, AURenderCallback inProc, void *inProcUserData)
{
  if (!inUnit)
  {
    return -50;
  }

  v5 = (*(*inUnit + 8))(inUnit);
  if (!v5)
  {
    return 560947818;
  }

  v6 = v5;
  if (*((**v5)(v5) + 38) != 24949)
  {
    return -3000;
  }

  v7 = *(*((**v6)(v6) + 112) + 64);
  if (!v7)
  {
    return -4;
  }

  v8 = v6[3];

  return v7(v8, inProc, inProcUserData);
}

OSStatus AudioUnitRemoveRenderNotify(AudioUnit inUnit, AURenderCallback inProc, void *inProcUserData)
{
  if (!inUnit)
  {
    return -50;
  }

  v5 = (*(*inUnit + 8))(inUnit);
  if (!v5)
  {
    return 560947818;
  }

  v6 = v5;
  if (*((**v5)(v5) + 38) != 24949)
  {
    return -3000;
  }

  v7 = *(*((**v6)(v6) + 112) + 72);
  if (!v7)
  {
    return -4;
  }

  v8 = v6[3];

  return v7(v8, inProc, inProcUserData);
}

uint64_t AudioUnitComplexRender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    return 4294967246;
  }

  v17 = (*(*a1 + 8))(a1);
  if (!v17)
  {
    return 4294967292;
  }

  v18 = v17;
  if (*((**v17)(v17) + 38) != 24949)
  {
    return 4294964296;
  }

  v19 = *(*((**v18)(v18) + 112) + 120);
  if (!v19)
  {
    return 4294967292;
  }

  v20 = v18[3];

  return v19(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_18F8CFE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

OSStatus AudioCodecAppendInputBufferList(AudioCodec inCodec, const AudioBufferList *inBufferList, UInt32 *ioNumberPackets, const AudioStreamPacketDescription *inPacketDescription, UInt32 *outBytesConsumed)
{
  if (!inCodec)
  {
    return -50;
  }

  v9 = (*(*inCodec + 8))(inCodec);
  if (!v9)
  {
    return 560947818;
  }

  v10 = v9;
  v11 = *(*((**v9)(v9) + 112) + 64);
  if (!v11)
  {
    return -4;
  }

  v12 = v10[3];

  return v11(v12, inBufferList, ioNumberPackets, inPacketDescription, outBytesConsumed);
}

OSStatus AudioCodecProduceOutputBufferList(AudioCodec inCodec, AudioBufferList *ioBufferList, UInt32 *ioNumberPackets, AudioStreamPacketDescription *outPacketDescription, UInt32 *outStatus)
{
  if (!inCodec)
  {
    return -50;
  }

  v9 = (*(*inCodec + 8))(inCodec);
  v10 = v9;
  if (ioBufferList && ioBufferList->mNumberBuffers)
  {
    mDataByteSize = ioBufferList->mBuffers[0].mDataByteSize;
    v12 = 1;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 0;
    mDataByteSize = 0;
    if (!v9)
    {
LABEL_5:
      result = 560947818;
      if (!v12)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  v14 = *(*((**v9)(v9) + 112) + 72);
  if (v14)
  {
    result = v14(v10[3], ioBufferList, ioNumberPackets, outPacketDescription, outStatus);
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    result = -4;
    if (!v12)
    {
      return result;
    }
  }

LABEL_13:
  if (ioBufferList->mBuffers[0].mDataByteSize > mDataByteSize)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 52);
  v10 = (a2 - 104);
  v11 = (a2 - 156);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v12) >> 2);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 44) >= *(v12 + 8))
        {
          return result;
        }

LABEL_110:
        v373 = *(v12 + 48);
        v311 = *(v12 + 16);
        v341 = *(v12 + 32);
        v278 = *v12;
        v157 = *v9;
        v158 = *(a2 - 36);
        v159 = *(a2 - 20);
        *(v12 + 48) = *(a2 - 4);
        *(v12 + 16) = v158;
        *(v12 + 32) = v159;
        *v12 = v157;
        result = v278;
        v160 = v311;
        *(a2 - 4) = v373;
        *(a2 - 20) = v341;
LABEL_111:
        *v9 = result;
        *(a2 - 36) = v160;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v161 = *(v12 + 60);
      v162 = *(v12 + 112);
      if (v161 >= *(v12 + 8))
      {
        if (v162 < v161)
        {
          v226 = *(v12 + 100);
          result = *(v12 + 84);
          v227 = *(v12 + 68);
          v228 = *(v12 + 52);
          *(v12 + 52) = *(v12 + 104);
          *(v12 + 68) = *(v12 + 120);
          *(v12 + 84) = *(v12 + 136);
          *(v12 + 100) = *(v12 + 152);
          *(v12 + 104) = v228;
          *(v12 + 120) = v227;
          *(v12 + 136) = result;
          *(v12 + 152) = v226;
          if (*(v12 + 60) < *(v12 + 8))
          {
            v377 = *(v12 + 48);
            v317 = *(v12 + 16);
            v347 = *(v12 + 32);
            v283 = *v12;
            v229 = *(v12 + 68);
            *v12 = *(v12 + 52);
            *(v12 + 16) = v229;
            *(v12 + 32) = *(v12 + 84);
            *(v12 + 48) = *(v12 + 100);
            result = v283;
            *(v12 + 100) = v377;
            *(v12 + 84) = v347;
            *(v12 + 68) = v317;
            *(v12 + 52) = v283;
          }
        }
      }

      else if (v162 >= v161)
      {
        v380 = *(v12 + 48);
        v320 = *(v12 + 16);
        v351 = *(v12 + 32);
        v286 = *v12;
        v240 = *(v12 + 68);
        *v12 = *(v12 + 52);
        *(v12 + 16) = v240;
        *(v12 + 32) = *(v12 + 84);
        *(v12 + 48) = *(v12 + 100);
        result = v286;
        *(v12 + 100) = v380;
        *(v12 + 84) = v351;
        *(v12 + 68) = v320;
        *(v12 + 52) = v286;
        if (v162 < *(v12 + 60))
        {
          v241 = *(v12 + 100);
          result = *(v12 + 84);
          v242 = *(v12 + 68);
          v243 = *(v12 + 52);
          *(v12 + 52) = *(v12 + 104);
          *(v12 + 68) = *(v12 + 120);
          *(v12 + 84) = *(v12 + 136);
          *(v12 + 100) = *(v12 + 152);
          *(v12 + 104) = v243;
          *(v12 + 120) = v242;
          *(v12 + 136) = result;
          *(v12 + 152) = v241;
        }
      }

      else
      {
        v374 = *(v12 + 48);
        v312 = *(v12 + 16);
        v342 = *(v12 + 32);
        v279 = *v12;
        v163 = *(v12 + 120);
        *v12 = *(v12 + 104);
        *(v12 + 16) = v163;
        *(v12 + 32) = *(v12 + 136);
        *(v12 + 48) = *(v12 + 152);
        result = v279;
        *(v12 + 152) = v374;
        *(v12 + 136) = v342;
        *(v12 + 120) = v312;
        *(v12 + 104) = v279;
      }

      if (*(a2 - 44) >= *(v12 + 112))
      {
        return result;
      }

      result = *(v12 + 104);
      v321 = *(v12 + 120);
      v352 = *(v12 + 136);
      v381 = *(v12 + 152);
      v244 = *(a2 - 4);
      v246 = *(a2 - 36);
      v245 = *(a2 - 20);
      *(v12 + 104) = *v9;
      *(v12 + 120) = v246;
      *(v12 + 136) = v245;
      *(v12 + 152) = v244;
      *(a2 - 36) = v321;
      *(a2 - 20) = v352;
      *(a2 - 4) = v381;
      *v9 = result;
      if (*(v12 + 112) >= *(v12 + 60))
      {
        return result;
      }

      v247 = *(v12 + 100);
      result = *(v12 + 84);
      v248 = *(v12 + 68);
      v249 = *(v12 + 52);
      *(v12 + 52) = *(v12 + 104);
      *(v12 + 68) = *(v12 + 120);
      *(v12 + 84) = *(v12 + 136);
      *(v12 + 100) = *(v12 + 152);
      *(v12 + 104) = v249;
      *(v12 + 120) = v248;
      *(v12 + 136) = result;
      *(v12 + 152) = v247;
LABEL_192:
      if (*(v12 + 60) < *(v12 + 8))
      {
        v382 = *(v12 + 48);
        v322 = *(v12 + 16);
        v353 = *(v12 + 32);
        v287 = *v12;
        v250 = *(v12 + 68);
        *v12 = *(v12 + 52);
        *(v12 + 16) = v250;
        *(v12 + 32) = *(v12 + 84);
        *(v12 + 48) = *(v12 + 100);
        result = v287;
        *(v12 + 100) = v382;
        *(v12 + 84) = v353;
        *(v12 + 68) = v322;
        *(v12 + 52) = v287;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *,0>(v12, (v12 + 52), (v12 + 104), (v12 + 156), (a2 - 52), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 1247)
    {
      v164 = (v12 + 52);
      v166 = v12 == a2 || v164 == a2;
      if (a4)
      {
        if (!v166)
        {
          v167 = 0;
          v168 = v12;
          do
          {
            v169 = v164;
            v170 = *(v168 + 60);
            if (v170 < v168[1])
            {
              v171 = *v169;
              v280 = *(v168 + 68);
              v313 = *(v168 + 84);
              v343 = *(v168 + 25);
              v172 = v167;
              while (1)
              {
                v173 = v12 + v172;
                v174 = *(v12 + v172 + 16);
                *(v173 + 52) = *(v12 + v172);
                *(v173 + 68) = v174;
                *(v173 + 84) = *(v12 + v172 + 32);
                *(v173 + 100) = *(v12 + v172 + 48);
                if (!v172)
                {
                  break;
                }

                v172 -= 52;
                if (v170 >= *(v173 - 44))
                {
                  v175 = v12 + v172 + 52;
                  goto LABEL_130;
                }
              }

              v175 = v12;
LABEL_130:
              *v175 = v171;
              *(v175 + 8) = v170;
              result = v313;
              *(v175 + 16) = v280;
              *(v175 + 32) = v313;
              *(v175 + 48) = v343;
            }

            v164 = (v169 + 52);
            v167 += 52;
            v168 = v169;
          }

          while ((v169 + 52) != a2);
        }
      }

      else if (!v166)
      {
        do
        {
          v230 = v164;
          v231 = *(a1 + 60);
          if (v231 < *(a1 + 8))
          {
            v232 = *v164;
            v284 = *(a1 + 68);
            v318 = *(a1 + 84);
            v348 = *(a1 + 100);
            v233 = v230;
            do
            {
              v234 = *(v233 - 36);
              *v233 = *(v233 - 52);
              *(v233 + 1) = v234;
              *(v233 + 2) = *(v233 - 20);
              *(v233 + 12) = *(v233 - 1);
              v235 = *(v233 - 12);
              v233 = (v233 - 52);
            }

            while (v231 < v235);
            *v233 = v232;
            v233[1] = v231;
            result = v284;
            *(v233 + 12) = v348;
            *(v233 + 1) = v284;
            *(v233 + 2) = v318;
          }

          v164 = (v230 + 52);
          a1 = v230;
        }

        while ((v230 + 52) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v176 = (v14 - 2) >> 1;
        v177 = v176;
        do
        {
          v178 = v177;
          if (v176 >= v177)
          {
            v179 = (2 * v177) | 1;
            v180 = v12 + 52 * v179;
            if (2 * v177 + 2 < v14)
            {
              v181 = *(v180 + 8);
              v182 = *(v180 + 60);
              v183 = v181 >= v182;
              v184 = v181 >= v182 ? 0 : 52;
              v180 += v184;
              if (!v183)
              {
                v179 = 2 * v177 + 2;
              }
            }

            v185 = v12 + 52 * v177;
            v186 = *(v185 + 8);
            if (*(v180 + 8) >= v186)
            {
              v187 = *v185;
              v344 = *(v185 + 48);
              v281 = *(v185 + 16);
              v314 = *(v185 + 32);
              do
              {
                v188 = v185;
                v185 = v180;
                v189 = *v180;
                v190 = *(v180 + 16);
                v191 = *(v180 + 32);
                *(v188 + 48) = *(v180 + 48);
                *(v188 + 16) = v190;
                *(v188 + 32) = v191;
                *v188 = v189;
                if (v176 < v179)
                {
                  break;
                }

                v192 = (2 * v179) | 1;
                v180 = v12 + 52 * v192;
                v193 = 2 * v179 + 2;
                if (v193 < v14)
                {
                  v194 = *(v180 + 8);
                  v195 = *(v180 + 60);
                  v196 = v194 >= v195;
                  v197 = v194 >= v195 ? 0 : 52;
                  v180 += v197;
                  if (!v196)
                  {
                    v192 = v193;
                  }
                }

                v179 = v192;
              }

              while (*(v180 + 8) >= v186);
              *v185 = v187;
              *(v185 + 8) = v186;
              *(v185 + 16) = v281;
              *(v185 + 32) = v314;
              *(v185 + 48) = v344;
            }
          }

          v177 = v178 - 1;
        }

        while (v178);
        v198 = 0x4EC4EC4EC4EC4EC5 * (v13 >> 2);
        do
        {
          v199 = 0;
          v375 = *(v12 + 48);
          v315 = *(v12 + 16);
          v345 = *(v12 + 32);
          v282 = *v12;
          v200 = v12;
          do
          {
            v201 = v200 + 52 * v199;
            v202 = v201 + 52;
            v203 = (2 * v199) | 1;
            v199 = 2 * v199 + 2;
            if (v199 >= v198)
            {
              v199 = v203;
            }

            else
            {
              v204 = *(v201 + 60);
              v205 = *(v201 + 112);
              v206 = v201 + 104;
              if (v204 >= v205)
              {
                v199 = v203;
              }

              else
              {
                v202 = v206;
              }
            }

            v207 = *v202;
            v208 = *(v202 + 16);
            v209 = *(v202 + 32);
            *(v200 + 48) = *(v202 + 48);
            *(v200 + 16) = v208;
            *(v200 + 32) = v209;
            *v200 = v207;
            v200 = v202;
          }

          while (v199 <= ((v198 - 2) >> 1));
          a2 -= 52;
          if (v202 == a2)
          {
            result = v282;
            *(v202 + 48) = v375;
            *(v202 + 16) = v315;
            *(v202 + 32) = v345;
            *v202 = v282;
          }

          else
          {
            v210 = *a2;
            v211 = *(a2 + 16);
            v212 = *(a2 + 32);
            *(v202 + 48) = *(a2 + 48);
            *(v202 + 16) = v211;
            *(v202 + 32) = v212;
            *v202 = v210;
            result = v282;
            *(a2 + 48) = v375;
            *(a2 + 16) = v315;
            *(a2 + 32) = v345;
            *a2 = v282;
            v213 = v202 - v12 + 52;
            if (v213 >= 53)
            {
              v214 = (0x4EC4EC4EC4EC4EC5 * (v213 >> 2) - 2) >> 1;
              v215 = v12 + 52 * v214;
              v216 = *(v202 + 8);
              if (*(v215 + 8) < v216)
              {
                v217 = *v202;
                v259 = *(v202 + 48);
                v253 = *(v202 + 16);
                v256 = *(v202 + 32);
                do
                {
                  v218 = v202;
                  v202 = v215;
                  v219 = *v215;
                  v220 = *(v215 + 16);
                  v221 = *(v215 + 32);
                  *(v218 + 48) = *(v215 + 48);
                  *(v218 + 16) = v220;
                  *(v218 + 32) = v221;
                  *v218 = v219;
                  if (!v214)
                  {
                    break;
                  }

                  v214 = (v214 - 1) >> 1;
                  v215 = v12 + 52 * v214;
                }

                while (*(v215 + 8) < v216);
                *v202 = v217;
                *(v202 + 8) = v216;
                result = v256;
                *(v202 + 16) = v253;
                *(v202 + 32) = v256;
                *(v202 + 48) = v259;
              }
            }
          }
        }

        while (v198-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 52 * (v14 >> 1);
    v17 = *(a2 - 44);
    if (v13 >= 0x1A01)
    {
      v18 = *(v16 + 8);
      if (v18 >= *(v12 + 8))
      {
        if (v17 < v18)
        {
          v356 = *(v16 + 48);
          v290 = *(v16 + 16);
          v325 = *(v16 + 32);
          v262 = *v16;
          v26 = *v9;
          v27 = *(a2 - 36);
          v28 = *(a2 - 20);
          *(v16 + 48) = *(a2 - 4);
          *(v16 + 16) = v27;
          *(v16 + 32) = v28;
          *v16 = v26;
          *(a2 - 4) = v356;
          *(a2 - 36) = v290;
          *(a2 - 20) = v325;
          *v9 = v262;
          if (*(v16 + 8) < *(v12 + 8))
          {
            v357 = *(v12 + 48);
            v291 = *(v12 + 16);
            v326 = *(v12 + 32);
            v263 = *v12;
            v29 = *v16;
            v30 = *(v16 + 16);
            v31 = *(v16 + 32);
            *(v12 + 48) = *(v16 + 48);
            *(v12 + 16) = v30;
            *(v12 + 32) = v31;
            *v12 = v29;
            *(v16 + 48) = v357;
            *(v16 + 16) = v291;
            *(v16 + 32) = v326;
            *v16 = v263;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v354 = *(v12 + 48);
          v288 = *(v12 + 16);
          v323 = *(v12 + 32);
          v260 = *v12;
          v19 = *v9;
          v20 = *(a2 - 36);
          v21 = *(a2 - 20);
          *(v12 + 48) = *(a2 - 4);
          *(v12 + 16) = v20;
          *(v12 + 32) = v21;
          *v12 = v19;
          goto LABEL_26;
        }

        v360 = *(v12 + 48);
        v294 = *(v12 + 16);
        v329 = *(v12 + 32);
        v266 = *v12;
        v38 = *v16;
        v39 = *(v16 + 16);
        v40 = *(v16 + 32);
        *(v12 + 48) = *(v16 + 48);
        *(v12 + 16) = v39;
        *(v12 + 32) = v40;
        *v12 = v38;
        *(v16 + 48) = v360;
        *(v16 + 16) = v294;
        *(v16 + 32) = v329;
        *v16 = v266;
        if (*(a2 - 44) < *(v16 + 8))
        {
          v354 = *(v16 + 48);
          v288 = *(v16 + 16);
          v323 = *(v16 + 32);
          v260 = *v16;
          v41 = *v9;
          v42 = *(a2 - 36);
          v43 = *(a2 - 20);
          *(v16 + 48) = *(a2 - 4);
          *(v16 + 16) = v42;
          *(v16 + 32) = v43;
          *v16 = v41;
LABEL_26:
          *(a2 - 4) = v354;
          *(a2 - 36) = v288;
          *(a2 - 20) = v323;
          *v9 = v260;
        }
      }

      v44 = v12 + 52 * v15;
      v45 = v44 - 52;
      v46 = *(v44 - 44);
      v47 = *(a2 - 96);
      if (v46 >= *(v12 + 60))
      {
        if (v47 < v46)
        {
          v361 = *(v45 + 48);
          v295 = *(v45 + 16);
          v330 = *(v45 + 32);
          v267 = *v45;
          v55 = *v10;
          v56 = *(a2 - 88);
          v57 = *(a2 - 72);
          *(v45 + 48) = *(a2 - 56);
          *(v45 + 16) = v56;
          *(v45 + 32) = v57;
          *v45 = v55;
          *(a2 - 56) = v361;
          *(a2 - 88) = v295;
          *(a2 - 72) = v330;
          *v10 = v267;
          if (*(v45 + 8) < *(v12 + 60))
          {
            v58 = *(v12 + 52);
            v296 = *(v12 + 68);
            v59 = *(v12 + 84);
            v60 = *(v12 + 100);
            v61 = *(v45 + 48);
            v63 = *(v45 + 16);
            v62 = *(v45 + 32);
            *(v12 + 52) = *v45;
            *(v12 + 68) = v63;
            *(v12 + 84) = v62;
            *(v12 + 100) = v61;
            *(v45 + 16) = v296;
            *(v45 + 32) = v59;
            *(v45 + 48) = v60;
            *v45 = v58;
          }
        }
      }

      else
      {
        if (v47 < v46)
        {
          v48 = *(v12 + 52);
          v49 = *(v12 + 68);
          v50 = *(v12 + 84);
          v51 = *(v12 + 100);
          v52 = *(a2 - 56);
          v54 = *(a2 - 88);
          v53 = *(a2 - 72);
          *(v12 + 52) = *v10;
          *(v12 + 68) = v54;
          *(v12 + 84) = v53;
          *(v12 + 100) = v52;
          *(a2 - 72) = v50;
          *(a2 - 56) = v51;
          goto LABEL_38;
        }

        v70 = *(v12 + 52);
        v298 = *(v12 + 68);
        v71 = *(v12 + 84);
        v72 = *(v12 + 100);
        v73 = *(v45 + 48);
        v75 = *(v45 + 16);
        v74 = *(v45 + 32);
        *(v12 + 52) = *v45;
        *(v12 + 68) = v75;
        *(v12 + 84) = v74;
        *(v12 + 100) = v73;
        *(v45 + 16) = v298;
        *(v45 + 32) = v71;
        *(v45 + 48) = v72;
        *v45 = v70;
        if (*(a2 - 96) < *(v45 + 8))
        {
          v363 = *(v45 + 48);
          v299 = *(v45 + 16);
          v332 = *(v45 + 32);
          v269 = *v45;
          v76 = *v10;
          v77 = *(a2 - 88);
          v78 = *(a2 - 72);
          *(v45 + 48) = *(a2 - 56);
          *(v45 + 16) = v77;
          *(v45 + 32) = v78;
          *v45 = v76;
          v48 = v269;
          v49 = v299;
          *(a2 - 56) = v363;
          *(a2 - 72) = v332;
LABEL_38:
          *v10 = v48;
          *(a2 - 88) = v49;
        }
      }

      v79 = v12 + 52 * v15;
      v80 = *(v79 + 60);
      v81 = *(a2 - 148);
      if (v80 >= *(v12 + 112))
      {
        if (v81 < v80)
        {
          v364 = *(v79 + 100);
          v300 = *(v79 + 68);
          v333 = *(v79 + 84);
          v270 = *(v79 + 52);
          v89 = *v11;
          v90 = *(a2 - 140);
          v91 = *(a2 - 124);
          *(v79 + 100) = *(a2 - 108);
          *(v79 + 84) = v91;
          *(v79 + 68) = v90;
          *(v79 + 52) = v89;
          *(a2 - 108) = v364;
          *(a2 - 140) = v300;
          *(a2 - 124) = v333;
          *v11 = v270;
          if (*(v79 + 60) < *(v12 + 112))
          {
            v92 = *(v12 + 104);
            v301 = *(v12 + 120);
            v93 = *(v12 + 136);
            v94 = *(v12 + 152);
            v95 = *(v79 + 100);
            v96 = *(v79 + 84);
            v97 = *(v79 + 68);
            *(v12 + 104) = *(v79 + 52);
            *(v12 + 120) = v97;
            *(v12 + 136) = v96;
            *(v12 + 152) = v95;
            *(v79 + 68) = v301;
            *(v79 + 84) = v93;
            *(v79 + 100) = v94;
            *(v79 + 52) = v92;
          }
        }
      }

      else
      {
        if (v81 < v80)
        {
          v82 = *(v12 + 104);
          v83 = *(v12 + 120);
          v84 = *(v12 + 136);
          v85 = *(v12 + 152);
          v86 = *(a2 - 108);
          v88 = *(a2 - 140);
          v87 = *(a2 - 124);
          *(v12 + 104) = *v11;
          *(v12 + 120) = v88;
          *(v12 + 136) = v87;
          *(v12 + 152) = v86;
          *(a2 - 124) = v84;
          *(a2 - 108) = v85;
          goto LABEL_47;
        }

        v98 = *(v12 + 104);
        v302 = *(v12 + 120);
        v99 = *(v12 + 136);
        v100 = *(v12 + 152);
        v101 = *(v79 + 100);
        v102 = *(v79 + 84);
        v103 = *(v79 + 68);
        *(v12 + 104) = *(v79 + 52);
        *(v12 + 120) = v103;
        *(v12 + 136) = v102;
        *(v12 + 152) = v101;
        *(v79 + 68) = v302;
        *(v79 + 84) = v99;
        *(v79 + 100) = v100;
        *(v79 + 52) = v98;
        if (*(a2 - 148) < *(v79 + 60))
        {
          v365 = *(v79 + 100);
          v303 = *(v79 + 68);
          v334 = *(v79 + 84);
          v271 = *(v79 + 52);
          v104 = *v11;
          v105 = *(a2 - 140);
          v106 = *(a2 - 124);
          *(v79 + 100) = *(a2 - 108);
          *(v79 + 84) = v106;
          *(v79 + 68) = v105;
          *(v79 + 52) = v104;
          v82 = v271;
          v83 = v303;
          *(a2 - 108) = v365;
          *(a2 - 124) = v334;
LABEL_47:
          *v11 = v82;
          *(a2 - 140) = v83;
        }
      }

      v107 = *(v16 + 8);
      v108 = *(v79 + 60);
      if (v107 >= *(v45 + 8))
      {
        if (v108 < v107)
        {
          v367 = *(v16 + 48);
          v305 = *(v16 + 16);
          v336 = *(v16 + 32);
          v273 = *v16;
          v110 = *(v79 + 68);
          *v16 = *(v79 + 52);
          *(v16 + 16) = v110;
          *(v16 + 32) = *(v79 + 84);
          *(v16 + 48) = *(v79 + 100);
          *(v79 + 68) = v305;
          *(v79 + 84) = v336;
          *(v79 + 100) = v367;
          *(v79 + 52) = v273;
          if (*(v16 + 8) < *(v45 + 8))
          {
            v368 = *(v45 + 48);
            v306 = *(v45 + 16);
            v337 = *(v45 + 32);
            v274 = *v45;
            v111 = *(v16 + 16);
            *v45 = *v16;
            *(v45 + 16) = v111;
            *(v45 + 32) = *(v16 + 32);
            *(v45 + 48) = *(v16 + 48);
            *(v16 + 16) = v306;
            *(v16 + 32) = v337;
            *(v16 + 48) = v368;
            *v16 = v274;
          }
        }
      }

      else
      {
        if (v108 < v107)
        {
          v366 = *(v45 + 48);
          v304 = *(v45 + 16);
          v335 = *(v45 + 32);
          v272 = *v45;
          v109 = *(v79 + 68);
          *v45 = *(v79 + 52);
          *(v45 + 16) = v109;
          *(v45 + 32) = *(v79 + 84);
          *(v45 + 48) = *(v79 + 100);
          goto LABEL_56;
        }

        v369 = *(v45 + 48);
        v307 = *(v45 + 16);
        v338 = *(v45 + 32);
        v275 = *v45;
        v112 = *(v16 + 16);
        *v45 = *v16;
        *(v45 + 16) = v112;
        *(v45 + 32) = *(v16 + 32);
        *(v45 + 48) = *(v16 + 48);
        *(v16 + 16) = v307;
        *(v16 + 32) = v338;
        *(v16 + 48) = v369;
        *v16 = v275;
        if (*(v79 + 60) < *(v16 + 8))
        {
          v366 = *(v16 + 48);
          v304 = *(v16 + 16);
          v335 = *(v16 + 32);
          v272 = *v16;
          v113 = *(v79 + 68);
          *v16 = *(v79 + 52);
          *(v16 + 16) = v113;
          *(v16 + 32) = *(v79 + 84);
          *(v16 + 48) = *(v79 + 100);
LABEL_56:
          *(v79 + 68) = v304;
          *(v79 + 84) = v335;
          *(v79 + 100) = v366;
          *(v79 + 52) = v272;
        }
      }

      v370 = *(v12 + 48);
      v308 = *(v12 + 16);
      v339 = *(v12 + 32);
      v276 = *v12;
      v114 = *v16;
      v115 = *(v16 + 16);
      v116 = *(v16 + 32);
      *(v12 + 48) = *(v16 + 48);
      *(v12 + 16) = v115;
      *(v12 + 32) = v116;
      *v12 = v114;
      *(v16 + 48) = v370;
      *(v16 + 16) = v308;
      *(v16 + 32) = v339;
      *v16 = v276;
      goto LABEL_58;
    }

    v22 = *(v12 + 8);
    if (v22 >= *(v16 + 8))
    {
      if (v17 < v22)
      {
        v358 = *(v12 + 48);
        v292 = *(v12 + 16);
        v327 = *(v12 + 32);
        v264 = *v12;
        v32 = *v9;
        v33 = *(a2 - 36);
        v34 = *(a2 - 20);
        *(v12 + 48) = *(a2 - 4);
        *(v12 + 16) = v33;
        *(v12 + 32) = v34;
        *v12 = v32;
        *(a2 - 4) = v358;
        *(a2 - 36) = v292;
        *(a2 - 20) = v327;
        *v9 = v264;
        if (*(v12 + 8) < *(v16 + 8))
        {
          v359 = *(v16 + 48);
          v293 = *(v16 + 16);
          v328 = *(v16 + 32);
          v265 = *v16;
          v35 = *v12;
          v36 = *(v12 + 16);
          v37 = *(v12 + 32);
          *(v16 + 48) = *(v12 + 48);
          *(v16 + 16) = v36;
          *(v16 + 32) = v37;
          *v16 = v35;
          *(v12 + 48) = v359;
          *(v12 + 16) = v293;
          *(v12 + 32) = v328;
          *v12 = v265;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v22)
    {
      v355 = *(v16 + 48);
      v289 = *(v16 + 16);
      v324 = *(v16 + 32);
      v261 = *v16;
      v23 = *v9;
      v24 = *(a2 - 36);
      v25 = *(a2 - 20);
      *(v16 + 48) = *(a2 - 4);
      *(v16 + 16) = v24;
      *(v16 + 32) = v25;
      *v16 = v23;
LABEL_35:
      *(a2 - 4) = v355;
      *(a2 - 36) = v289;
      *(a2 - 20) = v324;
      *v9 = v261;
      goto LABEL_58;
    }

    v362 = *(v16 + 48);
    v297 = *(v16 + 16);
    v331 = *(v16 + 32);
    v268 = *v16;
    v64 = *v12;
    v65 = *(v12 + 16);
    v66 = *(v12 + 32);
    *(v16 + 48) = *(v12 + 48);
    *(v16 + 16) = v65;
    *(v16 + 32) = v66;
    *v16 = v64;
    *(v12 + 48) = v362;
    *(v12 + 16) = v297;
    *(v12 + 32) = v331;
    *v12 = v268;
    if (*(a2 - 44) < *(v12 + 8))
    {
      v355 = *(v12 + 48);
      v289 = *(v12 + 16);
      v324 = *(v12 + 32);
      v261 = *v12;
      v67 = *v9;
      v68 = *(a2 - 36);
      v69 = *(a2 - 20);
      *(v12 + 48) = *(a2 - 4);
      *(v12 + 16) = v68;
      *(v12 + 32) = v69;
      *v12 = v67;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v117 = *(v12 + 8);
LABEL_61:
      v118 = *v12;
      v257 = *(v12 + 48);
      v251 = *(v12 + 16);
      v254 = *(v12 + 32);
      v119 = v12;
      do
      {
        v120 = v119;
        v119 += 52;
      }

      while (*(v120 + 60) < v117);
      v121 = a2;
      if (v120 == v12)
      {
        v124 = a2;
        while (v119 < v124)
        {
          v122 = v124 - 52;
          v125 = *(v124 - 44);
          v124 -= 52;
          if (v125 < v117)
          {
            goto LABEL_71;
          }
        }

        v122 = v124;
      }

      else
      {
        do
        {
          v122 = v121 - 52;
          v123 = *(v121 - 44);
          v121 -= 52;
        }

        while (v123 >= v117);
      }

LABEL_71:
      v12 = v119;
      if (v119 < v122)
      {
        v126 = v122;
        do
        {
          v127 = *v12;
          v309 = *(v12 + 16);
          v128 = *(v12 + 32);
          v371 = *(v12 + 48);
          v129 = *(v126 + 48);
          v131 = *(v126 + 16);
          v130 = *(v126 + 32);
          *v12 = *v126;
          *(v12 + 16) = v131;
          *(v12 + 32) = v130;
          *(v12 + 48) = v129;
          *(v126 + 16) = v309;
          *(v126 + 32) = v128;
          *(v126 + 48) = v371;
          *v126 = v127;
          do
          {
            v132 = *(v12 + 60);
            v12 += 52;
          }

          while (v132 < v117);
          do
          {
            v133 = *(v126 - 44);
            v126 -= 52;
          }

          while (v133 >= v117);
        }

        while (v12 < v126);
      }

      if (v12 - 52 != a1)
      {
        v134 = *(v12 - 52);
        v135 = *(v12 - 36);
        v136 = *(v12 - 20);
        *(a1 + 48) = *(v12 - 4);
        *(a1 + 16) = v135;
        *(a1 + 32) = v136;
        *a1 = v134;
      }

      *(v12 - 52) = v118;
      *(v12 - 44) = v117;
      *(v12 - 4) = v257;
      *(v12 - 20) = v254;
      *(v12 - 36) = v251;
      if (v119 < v122)
      {
        goto LABEL_82;
      }

      v137 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *>(a1, v12 - 52, v251);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *>(v12, a2, v138))
      {
        a2 = v12 - 52;
        if (!v137)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v137)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *,false>(a1, v12 - 52, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v117 = *(v12 + 8);
      if (*(v12 - 44) < v117)
      {
        goto LABEL_61;
      }

      v139 = *v12;
      v258 = *(v12 + 48);
      v252 = *(v12 + 16);
      v255 = *(v12 + 32);
      if (v117 >= *(a2 - 44))
      {
        v142 = v12 + 52;
        do
        {
          v12 = v142;
          if (v142 >= a2)
          {
            break;
          }

          v143 = *(v142 + 8);
          v142 += 52;
        }

        while (v117 >= v143);
      }

      else
      {
        v140 = v12;
        do
        {
          v12 = v140 + 52;
          v141 = *(v140 + 60);
          v140 += 52;
        }

        while (v117 >= v141);
      }

      v144 = a2;
      if (v12 < a2)
      {
        v145 = a2;
        do
        {
          v144 = v145 - 52;
          v146 = *(v145 - 44);
          v145 -= 52;
        }

        while (v117 < v146);
      }

      while (v12 < v144)
      {
        v372 = *(v12 + 48);
        v310 = *(v12 + 16);
        v340 = *(v12 + 32);
        v277 = *v12;
        v147 = *v144;
        v148 = *(v144 + 16);
        v149 = *(v144 + 32);
        *(v12 + 48) = *(v144 + 48);
        *(v12 + 16) = v148;
        *(v12 + 32) = v149;
        *v12 = v147;
        *(v144 + 48) = v372;
        *(v144 + 16) = v310;
        *(v144 + 32) = v340;
        *v144 = v277;
        do
        {
          v150 = *(v12 + 60);
          v12 += 52;
        }

        while (v117 >= v150);
        do
        {
          v151 = *(v144 - 44);
          v144 -= 52;
        }

        while (v117 < v151);
      }

      if (v12 - 52 != a1)
      {
        v152 = *(v12 - 52);
        v153 = *(v12 - 36);
        v154 = *(v12 - 20);
        *(a1 + 48) = *(v12 - 4);
        *(a1 + 16) = v153;
        *(a1 + 32) = v154;
        *a1 = v152;
      }

      a4 = 0;
      *(v12 - 52) = v139;
      *(v12 - 44) = v117;
      result = v252;
      *(v12 - 4) = v258;
      *(v12 - 20) = v255;
      *(v12 - 36) = v252;
    }
  }

  v155 = *(v12 + 60);
  v156 = *(a2 - 44);
  if (v155 >= *(v12 + 8))
  {
    if (v156 >= v155)
    {
      return result;
    }

    result = *(v12 + 52);
    v316 = *(v12 + 68);
    v346 = *(v12 + 84);
    v376 = *(v12 + 100);
    v223 = *(a2 - 4);
    v225 = *(a2 - 36);
    v224 = *(a2 - 20);
    *(v12 + 52) = *v9;
    *(v12 + 68) = v225;
    *(v12 + 84) = v224;
    *(v12 + 100) = v223;
    *(a2 - 36) = v316;
    *(a2 - 20) = v346;
    *(a2 - 4) = v376;
    *v9 = result;
    goto LABEL_192;
  }

  if (v156 < v155)
  {
    goto LABEL_110;
  }

  v378 = *(v12 + 48);
  v319 = *(v12 + 16);
  v349 = *(v12 + 32);
  v285 = *v12;
  v236 = *(v12 + 68);
  *v12 = *(v12 + 52);
  *(v12 + 16) = v236;
  *(v12 + 32) = *(v12 + 84);
  *(v12 + 48) = *(v12 + 100);
  result = v285;
  *(v12 + 100) = v378;
  *(v12 + 84) = v349;
  *(v12 + 68) = v319;
  *(v12 + 52) = v285;
  if (*(a2 - 44) < *(v12 + 60))
  {
    result = *(v12 + 52);
    v160 = *(v12 + 68);
    v350 = *(v12 + 84);
    v379 = *(v12 + 100);
    v237 = *(a2 - 4);
    v239 = *(a2 - 36);
    v238 = *(a2 - 20);
    *(v12 + 52) = *v9;
    *(v12 + 68) = v239;
    *(v12 + 84) = v238;
    *(v12 + 100) = v237;
    *(a2 - 20) = v350;
    *(a2 - 4) = v379;
    goto LABEL_111;
  }

  return result;
}

void AUFlatParameterInfoBlob::V2Builder::~V2Builder(AUFlatParameterInfoBlob::V2Builder *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::shared_ptr<AUFlatParameterInfoBlob>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  if (*(a1 + 9) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return a1;
}

void std::__shared_ptr_pointer<AUFlatParameterInfoBlob  *>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

void std::__shared_ptr_pointer<AUFlatParameterInfoBlob  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 1);
  v7 = *(a3 + 1);
  if (v6 >= *(a1 + 1))
  {
    if (v7 < v6)
    {
      v14 = *(a2 + 12);
      v15 = a2[1];
      result = a2[2];
      v16 = *a2;
      v18 = a3[1];
      v17 = a3[2];
      v19 = *a3;
      *(a2 + 12) = *(a3 + 12);
      a2[1] = v18;
      a2[2] = v17;
      *a2 = v19;
      *a3 = v16;
      a3[1] = v15;
      a3[2] = result;
      *(a3 + 12) = v14;
      if (*(a2 + 1) < *(a1 + 1))
      {
        v20 = *(a1 + 12);
        v21 = a1[1];
        result = a1[2];
        v22 = *a1;
        v24 = a2[1];
        v23 = a2[2];
        v25 = *a2;
        *(a1 + 12) = *(a2 + 12);
        a1[1] = v24;
        a1[2] = v23;
        *a1 = v25;
        *a2 = v22;
        a2[1] = v21;
        a2[2] = result;
        *(a2 + 12) = v20;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 12);
      v9 = a1[1];
      result = a1[2];
      v10 = *a1;
      v12 = a3[1];
      v11 = a3[2];
      v13 = *a3;
      *(a1 + 12) = *(a3 + 12);
      a1[1] = v12;
      a1[2] = v11;
      *a1 = v13;
LABEL_9:
      *a3 = v10;
      a3[1] = v9;
      a3[2] = result;
      *(a3 + 12) = v8;
      goto LABEL_10;
    }

    v26 = *(a1 + 12);
    v27 = a1[1];
    result = a1[2];
    v28 = *a1;
    v30 = a2[1];
    v29 = a2[2];
    v31 = *a2;
    *(a1 + 12) = *(a2 + 12);
    a1[1] = v30;
    a1[2] = v29;
    *a1 = v31;
    *a2 = v28;
    a2[1] = v27;
    a2[2] = result;
    *(a2 + 12) = v26;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v8 = *(a2 + 12);
      v9 = a2[1];
      result = a2[2];
      v10 = *a2;
      v33 = a3[1];
      v32 = a3[2];
      v34 = *a3;
      *(a2 + 12) = *(a3 + 12);
      a2[1] = v33;
      a2[2] = v32;
      *a2 = v34;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 1) < *(a3 + 1))
  {
    v35 = *(a3 + 12);
    v36 = a3[1];
    result = a3[2];
    v37 = *a3;
    v39 = a4[1];
    v38 = a4[2];
    v40 = *a4;
    *(a3 + 12) = *(a4 + 12);
    a3[1] = v39;
    a3[2] = v38;
    *a3 = v40;
    *a4 = v37;
    a4[1] = v36;
    a4[2] = result;
    *(a4 + 12) = v35;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v41 = *(a2 + 12);
      v42 = a2[1];
      result = a2[2];
      v43 = *a2;
      v45 = a3[1];
      v44 = a3[2];
      v46 = *a3;
      *(a2 + 12) = *(a3 + 12);
      a2[1] = v45;
      a2[2] = v44;
      *a2 = v46;
      *a3 = v43;
      a3[1] = v42;
      a3[2] = result;
      *(a3 + 12) = v41;
      if (*(a2 + 1) < *(a1 + 1))
      {
        v47 = *(a1 + 12);
        v48 = a1[1];
        result = a1[2];
        v49 = *a1;
        v51 = a2[1];
        v50 = a2[2];
        v52 = *a2;
        *(a1 + 12) = *(a2 + 12);
        a1[1] = v51;
        a1[2] = v50;
        *a1 = v52;
        *a2 = v49;
        a2[1] = v48;
        a2[2] = result;
        *(a2 + 12) = v47;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v53 = *(a4 + 12);
    v54 = a4[1];
    result = a4[2];
    v55 = *a4;
    v57 = a5[1];
    v56 = a5[2];
    v58 = *a5;
    *(a4 + 12) = *(a5 + 12);
    a4[1] = v57;
    a4[2] = v56;
    *a4 = v58;
    *a5 = v55;
    a5[1] = v54;
    a5[2] = result;
    *(a5 + 12) = v53;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v59 = *(a3 + 12);
      v60 = a3[1];
      result = a3[2];
      v61 = *a3;
      v63 = a4[1];
      v62 = a4[2];
      v64 = *a4;
      *(a3 + 12) = *(a4 + 12);
      a3[1] = v63;
      a3[2] = v62;
      *a3 = v64;
      *a4 = v61;
      a4[1] = v60;
      a4[2] = result;
      *(a4 + 12) = v59;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v65 = *(a2 + 12);
        v66 = a2[1];
        result = a2[2];
        v67 = *a2;
        v69 = a3[1];
        v68 = a3[2];
        v70 = *a3;
        *(a2 + 12) = *(a3 + 12);
        a2[1] = v69;
        a2[2] = v68;
        *a2 = v70;
        *a3 = v67;
        a3[1] = v66;
        a3[2] = result;
        *(a3 + 12) = v65;
        if (*(a2 + 1) < *(a1 + 1))
        {
          v71 = *(a1 + 12);
          v72 = a1[1];
          result = a1[2];
          v73 = *a1;
          v75 = a2[1];
          v74 = a2[2];
          v76 = *a2;
          *(a1 + 12) = *(a2 + 12);
          a1[1] = v75;
          a1[2] = v74;
          *a1 = v76;
          *a2 = v73;
          a2[1] = v72;
          a2[2] = result;
          *(a2 + 12) = v71;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 2);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = (a2 - 52);
      v13 = *(a1 + 60);
      v14 = *(a2 - 44);
      if (v13 < *(a1 + 8))
      {
        if (v14 >= v13)
        {
          v65 = *(a1 + 48);
          v67 = *(a1 + 16);
          v66 = *(a1 + 32);
          v68 = *a1;
          v69 = *(a1 + 68);
          *a1 = *(a1 + 52);
          *(a1 + 16) = v69;
          *(a1 + 32) = *(a1 + 84);
          *(a1 + 48) = *(a1 + 100);
          *(a1 + 52) = v68;
          *(a1 + 68) = v67;
          *(a1 + 84) = v66;
          *(a1 + 100) = v65;
          if (*(a2 - 44) >= *(a1 + 60))
          {
            return 1;
          }

          v15 = *(a1 + 100);
          v16 = *(a1 + 84);
          v17 = *(a1 + 68);
          v18 = *(a1 + 52);
          v71 = *(a2 - 36);
          v70 = *(a2 - 20);
          v72 = *(a2 - 4);
          *(a1 + 52) = *v12;
          *(a1 + 100) = v72;
          *(a1 + 84) = v70;
          *(a1 + 68) = v71;
        }

        else
        {
          v15 = *(a1 + 48);
          v17 = *(a1 + 16);
          v16 = *(a1 + 32);
          v18 = *a1;
          v20 = *(a2 - 36);
          v19 = *(a2 - 20);
          v21 = *v12;
          *(a1 + 48) = *(a2 - 4);
          *(a1 + 16) = v20;
          *(a1 + 32) = v19;
          *a1 = v21;
        }

        *v12 = v18;
        *(a2 - 36) = v17;
        *(a2 - 20) = v16;
        v11 = 1;
        *(a2 - 4) = v15;
        return v11;
      }

      if (v14 >= v13)
      {
        return 1;
      }

      v39 = *(a1 + 100);
      v40 = *(a1 + 84);
      v41 = *(a1 + 68);
      v42 = *(a1 + 52);
      v44 = *(a2 - 36);
      v43 = *(a2 - 20);
      v45 = *(a2 - 4);
      *(a1 + 52) = *v12;
      *(a1 + 100) = v45;
      *(a1 + 84) = v43;
      *(a1 + 68) = v44;
      *v12 = v42;
      *(a2 - 36) = v41;
      *(a2 - 20) = v40;
      *(a2 - 4) = v39;
LABEL_50:
      if (*(a1 + 60) < *(a1 + 8))
      {
        v106 = *(a1 + 48);
        v108 = *(a1 + 16);
        v107 = *(a1 + 32);
        v109 = *a1;
        v110 = *(a1 + 68);
        *a1 = *(a1 + 52);
        *(a1 + 16) = v110;
        *(a1 + 32) = *(a1 + 84);
        *(a1 + 48) = *(a1 + 100);
        *(a1 + 52) = v109;
        *(a1 + 68) = v108;
        *(a1 + 84) = v107;
        v11 = 1;
        *(a1 + 100) = v106;
        return v11;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AUParameterCache::AUParameterCache(OpaqueAudioComponentInstance *)::$_0 &,AUFlatParameterInfoBlob::Parameter *,0>(a1, (a1 + 52), (a1 + 104), (a1 + 156), (a2 - 52), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v31 = *(a1 + 60);
    v32 = *(a1 + 8);
    v33 = *(a1 + 112);
    if (v31 >= v32)
    {
      if (v33 < v31)
      {
        v56 = *(a1 + 100);
        v57 = *(a1 + 84);
        v58 = *(a1 + 68);
        v59 = *(a1 + 52);
        *(a1 + 52) = *(a1 + 104);
        *(a1 + 68) = *(a1 + 120);
        *(a1 + 84) = *(a1 + 136);
        *(a1 + 100) = *(a1 + 152);
        *(a1 + 104) = v59;
        *(a1 + 120) = v58;
        *(a1 + 136) = v57;
        *(a1 + 152) = v56;
        if (*(a1 + 60) < v32)
        {
          v60 = *(a1 + 48);
          v62 = *(a1 + 16);
          v61 = *(a1 + 32);
          v63 = *a1;
          v64 = *(a1 + 68);
          *a1 = *(a1 + 52);
          *(a1 + 16) = v64;
          *(a1 + 32) = *(a1 + 84);
          *(a1 + 48) = *(a1 + 100);
          *(a1 + 52) = v63;
          *(a1 + 68) = v62;
          *(a1 + 84) = v61;
          *(a1 + 100) = v60;
        }
      }

      goto LABEL_47;
    }

    if (v33 >= v31)
    {
      v89 = *(a1 + 48);
      v91 = *(a1 + 16);
      v90 = *(a1 + 32);
      v92 = *a1;
      v93 = *(a1 + 68);
      *a1 = *(a1 + 52);
      *(a1 + 16) = v93;
      *(a1 + 32) = *(a1 + 84);
      *(a1 + 48) = *(a1 + 100);
      *(a1 + 52) = v92;
      *(a1 + 68) = v91;
      *(a1 + 84) = v90;
      *(a1 + 100) = v89;
      if (v33 >= *(a1 + 60))
      {
        goto LABEL_47;
      }

      v34 = *(a1 + 100);
      v35 = *(a1 + 84);
      v36 = *(a1 + 68);
      v37 = *(a1 + 52);
      *(a1 + 52) = *(a1 + 104);
      *(a1 + 68) = *(a1 + 120);
      *(a1 + 84) = *(a1 + 136);
      *(a1 + 100) = *(a1 + 152);
    }

    else
    {
      v34 = *(a1 + 48);
      v36 = *(a1 + 16);
      v35 = *(a1 + 32);
      v37 = *a1;
      v38 = *(a1 + 120);
      *a1 = *(a1 + 104);
      *(a1 + 16) = v38;
      *(a1 + 32) = *(a1 + 136);
      *(a1 + 48) = *(a1 + 152);
    }

    *(a1 + 104) = v37;
    *(a1 + 120) = v36;
    *(a1 + 136) = v35;
    *(a1 + 152) = v34;
LABEL_47:
    if (*(a2 - 44) >= *(a1 + 112))
    {
      return 1;
    }

    v94 = a2 - 52;
    v95 = *(a1 + 152);
    v96 = *(a1 + 136);
    v97 = *(a1 + 120);
    v98 = *(a1 + 104);
    v100 = *(a2 - 36);
    v99 = *(a2 - 20);
    v101 = *(a2 - 4);
    *(a1 + 104) = *(a2 - 52);
    *(a1 + 152) = v101;
    *(a1 + 136) = v99;
    *(a1 + 120) = v100;
    *v94 = v98;
    *(v94 + 16) = v97;
    *(v94 + 32) = v96;
    *(v94 + 48) = v95;
    if (*(a1 + 112) >= *(a1 + 60))
    {
      return 1;
    }

    v102 = *(a1 + 100);
    v103 = *(a1 + 84);
    v104 = *(a1 + 68);
    v105 = *(a1 + 52);
    *(a1 + 52) = *(a1 + 104);
    *(a1 + 68) = *(a1 + 120);
    *(a1 + 84) = *(a1 + 136);
    *(a1 + 100) = *(a1 + 152);
    *(a1 + 104) = v105;
    *(a1 + 120) = v104;
    *(a1 + 136) = v103;
    *(a1 + 152) = v102;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 44) < *(a1 + 8))
    {
      v4 = *(a1 + 48);
      v6 = *(a1 + 16);
      v5 = *(a1 + 32);
      v7 = *a1;
      v8 = *(a2 - 36);
      v9 = *(a2 - 20);
      v10 = *(a2 - 52);
      *(a1 + 48) = *(a2 - 4);
      *(a1 + 16) = v8;
      *(a1 + 32) = v9;
      *a1 = v10;
      *(a2 - 52) = v7;
      *(a2 - 36) = v6;
      *(a2 - 20) = v5;
      v11 = 1;
      *(a2 - 4) = v4;
      return v11;
    }

    return 1;
  }

LABEL_13:
  v22 = a1 + 104;
  v23 = *(a1 + 60);
  v24 = *(a1 + 8);
  v25 = *(a1 + 112);
  if (v23 >= v24)
  {
    if (v25 < v23)
    {
      v46 = *(a1 + 100);
      v47 = *(a1 + 84);
      v48 = *(a1 + 52);
      v49 = *(a1 + 120);
      *(a1 + 52) = *v22;
      v50 = *(a1 + 68);
      *(a1 + 68) = v49;
      *(a1 + 84) = *(a1 + 136);
      *(a1 + 100) = *(a1 + 152);
      *v22 = v48;
      *(a1 + 120) = v50;
      *(a1 + 136) = v47;
      *(a1 + 152) = v46;
      if (*(a1 + 60) < v24)
      {
        v51 = *(a1 + 48);
        v53 = *(a1 + 16);
        v52 = *(a1 + 32);
        v54 = *a1;
        v55 = *(a1 + 68);
        *a1 = *(a1 + 52);
        *(a1 + 16) = v55;
        *(a1 + 32) = *(a1 + 84);
        *(a1 + 48) = *(a1 + 100);
        *(a1 + 52) = v54;
        *(a1 + 68) = v53;
        *(a1 + 84) = v52;
        *(a1 + 100) = v51;
      }
    }
  }

  else
  {
    if (v25 >= v23)
    {
      v73 = *(a1 + 48);
      v75 = *(a1 + 16);
      v74 = *(a1 + 32);
      v76 = *a1;
      v77 = *(a1 + 68);
      *a1 = *(a1 + 52);
      *(a1 + 16) = v77;
      *(a1 + 32) = *(a1 + 84);
      *(a1 + 48) = *(a1 + 100);
      *(a1 + 52) = v76;
      *(a1 + 68) = v75;
      *(a1 + 84) = v74;
      *(a1 + 100) = v73;
      if (v25 >= *(a1 + 60))
      {
        goto LABEL_33;
      }

      v26 = *(a1 + 100);
      v27 = *(a1 + 84);
      v78 = *(a1 + 52);
      v79 = *(a1 + 120);
      *(a1 + 52) = *v22;
      v80 = *(a1 + 68);
      *(a1 + 68) = v79;
      *(a1 + 84) = *(a1 + 136);
      *(a1 + 100) = *(a1 + 152);
      *v22 = v78;
      *(a1 + 120) = v80;
    }

    else
    {
      v26 = *(a1 + 48);
      v28 = *(a1 + 16);
      v27 = *(a1 + 32);
      v29 = *a1;
      v30 = *(a1 + 120);
      *a1 = *v22;
      *(a1 + 16) = v30;
      *(a1 + 32) = *(a1 + 136);
      *(a1 + 48) = *(a1 + 152);
      *v22 = v29;
      *(a1 + 120) = v28;
    }

    *(a1 + 136) = v27;
    *(a1 + 152) = v26;
  }

LABEL_33:
  v81 = a1 + 156;
  if (a1 + 156 == a2)
  {
    return 1;
  }

  v82 = 0;
  v83 = 0;
  while (1)
  {
    v84 = *(v81 + 8);
    if (v84 < *(v22 + 8))
    {
      v85 = *v81;
      v112 = *(v81 + 16);
      v113 = *(v81 + 32);
      v114 = *(v81 + 48);
      v86 = v82;
      while (1)
      {
        v87 = a1 + v86;
        *(v87 + 156) = *(a1 + v86 + 104);
        *(v87 + 172) = *(a1 + v86 + 120);
        *(v87 + 188) = *(a1 + v86 + 136);
        *(v87 + 204) = *(a1 + v86 + 152);
        if (v86 == -104)
        {
          break;
        }

        v86 -= 52;
        if (v84 >= *(v87 + 60))
        {
          v88 = a1 + v86 + 156;
          goto LABEL_41;
        }
      }

      v88 = a1;
LABEL_41:
      *v88 = v85;
      *(v88 + 8) = v84;
      *(v88 + 16) = v112;
      *(v88 + 32) = v113;
      *(v88 + 48) = v114;
      if (++v83 == 8)
      {
        return v81 + 52 == a2;
      }
    }

    v22 = v81;
    v82 += 52;
    v81 += 52;
    if (v81 == a2)
    {
      return 1;
    }
  }
}

uint64_t AUFlatParameterInfoBlob::V2Builder::stringOffset(AUFlatParameterInfoBlob::V2Builder *this, id *a2)
{
  if (!*a2 || (*(this + 16) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  v6 = [*(this + 1) objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v3 = [v6 intValue];
  }

  else
  {
    v3 = (*(this + 34) - *(this + 32));
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [*(this + 1) setObject:v8 forKeyedSubscript:v5];

    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__p, *a2);
    if (v22 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = *(this + 17);
    v11 = strlen(v9) + 1;
    if (v11 >= 1)
    {
      v12 = *(this + 18);
      if (v12 - v10 >= v11)
      {
        if (v9 != (v9 + v11))
        {
          do
          {
            v18 = *v9;
            v9 = (v9 + 1);
            *v10++ = v18;
            --v11;
          }

          while (v11);
        }

        *(this + 17) = v10;
      }

      else
      {
        v13 = *(this + 16);
        v14 = (v10 - v13);
        v15 = v10 - v13 + v11;
        if (v15 < 0)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v16 = v12 - v13;
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          operator new();
        }

        memcpy(v14, v9, v11);
        *(this + 17) = v10;
        memcpy(0, v13, v10 - v13);
        *(this + 16) = 0;
        *(this + 17) = &v14[v11];
        *(this + 18) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

void sub_18F8D2668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);

  _Unwind_Resume(a1);
}

uint64_t caulk::expected<AU::Property::Attributes::details::AUParameterInfoValue<1021u>::Wrapper,int>::~expected(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }
  }

  return a1;
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *AU::Property::Attributes::details::AUParameterInfoValue<1021u>::raw_to_get(AudioUnitParameterInfo const&)::{lambda(__CFString const*)#1}::operator()(void *result, char a2, CFTypeRef cf)
{
  v4 = result;
  if ((a2 & 0x10) != 0)
  {
    *result = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      result = CFStringGetTypeID();
      if (v7 != result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }
  }

  else if (cf)
  {
    CFRetain(cf);
    *v4 = cf;
    v5 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v5 != result)
    {
      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "Could not construct");
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_18F8D28A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AU::Property::Attributes::details::AUParameterInfoValue<1021u>::Wrapper::~Wrapper(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void ParameterListPropertyListener(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 8))(a2);
    if (v3)
    {
      os_unfair_lock_lock(v3 + 14);
      AUParameterCache::create(&v4, a2);
    }
  }
}

AUParameterCache **std::unique_ptr<AUParameterCache>::~unique_ptr[abi:ne200100](AUParameterCache **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AUParameterCache::~AUParameterCache(v2);
    MEMORY[0x193ADF220]();
  }

  return a1;
}

void AUParameterCache::~AUParameterCache(AUParameterCache *this)
{
  caulk::concurrent::lf_read_synchronized_write<std::shared_ptr<AUFlatParameterInfoBlob>>::~lf_read_synchronized_write(this + 24);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

AUParameterCache *std::__shared_ptr_pointer<AUParameterCache *,std::shared_ptr<AUParameterCache>::__shared_ptr_default_delete<AUParameterCache,AUParameterCache>,std::allocator<AUParameterCache>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AUParameterCache::~AUParameterCache(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::__shared_ptr_pointer<AUParameterCache *,std::shared_ptr<AUParameterCache>::__shared_ptr_default_delete<AUParameterCache,AUParameterCache>,std::allocator<AUParameterCache>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void XAUParameter::GetParamProxy(XAUParameter *this, void *a2)
{
  v3 = *a2;
  if (!*a2 || (v5 = (*(*v3 + 8))(*a2)) == 0)
  {
    v9 = 0;
    v10 = -2147450879;
    goto LABEL_26;
  }

  v6 = v5;
  os_unfair_lock_lock(v5 + 14);
  v8 = *&v6[16]._os_unfair_lock_opaque;
  v7 = *&v6[18]._os_unfair_lock_opaque;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    AUParameterCache::create(&v29, v3);
  }

  os_unfair_lock_unlock(v6 + 14);
  v9 = v7;
  v11 = *(a2 + 2);
  v12 = *(a2 + 12);
  v13 = caulk::concurrent::details::lf_read_sync_write_impl::begin_access((v8 + 24));
  if ((*(v8 + v13 + 32) & 1) == 0)
  {
    __break(1u);
    return;
  }

  v14 = *(v8 + 16 * v13 + 40);
  v28 = *(v8 + 16 * v13 + 40);
  v15 = *(v8 + 16 * v13 + 48);
  if (*(&v14 + 1))
  {
    atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  caulk::concurrent::details::lf_read_sync_write_impl::end_access((v8 + 24));
  v16 = *(v28 + 40);
  v17 = v16;
  if (!v16)
  {
    goto LABEL_23;
  }

  v18 = vand_s8(v12, 0x1FFFFFFF00000007);
  v19.i64[0] = v18.u32[0];
  v19.i64[1] = v18.u32[1];
  v20 = vshlq_u64(v19, xmmword_18F901CF0);
  v21 = vorrq_s8(vdupq_laneq_s64(v20, 1), v20).u64[0] & 0xE000000000000000 | v11;
  v22 = v28 + (v16 >> 32);
  v23 = v22 + 52 * v16;
  do
  {
    v24 = v17 >> 1;
    v25 = v22 + 52 * (v17 >> 1);
    v26 = *(v25 + 8);
    v27 = v25 + 52;
    v17 += ~(v17 >> 1);
    if (v26 < v21)
    {
      v22 = v27;
    }

    else
    {
      v17 = v24;
    }
  }

  while (v17);
  if (v22 == v23 || *(v22 + 8) != v21)
  {
LABEL_23:
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v10 = -10878;
LABEL_26:
    *this = v10;
    *(this + 32) = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    *this = v28;
    *(this + 1) = v22;
    *(this + 2) = v28;
    *(this + 3) = v15;
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    *(this + 32) = 1;
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    if (!v7)
    {
      return;
    }

    goto LABEL_27;
  }

  *this = v28;
  *(this + 1) = v22;
  *(this + 2) = v28;
  *(this + 3) = 0;
  *(this + 32) = 1;
  if (v7)
  {
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_18F8D3974(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  os_unfair_lock_unlock(v2 + 14);
  _Unwind_Resume(a1);
}

void *DSPGraph::DenormalEliminatorBox::process(DSPGraph::DenormalEliminatorBox *this, unsigned int a2)
{
  if ((*(*this + 48))(this))
  {
    v4 = *(this + 8);
    if (*(this + 9) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v47, "in");
      v41 = (this + 32);
      if (*(this + 55) < 0)
      {
        v41 = *v41;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v40, v41, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v5 = (*(*v4 + 40))(v4);
    v6 = *(this + 11);
    if (*(this + 12) == v6)
    {
      std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v47, "out");
      v45 = (this + 32);
      if (*(this + 55) < 0)
      {
        v45 = *v45;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v44, v45, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v7 = *(v5 + 56);
    v8 = (*(*v6 + 40))(v6);
    DSPGraph::SimpleABL::copy((v7 + 80), (*(v8 + 56) + 80), 1);
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
    v10 = *(this + 11);
    if (*(this + 12) == v10)
    {
      std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v47, "out");
      v43 = (this + 32);
      if (*(this + 55) < 0)
      {
        v43 = *v43;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v42, v43, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v11 = **(*((*(*v10 + 40))(v10) + 56) + 80);
    if (v11)
    {
      v12 = 16;
      do
      {
        v46 = 0;
        v13 = *(this + 8);
        if (*(this + 9) == v13)
        {
          std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v47, "in");
          v33 = (this + 32);
          if (*(this + 55) < 0)
          {
            v33 = *v33;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v32, v33, (*(this + 9) - *(this + 8)) >> 5, 0);
        }

        v14 = (*(*v13 + 40))(v13);
        v15 = *(this + 11);
        if (*(this + 12) == v15)
        {
          std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v47, "out");
          v35 = (this + 32);
          if (*(this + 55) < 0)
          {
            v35 = *v35;
          }

          DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v34, v35, (*(this + 12) - *(this + 11)) >> 5, 0);
        }

        v16 = *(*(*(v14 + 56) + 80) + v12);
        v17 = (*(*v15 + 40))(v15);
        MEMORY[0x193AE0870](v16, 1, &v46, *(*(*(v17 + 56) + 80) + v12), 1, a2);
        v12 += 16;
        --v11;
      }

      while (v11);
    }

    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
  }

  v18 = *(this + 8);
  if (*(this + 9) == v18)
  {
    std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v47, "in");
    v37 = (this + 32);
    if (*(this + 55) < 0)
    {
      v37 = *v37;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v36, v37, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v19 = (*(*v18 + 40))(v18);
  v20 = *(this + 8);
  if (*(this + 9) == v20)
  {
    std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v47, "in");
    v39 = (this + 32);
    if (*(this + 55) < 0)
    {
      v39 = *v39;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v38, v39, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v21 = *(*(v19 + 56) + 72);
  result = (*(*v20 + 40))(v20);
  v24 = *(this + 11);
  v23 = *(this + 12);
  if (v24 != v23)
  {
    v25 = result[7];
    result = v24;
    v26 = v24;
    do
    {
      v27 = *v26;
      v26 += 4;
      v28 = *((*(v27 + 40))(result) + 56);
      v29 = *(v25 + 56);
      v30 = *(v25 + 40);
      v31 = *(v25 + 24);
      *(v28 + 8) = *(v25 + 8);
      *(v28 + 24) = v31;
      *(v28 + 40) = v30;
      *(v28 + 56) = v29;
      *(v28 + 72) = v21;
      v24 += 32;
      result = v26;
    }

    while (v26 != v23);
  }

  return result;
}

double DSPGraph::DenormalEliminatorBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.02437133e175;
  *a1 = xmmword_18F901B60;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::DenormalEliminatorBox::~DenormalEliminatorBox(DSPGraph::DenormalEliminatorBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t MP4BoxParser_MovieExtends::Init(MP4BoxParser_MovieExtends *this)
{
  result = MP4BoxParser::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1836475768)
    {
      if (*(this + 56) == 1)
      {
        operator new();
      }

      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_MovieExtends::~MP4BoxParser_MovieExtends(MP4BoxParser_MovieExtends *this)
{
  MP4BoxParser_MovieExtends::~MP4BoxParser_MovieExtends(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = off_1F033DE60;
  if (*(this + 56) == 1)
  {
    v2 = *(this + 8);
    if (v2)
    {
      std::__list_imp<MP4BoxInfo>::clear(*(this + 8));
      MEMORY[0x193ADF220](v2, 0x1020C4062D53EE8);
    }
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void MP4BoxParser_MovieExtends::MP4BoxParser_MovieExtends(MP4BoxParser_MovieExtends *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = off_1F033DE60;
  *(this + 56) = 1;
  *(this + 8) = 0;
}

uint64_t MP4BoxParser_MovieExtends::GetOverallDurationIncludingFragments(MP4BoxParser_MovieExtends *this, unint64_t *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2 || (v3 = a2[1], v3 == a2))
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  while (*(v3 + 16) != 1835362404)
  {
    v3 = *(v3 + 8);
    if (v3 == a2)
    {
      goto LABEL_9;
    }
  }

  v5 = *(v3 + 32);
  v10 = &unk_1F0330650;
  (*(*this + 88))(&v11);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 8;
  v10 = off_1F032C0D8;
  v17 = 0;
  if (MP4BoxParser_MovieExtendsHeader::Init(&v10))
  {
    v6 = v11;
    v10 = &unk_1F0330650;
    v11 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    goto LABEL_9;
  }

  v9 = v11;
  *a3 = v17;
  v10 = &unk_1F0330650;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = 1;
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8D4544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void MP4BoxParser_MovieExtends::GetTrackFragmentDefaultsMap(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_58;
  }

  v4 = &v36;
  v36 = 0;
  v37 = 0;
  v35 = &v36;
  v5 = *(v2 + 8);
  if (v5 == v2)
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v10 = v7;
    v7 = v8;
    while (*(v5 + 16) != 1953654136)
    {
LABEL_8:
      v5 = *(v5 + 8);
      if (v5 == v2)
      {
        goto LABEL_22;
      }
    }

    if (v9 != v10)
    {
      ++v9;
      goto LABEL_8;
    }

    v11 = *(a1 + 8);
    v12 = *(v5 + 32);
    v38 = &unk_1F0330650;
    (*(*v11 + 88))(&v39);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 8;
    v38 = &unk_1F0326330;
    v45 = 0;
    v46 = -1;
    v47 = -1;
    if (!MP4BoxParser_TrackExtends::Init(&v38))
    {
      v13 = v36;
      v34 = v4;
      if (!v36)
      {
LABEL_17:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 7);
          if (v45 >= v15)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_17;
          }
        }

        if (v15 >= v45)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_17;
        }
      }

      v4 = v34;
    }

    v16 = v39;
    v38 = &unk_1F0330650;
    v39 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v2 = *(a1 + 64);
    v8 = v7 + 1;
    v5 = *(v2 + 8);
  }

  while (v5 != v2);
LABEL_22:
  if (&v35 != a2 && v37)
  {
    v17 = v35;
    if (*(a2 + 16))
    {
      v18 = *a2;
      v20 = (a2 + 8);
      v19 = *(a2 + 8);
      *a2 = a2 + 8;
      *(v19 + 16) = 0;
      *(a2 + 16) = 0;
      *(a2 + 8) = 0;
      if (v18[1])
      {
        v21 = v18[1];
      }

      else
      {
        v21 = v18;
      }

      if (!v21)
      {
        v31 = 0;
        goto LABEL_54;
      }

      v22 = std::__tree<AUObserverController::AddressOriginator>::_DetachedTreeCache::__detach_next(v21);
      if (v17 == v4)
      {
        v24 = v21;
      }

      else
      {
        v23 = v17;
        do
        {
          v24 = v22;
          v25 = *(v23 + 7);
          *(v21 + 28) = v25;
          *(v21 + 32) = *(v23 + 2);
          v26 = *v20;
          v27 = (a2 + 8);
          v28 = (a2 + 8);
          if (*v20)
          {
            do
            {
              while (1)
              {
                v27 = v26;
                if (v25 >= *(v26 + 7))
                {
                  break;
                }

                v26 = *v26;
                v28 = v27;
                if (!*v27)
                {
                  goto LABEL_37;
                }
              }

              v26 = v26[1];
            }

            while (v26);
            v28 = v27 + 1;
          }

LABEL_37:
          if (v22)
          {
            v22 = std::__tree<AUObserverController::AddressOriginator>::_DetachedTreeCache::__detach_next(v22);
          }

          else
          {
            v22 = 0;
          }

          v29 = v23[1];
          if (v29)
          {
            do
            {
              v17 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v17 = v23[2];
              v30 = *v17 == v23;
              v23 = v17;
            }

            while (!v30);
          }

          if (!v24)
          {
            break;
          }

          v21 = v24;
          v23 = v17;
        }

        while (v17 != v4);
      }

      if (v22)
      {
        for (i = v22[2]; i; i = i[2])
        {
          v22 = i;
        }

        v31 = v22;
LABEL_54:
      }
    }

    if (v17 != v4)
    {
      operator new();
    }
  }

LABEL_58:
  v33 = *MEMORY[0x1E69E9840];
}

void sub_18F8D4A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(a1);
}

void AudioComponentRegistrationInfo::parseInfoPlistArray(int a1, uint64_t a2, CFArrayRef *a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  Count = CFArrayGetCount(*a3);
  if (Count >= 1)
  {
    v7 = 0;
    v8 = Count & 0x7FFFFFFF;
    while (1)
    {
      if (!*a3)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(v24);
      }

      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&cf, *a3, v7);
      if (v44 != 1)
      {
        goto LABEL_23;
      }

      v9 = cf;
      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      if (Get4CCOrNumber(cf, @"type", &v39, &v35))
      {
        if (Get4CCOrNumber(v9, @"subtype", &v40, &v35))
        {
          if (Get4CCOrNumber(v9, @"manufacturer", &v41, &v35))
          {
            if (GetString(v9, @"name", &v38, &v35))
            {
              if (GetNumber(v9, @"version", &v34, &v35))
              {
                String = GetString(v9, @"class", &v36, &v35);
                if ((String | ((a1 & 4) >> 2) | GetString(v9, @"factoryFunction", &v37, &v35)) == 1)
                {
                  break;
                }
              }
            }
          }
        }
      }

      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v14 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = "AudioComponentRegistrationInfo.cpp";
        v46 = 1024;
        v47 = 196;
        v48 = 2112;
        v49 = a2;
        v50 = 2112;
        v51 = v35;
        v52 = 2112;
        v53 = v9;
        _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@: trouble parsing Info.plist's AudioComponents, key %@; entry: %@", buf, 0x30u);
      }

LABEL_21:
      if (cf)
      {
        CFRelease(cf);
      }

LABEL_23:
      if (v8 == ++v7)
      {
        goto LABEL_50;
      }
    }

    GetNumber(v9, @"flags", v42, &v35);
    Value = CFDictionaryGetValue(v9, @"sandboxSafe");
    v12 = Value;
    if (Value)
    {
      v13 = CFGetTypeID(Value);
      if (v13 == CFBooleanGetTypeID())
      {
        if (!CFBooleanGetValue(v12))
        {
          goto LABEL_28;
        }

LABEL_27:
        v42[0] |= 2u;
        goto LABEL_28;
      }

      v16 = CFGetTypeID(v12);
      if (v16 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v12, kCFNumberSInt32Type, buf);
        if (*buf)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_28:
    v42[1] = 0;
    v32 = 0;
    v33 = 0;
    if (v37)
    {
      applesauce::CF::StringRef::from_get(buf, v37);
      v33 = *buf;
    }

    if (v36)
    {
      applesauce::CF::StringRef::from_get(buf, v36);
      v17 = *buf;
      v32 = *buf;
      v18 = 20;
    }

    else
    {
      v17 = 0;
      v18 = a1;
    }

    v27 = v18;
    if (!v9)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not construct");
    }

    v19 = applesauce::CF::details::at_key<__CFString const*>(v9, @"tags");
    if (v19)
    {
      v20 = v19;
      CFRetain(v19);
      v21 = CFGetTypeID(v20);
      if (v21 == CFArrayGetTypeID())
      {
        CFRetain(v20);
        v31 = v20;
        CFRelease(v20);
        goto LABEL_39;
      }

      CFRelease(v20);
    }

    v20 = 0;
    v31 = 0;
LABEL_39:
    applesauce::CF::StringRef::from_get(&v30, v38);
    AudioComponentRegistrationInfo::AudioComponentRegistrationInfo(buf, &v39, v27, &v30, v34, &v33, &v32, &v31);
    if (v30)
    {
      CFRelease(v30);
    }

    v22 = *(a4 + 24);
    if (!v22)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v22 + 48))(v22, buf);
    AudioComponentRegistrationInfo::~AudioComponentRegistrationInfo(buf);
    if (v20)
    {
      CFRelease(v20);
      v17 = v32;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if ((v44 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_50:
  v23 = *MEMORY[0x1E69E9840];
}