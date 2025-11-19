void sub_1DE33F148(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 64);
  if (v3)
  {
    *(v1 - 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE33F2F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef AHAL_DSP::ArrayDeepImmutableCopy(AHAL_DSP *this, const __CFArray *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(this);
  if (Count)
  {
    v4 = Count;
    MEMORY[0x1EEE9AC00](Count);
    v6 = (&callBacks - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v5 >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = v5;
    }

    bzero(&callBacks - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v4 < 1)
    {
      v9 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(this, v8);
        v12 = AHAL_DSP::PropertyListDeepImmutableCopy(ValueAtIndex, v11);
        v6[v9] = v12;
        if (v12)
        {
          ++v9;
        }

        ++v8;
      }

      while (v4 != v8);
    }

    v17 = *(MEMORY[0x1E695E9C8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9C8];
    *&callBacks.release = v17;
    callBacks.equal = *(MEMORY[0x1E695E9C8] + 32);
    callBacks.retain = 0;
    result = CFArrayCreate(*MEMORY[0x1E695E478], v6, v9, &callBacks);
    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];
    v14 = *MEMORY[0x1E695E478];
    v15 = MEMORY[0x1E695E9C8];

    return CFArrayCreate(v14, 0, 0, v15);
  }

  return result;
}

CFDictionaryRef AHAL_DSP::DictionaryDeepImmutableCopy(AHAL_DSP *this, const __CFDictionary *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(this);
  if (Count)
  {
    v4 = Count;
    v5 = 8 * Count;
    MEMORY[0x1EEE9AC00](Count);
    v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    v7 = (&valueCallBacks - v6);
    if (v5 >= 0x200)
    {
      v8 = 512;
    }

    else
    {
      v8 = v5;
    }

    bzero(&valueCallBacks - v6, v8);
    MEMORY[0x1EEE9AC00](v9);
    v10 = (&valueCallBacks - v6);
    bzero(&valueCallBacks - v6, v8);
    MEMORY[0x1EEE9AC00](v11);
    bzero(&valueCallBacks - v6, v8);
    MEMORY[0x1EEE9AC00](v12);
    bzero(&valueCallBacks - v6, v8);
    CFDictionaryGetKeysAndValues(this, (&valueCallBacks - v6), (&valueCallBacks - v6));
    if (v4 < 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *v7++;
        v16 = AHAL_DSP::PropertyListDeepImmutableCopy(v15, v13);
        *(&valueCallBacks.version + 8 * v14 - v6) = v16;
        v17 = *v10++;
        v19 = AHAL_DSP::PropertyListDeepImmutableCopy(v17, v18);
        *(&valueCallBacks.version + 8 * v14 - v6) = v19;
        if (v16)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          ++v14;
        }

        --v4;
      }

      while (v4);
    }

    v26 = *(MEMORY[0x1E695E9E0] + 16);
    *&keyCallBacks.version = *MEMORY[0x1E695E9E0];
    *&keyCallBacks.release = v26;
    *&keyCallBacks.equal = *(MEMORY[0x1E695E9E0] + 32);
    v27 = *(MEMORY[0x1E695E9F0] + 16);
    *&valueCallBacks.version = *MEMORY[0x1E695E9F0];
    *&valueCallBacks.release = v27;
    v28 = *(MEMORY[0x1E695E9F0] + 32);
    keyCallBacks.retain = 0;
    valueCallBacks.equal = v28;
    valueCallBacks.retain = 0;
    result = CFDictionaryCreate(*MEMORY[0x1E695E478], (&valueCallBacks - v6), (&valueCallBacks - v6), v14, &keyCallBacks, &valueCallBacks);
    v29 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v21 = *MEMORY[0x1E69E9840];
    v22 = *MEMORY[0x1E695E478];
    v23 = MEMORY[0x1E695E9E0];
    v24 = MEMORY[0x1E695E9F0];

    return CFDictionaryCreate(v22, 0, 0, 0, v23, v24);
  }

  return result;
}

void AHAL_DSP::ADMDict_ConfigurationChangeRequest::~ADMDict_ConfigurationChangeRequest(id **this)
{
  AHAL_DSP::ADMDict_ConfigurationChangeRequest::~ADMDict_ConfigurationChangeRequest(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5967460;
  std::unique_ptr<ADM_SPI::AudioDSPManagerPropertySet::InternalData>::reset[abi:ne200100](this + 10, 0);
  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void AHAL_DSP::ADMDict_ConfigurationChangeRequest::ADMDict_ConfigurationChangeRequest(AHAL_DSP::ADMDict_ConfigurationChangeRequest *this)
{
  *this = &unk_1F5967460;
  *(this + 10) = 0;
  *(this + 4) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  operator new();
}

void sub_1DE33F854(_Unwind_Exception *a1)
{
  v3 = v2;
  std::unique_ptr<ADM_SPI::AudioDSPManagerPropertySet::InternalData>::reset[abi:ne200100](v3, 0);
  v5 = v1[9];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[7];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v1[5];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Unwind_Resume(a1);
}

void AHAL_DSP::ADMDict_ConfigurationChangeRequest::build_dictionary(AHAL_DSP::ADMDict_ConfigurationChangeRequest *this, void ***a2)
{
  v68 = this;
  v85 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF98]);
  v72 = a2;
  v4 = a2[10];
  a2 += 10;
  v5 = *v4;
  *v4 = v3;

  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a2 - 71)];
  [**a2 setObject:v6 forKeyedSubscript:@"is activation"];

  AHAL_DSP::ADMDict_ConfigurationChangeRequest::add_devices_and_streams(v72);
  v7 = *(v72 + 5);
  if (v7 && (v70 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = *(v72 + 4);
  }

  else
  {
    v70 = 0;
    v8 = 0;
  }

  v71 = objc_alloc_init(MEMORY[0x1E695DF98]);
  (*(*v8 + 64))(&__p, v8);
  if (v79 == 1)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF98]);
    (*(*v8 + 64))(&__p, v8);
    AHAL_DSP::util_fill_format(&__p, v9, v10);
    [v71 setObject:v9 forKeyedSubscript:@"io context input format"];
  }

  (*(*v8 + 72))(&__p, v8);
  if (v79 == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF98]);
    (*(*v8 + 72))(&__p, v8);
    AHAL_DSP::util_fill_format(&__p, v11, v12);
    [v71 setObject:v11 forKeyedSubscript:@"io context output format"];
  }

  v74 = objc_alloc_init(MEMORY[0x1E695DF78]);
  v77[0] = 0;
  v77[1] = 0;
  v76 = v77;
  v13 = *(v72 + 7);
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = *(v72 + 6);
      if (v16)
      {
        if (AHAL_DSP::ProcessPropertySetConfiguration::get_vocal_isolation_type(*(v72 + 6)) == 0x100000002)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "voice isolation");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v76, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        voice_activity_detection_enabled = AHAL_DSP::ProcessPropertySetConfiguration::get_voice_activity_detection_enabled(v16);
        if (voice_activity_detection_enabled >= 0x100u && (voice_activity_detection_enabled & 1) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "voice activity detection");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v76, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v18 = v76;
  if (v76 != v77)
  {
    do
    {
      if (*(v18 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v18[4], v18[5]);
      }

      else
      {
        __p = *(v18 + 4);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (p_p)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v21 = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
        cf.__r_.__value_.__r.__words[0] = v21;
        if (!v21)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v21 = 0;
        cf.__r_.__value_.__r.__words[0] = 0;
      }

      v22 = v21;
      [v74 addObject:v22];

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v23 = v18[1];
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
          v24 = v18[2];
          v25 = *v24 == v18;
          v18 = v24;
        }

        while (!v25);
      }

      v18 = v24;
    }

    while (v24 != v77);
  }

  v26 = (*(*v8 + 56))(v8);
  if ((v26 & 0x100000000) != 0)
  {
    LODWORD(cf.__r_.__value_.__l.__data_) = v26;
    v27 = CFNumberCreate(0, kCFNumberIntType, &cf);
    __p.__r_.__value_.__r.__words[0] = v27;
    if (!v27)
    {
      v67 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v67, "Could not construct");
      __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    [v71 setObject:v27 forKeyedSubscript:@"isolated audio use case id"];
    if (__p.__r_.__value_.__r.__words[0])
    {
      CFRelease(__p.__r_.__value_.__l.__data_);
    }

    [v74 addObject:{@"isolated audio", v68}];
  }

  v28 = *(v72 + 8);
  if (v28)
  {
    v29 = *(v28 + 2);
    if (v29)
    {
      if (CFDictionaryGetCount(v29) && !AHAL_DSP::OffloadDictionary::has_all_id(v28))
      {
        [v71 setObject:*(*(v72 + 8) + 16) forKeyedSubscript:@"dsp offload description"];
        [v74 addObject:@"dsp offload"];
      }
    }
  }

  [v71 setObject:v74 forKeyedSubscript:{@"io context semantic list", v68}];
  v30 = *(v72 + 3);
  if (v30 && (v31 = std::__shared_weak_count::lock(v30)) != 0)
  {
    v32 = v31;
    v33 = *(v72 + 2);
    if (v33)
    {
      v34 = (*(*v33 + 64))(*(v72 + 2));
      goto LABEL_60;
    }
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v34 = 0;
LABEL_60:
  LODWORD(cf.__r_.__value_.__l.__data_) = v34;
  v35 = CFNumberCreate(0, kCFNumberIntType, &cf);
  __p.__r_.__value_.__r.__words[0] = v35;
  v73 = v32;
  if (!v35)
  {
    v66 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v66, "Could not construct");
    __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  [v71 setObject:v35 forKeyedSubscript:@"io context buffer size"];
  if (__p.__r_.__value_.__r.__words[0])
  {
    CFRelease(__p.__r_.__value_.__l.__data_);
  }

  v36 = objc_alloc_init(MEMORY[0x1E695DF78]);
  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
  __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
  (*(*v33 + 72))(&cf, v33);
  v38 = cf.__r_.__value_.__l.__size_;
  for (i = cf.__r_.__value_.__r.__words[0]; i != v38; i += 2)
  {
    v39 = *i;
    v40 = i[1];
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (((*(*(v39 + *(*v39 - 40)) + 16))(v39 + *(*v39 - 40)) & 0x100000000) == 0)
    {
      goto LABEL_72;
    }

    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v41 = (*(*v39 + 48))(v39);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    if (v41 != 2)
    {
      v47 = (*(*(v39 + *(*v39 - 40)) + 16))(v39 + *(*v39 - 40));
      *buf = v47;
      buf[4] = BYTE4(v47);
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&__p, v47);
    }

    else
    {
LABEL_72:
      v42 = (*(*(v39 + *(*v39 - 40)) + 16))(v39 + *(*v39 - 40));
      if ((v42 & 0x100000000) != 0)
      {
        v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v43 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v42);
        }

        v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v45 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          v46 = *v44;
          AMCP::Log::Scope::get_os_log_t(*v44);
          objc_claimAutoreleasedReturnValue();
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        else
        {
          v46 = *v44;
          AMCP::Log::Scope::get_os_log_t(*v44);
          objc_claimAutoreleasedReturnValue();
        }

        v32 = v73;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v48 = 0;
          v49 = 0;
          v50 = 47;
          do
          {
            v51 = &aLibraryCachesC_49[v48];
            if (v50 == 47)
            {
              v49 = &aLibraryCachesC_49[v48];
            }

            v50 = v51[1];
            if (!v51[1])
            {
              break;
            }
          }

          while (v48++ < 0xFFF);
          v53 = (*(*(v39 + *(*v39 - 40)) + 16))(v39 + *(*v39 - 40));
          *buf = 136315650;
          if (v49)
          {
            v54 = v49 + 1;
          }

          else
          {
            v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_util_dictionary_help_change_request.mm";
          }

          *&buf[4] = v54;
          v81 = 1024;
          v82 = 364;
          v83 = 1024;
          v84 = v53;
          _os_log_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] Redacting (Stream ID: %u) from the ADM request stream id list.", buf, 0x18u);
          v32 = v73;
        }
      }
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }
  }

  *buf = &cf;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
  v55 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[1])
  {
    do
    {
      std::to_string(&cf, *(v55 + 28));
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_cf = &cf;
      }

      else
      {
        p_cf = cf.__r_.__value_.__r.__words[0];
      }

      if (p_cf)
      {
        if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = HIBYTE(cf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v57 = cf.__r_.__value_.__l.__size_;
        }

        v58 = CFStringCreateWithBytes(0, p_cf, v57, 0x8000100u, 0);
        *buf = v58;
        if (!v58)
        {
          v65 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v65, "Could not construct");
          __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v58 = 0;
        *buf = 0;
      }

      v59 = v58;
      [v36 addObject:v59];

      if (*buf)
      {
        CFRelease(*buf);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      v60 = *(v55 + 8);
      if (v60)
      {
        do
        {
          v61 = v60;
          v60 = v60->__r_.__value_.__r.__words[0];
        }

        while (v60);
      }

      else
      {
        do
        {
          v61 = *(v55 + 16);
          v25 = v61->__r_.__value_.__r.__words[0] == v55;
          v55 = v61;
        }

        while (!v25);
      }

      v55 = v61;
    }

    while (v61 != &__p.__r_.__value_.__r.__words[1]);
  }

  [v71 setObject:v36 forKeyedSubscript:@"io context stream id list"];
  [**(v72 + 10) setObject:v71 forKeyedSubscript:@"io context description"];
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(__p.__r_.__value_.__l.__size_);

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__tree<std::string>::destroy(v77[0]);

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  v62 = **(v72 + 10);
  v63 = *MEMORY[0x1E69E9840];

  AHAL_DSP::ADMDict_ConfigurationChangeRequest::last_dictionary(v69, v62);
}

