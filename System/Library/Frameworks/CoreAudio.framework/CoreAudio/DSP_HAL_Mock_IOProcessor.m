@interface DSP_HAL_Mock_IOProcessor
- (BOOL)callAdaptHook:(const void *)a3;
- (BOOL)callNegotiateHook:(const void *)a3;
- (DSP_HAL_Mock_IOProcessor)init;
- (id)adaptToConfigurationChange:(id)a3 withCallbacks:(void *)a4 error:(id *)a5;
- (id)adaptToConfigurationChange:withCallbacks:error:;
- (id)basic_negotiateConfigurationChange:(void *)a3 error:(id *)a4;
- (id)conference_negotiateConfigurationChange:(void *)a3 error:(id *)a4;
- (id)negotiateConfigurationChange:(id)a3 error:(id *)a4;
- (id)simulateConfigurationChange:(id)a3 error:(id *)a4;
- (id)spatial_negotiateConfigurationChange:(void *)a3 error:(id *)a4;
- (uint64_t)adaptToConfigurationChange:withCallbacks:error:;
- (void)adaptToConfigurationChange:withCallbacks:error:;
- (void)dealloc;
- (void)setDspCallbacks:(void *)a3;
- (void)setTestHookFetcher:(function<DSP_HAL_Mock_TestHooks)(;
@end

@implementation DSP_HAL_Mock_IOProcessor

- (void)setTestHookFetcher:(function<DSP_HAL_Mock_TestHooks)(
{
  v10[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::__value_func[abi:ne200100](v8, a3);
  p_testHookFetcher = &self->_testHookFetcher;
  if (&self->_testHookFetcher != v8)
  {
    v5 = v9;
    f = self->_testHookFetcher.__f_.__f_;
    if (v9 == v8)
    {
      if (f == p_testHookFetcher)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(*self->_testHookFetcher.__f_.__f_ + 24))(self->_testHookFetcher.__f_.__f_, v8);
        (*(*self->_testHookFetcher.__f_.__f_ + 32))(self->_testHookFetcher.__f_.__f_);
        self->_testHookFetcher.__f_.__f_ = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, &self->_testHookFetcher);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = self->_testHookFetcher.__f_.__f_;
      }

      self->_testHookFetcher.__f_.__f_ = p_testHookFetcher;
    }

    else if (f == p_testHookFetcher)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_testHookFetcher.__f_.__f_, v8);
      (*(*self->_testHookFetcher.__f_.__f_ + 32))(self->_testHookFetcher.__f_.__f_);
      self->_testHookFetcher.__f_.__f_ = v9;
      v9 = v8;
    }

    else
    {
      v9 = self->_testHookFetcher.__f_.__f_;
      self->_testHookFetcher.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)adaptToConfigurationChange:(id)a3 withCallbacks:(void *)a4 error:(id *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(DSP_HAL_Mock_IOProcessor *)self featureFlag];
  applesauce::CF::DictionaryRef::from_get(&cf, v7);
  v9 = [(DSP_HAL_Mock_IOProcessor *)self callAdaptHook:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    if ((v8 & 0x81) != 0x81)
    {
      v11 = [(DSP_HAL_Mock_IOProcessor *)self dspCallbacks];
      if (v11)
      {
        atomic_load(v11 + 316);
        [(DSP_HAL_Mock_IOProcessor *)self setDspCallbacks:0];
      }

      operator new();
    }

    if (a5)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Force Fail Adapt" code:-1 userInfo:0];
LABEL_9:
      *a5 = v10;
    }
  }

  else if (a5)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
    goto LABEL_9;
  }

  v12 = *MEMORY[0x1E69E9840];

  return 0;
}

- (uint64_t)adaptToConfigurationChange:withCallbacks:error:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z75-[DSP_HAL_Mock_IOProcessor adaptToConfigurationChange:withCallbacks:error:]E4$_13"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)adaptToConfigurationChange:withCallbacks:error:
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x1E12C1730);
}

