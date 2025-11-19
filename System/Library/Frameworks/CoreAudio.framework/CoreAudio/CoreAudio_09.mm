void DSP_Host_Types::FormatDescription::~FormatDescription(DSP_Host_Types::FormatDescription *this)
{
  *this = &unk_1F598DDD8;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 104));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 80));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 56));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DE18;
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
  *this = &unk_1F598DDD8;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 104));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 80));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 56));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DE18;
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

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::IOContextDescription>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F598DD80;
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

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F598DF08;
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

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::FormatDescription>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F598DE18;
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

uint64_t DSP_Dictionariable::SingleKvp<double>::clear_value(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t DSP_Dictionariable::SingleKvp<double>::load_from(uint64_t a1, CFDictionaryRef *a2)
{
  v7[0] = &unk_1F598EC08;
  v7[1] = 0;
  v8 = a2;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
  }

  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, *(a1 + 8)))
  {
    v3 = applesauce::CF::details::at_key<__CFString const*&>(*v8, *(a1 + 8));
    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not find item");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *(a1 + 16) = applesauce::CF::convert_to<double,0>(v3);
    v4 = 1;
    *(a1 + 24) = 1;
  }

  else
  {
    v4 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v7);
  return v4;
}

void DSP_Dictionariable::SingleKvp<double>::add_to(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 8);
    valuePtr = *(a1 + 16);
    v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v5 = v4;
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::NumberRef>(*a2, v3, v4);
    CFRelease(v5);
  }
}

void DSP_Dictionariable::SingleKvp<double>::~SingleKvp(DSP_Dictionariable::DictionariableKvp *a1)
{
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_Dictionariable::SingleKvp<BOOL>::clear_value(uint64_t result)
{
  if (*(result + 17) == 1)
  {
    *(result + 17) = 0;
  }

  return result;
}

uint64_t DSP_Dictionariable::SingleKvp<BOOL>::load_from(uint64_t a1, CFDictionaryRef *a2)
{
  v7[0] = &unk_1F598EC08;
  v7[1] = 0;
  v8 = a2;
  if (*(a1 + 17) == 1)
  {
    *(a1 + 17) = 0;
  }

  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, *(a1 + 8)))
  {
    v3 = applesauce::CF::details::at_key<__CFString const*&>(*v8, *(a1 + 8));
    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not find item");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *(a1 + 16) = applesauce::CF::convert_to<BOOL,0>(v3) | 0x100;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v7);
  return v4;
}

void DSP_Dictionariable::SingleKvp<BOOL>::add_to(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 17) == 1)
  {
    if (*(a1 + 16))
    {
      v2 = MEMORY[0x1E695E4C8];
    }

    else
    {
      v2 = MEMORY[0x1E695E4B8];
    }

    v3 = *v2;
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(*a2, *(a1 + 8), *v2);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void DSP_Dictionariable::SingleKvp<BOOL>::~SingleKvp(DSP_Dictionariable::DictionariableKvp *a1)
{
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);

  JUMPOUT(0x1E12C1730);
}

void std::vector<std::unique_ptr<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine,std::default_delete<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          std::default_delete<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine>::operator()[abi:ne200100](v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine,std::default_delete<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      std::default_delete<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine>::operator()[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::default_delete<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::DSP_HAL_Mock_Callbacks(HAL_DSP_IOCallbacks &,DSP_HAL_Mock_FeatureFlag)::{lambda(std::tuple<char const*,int,DSP_HAL_Mock_FeatureFlag> &)#1},std::tuple<char const*,int,DSP_HAL_Mock_FeatureFlag>>::perform(uint64_t a1)
{
  DSP_HAL_Mock_Callbacks::DSP_HAL_Mock_Callbacks(HAL_DSP_IOCallbacks &,DSP_HAL_Mock_FeatureFlag)::{lambda(std::tuple<char const*,int,DSP_HAL_Mock_FeatureFlag> &)#1}::operator()((a1 + 20), (a1 + 24));
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DSP_HAL_Mock_Callbacks::DSP_HAL_Mock_Callbacks(HAL_DSP_IOCallbacks &,DSP_HAL_Mock_FeatureFlag)::{lambda(std::tuple<char const*,int,DSP_HAL_Mock_FeatureFlag> &)#1}::operator()(os_log_type_t *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v4;
    AMCP::Log::Scope::get_os_log_t(*v4);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v6 = *v4;
    AMCP::Log::Scope::get_os_log_t(*v4);
    objc_claimAutoreleasedReturnValue();
  }

  v7 = *a1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *a2;
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v12 = 136315650;
    v13 = v8;
    v14 = 1024;
    v15 = v9;
    v16 = 1024;
    v17 = v10;
    _os_log_impl(&dword_1DE1F9000, v6, v7, "%32s:%-5d DSP_HAL_MockCallbacks - configured Mock DSP IO with feature %d", &v12, 0x18u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::DSP_HAL_Mock_Callbacks(HAL_DSP_IOCallbacks &,DSP_HAL_Mock_FeatureFlag)::{lambda(std::tuple<char const*,int,DSP_HAL_Mock_FeatureFlag> &)#1},std::tuple<char const*,int,DSP_HAL_Mock_FeatureFlag>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_HAL_Mock_Callbacks::onEndProcessing(DSP_HAL_Mock_Callbacks *this)
{
  result = *(this + 60);
  if (result)
  {
    return std::function<void ()(BOOL)>::operator()(result, 0);
  }

  return result;
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void DSP_HAL_Mock_Callbacks::onClientIO(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v121 = *MEMORY[0x1E69E9840];
  v104 = a3;
  v105 = a4;
  v106 = a5;
  v107 = a6;
  v108 = a7;
  if ((*(a1 + 353) & 0x20) != 0)
  {
    ++DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::heart;
    HIDWORD(v12) = -1030792151 * DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::heart + 85899344;
    LODWORD(v12) = HIDWORD(v12);
    if ((v12 >> 3) <= 0x147AE14)
    {
      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = 0;
      v16 = 0;
      v17 = *(v13 + 8);
      v18 = 47;
      do
      {
        v19 = &aLibraryCachesC_11[v15];
        if (v18 == 47)
        {
          v16 = &aLibraryCachesC_11[v15];
        }

        v18 = v19[1];
        if (!v19[1])
        {
          break;
        }

        v20 = v15++ >= 0xFFF;
      }

      while (!v20);
      if (v16)
      {
        v21 = v16 + 1;
      }

      else
      {
        v21 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
      }

      v22 = (a1 + 392);
      if (*(a1 + 415) < 0)
      {
        v22 = *v22;
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_149;
      }

      v23 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v23 + 16) = 0;
      *(v23 + 20) = 2;
      *(v23 + 24) = v21;
      *(v23 + 32) = 38;
      *(v23 + 40) = v22;
      *v23 = &unk_1F5962B50;
      *(v23 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v17, v23);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }

  if ((*(a1 + 317) & 1) == 0)
  {
    DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(&v104);
  }

  if ((*(a1 + 353) & 0x20) != 0)
  {
    v24 = atomic_load((a1 + 316));
    if ((v24 & 1) == 0 && (*(a1 + 416) & 1) == 0)
    {
      *(a1 + 416) = 1;
      v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = 0;
      v28 = 0;
      v29 = *(v25 + 8);
      v30 = 47;
      do
      {
        v31 = &aLibraryCachesC_11[v27];
        if (v30 == 47)
        {
          v28 = &aLibraryCachesC_11[v27];
        }

        v30 = v31[1];
        if (!v31[1])
        {
          break;
        }

        v20 = v27++ >= 0xFFF;
      }

      while (!v20);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_149;
      }

      if (v28)
      {
        v32 = v28 + 1;
      }

      else
      {
        v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
      }

      v33 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v33 + 16) = 0;
      *(v33 + 20) = 2;
      *(v33 + 24) = v32;
      *(v33 + 32) = 51;
      *v33 = &unk_1F5962BA8;
      *(v33 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v29, v33);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    v10 = v105;
    v9 = v106;
    v8 = v107;
    v7 = v108;
    if (!v106 || !v105 || !v108 || !v107)
    {
      v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v34 + 8);
      v39 = 47;
      do
      {
        v40 = &aLibraryCachesC_11[v36];
        if (v39 == 47)
        {
          v37 = &aLibraryCachesC_11[v36];
        }

        v39 = v40[1];
        if (!v40[1])
        {
          break;
        }

        v20 = v36++ >= 0xFFF;
      }

      while (!v20);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_149;
      }

      if (v37)
      {
        v41 = v37 + 1;
      }

      else
      {
        v41 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
      }

      v42 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v42 + 16) = 0;
      *(v42 + 20) = 2;
      *(v42 + 24) = v41;
      *(v42 + 32) = 55;
      *v42 = &unk_1F5962C00;
      *(v42 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v38, v42);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }
  }

  if (v9 && v10 && v7 && v8)
  {
    if ((*(a1 + 496) & 0xFFFFFFFE) == 4)
    {
      goto LABEL_147;
    }

    v43 = *(a1 + 352);
    if ((~v43 & 0x21) != 0)
    {
      goto LABEL_147;
    }

    if ((v43 & 0x2000) == 0)
    {
LABEL_62:
      if (v10 >= 2)
      {
        v44 = *(v9 + 64);
        if (v44 == *(v9 + 144))
        {
          v45 = *(v9 + 72);
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = &unk_1F5962E60;
          v120 = v45;
          v46 = *(v9 + 152);
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          __ns.__rep_ = &unk_1F5962E60;
          v115 = v46;
          if ((*(a1 + 353) & 0x20) != 0)
          {
            if (DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(&__ns, 0.0))
            {
              v47 = (DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::referenceSilent + 1);
              DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::referenceSilent = v47;
              HIDWORD(v48) = -1030792151 * v47 + 85899344;
              LODWORD(v48) = HIDWORD(v48);
              if ((v48 >> 3) <= 0x147AE14)
              {
                v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v50)
                {
                  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v51 = 0;
                v52 = 0;
                v53 = *(v49 + 8);
                v110 = 2;
                v54 = 47;
                do
                {
                  v55 = &aLibraryCachesC_11[v51];
                  if (v54 == 47)
                  {
                    v52 = &aLibraryCachesC_11[v51];
                  }

                  v54 = v55[1];
                  if (!v55[1])
                  {
                    break;
                  }

                  v20 = v51++ >= 0xFFF;
                }

                while (!v20);
                if (v52)
                {
                  v56 = v52 + 1;
                }

                else
                {
                  v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
                }

                *&v109 = v56;
                *(&v109 + 1) = (v47 << 32) | 0x9A;
                caulk::concurrent::messenger::enqueue_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_4,std::tuple<char const*,int,int>>(v53, &v110, &v109);
                if (v50)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                }
              }
            }

            else
            {
              DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::referenceSilent = 0;
            }
          }

          LODWORD(v88) = *v120;
          if (*v120 >= *v115)
          {
            v88 = *v115;
          }

          else
          {
            v88 = v88;
          }

          if (v88)
          {
            v89 = 0;
            v90 = v120 + 2;
            v91 = v115 + 2;
            do
            {
              if (v44)
              {
                v92 = 0;
                v93 = &v90[4 * v89];
                v94 = &v91[4 * v89];
                v95 = *v93;
                v96 = *v94;
                if (v95 >= v96)
                {
                  v97 = *v94;
                }

                else
                {
                  v97 = *v93;
                }

                v98 = *(v93 + 1);
                v99 = *(v94 + 1);
                v100 = 4 * v95;
                v101 = 4 * v96;
                do
                {
                  if (v97)
                  {
                    v102 = 0;
                    do
                    {
                      *(v98 + v102) = *(v99 + v102) + *(v98 + v102);
                      v102 += 4;
                    }

                    while (4 * v97 != v102);
                  }

                  ++v92;
                  v98 += v100;
                  v99 += v101;
                }

                while (v92 != v44);
              }

              ++v89;
            }

            while (v89 != v88);
          }

          DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(&__ns);
          DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(&v116);
        }
      }

LABEL_147:
      DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(&v104);
    }

    v57 = v10 - 1;
    if (v10 <= 1)
    {
      v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = 0;
      v61 = 0;
      v62 = *(v58 + 8);
      v63 = 47;
      do
      {
        v64 = &aLibraryCachesC_11[v60];
        if (v63 == 47)
        {
          v61 = &aLibraryCachesC_11[v60];
        }

        v63 = v64[1];
        if (!v64[1])
        {
          break;
        }

        v20 = v60++ >= 0xFFF;
      }

      while (!v20);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_149;
      }

      if (v61)
      {
        v65 = v61 + 1;
      }

      else
      {
        v65 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
      }

      v66 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v66 + 16) = 0;
      *(v66 + 20) = 2;
      *(v66 + 24) = v65;
      *(v66 + 32) = (v10 << 32) | 0x5D;
      *v66 = &unk_1F5962D58;
      *(v66 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v62, v66);
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }
    }

    if (v8 != 1)
    {
      v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = 0;
      v70 = 0;
      v71 = *(v67 + 8);
      v72 = 47;
      do
      {
        v73 = &aLibraryCachesC_11[v69];
        if (v72 == 47)
        {
          v70 = &aLibraryCachesC_11[v69];
        }

        v72 = v73[1];
        if (!v73[1])
        {
          break;
        }

        v20 = v69++ >= 0xFFF;
      }

      while (!v20);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_149;
      }

      if (v70)
      {
        v74 = v70 + 1;
      }

      else
      {
        v74 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
      }

      v75 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v75 + 16) = 0;
      *(v75 + 20) = 2;
      *(v75 + 24) = v74;
      *(v75 + 32) = (v8 << 32) | 0x61;
      *v75 = &unk_1F5962DB0;
      *(v75 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v71, v75);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }
    }

    if (v8 != 1)
    {
      goto LABEL_62;
    }

    if (v10 < 2)
    {
      goto LABEL_62;
    }

    v76 = (v9 + 144);
    v77 = 1;
    do
    {
      v78 = *v76;
      v76 += 20;
      v77 &= *(v9 + 64) == v78;
      --v57;
    }

    while (v57);
    if (v77)
    {
      goto LABEL_62;
    }

    v79 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v80)
    {
      atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = 0;
    v82 = 0;
    v83 = *(v79 + 8);
    v84 = 47;
    do
    {
      v85 = &aLibraryCachesC_11[v81];
      if (v84 == 47)
      {
        v82 = &aLibraryCachesC_11[v81];
      }

      v84 = v85[1];
      if (!v85[1])
      {
        break;
      }

      v20 = v81++ >= 0xFFF;
    }

    while (!v20);
    if (*MEMORY[0x1E69E3C08])
    {
      if (v82)
      {
        v86 = v82 + 1;
      }

      else
      {
        v86 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
      }

      v87 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v87 + 16) = 0;
      *(v87 + 20) = 2;
      *(v87 + 24) = v86;
      *(v87 + 32) = 114;
      *v87 = &unk_1F5962E08;
      *(v87 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v83, v87);
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      goto LABEL_62;
    }

LABEL_149:
    __break(1u);
  }

  v103 = *MEMORY[0x1E69E9840];
}