void sub_1DE340370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char *a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::__tree<std::string>::destroy(a24);

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void AHAL_DSP::ADMDict_ConfigurationChangeRequest::add_devices_and_streams(std::__shared_weak_count **this)
{
  v151 = *MEMORY[0x1E69E9840];
  v146[0] = 0;
  v146[1] = 0;
  v130 = objc_alloc_init(MEMORY[0x1E695DF78]);
  v145 = v146;
  v144[0] = 0;
  v144[1] = 0;
  v143 = v144;
  v129 = this;
  v2 = this[3];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v128 = v3;
      v4 = this[2];
      if (v4)
      {
        (v4->__vftable[1].__on_zero_shared_weak)(&v147, *(v129 + 2));
        size = v147.__r_.__value_.__l.__size_;
        for (i = v147.__r_.__value_.__r.__words[0]; i != size; i += 2)
        {
          v7 = *i;
          v8 = i[1];
          *&v136 = *i;
          *(&v136 + 1) = v8;
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v7 + 24))(cf, v7);
          if (cf[0])
          {
            (*(*v7 + 24))(&v139, v7);
            v9 = (*(*&v139[*(*v139 - 40)] + 16))(&v139[*(*v139 - 40)]);
            if ((v9 & 0x100000000) != 0)
            {
              v10 = v9;
            }

            else
            {
              v10 = 0;
            }

            if (v140)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }
          }

          else
          {
            v10 = 0;
          }

          if (cf[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](cf[1]);
          }

          v142 = v10;
          v11 = (*(*(v7 + *(*v7 - 40)) + 16))(v7 + *(*v7 - 40));
          if ((v11 & 0x100000000) != 0)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          LODWORD(v139) = v12;
          v13 = v144[0];
          if (!v144[0])
          {
            goto LABEL_28;
          }

          v14 = v144;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = *(v13 + 7);
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == v144)
          {
            goto LABEL_28;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < *(v15 + 7))
          {
LABEL_28:
            std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v143, v12);
            cf[0] = &v142;
            v18 = std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v145, v142);
            std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](v18 + 5, &v136);
          }

          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        *&v136 = &v147;
        std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v136);
        (v4->__vftable[1].__on_zero_shared)(&v147, v4);
        v19 = v147.__r_.__value_.__r.__words[0];
        if (v147.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v147.__r_.__value_.__l.__size_);
        }

        if (v19)
        {
          (v4->__vftable[1].__on_zero_shared)(&v147, v4);
          (*(*v147.__r_.__value_.__l.__data_ + 24))(&v136);
          if (v147.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v147.__r_.__value_.__l.__size_);
          }

          v20 = v136;
          if (v136)
          {
            v21 = (*(*(v136 + *(*v136 - 40)) + 16))(v136 + *(*v136 - 40));
            if ((v21 & 0x100000000) != 0)
            {
              v20 = v21;
            }

            else
            {
              v20 = 0;
            }
          }

          LODWORD(v139) = v20;
          (v4->__vftable[1].__on_zero_shared)(&v147, v4);
          v22 = (*(*(v147.__r_.__value_.__r.__words[0] + *(*v147.__r_.__value_.__l.__data_ - 40)) + 16))(v147.__r_.__value_.__r.__words[0] + *(*v147.__r_.__value_.__l.__data_ - 40));
          if ((v22 & 0x100000000) != 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          if (v147.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v147.__r_.__value_.__l.__size_);
          }

          v24 = v144[0];
          if (!v144[0])
          {
            goto LABEL_55;
          }

          v25 = v144;
          do
          {
            v26 = v24;
            v27 = v25;
            v28 = *(v24 + 7);
            if (v28 >= v23)
            {
              v25 = v24;
            }

            v24 = v24[v28 < v23];
          }

          while (v24);
          if (v25 == v144)
          {
            goto LABEL_55;
          }

          if (v28 < v23)
          {
            v26 = v27;
          }

          if (v23 < *(v26 + 7))
          {
LABEL_55:
            v147.__r_.__value_.__r.__words[0] = &v139;
            v29 = std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v145, v139);
            (v4->__vftable[1].__on_zero_shared)(cf, v4);
            v31 = v29[6];
            v30 = v29[7];
            if (v31 >= v30)
            {
              v32 = v29[5];
              v33 = v31 - v32;
              v34 = (v31 - v32) >> 4;
              v35 = v34 + 1;
              if ((v34 + 1) >> 60)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v36 = v30 - v32;
              if (v36 >> 3 > v35)
              {
                v35 = v36 >> 3;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFF0)
              {
                v37 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              v149 = v29 + 5;
              if (v37)
              {
                std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v37);
              }

              *(16 * v34) = *cf;
              v38 = 16 * v34 + 16;
              cf[0] = 0;
              cf[1] = 0;
              memcpy(0, v32, v33);
              v39 = v29[5];
              v29[5] = 0;
              v29[6] = v38;
              v40 = v29[7];
              v29[7] = 0;
              v147.__r_.__value_.__r.__words[2] = v39;
              v148 = v40;
              v147.__r_.__value_.__r.__words[0] = v39;
              v147.__r_.__value_.__l.__size_ = v39;
              std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(&v147);
              v41 = cf[1];
              v29[6] = v38;
              if (v41)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
              }
            }

            else
            {
              *v31 = *cf;
              v29[6] = (v31 + 16);
            }
          }

          if (*(&v136 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v136 + 1));
          }
        }

        v42 = v145;
        if (v145 != v146)
        {
          do
          {
            LODWORD(v136) = *(v42 + 8);
            v137 = 0;
            v138 = 0;
            *(&v136 + 1) = 0;
            v43 = v42[5];
            v44 = v42[6];
            v147.__r_.__value_.__r.__words[0] = &v136 + 8;
            v147.__r_.__value_.__s.__data_[8] = 0;
            v45 = v44 - v43;
            if (v44 != v43)
            {
              if (!((v45 >> 4) >> 60))
              {
                std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v45 >> 4);
              }

              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v132 = objc_alloc_init(MEMORY[0x1E695DF98]);
            (*(***(&v136 + 1) + 24))(&v134);
            v133 = v132;
            if (v133)
            {
              v46 = v134 == 0;
            }

            else
            {
              v46 = 1;
            }

            if (!v46)
            {
              (*(*v134 + 32))(&v147);
              if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = &v147;
              }

              else
              {
                v47 = v147.__r_.__value_.__r.__words[0];
              }

              if (v47)
              {
                if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v48 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v48 = v147.__r_.__value_.__l.__size_;
                }

                v49 = CFStringCreateWithBytes(0, v47, v48, 0x8000100u, 0);
                cf[0] = v49;
                if (!v49)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }
              }

              else
              {
                v49 = 0;
                cf[0] = 0;
              }

              [v133 setObject:v49 forKeyedSubscript:{@"device model uid", v128}];
              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v147.__r_.__value_.__l.__data_);
              }

              (*(*v134 + 40))(&v147);
              if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v50 = &v147;
              }

              else
              {
                v50 = v147.__r_.__value_.__r.__words[0];
              }

              if (v50)
              {
                if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v51 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v51 = v147.__r_.__value_.__l.__size_;
                }

                v52 = CFStringCreateWithBytes(0, v50, v51, 0x8000100u, 0);
                cf[0] = v52;
                if (!v52)
                {
                  v119 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v119, "Could not construct");
                  __cxa_throw(v119, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }
              }

              else
              {
                v52 = 0;
                cf[0] = 0;
              }

              [v133 setObject:v52 forKeyedSubscript:@"device uid"];
              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v147.__r_.__value_.__l.__data_);
              }

              if (((*(*v134 + 64))(v134) & 0x100000000) != 0)
              {
                LODWORD(cf[0]) = (*(*v134 + 64))(v134);
                v53 = CFNumberCreate(0, kCFNumberIntType, cf);
                v147.__r_.__value_.__r.__words[0] = v53;
                if (!v53)
                {
                  v124 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v124, "Could not construct");
                  __cxa_throw(v124, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                [v133 setObject:v53 forKeyedSubscript:@"transport type"];
                if (v147.__r_.__value_.__r.__words[0])
                {
                  CFRelease(v147.__r_.__value_.__l.__data_);
                }
              }

              cf[0] = COERCE_CFTYPEREF((*(*v134 + 48))(v134));
              v54 = CFNumberCreate(0, kCFNumberDoubleType, cf);
              v147.__r_.__value_.__r.__words[0] = v54;
              if (!v54)
              {
                v115 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v115, "Could not construct");
                __cxa_throw(v115, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              [v133 setObject:v54 forKeyedSubscript:@"sample rate"];
              if (v147.__r_.__value_.__r.__words[0])
              {
                CFRelease(v147.__r_.__value_.__l.__data_);
              }

              cf[0] = COERCE_CFTYPEREF((*(*v134 + 56))(v134));
              v55 = CFNumberCreate(0, kCFNumberDoubleType, cf);
              v147.__r_.__value_.__r.__words[0] = v55;
              if (!v55)
              {
                v114 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v114, "Could not construct");
                __cxa_throw(v114, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              [v133 setObject:v55 forKeyedSubscript:@"hardware sample rate"];
              if (v147.__r_.__value_.__r.__words[0])
              {
                CFRelease(v147.__r_.__value_.__l.__data_);
              }

              if (((*(*v134 + 72))(v134) & 0x100000000) != 0)
              {
                LODWORD(cf[0]) = (*(*v134 + 72))(v134);
                v56 = CFNumberCreate(0, kCFNumberIntType, cf);
                v147.__r_.__value_.__r.__words[0] = v56;
                if (!v56)
                {
                  v123 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v123, "Could not construct");
                  __cxa_throw(v123, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                [v133 setObject:v56 forKeyedSubscript:@"bluetooth device category"];
                if (v147.__r_.__value_.__r.__words[0])
                {
                  CFRelease(v147.__r_.__value_.__l.__data_);
                }
              }

              if (((*(*v134 + 80))(v134) & 0x100) != 0)
              {
                LOBYTE(cf[0]) = (*(*v134 + 80))(v134);
                LODWORD(cf[0]) = LOBYTE(cf[0]);
                v57 = CFNumberCreate(0, kCFNumberIntType, cf);
                v147.__r_.__value_.__r.__words[0] = v57;
                if (!v57)
                {
                  v122 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v122, "Could not construct");
                  __cxa_throw(v122, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                [v133 setObject:v57 forKeyedSubscript:@"bluetooth ecnr enabled"];
                if (v147.__r_.__value_.__r.__words[0])
                {
                  CFRelease(v147.__r_.__value_.__l.__data_);
                }
              }

              if ((*(*v134 + 96))(v134))
              {
                v58 = (*(*v134 + 96))(v134);
                if (((*(*v58 + 16))(v58) & 0x100) != 0)
                {
                  v59 = (*(*v134 + 96))(v134);
                  LOBYTE(cf[0]) = (*(*v59 + 16))(v59);
                  LODWORD(cf[0]) = LOBYTE(cf[0]);
                  v60 = CFNumberCreate(0, kCFNumberIntType, cf);
                  v147.__r_.__value_.__r.__words[0] = v60;
                  if (!v60)
                  {
                    v127 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v127, "Could not construct");
                    __cxa_throw(v127, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  [v133 setObject:v60 forKeyedSubscript:@"is default device"];
                  if (v147.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v147.__r_.__value_.__l.__data_);
                  }
                }

                v61 = (*(*v134 + 96))(v134);
                if (((*(*v61 + 40))(v61) & 0x100000000) != 0)
                {
                  v62 = (*(*v134 + 96))(v134);
                  LODWORD(cf[0]) = (*(*v62 + 40))(v62);
                  v63 = CFNumberCreate(0, kCFNumberIntType, cf);
                  v147.__r_.__value_.__r.__words[0] = v63;
                  if (!v63)
                  {
                    v126 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v126, "Could not construct");
                    __cxa_throw(v126, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  [v133 setObject:v63 forKeyedSubscript:@"data source type out"];
                  if (v147.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v147.__r_.__value_.__l.__data_);
                  }
                }

                v64 = (*(*v134 + 96))(v134);
                LODWORD(cf[0]) = (*(*v64 + 24))(v64);
                v65 = CFNumberCreate(0, kCFNumberIntType, cf);
                v147.__r_.__value_.__r.__words[0] = v65;
                if (!v65)
                {
                  v117 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v117, "Could not construct");
                  __cxa_throw(v117, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                [v133 setObject:v65 forKeyedSubscript:@"latency out samples"];
                if (v147.__r_.__value_.__r.__words[0])
                {
                  CFRelease(v147.__r_.__value_.__l.__data_);
                }

                v66 = (*(*v134 + 96))(v134);
                LODWORD(cf[0]) = (*(*v66 + 32))(v66);
                v67 = CFNumberCreate(0, kCFNumberIntType, cf);
                v147.__r_.__value_.__r.__words[0] = v67;
                if (!v67)
                {
                  v116 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v116, "Could not construct");
                  __cxa_throw(v116, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                [v133 setObject:v67 forKeyedSubscript:@"safety offset out samples"];
                if (v147.__r_.__value_.__r.__words[0])
                {
                  CFRelease(v147.__r_.__value_.__l.__data_);
                }
              }

              if ((*(*v134 + 88))(v134))
              {
                v68 = (*(*v134 + 88))(v134);
                if (((*(*v68 + 40))(v68) & 0x100000000) != 0)
                {
                  v69 = (*(*v134 + 88))(v134);
                  LODWORD(cf[0]) = (*(*v69 + 40))(v69);
                  v70 = CFNumberCreate(0, kCFNumberIntType, cf);
                  v147.__r_.__value_.__r.__words[0] = v70;
                  if (!v70)
                  {
                    v125 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v125, "Could not construct");
                    __cxa_throw(v125, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  [v133 setObject:v70 forKeyedSubscript:@"data source type in"];
                  if (v147.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v147.__r_.__value_.__l.__data_);
                  }
                }

                v71 = (*(*v134 + 88))(v134);
                LODWORD(cf[0]) = (*(*v71 + 24))(v71);
                v72 = CFNumberCreate(0, kCFNumberIntType, cf);
                v147.__r_.__value_.__r.__words[0] = v72;
                if (!v72)
                {
                  v121 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v121, "Could not construct");
                  __cxa_throw(v121, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                [v133 setObject:v72 forKeyedSubscript:@"latency in samples"];
                if (v147.__r_.__value_.__r.__words[0])
                {
                  CFRelease(v147.__r_.__value_.__l.__data_);
                }

                v73 = (*(*v134 + 88))(v134);
                LODWORD(cf[0]) = (*(*v73 + 32))(v73);
                v74 = CFNumberCreate(0, kCFNumberIntType, cf);
                v147.__r_.__value_.__r.__words[0] = v74;
                if (!v74)
                {
                  v120 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v120, "Could not construct");
                  __cxa_throw(v120, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                [v133 setObject:v74 forKeyedSubscript:@"safety offset in samples"];
                if (v147.__r_.__value_.__r.__words[0])
                {
                  CFRelease(v147.__r_.__value_.__l.__data_);
                }
              }
            }

            if (v135)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v135);
            }

            v75 = objc_alloc_init(MEMORY[0x1E695DF78]);
            v131 = objc_alloc_init(MEMORY[0x1E695DF78]);
            v76 = *(&v136 + 1);
            v77 = v137;
            while (v76 != v77)
            {
              v78 = *v76;
              v79 = v76[1];
              if (v79)
              {
                atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = (*(*v78 + 32))(v78);
              if (v80 == 1768845428 || v80 == 1869968496)
              {
                v82 = objc_alloc_init(MEMORY[0x1E695DF98]);
                if (v79)
                {
                  atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v83 = v82;
                if (v83)
                {
                  v84 = (*(*v78 + 48))(v78);
                  if (v84 <= 2)
                  {
                    [v83 setObject:*(&off_1E8673888 + v84) forKeyedSubscript:@"stream semantic"];
                  }

                  (*(*v78 + 64))(&v147, v78);
                  if (v150 == 1)
                  {
                    v85 = objc_alloc_init(MEMORY[0x1E695DF98]);
                    (*(*v78 + 64))(&v147, v78);
                    if ((v150 & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    AHAL_DSP::util_fill_format(&v147, v85, v86);
                    [v83 setObject:v85 forKeyedSubscript:@"current format"];
                    if (v79)
                    {
LABEL_168:
                      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                    }
                  }

                  else
                  {
                    v85 = 0;
                    if (v79)
                    {
                      goto LABEL_168;
                    }
                  }

                  if ((*(*v78 + 48))(v78) == 2)
                  {
                    if (v79)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
                    }

                    goto LABEL_177;
                  }

                  v87 = (*(*(v78 + *(*v78 - 40)) + 16))(v78 + *(*v78 - 40));
                  if (v79)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
                  }

                  if ((v87 & 0x100000000) != 0)
                  {
                    v93 = (*(*(v78 + *(*v78 - 40)) + 16))(v78 + *(*v78 - 40));
                    std::to_string(&v147, v93);
                    if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v94 = &v147;
                    }

                    else
                    {
                      v94 = v147.__r_.__value_.__r.__words[0];
                    }

                    if (v94)
                    {
                      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v95 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v95 = v147.__r_.__value_.__l.__size_;
                      }

                      v96 = CFStringCreateWithBytes(0, v94, v95, 0x8000100u, 0);
                      cf[0] = v96;
                      if (!v96)
                      {
                        v113 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v113, "Could not construct");
                        __cxa_throw(v113, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                      }
                    }

                    else
                    {
                      v96 = 0;
                      cf[0] = 0;
                    }

                    [v83 setObject:v96 forKeyedSubscript:{@"stream id", v128}];
                    if (cf[0])
                    {
                      CFRelease(cf[0]);
                    }

                    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v147.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
LABEL_177:
                    v88 = (*(*(v78 + *(*v78 - 40)) + 16))(v78 + *(*v78 - 40));
                    if ((v88 & 0x100000000) != 0)
                    {
                      v89 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                      if ((v89 & 1) == 0)
                      {
                        AMCP::Log::AMCP_Scope_Registry::initialize(v88);
                      }

                      v90 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                      v91 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                      if (v91)
                      {
                        atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
                        v92 = *v90;
                        AMCP::Log::Scope::get_os_log_t(*v90);
                        objc_claimAutoreleasedReturnValue();
                        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
                      }

                      else
                      {
                        v92 = *v90;
                        AMCP::Log::Scope::get_os_log_t(*v90);
                        objc_claimAutoreleasedReturnValue();
                      }

                      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                      {
                        v97 = 0;
                        v98 = 0;
                        v99 = 47;
                        do
                        {
                          v100 = &aLibraryCachesC_49[v97];
                          if (v99 == 47)
                          {
                            v98 = &aLibraryCachesC_49[v97];
                          }

                          v99 = v100[1];
                          if (!v100[1])
                          {
                            break;
                          }
                        }

                        while (v97++ < 0xFFF);
                        v102 = (*(*(v78 + *(*v78 - 40)) + 16))(v78 + *(*v78 - 40));
                        LODWORD(v147.__r_.__value_.__l.__data_) = 136315650;
                        v103 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_util_dictionary_help_change_request.mm";
                        if (v98)
                        {
                          v103 = v98 + 1;
                        }

                        *(v147.__r_.__value_.__r.__words + 4) = v103;
                        WORD2(v147.__r_.__value_.__r.__words[1]) = 1024;
                        *(&v147.__r_.__value_.__r.__words[1] + 6) = 129;
                        WORD1(v147.__r_.__value_.__r.__words[2]) = 1024;
                        HIDWORD(v147.__r_.__value_.__r.__words[2]) = v102;
                        _os_log_impl(&dword_1DE1F9000, v92, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] Redacting (Stream ID: %u) from the ADM request information.", &v147, 0x18u);
                      }
                    }
                  }

                  LODWORD(cf[0]) = (*(*v78 + 80))(v78);
                  v104 = CFNumberCreate(0, kCFNumberIntType, cf);
                  v147.__r_.__value_.__r.__words[0] = v104;
                  if (!v104)
                  {
                    v112 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v112, "Could not construct");
                    __cxa_throw(v112, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  [v83 setObject:v104 forKeyedSubscript:@"latency samples"];
                  if (v147.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v147.__r_.__value_.__l.__data_);
                  }

                  if (v85)
                  {
                    v105 = objc_alloc_init(MEMORY[0x1E695DF78]);
                    [v105 addObject:v85];
                    [v83 setObject:v105 forKeyedSubscript:@"supported formats"];
                  }
                }

                if (v79)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v79);
                }

                v106 = (*(*v78 + 32))(v78);
                v107 = v75;
                if (v106 == 1768845428 || (v108 = (*(*v78 + 32))(v78), v107 = v131, v108 == 1869968496))
                {
                  [v107 addObject:{v83, v128}];
                }
              }

              if (v79)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v79);
              }

              v76 += 2;
            }

            [v133 setObject:v75 forKeyedSubscript:@"hw streams input"];
            [v133 setObject:v131 forKeyedSubscript:@"hw streams output"];
            [v130 addObject:v133];

            v147.__r_.__value_.__r.__words[0] = &v136 + 8;
            std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v147);
            v109 = v42[1];
            if (v109)
            {
              do
              {
                v110 = v109;
                v109 = *v109;
              }

              while (v109);
            }

            else
            {
              do
              {
                v110 = v42[2];
                v46 = *v110 == v42;
                v42 = v110;
              }

              while (!v46);
            }

            v42 = v110;
          }

          while (v110 != v146);
        }

        [**(v129 + 10) setObject:v130 forKeyedSubscript:{@"device descriptions", v128}];
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v144[0]);
  std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::destroy(v146[0]);

  v111 = *MEMORY[0x1E69E9840];
}

void sub_1DE342010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a32);
  std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::destroy(*(v32 - 176));

  _Unwind_Resume(a1);
}

