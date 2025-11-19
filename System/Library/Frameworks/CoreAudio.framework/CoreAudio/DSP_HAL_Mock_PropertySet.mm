@interface DSP_HAL_Mock_PropertySet
- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withData:(id)a4 withQualifier:(id)a5 error:(id *)a6;
- (DSP_HAL_Mock_PropertySet)init;
- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withQualifierData:(id)a4;
- (id)getHostedDSPPropertyInfoArray;
- (unsigned)getVoiceActivityState;
- (void)configureForFeatureFlag:(int)a3;
- (void)configureForProcessor:(function<void (unsigned)int;
- (void)dealloc;
- (void)setPropertyUpdater:(function<unsigned int (const AudioObjectPropertyAddress)&;
- (void)toggleVoiceActivityAndNotify;
@end

@implementation DSP_HAL_Mock_PropertySet

- (void)setPropertyUpdater:(function<unsigned int (const AudioObjectPropertyAddress)&
{
  v10[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::__value_func[abi:ne200100](v8, a3);
  p_propertyUpdater = &self->_propertyUpdater;
  if (&self->_propertyUpdater != v8)
  {
    v5 = v9;
    f = self->_propertyUpdater.__f_.__f_;
    if (v9 == v8)
    {
      if (f == p_propertyUpdater)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(*self->_propertyUpdater.__f_.__f_ + 24))(self->_propertyUpdater.__f_.__f_, v8);
        (*(*self->_propertyUpdater.__f_.__f_ + 32))(self->_propertyUpdater.__f_.__f_);
        self->_propertyUpdater.__f_.__f_ = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, &self->_propertyUpdater);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = self->_propertyUpdater.__f_.__f_;
      }

      self->_propertyUpdater.__f_.__f_ = p_propertyUpdater;
    }

    else if (f == p_propertyUpdater)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_propertyUpdater.__f_.__f_, v8);
      (*(*self->_propertyUpdater.__f_.__f_ + 32))(self->_propertyUpdater.__f_.__f_);
      self->_propertyUpdater.__f_.__f_ = v9;
      v9 = v8;
    }

    else
    {
      v9 = self->_propertyUpdater.__f_.__f_;
      self->_propertyUpdater.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withQualifierData:(id)a4
{
  mElement = a3.mElement;
  mSelector = a3.mSelector;
  mScope = a3.mScope;
  v8 = a4;
  if (mSelector == 1983997011 && mScope == 1768845428)
  {
    if (!mElement)
    {
      v9 = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
      {
        v12 = atomic_load(v11 + 42);
      }

      else
      {
        v12 = 0;
      }

      *bytes = v12;
      v30 = CFDataCreate(0, bytes, 4);
      v19 = v30;
      v34 = v30;
      if (v30)
      {
        v31 = CFGetTypeID(v30);
        if (v31 != CFDataGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        CFRelease(v19);
      }

      goto LABEL_41;
    }

LABEL_16:
    if ([(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam]&& (mSelector == 1684500589 || mSelector == 707406378) && (mScope == 1768845428 || mScope == 707406378) && mElement + 1 <= 1)
    {
      if (v8)
      {
        if ([v8 length] == 4)
        {
          *bytes = 0;
          [v8 getBytes:bytes length:4];
          if (*bytes == 1651797616)
          {
            v20 = [(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam];
            {
              v23 = atomic_load(v22 + 42);
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v33 = v24;
            AMCP::CF::create_data(&v34, &v33, 4);
LABEL_53:
            v19 = v34;
            AMCP::Log::Scope::get_os_log_t(v34);
            objc_claimAutoreleasedReturnValue();
            applesauce::CF::DataRef::~DataRef(&v34);
            goto LABEL_41;
          }
        }
      }
    }

    else if ([(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam]&& (mSelector == 1684498541 || mSelector == 707406378) && (mScope == 1768845428 || mScope == 707406378))
    {
      v19 = 0;
      if (!v8 || mElement + 1 > 1)
      {
        goto LABEL_41;
      }

      if ([v8 length] == 4)
      {
        *bytes = 0;
        [v8 getBytes:bytes length:4];
        if (*bytes == 1651797616)
        {
          v25 = [(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam];
          {
            v28 = atomic_load(v27 + 42);
          }

          else
          {
            v28 = 0;
          }

          v33 = v28;
          AMCP::CF::create_data(&v34, &v33, 4);
          goto LABEL_53;
        }
      }
    }

LABEL_40:
    v19 = 0;
    goto LABEL_41;
  }

  if (mSelector != 1685278561 || mScope != 1768845428 || mElement)
  {
    goto LABEL_16;
  }

  v13 = [(DSP_HAL_Mock_PropertySet *)self propAvailableOffloadsInput];
  if (!v13)
  {
    goto LABEL_40;
  }

  v14 = *v13->var0;
  if (!v15)
  {
    goto LABEL_40;
  }

  v16 = atomic_load(v15 + 21);
  if (!v16)
  {
    goto LABEL_40;
  }

  applesauce::CF::DictionaryRef::from_get(&v34, v16);
  v17 = v34;
  v18 = v17;
  if (v17)
  {
    CFRelease(v17);
  }

  v19 = [MEMORY[0x1E696AE40] dataWithPropertyList:v18 format:200 options:0 error:0];

LABEL_41:

  return v19;
}

- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withData:(id)a4 withQualifier:(id)a5 error:(id *)a6
{
  mElement = a3.mElement;
  v8 = *&a3.mSelector;
  v10 = a4;
  v11 = a5;
  if (![(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam]|| v8 != 1684500589 && v8 != 707406378 || HIDWORD(v8) != 1768845428 && HIDWORD(v8) != 707406378)
  {
    goto LABEL_14;
  }

  v12 = 0;
  if (!v11 || mElement + 1 > 1)
  {
    goto LABEL_15;
  }

  if ([v11 length] != 4 || (v19 = 0, objc_msgSend(v11, "getBytes:length:", &v19, 4), !v10) || v19 != 1651797616 || objc_msgSend(v10, "length") != 4)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v13 = [(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam];
  if (v13)
  {
    v14 = *v13->var0;
  }

  else
  {
    v15 = 0;
  }

  v18 = 0.0;
  [v10 getBytes:&v18 length:4];
  v17 = v18;
  if (v17 != COERCE_FLOAT(atomic_exchange(v15 + 42, LODWORD(v18))))
  {
    std::condition_variable::notify_one(v15 + 1);
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (id)getHostedDSPPropertyInfoArray
{
  v13 = 0;
  v14 = 0;
  v12 = &unk_1F598E988;
  memset(v15, 0, sizeof(v15));
  if ([(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState])
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>();
  }

  if ([(DSP_HAL_Mock_PropertySet *)self propAvailableOffloadsInput])
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>();
  }

  if ([(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam])
  {
    v3 = [(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam];
    v4 = *v3->var0;
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>();
  }

  if ([(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam])
  {
    v5 = [(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam];
    v6 = *v5->var0;
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>();
  }

  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v12[3](&v12, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v10, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = v10;
  v8 = v7;
  if (v7)
  {
    CFRelease(v7);
  }

  v12 = &unk_1F598E988;
  cf = v15;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  v12 = &unk_1F598E9C8;
  if (v14 == 1 && v13)
  {
    CFRelease(v13);
  }

  return v8;
}

- (void)configureForFeatureFlag:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if ((~a3 & 0x101) == 0 && ![(DSP_HAL_Mock_PropertySet *)self propAvailableOffloadsInput])
  {
    operator new();
  }

  if ((~a3 & 0x201) == 0 && ![(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam])
  {
    operator new();
  }

  if ((~a3 & 0x401) == 0 && ![(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam])
  {
    operator new();
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (unsigned)getVoiceActivityState
{
  v2 = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
  if (v2)
  {
    v3 = *v2->var0;
    if (v2)
    {
      v4 = atomic_load(&v2[21]);
      LODWORD(v2) = v4 != 0;
    }
  }

  return v2;
}

- (void)toggleVoiceActivityAndNotify
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *v3->var0;
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  [(DSP_HAL_Mock_PropertySet *)self propertyUpdater];
  v7 = v17;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v16);
  if (!v7)
  {
    if ((std::chrono::steady_clock::now().__d_.__rep_ - *(v6 + 22)) / 1000000000.0 * 1000.0 <= *(v6 + 23))
    {
      goto LABEL_11;
    }

    *(v6 + 22) = std::chrono::steady_clock::now();
    v11 = atomic_load(v6 + 42);
    if (atomic_exchange(v6 + 42, v11 == 0) == (v11 == 0))
    {
      goto LABEL_11;
    }

LABEL_10:
    std::condition_variable::notify_one(v6 + 1);
    goto LABEL_11;
  }

  [(DSP_HAL_Mock_PropertySet *)self propertyUpdater];
  v13 = 1983997011;
  v8 = atomic_load(v6 + 42);
  v14 = 0;
  v15 = v8 != 0;
  if (!v17)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v9 = (*(*v17 + 48))(v17, &v13, &v15) != 0;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v16);
  v10 = atomic_load(v6 + 42);
  if (v10 != v9 && atomic_exchange(v6 + 42, v9) != v9)
  {
    goto LABEL_10;
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)configureForProcessor:(function<void (unsigned)int
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState])
  {
    operator new();
  }

  if (a3->var0.var1)
  {
    v5 = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
    if (v5)
    {
      v6 = *v5->var0;
    }

    else
    {
      v7 = 0;
    }

    std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](v9, a3);
    DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(v7, v9);
    std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  propVoiceActivityState = self->_propVoiceActivityState;
  if (propVoiceActivityState)
  {
    (*(propVoiceActivityState->var0 + 1))(propVoiceActivityState, a2);
    self->_propVoiceActivityState = 0;
  }

  propAvailableOffloadsInput = self->_propAvailableOffloadsInput;
  if (propAvailableOffloadsInput)
  {
    (*(propAvailableOffloadsInput->var0 + 1))(propAvailableOffloadsInput, a2);
    self->_propAvailableOffloadsInput = 0;
  }

  propDSPGraphParam = self->_propDSPGraphParam;
  if (propDSPGraphParam)
  {
    (*(propDSPGraphParam->var0 + 1))(propDSPGraphParam, a2);
    self->_propDSPGraphParam = 0;
  }

  propHasDSPGraphParam = self->_propHasDSPGraphParam;
  if (propHasDSPGraphParam)
  {
    (*(propHasDSPGraphParam->var0 + 1))(propHasDSPGraphParam, a2);
    self->_propHasDSPGraphParam = 0;
  }

  v7.receiver = self;
  v7.super_class = DSP_HAL_Mock_PropertySet;
  [(DSP_HAL_Mock_PropertySet *)&v7 dealloc];
}

- (DSP_HAL_Mock_PropertySet)init
{
  v3.receiver = self;
  v3.super_class = DSP_HAL_Mock_PropertySet;
  result = [(DSP_HAL_Mock_PropertySet *)&v3 init];
  if (result)
  {
    *&result->_propDSPGraphParam = 0u;
    *&result->_propAvailableOffloadsInput = 0u;
  }

  return result;
}

@end