void sub_1DE2A3A90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(&a18);
  DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(&a25);
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = 0;
    v31 = 0;
    v32 = *(v28 + 8);
    a15 = 2;
    v33 = 47;
    while (1)
    {
      v34 = &aLibraryCachesC_11[v30];
      if (v33 == 47)
      {
        v31 = &aLibraryCachesC_11[v30];
      }

      v33 = v34[1];
      if (v34[1])
      {
        if (v30++ < 0xFFF)
        {
          continue;
        }
      }

      if (v31)
      {
        v36 = v31 + 1;
      }

      else
      {
        v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
      }

      v37 = (*(*v27 + 16))(v27);
      *&a18 = v36;
      DWORD2(a18) = 68;
      a19 = v37;
      caulk::concurrent::messenger::enqueue_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_3,std::tuple<char const*,int,char const*>>(v32, &a15, &a18);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      __cxa_end_catch();
      JUMPOUT(0x1DE2A39CCLL);
    }
  }

  _Unwind_Resume(a1);
}

void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = &unk_1F598AF00;
  v2 = 0;
  v3 = &v1;
  DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(a1, &v1);
}

void sub_1DE2A3C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_3,std::tuple<char const*,int,char const*>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5962D30;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5962CD8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_3,std::tuple<char const*,int,char const*>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_3,std::tuple<char const*,int,char const*>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_3,std::tuple<char const*,int,char const*>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d DSP_HAL_MockCallbacks::onClientIO - something went terribly wrong while mocking processing: %s", &v10, 0x1Cu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_3,std::tuple<char const*,int,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_3,std::tuple<char const*,int,char const*>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = &unk_1F598AF90;
  v2 = 0;
  v3 = &v1;
  DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(a1, &v1);
}

void sub_1DE2A4060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::__value_func[abi:ne200100](v2, a2);
  v3 = 0;
  operator new();
}

void sub_1DE2A4234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Proc_Stream &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1},std::allocator<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1}>,void ()(AMCP::Proc_Stream &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN20DSP_HAL_Bypass_Utils18AMCP_IOData_HelperILNS_16InterleavePolicyE0EE15for_each_bufferENS2_10StreamSideENSt3__18functionIFvRN4AMCP11Proc_StreamER11AudioBufferEEEEUlS8_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1},std::allocator<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1}>,void ()(AMCP::Proc_Stream &)>::operator()(uint64_t result, uint64_t a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 72);
  if (v2)
  {
    v3 = *v2;
    std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::__value_func[abi:ne200100](v8, result + 8);
    if (v3)
    {
      v4 = 16 * v3;
      v5 = v2 + 2;
      do
      {
        if (!v9)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v9 + 48))(v9, a2, v5);
        v5 += 4;
        v4 -= 16;
      }

      while (v4);
    }

    v10 = a2;
    std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::__value_func[abi:ne200100](v11, v8);
    std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100](v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__function::__func<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1},std::allocator<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1}>,void ()(AMCP::Proc_Stream &)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1},std::allocator<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1}>,void ()(AMCP::Proc_Stream &)>::~__func(void *a1)
{
  *a1 = &unk_1F598AE70;
  std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1},std::allocator<DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::for_each_buffer(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::StreamSide,std::function<void ()(AMCP::Proc_Stream &,AudioBuffer &)>)::{lambda(AMCP::Proc_Stream &)#1}>,void ()(AMCP::Proc_Stream &)>::~__func(void *a1)
{
  *a1 = &unk_1F598AE70;
  std::__function::__value_func<void ()(AMCP::Proc_Stream &,AudioBuffer &)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_with_delay(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_with_delay(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN20DSP_HAL_Bypass_Utils16SimulatedLatencyIfLNS_16InterleavePolicyE0EE15copy_with_delayERNS_18AMCP_IOData_HelperILS1_0EEEEUlRN4AMCP11Proc_StreamER11AudioBufferE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_with_delay(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_with_delay(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::operator()(uint64_t a1, int16x4_t a2, uint64_t a3, unsigned int *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = **(a1 + 8);
  if (v6 <= (v5[1] - *v5) >> 3)
  {
    operator new();
  }

  v7 = *(*v5 + 8 * v6);
  v8 = *a4;
  v9 = *(v7 + 72);
  if (v9 != v8)
  {
    DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine::init(v7, ((*(v7 + 8) - *v7) >> 2) / v9, v8, a2);
    v7 = *(*v5 + 8 * **(a1 + 8));
  }

  v10 = *(a4 + 1);
  v11 = a4[1] >> 2;
  v12 = v11;
  v13 = v10;
  do
  {
    if (!(v12 | v11))
    {
      break;
    }

    v14 = DSP_HAL_Bypass_Utils::SimpleRing<float>::write_advance(v7, v10, v12);
    v10 += 4 * v14;
    if (v11 >= (v10 - v13) >> 2)
    {
      v15 = (v10 - v13) >> 2;
    }

    else
    {
      v15 = v11;
    }

    v16 = *(v7 + 64);
    if (v16)
    {
      v18 = *(v7 + 48);
      v17 = *(v7 + 56);
      v19 = (*(v18 + 8) - v17) >> 2;
      if (v16 >= v19)
      {
        v20 = (*(v18 + 8) - v17) >> 2;
      }

      else
      {
        v20 = *(v7 + 64);
      }

      if (v16 <= v19)
      {
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v21 = v16 - v19;
        v22 = *v18;
        if (v16 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = *(v7 + 64);
        }
      }
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v23 = 0;
      v17 = 0;
    }

    v24 = v15 & ~(v15 >> 63);
    if (v20 >= v24)
    {
      v25 = v15 & ~(v15 >> 63);
    }

    else
    {
      v25 = v20;
    }

    memcpy(v13, v17, 4 * v25);
    if (v23 >= v24 - v25)
    {
      v23 = v24 - v25;
    }

    v26 = memcpy(&v13[4 * v25], v22, 4 * v23);
    v27 = v23 + v25;
    v28 = *(v7 + 56);
    *(v7 + 64) -= v27;
    v29 = *(v7 + 40);
    *(v7 + 56) = **(v7 + 48) + 4 * ((v27 + ((v28 - **(v7 + 48)) >> 2)) % ((*(*(v7 + 48) + 8) - **(v7 + 48)) >> 2));
    *(v7 + 40) = v29 + v27;
    *(v7 + 32) = **(v7 + 24) + 4 * (((*(v7 + 32) - **(v7 + 24)) >> 2) % ((*(*(v7 + 24) + 8) - **(v7 + 24)) >> 2));
    v13 += 4 * v27;
    if (v10 < v13)
    {
      v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v30 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v26);
      }

      v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v33 = *v31;
        AMCP::Log::Scope::get_os_log_t(*v31);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      else
      {
        v33 = *v31;
        AMCP::Log::Scope::get_os_log_t(*v31);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        buf = 136315394;
        buf_4 = "DSP_HAL_Bypass_Utilities.h";
        v38 = 1024;
        v39 = 695;
        _os_log_debug_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_DEBUG, "%32s:%-5d SimulatedLatency::delay_samples - delay line corruption, read overwriting unwritten write data\n", &buf, 0x12u);
      }
    }

    v12 -= v14;
    v11 -= v27;
  }

  while (v27 + v14);
  ++**(a1 + 8);
  v34 = *MEMORY[0x1E69E9840];
}

void DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine::init(uint64_t a1, uint64_t a2, uint64_t a3, int16x4_t a4)
{
  *(a1 + 72) = a3;
  v5 = a3 * a2;
  v6 = 2 * a3 * a2;
  LODWORD(__p) = 0;
  std::vector<float>::resize(a1, v6, &__p, a4);
  *(a1 + 32) = **(a1 + 24);
  *(a1 + 40) = v6;
  *(a1 + 56) = **(a1 + 48);
  *(a1 + 64) = 0;
  std::vector<float>::vector[abi:ne200100](&__p, v5);
  DSP_HAL_Bypass_Utils::SimpleRing<float>::write_advance(a1, __p, (v8 - __p) >> 2);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

unint64_t DSP_HAL_Bypass_Utils::SimpleRing<float>::write_advance(void *a1, char *__src, unint64_t a3)
{
  v6 = a1[5];
  if (v6)
  {
    v8 = a1[3];
    v7 = a1[4];
    v9 = *(v8 + 8) - v7;
    v10 = v9 >> 2;
    v11 = v6 <= v9 >> 2;
    if (v6 >= v9 >> 2)
    {
      v12 = v9 >> 2;
    }

    else
    {
      v12 = v6;
    }

    if (v11)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v13 = v6 - v10;
      v14 = *v8;
      if (v6 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v6;
      }
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v7 = 0;
  }

  if (v12 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v12;
  }

  memcpy(v7, __src, 4 * v16);
  if (v15 >= a3 - v16)
  {
    v17 = a3 - v16;
  }

  else
  {
    v17 = v15;
  }

  memcpy(v14, &__src[4 * v16], 4 * v17);
  result = v17 + v16;
  v19 = a1[6];
  v20 = a1[8];
  v21 = *v19;
  v22 = (a1[7] - *v19) >> 2;
  v23 = (v19[1] - *v19) >> 2;
  v24 = a1[5] - (v17 + v16);
  a1[4] = *a1[3] + 4 * ((v17 + v16 + ((a1[4] - *a1[3]) >> 2)) % ((*(a1[3] + 8) - *a1[3]) >> 2));
  a1[5] = v24;
  a1[7] = v21 + 4 * (v22 % v23);
  a1[8] = v20 + v17 + v16;
  return result;
}

uint64_t *std::vector<float>::resize(uint64_t *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = (v4 - *result) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v5 + 4 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = result[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v4 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1DE757E30)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1DE757E20)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = v4 + 4 * v7;
  }

  result[1] = v12;
  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE2A511C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_with_delay(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_with_delay(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5962C58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(AMCP::Proc_Stream *,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<void ()(AMCP::Proc_Stream *,AMCP::Proc_Stream *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::__function::__func<BOOL DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(BOOL)::{lambda(AMCP::Proc_Stream *,AMCP::Proc_Stream *)#1},std::allocator<BOOL DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(BOOL)::{lambda(AMCP::Proc_Stream *,AMCP::Proc_Stream *)#1}>,void ()(AMCP::Proc_Stream *,AMCP::Proc_Stream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN20DSP_HAL_Bypass_Utils18AMCP_IOData_HelperILNS_16InterleavePolicyE0EE20copy_input_to_outputIfLNS2_12CopyStrategyE0EEEbbEUlPN4AMCP11Proc_StreamES7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE **std::__function::__func<BOOL DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(BOOL)::{lambda(AMCP::Proc_Stream *,AMCP::Proc_Stream *)#1},std::allocator<BOOL DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(BOOL)::{lambda(AMCP::Proc_Stream *,AMCP::Proc_Stream *)#1}>,void ()(AMCP::Proc_Stream *,AMCP::Proc_Stream *)>::operator()(_BYTE **result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(*a2 + 72);
    v6 = *(v3 + 72);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    v34 = result;
    if (!v7)
    {
      v8 = *v5;
      if (*v5)
      {
        v9 = *v6;
        if (*v6)
        {
          v10 = 0;
          if (v9 >= v8)
          {
            v11 = v8;
          }

          else
          {
            v11 = v9;
          }

          v12 = v8 == v9;
          v13 = v5 + 2;
          v14 = v6 + 2;
          v33 = v6 + 2;
          while (1)
          {
            v15 = &v13[4 * v10];
            v16 = &v14[4 * v10];
            v17 = *v15;
            v18 = *v16;
            if (v17 != v18)
            {
              break;
            }

            v19 = v16[1];
            v20 = v15[1];
            if (v19 >= v20)
            {
              v21 = v20;
            }

            else
            {
              v21 = v19;
            }

            result = memcpy(*(v16 + 1), *(v15 + 1), v21);
            v22 = v15[1] == v16[1];
LABEL_42:
            v12 &= v22;
            if (++v10 == v11)
            {
              goto LABEL_45;
            }
          }

          if (v17)
          {
            v23 = v15[1] / (4 * v17);
            if (v18)
            {
LABEL_22:
              v24 = v16[1] / (4 * v18);
              goto LABEL_25;
            }
          }

          else
          {
            v23 = 0;
            if (v18)
            {
              goto LABEL_22;
            }
          }

          v24 = 0;
LABEL_25:
          if (v24 >= v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = v24;
          }

          v26 = *(v15 + 1);
          v27 = *(v16 + 1);
          if (v26)
          {
            v28 = v27 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (v28 || v25 == 0)
          {
            v22 = 0;
          }

          else
          {
            v30 = v13;
            v31 = v11;
            if (v18 < v17)
            {
              LODWORD(v17) = *v16;
            }

            v32 = 4 * v17;
            do
            {
              result = memcpy(v27, v26, v32);
              v26 += 4 * *v15;
              v27 += 4 * *v16;
              --v25;
            }

            while (v25);
            v22 = 0;
            v11 = v31;
            v13 = v30;
            v14 = v33;
          }

          goto LABEL_42;
        }
      }
    }

    v12 = 0;
LABEL_45:
    *v34[2] &= v12;
  }

  return result;
}

__n128 std::__function::__func<BOOL DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(BOOL)::{lambda(AMCP::Proc_Stream *,AMCP::Proc_Stream *)#1},std::allocator<BOOL DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(BOOL)::{lambda(AMCP::Proc_Stream *,AMCP::Proc_Stream *)#1}>,void ()(AMCP::Proc_Stream *,AMCP::Proc_Stream *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598B010;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<float>(float,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<float>(float,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN20DSP_HAL_Bypass_Utils18AMCP_IOData_HelperILNS_16InterleavePolicyE0EE10set_outputIfEEvT_mEUlRN4AMCP11Proc_StreamER11AudioBufferE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<float>(float,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<float>(float,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::operator()(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  if (v5)
  {
    LODWORD(a2) = *(a1 + 8);
    v6 = *(a4 + 4);
    if (*&a2 == 0.0)
    {
      bzero(v5, v6);
    }

    else if (v6 >= 4)
    {
      v7 = ((v6 >> 2) + 3) & 0x7FFFFFFC;
      v8 = vdupq_n_s64((v6 >> 2) - 1);
      v9 = v5 + 2;
      v10 = 1;
      do
      {
        v11 = vdupq_n_s64(v10 - 1);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1DE757E30)));
        if (vuzp1_s16(v12, *&a2).u8[0])
        {
          *(v9 - 2) = LODWORD(a2);
        }

        if (vuzp1_s16(v12, *&a2).i8[2])
        {
          *(v9 - 1) = LODWORD(a2);
        }

        if (vuzp1_s16(*&a2, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1DE757E20)))).i32[1])
        {
          *v9 = LODWORD(a2);
          v9[1] = LODWORD(a2);
        }

        v10 += 4;
        v9 += 4;
        v7 -= 4;
      }

      while (v7);
    }
  }
}

uint64_t std::__function::__func<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<float>(float,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<float>(float,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F598AF90;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(uint64_t a1, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = *(a1 + 56);
  v3 = *v2;
  v7 = *v2 != 0;
  v9[0] = &unk_1F5962F38;
  v9[1] = &v7;
  v9[2] = &v8;
  v9[3] = v9;
  if (v3)
  {
    std::__function::__value_func<void ()(AudioBuffer const&)>::__value_func[abi:ne200100](v10, v9);
    v4 = *v2;
    if (v4)
    {
      std::__function::__value_func<void ()(AudioBuffer const&)>::__value_func[abi:ne200100](v11, v10);
      std::for_each[abi:ne200100]<AudioBuffer const*,std::function<void ()(AudioBuffer const&)>>(v12, (v2 + 2), &v2[4 * v4 + 2], v11);
      std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v12);
      std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v11);
    }

    std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v10);
  }

  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](v9);
  result = v7;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE2A5800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_4,std::tuple<char const*,int,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5963010;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5962FB8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(void *a1)
{
  *a1 = &unk_1F5962AA8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::rawSamples(uint64_t a1)
{
  return a1 + 8;
}

{
  return a1 + 8;
}

BOOL DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(uint64_t a1, float a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (*v4 == v4[1] || **(*(*a1 + 40))(a1) != a2)
  {
    return 0;
  }

  v6 = *(*(*a1 + 40))(a1);
  v7 = *((*(*a1 + 40))(a1) + 8);
  if (v6 == v7)
  {
    v7 = v6;
  }

  else
  {
    v8 = v6 + 1;
    while (v8 != v7)
    {
      v9 = *(v8 - 1);
      v10 = *v8++;
      if (v9 != v10)
      {
        v7 = v8 - 2;
        return v7 == *((*(*a1 + 40))(a1) + 8);
      }
    }
  }

  return v7 == *((*(*a1 + 40))(a1) + 8);
}

uint64_t DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(uint64_t a1, float a2)
{
  v4 = *(*(*a1 + 32))(a1);
  result = (*(*a1 + 32))(a1);
  v6 = (*(result + 8) - v4) >> 2;
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    v8 = (v6 + 3) & 0x7FFFFFFFFFFFFFFCLL;
    v9 = vdupq_n_s64(v7);
    v10 = (v4 + 8);
    v11 = 1;
    do
    {
      v12 = vdupq_n_s64(v11 - 1);
      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_1DE757E30)));
      if (vuzp1_s16(v13, *v9.i8).u8[0])
      {
        *(v10 - 2) = a2;
      }

      if (vuzp1_s16(v13, *&v9).i8[2])
      {
        *(v10 - 1) = a2;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_1DE757E20)))).i32[1])
      {
        *v10 = a2;
        v10[1] = a2;
      }

      v11 += 4;
      v10 += 4;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(void *a1)
{
  DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_4,std::tuple<char const*,int,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_4,std::tuple<char const*,int,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_4,std::tuple<char const*,int,int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Mix reference mic mock reference has been silent for %d IO calls.", &v10, 0x18u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_4,std::tuple<char const*,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_4,std::tuple<char const*,int,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__value_func<void ()(AudioBuffer const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(AudioBuffer const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::for_each[abi:ne200100]<AudioBuffer const*,std::function<void ()(AudioBuffer const&)>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      v8 = *(a4 + 24);
      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v8 + 48))(v8, v7);
      v7 += 16;
    }

    while (v7 != a3);
  }

  v10 = (a4 + 24);
  result = *(a4 + 24);
  if (!result)
  {
    v10 = (a1 + 24);
    goto LABEL_9;
  }

  if (result != a4)
  {
    *(a1 + 24) = result;
LABEL_9:
    *v10 = 0;
    return result;
  }

  *(a1 + 24) = a1;
  return (*(*result + 24))(result, a1);
}

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1},std::allocator<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1}>,void ()(AudioBuffer const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK20DSP_HAL_Bypass_Utils17ABL_EncapsulationIfLNS_16InterleavePolicyE0EE15is_every_sampleEfEUlRK11AudioBufferE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1},std::allocator<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1}>,void ()(AudioBuffer const&)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*v2)
  {
    v3 = *(a2 + 4);
    if (v3 && (v4 = *(a2 + 8), v5 = *v4, *v4 == **(result + 16)))
    {
      v7 = &v4[v3 >> 2];
      if (v3 >= 4)
      {
        --v4;
        v8 = 4 * (v3 >> 2) - 4;
        while (v8)
        {
          v9 = v4[2];
          ++v4;
          v8 -= 4;
          v10 = v5 == v9;
          v5 = v9;
          if (!v10)
          {
            goto LABEL_11;
          }
        }

        v4 = v7;
      }

LABEL_11:
      v6 = v4 == v7;
    }

    else
    {
      v6 = 0;
    }

    *v2 = v6;
  }

  return result;
}