void AHAL_DSP::ADMDict_ConfigurationChangeRequest::last_dictionary(AHAL_DSP::ADMDict_ConfigurationChangeRequest *this, void *a2)
{
  if (a2)
  {
    v7 = a2;
    v3 = a2;
    CFRetain(v3);
    *this = v3;
    v4 = CFGetTypeID(v3);
    TypeID = CFDictionaryGetTypeID();
    a2 = v7;
    if (v4 != TypeID)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_1DE342610(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);

  _Unwind_Resume(a1);
}

void AHAL_DSP::util_fill_format(AHAL_DSP *this, AudioStreamBasicDescription *a2, NSMutableDictionary *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  v6 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    v13 = 0;
    v14 = 0;
LABEL_17:
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 0;
      v20 = 0;
      v21 = 47;
      do
      {
        v22 = &aLibraryCachesC_49[v19];
        if (v21 == 47)
        {
          v20 = &aLibraryCachesC_49[v19];
        }

        v21 = v22[1];
        if (!v22[1])
        {
          break;
        }
      }

      while (v19++ < 0xFFF);
      if (v20)
      {
        v24 = v20 + 1;
      }

      else
      {
        v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_util_dictionary_help_change_request.mm";
      }

      *buf = 136315394;
      *&buf[4] = v24;
      v39 = 1024;
      v40 = 30;
      _os_log_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_INFO, "%32s:%-5d [ahal_dsp] Specified format for use with DSP is non-linear, non-mixable.", buf, 0x12u);
    }

    goto LABEL_34;
  }

  v7 = *(this + 6);
  v8 = *(this + 7);
  v9 = *(this + 8);
  v10 = *(this + 5) == 1 && v7 == *(this + 4);
  v12 = !v10 || v9 >> 3 > v7 || v8 == 0;
  if (!v12 && ((v6 & 0x20) != 0 || (v10 = v7 == v7 / v8 * v8, v7 /= v8, v10)))
  {
    v13 = 0;
    v14 = 1;
    if ((v6 & 2) == 0 && 8 * v7 == v9)
    {
      if (v6)
      {
        if (v7 == 4)
        {
          v30 = 1;
        }

        else
        {
          v30 = 4 * (v7 == 8);
        }

        if ((v6 & 0x1F84) != 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = v30;
        }

        v14 = (*(this + 3) & 0x1F84) == 0;
      }

      else if ((v6 & 4) != 0)
      {
        v31 = (v6 >> 7) & 0x3F;
        if (v31 == 24 && v7 == 4)
        {
          v13 = 3;
        }

        else if (v31 || v7 != 4)
        {
          if (v7 == 2 && v31 == 0)
          {
            v13 = 2;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 5;
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if ((v6 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_34:
  *buf = *this;
  v25 = CFNumberCreate(0, kCFNumberDoubleType, buf);
  cf = v25;
  if (!v25)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  [(AudioStreamBasicDescription *)v5 setObject:v25 forKeyedSubscript:@"sample rate"];
  CFRelease(cf);
  LODWORD(cf) = *(this + 7);
  v26 = CFNumberCreate(0, kCFNumberIntType, &cf);
  *buf = v26;
  if (!v26)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Could not construct");
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  [(AudioStreamBasicDescription *)v5 setObject:v26 forKeyedSubscript:@"channels"];
  if (*buf)
  {
    CFRelease(*buf);
  }

  LOBYTE(cf) = (v6 & 0x20) == 0;
  v27 = CFNumberCreate(0, kCFNumberCharType, &cf);
  *buf = v27;
  if (!v27)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "Could not construct");
    __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  [(AudioStreamBasicDescription *)v5 setObject:v27 forKeyedSubscript:@"is interleaved"];
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v14)
  {
    LODWORD(cf) = v13;
    v28 = CFNumberCreate(0, kCFNumberIntType, &cf);
    *buf = v28;
    if (!v28)
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v36, "Could not construct");
      __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    [(AudioStreamBasicDescription *)v5 setObject:v28 forKeyedSubscript:@"common pcm format"];
    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1DE342AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);

  _Unwind_Resume(a1);
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, void *a2)
{
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

size_t *std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
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

    v17[4] = v2;
    if (v10)
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

void std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void std::allocator<AHAL_DSP::ADMDict_PropertyInfoTranslator::PropertyInfoStruct>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AHAL_DSP::util_value_from_dict<unsigned int>(CFDictionaryRef theDict, const void *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v2 = 707406378;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*&>(&v8, theDict, a2);
  if (v9 == 1)
  {
    v3 = v8;
    if (!v8)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v4 = applesauce::CF::convert_as<unsigned int,0>(v8);
    if ((v4 & 0x100000000) != 0)
    {
      v2 = v4;
    }

    else
    {
      v2 = 707406378;
    }

    CFRelease(v3);
  }

  return v2;
}

uint64_t AHAL_DSP::util_translate_value_type(CFDictionaryRef theDict, const applesauce::CF::DictionaryRef *a2, const __CFString *a3)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(&v14, theDict, a2);
  if (v15 != 1)
  {
    return 7;
  }

  v3 = v14;
  if (!v14)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_as<std::string,0>(v11, v14);
  if (v13)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v11);
    for (i = 0; i != 14; i += 2)
    {
      if (!std::string::compare(&__p, (&AHAL_DSP::util_translate_value_type(applesauce::CF::DictionaryRef const&,__CFString const*)::kLookup)[i]))
      {
        break;
      }
    }

    if (v10 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = LODWORD((&AHAL_DSP::util_translate_value_type(applesauce::CF::DictionaryRef const&,__CFString const*)::kLookup)[i + 1]);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    v5 = 7;
  }

  CFRelease(v3);
  return v5;
}

void sub_1DE343184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::optional<applesauce::CF::StringRef>::~optional(v18 - 48);
  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::util_value_from_dict<BOOL>(CFDictionaryRef theDict, const void *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*&>(&v7, theDict, a2);
  if (v8 != 1)
  {
    return 0;
  }

  v2 = v7;
  if (!v7)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_as<BOOL,0>(v7);
  CFRelease(v2);
  return (v3 > 0xFFu) & v3;
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFNumberGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void AHAL_DSP::ADMDict_AdaptResponse::parse(AHAL_DSP::ADMDict_AdaptResponse *this, const applesauce::CF::DictionaryRef *a2)
{
  if (*(this + 4) == 1)
  {
    *(this + 4) = 0;
  }

  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [(applesauce::CF::DictionaryRef *)v3 objectForKey:@"dsp processing latency samples"];
    if ([v4 BOOLValue])
    {
      v5 = [v4 unsignedIntegerValue];
      if ((*(this + 4) & 1) == 0)
      {
        *(this + 4) = 1;
      }

      *this = v5;
    }

    v3 = v6;
  }
}

void sub_1DE343AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADM_Loader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::ADMPluginPropertySetImpl::set_property_data(AHAL_DSP::ADMPluginPropertySetImpl *this, AudioObjectPropertyAddress *a2, unsigned int a3, const UInt8 *a4, unsigned int a5, const UInt8 *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((*(*this + 16))(this) && (v12 = AHAL_DSP::ADMPluginPropertySetImpl::CoupledPropertyInfo::find(*(this + 1), *(this + 2), a2)) != 0 && LOBYTE(v12[1].mElement) == 1)
  {
    __val = 0;
    AHAL_DSP::CF::create_data(&v39, a4, a3);
    if (a5 && a6)
    {
      AHAL_DSP::CF::create_data(cf, a6, a5);
      v13 = *(this + 4);
      v14 = *cf;
      if (*cf)
      {
        CFRetain(*cf);
      }

      v37 = v14;
      v38 = 1;
      v15 = ADM_SPI::AudioDSPManagerPropertySet::setHostedDSPPropertyAtAddress(v13, a2, &v39, &v37, &__val);
      if (v14)
      {
        CFRelease(v14);
      }

      v16 = *cf;
      if (*cf)
      {
        CFRelease(*cf);
      }
    }

    else
    {
      v20 = *(this + 4);
      v36[0] = 0;
      v36[8] = 0;
      v16 = ADM_SPI::AudioDSPManagerPropertySet::setHostedDSPPropertyAtAddress(v20, a2, &v39, v36, &__val);
      v15 = v16;
    }

    if (__val)
    {
      v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v21 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v16);
      }

      v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *v23;
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      else
      {
        v24 = *v23;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = 0;
        v26 = 0;
        v27 = 47;
        do
        {
          v28 = &aLibraryCachesC_51[v25];
          if (v27 == 47)
          {
            v26 = &aLibraryCachesC_51[v25];
          }

          v27 = v28[1];
          if (!v28[1])
          {
            break;
          }
        }

        while (v25++ < 0xFFF);
        if (v26)
        {
          v30 = v26 + 1;
        }

        else
        {
          v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_property_set_impl.cpp";
        }

        mSelector = a2->mSelector;
        v32 = &v35;
        caulk::string_from_4cc(&v35, mSelector);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v35.__r_.__value_.__r.__words[0];
        }

        caulk::string_from_4cc(&__p, __val);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *cf = 136315906;
        *&cf[4] = v30;
        v42 = 1024;
        v43 = 193;
        v44 = 2080;
        v45 = v32;
        v46 = 2080;
        v47 = p_p;
        _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Unable to set property %s with error %s", cf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = 6;
    }

    if (v39)
    {
      CFRelease(v39);
    }
  }

  else
  {
    v17 = 4;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1DE3440E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const AudioObjectPropertyAddress *AHAL_DSP::ADMPluginPropertySetImpl::CoupledPropertyInfo::find(const AudioObjectPropertyAddress *this, const AudioObjectPropertyAddress *a2, uint64_t a3)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *&this->mSelector == *a3 && this->mElement == *(a3 + 8);
    if (v3 || this->mScope == 707406378 && this->mSelector == *a3 && this->mElement == *(a3 + 8))
    {
      break;
    }

    this += 2;
    if (this == a2)
    {
      return 0;
    }
  }

  return this;
}

uint64_t AHAL_DSP::ADMPluginPropertySetImpl::get_property_data(const AudioObjectPropertyAddress **this, const AudioObjectPropertyAddress *a2, int a3, unsigned int *a4, void *a5, unsigned int a6, const UInt8 *a7)
{
  if (!(*&(*this)[1].mScope)(this))
  {
    return 4;
  }

  v14 = AHAL_DSP::ADMPluginPropertySetImpl::CoupledPropertyInfo::find(this[1], this[2], a2);
  if (v14 && (v15 = v14[1].mSelector - 1, v15 <= 5))
  {
    v16 = *&asc_1DE763520[4 * v15];
  }

  else
  {
    v16 = 0;
  }

  if (v16 != a3)
  {
    return 4;
  }

  LOBYTE(v45) = 0;
  v46 = 0;
  if (a6)
  {
    v17 = a7 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (v17)
  {
    v26 = this[4];
    LOBYTE(v42) = 0;
    v43 = 0;
    v27 = *&v26[1].mScope;
    p_mScope = &v26[1].mScope;
    if (!*v27)
    {
      theData = 0;
      goto LABEL_32;
    }
  }

  else
  {
    AHAL_DSP::CF::create_data(&cf, a7, a6);
    v19 = cf;
    v46 = 1;
    v45 = cf;
    v20 = this[4];
    LOBYTE(v42) = 0;
    v43 = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    v42 = v19;
    v43 = 1;
    v22 = *&v20[1].mScope;
    p_mScope = &v20[1].mScope;
    v23 = *v22;
    if (!*v22)
    {
      theData = 0;
      if ((v18 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v18)
    {
      v24 = 0;
      goto LABEL_22;
    }
  }

  v24 = v42;
  v23 = **p_mScope;
LABEL_22:
  v28 = [v23 getHostedDSPPropertyAtAddress:*&a2->mSelector withQualifierData:{a2->mElement, v24}];
  v29 = v28;
  if (v28)
  {
    CFRetain(v28);
    theData = v29;
    v30 = CFGetTypeID(v29);
    if (v30 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    theData = 0;
  }

  if (v43)
  {
LABEL_30:
    if (v42)
    {
      CFRelease(v42);
    }
  }

LABEL_32:
  v32 = AHAL_DSP::ADMPluginPropertySetImpl::CoupledPropertyInfo::find(this[1], this[2], a2);
  if (!v32)
  {
    v33 = theData;
    goto LABEL_38;
  }

  v33 = theData;
  if (v32[1].mSelector != 6)
  {
LABEL_38:
    if (!v33)
    {
      v37 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v37, "Could not construct");
      __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    BytePtr = CFDataGetBytePtr(v33);
    if (!theData)
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not construct");
      __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Length = CFDataGetLength(theData);
    memcpy(a5, BytePtr, Length);
    if (!theData)
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "Could not construct");
      __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *a4 = CFDataGetLength(theData);
    goto LABEL_42;
  }

  AHAL_DSP::ProcessPropertySetConfiguration::util_create_dictionary_from_data_with_serialized_plist(&cf, theData);
  v34 = cf;
  CFRetain(cf);
  *a5 = v34;
  *a4 = 8;
  if (v41 == 1 && cf)
  {
    CFRelease(cf);
  }

LABEL_42:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v18)
  {
    if (v45)
    {
      CFRelease(v45);
    }
  }

  return 0;
}

void sub_1DE344544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a14);

  std::optional<applesauce::CF::DataRef>::~optional(&a12);
  std::optional<applesauce::CF::DataRef>::~optional(&a15);
  _Unwind_Resume(a1);
}

const AudioObjectPropertyAddress *AHAL_DSP::ADMPluginPropertySetImpl::get_property_data_size(const AudioObjectPropertyAddress **this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *a4)
{
  result = AHAL_DSP::ADMPluginPropertySetImpl::CoupledPropertyInfo::find(this[1], this[2], a2);
  if (result)
  {
    v5 = result[1].mSelector - 1;
    if (v5 > 5)
    {
      return 0;
    }

    else
    {
      return *&asc_1DE763520[4 * v5];
    }
  }

  return result;
}

uint64_t AHAL_DSP::ADMPluginPropertySetImpl::is_settable(const AudioObjectPropertyAddress **this, const AudioObjectPropertyAddress *a2)
{
  v2 = AHAL_DSP::ADMPluginPropertySetImpl::CoupledPropertyInfo::find(this[1], this[2], a2);
  if (v2)
  {
    mElement = v2[1].mElement;
  }

  else
  {
    mElement = 0;
  }

  return mElement & 1;
}

void *AHAL_DSP::ADMPluginPropertySetImpl::has_property(AHAL_DSP::ADMPluginPropertySetImpl *this, const AudioObjectPropertyAddress *a2)
{
  result = **(*(this + 4) + 16);
  if (result)
  {
    return [result hasHostedDSPPropertyAtAddress:{*&a2->mSelector, a2->mElement}];
  }

  return result;
}