- (id)adaptToConfigurationChange:withCallbacks:error:
{
  *a2 = &unk_1F59630C8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (id)negotiateConfigurationChange:(id)a3 error:(id *)a4
{
  v6 = a3;
  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(&v13);
  v13 = &unk_1F5985AA8;
  applesauce::CF::DictionaryRef::from_get(&cf, v6);
  v13[4](&v13, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16[17] != 1 || (v16[16] & 1) == 0)
  {
    [(DSP_HAL_Mock_IOProcessor *)self setDspCallbacks:0];
  }

  if (!v18[5])
  {
    goto LABEL_9;
  }

  v7 = *(v18[3] + 28);
  if (v7 > 8)
  {
LABEL_12:
    v9 = [(DSP_HAL_Mock_IOProcessor *)self conference_negotiateConfigurationChange:&v13 error:a4];
    goto LABEL_13;
  }

  v8 = 1 << v7;
  if ((v8 & 0x10A) == 0)
  {
    if ((v8 & 0x30) != 0)
    {
      v9 = [(DSP_HAL_Mock_IOProcessor *)self spatial_negotiateConfigurationChange:&v13 error:a4];
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_9:
  v9 = [(DSP_HAL_Mock_IOProcessor *)self basic_negotiateConfigurationChange:&v13 error:a4];
LABEL_13:
  v10 = v9;
  v13 = &unk_1F598DC40;
  v20 = &v19;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v20);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(v18);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v17);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v16);
  v13 = &unk_1F598DC90;
  if (v15 == 1 && v14)
  {
    CFRelease(v14);
  }

  return v10;
}

- (id)simulateConfigurationChange:(id)a3 error:(id *)a4
{
  v4 = [(DSP_HAL_Mock_IOProcessor *)self negotiateConfigurationChange:a3 error:a4];

  return v4;
}

- (id)basic_negotiateConfigurationChange:(void *)a3 error:(id *)a4
{
  if (*(a3 + 41) == 1)
  {
    v7 = *(a3 + 40);
  }

  else
  {
    v7 = 0;
  }

  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator applesauce::CF::DictionaryRef(&cf, a3);
  v8 = [(DSP_HAL_Mock_IOProcessor *)self callNegotiateHook:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
      *a4 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_21;
  }

  if ((v7 & 1) == 0)
  {
    if (a4)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = *MEMORY[0x1E696A798];
      v14 = 0;
      goto LABEL_18;
    }

LABEL_19:
    v15 = objc_alloc_init(MEMORY[0x1E695DF18]);
    goto LABEL_21;
  }

  v9 = *(a3 + 84);
  v10 = *(a3 + 85);
  if (v9 == v10)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v11 = *v9;
    if (*(*v9 + 64) == 1 && *(v11 + 240) == 1)
    {
      break;
    }

    v9 += 2;
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  if (*(v11 + 664) == *(v11 + 672))
  {
LABEL_12:
    if (a4)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = *MEMORY[0x1E696A798];
      v14 = 2003329396;
LABEL_18:
      *a4 = [v12 initWithDomain:v13 code:v14 userInfo:0];
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v32 = 0;
  v33 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0u;
  v31 = &unk_1F598EA30;
  v36 = 0;
  v37 = -1;
  DSP_Host_Types::FormatDescription::FormatDescription(&cf, (a3 + 120));
  if (DSP_Dictionariable::DictionarySet::has_all_values(__p, v30) && v25 == 1 && v28 == 1 && v26[17] == 1 && v27[4] == 1 && v26[16] & 1 | (v24[4] == 1))
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::FormatDescription,std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription&,0>();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v31[3](&v31, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v18, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v17 = v18;
  v15 = v17;
  if (v17)
  {
    CFRelease(v17);
  }

  cf = &unk_1F598DDD8;
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v27);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v26);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v23);
  cf = &unk_1F598DE18;
  if (v22 == 1 && v21)
  {
    CFRelease(v21);
  }

  v31 = &unk_1F598EA30;
  cf = &v35;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = &v34[1] + 8;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = v34;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  v31 = &unk_1F598EA70;
  if (v33 == 1 && v32)
  {
    CFRelease(v32);
  }