__n128 std::__function::__func<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1},std::allocator<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::is_every_sample(float)::{lambda(AudioBuffer const&)#1}>,void ()(AudioBuffer const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5962F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::rawSamples(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "DSP_HAL_Bypass_Utilities.h";
    v7 = 1024;
    v8 = 259;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ABL_Encapsulation doesn't hold any samples on its own.", &v5, 0x1Cu);
  }

  abort();
}

uint64_t DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(uint64_t a1, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = &unk_1F5962EB8;
  v7 = a2;
  v8 = &v6;
  v2 = *(a1 + 56);
  if (v2 && *v2)
  {
    std::__function::__value_func<void ()(AudioBuffer &)>::__value_func[abi:ne200100](v9, &v6);
    v3 = *v2;
    if (v3)
    {
      std::__function::__value_func<void ()(AudioBuffer &)>::__value_func[abi:ne200100](v10, v9);
      std::for_each[abi:ne200100]<AudioBuffer *,std::function<void ()(AudioBuffer&)>>(v11, (v2 + 2), &v2[4 * v3 + 2], v10);
      std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](v11);
      std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](v10);
    }

    std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](v9);
  }

  result = std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](&v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE2A6328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AudioBuffer &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(AudioBuffer &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::for_each[abi:ne200100]<AudioBuffer *,std::function<void ()(AudioBuffer&)>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      v8 = *(a4 + 24);
      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v8 + 48))(v8, v7);
      v7 += 16;
    }

    while (v7 != a3);
  }

  v10 = (a4 + 24);
  result = *(a4 + 24);
  if (!result)
  {
    v10 = (a1 + 24);
    goto LABEL_9;
  }

  if (result != a4)
  {
    *(a1 + 24) = result;
LABEL_9:
    *v10 = 0;
    return result;
  }

  *(a1 + 24) = a1;
  return (*(*result + 24))(result, a1);
}

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1},std::allocator<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1}>,void ()(AudioBuffer &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN20DSP_HAL_Bypass_Utils17ABL_EncapsulationIfLNS_16InterleavePolicyE0EE9fill_withEfEUlR11AudioBufferE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1},std::allocator<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1}>,void ()(AudioBuffer &)>::operator()(uint64_t result, uint64_t a2, int16x4_t a3)
{
  v3 = *(a2 + 4);
  if (v3 >= 4)
  {
    a3.i32[0] = *(result + 8);
    v4 = v3 >> 2;
    v5 = ((*(a2 + 4) >> 2) + 3) & 0x7FFFFFFC;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = (*(a2 + 8) + 8);
    v8 = 1;
    do
    {
      v9 = vdupq_n_s64(v8 - 1);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE757E30)));
      if (vuzp1_s16(v10, a3).u8[0])
      {
        *(v7 - 2) = a3.i32[0];
      }

      if (vuzp1_s16(v10, a3).i8[2])
      {
        *(v7 - 1) = a3.i32[0];
      }

      if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1DE757E20)))).i32[1])
      {
        *v7 = a3.i32[0];
        v7[1] = a3.i32[0];
      }

      v8 += 4;
      v7 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__function::__func<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1},std::allocator<DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::fill_with(float)::{lambda(AudioBuffer &)#1}>,void ()(AudioBuffer &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5962EB8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void DSP_HAL_Bypass_Utils::ABL_Encapsulation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Encapsulation(void *a1)
{
  DSP_HAL_Bypass_Utils::ABL_Allocation<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::~ABL_Allocation(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_2,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Mix reference mic mock is expecting that all stream frame counts are equal", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_2,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_1,std::tuple<char const*,int,int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Mix reference mic mock is expecting 1 IO output stream, not %d", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_1,std::tuple<char const*,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_0,std::tuple<char const*,int,int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Mix reference mic mock is expecting at least 2 IO input streams, not %d", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::mixReferenceWithMic(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &)::$_0,std::tuple<char const*,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_2,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d DSP_HAL_MockCallbacks::onClientIO - buffer data is invalid, nothing to process", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_2,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d DSP_HAL_MockCallbacks::onClientIO - ClientIO called without prior registration.", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(char,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(char,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN20DSP_HAL_Bypass_Utils18AMCP_IOData_HelperILNS_16InterleavePolicyE0EE10set_outputIcEEvT_mEUlRN4AMCP11Proc_StreamER11AudioBufferE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(char,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(char,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    bzero(v3, *(a3 + 4));
  }
}

uint64_t std::__function::__func<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(char,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1},std::allocator<void DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(char,unsigned long)::{lambda(AMCP::Proc_Stream &,AudioBuffer &)#1}>,void ()(AMCP::Proc_Stream &,AudioBuffer &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F598AF00;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_0,std::tuple<char const*,int,char const*>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp] Mock IO is being called for %s", &v11, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<DSP_HAL_Mock_Callbacks::onClientIO(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)::$_0,std::tuple<char const*,int,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_HAL_Mock_Callbacks::onBeginProcessing(DSP_HAL_Mock_Callbacks *this)
{
  result = *(this + 60);
  if (result)
  {
    return std::function<void ()(BOOL)>::operator()(result, 1);
  }

  return result;
}

void DSP_HAL_Mock_Callbacks::~DSP_HAL_Mock_Callbacks(DSP_HAL_Mock_Callbacks *this)
{
  DSP_HAL_Mock_Callbacks::~DSP_HAL_Mock_Callbacks(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5962A40;
  v2 = *(this + 61);
  if (v2)
  {
    CFRelease(v2);
  }

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 456);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](this + 424);
  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  v3 = (this + 360);
  std::vector<std::unique_ptr<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine,std::default_delete<DSP_HAL_Bypass_Utils::SimulatedLatency<float,(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::InterleavedDelayLine>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 320);
  *this = &unk_1F598ABF8;
  atomic_load(this + 316);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(this + 160);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(this + 8);
}

void sub_1DE2A7404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DSP_Host_Types::NegotiateRequest::~NegotiateRequest(va);

  _Unwind_Resume(a1);
}

void DSP_Host_Types::NegotiateRequest::~NegotiateRequest(DSP_Host_Types::NegotiateRequest *this)
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

void sub_1DE2A78D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  DSP_Host_Types::FormatDescription::~FormatDescription(va);
  DSP_Host_Types::NegotiateResponse::~NegotiateResponse((v5 - 152));
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator applesauce::CF::DictionaryRef(void *a1, uint64_t a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a2 + 24))(a2, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE2A79DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::FormatDescription::FormatDescription(DSP_Host_Types::FormatDescription *this, const DSP_Host_Types::FormatDescription *a2)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F598DDD8;
  std::string::basic_string[abi:ne200100]<0>(__p, "sample rate");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 3, __p);
  *(this + 3) = &unk_1F598DE70;
  *(this + 40) = 0;
  *(this + 48) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "channels");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 7, __p);
  *(this + 7) = &unk_1F598EB60;
  *(this + 72) = 0;
  *(this + 76) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "is interleaved");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 10, __p);
  *(this + 10) = &unk_1F598DCE8;
  *(this + 48) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "common pcm format");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 13, __p);
  *(this + 13) = &unk_1F598EB60;
  *(this + 120) = 0;
  *(this + 124) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  return DSP_Host_Types::FormatDescription::operator=(this, a2);
}

void sub_1DE2A7BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v18);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v17);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v16);
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::FormatDescription>::~DSP_Host_DictionaryData(v15);
  _Unwind_Resume(a1);
}

void sub_1DE2A7C30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2A7C20);
}

void sub_1DE2A7CC4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<DSP_Host_Types::FormatDescription>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void DSP_Host_Types::NegotiateResponse::~NegotiateResponse(DSP_Host_Types::NegotiateResponse *this)
{
  *this = &unk_1F598EA30;
  v3 = (this + 72);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598EA70;
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
  *this = &unk_1F598EA30;
  v3 = (this + 72);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598EA70;
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

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::NegotiateResponse>::add_to(uint64_t a1, __CFArray **a2)
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

void sub_1DE2A7F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::NegotiateResponse>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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

void std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<DSP_Host_Types::FormatDescription>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_Host_Types::FormatDescription::operator=(uint64_t a1, uint64_t a2)
{
  DSP_Dictionariable::SingleKvp<double>::operator=(a1 + 24, a2 + 24);
  DSP_Dictionariable::SingleKvp<unsigned int>::operator=(a1 + 56, a2 + 56);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 96) = *(a2 + 96);
  DSP_Dictionariable::SingleKvp<unsigned int>::operator=(a1 + 104, a2 + 104);
  return a1;
}

uint64_t DSP_Dictionariable::SingleKvp<double>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v6;
  return a1;
}

uint64_t DSP_Dictionariable::SingleKvp<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v6;
  return a1;
}

void sub_1DE2A8DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE2A92E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, DSP_Dictionariable::DictionariableKvp *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_1DE2A93B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2A9370);
}

void sub_1DE2A93D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2A9378);
}

void sub_1DE2A93F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2A9380);
}

void sub_1DE2A9414(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2A9388);
}

void sub_1DE2A9434(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2A9390);
}

void sub_1DE2A9454(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2A9398);
}

uint64_t DSP_Dictionariable::SingleKvp<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 16), (a2 + 16));
  return a1;
}

void DSP_Dictionariable::SingleKvp<std::string>::~SingleKvp(void **this)
{
  *this = &unk_1F5985C78;
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(this);
}

{
  *this = &unk_1F5985C78;
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985C78;
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(this);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceConfiguration>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985F18;
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

void DSP_Dictionariable::SingleKvp<std::string>::clear_value(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 40) = 0;
  }
}

uint64_t DSP_Dictionariable::SingleKvp<std::string>::load_from(uint64_t a1, CFDictionaryRef *a2)
{
  v7[0] = &unk_1F598EC08;
  v7[1] = 0;
  v8 = a2;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
      a2 = v8;
    }

    *(a1 + 40) = 0;
  }

  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, *(a1 + 8)))
  {
    applesauce::CF::details::find_at_key<std::string,__CFString const*&>(&v5, *v8, *(a1 + 8));
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 39) < 0)
      {
        operator delete(*(a1 + 16));
      }

      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
    }

    else
    {
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
      *(a1 + 40) = 1;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v7);
  return v3;
}

_BYTE *applesauce::CF::details::find_at_key<std::string,__CFString const*&>(UInt8 *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<std::string,0>(a1, v4);
}