void AHAL_DSP::ADMPluginPropertySetImpl::~ADMPluginPropertySetImpl(AHAL_DSP::ADMPluginPropertySetImpl *this)
{
  AHAL_DSP::ADMPluginPropertySetImpl::~ADMPluginPropertySetImpl(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5967490;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void AHAL_DSP::ADMUtilNegotiateAdapt::util_get_primary_stream(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    (*(*a2 + 72))(&v21, a2);
    v3 = v21;
    v4 = v22;
    if (v21 == v22)
    {
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v8 = *v3;
        v7 = v3[1];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = (*(*v8 + 48))(v8);
        if (!v9)
        {
          if (v6)
          {
            v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v10 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v9);
            }

            v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              v13 = *v11;
              AMCP::Log::Scope::get_os_log_t(*v11);
              objc_claimAutoreleasedReturnValue();
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            else
            {
              v13 = *v11;
              AMCP::Log::Scope::get_os_log_t(*v11);
              objc_claimAutoreleasedReturnValue();
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = 0;
              v15 = 0;
              v16 = 47;
              do
              {
                v17 = &aLibraryCachesC_52[v14];
                if (v16 == 47)
                {
                  v15 = &aLibraryCachesC_52[v14];
                }

                v16 = v17[1];
                if (!v17[1])
                {
                  break;
                }
              }

              while (v14++ < 0xFFF);
              *buf = 136315394;
              if (v15)
              {
                v19 = v15 + 1;
              }

              else
              {
                v19 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_util_nego_adapt.mm";
              }

              *&buf[4] = v19;
              v24 = 1024;
              v25 = 54;
              _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Multiple primary streams for processing is not supported by HAL-ADM integration at this time.", buf, 0x12u);
            }
          }

          else
          {
            if (v7)
            {
              atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v5)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
            }

            v5 = v7;
            v6 = v8;
          }
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v3 += 2;
      }

      while (v3 != v4);
      a1[1] = v5;
    }

    *a1 = v6;
    *buf = &v21;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE344998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  *v15 = v18;
  v15[1] = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  a15 = &a12;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_HostPrivateReferenceStreamDeviceUID>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&v9, a2);
  v3 = v9;
  v4 = v10;
  if (v9 == v10)
  {
LABEL_5:
    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = **v5;
        if (v7)
        {
          break;
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(v3 + 8);
    *a1 = v7;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

void AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamClientFacingChannelCount>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&v9, a2);
  v3 = v9;
  v4 = v10;
  if (v9 == v10)
  {
LABEL_5:
    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = **v5;
        if (v7)
        {
          break;
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(v3 + 8);
    *a1 = v7;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

void AHAL_DSP::ADMUtilNegotiateAdapt::reset_modifiers(uint64_t *a1)
{
  if (*a1)
  {
    AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_HostPrivateReferenceStreamDeviceUID>(&v2, *a1);
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamClientFacingChannelCount>(&v2, *a1);
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1DE344CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AHAL_DSP::ADMUtilNegotiateAdapt::util_set_latency_on_modifier(uint64_t a1, int a2)
{
  v6 = a2;
  if (a1)
  {
    (*(*a1 + 88))(&v4);
    if (v4)
    {
      AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamLatencyFrames>(&v2, v4);
      if (v2)
      {
        (*(*v2 + 24))(v2, &v6);
        (*(*v4 + 24))(v4);
      }

      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DE344DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamLatencyFrames>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&v9, a2);
  v3 = v9;
  v4 = v10;
  if (v9 == v10)
  {
LABEL_5:
    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = **v5;
        if (v7)
        {
          break;
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(v3 + 8);
    *a1 = v7;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

void AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamPreVolumeProcessing>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&v9, a2);
  v3 = v9;
  v4 = v10;
  if (v9 == v10)
  {
LABEL_5:
    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = **v5;
        if (v7)
        {
          break;
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(v3 + 8);
    *a1 = v7;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = &v9;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

void AHAL_DSP::ADMUtilNegotiateAdapt::util_log_dictionary(void ***this, int a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (a2)
  {
    AHAL_DSP::ADMDict_ConfigurationChangeRequest::last_dictionary(v37, *this[17]);
    v5 = v37[0];
    v6 = v5;
    if (v5)
    {
      CFRelease(v5);
      v7 = [v6 description];
      applesauce::CF::StringRef::from_ns(&cf, v7);

      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v8);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v10;
        AMCP::Log::Scope::get_os_log_t(*v10);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v12 = *v10;
        AMCP::Log::Scope::get_os_log_t(*v10);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        v21 = 0;
        v22 = 47;
        do
        {
          v23 = &aLibraryCachesC_52[v20];
          if (v22 == 47)
          {
            v21 = &aLibraryCachesC_52[v20];
          }

          v22 = v23[1];
          if (!v23[1])
          {
            break;
          }

          v24 = v20++ >= 0xFFF;
        }

        while (!v24);
        if (v21)
        {
          v25 = v21 + 1;
        }

        else
        {
          v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_util_nego_adapt.mm";
        }

        if (cf)
        {
          applesauce::CF::convert_as<std::string,0>(v37, cf);
          v26 = v39;
          if (v39 == 1)
          {
            *__p = *v37;
            v41 = v38;
            v37[1] = 0;
            v38 = 0;
            v37[0] = 0;
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "");
          }

          v33 = __p;
          if (v41 < 0)
          {
            v33 = __p[0];
          }

          *buf = 136315650;
          v44 = v25;
          v45 = 1024;
          v46 = 271;
          v47 = 2080;
          v48 = v33;
          _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] Negotiate: %s", buf, 0x1Cu);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          if (v26 && SHIBYTE(v38) < 0)
          {
            operator delete(v37[0]);
          }
        }

        else
        {
          *buf = 136315650;
          v44 = v25;
          v45 = 1024;
          v46 = 271;
          v47 = 2080;
          v48 = "<no dictionary>";
          _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] Negotiate: %s", buf, 0x1Cu);
        }
      }

      v34 = cf;
      if (cf)
      {
LABEL_61:
        CFRelease(v34);
      }
    }
  }

  else
  {
    AHAL_DSP::ADMDict_ConfigurationChangeRequest::last_dictionary(v37, *this[33]);
    v13 = v37[0];
    v6 = v13;
    if (v13)
    {
      CFRelease(v13);
      v14 = [v6 description];
      applesauce::CF::StringRef::from_ns(&cf, v14);

      v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v16 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v15);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = *v17;
        AMCP::Log::Scope::get_os_log_t(*v17);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      else
      {
        v19 = *v17;
        AMCP::Log::Scope::get_os_log_t(*v17);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 0;
        v28 = 0;
        v29 = 47;
        do
        {
          v30 = &aLibraryCachesC_52[v27];
          if (v29 == 47)
          {
            v28 = &aLibraryCachesC_52[v27];
          }

          v29 = v30[1];
          if (!v30[1])
          {
            break;
          }

          v24 = v27++ >= 0xFFF;
        }

        while (!v24);
        if (v28)
        {
          v31 = v28 + 1;
        }

        else
        {
          v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_util_nego_adapt.mm";
        }

        if (cf)
        {
          applesauce::CF::convert_as<std::string,0>(v37, cf);
          v32 = v39;
          if (v39 == 1)
          {
            *__p = *v37;
            v41 = v38;
            v37[1] = 0;
            v38 = 0;
            v37[0] = 0;
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "");
          }

          v35 = __p;
          if (v41 < 0)
          {
            v35 = __p[0];
          }

          *buf = 136315650;
          v44 = v31;
          v45 = 1024;
          v46 = 281;
          v47 = 2080;
          v48 = v35;
          _os_log_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] Adapt: %s", buf, 0x1Cu);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          if (v32 && SHIBYTE(v38) < 0)
          {
            operator delete(v37[0]);
          }
        }

        else
        {
          *buf = 136315650;
          v44 = v31;
          v45 = 1024;
          v46 = 281;
          v47 = 2080;
          v48 = "<no dictionary>";
          _os_log_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] Adapt: %s", buf, 0x1Cu);
        }
      }

      v34 = cf;
      if (cf)
      {
        goto LABEL_61;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1DE3454E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::from_ns(applesauce::CF::StringRef *this, NSString *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFStringGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_1DE345614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::SPIPluginImpl::re_adapt_new_buffer_size(AHAL_DSP::SPIPluginImpl *this, int a2)
{
  v51[3] = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v21 = 0;
    v22 = 0;
    v23 = 47;
    do
    {
      v24 = &aLibraryCachesC_53[v21];
      if (v23 == 47)
      {
        v22 = &aLibraryCachesC_53[v21];
      }

      v23 = v24[1];
      if (!v24[1])
      {
        break;
      }
    }

    while (v21++ < 0xFFF);
    if (v22)
    {
      v26 = v22 + 1;
    }

    else
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-classic/ahal_dsp_spi_plugin_impl.cpp";
    }

    v27 = this + 24;
    if (*(this + 47) < 0)
    {
      if (*(this + 4))
      {
        v27 = *v27;
      }

      else
      {
        v27 = "[adm]";
      }
    }

    else if (!*(this + 47))
    {
      v27 = "[adm]";
    }

    *buf = 136315906;
    *&buf[4] = v26;
    *&buf[12] = 1024;
    *&buf[14] = 377;
    v44 = 2080;
    v45 = v27;
    v46 = 1024;
    v47 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %s Asked to adapt new size %d", buf, 0x22u);
  }

  v8 = *(this + 20);
  if (v8)
  {
    v9 = *v8;
    v11 = *(v9 + 120);
    v10 = *(v9 + 128);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v12 = atomic_load(this + 2);
      if (v12 == 1)
      {
        DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(buf, v11);
        v49[92] = a2;
        v50 = 1;
        v13 = *(this + 14);
        DSP_Host_Types::AdaptRequest::AdaptRequest(&v28, v11);
        (*(*v13 + 32))(&v35, v13, &v28, *(this + 28));
        v28 = &unk_1F598DC40;
        v42 = &v34;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v42);
        DSP_Host_Types::IOContextDescription::~IOContextDescription(&v33);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v32);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v31);
        v28 = &unk_1F598DC90;
        if (v30 == 1 && cf)
        {
          CFRelease(cf);
        }

        if (v41)
        {
          v35 = &unk_1F598EAC8;
          if (__p)
          {
            v40 = __p;
            operator delete(__p);
          }

          DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v38);
          v35 = &unk_1F598EB08;
          if (v37 == 1 && v36)
          {
            CFRelease(v36);
          }

          v14 = 0;
        }

        else
        {
          v15 = *(this + 20);
          if (v15)
          {
            v16 = *v15;
            v18 = *(*v15 + 120);
            v17 = *(v16 + 128);
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v18)
            {
              *(v18 + 440) = a2;
              *(v18 + 444) = 1;
            }

            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }
          }

          v35 = &unk_1F598EAC8;
          if (__p)
          {
            v40 = __p;
            operator delete(__p);
          }

          DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v38);
          v35 = &unk_1F598EB08;
          if (v37 == 1 && v36)
          {
            CFRelease(v36);
          }

          v14 = 1;
        }

        *buf = &unk_1F598DC40;
        v28 = v51;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v28);
        DSP_Host_Types::IOContextDescription::~IOContextDescription(v49);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v48);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((&v45 + 4));
        *buf = &unk_1F598DC90;
        if (buf[16] == 1 && *&buf[8])
        {
          CFRelease(*&buf[8]);
        }
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1DE345AB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

DSP_Host_Types::ConfigurationChangeRequest *DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(DSP_Host_Types::ConfigurationChangeRequest *this, const DSP_Host_Types::ConfigurationChangeRequest *a2)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F598DC40;
  std::string::basic_string[abi:ne200100]<0>(__p, "is activation");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 3, __p);
  *(this + 3) = &unk_1F598DCE8;
  *(this + 20) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INTERNAL_is_simulated");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 6, __p);
  *(this + 6) = &unk_1F598DCE8;
  *(this + 32) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  DSP_Host_Types::IOContextDescription::IOContextDescription((this + 72), "io context description");
  *(this + 86) = 0;
  *(this + 42) = 0u;
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(this, a2);
  return this;
}

void sub_1DE345C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((v15 + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v17);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v16);
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::~DSP_Host_DictionaryData(v15);
  _Unwind_Resume(a1);
}

DSP_Host_Types::AdaptRequest *DSP_Host_Types::AdaptRequest::AdaptRequest(DSP_Host_Types::AdaptRequest *this, const DSP_Host_Types::ConfigurationChangeRequest *a2)
{
  v4 = DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(this);
  *v4 = &unk_1F598AC58;
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v4, a2);
  return this;
}

void DSP_Host_Types::ConfigurationChangeRequest::~ConfigurationChangeRequest(DSP_Host_Types::ConfigurationChangeRequest *this)
{
  *this = &unk_1F598DC40;
  v3 = (this + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DC90;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

{
  *this = &unk_1F598DC40;
  v3 = (this + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DC90;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

{
  *this = &unk_1F598DC40;
  v3 = (this + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DC90;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(uint64_t a1, uint64_t a2)
{
  std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<applesauce::CF::StringRef,false> const&>(a1 + 8, *(a2 + 8), *(a2 + 16));
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a2 + 24))(a2, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v5, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  (*(*a1 + 32))(a1, &v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return a1;
}

void std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<applesauce::CF::StringRef,false> const&>(uint64_t a1, CFTypeRef cf, unsigned __int8 a3)
{
  if (*(a1 + 8) == a3)
  {
    if (*(a1 + 8))
    {
      v4 = *a1;
      *a1 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      v5 = *a1;
      if (*a1)
      {
        CFRelease(v5);
      }

      v6 = 0;
    }

    else
    {
      std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(a1, cf);
      v6 = 1;
    }

    *(a1 + 8) = v6;
  }
}

void non-virtual thunk toAHAL_DSP::SPIPluginImpl::~SPIPluginImpl(AHAL_DSP::SPIPluginImpl *this)
{
  AHAL_DSP::SPIPluginImpl::~SPIPluginImpl((this - 16));

  JUMPOUT(0x1E12C1730);
}

{
  AHAL_DSP::SPIPluginImpl::~SPIPluginImpl((this - 16));
}

void AHAL_DSP::SPIPluginImpl::~SPIPluginImpl(AHAL_DSP::SPIPluginImpl *this)
{
  *this = &unk_1F5967500;
  *(this + 2) = &unk_1F5967590;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 6);
      if (v4)
      {
        (*(*v4 + 88))(&v17);
        AHAL_DSP::SPIUtilNegotiateAdapt::reset_modifiers(&v17);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 26);
  *(this + 25) = 0;
  *(this + 26) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 13);
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<HAL_DSP_IOCallbacks>::reset[abi:ne200100](this + 28, 0);
  std::unique_ptr<AHAL_DSP::PluginIOHelper>::reset[abi:ne200100](this + 27, 0);
  v8 = *(this + 26);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 23));
  v9 = *(this + 21);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 19);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 13);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 11);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 9);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(this + 7);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  AHAL_DSP::SPIPluginImpl::~SPIPluginImpl(this);

  JUMPOUT(0x1E12C1730);
}

const char *AHAL_DSP::SPIPluginImpl::get_logging_tag(AHAL_DSP::SPIPluginImpl *this)
{
  if (*(this + 47) < 0)
  {
    if (*(this + 4))
    {
      return *(this + 3);
    }

    else
    {
      return "[adm]";
    }
  }

  else if (*(this + 47))
  {
    return this + 24;
  }

  else
  {
    return "[adm]";
  }
}