LABEL_21:

  return v15;
}

- (id)conference_negotiateConfigurationChange:(void *)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a3 + 41) == 1)
  {
    v7 = *(a3 + 40);
  }

  else
  {
    v7 = 0;
  }

  if (*(a3 + 14))
  {
    v8 = *(*(a3 + 12) + 28) != 6;
  }

  else
  {
    v8 = 1;
  }

  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator applesauce::CF::DictionaryRef(cf, a3);
  v9 = [(DSP_HAL_Mock_IOProcessor *)self callNegotiateHook:cf];
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v9)
  {
    if (v7)
    {
      v10 = (~[(DSP_HAL_Mock_IOProcessor *)self featureFlag]& 0x21) != 0;
      v11 = [(DSP_HAL_Mock_IOProcessor *)self featureFlag];
      v12 = v10 && v8;
      if ((v11 & 0x41) == 65 && !v8)
      {
        v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v13 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v16 = *v14;
          AMCP::Log::Scope::get_os_log_t(*v14);
          objc_claimAutoreleasedReturnValue();
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v16 = *v14;
          AMCP::Log::Scope::get_os_log_t(*v14);
          objc_claimAutoreleasedReturnValue();
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v39 = 0;
          v40 = 0;
          v41 = 47;
          do
          {
            v42 = &aLibraryCachesC_11[v39];
            if (v41 == 47)
            {
              v40 = &aLibraryCachesC_11[v39];
            }

            v41 = v42[1];
            if (!v42[1])
            {
              break;
            }
          }

          while (v39++ < 0xFFF);
          if (v40)
          {
            v44 = v40 + 1;
          }

          else
          {
            v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
          }

          *cf = 136315394;
          *&cf[4] = v44;
          v46 = 1024;
          v47 = 461;
          _os_log_debug_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] MOCK WARNING: It is not normal for VAD to request format changes.", cf, 0x12u);
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = *(a3 + 84);
    v19 = *(a3 + 85);
    if (v18 != v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0.0;
      while (1)
      {
        v23 = *v18;
        if (*(*v18 + 64) == 1 && *(v23 + 240) == 1)
        {
          if (v22 == 0.0 && v23[83] != v23[84])
          {
            v20 = *v18;
          }

          if (v23[89] != v23[90])
          {
            v21 = *v18;
          }

          if (v20)
          {
            for (i = v20[89]; i != v20[90]; i += 2)
            {
              v26 = *i;
              if (*(*i + 44) == 1 && *(v26 + 40) == 2)
              {
                if (*(v26 + 188) == 1)
                {
                  v27 = *(v26 + 184);
                }

                break;
              }
            }

            for (j = v20[83]; j != v20[84] && v22 == 0.0; j += 2)
            {
              v29 = *j;
              v30 = *(*j + 336);
              v31 = *(*j + 344);
              v32 = *(*j + 336);
              if (v32 != v31 && *(v29 + 160) == 1 && *(v29 + 44) == 1 && *(v29 + 40) == 1)
              {
                if (!v12)
                {
                  v22 = *(v29 + 152);
                  break;
                }

                while (1)
                {
                  if (*(v32 + 48) == 1 && *(v32 + 76) == 1 && *(v32 + 124) == 1 && *(v32 + 97) == 1 && *(v32 + 120) == 1)
                  {
                    if (*(v32 + 96) & 1 | (*(v32 + 72) == 1))
                    {
                      v22 = *(v32 + 40);
                      if (v22 != *(v29 + 152))
                      {
                        break;
                      }
                    }
                  }

                  v32 += 152;
                  if (v32 == v31)
                  {
                    v22 = *(v29 + 152);
                    break;
                  }
                }
              }
            }
          }

          if (v21)
          {
            break;
          }
        }

LABEL_73:
        v18 += 16;
        if (v18 == v19)
        {
          goto LABEL_74;
        }
      }

      if (*(v21 + 64))
      {
        v33 = v21;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33[89];
      v35 = v33[90];
      while (v34 != v35)
      {
        if (*(*v34 + 44) != 1 || *(*v34 + 40) != 2)
        {
          v21 = 0;
          goto LABEL_73;
        }

        v34 += 16;
      }

      if (v22 == 0.0)
      {
        goto LABEL_73;
      }

LABEL_74:
      if (v22 != 0.0)
      {
        std::allocate_shared[abi:ne200100]<DSP_Host_Types::DeviceConfiguration,std::allocator<DSP_Host_Types::DeviceConfiguration>,char const(&)[1],0>();
      }
    }

    if (a4)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      *a4 = [v36 initWithDomain:*MEMORY[0x1E696A798] code:2003329396 userInfo:0];
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF18]);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
    *a4 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)spatial_negotiateConfigurationChange:(void *)a3 error:(id *)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 41) == 1)
  {
    v7 = *(a3 + 40);
  }

  else
  {
    v7 = 0;
  }

  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!*&v26[0])
  {
    v48[0] = 0;
    goto LABEL_14;
  }

  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!v31)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v31 + 48))(&cf);
  if (v35)
  {
    if (v35 == &cf)
    {
      v48[0] = v47;
      (*(*v35 + 3))();
      goto LABEL_13;
    }

    v8 = &v35;
    v48[0] = v35;
  }

  else
  {
    v8 = v48;
  }

  *v8 = 0;