void DSP_Dictionariable::SingleKvp<std::string>::add_to(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 39);
    if (v4 < 0)
    {
      v5 = *(a1 + 16);
      if (!v5)
      {
        mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(*a2, v3, 0);
        return;
      }

      v4 = *(a1 + 24);
    }

    else
    {
      v5 = (a1 + 16);
    }

    v6 = CFStringCreateWithBytes(0, v5, v4, 0x8000100u, 0);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = v6;
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(*a2, v3, v6);
    CFRelease(v7);
  }
}

void sub_1DE2A988C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceConfiguration>::add_to(uint64_t a1, __CFArray **a2)
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

void sub_1DE2A9A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceConfiguration>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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

void std::__shared_ptr_emplace<DSP_Host_Types::DeviceConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE2AA28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  DSP_Host_Types::FormatDescription::~FormatDescription(&a28);
  DSP_Host_Types::NegotiateResponse::~NegotiateResponse(&a11);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v28 - 88);
  _Unwind_Resume(a1);
}

void sub_1DE2AAA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = v5;
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void non-virtual thunk toAMCP::IOAudio2::Driver::~Driver(AMCP::IOAudio2::Driver *this)
{
  AMCP::IOAudio2::Driver::~Driver((this - 24));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::IOAudio2::Driver::~Driver((this - 24));
}

void AMCP::IOAudio2::Driver::~Driver(AMCP::IOAudio2::Driver *this)
{
  *this = &unk_1F5963148;
  *(this + 3) = &unk_1F5963170;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<AMCP::IOAudio2::Device>::reset[abi:ne200100](--v3, 0);
      }

      while (v3 != v2);
      v4 = *(this + 8);
    }

    *(this + 9) = v2;
    operator delete(v4);
  }

  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100](this + 7, 0);
  *(this + 3) = &unk_1F59748E8;
  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  AMCP::IOAudio2::Driver::~Driver(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      IOObjectRelease(v3);
    }

    std::__function::__value_func<void ()(applesauce::iokit::io_object_holder)>::~__value_func[abi:ne200100](v2 + 16);
    v4 = *(v2 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    IONotificationPortDestroy(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(applesauce::iokit::io_object_holder)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<AMCP::IOAudio2::Device>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((v2 + 496));
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((v2 + 472));
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((v2 + 520));
    std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v2 + 376), 0);
    AMCP::Utility::Mach_Port::reset((v2 + 384));
    std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v2 + 368), 0);
    AMCP::Core::Broker::destroy_core(*(*(*v2 + 32) + 16), *(v2 + 16));
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      v3 = AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v5 + 16);
    switch(v7)
    {
      case 3:
        v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v17 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v24 = *(v2 + 8);
          if (v24)
          {
            applesauce::CF::convert_to<std::string,0>(__p, v24);
            if (v38 >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = __p[0];
            }

            v26 = *(v2 + 16);
            *buf = 136315906;
            *&buf[4] = "IOAudio2_Device.cpp";
            v40 = 1024;
            v41 = 117;
            v42 = 2080;
            v43 = v25;
            v44 = 1024;
            v45 = v26;
            v27 = v20;
            v28 = OS_LOG_TYPE_INFO;
            goto LABEL_42;
          }

LABEL_56:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        break;
      case 2:
        v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v13 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v3);
        }

        v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v16 = *v15;
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        else
        {
          v16 = *v15;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v21 = applesauce::CF::StringRef::operator->((v2 + 8));
          applesauce::CF::convert_to<std::string,0>(__p, *v21);
          if (v38 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          v23 = *(v2 + 16);
          *buf = 136315906;
          *&buf[4] = "IOAudio2_Device.cpp";
          v40 = 1024;
          v41 = 117;
          v42 = 2080;
          v43 = v22;
          v44 = 1024;
          v45 = v23;
          _os_log_debug_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tore down device '%s' with object id %u", buf, 0x22u);
LABEL_43:
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }
        }

        break;
      case 1:
        v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v8 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v3);
        }

        v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          v11 = *v10;
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        else
        {
          v11 = *v10;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(v2 + 8);
          if (v29)
          {
            applesauce::CF::convert_to<std::string,0>(__p, v29);
            if (v38 >= 0)
            {
              v30 = __p;
            }

            else
            {
              v30 = __p[0];
            }

            v31 = *(v2 + 16);
            *buf = 136315906;
            *&buf[4] = "IOAudio2_Device.cpp";
            v40 = 1024;
            v41 = 117;
            v42 = 2080;
            v43 = v30;
            v44 = 1024;
            v45 = v31;
            v27 = v11;
            v28 = OS_LOG_TYPE_DEFAULT;
LABEL_42:
            _os_log_impl(&dword_1DE1F9000, v27, v28, "%32s:%-5d Tore down device '%s' with object id %u", buf, 0x22u);
            goto LABEL_43;
          }

          goto LABEL_56;
        }

        break;
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *buf = v2 + 520;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v2 + 496;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v2 + 472;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
    v32 = *(v2 + 464);
    if (v32)
    {
      CFRelease(v32);
    }

    AMCP::Utility::Mach_Port::~Mach_Port((v2 + 384));
    std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v2 + 376), 0);
    std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v2 + 368), 0);
    v33 = *(v2 + 360);
    if (v33)
    {
      IOObjectRelease(v33);
    }

    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v2 + 24));
    v34 = *(v2 + 8);
    if (v34)
    {
      CFRelease(v34);
    }

    v35 = *MEMORY[0x1E69E9840];

    JUMPOUT(0x1E12C1730);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE2AB188(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IOAudio2::Driver::shutdown(AMCP::IOAudio2::Driver *this)
{
  v1 = this;
  v27 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  switch(v5)
  {
    case 3:
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v23 = 136315394;
        v24 = "IOAudio2_Driver.cpp";
        v25 = 1024;
        v26 = 50;
        v18 = v17;
        v19 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v18, v19, "%32s:%-5d Tearing down IOAudio2 Driver", &v23, 0x12u);
      }

      break;
    case 2:
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v12;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v23 = 136315394;
        v24 = "IOAudio2_Driver.cpp";
        v25 = 1024;
        v26 = 50;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down IOAudio2 Driver", &v23, 0x12u);
      }

      break;
    case 1:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315394;
        v24 = "IOAudio2_Driver.cpp";
        v25 = 1024;
        v26 = 50;
        v18 = v9;
        v19 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100](v1 + 7, 0);
  v21 = *(v1 + 8);
  for (i = *(v1 + 9); i != v21; std::unique_ptr<AMCP::IOAudio2::Device>::reset[abi:ne200100](i, 0))
  {
    --i;
  }

  *(v1 + 9) = v21;
  AMCP::Core::Broker::destroy_core(*(*(v1 + 4) + 16), *(v1 + 12));
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1DE2AB480(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void *AMCP::IOKit::service_matching(void *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  result = IOServiceMatching(v3);
  *a1 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE2AB55C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<AMCP::IOAudio2::Driver,AMCP::Core::Driver>(char ***a1, char ***a2)
{
  result = *a2;
  {
    v6 = v4[1];
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t applesauce::iokit::io_service_factory::io_service_factory(uint64_t a1, NSObject **a2, const __CFDictionary **a3, const char *a4, uint64_t a5)
{
  applesauce::iokit::details::io_notificationport_holder::io_notificationport_holder(a1);
  v10 = *a2;
  *(a1 + 8) = *a2;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *(a5 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

  if (v11 != a5)
  {
    v11 = (*(*v11 + 16))(v11);
LABEL_6:
    *(a1 + 40) = v11;
    goto LABEL_8;
  }

  *(a1 + 40) = a1 + 16;
  (*(**(a5 + 24) + 24))(*(a5 + 24), a1 + 16);
LABEL_8:
  *(a1 + 48) = 0;
  v12 = (a1 + 48);
  IONotificationPortSetDispatchQueue(*a1, *(a1 + 8));
  notification = 0;
  v13 = *a1;
  v14 = *a3;
  *a3 = 0;
  v15 = IOServiceAddMatchingNotification(v13, a4, v14, applesauce::iokit::io_service_factory::matching_callback_, a1, &notification);
  if (v15)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v21 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v15, v21, "Error on IOServiceAddMatchingNotification");
    goto LABEL_18;
  }

  v16 = notification;
  v17 = *v12;
  *v12 = notification;
  if (v17)
  {
    IOObjectRelease(v17);
    v16 = *v12;
  }

  if (v16)
  {
    v18 = IOObjectRetain(v16);
    if (v18)
    {
      v22 = v18;
      exception = __cxa_allocate_exception(0x20uLL);
      v23 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v22, v23, "Error on Retain");
LABEL_18:
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  applesauce::iokit::io_service_factory::matching_callback(a1, v16);
  if (v16)
  {
    IOObjectRelease(v16);
  }

  return a1;
}

void sub_1DE2AB7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v13);
  applesauce::iokit::io_object_holder::~io_object_holder(v12);
  std::__function::__value_func<void ()(applesauce::iokit::io_object_holder)>::~__value_func[abi:ne200100](v11);
  v15 = *(v10 + 8);
  if (v15)
  {
    dispatch_release(v15);
  }

  applesauce::iokit::details::io_notificationport_holder::~io_notificationport_holder(v10);
  _Unwind_Resume(a1);
}

applesauce::iokit::details::io_notificationport_holder *applesauce::iokit::details::io_notificationport_holder::io_notificationport_holder(applesauce::iokit::details::io_notificationport_holder *this)
{
  mainPort = 0;
  v2 = MEMORY[0x1E12C0860](*MEMORY[0x1E69E99F8], &mainPort);
  if (v2)
  {
    v5 = v2;
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v5, v7, "IOMainPort failed");
    v8 = MEMORY[0x1E69E53B8];
    v9 = MEMORY[0x1E69E52D0];
    goto LABEL_6;
  }

  v3 = IONotificationPortCreate(mainPort);
  *this = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "IONotificationPortCreate failed");
    v8 = MEMORY[0x1E69E5408];
    v9 = MEMORY[0x1E69E5288];
LABEL_6:
    __cxa_throw(exception, v8, v9);
  }

  return this;
}

uint64_t applesauce::iokit::io_service_factory::matching_callback(uint64_t a1, io_object_t object)
{
  v35 = object;
  if (object)
  {
    v4 = IOObjectRetain(object);
    if (v4)
    {
      v25 = v4;
      exception = __cxa_allocate_exception(0x20uLL);
      v27 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v25, v27, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v36 = object;
    v5 = IOObjectRetain(object);
    if (v5)
    {
      v28 = v5;
      v29 = __cxa_allocate_exception(0x20uLL);
      v30 = std::system_category();
      MEMORY[0x1E12C10C0](v29, v28, v30, "Error on Retain");
      __cxa_throw(v29, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v6 = v36;
  }

  else
  {
    v6 = 0;
    v36 = 0;
  }

  v7 = IOIteratorNext(v6);
  v37 = v7;
  if (object)
  {
    IOObjectRelease(object);
    v7 = v37;
  }

  v34 = 0;
  if (v7)
  {
    do
    {
      v31 = v36;
      if (v36)
      {
        v8 = IOObjectRetain(v36);
        if (v8)
        {
          v19 = v8;
          v20 = __cxa_allocate_exception(0x20uLL);
          v21 = std::system_category();
          MEMORY[0x1E12C10C0](v20, v19, v21, "Error on Retain");
          __cxa_throw(v20, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
        }

        v7 = v37;
        objecta = v37;
        if (!v37)
        {
LABEL_31:
          v15 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v15, "io_services_iterator exceeding size");
          v15->__vftable = (MEMORY[0x1E69E55B8] + 16);
          __cxa_throw(v15, off_1E8672F68, MEMORY[0x1E69E5280]);
        }
      }

      else
      {
        objecta = v7;
      }

      v9 = IOObjectRetain(v7);
      if (v9)
      {
        v16 = v9;
        v17 = __cxa_allocate_exception(0x20uLL);
        v18 = std::system_category();
        MEMORY[0x1E12C10C0](v17, v16, v18, "Error on Retain");
        __cxa_throw(v17, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }

      if (!v37)
      {
        goto LABEL_31;
      }

      v10 = IOIteratorNext(v36);
      v11 = v37;
      v37 = v10;
      if (v11)
      {
        IOObjectRelease(v11);
      }

      v33 = objecta;
      if (objecta)
      {
        v12 = IOObjectRetain(objecta);
        if (v12)
        {
          v22 = v12;
          v23 = __cxa_allocate_exception(0x20uLL);
          v24 = std::system_category();
          MEMORY[0x1E12C10C0](v23, v22, v24, "Error on Retain");
          __cxa_throw(v23, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
        }
      }

      v13 = *(a1 + 40);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13, &v33);
      if (v33)
      {
        IOObjectRelease(v33);
      }

      if (objecta)
      {
        IOObjectRelease(objecta);
      }

      if (v31)
      {
        IOObjectRelease(v31);
      }

      v7 = v37;
    }

    while (v37);
  }

  result = v36;
  if (v36)
  {
    return IOObjectRelease(v36);
  }

  return result;
}

void sub_1DE2ABC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, int a12, char a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  applesauce::iokit::io_object_holder::~io_object_holder((v17 - 28));
  _Unwind_Resume(a1);
}

void applesauce::iokit::io_object_holder::~io_object_holder(io_object_t *this)
{
  v1 = *this;
  if (v1)
  {
    IOObjectRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    IOObjectRelease(v1);
  }
}

void applesauce::iokit::details::io_services_iterator::~io_services_iterator(applesauce::iokit::details::io_services_iterator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  if (*this)
  {
    IOObjectRelease(*this);
  }
}

uint64_t applesauce::iokit::io_service_factory::matching_callback_(uint64_t this, io_object_t object)
{
  if (this && object)
  {
    v3 = this;
    v4 = IOObjectRetain(object);
    if (v4)
    {
      v5 = v4;
      exception = __cxa_allocate_exception(0x20uLL);
      v7 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v5, v7, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    applesauce::iokit::io_service_factory::matching_callback(v3, object);
    return IOObjectRelease(object);
  }

  return this;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Driver::start(void)::$_0,std::allocator<AMCP::IOAudio2::Driver::start(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Driver5startEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Driver::start(void)::$_0,std::allocator<AMCP::IOAudio2::Driver::start(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::operator()(uint64_t a1, io_registry_entry_t *a2)
{
  v8 = *a2;
  v2 = v8;
  *a2 = 0;
  v3 = *(a1 + 8);
  if (v2)
  {
    v4 = IOObjectRetain(v2);
    if (v4)
    {
      v5 = v4;
      exception = __cxa_allocate_exception(0x20uLL);
      v7 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v5, v7, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    AMCP::IOAudio2::Driver::handle_device_arrival(v3, &v8);
    IOObjectRelease(v2);
    IOObjectRelease(v2);
  }

  else
  {
    AMCP::IOAudio2::Driver::handle_device_arrival(*(a1 + 8), &v8);
  }
}

void sub_1DE2ABFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, io_object_t a10)
{
  __cxa_free_exception(v10);
  applesauce::iokit::io_object_holder::~io_object_holder(&a10);
  _Unwind_Resume(a1);
}

void AMCP::IOAudio2::Driver::handle_device_arrival(uint64_t a1, io_registry_entry_t *a2)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::get_properties(&cf, v3);
  if (!cf)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*>(&v32, cf, @"device UID");
  if (!cf)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = applesauce::CF::details::at_key<__CFString const*>(cf, @"is private");
  if (v5)
  {
    v6 = v5;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v6))
    {
      LOBYTE(v8) = CFBooleanGetValue(v6) != 0;
      v9 = 1;
    }

    else
    {
      v11 = CFNumberGetTypeID();
      if (v11 == CFGetTypeID(v6))
      {
        v8 = applesauce::CF::details::number_convert_as<BOOL>(v6);
        v9 = v8 > 0xFFu;
      }

      else
      {
        LOBYTE(v8) = 0;
        v9 = 0;
      }
    }

    v10 = v9 & v8;
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  if (v12 != v13)
  {
    while (1)
    {
      AMCP::IOAudio2::Device::get_uid(v34, *(*v12 + 8));
      v14 = v34[0];
      v15 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v34[0], &v32);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v15 == kCFCompareEqualTo)
      {
        break;
      }

      v12 += 8;
      if (v12 == v13)
      {
        v12 = v13;
        break;
      }
    }
  }

  if ((v10 & 1) == 0 && v12 == *(a1 + 72))
  {
    v16 = *(*(a1 + 32) + 32);
    v17 = *(a1 + 48);
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v28, *(a1 + 8), *(a1 + 16));
    std::dynamic_pointer_cast[abi:ne200100]<AMCP::IOAudio2::Driver,AMCP::Core::Driver>(&v29, &v28);
    v18 = *a2;
    v30 = v18;
    if (!v18 || (v19 = IOObjectRetain(v18), !v19))
    {
      v20 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v31 = v20;
      v34[3] = 0;
      operator new();
    }

    v25 = v19;
    v26 = __cxa_allocate_exception(0x20uLL);
    v27 = std::system_category();
    MEMORY[0x1E12C10C0](v26, v25, v27, "Error on Retain");
    __cxa_throw(v26, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE2AC384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __cxa_free_exception(v20);
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    applesauce::CF::StringRef::~StringRef(&a16);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a17);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE2AC248);
  }

  _Unwind_Resume(exception_object);
}

const void *applesauce::iokit::get_properties(applesauce::iokit *this, io_registry_entry_t entry)
{
  properties = 0;
  v3 = IORegistryEntryCreateCFProperties(entry, &properties, 0, 0);
  if (v3)
  {
    v6 = v3;
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v6, v8, "Error on get_properties");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  result = properties;
  *this = properties;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v5 != result)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE2AC58C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::StringRef::from_get(a1, v4);
}