void AHAL_DSP::SPIPluginImpl::on_dsp_property_change_event(AHAL_DSP::SPIPluginImpl *this, const AudioObjectPropertyAddress *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(this + 6))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1DE346294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::SPIPluginImpl::process_REALTIME(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 12));
  if ((v2 & 1) == 0)
  {
    return 2;
  }

  v5 = atomic_load((a1 + 8));
  if (v5 == 1)
  {
    v6 = *(a1 + 200);
    if (v6 && AHAL_DSP::BufferSizeChangeSynchronizer::maybe_enque_adapt_REALTIME(v6, *(a2 + 64)))
    {
      AHAL_DSP::PluginGenericImpl::process_REALTIME(a1, a2);
      return 0;
    }

    if (!*(a1 + 216))
    {
      return 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(a1 + 48);
        if (v11)
        {
          (*(*v11 + 24))(v11, a1 + 232);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    AHAL_DSP::PluginIOHelper::load_from_REALTIME(*(a1 + 216), a2);
    v12 = *(a1 + 216);
    std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(*(a1 + 224) + 56), *(v12 + 200), v12, *(v12 + 208), *(v12 + 216), *(v12 + 224), *(v12 + 232));
    result = *(a1 + 56);
    if (result)
    {
      result = std::__shared_weak_count::lock(result);
      if (result)
      {
        v13 = result;
        v14 = *(a1 + 48);
        if (v14)
        {
          (*(*v14 + 24))(v14, a1 + 248);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        return 0;
      }
    }
  }

  else
  {

    return AHAL_DSP::PluginGenericImpl::process_REALTIME(a1, a2);
  }

  return result;
}

uint64_t AHAL_DSP::SPIPluginImpl::unlock_processing(atomic_uchar *this)
{
  if ((*(*this + 72))(this))
  {
    v2 = 0;
    atomic_exchange(this + 12, 0);
  }

  else
  {
    v2 = 2;
  }

  v3 = *(this + 7);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 6);
      if (v6)
      {
        v7 = *(this + 28);
        if (v7)
        {
          if (*(v7 + 120))
          {
            v8 = (*(*v6 + 48))(v6);
            if ((v8 & 0x100000000) != 0)
            {
              v9 = v8;
            }

            else
            {
              v9 = 0;
            }

            std::function<void ()>::operator()(*(v7 + 152), v9);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v2;
}

uint64_t AHAL_DSP::SPIPluginImpl::lock_processing(atomic_uchar *this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 14))
  {
    v2 = AHAL_DSP::SPIPluginImpl::negotiate_host_modifiers(this);
    v3 = *(this + 7);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4 && !v2 && *(this + 6))
      {
        operator new();
      }
    }

    else
    {
      v4 = 0;
    }

    AHAL_DSP::PluginGenericImpl::set_processing_mode(this, 0);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v9 = (*(*this + 72))(this);
    result = 1;
    if ((v9 & 1) == 0)
    {
      atomic_exchange(this + 12, 1u);
      result = *(this + 7);
      if (result)
      {
        result = std::__shared_weak_count::lock(result);
        if (result)
        {
          v11 = result;
          v12 = *(this + 6);
          if (v12)
          {
            v13 = *(this + 28);
            if (v13)
            {
              if (*(v13 + 120))
              {
                v14 = (*(*v12 + 48))(v12);
                if ((v14 & 0x100000000) != 0)
                {
                  v15 = v14;
                }

                else
                {
                  v15 = 0;
                }

                std::function<void ()>::operator()(*(v13 + 120), v15);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v19 = 0;
      v20 = 47;
      do
      {
        v21 = &aLibraryCachesC_53[v18];
        if (v20 == 47)
        {
          v19 = &aLibraryCachesC_53[v18];
        }

        v20 = v21[1];
        if (!v21[1])
        {
          break;
        }
      }

      while (v18++ < 0xFFF);
      if (v19)
      {
        v23 = v19 + 1;
      }

      else
      {
        v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-classic/ahal_dsp_spi_plugin_impl.cpp";
      }

      v24 = this + 24;
      if (this[47] < 0)
      {
        if (*(this + 4))
        {
          v24 = *v24;
        }

        else
        {
          v24 = "[adm]";
        }
      }

      else if (!this[47])
      {
        v24 = "[adm]";
      }

      buf = 136315650;
      *buf_4 = v23;
      v27 = 1024;
      v28 = 302;
      v29 = 2080;
      v30 = v24;
      _os_log_debug_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %s There is no DSP instance for processing.", &buf, 0x1Cu);
    }

    v16 = (*(*this + 72))(this);
    result = 1;
    if ((v16 & 1) == 0)
    {
      atomic_exchange(this + 12, 1u);
LABEL_29:
      result = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3476C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::~__shared_weak_count(v36);
  operator delete(v39);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::SPIPluginImpl::negotiate_host_modifiers(AHAL_DSP::SPIPluginImpl *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 6))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return 1852797029;
}

void sub_1DE3482C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, std::__shared_weak_count *a47)
{
  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AHAL_DSP::SPIUtilNegotiateAdapt>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::SPIPluginImpl::dsp_properties@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  if (v2)
  {
    v3 = *(this + 104);
    *a2 = v2;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t AHAL_DSP::SPIPluginImpl::configuration_properties@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 80))
  {
    AHAL_DSP::ProcessPropertySetConfiguration::clone(&v2);
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

uint64_t AHAL_DSP::SPIPluginImpl::configure_plugin(uint64_t a1, uint64_t a2)
{
  v49[5] = *MEMORY[0x1E69E9840];
  v2 = atomic_load((a1 + 12));
  if (v2)
  {
LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  v5 = *a2;
  if (!*a2)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = **v5;
  if (!v7)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_8:
  v9 = *(a1 + 88);
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    v7 = *(a1 + 80);
  }

  if (v7)
  {
    AHAL_DSP::ProcessPropertySetConfiguration::clone(cf);
  }

  v10 = atomic_load((a1 + 12));
  if (v10)
  {
    goto LABEL_13;
  }

  v14 = *(a1 + 104);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    AHAL_DSP::ProcessPropertySetConfiguration::calculate_net_offloads(cf, v16);
    v17 = *cf;
    v19 = *cf && (v18 = *(*cf + 16)) != 0 && CFDictionaryGetCount(v18) && !AHAL_DSP::OffloadDictionary::has_all_id(v17);
    if (*&cf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&cf[8]);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 56);
  if (v20 && (v21 = std::__shared_weak_count::lock(v20)) != 0)
  {
    v22 = v21;
    if (*(a1 + 48))
    {
      v49[0] = *(a1 + 48);
      v49[1] = v21;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      AHAL_DSP::SPIUtilRequest::util_primary_stream_from(&__p, v49);
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (__p.__r_.__value_.__r.__words[0])
      {
        v23 = ((*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]) >> 32) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v23) = 0;
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
LABEL_35:
  v24 = *(a1 + 88);
  v41[0] = *(a1 + 80);
  v41[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
  }

  AHAL_DSP::SPIUtilRequest::util_semantic_list_from(cf, v41);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *&cf[16];
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*&cf[8]);
  size = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v27 = v23 | v19;
  if (v25)
  {
    v27 = 1;
  }

  if (v27)
  {
    DSP_Host_Types::CreateProcessorConfiguration::CreateProcessorConfiguration(cf);
    v28 = *(a1 + 56);
    if (v28)
    {
      if (std::__shared_weak_count::lock(v28))
      {
        v29 = *(a1 + 48);
        if (v29)
        {
          (*(*v29 + 32))(&__p, *(a1 + 48));
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v47, &__p);
          if (v43 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          (*(*v29 + 40))(&__p, v29);
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v48, &__p);
          if (v43 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    __p.__r_.__value_.__r.__words[0] = cf;
    v44 = 0;
    v45 = 0;
    operator new();
  }

  v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v30 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(size);
  }

  v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = *v32;
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  else
  {
    v33 = *v32;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 0;
    v35 = 0;
    v36 = 47;
    do
    {
      v37 = &aLibraryCachesC_53[v34];
      if (v36 == 47)
      {
        v35 = &aLibraryCachesC_53[v34];
      }

      v36 = v37[1];
      if (!v37[1])
      {
        break;
      }
    }

    while (v34++ < 0xFFF);
    if (v35)
    {
      v39 = v35 + 1;
    }

    else
    {
      v39 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-classic/ahal_dsp_spi_plugin_impl.cpp";
    }

    v40 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      if (*(a1 + 32))
      {
        v40 = *v40;
      }

      else
      {
        v40 = "[adm]";
      }
    }

    else if (!*(a1 + 47))
    {
      v40 = "[adm]";
    }

    *cf = 136315650;
    *&cf[4] = v39;
    *&cf[12] = 1024;
    *&cf[14] = 123;
    *&cf[18] = 2080;
    *&cf[20] = v40;
    _os_log_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] %s No DSP processing specified.", cf, 0x1Cu);
  }

  v11 = 5;
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1DE348C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  DSP_Host_Types::CreateProcessorConfiguration::~CreateProcessorConfiguration(&a24);
  _Unwind_Resume(a1);
}

DSP_Host_Types::CreateProcessorConfiguration *DSP_Host_Types::CreateProcessorConfiguration::CreateProcessorConfiguration(DSP_Host_Types::CreateProcessorConfiguration *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5985940;
  std::string::basic_string[abi:ne200100]<0>(__p, "client bundle identifier");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 3, __p);
  *(this + 3) = &unk_1F5985C78;
  *(this + 40) = 0;
  *(this + 64) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "client unique identifier");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 9, __p);
  *(this + 9) = &unk_1F5985C78;
  *(this + 88) = 0;
  *(this + 112) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1DE348E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  DSP_Dictionariable::SingleKvp<std::string>::~SingleKvp(v16);
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::CreateProcessorConfiguration>::~DSP_Host_DictionaryData(v15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(DSP_Host_Types::MutationRequestConfiguration const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DSP_Host_Types::CreateProcessorConfiguration::~CreateProcessorConfiguration(DSP_Host_Types::CreateProcessorConfiguration *this)
{
  *this = &unk_1F5985940;
  v2 = (this + 72);
  *(this + 9) = &unk_1F5985C78;
  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985E58;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

{
  *this = &unk_1F5985940;
  v2 = (this + 72);
  *(this + 9) = &unk_1F5985C78;
  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985E58;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985940;
  v2 = (this + 72);
  *(this + 9) = &unk_1F5985C78;
  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985E58;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::CreateProcessorConfiguration>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE349174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::CreateProcessorConfiguration>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void *std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE349570(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<std::__bind<void (AHAL_DSP::SPIPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::SPIPluginImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::SPIPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::SPIPluginImpl*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIMN8AHAL_DSP13SPIPluginImplEFvRK26AudioObjectPropertyAddressEJPS2_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (AHAL_DSP::SPIPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::SPIPluginImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::SPIPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::SPIPluginImpl*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind<void (AHAL_DSP::SPIPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::SPIPluginImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (AHAL_DSP::SPIPluginImpl::*)(AudioObjectPropertyAddress const&),AHAL_DSP::SPIPluginImpl*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5967668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::CreateProcessorConfiguration>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985E58;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AHAL_DSP::SPIPluginImpl *,std::shared_ptr<AHAL_DSP::SPIPluginImpl>::__shared_ptr_default_delete<AHAL_DSP::SPIPluginImpl,AHAL_DSP::SPIPluginImpl>,std::allocator<AHAL_DSP::SPIPluginImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN8AHAL_DSP13SPIPluginImplEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AHAL_DSP::SPIPluginImpl *,std::shared_ptr<AHAL_DSP::SPIPluginImpl>::__shared_ptr_default_delete<AHAL_DSP::SPIPluginImpl,AHAL_DSP::SPIPluginImpl>,std::allocator<AHAL_DSP::SPIPluginImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AHAL_DSP::SPIPluginImpl *,std::shared_ptr<AHAL_DSP::SPIPluginImpl>::__shared_ptr_default_delete<AHAL_DSP::SPIPluginImpl,AHAL_DSP::SPIPluginImpl>,std::allocator<AHAL_DSP::SPIPluginImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::deserialize_from(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 48));
  v4 = 0;
  v32 = a1;
  do
  {
    v5 = *(a1 + 360 + v4);
    if ((*(v5 + 47) & 0x8000000000000000) != 0)
    {
      if (!v5[4])
      {
        goto LABEL_18;
      }
    }

    else if (!*(v5 + 47))
    {
      goto LABEL_18;
    }

    v6 = *(v5 + 2);
    if (v6 == 1986622324 || v6 == 1983996971)
    {
      v8 = (*(*a2 + 32))(a2, v5 + 3);
      if ((v8 & 0x100000000) != 0)
      {
        v9 = **v5;
      }
    }

    else if (v6 == 1685278562)
    {
      (*(*a2 + 40))(cf, a2, v5 + 3);
      if (cf[8])
      {
        v10 = **v5;
        AHAL_DSP::OffloadDictionary::deep_copy_from((v11 + 56), *cf);
        if (cf[8])
        {
          if (*cf)
          {
            CFRelease(*cf);
          }
        }
      }
    }

LABEL_18:
    v4 += 8;
  }

  while (v4 != 32);
  std::string::basic_string[abi:ne200100]<0>(cf, "device dsp offloads input");
  (*(*a2 + 40))(&v33, a2, cf);
  if (SBYTE3(v40) < 0)
  {
    operator delete(*cf);
  }

  if (v33.__r_.__value_.__s.__data_[8] == 1)
  {
    AHAL_DSP::OffloadDictionary::deep_copy_from((a1 + 424), v33.__r_.__value_.__l.__data_);
    if (*(a1 + 416) == 1)
    {
      if (*(a1 + 415) < 0)
      {
        operator delete(*(a1 + 392));
      }

      *(a1 + 416) = 0;
    }
  }

  if (v33.__r_.__value_.__s.__data_[8] == 1 && v33.__r_.__value_.__r.__words[0])
  {
    CFRelease(v33.__r_.__value_.__l.__data_);
  }

  v12 = *(a1 + 528);
  if ((*(v12 + 47) & 0x8000000000000000) != 0)
  {
    if (*(v12 + 32))
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (!*(v12 + 47))
    {
      goto LABEL_71;
    }

LABEL_33:
    (*(*a2 + 40))(&v34, a2, v12 + 24);
    if (v35 == 1)
    {
      v13 = AHAL_DSP::OffloadDictionary::deep_copy_from((v12 + 56), v34);
      v14 = 0;
      while (1)
      {
        v15 = *(a1 + 360 + v14);
        if (*(v15 + 8) == *(v12 + 8) && *(v15 + 16) == *(v12 + 16))
        {
          break;
        }

        v14 += 8;
        if (v14 == 32)
        {
          goto LABEL_68;
        }
      }

      if (*(v15 + 49) == 1)
      {
        v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v17 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v13);
        }

        v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = *v19;
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v20 = *v19;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 0;
          v22 = 0;
          v23 = 47;
          do
          {
            v24 = &aLibraryCachesC_54[v21];
            if (v23 == 47)
            {
              v22 = &aLibraryCachesC_54[v21];
            }

            v23 = v24[1];
            if (!v24[1])
            {
              break;
            }
          }

          while (v21++ < 0xFFF);
          if (v22)
          {
            v26 = v22 + 1;
          }

          else
          {
            v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-common/ahal_dsp_plugin_property_set_configuration.cpp";
          }

          v27 = *(v12 + 8);
          v28 = bswap32(v27);
          *&cf[1] = v28;
          if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v33, v27);
          }

          else
          {
            strcpy(&cf[5], "'");
            cf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v33, cf);
          }

          v29 = &v33;
          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = v33.__r_.__value_.__r.__words[0];
          }

          *cf = 136315650;
          *&cf[4] = v26;
          v37 = 1024;
          v38 = 398;
          v39 = 2080;
          v40 = v29;
          _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [ahal_dsp] %s is overridden by aggregate description.", cf, 0x1Cu);
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }
        }

        (*(*v15 + 16))(v15, v12);
      }
    }

LABEL_68:
    if (v35 == 1 && v34)
    {
      CFRelease(v34);
    }
  }

LABEL_71:
  std::mutex::unlock((v32 + 48));
  v30 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE349DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::serialize_to(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  AHAL_DSP::ProcessPropertySetConfiguration::calculate_net_offloads(&v29, a1);
  v4 = v29;
  if (v29 && (v5 = v29[2]) != 0 && CFDictionaryGetCount(v5) && !AHAL_DSP::OffloadDictionary::has_all_id(v4))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "device dsp offloads input");
    v6 = (*(*a2 + 24))(a2, __p, v4 + 16);
    if (v34 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v6 = 1;
  }

  std::mutex::lock((a1 + 48));
  for (i = 0; i != 32; i += 8)
  {
    v9 = *(a1 + 360 + i);
    if (*(v9 + 49) != 1)
    {
      continue;
    }

    if ((*(v9 + 47) & 0x8000000000000000) != 0)
    {
      if (!v9[4])
      {
        continue;
      }
    }

    else if (!*(v9 + 47))
    {
      continue;
    }

    v10 = *(v9 + 2);
    if (v10 == 1986622324 || v10 == 1983996971)
    {
      v12 = **v9;
      Count = (*(*a2 + 16))(a2, v9 + 3, v13[13]);
LABEL_18:
      v6 &= Count;
      continue;
    }

    if (v10 == 1685278562)
    {
      v14 = **v9;
      Count = *v15;
      if (*v15)
      {
        Count = CFDictionaryGetCount(Count);
        if (Count)
        {
          Count = (*(*a2 + 24))(a2, v9 + 3, v15);
          goto LABEL_18;
        }
      }
    }
  }

  if (v6)
  {
    v16 = 0;
  }

  else
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(Count);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v24 = 0;
      v25 = 47;
      do
      {
        v26 = &aLibraryCachesC_54[v23];
        if (v25 == 47)
        {
          v24 = &aLibraryCachesC_54[v23];
        }

        v25 = v26[1];
        if (!v26[1])
        {
          break;
        }
      }

      while (v23++ < 0xFFF);
      if (v24)
      {
        v28 = v24 + 1;
      }

      else
      {
        v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-common/ahal_dsp_plugin_property_set_configuration.cpp";
      }

      *__p = 136315394;
      *&__p[4] = v28;
      v32 = 1024;
      v33 = 327;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Failed to serialize one or more of the configuration properties.", __p, 0x12u);
    }

    v16 = 6;
  }

  std::mutex::unlock((a1 + 48));
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1DE34A1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AHAL_DSP::ProcessPropertySetConfiguration::calculate_net_offloads(AHAL_DSP::ProcessPropertySetConfiguration *this, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    *this = 0;
    *(this + 1) = 0;
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v8 = 0;
  v10 = 0;
  theDict = 0;
  v9 = 0;
  std::mutex::lock((a2 + 48));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&__p, (a2 + 392));
  AHAL_DSP::OffloadDictionary::deep_copy_from(&v9, *(a2 + 440));
  std::mutex::unlock((a2 + 48));
  if (theDict && CFDictionaryGetCount(theDict))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN8AHAL_DSP17OffloadDictionaryENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  *this = 0;
  *(this + 1) = 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v4)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_16:
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE34AD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_free_exception(v31);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&__p);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a22);
  AHAL_DSP::CF::Dictionary_Builder::~Dictionary_Builder(&a12);
  __p = (v32 - 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::unique_ptr<AHAL_DSP::OffloadDictionary>::~unique_ptr[abi:ne200100](&a21);
  AHAL_DSP::ProcessPropertySetConfiguration::OffloadsRequested::~OffloadsRequested(&a14);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void AHAL_DSP::ProcessPropertySetConfiguration::util_get_available_offloads(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return;
  }

  LOBYTE(cf) = 0;
  v23 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v7 = Mutable;
  v25 = Mutable;
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (!v9)
  {
    v11 = 0;
    if (!Mutable)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  v27 = v11;
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v7)
  {
LABEL_15:
    CFDictionaryAddValue(v7, @"device model uid", v11);
  }

LABEL_16:
  if (v11)
  {
    CFRelease(v11);
  }

  AHAL_DSP::CF::Dictionary_Builder::get_dictionary(&propertyList, v7);
  LOBYTE(v27) = 0;
  LOBYTE(v28) = 0;
  if (propertyList)
  {
    Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v13 = Data;
    if (Data)
    {
      v21 = Data;
      v14 = CFGetTypeID(Data);
      if (v14 != CFDataGetTypeID())
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v20, "Could not construct");
        __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      LOBYTE(v28) = 1;
      v27 = v13;
    }
  }

  std::__optional_storage_base<applesauce::CF::DataRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DataRef,false>>(&cf, &v27);
  if (v28 == 1 && v27)
  {
    CFRelease(v27);
  }

  if (propertyList)
  {
    CFRelease(propertyList);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v23 == 1)
  {
    v15 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    LOBYTE(v27) = 0;
    LOBYTE(v28) = 0;
    if (((*(*a3 + 16))(a3, "aOsdtpni") & 1) != 0 && (v26 = (*(*a3 + 32))(a3, "aOsdtpni", 8, v15), v26 == 8) && (v25 = 0, !(*(*a3 + 40))(a3, "aOsdtpni", 8, &v26, &v25, 8, v15)) && v25)
    {
      applesauce::CF::DictionaryRef::from_get(&propertyList, v25);
      v16 = propertyList;
      v17 = 1;
      LOBYTE(v28) = 1;
      v27 = propertyList;
      CFRelease(v25);
      v21 = v16;
      if (!v15)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v17 = 0;
      LOBYTE(v21) = 0;
      if (!v15)
      {
LABEL_40:
        if (v21)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v18 == 1)
        {
          _ZNSt3__115allocate_sharedB8ne200100IN8AHAL_DSP17OffloadDictionaryENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        if (v23)
        {
          if (cf)
          {
            CFRelease(cf);
          }
        }

        return;
      }
    }

    CFRelease(v15);
    goto LABEL_40;
  }
}

void sub_1DE34B478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::optional<applesauce::CF::DictionaryRef>::~optional(v2 - 64);
  std::optional<applesauce::CF::DataRef>::~optional(va);
  std::optional<applesauce::CF::DataRef>::~optional(va1);
  _Unwind_Resume(a1);
}

void AHAL_DSP::ProcessPropertySetConfiguration::OffloadsRequested::~OffloadsRequested(AHAL_DSP::ProcessPropertySetConfiguration::OffloadsRequested *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__optional_storage_base<applesauce::CF::DataRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DataRef,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      *a1 = *a2;
      *a2 = v3;
    }
  }

  else if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a1 + 8) = 1;
  }
}

void std::__shared_ptr_emplace<AHAL_DSP::OffloadDictionary>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<AHAL_DSP::OffloadDictionary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967AA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void non-virtual thunk toAHAL_DSP::ProcessPropertySetConfiguration::~ProcessPropertySetConfiguration(AHAL_DSP::ProcessPropertySetConfiguration *this)
{
  AHAL_DSP::ProcessPropertySetConfiguration::~ProcessPropertySetConfiguration((this - 8));

  JUMPOUT(0x1E12C1730);
}

{
  AHAL_DSP::ProcessPropertySetConfiguration::~ProcessPropertySetConfiguration((this - 8));
}

void AHAL_DSP::ProcessPropertySetConfiguration::~ProcessPropertySetConfiguration(AHAL_DSP::ProcessPropertySetConfiguration *this)
{
  *this = &unk_1F5967830;
  *(this + 1) = &unk_1F59678A0;
  AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::~LocalProperty(this + 448);
  v2 = *(this + 55);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 54);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 416) == 1 && *(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  *(this + 38) = &unk_1F5967808;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 31) = &unk_1F5967808;
  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  *(this + 24) = &unk_1F5967808;
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::~LocalProperty(this + 112);
  std::mutex::~mutex((this + 48));
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