LABEL_13:
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](&__p);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v42);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&v38);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](&v36);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](&cf);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](&Mutable);
LABEL_14:
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](&v23);
  if (v48[0])
  {
    DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator applesauce::CF::DictionaryRef(&cf, a3);
    if (!v48[0])
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v9 = (*(*v48[0] + 48))(v48[0], &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((v9 & 1) == 0)
    {
      if (a4)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
        *a4 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_70;
    }
  }

  for (i = *(a3 + 84); ; i += 2)
  {
    if (i == *(a3 + 85))
    {
      if (a4)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        *a4 = [v12 initWithDomain:*MEMORY[0x1E696A798] code:2003329396 userInfo:0];
      }

      goto LABEL_26;
    }

    v11 = *i;
    if ((*(*i + 64) & 1) != 0 && *(v11 + 240) == 1)
    {
      break;
    }
  }

  if (*(v11 + 688) == *(v11 + 696))
  {
    if (a4)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      *a4 = [v18 initWithDomain:*MEMORY[0x1E696A798] code:2003329396 userInfo:0];
    }

LABEL_26:
    v13 = objc_alloc_init(MEMORY[0x1E695DF18]);
    goto LABEL_70;
  }

  v24 = 0;
  v25 = 0;
  v23 = &unk_1F598EA30;
  memset(v26, 0, sizeof(v26));
  v27 = 0u;
  v28 = 0;
  v29 = -1;
  DSP_Host_Types::FormatDescription::FormatDescription(&cf, (a3 + 272));
  if (v7)
  {
    if (*(a3 + 516) == 1)
    {
      v14 = *(a3 + 128);
      if (v14)
      {
        if (v14 != 0x10000)
        {
          v16 = *(a3 + 128);
          goto LABEL_50;
        }

        if (*(a3 + 540) == 1)
        {
          v15 = *(a3 + 134);
          if (v15)
          {
            v16 = 0;
            do
            {
              v16 += v15 & 1;
              v17 = v15 >= 2;
              v15 >>= 1;
            }

            while (v17);
          }

          else
          {
            v16 = 0;
          }

LABEL_50:
          v39 = v16;
          v40 = 1;
        }
      }

      else if (*(a3 + 564) == 1)
      {
        v16 = *(a3 + 140);
        goto LABEL_50;
      }
    }

    if (DSP_Dictionariable::DictionarySet::has_all_values(__p, v46) && v40 == 1 && v44 == 1 && v42[1] == 1 && v43[4] == 1 && v42[0] & 1 | (v39 == 1))
    {
      std::allocate_shared[abi:ne200100]<DSP_Host_Types::FormatDescription,std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription&,0>();
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v23[3](&v23, &Mutable);
    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v22, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v19 = v22;
    v13 = v19;
    if (v19)
    {
LABEL_61:
      CFRelease(v19);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v23[3](&v23, &Mutable);
    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v22, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v19 = v22;
    v13 = v19;
    if (v19)
    {
      goto LABEL_61;
    }
  }

  cf = &unk_1F598DDD8;
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v43);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v41);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v37);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v35);
  cf = &unk_1F598DE18;
  if (v34 == 1 && v33)
  {
    CFRelease(v33);
  }

  v23 = &unk_1F598EA30;
  cf = &v27;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = &v26[1] + 8;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = v26;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  v23 = &unk_1F598EA70;
  if (v25 == 1 && v24)
  {
    CFRelease(v24);
  }