void *AMCP::IOAudio2::Device::get_uid(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

uint64_t AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Driver21handle_device_arrivalEN10applesauce5iokit16io_object_holderEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE2AC888(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  MEMORY[0x1E12C1730](v2, 0x1062C40B16050CFLL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2AC858);
}

void std::__function::__func<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(__p + 6);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    v6 = IOObjectRetain(v5);
    if (v6)
    {
      v9 = v6;
      exception = __cxa_allocate_exception(0x20uLL);
      v11 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v9, v11, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    CFRetain(v7);
  }

  *(a1 + 24) = v7;
  return a1;
}

void sub_1DE2ACA88(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5963258;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_arrival(applesauce::iokit::io_object_holder)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5963258;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

const void *applesauce::CF::details::at_key<__CFString const*>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Driver::start(void)::$_0,std::allocator<AMCP::IOAudio2::Driver::start(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Driver::start(void)::$_0,std::allocator<AMCP::IOAudio2::Driver::start(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Driver::start(void)::$_0,std::allocator<AMCP::IOAudio2::Driver::start(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59631C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Driver::start(void)::$_0,std::allocator<AMCP::IOAudio2::Driver::start(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::~__func(void *a1)
{
  *a1 = &unk_1F59631C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Driver::start(void)::$_0,std::allocator<AMCP::IOAudio2::Driver::start(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::~__func(void *a1)
{
  *a1 = &unk_1F59631C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void sub_1DE2ACEFC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(int a1, int a2, CFTypeRef cf)
{
  v3 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE2AD09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE2AD1EC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2AD318(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[5];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2AD574(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINSt3__16vectorIjNS3_9allocatorIjEEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<std::vector<unsigned int>>(&__p, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, __p, v4, (v4 - __p) >> 2);
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1DE2AD64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598FD18;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598FD18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598FD18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<std::vector<unsigned int> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<unsigned int> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::vector<unsigned int> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::vector<unsigned int> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::Operation_Utilities::make_owned_object_of_class_list_property(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,unsigned int)::{lambda(void)#1},std::allocator<AMCP::Core::Operation_Utilities::make_owned_object_of_class_list_property(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,unsigned int)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities40make_owned_object_of_class_list_propertyERNS0_6BrokerEjRKNS_7AddressEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Core::Operation_Utilities::make_owned_object_of_class_list_property(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,unsigned int)::{lambda(void)#1},std::allocator<AMCP::Core::Operation_Utilities::make_owned_object_of_class_list_property(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,unsigned int)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6 = 0x676C6F6262636C73;
  v7 = 0;
  v8[0] = &unk_1F598FE18;
  v8[1] = &v6;
  v8[2] = a1 + 20;
  v8[3] = v8;
  AMCP::Core::Broker::fetch_owned_object_ids_if (a2, v2, v3, v8);
  result = std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v8);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjRKNS2_7AddressERKT_DpOT0_EUlSJ_E_NS9_ISN_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJENSt3__19enable_ifILb1EvEEEENS3_6vectorIjNS3_9allocatorIjEEEERNS0_6BrokerEjRKNS_7AddressERKT_DpOT0_EUlSH_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZN4AMCP4Core4Core26has_properties_with_valuesIjJENSt3__19enable_ifILb1EvEEEEbRKNS_7AddressERKT_DpOT0_(AMCP::Core::Core *a1, const AMCP::Address *a2, _DWORD *a3)
{
  v5 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, a2);
  if (!HIDWORD(v5))
  {
    return 0;
  }

  if (*a2 != 1668047219 && *a2 != 1650682995)
  {
    return *a3 == v5;
  }

  return (AMCP::is_base_of(*a3, v5) & 1) != 0;
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjRKNS2_7AddressERKT_DpOT0_EUlSJ_E_NS9_ISN_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598FE18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AMCP::Core::Operation_Utilities::make_owned_object_of_class_list_property(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,unsigned int)::{lambda(void)#1},std::allocator<AMCP::Core::Operation_Utilities::make_owned_object_of_class_list_property(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,unsigned int)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598FDA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::Core::Operation_Utilities::make_owned_object_list_property(AMCP::Core::Broker &,unsigned int)::{lambda(void)#1},std::allocator<AMCP::Core::Operation_Utilities::make_owned_object_list_property(AMCP::Core::Broker &,unsigned int)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities31make_owned_object_list_propertyERNS0_6BrokerEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::Operation_Utilities::make_owned_object_list_property(AMCP::Core::Broker &,unsigned int)::{lambda(void)#1},std::allocator<AMCP::Core::Operation_Utilities::make_owned_object_list_property(AMCP::Core::Broker &,unsigned int)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v9 = v4;
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v9, &__p, 1uLL);
  AMCP::Core::Broker::gather_directly_owned_objects(&v13, v3, &__p);
  if (__p)
  {
    operator delete(__p);
  }

  begin = v13.__begin_;
  end = v13.__end_;
  if (v13.__begin_ != v13.__end_)
  {
    v7 = v13.__begin_;
    do
    {
      AMCP::Core::Broker::fetch_core(&__p, v3, *v7);
      if (__p)
      {
        v9 = *__p;
        std::vector<unsigned int>::push_back[abi:ne200100](a2, &v9);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      ++v7;
    }

    while (v7 != end);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE2ADF38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<AMCP::Core::Operation_Utilities::make_owned_object_list_property(AMCP::Core::Broker &,unsigned int)::{lambda(void)#1},std::allocator<AMCP::Core::Operation_Utilities::make_owned_object_list_property(AMCP::Core::Broker &,unsigned int)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598FC88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

const void **AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}::~Address(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2AE1D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN10applesauce2CF9StringRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<applesauce::CF::StringRef>(&cf, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef&>(a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5990048;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5990048;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5990048;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<applesauce::CF::StringRef ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<applesauce::CF::StringRef ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::StringRef ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<applesauce::CF::StringRef ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<applesauce::CF::StringRef ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::StringRef ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::StringRef ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN10applesauce2CF9StringRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(CFTypeRef result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  *a2 = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::__clone(CFTypeRef result, void *a2)
{
  *a2 = &unk_1F598FFB8;
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  a2[1] = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598FFB8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,applesauce::CF::StringRef const&)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598FFB8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIjEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>,unsigned int ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F598FEA8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t AMCP::Utility::Expiration_Check::Expiration_Check(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 4);
  if (*(a2 + 6))
  {
    if (v3 == 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = v5;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 16) = 1;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *a1 = v5;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  *(a1 + 24) = 1;
  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_1F5963238[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrISt4byteEENS_8weak_ptrIS9_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrISt4byteEENS_8weak_ptrIS9_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Driver23handle_device_departureEPNS0_6DeviceEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if ((result & 1) == 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "IOAudio2_Driver.cpp";
      v16 = 1024;
      v17 = 151;
      v18 = 2080;
      v19 = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", &v14, 0x1Cu);
    }

    abort();
  }

  v4 = **(a1 + 48);
  v5 = v4 + 1;
  v6 = *(v2 + 72);
  if (v4 + 1 != v6)
  {
    do
    {
      v4 = v5;
      v7 = v5 - 1;
      v8 = *v5;
      *v5++ = 0;
      result = std::unique_ptr<AMCP::IOAudio2::Device>::reset[abi:ne200100](v7, v8);
    }

    while (v5 != v6);
    v6 = *(v2 + 72);
  }

  while (v6 != v4)
  {
    result = std::unique_ptr<AMCP::IOAudio2::Device>::reset[abi:ne200100](--v6, 0);
  }

  *(v2 + 72) = v4;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AMCP::Utility::Expiration_Check::is_valid(AMCP::Utility::Expiration_Check *this)
{
  v1 = *(this + 4);
  if (!*(this + 6))
  {
    if (!v1)
    {
      v3 = *this == 0;
      return !v3;
    }

LABEL_12:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v1 != 1)
  {
    goto LABEL_12;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8) == -1;
  return !v3;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

void std::__function::__func<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59632D8;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59632D8;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1,std::allocator<AMCP::IOAudio2::Driver::handle_device_departure(AMCP::IOAudio2::Device *)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59632D8;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__shared_ptr_emplace<std::byte>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5990290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void non-virtual thunk toHALS_IOUAClockDevice::~HALS_IOUAClockDevice(HALS_IOUAClockDevice *this)
{
  HALS_IOUAClockDevice::~HALS_IOUAClockDevice((this - 376));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUAClockDevice::~HALS_IOUAClockDevice((this - 376));
}

void HALS_IOUAClockDevice::~HALS_IOUAClockDevice(HALS_IOUAClockDevice *this)
{
  *this = &unk_1F5963358;
  v2 = (this + 376);
  *(this + 47) = &unk_1F5963560;
  v3 = *(this + 56);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    HALS_ObjectMap::ObjectIsDead(*(this + 56), v4);
    *(this + 56) = 0;
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 456));
  v6 = *(this + 53);
  if (v6)
  {
    *(this + 54) = v6;
    operator delete(v6);
  }

  HALS_IOUAObject::~HALS_IOUAObject(v2, v5);

  HALS_ClockDevice::~HALS_ClockDevice(this);
}

{
  HALS_IOUAClockDevice::~HALS_IOUAClockDevice(this);

  JUMPOUT(0x1E12C1730);
}

HALS_ObjectMap *HALS_IOUAClockDevice::_CopyControlByDescription(HALS_IOUAClockDevice *this, HALS_Object *a2, int a3, int a4)
{
  v4 = *(this + 53);
  v5 = *(this + 54);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      if (*v4)
      {
        if (*(v6 + 5) == a2 && *(v6 + 12) == a3 && *(v6 + 13) == a4)
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v7 = *v4;
  HALS_ObjectMap::RetainObject(*v4, a2);
  return v7;
}

HALS_ObjectMap *HALS_IOUAClockDevice::_CopyControlByIndex(HALS_IOUAClockDevice *this, HALS_Object *a2)
{
  v2 = *(this + 53);
  if (a2 >= ((*(this + 54) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_IOUAClockDevice::_CopyControls(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 424);
  v3 = *(a1 + 432);
  if (v2 != v3)
  {
    v5 = *(a1 + 424);
    do
    {
      v6 = *v5++;
      HALS_ObjectMap::RetainObject(v6, a2);
      std::vector<HALS_Device *>::push_back[abi:ne200100](a2, v2);
      v2 = v5;
    }

    while (v5 != v3);
  }
}

uint64_t HALS_IOUAClockDevice::PerformNonDriverConfigChange(HALS_IOUAClockDevice *this, BOOL a2, int a3)
{
  v4 = 0uLL;
  v5 = 0;
  return HALS_IOUAClockDevice::HandleConfigurationChangeRequest(this, &v4, a3);
}

uint64_t HALS_IOUAClockDevice::HandleConfigurationChangeRequest(uint64_t a1, __int128 *a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN20HALS_IOUAClockDevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbj_block_invoke;
  v5[3] = &unk_1E86736C0;
  v6 = *a2;
  v7 = *(a2 + 2);
  v5[4] = &v9;
  v5[5] = a1;
  v8 = a3;
  AMCP::Utility::Dispatch_Queue::async(a1 + 456, v5);
  v3 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v3;
}

uint64_t ___ZN20HALS_IOUAClockDevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbj_block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    buf[0].mSelector = 136315650;
    *&buf[0].mScope = "HALS_IOUAClockDevice.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 735;
    HIWORD(buf[1].mScope) = 2080;
    *&buf[1].mElement = v2 + 120;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  --->", buf, 0x1Cu);
  }

  memset(buf, 0, 32);
  v4 = *(v2 + 16);
  strcpy(v58, "bgfcbolg");
  v58[9] = 0;
  *&v58[10] = 0;
  HALS_NotificationManager::PropertiesChanged_Sync(v4, 0, 1, v58, v3);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v46[0] = 0;
  v46[1] = 0;
  HALS_System::GetInstance(v58, 0, v46);
  v5 = *v58;
  v6 = (*(*v2 + 208))(v2);
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
    cf = v7;
    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  HALS_System::GetRawDeviceListUsingClockDevice(v5, &v47, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*&v58[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v58[8]);
  }

  v10 = *(v2 + 448);
  __p = 0;
  v43 = 0;
  v44 = 0;
  if (v10)
  {
    (*(*v10 + 224))(v10, &__p);
  }

  HALS_ClockDeviceState::HALS_ClockDeviceState(v58);
  HALS_ClockDeviceState::Capture(v11, v2, HALS_ClockDeviceState::sStandardDevicePropertiesToCapture);
  v12 = *(a1 + 64);
  v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v12 != 1)
  {
    if (!v13)
    {
      goto LABEL_33;
    }

    *v55 = 136315650;
    *&v55[4] = "HALS_IOUAClockDevice.cpp";
    v56 = 1024;
    *v57 = 785;
    *&v57[4] = 2080;
    *&v57[6] = v2 + 120;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  --- skipping driver config change";
    goto LABEL_32;
  }

  if (v13)
  {
    *v55 = 136315650;
    *&v55[4] = "HALS_IOUAClockDevice.cpp";
    v56 = 1024;
    *v57 = 766;
    *&v57[4] = 2080;
    *&v57[6] = v2 + 120;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  --- calling driver", v55, 0x1Cu);
  }

  kdebug_trace();
  v14 = *(v2 + 384);
  v15 = *(v14 + 736);
  v16 = *(v14 + 744);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = HALS_IOUAUCDriver::perform_config_change(*(v15 + 4), *(v2 + 392), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v39 = *(*(*(a1 + 32) + 8) + 24);
      *v55 = 136315650;
      *&v55[4] = "HALS_IOUAClockDevice.cpp";
      v56 = 1024;
      *v57 = 774;
      *&v57[4] = 1024;
      *&v57[6] = v39;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception performing config change %d", v55, 0x18u);
    }
  }

  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v55 = 136315650;
    *&v55[4] = "HALS_IOUAClockDevice.cpp";
    v56 = 1024;
    *v57 = 779;
    *&v57[4] = 2080;
    *&v57[6] = v2 + 120;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  --- driver returned";
LABEL_32:
    _os_log_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_DEFAULT, v23, v55, 0x1Cu);
  }

LABEL_33:
  updated = HALS_IOUAClockDevice::UpdateControls(v2);
  HALS_ClockDeviceState::HALS_ClockDeviceState(v55);
  HALS_ClockDeviceState::Capture(v55, v2, HALS_ClockDeviceState::sStandardDevicePropertiesToCapture);
  HALS_ClockDeviceState::Compare(v58, v55, buf, v25);
  *&v41.mSelector = 0x676C6F6200000000;
  if (updated)
  {
    v41.mSelector = 1668575852;
    v41.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, &v41, v26);
  }

  if (*&buf[0].mSelector == *&buf[0].mElement)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v50.mSelector = 136315650;
      *&v50.mScope = "HALS_IOUAClockDevice.cpp";
      v51 = 1024;
      v52 = 823;
      v53 = 2080;
      v54 = v2 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  but nothing changed", &v50, 0x1Cu);
    }
  }

  else
  {
    *&v41.mSelector = 0x676C6F6264696666;
    v41.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, &v41, v26);
  }

  strcpy(&v50, "egfcbolg");
  BYTE1(v50.mElement) = 0;
  HIWORD(v50.mElement) = 0;
  CAPropertyAddressList::AppendUniqueItem(buf, &v50, v27);
  v28 = *(v2 + 448);
  if (v28)
  {
    (*(*v28 + 960))(v28);
  }

  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*&v57[2]);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*&v58[16]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v58 = 136315650;
    *&v58[4] = "HALS_IOUAClockDevice.cpp";
    *&v58[12] = 1024;
    *&v58[14] = 843;
    *&v58[18] = 2080;
    *&v58[20] = v2 + 120;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  --- sending notifications", v58, 0x1Cu);
  }

  kdebug_trace();
  v29 = *(v2 + 16);
  v30 = *(a1 + 72);
  memset(v58, 0, 24);
  HALS_NotificationManager::GroupPropertiesChanged(1, v29, v30, buf, v58, &__p);
  *v55 = v58;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v55);
  v31 = v47;
  v32 = v48;
  if (v47 != v48)
  {
    v33 = v47;
    do
    {
      v34 = *v33;
      v35 = *(a1 + 72);
      memset(v58, 0, 24);
      HALS_NotificationManager::GroupPropertiesChanged(1, v34, v35, buf, v58, &__p);
      *v55 = v58;
      std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v55);
      ++v33;
    }

    while (v33 != v32);
  }

  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v58 = 136315650;
    *&v58[4] = "HALS_IOUAClockDevice.cpp";
    *&v58[12] = 1024;
    *&v58[14] = 857;
    *&v58[18] = 2080;
    *&v58[20] = v2 + 120;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  --- restarting IO", v58, 0x1Cu);
  }

  v36 = *(v2 + 448);
  if (v36)
  {
    (*(*v36 + 240))(v36);
    (*(**(v2 + 448) + 232))(*(v2 + 448), &__p);
  }

  v40[0] = 0;
  v40[1] = 0;
  HALS_System::GetInstance(v58, 0, v40);
  HALS_System::CheckForDefaultDeviceChanges(*v58);
  if (*&v58[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v58[8]);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (*&buf[0].mSelector)
  {
    operator delete(*&buf[0].mSelector);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    buf[0].mSelector = 136315650;
    *&buf[0].mScope = "HALS_IOUAClockDevice.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 877;
    HIWORD(buf[1].mScope) = 2080;
    *&buf[1].mElement = v2 + 120;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUAClockDevice::HandleConfigurationChangeRequest: %s  <---", buf, 0x1Cu);
  }

  result = kdebug_trace();
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE2AFC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a2)
  {
    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(v29 - 144));
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE2AF8F0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAClockDevice::UpdateControls(HALS_IOUAClockDevice *this)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v2 = *(this + 48);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v3 + 4), "lrtcbolg", *(this + 98), 0, 0);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (PropertySize >= 4)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&v45, PropertySize >> 2);
    v8 = v45;
    v37 = v46 - v45;
    v9 = *(this + 48);
    v10 = *(v9 + 736);
    v11 = *(v9 + 744);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v10 + 4), "lrtcbolg", *(this + 98), 0, 0, v8, &v37);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v7 = v45;
    v6 = v46;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x4002000000;
  v40 = __Block_byref_object_copy__598;
  v41 = __Block_byref_object_dispose__599;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4002000000;
  v32 = __Block_byref_object_copy__598;
  v33 = __Block_byref_object_dispose__599;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1174405120;
  v25[2] = ___ZN20HALS_IOUAClockDevice14UpdateControlsEv_block_invoke;
  v25[3] = &unk_1F5963588;
  v25[7] = this;
  __p = 0;
  v25[4] = &v48;
  v27 = 0;
  v28 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v7, v6, (v6 - v7) >> 2);
  v25[5] = &v37;
  v25[6] = &v29;
  v12 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v12, v25);
  v17 = v38[5];
  v18 = v38[6];
  while (v17 != v18)
  {
    (***v17)(*v17, v13, v14, v15, v16);
    ++v17;
  }

  v19 = v30[5];
  for (i = v30[6]; v19 != i; ++v19)
  {
    v21 = *v19;
    if (HALS_IOUAControl::RefreshCache(*v19))
    {
      *(v49 + 24) = 1;
    }

    HALS_ObjectMap::ReleaseObject(v21, v22);
  }

  v23 = *(v49 + 24);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v29, 8);
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  _Block_object_dispose(&v37, 8);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  _Block_object_dispose(&v48, 8);
  return v23;
}