{
  AHAL_DSP::ProcessPropertySetConfiguration::~ProcessPropertySetConfiguration(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::~LocalProperty(uint64_t a1)
{
  *a1 = &unk_1F5967928;
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_1F5967808;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

BOOL AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::copy_data(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  v5 = v4;
  if (v4)
  {
    AHAL_DSP::OffloadDictionary::deep_copy_from((a1 + 56), v4[9]);
  }

  return v5 != 0;
}

void AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::~LocalProperty(uint64_t a1)
{
  AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::~LocalProperty(a1);

  JUMPOUT(0x1E12C1730);
}

void AHAL_DSP::ProcessPropertySetConfiguration::set_offloads_requested(char *a1, int a2, __CFString **a3, const std::string *a4)
{
  if (!a2)
  {
    return;
  }

  v5 = (a1 + 392);
  if (*a3)
  {
    AHAL_DSP::OffloadDictionary::deep_copy_from((a1 + 424), *a3);
    if (a1[416] == a4[1].__r_.__value_.__s.__data_[0])
    {
      if (a1[416])
      {

        std::string::operator=(v5, a4);
      }

      return;
    }

    if (!a1[416])
    {
      if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v5, a4->__r_.__value_.__l.__data_, a4->__r_.__value_.__l.__size_);
      }

      else
      {
        v7 = *&a4->__r_.__value_.__l.__data_;
        v5->__r_.__value_.__r.__words[2] = a4->__r_.__value_.__r.__words[2];
        *&v5->__r_.__value_.__l.__data_ = v7;
      }

      a1[416] = 1;
      return;
    }
  }

  else
  {
    AHAL_DSP::OffloadDictionary::make_empty((a1 + 424));
    if (a1[416] != 1)
    {
      return;
    }
  }

  if (a1[415] < 0)
  {
    operator delete(v5->__r_.__value_.__l.__data_);
  }

  a1[416] = 0;
}

void AHAL_DSP::ProcessPropertySetConfiguration::clone(AHAL_DSP::ProcessPropertySetConfiguration *this)
{
  AHAL_DSP::ProcessPropertySetConfiguration::clone(&v1);
}

{
  operator new();
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::ProcessPropertySetConfiguration(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = &unk_1F5967830;
  *(a1 + 8) = &unk_1F59678A0;
  *(a1 + 48) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v6 = a1 + 112;
  v24[0] = 0;
  v24[24] = 0;
  AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::LocalProperty(a1 + 112, &AHAL_DSP::ProcessPropertySetConfiguration::kDoNotSerialize, v24);
  std::string::basic_string[abi:ne200100]<0>(__p, "vocal isolation type");
  AHAL_DSP::ProcessPropertySetConfiguration::LocalPropertyCommon::LocalPropertyCommon(a1 + 192, 0x696E707476697374, 0, __p);
  *(a1 + 192) = &unk_1F5967950;
  *(a1 + 244) = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "voice activity detection enable");
  AHAL_DSP::ProcessPropertySetConfiguration::LocalPropertyCommon::LocalPropertyCommon(a1 + 248, 0x696E70747641642BLL, 0, __p);
  *(a1 + 248) = &unk_1F5967950;
  *(a1 + 300) = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  AHAL_DSP::ProcessPropertySetConfiguration::LocalPropertyCommon::LocalPropertyCommon(a1 + 304, 0x696E707476416453, 0, &AHAL_DSP::ProcessPropertySetConfiguration::kDoNotSerialize);
  *(a1 + 304) = &unk_1F5967950;
  *(a1 + 356) = 0;
  *(a1 + 360) = v6;
  *(a1 + 368) = a1 + 192;
  *(a1 + 376) = a1 + 248;
  *(a1 + 384) = a1 + 304;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "dsp offload bypass override");
  v21[0] = 0;
  v21[24] = 0;
  AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::LocalProperty(a1 + 448, __p, v21);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 528) = a1 + 448;
  for (i = 360; i != 392; i += 8)
  {
    *(*(a1 + i) + 49) = 1;
  }

  for (j = 360; j != 392; j += 8)
  {
    v9 = *(a1 + j);
    v10 = *(v9 + 8);
    v13 = v10 == 1685278562 || v10 == 1983996971 || v10 == 1986622324;
    *(v9 + 48) = v13;
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 40);
  *(a1 + 32) = v15;
  *(a1 + 40) = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v18 = *a2;
  v17 = a2[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(a1 + 24);
  *(a1 + 16) = v18;
  *(a1 + 24) = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return a1;
}

void sub_1DE34BFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::optional<AHAL_DSP::OffloadDictionary>::~optional(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  AHAL_DSP::ProcessPropertySetConfiguration::OffloadsRequested::~OffloadsRequested((v19 + 392));
  *(v19 + 304) = &unk_1F5967808;
  if (*(v19 + 351) < 0)
  {
    operator delete(*(v19 + 328));
  }

  *(v19 + 248) = &unk_1F5967808;
  if (*(v19 + 295) < 0)
  {
    operator delete(*(v19 + 272));
  }

  *(v19 + 192) = &unk_1F5967808;
  if (*(v19 + 239) < 0)
  {
    operator delete(*(v19 + 216));
  }

  AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::~LocalProperty(v21);
  std::mutex::~mutex(v20);
  v23 = *(v19 + 40);
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(v19 + 24);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_1DE34C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::optional<AHAL_DSP::OffloadDictionary>::~optional(va);
  JUMPOUT(0x1DE34C0D4);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<AHAL_DSP::OffloadDictionary>::LocalProperty(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = AHAL_DSP::ProcessPropertySetConfiguration::LocalPropertyCommon::LocalPropertyCommon(a1, 0x696E707464734F62, 0, a2);
  *v5 = &unk_1F5967928;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  if (*(a3 + 24) == 1)
  {
    AHAL_DSP::OffloadDictionary::deep_copy_from((v5 + 7), *(a3 + 16));
  }

  return a1;
}

void sub_1DE34C198(_Unwind_Exception *a1)
{
  AHAL_DSP::OffloadDictionary::~OffloadDictionary(v2);
  *v1 = &unk_1F5967808;
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::LocalPropertyCommon::LocalPropertyCommon(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_1F5967808;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t std::optional<AHAL_DSP::OffloadDictionary>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  return a1;
}

BOOL AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<unsigned int>::copy_data(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (v4)
  {
    *(a1 + 52) = v4[13];
  }

  return v4 != 0;
}

void AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<unsigned int>::~LocalProperty(uint64_t a1)
{
  *a1 = &unk_1F5967808;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::LocalProperty<unsigned int>::~LocalProperty(uint64_t a1)
{
  *a1 = &unk_1F5967808;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AHAL_DSP::OffloadDictionary::~OffloadDictionary(AHAL_DSP::OffloadDictionary *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::set_property_data(AHAL_DSP::ProcessPropertySetConfiguration *this, const AudioObjectPropertyAddress *a2, uint64_t a3, __CFString **a4, uint64_t a5, const void *a6)
{
  v13 = *(this + 2);
  v12 = *(this + 3);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13 && (*(*v13 + 16))(v13, a2))
  {
    v14 = (*(*v13 + 48))(v13, a2, a3, a4, a5, a6);
    goto LABEL_25;
  }

  v15 = 360;
  while (1)
  {
    v16 = *(this + v15);
    v17 = (v16 + 8);
    if (*(v16 + 1) == *&a2->mSelector && *(v16 + 4) == a2->mElement)
    {
      break;
    }

    v15 += 8;
    if (v15 == 392)
    {
      goto LABEL_24;
    }
  }

  if (v16[49] != 1)
  {
LABEL_24:
    v14 = 4;
    goto LABEL_25;
  }

  v14 = 4;
  if (a4 && (v16[48] & 1) != 0)
  {
    mSelector = v17->mSelector;
    if (v17->mSelector == 1986622324 || mSelector == 1983996971)
    {
      if (a3 != 4)
      {
        goto LABEL_25;
      }

      std::mutex::lock((this + 48));
      v21 = **v16;
      v23 = *a4;
      v24 = v22[13];
      v22[13] = v23;
      std::mutex::unlock((this + 48));
      if (v24 == v23)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (mSelector == 1685278562 && a3 == 8)
    {
      std::mutex::lock((this + 48));
      v26 = **v16;
      v28 = AHAL_DSP::OffloadDictionary::deep_copy_from_changed((v27 + 56), *a4);
      std::mutex::unlock((this + 48));
      if (!v28)
      {
LABEL_32:
        v14 = 0;
        goto LABEL_25;
      }

LABEL_31:
      AHAL_DSP::ProcessPropertySetConfiguration::on_dsp_property_change_event(this, v17);
      AHAL_DSP::ProcessPropertySetConfiguration::on_dsp_changed_event(this);
      goto LABEL_32;
    }
  }

LABEL_25:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v14;
}

void sub_1DE34C688(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 48));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void AHAL_DSP::ProcessPropertySetConfiguration::on_dsp_property_change_event(AHAL_DSP::ProcessPropertySetConfiguration *this, const AudioObjectPropertyAddress *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(this + 4))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1DE34C7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void AHAL_DSP::ProcessPropertySetConfiguration::on_dsp_changed_event(AHAL_DSP::ProcessPropertySetConfiguration *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 4))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1DE34C8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AHAL_DSP::PluginEventSimpleTyped>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5967A38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::get_property_data(AHAL_DSP::ProcessPropertySetConfiguration *this, const AudioObjectPropertyAddress *a2, uint64_t a3, unsigned int *a4, const __CFDictionary **a5, uint64_t a6, const void *a7)
{
  v15 = *(this + 2);
  v14 = *(this + 3);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v15 && (*(*v15 + 16))(v15, a2))
  {
    v16 = (*(*v15 + 40))(v15, a2, a3, a4, a5, a6, a7);
    goto LABEL_31;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(this + v17 + 360);
    if (*(v18 + 8) == *&a2->mSelector && *(v18 + 16) == a2->mElement)
    {
      break;
    }

    v17 += 8;
    if (v17 == 32)
    {
      v16 = 4;
      goto LABEL_31;
    }
  }

  if (*(v18 + 49))
  {
    v20 = *(this + v17 + 360);
  }

  else
  {
    v20 = 0;
  }

  v16 = 4;
  if (a5 && v20)
  {
    v21 = *(v20 + 2);
    if (v21 > 1983997010)
    {
      if (v21 != 1983997011 && v21 != 1986622324)
      {
        goto LABEL_31;
      }

LABEL_27:
      if (a3 >= 4)
      {
        std::mutex::lock((this + 48));
        *a4 = 4;
        v23 = **v20;
        std::mutex::unlock((this + 48));
        v16 = 0;
      }

      goto LABEL_31;
    }

    if (v21 != 1685278562)
    {
      if (v21 != 1983996971)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    if (a3 >= 8)
    {
      std::mutex::lock((this + 48));
      v24 = **v20;
      AHAL_DSP::OffloadDictionary::create_into((v25 + 56), a5);
    }
  }

LABEL_31:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v16;
}

void sub_1DE34CC0C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::get_property_data_size(AHAL_DSP::ProcessPropertySetConfiguration *this, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4)
{
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9 && (*(*v9 + 16))(v9, a2))
  {
    v10 = (*(*v9 + 32))(v9, a2, a3, a4);
    if (v8)
    {
LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v11 = 0;
    v12 = *&a2->mSelector;
    mElement = a2->mElement;
    while (1)
    {
      v14 = *(this + v11 + 360);
      if (v14[1] == v12 && *(v14 + 4) == mElement)
      {
        break;
      }

      v11 += 8;
      if (v11 == 32)
      {
        goto LABEL_18;
      }
    }

    if (*(v14 + 49) != 1)
    {
LABEL_18:
      v10 = 0;
      if (!v8)
      {
        return v10;
      }

      goto LABEL_19;
    }

    v16 = *v14;
    v17 = **v14;
    {
      v10 = 8;
      if (v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v19 = *v16;
      if (v8)
      {
        goto LABEL_19;
      }
    }
  }

  return v10;
}

void sub_1DE34CDE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::is_settable(AHAL_DSP::ProcessPropertySetConfiguration *this, const AudioObjectPropertyAddress *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5 && (*(*v5 + 16))(v5, a2))
  {
    v6 = (*(*v5 + 24))(v5, a2);
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = *(this + v7 + 360);
      if (*(v8 + 8) == *&a2->mSelector && *(v8 + 16) == a2->mElement)
      {
        break;
      }

      v7 += 8;
      if (v7 == 32)
      {
        goto LABEL_15;
      }
    }

    if (*(v8 + 49) == 1)
    {
      v6 = *(v8 + 48);
      goto LABEL_16;
    }

LABEL_15:
    v6 = 0;
  }

LABEL_16:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v6 & 1;
}

void sub_1DE34CF04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::has_property(AHAL_DSP::ProcessPropertySetConfiguration *this, const AudioObjectPropertyAddress *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4 && ((*(*v4 + 16))(v4, a2) & 1) != 0)
  {
    v6 = 1;
    if (!v5)
    {
      return v6 & 1;
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = *(this + v7 + 360);
      if (*(v8 + 8) == *&a2->mSelector && *(v8 + 16) == a2->mElement)
      {
        break;
      }

      v7 += 8;
      if (v7 == 32)
      {
        v6 = 0;
        if (v5)
        {
          goto LABEL_16;
        }

        return v6 & 1;
      }
    }

    v6 = *(v8 + 49);
    if (!v5)
    {
      return v6 & 1;
    }
  }

LABEL_16:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v6 & 1;
}

void sub_1DE34CFF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::get_vocal_isolation_type(AHAL_DSP::ProcessPropertySetConfiguration *this)
{
  if (*(this + 241) != 1)
  {
    return 0;
  }

  std::mutex::lock((this + 48));
  v2 = *(this + 61);
  std::mutex::unlock((this + 48));
  return v2 | 0x100000000;
}

uint64_t AHAL_DSP::ProcessPropertySetConfiguration::get_voice_activity_detection_enabled(AHAL_DSP::ProcessPropertySetConfiguration *this)
{
  if (*(this + 297) == 1)
  {
    std::mutex::lock((this + 48));
    v2 = *(this + 75) != 0;
    std::mutex::unlock((this + 48));
    v3 = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void AHAL_DSP::ProcessPropertySetConfiguration::util_create_dictionary_from_data_with_serialized_plist(AHAL_DSP::ProcessPropertySetConfiguration *this, const applesauce::CF::DataRef *a2)
{
  *this = 0;
  *(this + 8) = 0;
  if (a2)
  {
    v3 = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
    cf = v3;
    if (!v3)
    {
      goto LABEL_13;
    }

    v4 = CFGetTypeID(v3);
    if (v4 != CFStringGetTypeID() && v4 != CFDataGetTypeID() && v4 != CFNumberGetTypeID() && v4 != CFBooleanGetTypeID() && v4 != CFDateGetTypeID() && v4 != CFArrayGetTypeID() && v4 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (cf)
    {
      v5 = CFGetTypeID(cf);
      if (v5 != CFDictionaryGetTypeID())
      {
        v6 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v6, "Could not construct");
        __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *(this + 8) = 1;
      *this = cf;
    }

    else
    {
LABEL_13:
      *(this + 8) = 1;
      *this = 0;
    }
  }
}

void sub_1DE34D268(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void AHAL_DSP::CF::PropertyListRef::~PropertyListRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t *std::unique_ptr<AHAL_DSP::SPIUtilNegotiateAdapt::InternalData>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *(v2 + 136) = &unk_1F598EAC8;
    v3 = *(v2 + 184);
    if (v3)
    {
      *(v2 + 192) = v3;
      operator delete(v3);
    }

    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((v2 + 160));
    *(v2 + 136) = &unk_1F598EB08;
    if (*(v2 + 152) == 1)
    {
      v4 = *(v2 + 144);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    v5 = *(v2 + 128);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    *(v2 + 16) = &unk_1F598EA30;
    v8 = (v2 + 88);
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v8);
    v8 = (v2 + 64);
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v8);
    v8 = (v2 + 40);
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v8);
    *(v2 + 16) = &unk_1F598EA70;
    if (*(v2 + 32) == 1)
    {
      v6 = *(v2 + 24);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    v7 = *(v2 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

DSP_Host_Types::NegotiateRequest *DSP_Host_Types::NegotiateRequest::NegotiateRequest(DSP_Host_Types::NegotiateRequest *this, const DSP_Host_Types::ConfigurationChangeRequest *a2)
{
  v4 = DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(this);
  *v4 = &unk_1F5985AA8;
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v4, a2);
  return this;
}

void AHAL_DSP::SPIUtilNegotiateAdapt::reset_modifiers(uint64_t *a1)
{
  if (*a1)
  {
    AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_HostPrivateReferenceStreamDeviceUID>(&v2, *a1);
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamClientFacingChannelCount>(&v2, *a1);
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1DE34D658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Address::make_string_for_scope(AMCP::Address *this@<X0>, _BYTE *a2@<X8>, int8x8_t a3@<D0>)
{
  if (this > 1768845427)
  {
    switch(this)
    {
      case 0x696E7074:
        v3 = "Input";
        goto LABEL_16;
      case 0x6F757470:
        v3 = "Output";
        goto LABEL_16;
      case 0x70747275:
        v3 = "Pass Thru";
        goto LABEL_16;
    }
  }

  else
  {
    switch(this)
    {
      case 0:
        v3 = "Unused";
        goto LABEL_16;
      case 0x2A2A2A2A:
        v3 = "Wild Card";
        goto LABEL_16;
      case 0x676C6F62:
        v3 = "Global";
LABEL_16:
        std::string::basic_string[abi:ne200100]<0>(a2, v3);
        return;
    }
  }

  a3.i32[0] = bswap32(this);
  v4 = vzip1_s8(a3, a3);
  v5.i64[0] = 0x1F0000001FLL;
  v5.i64[1] = 0x1F0000001FLL;
  v6.i64[0] = 0x5F0000005FLL;
  v6.i64[1] = 0x5F0000005FLL;
  v7 = vbsl_s8(vmovn_s32(vcgtq_u32(v6, vsraq_n_s32(v5, vshlq_n_s32(vmovl_u16(v4), 0x18uLL), 0x18uLL))), v4, 0x2E002E002E002ELL);
  v9 = 4;
  LODWORD(__p) = vuzp1_s8(v7, v7).u32[0];
  BYTE4(__p) = 0;
  caulk::make_string("Scope '%s'", a2, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

void HALB_CFBundle::~HALB_CFBundle(HALB_CFBundle *this)
{
  HALB_CFBundle::~HALB_CFBundle(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5967B10;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
      *(this + 1) = 0;
    }
  }
}

CFDictionaryRef HALB_CFBundle::CopyLocalizedString(HALB_CFBundle *this, const __CFDictionary *key, CFStringRef a3, CFTypeRef cf, const __CFString *a5)
{
  v7 = *(this + 1);
  if (!v7)
  {
    goto LABEL_14;
  }

  v9 = key;
  if (key)
  {
    v10 = CFBundleCopyLocalizedString(v7, key, 0, 0);
    v11 = v10;
    if (v10 == v9)
    {
      v9 = 0;
    }

    else
    {
      v9 = PropertyListDeepImmutableCopy(v10);
    }

    CFRelease(v11);
  }

  if (a3 && !v9)
  {
    v12 = CFBundleCopyLocalizedString(*(this + 1), a3, 0, 0);
    v13 = v12;
    if (v12 == a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = PropertyListDeepImmutableCopy(v12);
    }

    CFRelease(v13);
  }

  if (!v9)
  {
LABEL_14:
    if (cf)
    {
      CFRetain(cf);
      return cf;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void HALS_IssueDetector::Initialize(HALS_IssueDetector *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v2 = AudioIssueDetectorLibraryLoader(void)::libSym(this);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = -1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "HALS_IssueDetector.h";
    v6 = 1024;
    v7 = 184;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  err = %d calling AudioIssueDetectorClientInitialize", &v4, 0x18u);
  }

LABEL_9:
  v3 = *MEMORY[0x1E69E9840];
}

void HALS_IOEngine::SendIsRunningNotifications(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 || a3 != a4)
  {
    v6 = *(a1 + 28);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    std::vector<RunningIOContextClientInfo>::__init_with_size[abi:ne200100]<RunningIOContextClientInfo*,RunningIOContextClientInfo*>(&v13, a3, a4, 0xAAAAAAAAAAAAAAABLL * ((a4 - a3) >> 2));
    v16 = v6;
    v17 = a2;
    v7 = atomic_load((a1 + 96));
    if (v7)
    {
      atomic_store(1u, (a1 + 97));
    }

    if (*(a1 + 392) != 1)
    {
      v12 = *(a1 + 64);
      operator new();
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v8 = v13;
    std::vector<RunningIOContextClientInfo>::__init_with_size[abi:ne200100]<RunningIOContextClientInfo*,RunningIOContextClientInfo*>(&v24, v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2));
    v9 = *(a1 + 384);
    v10 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN13HALS_IOEngine26SendIsRunningNotificationsEbRKNSt3__16vectorI26RunningIOContextClientInfoNS4_9allocatorIS6_EEEEE3__0EEvOT__block_invoke;
    block[3] = &__block_descriptor_tmp_176;
    v20 = 0;
    v21 = 0;
    __p = 0;
    v11 = v24;
    std::vector<RunningIOContextClientInfo>::__init_with_size[abi:ne200100]<RunningIOContextClientInfo*,RunningIOContextClientInfo*>(&__p, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 2));
    v22 = v16;
    v23 = v17;
    dispatch_group_async(v9, v10, block);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v11)
    {
      operator delete(v11);
    }

    if (v8)
    {
      operator delete(v8);
    }
  }
}

void sub_1DE34DCD4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RunningIOContextClientInfo>::__init_with_size[abi:ne200100]<RunningIOContextClientInfo*,RunningIOContextClientInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1555555555555556)
    {
      std::allocator<RunningIOContextClientInfo>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE34DD90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0,std::default_delete<HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C403997D5A5);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0 &>(dispatch_queue_s *,HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v6 = a1;
  HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0::operator()(a1, a2, a3, a4, a5);
  return std::unique_ptr<HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0,std::default_delete<HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0>>::~unique_ptr[abi:ne200100](&v6);
}

void sub_1DE34DE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0,std::default_delete<HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_IOEngine::SendIsRunningNotifications(BOOL,std::vector<RunningIOContextClientInfo> const&)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  if (*(a1 + 28) == 1)
  {
    v20.__begin_ = 0x676C6F62676F6E65;
    LODWORD(v20.__end_) = 0;
    HALS_NotificationManager::PropertiesChanged(*(a1 + 24), 0, 1, &v20, a5);
  }

  memset(&v20, 0, sizeof(v20));
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 != v7)
  {
    do
    {
      v8.__i_ = v20.__begin_;
      if (v20.__end_ == v20.__begin_)
      {
        v8.__i_ = v20.__end_;
      }

      else
      {
        v9 = v20.__end_ - v20.__begin_;
        do
        {
          v10 = v9 >> 1;
          v11 = &v8.__i_[v9 >> 1];
          v13 = *v11;
          v12 = v11 + 1;
          v9 += ~(v9 >> 1);
          if (v13 < *(v6 + 8))
          {
            v8.__i_ = v12;
          }

          else
          {
            v9 = v10;
          }
        }

        while (v9);
      }

      if (v20.__end_ == v8.__i_ || *v8.__i_ != *(v6 + 8))
      {
        std::vector<unsigned int>::insert(&v20, v8, (v6 + 8));
      }

      v6 += 12;
    }

    while (v6 != v7);
    begin = v20.__begin_;
    end = v20.__end_;
    if (v20.__begin_ != v20.__end_)
    {
      v16 = v20.__begin_;
      do
      {
        v17 = HALS_ObjectMap::CopyObjectByObjectID(*v16);
        v19 = v17;
        if (v17)
        {
          HALS_Client::SendIsRunningSomewhereElse(v17, *(a1 + 24), a1);
        }

        HALS_ObjectMap::ReleaseObject(v19, v18);
        ++v16;
      }

      while (v16 != end);
    }

    if (begin)
    {
      operator delete(begin);
    }
  }
}

void sub_1DE34DF94(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HALS_ObjectMap::ReleaseObject(v11, a2);
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    if (v14)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v14);
    }

    v16 = (4 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (begin == __position.__i_)
        {
          v24 = 1;
        }

        else
        {
          v24 = v12 >> 1;
        }

        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v24);
      }

      v16 = (v16 - (((v12 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
    }

    *v16 = *__x;
    memcpy(v16 + 1, __position.__i_, this->__end_ - __position.__i_);
    v17 = this->__begin_;
    v25 = v16 + (this->__end_ - i) + 4;
    this->__end_ = i;
    v18 = i - v17;
    v19 = v16 - (i - v17);
    memcpy(v19, v17, v18);
    v20 = this->__begin_;
    this->__begin_ = v19;
    *&this->__end_ = v25;
    if (v20)
    {
      operator delete(v20);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v21 = v9 <= __x || i > __x;
    v22 = 1;
    if (v21)
    {
      v22 = 0;
    }

    *i = __x[v22];
  }

  return i;
}

void sub_1DE34E1DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c123_ZTSZN13HALS_IOEngine26SendIsRunningNotificationsEbRKNSt3__16vectorI26RunningIOContextClientInfoNS0_9allocatorIS2_EEEEE3__0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void __copy_helper_block_e8_32c123_ZTSZN13HALS_IOEngine26SendIsRunningNotificationsEbRKNSt3__16vectorI26RunningIOContextClientInfoNS0_9allocatorIS2_EEEEE3__0(void *a1, uint64_t a2)
{
  a1[4] = 0;
  a1[5] = 0;
  v3 = a1 + 4;
  a1[6] = 0;
  std::vector<RunningIOContextClientInfo>::__init_with_size[abi:ne200100]<RunningIOContextClientInfo*,RunningIOContextClientInfo*>((a1 + 4), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 2));
  v4 = *(a2 + 56);
  *(v3 + 28) = *(a2 + 60);
  *(v3 + 6) = v4;
}

void std::allocator<RunningIOContextClientInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0::~$_0(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::unique_ptr<HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0,std::default_delete<HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      v2[3] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12C1730](v2, 0x30C407FCDC8D2);
  }

  return a1;
}