LABEL_70:
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v47);
  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setDspCallbacks:(void *)a3
{
  dspCallbacks = self->_dspCallbacks;
  if (dspCallbacks)
  {
    (*(*dspCallbacks + 8))(dspCallbacks, a2);
    self->_dspCallbacks = 0;
  }

  if (a3)
  {
    self->_dspCallbacks = a3;
  }
}

- (BOOL)callAdaptHook:(const void *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!v18)
  {
    std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v17);
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v11);
  v5 = v13;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v17);
  if (!v5)
  {
    goto LABEL_8;
  }

  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(v11);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v13 + 48))(v13, a3);
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v17);
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)callNegotiateHook:(const void *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!v18)
  {
    std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v17);
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v11);
  v5 = v12;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v17);
  if (!v5)
  {
    goto LABEL_8;
  }

  [(DSP_HAL_Mock_IOProcessor *)self testHookFetcher];
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(v11);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v12 + 48))(v12, a3);
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v17);
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  processorProperties = self->_processorProperties;
  self->_processorProperties = 0;

  dspCallbacks = self->_dspCallbacks;
  if (dspCallbacks)
  {
    (*(*dspCallbacks + 8))(dspCallbacks);
    self->_dspCallbacks = 0;
  }

  hostCallbacks = self->_hostCallbacks;
  self->_hostCallbacks = 0;

  v6.receiver = self;
  v6.super_class = DSP_HAL_Mock_IOProcessor;
  [(DSP_HAL_Mock_IOProcessor *)&v6 dealloc];
}

- (DSP_HAL_Mock_IOProcessor)init
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = DSP_HAL_Mock_IOProcessor;
  v2 = [(DSP_HAL_Mock_IOProcessor *)&v12 init];
  v3 = v2;
  v4 = v2;
  if (v2)
  {
    hostCallbacks = v2->_hostCallbacks;
    v2->_dspCallbacks = 0;
    v2->_hostCallbacks = 0;

    processorProperties = v4->_processorProperties;
    v4->_processorProperties = 0;

    v4->_featureFlag = 97;
    f = v4->_testHookFetcher.__f_.__f_;
    v4->_testHookFetcher.__f_.__f_ = 0;
    if (f == &v3->_testHookFetcher)
    {
      (*(*f->__f_.__buf_.__data + 32))(f);
    }

    else if (f)
    {
      (*(*f->__f_.__buf_.__data + 40))(f);
    }

    v8 = objc_alloc_init(DSP_HAL_Mock_PropertySet);
    [(DSP_HAL_Mock_IOProcessor *)v4 setProcessorProperties:v8];

    v9 = [(DSP_HAL_Mock_IOProcessor *)v4 processorProperties];
    v14 = 0;
    [v9 configureForProcessor:v13];
    std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v13);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

@end