void sub_1DE2B0194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v37 = *(v35 - 104);
  if (v37)
  {
    *(v35 - 96) = v37;
    operator delete(v37);
  }

  _Block_object_dispose((v35 - 80), 8);
  _Unwind_Resume(a1);
}

void std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 __Block_byref_object_copy__598(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__599(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN20HALS_IOUAClockDevice14UpdateControlsEv_block_invoke(void *a1, HALS_Object *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a1[8];
  v3 = a1[7];
  v4 = a1[9] - v2;
  v40 = *(a1[5] + 8);
  v5 = *(v3 + 424);
  v6 = *(v3 + 432);
  if (v5 != v6)
  {
    v7 = *(v3 + 424);
    do
    {
      v8 = *v7++;
      *(v8 + 13) = 0;
    }

    while (v7 != v6);
  }

  if ((v4 & 0x3FFFFFFFCLL) != 0)
  {
    v9 = 0;
    v10 = (v4 >> 2);
    while (1)
    {
      *buf = 0;
      v11 = *(v3 + 424);
      v12 = *(v3 + 432);
      if (v11 != v12)
      {
        while (!*v11 || *(*v11 + 88) != *(v2 + 4 * v9))
        {
          v11 += 8;
          if (v11 == v12)
          {
            goto LABEL_13;
          }
        }
      }

      if (v11 == v12)
      {
LABEL_13:
        v13 = *(v2 + 4 * v9);
        if (v13)
        {
          v14 = *(v3 + 384);
          v15 = *(v14 + 736);
          v16 = *(v14 + 744);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          outputStruct = 0;
          v41 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v15 + 4), "salcbolg", v13, 0, 0, &outputStruct, &v41);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          v17 = *(v3 + 384);
          v18 = *(v17 + 736);
          v19 = *(v17 + 744);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v44 = 0;
          v43 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v18 + 4), "slcbbolg", v13, 0, 0, &v44, &v43);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v20 = *(v3 + 384);
          v21 = *(v20 + 736);
          v22 = *(v20 + 744);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v46 = 0;
          v45 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v21 + 4), "pcscbolg", v13, 0, 0, &v46, &v45);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v23 = *(v3 + 384);
          v24 = *(v23 + 736);
          v25 = *(v23 + 744);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v48 = 0;
          v47 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v24 + 4), "mlecbolg", v13, 0, 0, &v48, &v47);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          operator new();
        }
      }

      else
      {
        *(*v11 + 13) = 1;
      }

      if (++v9 == v10)
      {
        v5 = *(v3 + 424);
        v6 = *(v3 + 432);
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
LABEL_36:
    if (v5 == v6)
    {
      v27 = 0;
      goto LABEL_47;
    }

    v26 = *v5;
    if (*v5)
    {
      if (*(v26 + 13) != 1)
      {
        break;
      }
    }

    ++v5;
  }

  (*(*v26 + 8))(v26);
  HALS_ObjectMap::ObjectIsDead(*v5, v28);
  v27 = 1;
  if (v5 != v6)
  {
    v29 = v5 + 1;
    if (v5 + 1 != v6)
    {
      do
      {
        v30 = *v29;
        if (*v29 && (*(v30 + 13) & 1) == 0)
        {
          (*(*v30 + 8))(v30);
          HALS_ObjectMap::ObjectIsDead(*v29, v31);
        }

        else
        {
          *v5++ = v30;
        }

        ++v29;
      }

      while (v29 != v6);
      v27 = 1;
    }
  }

  v6 = v5;
LABEL_47:
  if (v6 != *(v3 + 432))
  {
    a2 = *(v3 + 432);
    *(v3 + 432) = v6;
  }

  v33 = *(v40 + 40);
  v32 = *(v40 + 48);
  if (v32 != v33)
  {
    do
    {
      *buf = *v33;
      std::vector<HALS_Device *>::push_back[abi:ne200100](v3 + 424, buf);
      ++v33;
    }

    while (v33 != v32);
    v27 = 1;
  }

  *(*(a1[4] + 8) + 24) = v27;
  v34 = *(a1[6] + 8);
  if (v3 + 424 != v34 + 40)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v34 + 40), *(v3 + 424), *(v3 + 432), (*(v3 + 432) - *(v3 + 424)) >> 3);
  }

  v35 = *(v34 + 40);
  v36 = *(v34 + 48);
  while (v35 != v36)
  {
    v37 = *v35++;
    HALS_ObjectMap::RetainObject(v37, a2);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1DE2B089C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_64c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_64c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = a1 + 64;
  *(v2 + 16) = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
}

void *std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>(void *result, char *__src, char *a3, unint64_t a4)
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

      if (!(v11 >> 61))
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v11);
      }
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

void sub_1DE2B0A8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_IODevice::GetIsRunningSomewhere(HALS_IODevice *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F62676F6E65;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5) != 0;
}

BOOL HALS_IOUAClockDevice::IsClockStable(HALS_IOUAClockDevice *this)
{
  v5 = 0;
  v4 = *"btscbolg";
  v2 = 4;
  v3 = 0;
  (*(*this + 120))(this, *(this + 98), &v4, 4, &v2, &v3, 0, 0, 0);
  return v3 != 0;
}

uint64_t HALS_IOUAClockDevice::GetClockAlgorithm(HALS_IOUAClockDevice *this)
{
  v5 = 0;
  v4 = *"kolcbolg";
  v2 = 4;
  v3 = 0;
  (*(*this + 120))(this, *(this + 98), &v4, 4, &v2, &v3, 0, 0, 0);
  return v3;
}

uint64_t HALS_IODevice::GetClockDomain(HALS_IODevice *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F62636C6B64;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

uint64_t HALS_IODevice::GetSafetyOffset(HALS_IODevice *this, int a2)
{
  v2 = *(this + 4);
  if (a2)
  {
    v3 = 1768845428;
  }

  else
  {
    v3 = 1869968496;
  }

  v5[0] = 1935763060;
  v5[1] = v3;
  v5[2] = 0;
  v6 = 0;
  (*(*this + 120))(this, v2, v5, 4, &v6, &v6 + 4, 0, 0, 0);
  return HIDWORD(v6);
}

uint64_t HALS_IODevice::GetLatency(HALS_IODevice *this, int a2)
{
  v2 = *(this + 4);
  if (a2)
  {
    v3 = 1768845428;
  }

  else
  {
    v3 = 1869968496;
  }

  v5[0] = 1819569763;
  v5[1] = v3;
  v5[2] = 0;
  v6 = 0;
  (*(*this + 120))(this, v2, v5, 4, &v6, &v6 + 4, 0, 0, 0);
  return HIDWORD(v6);
}

uint64_t HALS_IODevice::GetRingBufferFrameSize(HALS_IODevice *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6272696E67;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

uint64_t HALS_IODevice::GetNominalSampleRateRanges(HALS_IODevice *this, int a2, unsigned int *a3, AudioValueRange *a4)
{
  v5 = *(this + 4);
  v7 = 0x676C6F626E737223;
  v8 = 0;
  v9 = 0;
  result = (*(*this + 120))(this, v5, &v7, (16 * a2), &v9, a4, 0, 0, 0);
  *a3 = v9 >> 4;
  return result;
}

uint64_t HALS_IODevice::GetNumberNominalSampleRateRanges(HALS_IODevice *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F626E737223;
  v4 = 0;
  return (*(*this + 112))(this, v1, &v3, 0, 0, 0) >> 4;
}

uint64_t HALS_IODevice::SetNominalSampleRate(unsigned int *a1, uint64_t a2, double a3)
{
  v4 = a1[4];
  v6 = 0x676C6F626E737274;
  v7 = 0;
  v8 = a3;
  return (*(*a1 + 128))(a1, v4, &v6, 8, &v8, 0, 0, a2);
}

double HALS_IODevice::GetNominalSampleRate(HALS_IODevice *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F626E737274;
  v4 = 0;
  v6 = 0.0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 8, &v5, &v6, 0, 0, 0);
  return v6;
}

const void *HALS_ClockDevice::CopyDeviceUID(HALS_ClockDevice *this)
{
  result = *(this + 13);
  if (result)
  {
    CFRetain(result);
    return *(this + 13);
  }

  return result;
}

void HALS_IOUAClockDevice::SetPropertyData(HALS_IOUAClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const AudioObjectPropertyAddress *a5, unsigned int a6, void *a7, HALS_Client *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a3->mSelector == 1853059700)
  {
    if (a4 <= 7)
    {
      v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v25 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      else
      {
        v28 = *v27;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v39 = "HALS_IOUAClockDevice.cpp";
        v40 = 1024;
        v41 = 477;
        v42 = 2080;
        v43 = "inDataSize < SizeOf32(Float64)";
        _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v30, "kAudioHardwareBadPropertySizeError");
      std::runtime_error::runtime_error(&v31, &v30);
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = -1;
      v31.__vftable = &unk_1F5992170;
      v32 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v31);
      v44 = "virtual void HALS_IOUAClockDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAClockDevice.cpp";
      v46 = 477;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
    }

    v12 = *(this + 48);
    v13 = *(v12 + 736);
    v14 = *(v12 + 744);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v13, a3, *(this + 98), a7, a6, a5, a4);
    if (v14)
    {
      v15 = *MEMORY[0x1E69E9840];

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v24 = *MEMORY[0x1E69E9840];
    }
  }

  else
  {
    if (HALS_ClockDevice::HasProperty(this, a2, a3))
    {
      HALS_Object::SetPropertyData(this, a2, a3, v18, v19, v20, v21, a8);
    }

    v23 = *MEMORY[0x1E69E9840];

    HALS_IOUAObject::SetPropertyData((this + 376), &a3->mSelector, a5, a7, v19, v20, v21, v22);
  }
}