void *applesauce::dispatch::v1::async<HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0 &>(dispatch_queue_s *,HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1;
  HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0::operator()(a1);
  return std::unique_ptr<HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0,std::default_delete<HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE34E3A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0,std::default_delete<HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0::operator()(uint64_t *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1)
  {
    goto LABEL_39;
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  v2 = a1[2];
  v20 = a1[3];
  if (v2 != v20)
  {
    do
    {
      v4 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
      if (v4)
      {
        HALS_IOContext::GetIssueReporters(buf, v4);
        v21 = 0;
        v22 = 0;
        v23 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v21, __p, v25, (v25 - __p) >> 3);
        v5 = v21;
        v6 = v22;
        v7 = *buf;
        v8 = *&buf[8];
        p_p = &__p;
        v27 = &__p;
        if (v21 == v22)
        {
          v11 = *buf;
LABEL_13:
          v28 = p_p;
          while (v11 != v8)
          {
            std::back_insert_iterator<std::vector<long long>>::operator=[abi:ne200100](&v28, v11++);
          }
        }

        else
        {
          v10 = v21;
          v11 = *buf;
          while (v11 != v8)
          {
            v12 = *v11;
            v13 = *v10;
            if (*v11 >= *v10)
            {
              std::back_insert_iterator<std::vector<long long>>::operator=[abi:ne200100](&v27, v10);
              v11 += v13 >= v12;
              ++v10;
            }

            else
            {
              std::back_insert_iterator<std::vector<long long>>::operator=[abi:ne200100](&v27, v11++);
            }

            if (v10 == v6)
            {
              p_p = v27;
              goto LABEL_13;
            }
          }

          v28 = v27;
          while (v10 != v6)
          {
            std::back_insert_iterator<std::vector<long long>>::operator=[abi:ne200100](&v28, v10++);
          }
        }

        std::__sort<std::__less<long long,long long> &,long long *>();
        v14 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::__equal_to &>(__p, v25);
        if (v14 != v25)
        {
          v3 = v25;
          v25 = v14;
        }

        if (v5)
        {
          operator delete(v5);
        }

        if (v7)
        {
          operator delete(v7);
        }
      }

      HALS_ObjectMap::ReleaseObject(v4, v3);
      ++v2;
    }

    while (v2 != v20);
    v1 = *a1;
  }

  if ((v1 + 40) != &__p)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((v1 + 40), __p, v25, (v25 - __p) >> 3);
  }

  v15 = *(v1 + 32);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
  }

  if (!AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v16 = -1;
LABEL_35:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v1 + 32);
      *buf = 136315906;
      *&buf[4] = "HALS_IssueDetector.h";
      *&buf[12] = 1024;
      *&buf[14] = 211;
      v30 = 1024;
      v31 = v16;
      v32 = 2048;
      v33 = v17;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  err = %d calling AudioIssueDetectorClientUpdateReportingSessions, mDetectorID = %lld", buf, 0x22u);
    }

    goto LABEL_37;
  }

  v16 = AudioIssueDetectorLibraryLoader(void)::libSym(v15, &__p);
  if (v16)
  {
    goto LABEL_35;
  }

LABEL_37:
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

LABEL_39:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE34E6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::__equal_to &>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1 + 1;
    while (v2 != a2)
    {
      v3 = *(v2 - 1);
      v4 = *v2++;
      if (v3 == v4)
      {
        v5 = v2 - 2;
        goto LABEL_7;
      }
    }

    v5 = a2;
LABEL_7:
    if (v5 != a2)
    {
      v6 = v5 + 2;
      if (v5 + 2 != a2)
      {
        v7 = *v5;
        do
        {
          v8 = v7;
          v7 = *v6;
          if (v8 != *v6)
          {
            v5[1] = v7;
            ++v5;
          }

          ++v6;
        }

        while (v6 != a2);
      }

      return v5 + 1;
    }
  }

  return a2;
}

uint64_t *std::back_insert_iterator<std::vector<long long>>::operator=[abi:ne200100](uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (8 * (v9 >> 3));
    *v13 = *a2;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v14 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void *std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(void *result, char *__src, char *a3, unint64_t a4)
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

    if (!(a4 >> 61))
    {
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

      std::vector<long>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void __destroy_helper_block_e8_32c88_ZTSZN13HALS_IOEngine21_UpdateIssueReportersERKNSt3__16vectorIjNS0_9allocatorIjEEEEE3__0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t __copy_helper_block_e8_32c88_ZTSZN13HALS_IOEngine21_UpdateIssueReportersERKNSt3__16vectorIjNS0_9allocatorIjEEEEE3__0(void *a1, void *a2)
{
  v2 = a2[5];
  a1[4] = a2[4];
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 2);
}

void sub_1DE34EA80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOEngine::HALS_IOEngine(HALS_IOEngine *this, HALS_IODevice *a2, uint64_t a3, uint64_t a4, HALS_Object *a5)
{
  object[42] = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(this, 1701734254, 0, a2, a5);
  *v6 = &unk_1F5967B40;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  *(v6 + 64) = 0u;
  v7 = (v6 + 64);
  *(v6 + 120) = 0;
  *(v6 + 128) = 850045863;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 850045863;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 850045863;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  *(this + 47) = dispatch_semaphore_create(0);
  *(this + 384) = 0;
  *(this + 392) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 216) = 0;
  *(this + 57) = 0;
  *(this + 58) = 850045863;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 69) = 850045863;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 80) = 850045863;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 89) = dispatch_semaphore_create(0);
  *(this + 720) = 0;
  *(this + 728) = 0;
  AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(object, "com.apple.audio.HALS_Engine-updater");
  AMCP::Utility::Dispatch_Queue::operator=(v7, object[0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
  v8 = *MEMORY[0x1E69E9840];
}

void HALS_IOEngine::~HALS_IOEngine(HALS_IOEngine *this)
{
  *this = &unk_1F5967B40;
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 400));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 64));
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HALS_Object::~HALS_Object(this);
}