void sub_1DE2B1480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE2B1F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAClockDevice::GetPropertyDataSize(HALS_IOUAClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  PropertySize = 4;
  if (a3->mSelector <= 1819107690)
  {
    if (mSelector > 1735354733)
    {
      if (mSelector > 1768124269)
      {
        if (mSelector > 1818850144)
        {
          if (mSelector != 1818850145)
          {
            v14 = 1818850162;
LABEL_54:
            if (mSelector != v14)
            {
              goto LABEL_65;
            }
          }
        }

        else if (mSelector != 1768124270)
        {
          v14 = 1768777573;
          goto LABEL_54;
        }
      }

      else
      {
        if (mSelector <= 1751412336)
        {
          if (mSelector != 1735354734)
          {
            v13 = 1735356005;
            goto LABEL_50;
          }

          return PropertySize;
        }

        if (mSelector != 1751412337)
        {
          v14 = 1751737454;
          goto LABEL_54;
        }
      }

LABEL_55:
      v24 = *(this + 48);
      v25 = *(v24 + 736);
      v26 = *(v24 + 744);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v25 + 4), a3, *(this + 98), a5, a4);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      return PropertySize;
    }

    if (mSelector <= 1668510817)
    {
      if (mSelector != 1634429294 && mSelector != 1668049764)
      {
        v14 = 1668050795;
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (mSelector > 1668641651)
    {
      if (mSelector == 1668641652)
      {
        return (*(this + 102) - *(this + 100)) & 0xFFFFFFFC;
      }

      v14 = 1684434036;
      goto LABEL_54;
    }

    if (mSelector == 1668510818)
    {
      goto LABEL_55;
    }

    v15 = 1668639076;
    goto LABEL_61;
  }

  if (mSelector <= 1853059699)
  {
    if (mSelector <= 1819569762)
    {
      if (mSelector != 1819107691 && mSelector != 1819111268)
      {
        v15 = 1819173229;
LABEL_61:
        if (mSelector != v15)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      if (mSelector <= 1851878763)
      {
        if (mSelector == 1819569763)
        {
          return PropertySize;
        }

        v15 = 1836411236;
        goto LABEL_61;
      }

      if (mSelector != 1851878764)
      {
        if (mSelector != 1853059619)
        {
          goto LABEL_65;
        }

        *&v32.mSelector = 0x676C6F626E737223;
        v32.mElement = 0;
        v16 = *(this + 48);
        v17 = *(v16 + 736);
        v18 = *(v16 + 744);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v17 + 4), &v32, *(this + 98));
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (!HasProperty)
        {
          return 16;
        }

        v20 = *(this + 48);
        v21 = *(v20 + 736);
        v22 = *(v20 + 744);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = HALS_IOUAUCDriver::GetPropertySize(*(v21 + 4), &v32, *(this + 98), a5, a4);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        return (2 * v23) & 0xFFFFFFF0;
      }
    }

    return 8;
  }

  if (mSelector > 1936092275)
  {
    if (mSelector <= 1953653101)
    {
      if (mSelector != 1936092276)
      {
        v14 = 1937009955;
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (mSelector == 1953653102)
    {
      goto LABEL_55;
    }

    v15 = 1969841184;
    goto LABEL_61;
  }

  if (mSelector <= 1920168546)
  {
    if (mSelector != 1853059700)
    {
      v14 = 1919512167;
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (mSelector == 1920168547)
  {
    goto LABEL_55;
  }

  v13 = 1935763060;
LABEL_50:
  if (mSelector == v13)
  {
    return PropertySize;
  }

LABEL_65:
  if (HALS_ClockDevice::HasProperty(this, a2, a3))
  {

    return HALS_ClockDevice::GetPropertyDataSize(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 376), a3, v28, v29, v30, v31);
  }
}

void sub_1DE2B2478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAClockDevice::IsPropertySettable(HALS_IOUAClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  IsPropertySettable = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1819107690)
  {
    if (mSelector > 1853059699)
    {
      if (mSelector <= 1936092275)
      {
        if (mSelector > 1920168546)
        {
          if (mSelector != 1920168547)
          {
            v9 = 1935763060;
            goto LABEL_47;
          }
        }

        else if (mSelector != 1853059700)
        {
          v10 = 1919512167;
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if (mSelector <= 1953653101)
      {
        if (mSelector != 1936092276)
        {
          v10 = 1937009955;
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if (mSelector == 1969841184)
      {
        goto LABEL_54;
      }

      v10 = 1953653102;
      goto LABEL_53;
    }

    if (mSelector > 1819569762)
    {
      if (mSelector <= 1851878763)
      {
        if (mSelector == 1819569763)
        {
          return IsPropertySettable;
        }

        v10 = 1836411236;
        goto LABEL_53;
      }

      if (mSelector != 1851878764)
      {
        v10 = 1853059619;
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    v11 = mSelector == 1819107691 || mSelector == 1819111268;
    v12 = 1819173229;
  }

  else
  {
    if (mSelector > 1735354733)
    {
      if (mSelector <= 1768124269)
      {
        if (mSelector <= 1751412336)
        {
          if (mSelector == 1735354734)
          {
            return IsPropertySettable;
          }

          v9 = 1735356005;
LABEL_47:
          if (mSelector != v9)
          {
            goto LABEL_59;
          }

          return IsPropertySettable;
        }

        if (mSelector != 1751412337)
        {
          v10 = 1751737454;
          goto LABEL_53;
        }

LABEL_54:
        v14 = *(this + 48);
        v15 = *(v14 + 736);
        v16 = *(v14 + 744);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        IsPropertySettable = HALS_IOUAUCDriver::GetIsPropertySettable(*(v15 + 4), a3, *(this + 98));
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        return IsPropertySettable;
      }

      if (mSelector <= 1818850144)
      {
        if (mSelector != 1768124270)
        {
          v10 = 1768777573;
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if (mSelector == 1818850145)
      {
        goto LABEL_54;
      }

      v10 = 1818850162;
LABEL_53:
      if (mSelector != v10)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    if (mSelector > 1668510817)
    {
      if (mSelector > 1668641651)
      {
        if (mSelector == 1668641652)
        {
          return IsPropertySettable;
        }

        v10 = 1684434036;
        goto LABEL_53;
      }

      if (mSelector != 1668510818)
      {
        v10 = 1668639076;
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    v11 = mSelector == 1634429294 || mSelector == 1668049764;
    v12 = 1668050795;
  }

  if (v11 || mSelector == v12)
  {
    goto LABEL_54;
  }

LABEL_59:
  if (HALS_ClockDevice::HasProperty(this, a2, a3))
  {

    return HALS_ClockDevice::IsPropertySettable(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 376), a3, v18, v19);
  }
}

void sub_1DE2B281C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAClockDevice::HasProperty(HALS_IOUAClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  HasProperty = 1;
  if (a3->mSelector <= 1819107690)
  {
    if (mSelector <= 1735354733)
    {
      if (mSelector <= 1668510817)
      {
        if (mSelector == 1634429294 || mSelector == 1668049764)
        {
          goto LABEL_47;
        }

        v8 = 1668050795;
      }

      else if (mSelector > 1668641651)
      {
        if (mSelector == 1668641652)
        {
          return *(this + 51) != *(this + 50);
        }

        v8 = 1684434036;
      }

      else
      {
        if (mSelector == 1668510818)
        {
          goto LABEL_47;
        }

        v8 = 1668639076;
      }
    }

    else if (mSelector > 1768124269)
    {
      if (mSelector > 1818850144)
      {
        if (mSelector == 1818850145)
        {
          goto LABEL_47;
        }

        v8 = 1818850162;
      }

      else
      {
        if (mSelector == 1768124270)
        {
          goto LABEL_47;
        }

        v8 = 1768777573;
      }
    }

    else
    {
      if (mSelector <= 1751412336)
      {
        if (mSelector != 1735354734)
        {
          v7 = 1735356005;
          goto LABEL_40;
        }

        return HasProperty;
      }

      if (mSelector == 1751412337)
      {
LABEL_47:
        v9 = *(this + 48);
        v10 = *(v9 + 736);
        v11 = *(v9 + 744);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v10 + 4), a3, *(this + 98));
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        return HasProperty;
      }

      v8 = 1751737454;
    }

LABEL_46:
    if (mSelector != v8)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  if (mSelector <= 1853059699)
  {
    if (mSelector <= 1819569762)
    {
      if (mSelector == 1819107691 || mSelector == 1819111268)
      {
        goto LABEL_47;
      }

      v8 = 1819173229;
    }

    else if (mSelector > 1851878763)
    {
      if (mSelector == 1851878764)
      {
        goto LABEL_47;
      }

      v8 = 1853059619;
    }

    else
    {
      if (mSelector == 1819569763)
      {
        return HasProperty;
      }

      v8 = 1836411236;
    }

    goto LABEL_46;
  }

  if (mSelector > 1936092275)
  {
    if (mSelector > 1953653101)
    {
      if (mSelector == 1969841184)
      {
        goto LABEL_47;
      }

      v8 = 1953653102;
    }

    else
    {
      if (mSelector == 1936092276)
      {
        goto LABEL_47;
      }

      v8 = 1937009955;
    }

    goto LABEL_46;
  }

  if (mSelector <= 1920168546)
  {
    if (mSelector == 1853059700)
    {
      goto LABEL_47;
    }

    v8 = 1919512167;
    goto LABEL_46;
  }

  if (mSelector == 1920168547)
  {
    goto LABEL_47;
  }

  v7 = 1935763060;
LABEL_40:
  if (mSelector == v7)
  {
    return HasProperty;
  }

LABEL_53:
  if (HALS_ClockDevice::HasProperty(this, a2, a3))
  {
    return HasProperty;
  }

  v13 = *(*(this + 47) + 16);

  return v13();
}

void sub_1DE2B2B90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAClockDevice::_Deactivate(HALS_IOUAClockDevice *this)
{
  v2 = *(this + 53);
  v3 = *(this + 54);
  if (v2 != v3)
  {
    do
    {
      (*(**v2 + 8))();
      v4 = *v2++;
      HALS_ObjectMap::ObjectIsDead(v4, v5);
    }

    while (v2 != v3);
    v2 = *(this + 53);
  }

  *(this + 54) = v2;
  *(this + 2) = 0;
}

void sub_1DE2B2E18(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(*(v1 + 1216));
  v5 = *(v1 + 1152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  HALS_IOEngine2::~HALS_IOEngine2(v1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E12C1730](v1, v2);
  _Unwind_Resume(a1);
}

void HALB_SharedBuffer::~HALB_SharedBuffer(HALB_SharedBuffer *this)
{
  HALB_SharedBuffer::~HALB_SharedBuffer(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5963600;
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 56) == 1)
    {
      munlock(v2, *(this + 2));
      v2 = *(this + 1);
    }

    HALB_IOBufferManager_Server::FreeBuffer(v2, *(this + 4));
  }

  caulk::mach::mach_port::~mach_port(this + 15);
}

void caulk::mach::mach_port::~mach_port(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *this);
  }
}

vm_address_t HALB_SharedBuffer::Allocate_Server(HALB_SharedBuffer *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(this + 55) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "HALB_SharedBuffer.cpp";
      v9 = 1024;
      v10 = 281;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_SharedBuffer::Allocate_Server: this process does not own the shared memory object", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v2 = *(this + 2);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "HALB_SharedBuffer.cpp";
      v9 = 1024;
      v10 = 282;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_SharedBuffer::Allocate_Server: allocating a size of 0 is not supported", &v7, 0x12u);
    }

    v6 = __cxa_allocate_exception(0x10uLL);
    *v6 = off_1F5991DD8;
    v6[2] = 1852797029;
  }

  result = HALB_IOBufferManager_Server::AllocateBuffer(v2);
  *(this + 1) = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::mach::error_category::message(caulk::mach::error_category *this@<X0>, mach_error_t a2@<W1>, std::string *a3@<X8>)
{
  v5 = (*(*this + 16))(this);
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v8 = std::string::append(&__dst, ": ", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = mach_error_string(a2);
  v11 = strlen(v10);
  v12 = std::string::append(&v14, v10, v11);
  *a3 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1DE2B3298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void caulk::mach::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOA2UCDevice::~HALS_IOA2UCDevice(HALS_IOA2UCDevice *this)
{
  HALB_UCObject::~HALB_UCObject(this);

  JUMPOUT(0x1E12C1730);
}

double HALS_IOA2UCDevice::GetNominalSampleRate(const __CFDictionary **this)
{
  cf = 0;
  v1 = 0.0;
  if (HALB_UCObject::CopyProperty_CFType(this, @"sample rate", &cf))
  {
    v2 = cf;
    v3 = CFGetTypeID(cf);
    if (v3 == CFNumberGetTypeID())
    {
      v7 = v2;
      v8 = 0;
      valuePtr = 0;
      if (v2)
      {
        CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
        v4 = valuePtr;
        v5 = 1.0;
        if (valuePtr < 0)
        {
          v5 = -1.0;
        }
      }

      else
      {
        v4 = 0;
        v5 = 1.0;
      }

      v1 = v5 * (vcvtd_n_f64_u64(v4 * v5, 0x20uLL) + (((v4 * v5) >> 32) & 0x7FFFFFFF));
      CACFNumber::~CACFNumber(&v7);
    }

    CFRelease(v2);
  }

  return v1;
}

const void *HALS_IOA2UCDevice::CopyDeviceUID(HALS_IOA2UCDevice *this)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, @"device UID", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    v3 = CFGetTypeID(CFProperty);
    if (v3 != CFStringGetTypeID())
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

void CACFArray::~CACFArray(CACFArray *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

CFArrayRef HALS_IOA2UCDevice::CopyStreamDictionaryByID(const __CFDictionary **this, int a2)
{
  v4 = 1;
  do
  {
    theArray = 0;
    if (v4)
    {
      v5 = @"output streams";
    }

    else
    {
      v5 = @"input streams";
    }

    HALB_UCObject::CopyProperty_CFArray(this, v5, &theArray);
    v17 = theArray;
    v18 = 1;
    if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
    {
      v7 = 1;
      do
      {
        theArray = 0;
        v16 = 0;
        CACFArray::GetCACFDictionary(&v17, v7 - 1, &theArray);
        if (theArray && ((v14 = 0, UInt32 = CACFDictionary::GetUInt32(theArray, @"stream ID", &v14), v14 == a2) ? (v9 = UInt32) : (v9 = 0), v9 == 1 && theArray))
        {
          CFRetain(theArray);
          v10 = theArray;
        }

        else
        {
          v10 = 0;
        }

        CACFDictionary::~CACFDictionary(&theArray);
        if (v10)
        {
          break;
        }
      }

      while (v7++ < Count);
    }

    else
    {
      v10 = 0;
    }

    CACFArray::~CACFArray(&v17);
    v12 = (v10 == 0) & v4;
    v4 = 0;
  }

  while ((v12 & 1) != 0);
  return v10;
}

void sub_1DE2B3628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CACFArray::~CACFArray(va);
  _Unwind_Resume(a1);
}

BOOL CA::StreamDescription::IsEquivalent(CA::Implementation *a1, AudioStreamBasicDescription *a2, unsigned int a3)
{
  v4 = *a1;
  if (a3)
  {
    if (v4 == 0.0 || (a2->mSampleRate != 0.0 ? (v7 = v4 == a2->mSampleRate) : (v7 = 1), v7))
    {
      v8 = *(a1 + 2);
      if (!v8 || (mFormatID = a2->mFormatID) == 0 || v8 == mFormatID)
      {
        v10 = *(a1 + 4);
        if (!v10 || (mBytesPerPacket = a2->mBytesPerPacket) == 0 || v10 == mBytesPerPacket)
        {
          v12 = *(a1 + 5);
          if (!v12 || (mFramesPerPacket = a2->mFramesPerPacket) == 0 || v12 == mFramesPerPacket)
          {
            v14 = *(a1 + 6);
            if (!v14 || (mBytesPerFrame = a2->mBytesPerFrame) == 0 || v14 == mBytesPerFrame)
            {
              v16 = *(a1 + 7);
              if (!v16 || (mChannelsPerFrame = a2->mChannelsPerFrame) == 0 || v16 == mChannelsPerFrame)
              {
                v18 = *(a1 + 8);
                if (!v18 || (mBitsPerChannel = a2->mBitsPerChannel) == 0 || v18 == mBitsPerChannel)
                {
                  v20 = 1;
                  if (v8)
                  {
                    if (a2->mFormatID)
                    {
                      v21 = *(a1 + 3);
                      if (v21)
                      {
                        mFormatFlags = a2->mFormatFlags;
                        if (mFormatFlags)
                        {
                          if (v8 == 1819304813)
                          {
                            v23 = ((a3 >> 1) & 1);
                            RegularizedFormatFlags = CA::Implementation::GetRegularizedFormatFlags(a1, v23);
                            return RegularizedFormatFlags == CA::Implementation::GetRegularizedFormatFlags(a2, v23);
                          }

                          else
                          {
                            return v21 == mFormatFlags;
                          }
                        }
                      }
                    }
                  }

                  return v20;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v4 != a2->mSampleRate || *(a1 + 2) != a2->mFormatID || *(a1 + 4) != a2->mBytesPerPacket || *(a1 + 5) != a2->mFramesPerPacket || *(a1 + 7) != a2->mChannelsPerFrame || *(a1 + 8) != a2->mBitsPerChannel)
  {
    return 0;
  }

  v5 = ((a3 >> 1) & 1);

  return CA::Implementation::EquivalentFormatFlags(a1, a2, v5);
}

uint64_t CA::Implementation::GetRegularizedFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2)
{
  v2 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v2;
  }

  v3 = v2 & 0x7FFFFFFF;
  if ((v2 & 0x7FFFFFFF) == 0)
  {
    v3 = *(this + 3);
  }

  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 0xFFFFFFBF;
  }

  v5 = *(this + 6);
  if (!v5)
  {
    v9 = v4 | 8;
    v6 = *(this + 7);
    v8 = *(this + 8);
LABEL_15:
    v10 = v8 == 0;
    goto LABEL_16;
  }

  v6 = *(this + 7);
  if ((v2 & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(this + 7);
  }

  if (!v7)
  {
    v5 = 0;
    v8 = *(this + 8);
    v9 = v4 | 8;
    goto LABEL_15;
  }

  v5 = 8 * (v5 / v7);
  v8 = *(this + 8);
  v9 = v4 | 8;
  v10 = v5 == v8;
LABEL_16:
  if (v10)
  {
    v4 = v9;
  }

  v11 = (v8 & 7) == 0 && v5 == v8;
  v12 = v4 & 0xFFFFFFEF;
  if (!v11)
  {
    v12 = v4;
  }

  if (v12)
  {
    v12 &= ~4u;
  }

  v13 = (v12 & 8) == 0 || v8 > 8;
  LODWORD(v2) = v12 & 2;
  if (v13)
  {
    LODWORD(v2) = v12;
  }

  if (v6 == 1)
  {
    LODWORD(v2) = v2 & 0xFFFFFFDF;
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return 0x80000000;
  }
}

BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v3 == a2->mFormatFlags;
  }

  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) == 0)
  {
    v4 = *(this + 3);
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 & 0xFFFFFFBF;
  }

  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 7);
    }

    if (v8)
    {
      v6 = 8 * (v6 / v8);
      v9 = *(this + 8);
      v10 = v5 | 8;
      v11 = v6 == v9;
      goto LABEL_17;
    }

    v6 = 0;
    v9 = *(this + 8);
    v10 = v5 | 8;
  }

  else
  {
    v10 = v5 | 8;
    v7 = *(this + 7);
    v9 = *(this + 8);
  }

  v11 = v9 == 0;
LABEL_17:
  if (v11)
  {
    v5 = v10;
  }

  v13 = (v9 & 7) == 0 && v6 == v9;
  v14 = v5 & 0xFFFFFFEF;
  if (!v13)
  {
    v14 = v5;
  }

  if (v14)
  {
    v14 &= ~4u;
  }

  v15 = (v14 & 8) == 0 || v9 > 8;
  v16 = v14 & 2;
  if (v15)
  {
    v16 = v14;
  }

  if (v7 == 1)
  {
    v17 = v16 & 0xFFFFFFDF;
  }

  else
  {
    v17 = v16;
  }

  if (!v17)
  {
    v17 = 0x80000000;
  }

  mFormatFlags = a2->mFormatFlags;
  if (a2->mFormatID != 1819304813)
  {
    return v17 == mFormatFlags;
  }

  v19 = mFormatFlags & 0x7FFFFFFF;
  if ((mFormatFlags & 0x7FFFFFFF) == 0)
  {
    v19 = a2->mFormatFlags;
  }

  if (a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 & 0xFFFFFFBF;
  }

  mBytesPerFrame = a2->mBytesPerFrame;
  if (!mBytesPerFrame)
  {
    v25 = v20 | 8;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mBitsPerChannel = a2->mBitsPerChannel;
LABEL_50:
    v26 = mBitsPerChannel == 0;
    goto LABEL_51;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2->mChannelsPerFrame;
  }

  if (!v23)
  {
    mBytesPerFrame = 0;
    mBitsPerChannel = a2->mBitsPerChannel;
    v25 = v20 | 8;
    goto LABEL_50;
  }

  mBytesPerFrame = 8 * (mBytesPerFrame / v23);
  mBitsPerChannel = a2->mBitsPerChannel;
  v25 = v20 | 8;
  v26 = mBytesPerFrame == mBitsPerChannel;
LABEL_51:
  if (v26)
  {
    v20 = v25;
  }

  v27 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
  v28 = v20 & 0xFFFFFFEF;
  if (!v27)
  {
    v28 = v20;
  }

  if (v28)
  {
    v28 &= ~4u;
  }

  v29 = (v28 & 8) == 0 || mBitsPerChannel > 8;
  v30 = v28 & 2;
  if (v29)
  {
    v30 = v28;
  }

  if (mChannelsPerFrame == 1)
  {
    v31 = v30 & 0xFFFFFFDF;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    mFormatFlags = v31;
  }

  else
  {
    mFormatFlags = 0x80000000;
  }

  return v17 == mFormatFlags;
}

void HALS_IOA2UCDevice::SetStreamActive(HALS_IOA2UCDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  v4 = 1937010544;
  input[0] = a2;
  input[1] = a3;
  v5 = *(this + 3);
  if (!v5 || *(this + 34) != 1 || (v4 = IOConnectCallMethod(v5, 6u, input, 2u, 0, 0, 0, 0, 0, 0), v4))
  {
    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v8 = *(v6 + 8);
    v9 = (v4 << 32) | 0x2E0;
    v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v10 + 32) = v9;
    *v10 = &unk_1F5963690;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v8, v10);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetStreamActive(unsigned int,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::SetStreamActive: got an error when telling the hardware to turn a stream on or off, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetStreamActive(unsigned int,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

CFTypeRef HALS_IOA2UCDevice::CopyControlDictionaryByID(const __CFDictionary **this, int a2)
{
  theArray = 0;
  HALB_UCObject::CopyProperty_CFArray(this, @"controls", &theArray);
  v9 = theArray;
  v10 = 1;
  v15 = 0;
  if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
  {
    for (i = 0; i < Count; ++i)
    {
      cf = 0;
      v13 = 0;
      CACFArray::GetCACFDictionary(&theArray, i, &cf);
      if (cf && ((v11 = 0, UInt32 = CACFDictionary::GetUInt32(cf, @"control ID", &v11), v11 == a2) ? (v6 = UInt32) : (v6 = 0), v6 == 1 && cf))
      {
        CFRetain(cf);
        v7 = cf;
      }

      else
      {
        v7 = 0;
      }

      CACFDictionary::~CACFDictionary(&cf);
      if (v7)
      {
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  CACFArray::~CACFArray(&theArray);
  CACFArray::~CACFArray(&v9);
  return v7;
}

void sub_1DE2B3E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  CACFArray::~CACFArray(va1);
  CACFArray::~CACFArray(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetControlInfo_Value(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v6 = this;
  v7 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"value", &v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HALS_IOA2UCDevice.cpp";
        v11 = 1024;
        v12 = 922;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Value: there is no control value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v8;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DE2B3F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

CFTypeRef HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  v6 = this;
  v7 = 0;
  if (this)
  {
    if ((CACFDictionary::GetArray(this, @"value", &cf) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HALS_IOA2UCDevice.cpp";
        v11 = 1024;
        v12 = 1035;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue: there is no selector value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = cf;
    CFRetain(cf);
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DE2B40E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

CFTypeRef HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  v6 = this;
  v7 = 0;
  if (this)
  {
    if ((CACFDictionary::GetArray(this, @"selectors", &cf) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HALS_IOA2UCDevice.cpp";
        v11 = 1024;
        v12 = 1048;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopySelectorControlInfoByIndex_SelectorMap: there is no selector map", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = cf;
    CFRetain(cf);
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DE2B4240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetStereoPanControlInfo_LeftValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v6 = this;
  v7 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"left value", &v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HALS_IOA2UCDevice.cpp";
        v11 = 1024;
        v12 = 1061;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_LeftValue: there is no left value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v8;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DE2B4394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetStereoPanControlInfo_CenterValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v6 = this;
  v7 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"center value", &v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HALS_IOA2UCDevice.cpp";
        v11 = 1024;
        v12 = 1073;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_CenterValue: there is no center value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v8;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DE2B44E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetStereoPanControlInfo_RightValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v6 = this;
  v7 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"right value", &v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HALS_IOA2UCDevice.cpp";
        v11 = 1024;
        v12 = 1085;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_RightValue: there is no right value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v8;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DE2B463C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void HALS_IOA2UCDevice::MoveBlockControlData(HALS_IOA2UCDevice *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  v5 = 1937010544;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  v6 = *(this + 3);
  if (!v6 || *(this + 34) != 1 || (v5 = IOConnectCallMethod(v6, 9u, input, 3u, 0, 0, 0, 0, 0, 0), v5))
  {
    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v9 = *(v7 + 8);
    v10 = (v5 << 32) | 0x486;
    v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v11 + 16) = 0;
    *(v11 + 20) = 16;
    *(v11 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v11 + 32) = v10;
    *v11 = &unk_1F59636E8;
    *(v11 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v9, v11);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveBlockControlData(unsigned int,unsigned int,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::MoveBlockControlData: got an error when telling the hardware to move the block control data, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveBlockControlData(unsigned int,unsigned int,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOA2UCDevice::MoveDataExchangeBlockData(HALS_IOA2UCDevice *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  v5 = 1937010544;
  input[0] = a2;
  input[1] = a4;
  input[2] = a3;
  v6 = *(this + 3);
  if (!v6 || *(this + 34) != 1 || (v5 = IOConnectCallMethod(v6, 7u, input, 3u, 0, 0, 0, 0, 0, 0), v5))
  {
    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v9 = *(v7 + 8);
    v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v10 + 32) = (v5 << 32) | 0x4E4;
    *v10 = &unk_1F5963740;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v9, v10);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveDataExchangeBlockData(unsigned int,BOOL,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::MoveDataExchangeBlockData: got an error when telling the hardware to move the block control data, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveDataExchangeBlockData(unsigned int,BOOL,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIO(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::StartIO: got an error when telling the hardware to start, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIO(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *HALS_IOA2UCDevice::StartIOWithFlags(HALS_IOA2UCDevice *this, uint64_t a2)
{
  v3 = 1937010544;
  output = 0;
  input = a2;
  outputCnt = 1;
  v4 = *(this + 3);
  if (v4)
  {
    if (*(this + 34) == 1)
    {
      v3 = IOConnectCallMethod(v4, 0xAu, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v3)
      {
        return v3;
      }
    }
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v8 = *(v5 + 8);
    v9 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v9 + 16) = 0;
    *(v9 + 20) = 16;
    *(v9 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v9 + 32) = (v3 << 32) | 0x4F8;
    *v9 = &unk_1F59637F0;
    *(v9 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v8, v9);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIOWithFlags(unsigned long long)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::StartIOWithFlags: got an error when telling the hardware to start, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIOWithFlags(unsigned long long)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StopIO(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::StopIO: got an error when telling the hardware to stop, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}