void sub_1DE34ECD4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN13HALS_IOEngine47SendIsRunningNotificationForContextRegistrationEjRKNSt3__16vectorI26RunningIOContextClientInfoNS4_9allocatorIS6_EEEEE3__0EEvOT__block_invoke(uint64_t a1)
{
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v4 = v2;
  if (v2)
  {
    HALS_Client::SendIsRunningSomewhereElse(v2, *(a1 + 36), a1 + 40);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
}

uint64_t *std::unique_ptr<HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0,std::default_delete<HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      *(v2 + 16) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C405E66F15BLL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0 &>(dispatch_queue_s *,HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v6 = a1;
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  v4 = v2;
  if (v2)
  {
    HALS_Client::SendIsRunningSomewhereElse(v2, a1[1], (a1 + 2));
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  return std::unique_ptr<HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0,std::default_delete<HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0>>::~unique_ptr[abi:ne200100](&v6);
}

void sub_1DE34EE08(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HALS_ObjectMap::ReleaseObject(v10, a2);
  std::unique_ptr<HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0,std::default_delete<HALS_IOEngine::SendIsRunningNotificationForContextRegistration(unsigned int,std::vector<RunningIOContextClientInfo> const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c144_ZTSZN13HALS_IOEngine47SendIsRunningNotificationForContextRegistrationEjRKNSt3__16vectorI26RunningIOContextClientInfoNS0_9allocatorIS2_EEEEE3__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __copy_helper_block_e8_32c144_ZTSZN13HALS_IOEngine47SendIsRunningNotificationForContextRegistrationEjRKNSt3__16vectorI26RunningIOContextClientInfoNS0_9allocatorIS2_EEEEE3__0(uint64_t a1, void *a2)
{
  v2 = a2[4];
  *(a1 + 40) = 0;
  v3 = a1 + 40;
  *(v3 - 8) = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  std::vector<RunningIOContextClientInfo>::__init_with_size[abi:ne200100]<RunningIOContextClientInfo*,RunningIOContextClientInfo*>(v3, a2[5], a2[6], 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2));
}

AMCP::Utility::Dispatch_Queue *std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](AMCP::Utility::Dispatch_Queue **a1, AMCP::Utility::Dispatch_Queue *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void HALS_IssueDetector::~HALS_IssueDetector(HALS_IssueDetector *this)
{
  HALS_IssueDetector::~HALS_IssueDetector(this);

  JUMPOUT(0x1E12C1730);
}

{
  v10 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5981A88;
  v2 = *(this + 4);
  if (v2)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      AudioIssueDetectorLibraryLoader(void)::libSym(v2);
    }

    *(this + 4) = 0;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "HALS_IssueDetector.h";
    v8 = 1024;
    v9 = 109;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  calling AudioIssueDetectorClientDispose already disposed", &v6, 0x12u);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE34F048(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<HALS_IssueDetector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5981A38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Manager_Graph_Builder_Connection::is_tap_mono(uint64_t a1, const void **a2)
{
  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v11, 0, v10);
  v4 = v11;
  v5 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  v7 = HALS_System::CopyTapByUID(v4, v5, *(a1 + 16));
  if (v5)
  {
    CFRelease(v5);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v7)
  {
    v8 = *(v7 + 88);
  }

  else
  {
    v8 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v7, v6);
  return v8 & 1;
}

void sub_1DE34F1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  applesauce::CF::StringRef::~StringRef(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager_Graph_Builder_Connection::get_tapped_object_list(uint64_t a1@<X0>, CFTypeRef *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v31[0] = 0;
  v31[1] = 0;
  HALS_System::GetInstance(&v27, 0, v31);
  v5 = v27;
  v6 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v30 = v6;
  v19 = HALS_System::CopyTapByUID(v5, v6, *(a1 + 16));
  if (v6)
  {
    CFRelease(v6);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v8 = v19;
  if (v19)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v27, *(v19 + 28), *(v19 + 29), (*(v19 + 29) - *(v19 + 28)) >> 2);
    v9 = v27;
    v21 = v28;
    if (v27 != v28)
    {
      v10 = 0;
      do
      {
        v26[0] = 0;
        v26[1] = 0;
        HALS_System::GetInstance(&v24, 0, v26);
        v12 = HALS_System::CopyClientByObjectID(v24, *v9);
        if (v25)
        {
          v13 = v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          v12 = v13;
        }

        if (v12)
        {
          v22 = v9;
          v23 = v12;
          (*(*v12 + 208))(&v24, v12);
          v15 = v24;
          v14 = v25;
          if (v24 != v25)
          {
            do
            {
              mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((*(a1 + 8) + 16), *v15);
              if (HIDWORD(mcp_object))
              {
                v17 = v10;
                v18 = v10 >> 2;
                if (((v10 >> 2) + 1) >> 62)
                {
                  a3[1] = v10;
                  a3[2] = 0;
                  *a3 = 0;
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if (v10 >> 2 != -1)
                {
                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100]((v10 >> 2) + 1);
                }

                *(4 * v18) = mcp_object;
                v10 = 4 * v18 + 4;
                memcpy(0, 0, v17);
              }

              ++v15;
            }

            while (v15 != v14);
            a3[1] = v10;
            a3[2] = 0;
            *a3 = 0;
            v15 = v24;
          }

          if (v15)
          {
            v25 = v15;
            operator delete(v15);
          }

          v9 = v22;
          v12 = v23;
        }

        HALS_ObjectMap::ReleaseObject(v12, v11);
        ++v9;
      }

      while (v9 != v21);
      v9 = v27;
    }

    if (v9)
    {
      operator delete(v9);
    }

    v8 = v19;
  }

  HALS_ObjectMap::ReleaseObject(v8, v7);
}

uint64_t HALS_IOContext_Manager_Graph_Builder_Connection::should_create_mono_mix_map(HALS_IOContext_Manager_Graph_Builder_Connection *this)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  v1 = *(v4 + 1560);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void HALS_IOContext_Manager_Graph_Builder_Connection::maybe_get_master_device_and_sample_rate(HALS_IOContext_Manager_Graph_Builder_Connection *this@<X0>, CFDictionaryRef *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_131;
  }

  v6 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
  *v74 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(*a2, v6);
  CFRelease(v6);
  if (!v7)
  {
    v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v47 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *v49;
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    else
    {
      v50 = *v49;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = 0;
      v52 = 0;
      v53 = 47;
      do
      {
        v54 = &aLibraryCachesC_55[v51];
        if (v53 == 47)
        {
          v52 = &aLibraryCachesC_55[v51];
        }

        v53 = v54[1];
        if (!v54[1])
        {
          break;
        }

        v40 = v51++ >= 0xFFF;
      }

      while (!v40);
      if (v52)
      {
        v55 = v52 + 1;
      }

      else
      {
        v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Manager_Graph_Builder_Connection.cpp";
      }

      *v74 = 136315650;
      *&v74[4] = v55;
      v75 = 1024;
      v76 = 191;
      v77 = 2080;
      v78 = "in_aggregate_description->has_key(AMCP::CF::String{kAudioAggregateDeviceUIDKey})";
      _os_log_error_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s We should have already exited if the aggregate UID were missing.", v74, 0x1Cu);
    }

    abort();
  }

  if (!*a2)
  {
LABEL_131:
    v56 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v56, "Could not construct");
    goto LABEL_146;
  }

  v9 = CFStringCreateWithBytes(0, "clock", 5, 0x8000100u, 0);
  *v74 = v9;
  if (!v9)
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v58, "Could not construct");
    __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  cf = 0;
  applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v73, *a2, v9, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v9);
  v10 = v73;
  if (v73)
  {
    goto LABEL_14;
  }

  if (!*a2)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v56, "Could not construct");
    goto LABEL_146;
  }

  v11 = CFStringCreateWithBytes(0, "master", 6, 0x8000100u, 0);
  cf = v11;
  if (!v11)
  {
    v59 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v59, "Could not construct");
    __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v69 = 0;
  applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(v74, *a2, v11, &v69);
  v10 = *v74;
  v73 = *v74;
  if (v69)
  {
    CFRelease(v69);
  }

  CFRelease(v11);
  if (v10)
  {
    goto LABEL_14;
  }

  if (!*a2)
  {
    goto LABEL_145;
  }

  v15 = CFStringCreateWithBytes(0, "subdevices", 10, 0x8000100u, 0);
  *v74 = v15;
  if (!v15)
  {
    v60 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v60, "Could not construct");
    __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *a2, v15);
  CFRelease(v15);
  if (v72 == 1)
  {
    v17 = cf;
    if (!cf)
    {
      goto LABEL_145;
    }

    Count = CFArrayGetCount(cf);
    if (Count)
    {
      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(v74, v17, 0);
      applesauce::CF::details::at_as<applesauce::CF::ArrayRef>(&v69, v17);
      v18 = v70;
      if (v70 != 1)
      {
        v19 = CFArrayGetCount(v17);
        goto LABEL_41;
      }

      if (v69)
      {
        v19 = CFArrayGetCount(v69);
LABEL_41:
        v10 = 0;
        v24 = v19;
        if (!v19)
        {
          if (v18)
          {
            goto LABEL_77;
          }

          goto LABEL_79;
        }

        v25 = 0;
        while (1)
        {
          if (!cf)
          {
LABEL_144:
            v73 = v10;
            v56 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v56, "Could not construct");
            goto LABEL_146;
          }

          applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v67, cf, v25);
          std::__optional_storage_base<applesauce::CF::DictionaryRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DictionaryRef,false>>(v74, &v67);
          if (v68 == 1)
          {
            v19 = v67;
            if (v67)
            {
              CFRelease(v67);
            }
          }

          if (v18)
          {
            break;
          }

          if (v74[8] != 1)
          {
            goto LABEL_71;
          }

          v29 = *v74;
          if (!*v74)
          {
            goto LABEL_144;
          }

          v30 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
          v66 = v30;
          if (!v30)
          {
            v73 = v10;
            v62 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v62, "Could not construct");
            __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v65 = 0;
          applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v67, v29, v30, &v65);
          v28 = v67;
          v67 = v10;
          if (v10)
          {
            CFRelease(v10);
          }

          if (v65)
          {
            CFRelease(v65);
          }

          v19 = v66;
          if (v66)
          {
            goto LABEL_69;
          }

LABEL_70:
          v10 = v28;
LABEL_71:
          if (v10)
          {
            CFRetain(v10);
            v64 = v10;
            clock_sample_rate = HALS_IOContext_Manager_Graph_Builder_Connection::get_clock_sample_rate(this, &v64);
            CFRelease(v10);
            if (clock_sample_rate != 0.0)
            {
              v73 = v10;
              CFRetain(v10);
              *a3 = clock_sample_rate;
              *(a3 + 8) = v10;
              *(a3 + 16) = 1;
              std::optional<applesauce::CF::ArrayRef>::~optional(&v69);
              std::optional<applesauce::CF::DictionaryRef>::~optional(v74);
              std::optional<applesauce::CF::ArrayRef>::~optional(&cf);
              goto LABEL_20;
            }
          }

          if (v24 == ++v25)
          {
            v73 = v10;
            if ((v70 & 1) == 0)
            {
              goto LABEL_79;
            }

LABEL_77:
            v19 = v69;
            if (v69)
            {
              CFRelease(v69);
            }

LABEL_79:
            if (v74[8] == 1)
            {
              v19 = *v74;
              if (*v74)
              {
                CFRelease(*v74);
              }
            }

            if (v72 == 1)
            {
              v19 = cf;
              if (cf)
              {
                CFRelease(cf);
              }
            }

            if (!v10)
            {
              v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v32 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v19);
              }

              v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                v35 = *v34;
                std::__shared_weak_count::__release_shared[abi:ne200100](v33);
              }

              else
              {
                v35 = *v34;
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v42 = 0;
                v43 = 0;
                v44 = 47;
                do
                {
                  v45 = &aLibraryCachesC_55[v42];
                  if (v44 == 47)
                  {
                    v43 = &aLibraryCachesC_55[v42];
                  }

                  v44 = v45[1];
                  if (!v45[1])
                  {
                    break;
                  }

                  v40 = v42++ >= 0xFFF;
                }

                while (!v40);
                if (v43)
                {
                  v46 = v43 + 1;
                }

                else
                {
                  v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Manager_Graph_Builder_Connection.cpp";
                }

                *v74 = 136315394;
                *&v74[4] = v46;
                v75 = 1024;
                v76 = 244;
                _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Unable to calculate clock and sample rate", v74, 0x12u);
              }

              *a3 = 0;
              *(a3 + 8) = 0;
              goto LABEL_19;
            }

LABEL_14:
            CFRetain(v10);
            v63 = v10;
            v12 = HALS_IOContext_Manager_Graph_Builder_Connection::get_clock_sample_rate(this, &v63);
            CFRelease(v10);
            if (v12 == 0.0)
            {
              v12 = 44100.0;
            }

            v13 = v73;
            if (v73)
            {
              CFRetain(v73);
            }

            *a3 = v12;
            *(a3 + 8) = v13;
LABEL_19:
            *(a3 + 16) = 1;
            goto LABEL_20;
          }
        }

        if (!v69)
        {
          goto LABEL_144;
        }

        applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v67, v69, v25);
        std::__optional_storage_base<applesauce::CF::DictionaryRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DictionaryRef,false>>(v74, &v67);
        if (v68 == 1)
        {
          v19 = v67;
          if (v67)
          {
            CFRelease(v67);
          }
        }

        if (v74[8] != 1)
        {
          goto LABEL_71;
        }

        v26 = *v74;
        if (!*v74)
        {
          goto LABEL_144;
        }

        v27 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
        v66 = v27;
        if (!v27)
        {
          v73 = v10;
          v61 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v61, "Could not construct");
          __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v65 = 0;
        applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v67, v26, v27, &v65);
        v28 = v67;
        v67 = v10;
        if (v10)
        {
          CFRelease(v10);
        }

        if (v65)
        {
          CFRelease(v65);
        }

        v19 = v66;
        if (!v66)
        {
          goto LABEL_70;
        }

LABEL_69:
        CFRelease(v19);
        goto LABEL_70;
      }

LABEL_145:
      v56 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v56, "Could not construct");
LABEL_146:
      __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v20 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(Count);
  }

  v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = *v22;
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  else
  {
    v23 = *v22;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v36 = 0;
    v37 = 0;
    v38 = 47;
    do
    {
      v39 = &aLibraryCachesC_55[v36];
      if (v38 == 47)
      {
        v37 = &aLibraryCachesC_55[v36];
      }

      v38 = v39[1];
      if (!v39[1])
      {
        break;
      }

      v40 = v36++ >= 0xFFF;
    }

    while (!v40);
    if (v37)
    {
      v41 = v37 + 1;
    }

    else
    {
      v41 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Manager_Graph_Builder_Connection.cpp";
    }

    *v74 = 136315394;
    *&v74[4] = v41;
    v75 = 1024;
    v76 = 203;
    _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Unable to calculate clock and sample rate", v74, 0x12u);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  if (v72 == 1 && cf)
  {
    CFRelease(cf);
  }

LABEL_20:
  if (v73)
  {
    CFRelease(v73);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE34FFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL applesauce::CF::details::has_key<applesauce::CF::StringRef>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryContainsKey(theDict, a2) != 0;
    }
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef>(&cf, a2, a3);
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

void applesauce::CF::details::at_as<applesauce::CF::ArrayRef>(_BYTE *a1, CFArrayRef theArray)
{
  if (!CFArrayGetCount(theArray))
  {
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v5 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_6;
  }

  CFRetain(ValueAtIndex);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_6:
    v7 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  *a1 = v5;
  v7 = 1;
LABEL_7:
  a1[8] = v7;
}

void std::__optional_storage_base<applesauce::CF::DictionaryRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DictionaryRef,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      *a1 = *a2;
      *a2 = v3;
    }
  }

  else if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a1 + 8) = 1;
  }
}

double HALS_IOContext_Manager_Graph_Builder_Connection::get_clock_sample_rate(uint64_t a1, const __CFString **a2)
{
  v3 = *(a1 + 8) + 144;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    (*(**(v3 + 24) + 16))(cf);
    v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf[0], a2);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v4 == kCFCompareEqualTo)
    {
      return (*(**(v3 + 24) + 24))(*(v3 + 24));
    }
  }

  v13[0] = 0;
  v13[1] = 0;
  HALS_System::GetInstance(&v14, 0, v13);
  v6 = *a2;
  *cf = 0u;
  v11 = 0u;
  v12 = 1065353216;
  v7 = HALS_System::CopyDeviceByUID(v14, v6, 0, cf);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(cf);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v7)
  {
    v5 = (*(*v7 + 272))(v7);
  }

  else
  {
    v5 = 0.0;
  }

  HALS_ObjectMap::ReleaseObject(v7, v8);
  return v5;
}

void HALS_IOContext_Manager_Graph_Builder_Connection::get_aggregate_composition(HALS_IOContext_Manager_Graph_Builder_Connection *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((*(this + 1) + 16), a2);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 5);
  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v13, 0, v12);
  v7 = HALS_System::CopyDeviceByObjectID(v13, v6, *(this + 2));
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v7)
  {
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
LABEL_9:
    *a3 = 0;
    return;
  }

  v13 = 0x676C6F6261636F6DLL;
  LODWORD(v14) = 0;
  v16 = 0;
  v15 = 0;
  (*(*v7 + 120))(v7, v6, &v13, 8, &v15, &v16, 0, 0, 0);
  v9 = v16;
  *a3 = v16;
  if (v9)
  {
    v10 = CFGetTypeID(v9);
    if (v10 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  HALS_ObjectMap::ReleaseObject(v7, v8);
}

void sub_1DE350668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v16);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v14);
  HALS_ObjectMap::ReleaseObject(v15, v18);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager_Graph_Builder_Connection::get_uid_for_meta_device_clock(HALS_IOContext_Manager_Graph_Builder_Connection *this@<X0>, unsigned int a2@<W1>, const __CFString **a3@<X8>)
{
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((*(this + 1) + 16), a2);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 5);
  v20[0] = 0;
  v20[1] = 0;
  HALS_System::GetInstance(&v21, 0, v20);
  v7 = HALS_System::CopyDeviceByObjectID(v21, v6, *(this + 2));
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (!v7)
  {
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
LABEL_17:
    *a3 = 0;
    return;
  }

  v21 = 0x676C6F6261706364;
  LODWORD(v22) = 0;
  cf = 0;
  LODWORD(v19) = 0;
  (*(*v7 + 120))(v7, v6, &v21, 8, &v19, &cf, 0, 0, 0);
  v8 = cf;
  *a3 = cf;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v8 = *a3;
  }

  v21 = 0;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v8, &v21) == kCFCompareEqualTo)
  {
    goto LABEL_11;
  }

  v10 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  cf = v10;
  if (!v10)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a3, &cf);
  CFRelease(v10);
  if (v11 == kCFCompareEqualTo)
  {
LABEL_11:
    v21 = 0x676C6F62616D7374;
    LODWORD(v22) = 0;
    cf = 0;
    v23 = 0;
    (*(*v7 + 120))(v7, v6, &v21, 8, &v23, &cf, 0, 0, 0);
    v13 = cf;
    v19 = cf;
    if (cf)
    {
      v14 = CFGetTypeID(cf);
      if (v14 != CFStringGetTypeID())
      {
        v18 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v18, "Could not construct");
        __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v15 = *a3;
    *a3 = v13;
    v19 = v15;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  HALS_ObjectMap::ReleaseObject(v7, v12);
}

void sub_1DE3509A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v18);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  applesauce::CF::StringRef::~StringRef(v16);
  HALS_ObjectMap::ReleaseObject(v17, v20);
  _Unwind_Resume(a1);
}

BOOL HALS_IOContext_Manager_Graph_Builder_Connection::is_reference_stream(HALS_IOContext_Manager_Graph_Builder_Connection *this, unsigned int a2)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(this + 1) + 96), a2);
  if (v5)
  {
    v7 = 0x676C6F6274617073;
    v8 = 0;
    v2 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, &v7);
    if (HIDWORD(v2))
    {
      v3 = v2 != 0;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

unint64_t HALS_IOContext_Manager_Graph_Builder_Connection::get_stream(uint64_t a1, unsigned int a2, int a3, unint64_t mcp_object)
{
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((*(a1 + 8) + 16), a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 5);
  v17[0] = 0;
  v17[1] = 0;
  HALS_System::GetInstance(&v14, 0, v17);
  v10 = HALS_System::CopyDeviceByObjectID(v14, v8, *(a1 + 16));
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  HALS_Device::CopyStreamList(v10, a3 == 1, &v14);
  if (mcp_object >= (v15 - v14) >> 3 || (mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((*(a1 + 8) + 16), *(*(v14 + mcp_object) + 16)), !HIDWORD(mcp_object)))
  {
    HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v14, v11);
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v14, v11);
  v12 = 0;
LABEL_9:
  HALS_ObjectMap::ReleaseObject(v10, v9);
  if (v12)
  {
    return 0;
  }

  return mcp_object;
}

void sub_1DE350BF4(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(va, a2);
  HALS_ObjectMap::ReleaseObject(v3, v5);
  _Unwind_Resume(a1);
}

HALS_ObjectMap ***HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(HALS_ObjectMap ***a1, HALS_Object *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != v4);
    v3 = *a1;
  }

  if (v3)
  {
    a1[1] = v3;
    operator delete(v3);
  }

  return a1;
}

BOOL HALS_IOContext_Manager_Graph_Builder_Connection::is_device_an_aggregate(HALS_IOContext_Manager_Graph_Builder_Connection *this, unsigned int a2)
{
  AMCP::Core::Broker::fetch_core(&v4, *(*(this + 1) + 96), a2);
  if (v4)
  {
    v2 = AMCP::Core::Core::get_simple_required_property<1668047219u>(v4) == 1633773415;
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void HALS_IOContext_Manager_Graph_Builder_Connection::get_node_description(HALS_IOContext_Manager_Graph_Builder_Connection *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(this + 1) + 96), a2);
  if (v5)
  {
    AMCP::Core::Core::get_simple_required_property<1852073061u>(a3, v5);
  }

  else
  {
    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0x100000000;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
  }

  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void AMCP::Core::Core::get_simple_required_property<1852073061u>(AMCP::Node_Description *a1, AMCP::Core::Core *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v18 = 0x676C6F626E646465;
  v19 = 0;
  has_property = AMCP::Core::Core::has_property(this, &v18);
  if (!has_property)
  {
LABEL_33:
    v20[0] = 0;
    v26 = 0;
LABEL_34:
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = 4;
      strcpy(v27, "ndde");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      v34 = 2080;
      v35 = "optional_value.operator BOOL() == true";
      v36 = 2080;
      v37 = v27;
      v38 = 1024;
      LODWORD(v39[0]) = 1735159650;
      WORD2(v39[0]) = 1024;
      *(v39 + 6) = 0;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    abort();
  }

  AMCP::Core::Core::find_operation(&v30, this, &v18);
  v5 = v30;
  if (v30)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      AMCP::Core::Operation::call_function<AMCP::Node_Description>(buf, v5);
      std::optional<AMCP::Node_Description>::optional[abi:ne200100]<AMCP::Node_Description,0>(v20, buf);
      for (i = 96; i != 48; i -= 24)
      {
        v27[0] = &buf[i];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](v27);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (SBYTE1(v37) < 0)
      {
        operator delete(*&buf[8]);
      }

LABEL_19:
      v10 = 0;
      goto LABEL_21;
    }

    v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v27, v5);
      AMCP::Thing::convert_to<AMCP::Node_Description>(buf, v27);
      std::optional<AMCP::Node_Description>::optional[abi:ne200100]<AMCP::Node_Description,0>(v20, buf);
      for (j = 96; j != 48; j -= 24)
      {
        v32 = &buf[j];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v32);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (SBYTE1(v37) < 0)
      {
        operator delete(*&buf[8]);
      }

      if (v29)
      {
        v29(0, v27, 0, 0);
      }

      goto LABEL_19;
    }
  }

  v10 = 1;
LABEL_21:
  has_property = v31;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v10)
  {
    goto LABEL_33;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_34;
  }

  AMCP::Node_Description::Node_Description(a1, v20);
  if (v26 == 1)
  {
    v11 = &v25;
    v12 = -48;
    do
    {
      *buf = v11;
      std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](buf);
      v11 -= 3;
      v12 += 24;
    }

    while (v12);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}