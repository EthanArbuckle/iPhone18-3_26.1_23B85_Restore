id AVFASoftLink::getAVAudioSessionMediaServicesWereLostNotification(AVFASoftLink *this)
{
  v1 = *(CADeprecated::TSingleton<AVFASoftLink>::instance() + 16);

  return v1;
}

uint64_t CADeprecated::TSingleton<AVFASoftLink>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<AVFASoftLink>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<AVFASoftLink>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AVFASoftLink>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AVFASoftLink>::sInstance;
}

void ___Z20setupHapticLogScopesv_block_invoke()
{
  v0 = _os_feature_enabled_impl();
  v1 = SecTaskCreateFromSelf(0);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.coreaudio.LoadDecodersInProcess", 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
      CFRelease(v4);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v2);
    if (!v0)
    {
LABEL_13:
      operator new();
    }
  }

  else
  {
    v6 = 0;
    if (!v0)
    {
      goto LABEL_13;
    }
  }

  if (!v6)
  {
    AudioConverterPrepare();
  }

  goto LABEL_13;
}

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::allocator<CASmartPreferences::Pref>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void CASmartPreferences::AddHandler<int>(CASmartPreferences *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = *MEMORY[0x277D85DE8];
  CASmartPreferences::instance(a1);
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_21569B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v6 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::vector<CASmartPreferences::Pref>::__emplace_back_slow_path<__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<CASmartPreferences::Pref>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v15 = 0;
  v16 = 48 * v4;
  std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>((48 * v4), a2, a3, a4);
  v17 = 48 * v4 + 48;
  v9 = *(a1 + 8);
  v10 = 48 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CASmartPreferences::Pref>,CASmartPreferences::Pref*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(&v15);
  return v14;
}

void sub_21569B9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  global_queue = dispatch_get_global_queue(0, 0);
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v3 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, global_queue);
  *(this + 12) = v3;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_0;
  handler[4] = this;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(this + 12));
}

void *CASmartPreferences::instance(CASmartPreferences *this)
{
  {
    CASmartPreferences::CASmartPreferences(&CASmartPreferences::instance(void)::global);
  }

  return &CASmartPreferences::instance(void)::global;
}

void *std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a3;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v9, a4);
  *a1 = v5;
  a1[1] = v6;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a1 + 2), v9);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_21569BC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CALog::Scope::SetPriorityThresholdFromPreference(CALog::Scope *this, const __CFString *a2, __CFString *a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282796440;
  v3[1] = this;
  v3[3] = v3;
  CASmartPreferences::AddHandler<int>(a3, a2, CALog::PrefValueToPriority, v3);
}

void sub_21569BD3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

void CASmartPreferences::_RegisterFirstHandler(uint64_t a1, const void *a2, __CFString *a3, uint64_t a4)
{
  value = a3;
  v11 = a2;
  std::mutex::lock(a1);
  if ((CASmartPreferences::HavePref(a1, a2, a3) & 1) == 0)
  {
    CFRetain(a2);
    CFRetain(a3);
    v8 = *(a1 + 80);
    if (v8 >= *(a1 + 88))
    {
      v9 = std::vector<CASmartPreferences::Pref>::__emplace_back_slow_path<__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &>(a1 + 72, &v11, &value, a4);
    }

    else
    {
      std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(*(a1 + 80), &v11, &value, a4);
      v9 = v8 + 48;
      *(a1 + 80) = v8 + 48;
    }

    *(a1 + 80) = v9;
    CFSetAddValue(*(a1 + 64), value);
    CASmartPreferences::Pref::Load((*(a1 + 80) - 48));
  }

  std::mutex::unlock(a1);
}

void sub_21569BE58(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0,std::allocator<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282796440;
  a2[1] = v2;
  return result;
}

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {

    return std::function<BOOL ()(void const*)>::operator()((this + 2), result);
  }

  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CASmartPreferences::Pref>,CASmartPreferences::Pref*>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      *(v6 - 16) = *v7;
      v8 = std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v6, (v7 + 1));
      v7 += 3;
      v6 = v8 + 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100]((v5 + 1));
      v5 += 3;
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t CASmartPreferences::HavePref(CASmartPreferences *this, CFTypeRef cf1, const __CFString *a3)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 == v4)
  {
    return 0;
  }

  while (!CFEqual(cf1, *v3) || !CFEqual(a3, v3[1]))
  {
    v3 += 6;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_21569C438(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void setupHapticLogScopes(void)
{
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }
}

id CALog::LogObjIfEnabled(CALog *this, uint64_t a2, const CALog::Scope *a3)
{
  if (this < 6)
  {
    if (!a2)
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v5 = 1;
    if (this != 6)
    {
      v5 = 2;
    }

    if ((*(a2 + 8) & v5) != 0)
    {
LABEL_8:
      v3 = *a2;
      goto LABEL_10;
    }
  }

  v3 = 0;
LABEL_10:

  return v3;
}

NSURL *FullURLPathFromURL(NSURL *a1, NSURL *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v29 = v3;
  v31 = v4;
  v32 = [(NSURL *)v3 relativePath];
  if ([v32 characterAtIndex:0] == 47)
  {
    v5 = v3;
    goto LABEL_41;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v6;
  if (v4)
  {
    [v6 addObject:v4];
  }

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 bundleURL];

  v28 = v9;
  [v7 addObject:v9];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  for (i = 0; i != 3; ++i)
  {
    v12 = [v10 URLsForDirectory:qword_2156F39B0[i] inDomains:1];
    if (v12)
    {
      [v7 addObjectsFromArray:v12];
    }
  }

  v13 = [v10 ubiquityIdentityToken];

  if (v13)
  {
    v14 = [v10 URLForUbiquityContainerIdentifier:0];
    if (v14)
    {
      [v7 addObject:v14];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v15)
  {
    v16 = *v35;
LABEL_15:
    v17 = 0;
    while (1)
    {
      if (*v35 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v34 + 1) + 8 * v17);
      if (kHAPIScope)
      {
        v19 = *kHAPIScope;
        if (!v19)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v19 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v39 = "CHHapticPattern.mm";
        v40 = 1024;
        v41 = 329;
        v42 = 2080;
        v43 = "FullURLPathFromURL";
        v44 = 2112;
        v45 = v18;
        _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Searching for resource in '%@'", buf, 0x26u);
      }

LABEL_25:
      v21 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v32 isDirectory:0 relativeToURL:v18];
      v5 = v21;
      if (v21)
      {
        v33 = 0;
        v22 = [(NSURL *)v21 checkResourceIsReachableAndReturnError:&v33];
        v23 = v33;
        if (v22)
        {
          if (kHAPIScope)
          {
            v24 = *kHAPIScope;
            v4 = v31;
            if (!v24)
            {
LABEL_39:

              goto LABEL_40;
            }
          }

          else
          {
            v24 = MEMORY[0x277D86220];
            v25 = MEMORY[0x277D86220];
            v4 = v31;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            v39 = "CHHapticPattern.mm";
            v40 = 1024;
            v41 = 333;
            v42 = 2080;
            v43 = "FullURLPathFromURL";
            v44 = 2112;
            v45 = v5;
            _os_log_impl(&dword_21569A000, v24, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Found it at '%@'", buf, 0x26u);
          }

          goto LABEL_39;
        }

        v4 = v31;
      }

      else
      {
        v23 = 0;
      }

      if (v15 == ++v17)
      {
        v15 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v15)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  v5 = 0;
LABEL_40:

LABEL_41:
  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

void AudioResource::AudioResource(AudioResource *this, NSURL *a2)
{
  v3 = a2;
  *(this + 8) = 0;
  *(this + 72) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = v3;
}

uint64_t AudioResource::verifyAudioFile(CFURLRef *this, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = AudioResource::open(this);
  if (v4)
  {
    goto LABEL_21;
  }

  ioPropertyDataSize = 40;
  Property = ExtAudioFileGetProperty(this[1], 0x66666D74u, &ioPropertyDataSize, this + 3);
  this[8] = this[3];
  if (Property)
  {
    v4 = Property;
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v8 = *this;
    *buf = 136315906;
    v16 = "AudioResource.mm";
    v17 = 1024;
    v18 = 79;
    v19 = 2080;
    v20 = "verifyAudioFile";
    v21 = 2112;
    v22 = v8;
    goto LABEL_16;
  }

  ioPropertyDataSize = 8;
  v4 = ExtAudioFileGetProperty(this[1], 0x2366726Du, &ioPropertyDataSize, this + 2);
  if (v4)
  {
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v10 = *this;
    *buf = 136315906;
    v16 = "AudioResource.mm";
    v17 = 1024;
    v18 = 85;
    v19 = 2080;
    v20 = "verifyAudioFile";
    v21 = 2112;
    v22 = v10;
LABEL_16:
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Failed to get property for audio resource %@", buf, 0x26u);
LABEL_17:
  }

LABEL_18:
  if (a2)
  {
    v11 = this[1];
    if (v11)
    {
      ExtAudioFileDispose(v11);
      this[1] = 0;
    }
  }

LABEL_21:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AudioResource::open(CFURLRef *this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!this[1])
  {
    v3 = ExtAudioFileOpenURL(*this, this + 1);
    if (v3)
    {
      if (kHAPIScope)
      {
        v4 = *kHAPIScope;
        if (!v4)
        {
LABEL_11:
          result = 4294962472;
          goto LABEL_12;
        }
      }

      else
      {
        v4 = MEMORY[0x277D86220];
        v5 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = *this;
        v8 = 136316162;
        v9 = "AudioResource.mm";
        v10 = 1024;
        v11 = 54;
        v12 = 2080;
        v13 = "open";
        v14 = 2112;
        v15 = v6;
        v16 = 1024;
        v17 = v3;
        _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Failed to open audio resource %@: %u", &v8, 0x2Cu);
      }

      goto LABEL_11;
    }
  }

  result = 0;
LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void AudioResource::~AudioResource(AudioResource *this)
{
  if (*(this + 72) == 1)
  {
    AudioResource::decrementAllocatedBytes(4 * *(this + 2) * *(this + 13));
    *(this + 72) = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    ExtAudioFileDispose(v2);
    *(this + 1) = 0;
  }
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

id AVFASoftLink::getAVAudioSession(AVFASoftLink *this)
{
  v1 = *(CADeprecated::TSingleton<AVFASoftLink>::instance() + 8);

  return v1;
}

id AVFASoftLink::getAVAudioSessionMediaServicesWereResetNotification(AVFASoftLink *this)
{
  v1 = *(CADeprecated::TSingleton<AVFASoftLink>::instance() + 24);

  return v1;
}

void AVFASoftLink::AVFASoftLink(AVFASoftLink *this)
{
  *(this + 1) = 0u;
  v2 = (this + 16);
  *(this + 2) = 0u;
  v3 = (this + 32);
  *this = 0u;
  v4 = (this + 40);
  *(this + 6) = 0;
  v5 = (this + 48);
  v6 = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 1);
  if (v6)
  {
    *this = NSClassFromString(&cfstr_Avaudioformat.isa);
    *(this + 1) = NSClassFromString(&cfstr_Avaudiosession.isa);
    v7 = dlsym(v6, "AVAudioSessionMediaServicesWereResetNotification");
    if (v7)
    {
      objc_storeStrong(this + 3, *v7);
    }

    v8 = dlsym(v6, "AVAudioSessionMediaServicesWereLostNotification");
    if (v8)
    {
      objc_storeStrong(v2, *v8);
    }

    v9 = dlsym(v6, "AVAudioSessionCategorySystemSoundsAndHaptics");
    if (v9)
    {
      objc_storeStrong(v3, *v9);
    }

    v10 = dlsym(v6, "AVAudioSessionCategoryPlayback");
    if (v10)
    {
      objc_storeStrong(v4, *v10);
    }

    v11 = dlsym(v6, "AVAudioSessionModeHapticsConstantVolume");
    if (v11)
    {
      objc_storeStrong(v5, *v11);
    }
  }
}

void applesauce::xpc::dict::create(xpc_object_t *a1@<X8>)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v6 = v3;
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = v3;
  v5 = v4;
  *a1 = v4;
  if (!v4 || MEMORY[0x21606F7D0](v4) != MEMORY[0x277D86468])
  {
    *a1 = xpc_null_create();
  }
}

BOOL applesauce::xpc::operator==(id *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = xpc_equal(v3, v2);

  return v4;
}

void sub_21569D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, char a12)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a12);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::allocator<unsigned long>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<unsigned long>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3321888768;
    v9[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJmEEEU13block_pointerFvDpT_ES6_i_block_invoke;
    v9[3] = &__block_descriptor_48_ea8_32c100_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJmEEEU13block_pointerFvDpT_ES6_iEUlmE__e8_v16__0Q8l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v8 = MEMORY[0x21606F540](v3);
    v10 = v7;
    v11 = MEMORY[0x21606F540](v8);
    v4 = MEMORY[0x21606F540](v9);

    v5 = v10;
    v10 = 0;

    v3 = v4;
  }

  return v3;
}

uint64_t __copy_helper_block_ea8_32c100_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJmEEEU13block_pointerFvDpT_ES6_iEUlmE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x21606F540](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJmEEEU13block_pointerFvDpT_ES6_i_block_invoke(uint64_t a1)
{
  v2 = CALog::Scope::oslog((a1 + 32));
  dispatch_source_cancel(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __destroy_helper_block_ea8_32c100_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJmEEEU13block_pointerFvDpT_ES6_iEUlmE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
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
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
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
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v12);
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

uint64_t *ResourceRegistry::instance(ResourceRegistry *this)
{
  {
    ResourceRegistry::instance();
  }

  return &ResourceRegistry::instance(void)::gRegistry;
}

char *ResourceRegistry::findIdealMatch(ResourceRegistry *this, NSURL *a2, NSDictionary *a3, const void *a4)
{
  v7 = a2;
  v8 = a3;
  v22 = a4;
  v11 = *this;
  v9 = this + 8;
  v10 = v11;
  if (v11 == v9)
  {
    v13 = v9;
  }

  else
  {
    v12 = 0;
    v13 = v9;
    do
    {
      v14 = *(v10 + 7);
      v15 = *(v10 + 8);
      v16 = v15;
      if (v8)
      {
        v17 = [(NSDictionary *)v8 isEqualToDictionary:v15];
      }

      else
      {
        v17 = v15 == 0;
      }

      if (([(NSURL *)v7 isEqual:v14]& v17) == 1 && std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::find<void const*>(v10 + 9, &v22))
      {

        v13 = v10;
        goto LABEL_23;
      }

      if ([(NSURL *)v7 isEqual:v14]& v17)
      {
        v12 = 1;
        v13 = v10;
      }

      else if (!(v12 & 1 | (([(NSURL *)v7 isEqual:v14]& 1) == 0)))
      {
        v13 = v10;
      }

      v18 = *(v10 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v10 + 2);
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v10 = v19;
    }

    while (v19 != v9);
    if ((v12 & 1) != 0 && isMultiAudioOutputEnabled(void)::once != -1)
    {
      ResourceRegistry::findIdealMatch();
    }
  }

LABEL_23:

  return v13;
}

void *std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::find<void const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t ResourceRegistry::incrementReferenceCountNoCreate(ResourceRegistry *this, unint64_t a2, const void *a3)
{
  v15 = a3;
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 == v3 || *(v6 + 4) > a2)
  {
    return 0;
  }

  v12 = std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::find<void const*>(v6 + 9, &v15);
  if (v12)
  {
    v10 = (*(v12 + 6) + 1);
    *(v12 + 6) = v10;
  }

  else
  {
    v13 = v15;
    v10 = 1;
    v14 = 1;
    std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,unsigned int> const&>(v6 + 9, &v13);
  }

  return v10;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t ResourceRegistry::isResourceLoopEnabled(ResourceRegistry *this, unint64_t a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && v5[4] <= a2)
  {
    v12 = [v5[8] objectForKeyedSubscript:CHHapticAudioResourceKeyLoopEnabled];
    v13 = v12;
    if (v12)
    {
      v9 = [v12 BOOLValue];
    }

    else
    {
      v9 = 0;
    }

    v10 = 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
    v10 = 0;
  }

  return v9 | (v10 << 8);
}

BOOL ResourceRegistry::isResourceRegistered(ResourceRegistry *this, unint64_t a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 4) > a2)
  {
LABEL_9:
    v5 = v2;
  }

  return v5 != v2;
}

uint64_t ResourceRegistry::getDurationForResource(ResourceRegistry *this, unint64_t a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  v5 = 0.0;
  if (v4)
  {
    v6 = v2;
    do
    {
      v7 = *(v3 + 4);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *&v3[8 * v9];
    }

    while (v3);
    if (v6 != v2 && *(v6 + 4) <= a2)
    {
      v12 = *(v6 + 5);
      v11 = *(v6 + 6);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *(v12 + 16) / *(v12 + 24);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v5 = *(v12 + 16) / *(v12 + 24);
      }
    }
  }

  return *&v5;
}

void *std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::__emplace_unique_key_args<AVHapticPlayerParameterType,std::pair<AVHapticPlayerParameterType const,float> const&>(void *a1, unint64_t *a2)
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

void std::allocator<AVHapticPlayerFixedParameter>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
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

    if (v10)
    {
      std::allocator<AVHapticPlayerFixedParameter>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::__erase_unique<AVHapticPlayerParameterType>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::find<AVHapticPlayerParameterType>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::find<AVHapticPlayerParameterType>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t __copy_helper_atomic_property__66(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
}

void std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21569FCA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_atomic_property_(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
}

uint64_t __copy_helper_atomic_property__67(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
}

void *std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__emplace_unique_key_args<AVHapticPlayerEventType,std::pair<AVHapticPlayerEventType const,NSString * {__strong}> const&>(void *a1, unint64_t *a2)
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

void sub_21569FF7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__assign_unique<std::pair<AVHapticPlayerEventType const,NSString * {__strong}> const*>(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = v4[1];
        v8[2] = *v4;
        objc_storeStrong(v8 + 3, v11);
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__node_insert_unique(a1, v8);
        v4 += 2;
        if (v10)
        {
          v12 = v4 == a3;
        }

        else
        {
          v12 = 1;
        }

        v8 = v10;
      }

      while (!v12);
    }

    std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__emplace_unique_key_args<AVHapticPlayerEventType,std::pair<AVHapticPlayerEventType const,NSString * {__strong}> const&>(a1, v4);
    v4 += 2;
  }
}

void sub_2156A0064(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void ResourceRegistry::instance()
{
  {
    qword_280ADD738 = 0;
    qword_280ADD730 = 0;
    ResourceRegistry::instance(void)::gRegistry = &qword_280ADD730;
  }
}

void *std::__shared_ptr_emplace<AudioResource>::__shared_ptr_emplace[abi:ne200100]<NSURL * {__strong}&,std::allocator<AudioResource>,0>(void *a1, NSURL **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_282796408;
  AudioResource::AudioResource((a1 + 3), *a2);
  return a1;
}

BOOL _Haptic_Check(uint64_t a1, uint64_t a2, const char *a3, const char *a4, int a5, void *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    goto LABEL_12;
  }

  if (!kHAPIScope)
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    goto LABEL_6;
  }

  v10 = *kHAPIScope;
  if (v10)
  {
LABEL_6:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v20 = "HapticUtils.h";
      v21 = 1024;
      v22 = 61;
      v23 = 2080;
      v24 = "_Haptic_Check";
      v25 = 2080;
      v26 = a3;
      v27 = 2080;
      v28 = a4;
      v29 = 1024;
      v30 = a5;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: %s: %s error %d", buf, 0x36u);
    }
  }

  if (!a6)
  {
    snprintf(buf, 0x400uLL, "%s: %s", a3, a4);
    v16 = [MEMORY[0x277CCACA8] stringWithCString:buf encoding:1];
    Haptic_RaiseException(&cfstr_ComAppleCoreha.isa, v16, a5);
  }

  v12 = MEMORY[0x277CCA9B8];
  v13 = MEMORY[0x277CBEAC0];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  v15 = [v13 dictionaryWithObjectsAndKeys:{v14, @"Error ", 0}];
  *a6 = [v12 errorWithDomain:@"com.apple.CoreHaptics" code:a5 userInfo:v15];

LABEL_12:
  result = a5 == 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AudioResource::readAndAllocateRawBuffer(AudioResource *this, char **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v17 = 0;
  v3 = *(this + 13);
  inPropertyData[0] = *(this + 3);
  inPropertyData[1] = 0x96C70636DLL;
  v13 = 4 * v3;
  v14 = 1;
  v15 = 4 * v3;
  v16 = v3;
  LODWORD(v17) = 32;
  v4 = ExtAudioFileSetProperty(*(this + 1), 0x63666D74u, 0x28u, inPropertyData);
  if (v4)
  {
    v5 = v4;
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
LABEL_11:
        v9 = *(this + 1);
        if (v9)
        {
          ExtAudioFileDispose(v9);
          *(this + 1) = 0;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *this;
      *buf = 136315906;
      v19 = "AudioResource.mm";
      v20 = 1024;
      v21 = 103;
      v22 = 2080;
      v23 = "readAndAllocateRawBuffer";
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Failed to set property on audio resource %@", buf, 0x26u);
    }

    goto LABEL_11;
  }

  v5 = AudioResource::incrementAllocatedBytes((4 * *(this + 2) * v16));
  if (!v5)
  {
    operator new[]();
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AudioResource::incrementAllocatedBytes(AudioResource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  std::mutex::lock(&AudioResource::getTotalAllocationLock(void)::sMutex);
  if (kHAPIScope)
  {
    v2 = *kHAPIScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "AudioResource.mm";
    v14 = 1024;
    v15 = 143;
    v16 = 2080;
    v17 = "incrementAllocatedBytes";
    v18 = 2048;
    v19 = this;
    v20 = 2048;
    v21 = AudioResource::_sTotalAllocatedBytes;
    _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding %llu bytes to our existing %llu", &v12, 0x30u);
  }

LABEL_8:
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ignore_custom_audio_limit", @"com.apple.corehaptics", 0);
  v5 = this + AudioResource::_sTotalAllocatedBytes;
  if (this + AudioResource::_sTotalAllocatedBytes >= 0x57E4001 && AppBooleanValue == 0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
LABEL_20:
        v7 = 4294962471;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "AudioResource.mm";
      v14 = 1024;
      v15 = 146;
      v16 = 2080;
      v17 = "incrementAllocatedBytes";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Memory limit reached on custom audio resources - unregister others to make space", &v12, 0x1Cu);
    }

    goto LABEL_20;
  }

  v7 = 0;
  AudioResource::_sTotalAllocatedBytes = v5;
LABEL_21:
  std::mutex::unlock(&AudioResource::getTotalAllocationLock(void)::sMutex);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id AVFASoftLink::getAVAudioFormat(AVFASoftLink *this)
{
  v1 = *CADeprecated::TSingleton<AVFASoftLink>::instance();

  return v1;
}

uint64_t ResourceRegistry::emplace(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  v16 = a4;
  v15 = a5;
  v18 = a6;
  LODWORD(v19) = 1;
  std::unordered_map<void const*,unsigned int>::unordered_map(v14, &v18, 1);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10shared_ptrI13AudioResourceEEU8__strongP5NSURLU8__strongP12NSDictionaryNS_13unordered_mapIPKvjNS_4hashISE_EENS_8equal_toISE_EENS_9allocatorINS_4pairIKSE_jEEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS5_S8_SB_SO_EJEJEJRS5_RS8_RSB_RSO_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSW_IJDpT2_EEEDpOT3_(&v18, a3, &v16, &v15, v14);
  std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>(a1, &v17);
  v11 = v10;
  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(v22);

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(v14);

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void sub_2156A0DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, id a15, uint64_t a16, char a17)
{
  std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>::~tuple(&a17);
  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(&a9);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,unsigned int> const&>(void *a1, void *a2)
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

uint64_t std::unordered_map<void const*,unsigned int>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,unsigned int> const&>(a1, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::unordered_map<void const*,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,unsigned int> const&>(a1, i + 2);
  }

  return a1;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10shared_ptrI13AudioResourceEEU8__strongP5NSURLU8__strongP12NSDictionaryNS_13unordered_mapIPKvjNS_4hashISE_EENS_8equal_toISE_EENS_9allocatorINS_4pairIKSE_jEEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS5_S8_SB_SO_EJEJEJRS5_RS8_RSB_RSO_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSW_IJDpT2_EEEDpOT3_(void *a1, void *a2, id *a3, id *a4, uint64_t a5)
{
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = *a3;
  a1[3] = *a4;
  std::unordered_map<void const*,unsigned int>::unordered_map((a1 + 4), a5);
  return a1;
}

void sub_2156A11CC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__construct_node<unsigned long &,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>();
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

uint64_t *std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__hash_table(uint64_t result, uint64_t *a2)
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

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_2156A22B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void NSExceptionToNSError(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = v3;
    *a2 = NSErrorFromNSException(v3);
    v3 = v4;
  }
}

void sub_2156A2C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PatternPlayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2156A3AE4()
{
  objc_end_catch();

  JUMPOUT(0x2156A3B04);
}

id NSErrorFromNSException(NSException *a1)
{
  v1 = a1;
  v2 = [(NSException *)v1 name];
  v3 = [v2 isEqual:*MEMORY[0x277CBE660]];

  if (v3)
  {
    v4 = -4814;
  }

  else
  {
    v5 = [(NSException *)v1 userInfo];
    v6 = [v5 objectForKey:@"OSStatus"];
    v7 = v6;
    if (v6)
    {
      v4 = [v6 integerValue];

      if (!v4)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    else
    {

      v4 = -4898;
    }
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:v4 userInfo:0];
LABEL_8:

  return v8;
}

void Haptic_RaiseException(NSString *a1, NSString *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = MEMORY[0x277CBEAC0];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [v7 dictionaryWithObject:v8 forKey:@"OSStatus"];

  v10 = [MEMORY[0x277CBEAD8] exceptionWithName:v5 reason:v6 userInfo:v9];
  objc_exception_throw(v10);
}

void sub_2156A4BB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2156A4D60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2156A4F80(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2156A5148(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2156A5310(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2156A54D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ResourceRegistry::clear(ResourceRegistry *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

uint64_t ResourceRegistry::decrementReferenceCount(ResourceRegistry *this, unint64_t a2, const void *a3)
{
  v11 = a3;
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = (this + 8);
  do
  {
    v6 = v3[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = v3[v8];
  }

  while (v3);
  if (v5 == (this + 8) || v5[4] > a2)
  {
    return 0;
  }

  result = std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::find<void const*>(v5 + 9, &v11);
  if (result)
  {
    v10 = *(result + 24);
    if (v10 < 2)
    {
      std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::erase(v5 + 9, result);
      if (!v5[12])
      {
        std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::erase(this, v5);
        return 2;
      }
    }

    else
    {
      *(result + 24) = v10 - 1;
    }

    return 1;
  }

  return result;
}

uint64_t *ResourceRegistry::cleanUpRefCountKey@<X0>(uint64_t *this@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = this + 1;
  v4 = *this;
  if (*this != this + 1)
  {
    v6 = this;
    do
    {
      if (std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::find<void const*>(v4 + 9, &v9) && v4[12] == 1)
      {
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a3, v4 + 4);
        this = std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::erase(v6, v4);
      }

      else
      {
        std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__erase_unique<void const*>(v4 + 9, &v9);
        v7 = v4[1];
        if (v7)
        {
          do
          {
            this = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            this = v4[2];
            v8 = *this == v4;
            v4 = this;
          }

          while (!v8);
        }
      }

      v4 = this;
    }

    while (this != v5);
  }

  return this;
}

uint64_t ___Z25isMultiAudioOutputEnabledv_block_invoke()
{
  result = _os_feature_enabled_impl();
  isMultiAudioOutputEnabled(void)::gHapticAudioMultiOutputEnabled = result;
  return result;
}

uint64_t std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>::~tuple(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(a1 + 32);

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,void *>>>::destroy[abi:ne200100]<std::pair<unsigned long const,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,void *>>>::destroy[abi:ne200100]<std::pair<unsigned long const,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,void,0>(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(a2 + 40);

  v3 = *(a2 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,void *>>>::destroy[abi:ne200100]<std::pair<unsigned long const,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__erase_unique<void const*>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::find<void const*>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t CATimeUtilities::GetCurrentGregorianDate(CATimeUtilities *this)
{
  Current = CFAbsoluteTimeGetCurrent();

  return CATimeUtilities::GregorianDateFromAbsoluteTime(v1, Current);
}

uint64_t CATimeUtilities::GregorianDateFromAbsoluteTime(CATimeUtilities *this, CFAbsoluteTime a2)
{
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  v3 = CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz;

  return *&CFAbsoluteTimeGetGregorianDate(a2, v3);
}

void sub_2156A7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, void *a41)
{
  *(v45 - 248) = a1;

  _Unwind_Resume(*(v45 - 248));
}

void sub_2156A7CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *exc_buf, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  if (a2 == 1)
  {
    v27 = objc_begin_catch(a1);
    v29 = CALog::LogObjIfEnabled(1, kHAPIScope, v28);
    v30 = v29;
    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *(v26 - 160) = 136315650;
      *(v24 + 4) = "HapticServerConfig.mm";
      *(v26 - 148) = 1024;
      *(v24 + 14) = 174;
      *(v26 - 142) = 2080;
      *(v24 + 20) = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]_block_invoke";
      _os_log_impl(&dword_21569A000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Caught exception during dictionary parse", (v26 - 160), 0x1Cu);
    }

    v31 = NSErrorFromNSException(v27);
    v32 = *(*(v19 + 48) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    objc_end_catch();
    JUMPOUT(0x2156A7C60);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2781C8F58, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2156A827C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2156A83E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156A8B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AdvancedPatternPlayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2156A989C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156A9C74(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156AA54C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156AA77C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156AA9EC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156AABBC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156AAF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2156ABEB0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void AudioResource::decrementAllocatedBytes(unint64_t this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    goto LABEL_12;
  }

  std::mutex::lock(&AudioResource::getTotalAllocationLock(void)::sMutex);
  if (!kHAPIScope)
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
    goto LABEL_6;
  }

  v2 = *kHAPIScope;
  if (v2)
  {
LABEL_6:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 136316162;
      v6 = "AudioResource.mm";
      v7 = 1024;
      v8 = 157;
      v9 = 2080;
      v10 = "decrementAllocatedBytes";
      v11 = 2048;
      v12 = this;
      v13 = 2048;
      v14 = AudioResource::_sTotalAllocatedBytes;
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Removing %llu bytes from our existing %llu", &v5, 0x30u);
    }
  }

  if (AudioResource::_sTotalAllocatedBytes < this)
  {
    AudioResource::decrementAllocatedBytes();
  }

  AudioResource::_sTotalAllocatedBytes -= this;
  std::mutex::unlock(&AudioResource::getTotalAllocationLock(void)::sMutex);
LABEL_12:
  v4 = *MEMORY[0x277D85DE8];
}

OpaqueExtAudioFile *AudioResource::close(AudioResource *this)
{
  result = *(this + 1);
  if (result)
  {
    result = ExtAudioFileDispose(result);
    *(this + 1) = 0;
  }

  return result;
}

uint64_t CALog::PrefValueToPriority(const __CFString *this, BOOL *a2, BOOL *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  v5 = CFGetTypeID(this);
  if (v5 == CFNumberGetTypeID())
  {
    CFNumberGetValue(this, kCFNumberIntType, &valuePtr);
    v6 = valuePtr + 3;
  }

  else
  {
    if (v5 != CFStringGetTypeID())
    {
      goto LABEL_22;
    }

    if (CFEqual(this, @"error"))
    {
      v6 = 1;
      goto LABEL_23;
    }

    if (CFEqual(this, @"warning"))
    {
      v6 = 2;
      goto LABEL_23;
    }

    if (CFEqual(this, @"note") || CFEqual(this, @"notice"))
    {
      v6 = 3;
      goto LABEL_23;
    }

    if (CFEqual(this, @"info"))
    {
      v6 = 4;
      goto LABEL_23;
    }

    if (CFEqual(this, @"details"))
    {
      v6 = 5;
      goto LABEL_23;
    }

    if (CFEqual(this, @"minutiae"))
    {
      v6 = 6;
      goto LABEL_23;
    }

    if (CFEqual(this, @"spew"))
    {
      v6 = 7;
      goto LABEL_23;
    }

    if (!CFStringGetCString(this, buffer, 64, 0x8000100u))
    {
LABEL_22:
      v6 = -1;
      goto LABEL_23;
    }

    v11 = 0;
    v7 = sscanf(buffer, "%d", &v11);
    v6 = v11 + 3;
    if (v7 != 1)
    {
      v6 = -1;
    }
  }

LABEL_23:
  *a2 = v6 > 0;
  v8 = *MEMORY[0x277D85DE8];
  return v6 & ~(v6 >> 31);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_282796498;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_282796498;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x21606F010);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_282796498;
  a2[1] = v2;
  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<BOOL,false>::__call[abi:ne200100]<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1} &,void const*>(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    std::function<void ()(int)>::operator()((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t std::function<void ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__func<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0,std::allocator<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = 3;
  if (*a2 <= 6)
  {
    v2 = 1;
  }

  *(*(result + 8) + 8) = v2;
  return result;
}

uint64_t std::__function::__func<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0,std::allocator<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void virtual thunk toCAException::~CAException(CAException *this)
{
  std::exception::~exception((this + *(*this - 24)));
}

{
  std::exception::~exception((this + *(*this - 24)));

  JUMPOUT(0x21606F010);
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x21606F010);
}

void CAXException::~CAXException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x21606F010);
}

void sub_2156AE994(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2156AEB28(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2156AFA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(&a23);

  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2156B13BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2156B647C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(a1);
    v21 = NSErrorFromNSException(v20);
    if (v17)
    {
      v21 = v21;
      *v17 = v21;
    }

    objc_end_catch();
    JUMPOUT(0x2156B6440);
  }

  _Unwind_Resume(a1);
}

void sub_2156B6C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_2156B7ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v40 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_2156B8758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_2156B8B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, id);
  _Block_object_dispose(va, 8);

  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_2156B9964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHMetrics;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2156B9B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156B9DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156B9FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2781C8F60, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t PlatformUtilities_iOS::ProductIsMuseDevice(PlatformUtilities_iOS *this)
{
  {
    v2 = MGGetBoolAnswer();
    v4 = (v2 & 1) != 0 || (ProductType = PlatformUtilities_iOS::GetProductType(v2), ProductType == 131) || PlatformUtilities_iOS::GetProductType(ProductType) == 143;
    PlatformUtilities_iOS::ProductIsMuseDevice(void)::isMuseDevice = v4;
  }

  return PlatformUtilities_iOS::ProductIsMuseDevice(void)::isMuseDevice;
}

uint64_t PlatformUtilities_iOS::GetProductType(PlatformUtilities_iOS *this)
{
  if ((PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck & 1) == 0)
  {
    PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck = 1;
    v1 = MGGetProductType();
    if (v1 <= 2089455187)
    {
      if (v1 > 1293446024)
      {
        if (v1 > 1602181455)
        {
          if (v1 <= 1868379042)
          {
            if (v1 <= 1721691076)
            {
              if (v1 <= 1625227433)
              {
                if (v1 == 1602181456)
                {
                  v2 = 126;
                  goto LABEL_354;
                }

                if (v1 == 1608945770)
                {
                  v2 = 145;
                  goto LABEL_354;
                }

                goto LABEL_353;
              }

              if (v1 != 1625227434)
              {
                if (v1 == 1644180312)
                {
                  v2 = 117;
                  goto LABEL_354;
                }

                if (v1 == 1701146937)
                {
                  v2 = 34;
LABEL_354:
                  PlatformUtilities_iOS::GetProductType(void)::sType = v2;
                  return PlatformUtilities_iOS::GetProductType(void)::sType;
                }

                goto LABEL_353;
              }

LABEL_285:
              v2 = 78;
              goto LABEL_354;
            }

            if (v1 <= 1737882205)
            {
              if (v1 == 1721691077)
              {
                v2 = 15;
                goto LABEL_354;
              }

              if (v1 == 1733600853)
              {
                v2 = 100;
                goto LABEL_354;
              }

              goto LABEL_353;
            }

            if (v1 == 1737882206)
            {
              v2 = 88;
              goto LABEL_354;
            }

            if (v1 == 1756509290)
            {
              v2 = 116;
              goto LABEL_354;
            }

            v6 = 1834147427;
            goto LABEL_240;
          }

          if (v1 <= 2032616840)
          {
            if (v1 > 1990293941)
            {
              if (v1 == 1990293942)
              {
                v2 = 112;
                goto LABEL_354;
              }

              if (v1 != 2001966017)
              {
                v5 = 2023824667;
                goto LABEL_129;
              }

LABEL_282:
              v2 = 70;
              goto LABEL_354;
            }

            if (v1 != 1868379043)
            {
              if (v1 == 1895344378)
              {
                v2 = 68;
                goto LABEL_354;
              }

              goto LABEL_353;
            }

LABEL_217:
            v2 = 76;
            goto LABEL_354;
          }

          if (v1 > 2078329140)
          {
            if (v1 == 2078329141)
            {
              v2 = 24;
              goto LABEL_354;
            }

            if (v1 == 2080700391)
            {
              v2 = 31;
              goto LABEL_354;
            }

            v7 = 2081274472;
            goto LABEL_252;
          }

          if (v1 != 2032616841)
          {
            if (v1 == 2048538371)
            {
              v2 = 45;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

LABEL_293:
          v2 = 20;
          goto LABEL_354;
        }

        if (v1 > 1402208363)
        {
          if (v1 > 1429914405)
          {
            if (v1 <= 1549248875)
            {
              if (v1 == 1429914406)
              {
                v2 = 18;
                goto LABEL_354;
              }

              if (v1 == 1517755655)
              {
                v2 = 129;
                goto LABEL_354;
              }
            }

            else
            {
              switch(v1)
              {
                case 1549248876:
                  v2 = 130;
                  goto LABEL_354;
                case 1559256613:
                  v2 = 40;
                  goto LABEL_354;
                case 1573906122:
                  v2 = 110;
                  goto LABEL_354;
              }
            }
          }

          else if (v1 <= 1412429327)
          {
            if (v1 == 1402208364)
            {
              v2 = 102;
              goto LABEL_354;
            }

            if (v1 == 1408738134)
            {
              v2 = 122;
              goto LABEL_354;
            }
          }

          else
          {
            switch(v1)
            {
              case 1412429328:
                v2 = 50;
                goto LABEL_354;
              case 1415625992:
                v2 = 108;
                goto LABEL_354;
              case 1419435331:
                v2 = 114;
                goto LABEL_354;
            }
          }

          goto LABEL_353;
        }

        if (v1 > 1325975681)
        {
          if (v1 > 1371389548)
          {
            if (v1 == 1371389549)
            {
              v2 = 22;
              goto LABEL_354;
            }

            if (v1 != 1373516433)
            {
              if (v1 == 1380747801)
              {
                v2 = 99;
                goto LABEL_354;
              }

              goto LABEL_353;
            }

            goto LABEL_217;
          }

          if (v1 == 1325975682)
          {
            v2 = 52;
            goto LABEL_354;
          }

          v3 = 1353145733;
LABEL_281:
          if (v1 != v3)
          {
            goto LABEL_353;
          }

          goto LABEL_282;
        }

        if (v1 <= 1302273957)
        {
          if (v1 != 1293446025)
          {
            if (v1 == 1294429942)
            {
              v2 = 119;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

LABEL_296:
          v2 = 74;
          goto LABEL_354;
        }

        if (v1 != 1302273958)
        {
          if (v1 == 1309571158)
          {
            v2 = 113;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

LABEL_290:
        v2 = 80;
        goto LABEL_354;
      }

      if (v1 <= 551446204)
      {
        if (v1 > 253148924)
        {
          if (v1 > 344862119)
          {
            if (v1 <= 358923951)
            {
              if (v1 == 344862120)
              {
                v2 = 87;
                goto LABEL_354;
              }

              if (v1 == 355234908)
              {
                v2 = 101;
                goto LABEL_354;
              }
            }

            else
            {
              switch(v1)
              {
                case 358923952:
                  v2 = 98;
                  goto LABEL_354;
                case 445396642:
                  v2 = 89;
                  goto LABEL_354;
                case 502329937:
                  v2 = 17;
                  goto LABEL_354;
              }
            }

            goto LABEL_353;
          }

          if (v1 > 337183580)
          {
            if (v1 == 337183581)
            {
              v2 = 10;
              goto LABEL_354;
            }

            if (v1 == 340218669)
            {
              v2 = 83;
              goto LABEL_354;
            }

            v3 = 341800273;
            goto LABEL_281;
          }

          if (v1 != 253148925)
          {
            if (v1 == 262180327)
            {
              v2 = 95;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

LABEL_287:
          v2 = 92;
          goto LABEL_354;
        }

        if (v1 <= 79936590)
        {
          if (v1 > 40511011)
          {
            if (v1 == 40511012)
            {
              v2 = 106;
              goto LABEL_354;
            }

            if (v1 == 42878382)
            {
              v2 = 11;
              goto LABEL_354;
            }
          }

          else
          {
            if (v1 == 23433786)
            {
              v2 = 46;
              goto LABEL_354;
            }

            if (v1 == 33245053)
            {
              v2 = 53;
              goto LABEL_354;
            }
          }

          goto LABEL_353;
        }

        if (v1 > 157833460)
        {
          if (v1 != 157833461)
          {
            if (v1 == 173258742)
            {
              v2 = 44;
              goto LABEL_354;
            }

            if (v1 != 228444038)
            {
              goto LABEL_353;
            }

            goto LABEL_292;
          }

LABEL_295:
          v2 = 63;
          goto LABEL_354;
        }

        if (v1 != 79936591)
        {
          v8 = 88647037;
          goto LABEL_248;
        }

LABEL_291:
        v2 = 61;
        goto LABEL_354;
      }

      if (v1 > 952317140)
      {
        if (v1 <= 1119807501)
        {
          if (v1 > 1085318933)
          {
            switch(v1)
            {
              case 1085318934:
                v2 = 103;
                goto LABEL_354;
              case 1110205732:
                v2 = 33;
                goto LABEL_354;
              case 1114644381:
                v2 = 64;
                goto LABEL_354;
            }

            goto LABEL_353;
          }

          if (v1 != 952317141)
          {
            if (v1 == 1060988941)
            {
              v2 = 8;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

          goto LABEL_286;
        }

        if (v1 > 1234705394)
        {
          if (v1 == 1234705395)
          {
            v2 = 97;
            goto LABEL_354;
          }

          if (v1 != 1280441783)
          {
            if (v1 == 1280909812)
            {
              v2 = 124;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

          goto LABEL_295;
        }

        if (v1 != 1119807502)
        {
          if (v1 == 1169082144)
          {
            v2 = 26;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

LABEL_204:
        v2 = 36;
        goto LABEL_354;
      }

      if (v1 <= 761631963)
      {
        if (v1 > 689804741)
        {
          if (v1 == 689804742)
          {
            v2 = 29;
            goto LABEL_354;
          }

          v6 = 746003606;
LABEL_240:
          if (v1 != v6)
          {
            goto LABEL_353;
          }

          goto LABEL_245;
        }

        if (v1 != 551446205)
        {
          if (v1 == 676119128)
          {
            v2 = 118;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        goto LABEL_204;
      }

      if (v1 > 820711326)
      {
        if (v1 != 820711327)
        {
          if (v1 == 896202454)
          {
            v2 = 56;
            goto LABEL_354;
          }

          if (v1 != 910181310)
          {
            goto LABEL_353;
          }

          goto LABEL_293;
        }

LABEL_237:
        v2 = 54;
        goto LABEL_354;
      }

      if (v1 != 761631964)
      {
        if (v1 == 776033019)
        {
          v2 = 42;
          goto LABEL_354;
        }

        goto LABEL_353;
      }

LABEL_294:
      v2 = 81;
      goto LABEL_354;
    }

    if (v1 > 3133873108)
    {
      if (v1 > 3645319984)
      {
        if (v1 > 3885279869)
        {
          if (v1 > 4067129263)
          {
            if (v1 <= 4201643248)
            {
              if (v1 == 4067129264)
              {
                v2 = 111;
                goto LABEL_354;
              }

              if (v1 == 4172444931)
              {
                v2 = 104;
                goto LABEL_354;
              }
            }

            else
            {
              switch(v1)
              {
                case 4201643249:
                  v2 = 28;
                  goto LABEL_354;
                case 4232256925:
                  v2 = 86;
                  goto LABEL_354;
                case 4240173202:
                  v2 = 2;
                  goto LABEL_354;
              }
            }
          }

          else if (v1 <= 3953847431)
          {
            if (v1 == 3885279870)
            {
              v2 = 25;
              goto LABEL_354;
            }

            if (v1 == 3933982784)
            {
              v2 = 38;
              goto LABEL_354;
            }
          }

          else
          {
            switch(v1)
            {
              case 3953847432:
                v2 = 128;
                goto LABEL_354;
              case 4025247511:
                v2 = 105;
                goto LABEL_354;
              case 4055323051:
                v2 = 43;
                goto LABEL_354;
            }
          }

          goto LABEL_353;
        }

        if (v1 <= 3767261005)
        {
          if (v1 <= 3707345670)
          {
            if (v1 != 3645319985)
            {
              if (v1 == 3683904382)
              {
                v2 = 109;
                goto LABEL_354;
              }

              goto LABEL_353;
            }

LABEL_292:
            v2 = 57;
            goto LABEL_354;
          }

          if (v1 != 3707345671)
          {
            if (v1 == 3711192744)
            {
              v2 = 66;
              goto LABEL_354;
            }

            if (v1 == 3743999268)
            {
              v2 = 19;
              goto LABEL_354;
            }

LABEL_353:
            v2 = 0;
            goto LABEL_354;
          }

          goto LABEL_204;
        }

        if (v1 <= 3856877969)
        {
          if (v1 == 3767261006)
          {
            v2 = 125;
            goto LABEL_354;
          }

          v3 = 3801472101;
          goto LABEL_281;
        }

        if (v1 == 3856877970)
        {
          v2 = 82;
          goto LABEL_354;
        }

        if (v1 != 3863625342)
        {
          if (v1 == 3865922942)
          {
            v2 = 41;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

LABEL_297:
        v2 = 75;
        goto LABEL_354;
      }

      if (v1 <= 3361025852)
      {
        if (v1 > 3215673113)
        {
          if (v1 > 3242623366)
          {
            switch(v1)
            {
              case 3242623367:
                v2 = 14;
                goto LABEL_354;
              case 3300281076:
                v2 = 39;
                goto LABEL_354;
              case 3348380076:
                v2 = 4;
                goto LABEL_354;
            }

            goto LABEL_353;
          }

          if (v1 == 3215673114)
          {
            v2 = 60;
            goto LABEL_354;
          }

          if (v1 != 3228373941)
          {
            goto LABEL_353;
          }

          goto LABEL_285;
        }

        if (v1 <= 3196158496)
        {
          if (v1 == 3133873109)
          {
            v2 = 47;
            goto LABEL_354;
          }

          v8 = 3184375231;
LABEL_248:
          if (v1 == v8)
          {
            v2 = 62;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        if (v1 != 3196158497)
        {
          if (v1 == 3196805751)
          {
            v2 = 6;
            goto LABEL_354;
          }

          goto LABEL_353;
        }
      }

      else
      {
        if (v1 <= 3571532205)
        {
          if (v1 > 3402870383)
          {
            switch(v1)
            {
              case 3402870384:
                v2 = 55;
                goto LABEL_354;
              case 3455223061:
                v2 = 65;
                goto LABEL_354;
              case 3540156652:
                v2 = 73;
                goto LABEL_354;
            }

            goto LABEL_353;
          }

          if (v1 != 3361025853)
          {
            if (v1 == 3397214291)
            {
              v2 = 59;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

          goto LABEL_289;
        }

        if (v1 <= 3599094682)
        {
          if (v1 == 3571532206)
          {
            v2 = 123;
            goto LABEL_354;
          }

          if (v1 == 3585085679)
          {
            v2 = 9;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        if (v1 == 3599094683)
        {
          goto LABEL_297;
        }

        if (v1 != 3636345305)
        {
          if (v1 == 3637438250)
          {
            v2 = 37;
            goto LABEL_354;
          }

          goto LABEL_353;
        }
      }

      goto LABEL_278;
    }

    if (v1 <= 2516717267)
    {
      if (v1 <= 2288107368)
      {
        if (v1 <= 2159747552)
        {
          if (v1 > 2132302343)
          {
            if (v1 == 2132302344)
            {
              v2 = 120;
              goto LABEL_354;
            }

            if (v1 != 2158787296)
            {
              goto LABEL_353;
            }

            goto LABEL_237;
          }

          if (v1 != 2089455188)
          {
            if (v1 != 2103978418)
            {
              goto LABEL_353;
            }

            goto LABEL_296;
          }

LABEL_289:
          v2 = 79;
          goto LABEL_354;
        }

        if (v1 <= 2236272847)
        {
          if (v1 == 2159747553)
          {
            v2 = 21;
            goto LABEL_354;
          }

          v7 = 2162679683;
LABEL_252:
          if (v1 == v7)
          {
            v2 = 94;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        if (v1 != 2236272848)
        {
          if (v1 != 2262113699)
          {
            if (v1 == 2270970153)
            {
              v2 = 16;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

          goto LABEL_291;
        }

LABEL_278:
        v2 = 69;
        goto LABEL_354;
      }

      if (v1 > 2418348557)
      {
        if (v1 <= 2454275342)
        {
          if (v1 == 2418348558)
          {
            v2 = 107;
            goto LABEL_354;
          }

          if (v1 == 2445473385)
          {
            v2 = 96;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        if (v1 == 2454275343)
        {
          v2 = 48;
          goto LABEL_354;
        }

        if (v1 != 2458172802)
        {
          if (v1 != 2468178735)
          {
            goto LABEL_353;
          }

          goto LABEL_287;
        }

        goto LABEL_278;
      }

      if (v1 <= 2311900305)
      {
        if (v1 != 2288107369)
        {
          if (v1 == 2309863438)
          {
            v2 = 30;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        goto LABEL_290;
      }

      if (v1 == 2311900306)
      {
        v2 = 13;
        goto LABEL_354;
      }

      if (v1 == 2336512887)
      {
LABEL_286:
        v2 = 93;
        goto LABEL_354;
      }

      v4 = 2385671069;
LABEL_174:
      if (v1 == v4)
      {
        v2 = 35;
        goto LABEL_354;
      }

      goto LABEL_353;
    }

    if (v1 > 2781508712)
    {
      if (v1 <= 2943112656)
      {
        if (v1 <= 2823174121)
        {
          if (v1 == 2781508713)
          {
            v2 = 5;
            goto LABEL_354;
          }

          if (v1 == 2797549163)
          {
            v2 = 85;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        if (v1 != 2823174122)
        {
          if (v1 != 2880863278)
          {
            if (v1 == 2903084588)
            {
              v2 = 67;
              goto LABEL_354;
            }

            goto LABEL_353;
          }

          goto LABEL_204;
        }

        goto LABEL_294;
      }

      if (v1 <= 3001488777)
      {
        if (v1 == 2943112657)
        {
          v2 = 121;
          goto LABEL_354;
        }

        if (v1 == 2979575960)
        {
          v2 = 127;
          goto LABEL_354;
        }

        goto LABEL_353;
      }

      if (v1 == 3001488778)
      {
        v2 = 27;
        goto LABEL_354;
      }

      if (v1 != 3054476161)
      {
        v5 = 3101941570;
LABEL_129:
        if (v1 != v5)
        {
          goto LABEL_353;
        }

        goto LABEL_217;
      }

LABEL_245:
      v2 = 77;
      goto LABEL_354;
    }

    if (v1 <= 2673319455)
    {
      if (v1 > 2628394913)
      {
        if (v1 != 2628394914)
        {
          if (v1 == 2644487444)
          {
            v2 = 72;
            goto LABEL_354;
          }

          goto LABEL_353;
        }

        goto LABEL_245;
      }

      if (v1 != 2516717268)
      {
        v4 = 2614323575;
        goto LABEL_174;
      }
    }

    else
    {
      if (v1 > 2722529671)
      {
        switch(v1)
        {
          case 2722529672:
            v2 = 23;
            goto LABEL_354;
          case 2730762296:
            v2 = 84;
            goto LABEL_354;
          case 2751865418:
            v2 = 115;
            goto LABEL_354;
        }

        goto LABEL_353;
      }

      if (v1 != 2673319456)
      {
        if (v1 == 2702125347)
        {
          v2 = 3;
          goto LABEL_354;
        }

        goto LABEL_353;
      }
    }

    v2 = 58;
    goto LABEL_354;
  }

  return PlatformUtilities_iOS::GetProductType(void)::sType;
}

void PlatformUtilities_iOS::IsTelephonyCaptureAllowed(int a1)
{
  if (queryBuildType(void)::once != -1)
  {
    PlatformUtilities_iOS::IsTelephonyCaptureAllowed();
  }

  if ((gIsInternal & 1) != 0 || gIsCarrier == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.coreaudio");
    if (CACFPreferencesGetAppIntegerValue(@"EnableTelephonyMonitor", @"com.apple.coreaudio", 0))
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          v2 = @"com.apple.coreaudio";
          CFPreferencesAppSynchronize(@"com.apple.coreaudio");
          v3 = @"EnableHALTelephonyMonitor";
          goto LABEL_16;
        }

        if (a1 == 3)
        {
          v2 = @"com.apple.audio.virtualaudio";
          CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
          v3 = @"EnableEANCTelephonyMonitor";
          goto LABEL_16;
        }
      }

      else
      {
        if (!a1)
        {
          v2 = @"com.apple.coreaudio";
          CFPreferencesAppSynchronize(@"com.apple.coreaudio");
          v3 = @"EnableVPTelephonyMonitor";
          goto LABEL_16;
        }

        if (a1 == 1)
        {
          v2 = @"com.apple.audio.virtualaudio";
          CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
          v3 = @"EnableVADTelephonyMonitor";
LABEL_16:
          CACFPreferencesGetAppIntegerValue(v3, v2, 0);
          return;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        PlatformUtilities_iOS::IsTelephonyCaptureAllowed();
      }

      __break(1u);
    }
  }
}

uint64_t PlatformUtilities_iOS::IsInternalBuild(PlatformUtilities_iOS *this)
{
  if (queryBuildType(void)::once != -1)
  {
    PlatformUtilities_iOS::IsTelephonyCaptureAllowed();
  }

  return gIsInternal;
}

uint64_t PlatformUtilities_iOS::IsCarrierBuild(PlatformUtilities_iOS *this)
{
  if (queryBuildType(void)::once != -1)
  {
    PlatformUtilities_iOS::IsTelephonyCaptureAllowed();
  }

  return gIsCarrier;
}

uint64_t PlatformUtilities_iOS::ProductSupportsTelephonyOverUSB(PlatformUtilities_iOS *this)
{
  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t PlatformUtilities_iOS::IsUIBuild(PlatformUtilities_iOS *this)
{
  if (queryBuildType(void)::once != -1)
  {
    PlatformUtilities_iOS::IsTelephonyCaptureAllowed();
  }

  return gIsUI;
}

uint64_t PlatformUtilities_iOS::_eaJyFmO(PlatformUtilities_iOS *this)
{
  if (PlatformUtilities_iOS::_eaJyFmO(void)::once != -1)
  {
    PlatformUtilities_iOS::_eaJyFmO();
  }

  return PlatformUtilities_iOS::_eaJyFmO(void)::isMonarchLowEndHardware;
}

void ___ZN21PlatformUtilities_iOS8_eaJyFmOEv_block_invoke()
{
  v0 = MGCopyAnswer();
  v2 = v0;
  v3 = 1;
  if (v0)
  {
    v1 = CFEqual(v0, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    v1 = 0;
  }

  PlatformUtilities_iOS::_eaJyFmO(void)::isMonarchLowEndHardware = v1;
  CACFBoolean::~CACFBoolean(&v2);
}

void PlatformUtilities_iOS::TrimHardwareModelShortName(__CFString *this, __CFString *a2)
{
  if (!this)
  {
    return;
  }

  v3 = @"AP";
  if (CFStringHasSuffix(this, @"AP") || (v3 = @"DEV", CFStringHasSuffix(this, @"DEV")) || (v3 = @"ap", CFStringHasSuffix(this, @"ap")) || (v3 = @"dev", CFStringHasSuffix(this, @"dev")))
  {
    CFStringTrim(this, v3);
  }

  suffix = 0;
  v10 = 1;
  v4 = MGGetProductType();
  if (v4 == 952317141)
  {
    v7 = CFStringCreateWithCString(0, "u", 0x600u);
    v8 = 1;
    CACFString::operator=(&suffix, &v7);
  }

  else
  {
    if (v4 != 2081274472 && v4 != 2468178735)
    {
      goto LABEL_14;
    }

    v7 = CFStringCreateWithCString(0, "m", 0x600u);
    v8 = 1;
    CACFString::operator=(&suffix, &v7);
  }

  CACFString::~CACFString(&v7);
LABEL_14:
  v5 = suffix;
  if (suffix)
  {
    if (CFStringHasSuffix(this, suffix))
    {
      Length = CFStringGetLength(this);
      v11.length = CFStringGetLength(v5);
      v11.location = Length - v11.length;
      CFStringFindAndReplace(this, v5, &stru_282798420, v11, 1uLL);
    }
  }

  CACFString::~CACFString(&suffix);
}

void sub_2156C045C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  CACFString::~CACFString(&a9);
  CACFString::~CACFString(&a11);
  _Unwind_Resume(a1);
}

uint64_t PlatformUtilities_iOS::GetBuiltInMicCount(PlatformUtilities_iOS *this)
{
  {
    PlatformUtilities_iOS::GetBuiltInMicCount(void)::sMicCount = PlatformUtilities_iOS::GetBuiltInMicCount(void)::$_0::operator()();
  }

  return PlatformUtilities_iOS::GetBuiltInMicCount(void)::sMicCount;
}

const __CFNumber *PlatformUtilities_iOS::GetBuiltInMicCount(void)::$_0::operator()()
{
  result = MGCopyAnswer();
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v1);
    return valuePtr;
  }

  return result;
}

CFStringRef PlatformUtilities_iOS::CopyAcousticIDFilePrefix(PlatformUtilities_iOS *this)
{
  if (MGIsQuestionValid())
  {
    v1 = MGGetSInt32Answer();
  }

  else
  {
    v1 = 0;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "AID", 3);
  MEMORY[0x21606EF00](v2, v1);
  if ((v20 & 0x10) != 0)
  {
    v4 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v4 = v16;
    }

    locale = v15[4].__locale_;
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v3 = 0;
      v11 = 0;
      goto LABEL_17;
    }

    locale = v15[1].__locale_;
    v4 = v15[3].__locale_;
  }

  v3 = v4 - locale;
  if ((v4 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v11 = v4 - locale;
  if (v3)
  {
    memmove(&__p, locale, v3);
  }

LABEL_17:
  *(&__p + v3) = 0;
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v7 = CFStringCreateWithCString(0, p_p, 0x600u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v12[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v8;
  v14 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  MEMORY[0x21606EFC0](&v21);
  return v7;
}

void sub_2156C0810(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x277D82818]);
  MEMORY[0x21606EFC0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2156C0AD0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x21606EFC0](v1);
  _Unwind_Resume(a1);
}

CFStringRef PlatformUtilities_iOS::CopyProductTypeFilePrefix(int a1)
{
  v24 = *MEMORY[0x277D85DE8];
  __str[0] = 0;
  switch(a1)
  {
    case 1:
      v22 = 0;
      v1 = 184;
      goto LABEL_171;
    case 2:
      v22 = 0;
      goto LABEL_151;
    case 3:
      v22 = 97;
LABEL_151:
      v1 = 238;
      goto LABEL_171;
    case 4:
      v22 = 0;
      v1 = 520;
LABEL_171:
      v12 = 98;
      goto LABEL_179;
    case 5:
      v22 = 0;
      v1 = 10;
      goto LABEL_178;
    case 6:
      v22 = 0;
      v1 = 11;
      goto LABEL_178;
    case 7:
      v22 = 0;
      v1 = 12;
      goto LABEL_178;
    case 8:
      v22 = 0;
      v1 = 16;
      goto LABEL_178;
    case 9:
      v22 = 0;
      v1 = 17;
      goto LABEL_178;
    case 10:
      v22 = 0;
      v1 = 101;
      goto LABEL_178;
    case 11:
      v22 = 0;
      v1 = 111;
      goto LABEL_178;
    case 12:
      v22 = 0;
      v1 = 121;
      goto LABEL_178;
    case 13:
      v22 = 0;
      v1 = 20;
      goto LABEL_178;
    case 14:
      v22 = 0;
      v1 = 21;
      goto LABEL_178;
    case 15:
      v22 = 0;
      v1 = 22;
      goto LABEL_178;
    case 16:
      v22 = 0;
      v1 = 201;
      goto LABEL_178;
    case 17:
      v22 = 0;
      v1 = 211;
      goto LABEL_178;
    case 18:
      v22 = 0;
      v1 = 221;
      goto LABEL_178;
    case 19:
      v22 = 0;
      v1 = 32;
      goto LABEL_178;
    case 20:
      v22 = 0;
      v1 = 33;
      goto LABEL_178;
    case 21:
      v22 = 0;
      v1 = 79;
      goto LABEL_178;
    case 22:
      v22 = 0;
      v1 = 42;
      goto LABEL_178;
    case 23:
      v22 = 0;
      v1 = 43;
      goto LABEL_178;
    case 24:
      v22 = 0;
      v1 = 49;
      goto LABEL_178;
    case 25:
      v22 = 103;
      v1 = 52;
      goto LABEL_178;
    case 26:
      v17 = 103;
      goto LABEL_122;
    case 27:
      v17 = 112;
LABEL_122:
      v22 = v17;
      v1 = 53;
      goto LABEL_178;
    case 28:
      v22 = 112;
      v1 = 54;
      goto LABEL_178;
    case 29:
      v22 = 0;
      v1 = 63;
      goto LABEL_178;
    case 30:
      v22 = 0;
      v1 = 64;
LABEL_178:
      v12 = 100;
      goto LABEL_179;
    case 31:
      v22 = 0;
      v1 = 104;
      goto LABEL_157;
    case 32:
      v22 = 0;
      goto LABEL_120;
    case 33:
      v22 = 100;
LABEL_120:
      v1 = 42;
      goto LABEL_176;
    case 34:
      v22 = 0;
      goto LABEL_142;
    case 35:
      v2 = 98;
      goto LABEL_11;
    case 36:
      v2 = 115;
LABEL_11:
      v22 = v2;
LABEL_142:
      v1 = 71;
      goto LABEL_176;
    case 37:
      v22 = 0;
      v1 = 72;
      goto LABEL_176;
    case 38:
      v22 = 0;
      v1 = 73;
      goto LABEL_176;
    case 39:
      v22 = 0;
      v1 = 81;
      goto LABEL_176;
    case 40:
      v22 = 0;
      v1 = 82;
      goto LABEL_176;
    case 41:
      v22 = 0;
      goto LABEL_159;
    case 42:
      v22 = 109;
LABEL_159:
      v1 = 85;
      goto LABEL_176;
    case 43:
      v22 = 0;
      goto LABEL_162;
    case 44:
      v22 = 109;
LABEL_162:
      v1 = 86;
      goto LABEL_176;
    case 45:
      v22 = 0;
      goto LABEL_175;
    case 46:
      v22 = 109;
LABEL_175:
      v1 = 87;
      goto LABEL_176;
    case 47:
      v22 = 0;
      v1 = 96;
      goto LABEL_176;
    case 48:
      v22 = 0;
      v1 = 97;
      goto LABEL_176;
    case 49:
      v22 = 0;
      goto LABEL_165;
    case 50:
      v22 = 97;
LABEL_165:
      v1 = 98;
      goto LABEL_176;
    case 51:
      v22 = 0;
      goto LABEL_88;
    case 52:
      v22 = 97;
LABEL_88:
      v1 = 99;
      goto LABEL_176;
    case 53:
      v22 = 97;
      v1 = 105;
      goto LABEL_176;
    case 54:
      v22 = 0;
      v1 = 120;
      goto LABEL_176;
    case 55:
      v22 = 0;
      v1 = 127;
      goto LABEL_176;
    case 56:
      v22 = 0;
      v1 = 128;
      goto LABEL_176;
    case 57:
      v22 = 0;
      goto LABEL_153;
    case 58:
      v22 = 97;
LABEL_153:
      v1 = 171;
      goto LABEL_176;
    case 59:
      v22 = 0;
      v1 = 181;
      goto LABEL_176;
    case 60:
      v22 = 0;
      v1 = 182;
      goto LABEL_176;
    case 61:
      v22 = 0;
      v1 = 207;
      goto LABEL_176;
    case 62:
      v22 = 0;
      v1 = 210;
      goto LABEL_176;
    case 63:
      v22 = 0;
      v1 = 217;
      goto LABEL_176;
    case 64:
      v22 = 0;
      v1 = 305;
      goto LABEL_176;
    case 65:
      v22 = 0;
      v1 = 307;
      goto LABEL_176;
    case 66:
      v22 = 0;
      v1 = 308;
      goto LABEL_176;
    case 67:
      v22 = 0;
      v1 = 310;
      goto LABEL_176;
    case 68:
      v22 = 0;
      v1 = 311;
      goto LABEL_176;
    case 69:
      v22 = 0;
      v1 = 317;
      goto LABEL_176;
    case 70:
      v22 = 0;
      v1 = 320;
      goto LABEL_176;
    case 71:
      v22 = 0;
      v1 = 348;
      goto LABEL_176;
    case 72:
      v22 = 0;
      v1 = 407;
      goto LABEL_176;
    case 73:
      v22 = 0;
      v1 = 408;
      goto LABEL_176;
    case 74:
      v22 = 0;
      v1 = 417;
      goto LABEL_176;
    case 75:
      v22 = 0;
      v1 = 420;
      goto LABEL_176;
    case 76:
      v22 = 0;
      v1 = 517;
      goto LABEL_176;
    case 77:
      v22 = 0;
      v1 = 522;
      goto LABEL_176;
    case 78:
      v22 = 0;
      v1 = 617;
      goto LABEL_176;
    case 79:
      v22 = 0;
      v1 = 620;
LABEL_176:
      v12 = 106;
      goto LABEL_179;
    case 80:
      v22 = 97;
      v1 = 27;
      goto LABEL_157;
    case 81:
      v22 = 97;
      v1 = 28;
      goto LABEL_157;
    case 82:
      v22 = 0;
      v1 = 41;
      goto LABEL_157;
    case 83:
      v22 = 0;
      v1 = 42;
      goto LABEL_157;
    case 84:
      v22 = 0;
      v1 = 48;
      goto LABEL_157;
    case 85:
      v22 = 0;
      v1 = 49;
      goto LABEL_157;
    case 86:
      v22 = 0;
      v1 = 51;
      goto LABEL_157;
    case 87:
      v22 = 0;
      v1 = 53;
      goto LABEL_157;
    case 88:
      v22 = 0;
      v1 = 56;
      goto LABEL_157;
    case 89:
      v22 = 0;
      v1 = 61;
      goto LABEL_157;
    case 90:
      v22 = 0;
      v1 = 64;
      goto LABEL_157;
    case 91:
      v22 = 0;
      v1 = 65;
      goto LABEL_157;
    case 92:
      v22 = 0;
      v1 = 66;
      goto LABEL_157;
    case 93:
      v22 = 0;
      v1 = 69;
      goto LABEL_157;
    case 94:
      v22 = 0;
      v1 = 71;
      goto LABEL_157;
    case 95:
      v22 = 0;
      v1 = 74;
      goto LABEL_157;
    case 96:
      v22 = 0;
      v1 = 75;
      goto LABEL_157;
    case 97:
      v22 = 0;
      v1 = 841;
      goto LABEL_157;
    case 98:
      v22 = 0;
      v1 = 102;
      goto LABEL_157;
    case 99:
      v22 = 0;
      v1 = 112;
      goto LABEL_157;
    case 100:
      v7 = 115;
      goto LABEL_111;
    case 101:
      v7 = 98;
LABEL_111:
      v22 = v7;
      v1 = 111;
      goto LABEL_157;
    case 102:
      v3 = 115;
      goto LABEL_128;
    case 103:
      v3 = 98;
LABEL_128:
      v22 = v3;
      v1 = 121;
      goto LABEL_157;
    case 104:
      v10 = 115;
      goto LABEL_90;
    case 105:
      v10 = 98;
LABEL_90:
      v22 = v10;
      v1 = 131;
      goto LABEL_157;
    case 106:
      v18 = 115;
      goto LABEL_137;
    case 107:
      v18 = 98;
LABEL_137:
      v22 = v18;
      v1 = 140;
      goto LABEL_157;
    case 108:
      v4 = 115;
      goto LABEL_42;
    case 109:
      v4 = 98;
LABEL_42:
      v22 = v4;
      v1 = 141;
      goto LABEL_157;
    case 110:
      v5 = 115;
      goto LABEL_47;
    case 111:
      v5 = 98;
LABEL_47:
      v22 = v5;
      v1 = 142;
      goto LABEL_157;
    case 112:
      v9 = 98;
      goto LABEL_109;
    case 113:
      v9 = 115;
LABEL_109:
      v22 = v9;
      v1 = 143;
      goto LABEL_157;
    case 114:
      v13 = 115;
      goto LABEL_107;
    case 115:
      v13 = 98;
LABEL_107:
      v22 = v13;
      v1 = 144;
      goto LABEL_157;
    case 116:
      v19 = 115;
      goto LABEL_134;
    case 117:
      v19 = 98;
LABEL_134:
      v22 = v19;
      v1 = 146;
      goto LABEL_157;
    case 118:
      v6 = 98;
      goto LABEL_139;
    case 119:
      v6 = 115;
LABEL_139:
      v22 = v6;
      v1 = 149;
      goto LABEL_157;
    case 120:
      v11 = 115;
      goto LABEL_73;
    case 121:
      v11 = 98;
LABEL_73:
      v22 = v11;
      v1 = 157;
      goto LABEL_157;
    case 122:
      v16 = 115;
      goto LABEL_131;
    case 123:
      v16 = 98;
LABEL_131:
      v22 = v16;
      v1 = 158;
      goto LABEL_157;
    case 124:
      v14 = 115;
      goto LABEL_98;
    case 125:
      v14 = 98;
LABEL_98:
      v22 = v14;
      v1 = 187;
      goto LABEL_157;
    case 126:
      v15 = 115;
      goto LABEL_125;
    case 127:
      v15 = 98;
LABEL_125:
      v22 = v15;
      v1 = 188;
      goto LABEL_157;
    case 128:
      v22 = 0;
      v1 = 101;
      goto LABEL_86;
    case 129:
      v22 = 0;
      v1 = 102;
      goto LABEL_86;
    case 130:
      v22 = 0;
      v1 = 103;
LABEL_86:
      v12 = 112;
      goto LABEL_179;
    case 131:
      v8 = 110;
      goto LABEL_100;
    case 132:
      v8 = 112;
LABEL_100:
      v22 = v8;
      v1 = 398;
      goto LABEL_105;
    case 133:
      v22 = 0;
      v1 = 456;
      goto LABEL_105;
    case 134:
      v22 = 112;
      v1 = 698;
      goto LABEL_105;
    case 135:
      v22 = 0;
      v1 = 720;
      goto LABEL_105;
    case 136:
      v22 = 0;
      v1 = 721;
      goto LABEL_105;
    case 137:
      v22 = 0;
      v1 = 734;
      goto LABEL_105;
    case 138:
      v22 = 0;
      v1 = 1125;
      goto LABEL_105;
    case 139:
      v22 = 0;
      v1 = 1250;
      goto LABEL_105;
    case 140:
      v22 = 0;
      v1 = 1251;
      goto LABEL_105;
    case 141:
      v22 = 0;
      v1 = 1252;
      goto LABEL_105;
    case 142:
      v22 = 0;
      v1 = 1253;
LABEL_105:
      v12 = 116;
      goto LABEL_179;
    case 143:
      snprintf(__str, 0x18uLL, "%c%d%c", 116, 698, 116);
      goto LABEL_180;
    case 144:
      v22 = 0;
      v1 = 100;
      v12 = 113;
      goto LABEL_179;
    case 145:
      v22 = 0;
      v1 = 301;
LABEL_157:
      v12 = 110;
LABEL_179:
      snprintf(__str, 0x18uLL, "%c%d%c", v12, v1, v22);
LABEL_180:
      if (!__str[0])
      {
        goto LABEL_182;
      }

      result = CFStringCreateWithCString(0, __str, 0x600u);
      break;
    default:
LABEL_182:
      result = 0;
      break;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL14queryBuildTypev_block_invoke()
{
  v0 = MGCopyAnswer();
  v11 = v0;
  v12 = 1;
  v1 = MEMORY[0x277CBED28];
  if (v0)
  {
    v2 = CFEqual(v0, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    v2 = 0;
  }

  gIsInternal = v2;
  v3 = MGCopyAnswer();
  v9 = v3;
  v10 = 1;
  if (v3)
  {
    v4 = CFStringCompare(@"Carrier", v3, 0) == kCFCompareEqualTo;
  }

  else
  {
    v4 = 0;
  }

  gIsCarrier = v4;
  v5 = MGCopyAnswer();
  v7 = v5;
  v8 = 1;
  if (v5)
  {
    v6 = CFEqual(v5, *v1) != 0;
  }

  else
  {
    v6 = 0;
  }

  gIsUI = v6;
  CACFBoolean::~CACFBoolean(&v7);
  CACFString::~CACFString(&v9);
  CACFBoolean::~CACFBoolean(&v11);
}

void sub_2156C13B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  CACFBoolean::~CACFBoolean(&a9);
  CACFString::~CACFString(&a11);
  CACFBoolean::~CACFBoolean(&a13);
  _Unwind_Resume(a1);
}

void CACFString::~CACFString(CACFString *this)
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

void CACFBoolean::~CACFBoolean(CACFBoolean *this)
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

uint64_t CACFString::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 != *a1)
  {
    if (*a1 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(*a1);
      v3 = *a2;
    }

    *a1 = v3;
    v5 = *(a2 + 8);
    *(a1 + 8) = v5;
    if (v5 == 1 && v3 != 0)
    {
      CFRetain(v3);
    }
  }

  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x21606EF70](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2156C16C4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21606EEE0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x21606EEF0](v13);
  return a1;
}

void sub_2156C194C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x21606EEF0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2156C192CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2156C1B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double CACFPreferencesGetAppFloatValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretFloat(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

double CASmartPreferences::InterpretFloat(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberDoubleType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%lf", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  result = valuePtr;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CACFPreferencesGetAppIntegerValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretInteger(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

uint64_t CASmartPreferences::InterpretInteger(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberIntType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  result = valuePtr;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CACFPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretBoolean(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

BOOL CASmartPreferences::InterpretBoolean(CASmartPreferences *this, _BYTE *a2, BOOL *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      LODWORD(this) = CFBooleanGetValue(v4);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      LODWORD(this) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v5 != CFStringGetTypeID())
    {
      LODWORD(this) = 0;
      goto LABEL_7;
    }

    CFStringGetCString(v4, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(this) = valuePtr != 0;
      goto LABEL_7;
    }

    v8 = buffer[0];
    if (buffer[0])
    {
      v9 = &buffer[1];
      do
      {
        *(v9 - 1) = __tolower(v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v11 = v14 == 101) : (v11 = 0), v11))
    {
      LODWORD(this) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v14))
    {
      LODWORD(this) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(this) = valuePtr;
    }
  }

LABEL_7:
  result = this != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CACFPreferencesGetAppFourCCValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (!v4)
  {
    v8 = 0;
    v9 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFStringGetTypeID())
  {
    CFStringGetCString(v5, buffer, 64, 0x600u);
    v7 = strlen(buffer);
    v8 = v7 == 4;
    if (v7 == 4)
    {
      v9 = bswap32(*buffer);
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_9:
  CFRelease(v5);
  if (a3)
  {
LABEL_10:
    *a3 = v8;
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void CASmartPreferences::RereadPrefs(CASmartPreferences *this)
{
  std::mutex::lock(this);
  CFSetApplyFunction(*(this + 8), SynchronizePrefDomain, 0);
  v2 = *(this + 9);
  v3 = *(this + 10);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(this);
}

uint64_t std::function<BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void setupClientLogScopes(void)
{
  if (setupClientLogScopes(void)::once != -1)
  {
    setupClientLogScopes();
  }
}

void sub_2156C2A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = AVHapticClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2156C2DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_2156C4138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_2156C45E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_2156C4A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_2156C4F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_2156C58CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak((v26 + 40));

  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156C6034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak((v26 + 40));

  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156C70BC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

float applyImmediateParameters(float a1, float a2, uint64_t a3)
{
  v3 = a3;
  v33 = *MEMORY[0x277D85DE8];
  if (a3 > 1012)
  {
    if (a3 == 1013)
    {
      v10 = fminf(a1 + a2, 1.0);
      if ((a1 + a2) <= 0.0)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = v10;
      }

      goto LABEL_18;
    }

    if (a3 != 1015)
    {
      if (a3 != 2000)
      {
LABEL_19:
        if (kAVHCScope)
        {
          v11 = *kAVHCScope;
          if (!v11)
          {
LABEL_26:
            v9 = "multiplicative";
            v7 = a1;
            goto LABEL_27;
          }
        }

        else
        {
          v11 = MEMORY[0x277D86220];
          v12 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315906;
          v18 = "AVHapticClient.mm";
          v19 = 1024;
          v20 = 520;
          v21 = 2080;
          v22 = "applyImmediateParameters";
          v23 = 1024;
          v24 = v3;
          _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: ImmediateParameter for ID %u is not supported", &v17, 0x22u);
        }

        goto LABEL_26;
      }

      goto LABEL_11;
    }

LABEL_8:
    v6 = fminf(a1 + a2, 1.0);
    if ((a1 + a2) <= -1.0)
    {
      v7 = -1.0;
    }

    else
    {
      v7 = v6;
    }

LABEL_18:
    v9 = "additive";
    goto LABEL_27;
  }

  if (a3 != 1000)
  {
    if (a3 != 1001)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

LABEL_11:
  v8 = fminf(a1 * a2, 1.0);
  if ((a1 * a2) <= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v8;
  }

  v9 = "multiplicative";
LABEL_27:
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v13 = *kAVHCScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v17 = 136316930;
          v18 = "AVHapticClient.mm";
          v19 = 1024;
          v20 = 523;
          v21 = 2080;
          v22 = "applyImmediateParameters";
          v23 = 1024;
          v24 = v3;
          v25 = 2048;
          v26 = a1;
          v27 = 2048;
          v28 = a2;
          v29 = 2048;
          v30 = v7;
          v31 = 2080;
          v32 = v9;
          _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: fixed param[%u]: source value: %.2f, immediateParameter value: %.2f, result value: %.2f (%s)", &v17, 0x4Au);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

void startEventFromEvent(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v43 = v6;
  v8 = [v6 fixedParamCount];
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  if (v8)
  {
    v9 = 0;
    v39 = v8;
    v10 = v8;
    v11 = ([v43 fixedParams] + 8);
    v12 = v44 + 2;
    do
    {
      v13 = *(v11 - 1);
      *(v12 - 1) = v13;
      v14 = *v11;
      if (v7)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
        v16 = [v7 objectForKey:v15];

        if (v16)
        {
          v17 = *v11;
          [v16 floatValue];
          applyImmediateParameters(v17, v18, v13);
        }

        v19 = *(v11 - 2);
      }

      clientParamValueToFixedParamValue();
      v21 = v20;
      *v12 = v20;
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v22 = *kAVHCScope;
          if (v22)
          {
            v23 = v22;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316418;
              v47 = "AVHapticClient.mm";
              v48 = 1024;
              v49 = 548;
              v50 = 2080;
              v51 = "startEventFromEvent";
              v52 = 1024;
              *v53 = v9;
              *&v53[4] = 1024;
              *&v53[6] = v13;
              LOWORD(v54[0]) = 2048;
              *(v54 + 2) = v21;
              _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Copied fixed param[%d]: ID %d, normalized value %f, for start event", buf, 0x32u);
            }
          }
        }
      }

      ++v9;
      v11 += 4;
      v12 += 2;
    }

    while (v10 != v9);
    LODWORD(v44[0]) = v39;
    v24 = v44;
  }

  else
  {
    v24 = 0;
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v25 = *kAVHCScope;
      if (v25)
      {
        v26 = v25;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [v43 time];
          v28 = v27;
          v29 = [v43 eventType];
          *buf = 136316162;
          v47 = "AVHapticClient.mm";
          v48 = 1024;
          v49 = 553;
          v50 = 2080;
          v51 = "startEventFromEvent";
          v52 = 2048;
          *v53 = v28;
          *&v53[8] = 1024;
          v54[0] = v29;
          _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating start event at relative time %f for eventID: %u", buf, 0x2Cu);
        }
      }
    }
  }

  [v43 time];
  v31 = v30;
  v32 = [v43 eventType];
  if (v24)
  {
    v33 = *v24;
    v34 = a5;
    *(a5 + 56) = v24[1];
    v35 = v24[3];
    *(a5 + 72) = v24[2];
    *(a5 + 88) = v35;
    v36 = 8 * *v24 + 44;
    *(a5 + 104) = *(v24 + 16);
    *(a5 + 40) = v33;
    v37 = v36 & 0xFFFC | 0x10000;
  }

  else
  {
    v34 = a5;
    *(a5 + 104) = 0;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    v37 = 65648;
  }

  *v34 = v37;
  *(v34 + 8) = v31;
  *(v34 + 16) = a3;
  *(v34 + 24) = v32;
  *(v34 + 32) = a4;

  v38 = *MEMORY[0x277D85DE8];
}

unint64_t HapticClientUtil::getIndexOfSplitPoint<AVHapticEvent>(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  v3 = [v1 objectAtIndexedSubscript:0];
  [v3 time];
  v5 = v4;

  if (v2 < 2)
  {
LABEL_10:
    if (kAVHCScope)
    {
      if (*(kAVHCScope + 8))
      {
        v12 = *kAVHCScope;
        if (v12)
        {
          v13 = v12;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v20 = 136315906;
            v21 = "AVHapticClient.mm";
            v22 = 1024;
            v23 = 1555;
            v24 = 2080;
            v25 = "getIndexOfSplitPoint";
            v26 = 1024;
            v27 = v2 >> 1;
            _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No good split point found - returning midpoint %u", &v20, 0x22u);
          }
        }
      }
    }

    v6 = v2 >> 1;
  }

  else
  {
    v6 = 1;
    while (1)
    {
      v7 = [v1 objectAtIndexedSubscript:v6];
      [v7 time];
      v9 = v8 - v5;
      if (v9 > 0.01 && v6 >= 3 * v2 / 5)
      {
        break;
      }

      if (v6 >= 4 * v2 / 5 && v9 > 0.0)
      {
        if (kAVHCScope)
        {
          if (*(kAVHCScope + 8))
          {
            v17 = *kAVHCScope;
            if (v17)
            {
              v15 = v17;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v20 = 136316418;
                v21 = "AVHapticClient.mm";
                v22 = 1024;
                v23 = 1549;
                v24 = 2080;
                v25 = "getIndexOfSplitPoint";
                v26 = 1024;
                v27 = v2;
                v28 = 1024;
                v29 = v6;
                v30 = 2048;
                v31 = v9;
                v16 = "%25s:%-5d %s: Force-splitting length-%u array at index %u (delta from previous event: %f seconds)";
LABEL_27:
                _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, v16, &v20, 0x32u);
              }

              goto LABEL_28;
            }
          }
        }

        goto LABEL_29;
      }

      [v7 time];
      v5 = v11;

      if (v2 == ++v6)
      {
        goto LABEL_10;
      }
    }

    if (kAVHCScope)
    {
      if (*(kAVHCScope + 8))
      {
        v14 = *kAVHCScope;
        if (v14)
        {
          v15 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v20 = 136316418;
            v21 = "AVHapticClient.mm";
            v22 = 1024;
            v23 = 1542;
            v24 = 2080;
            v25 = "getIndexOfSplitPoint";
            v26 = 1024;
            v27 = v2;
            v28 = 1024;
            v29 = v6;
            v30 = 2048;
            v31 = v9;
            v16 = "%25s:%-5d %s: Splitting length-%u array at index %u (delta from previous event: %f seconds)";
            goto LABEL_27;
          }

LABEL_28:
        }
      }
    }

LABEL_29:
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2156C9930(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156C9AD8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156C9CBC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156C9E14(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2156CB9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::mutex::unlock((v10 + 48));

  _Unwind_Resume(a1);
}

void sub_2156CC754(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CC944(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CCB34(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CCD00(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CCEB4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CD064(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CD214(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CD3C0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CD570(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CD720(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CD8F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CDA90(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CDC20(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156CE7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose((v39 - 176), 8);

  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156CEB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_2156CEE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_2156CF568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_2156CF7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v21 = v20;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_2156CFB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_2156CFFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_2156D0404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_sync_exit(v17);

  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156D0A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2156D117C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HapticClientUtil19getSortedEventArrayI13AVHapticEventEEP7NSArrayIPT_ES6__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 time];
  v6 = v5;
  [v4 time];
  if (v6 >= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 > v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

uint64_t ___ZN16HapticClientUtil19getSortedEventArrayI40AVHapticPlayerParameterCurveControlPointEEP7NSArrayIPT_ES6__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 time];
  v6 = v5;
  [v4 time];
  if (v6 >= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 > v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

uint64_t *std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

void *std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::__emplace_unique_key_args<unsigned long,unsigned long &,AVHapticSequenceEntry * {__strong}>(uint64_t a1, unint64_t *a2)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2156D218C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2156D22C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2156D2660(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(exc_buf);
    v24 = NSErrorFromNSException(v23);
    v25 = *(a16 + 40);
    *(a16 + 40) = v24;

    objc_end_catch();
    JUMPOUT(0x2156D25ECLL);
  }

  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(exc_buf);
}

void sub_2156D4E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);

  objc_destroyWeak(&location);
  objc_sync_exit(v19);

  _Unwind_Resume(a1);
}

void sub_2156D55D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2156D655C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2156D6C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v35 + 32));

  objc_destroyWeak((v34 + 32));
  _Block_object_dispose(&a26, 8);

  objc_destroyWeak((v36 - 168));
  _Unwind_Resume(a1);
}

void sub_2156D72A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  _Unwind_Resume(a1);
}

void sub_2156D7884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2156D7A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2156D7BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v15 + 40));

  _Unwind_Resume(a1);
}

void sub_2156D81E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2156D90FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_2156D9490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CHHapticEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2156DACBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2156DB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_2156DC2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2156DCCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_2156DD098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156E0604(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_2156E0904(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156E0DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  std::mutex::unlock(a10);

  _Unwind_Resume(a1);
}

void sub_2156E1C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  objc_destroyWeak((v35 + 64));

  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_2156E1EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2156E2B30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156E41CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Block_object_dispose((v35 - 160), 8);

  _Block_object_dispose(&a21, 8);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  std::mutex::unlock(a9);

  _Unwind_Resume(a1);
}

void sub_2156E4B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  std::mutex::unlock(v21);
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t newStateFromOld(int a1, int a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  v4 = a3 ^ 1;
  if (a2)
  {
    v4 = 3;
  }

  if (a1 != 3)
  {
    v4 = 0;
  }

  if (a1 != 2)
  {
    v3 = v4;
  }

  if (a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  if (a2)
  {
    v6 = 3;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (a3)
  {
    v6 = 0;
  }

  if (a1 != 1)
  {
    v6 = 0;
  }

  if (a1)
  {
    v5 = v6;
  }

  if (a1 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v11 = *kHAPIScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136316674;
          v16 = "CHHapticEngine.mm";
          v17 = 1024;
          v18 = 2298;
          v19 = 2080;
          v20 = "newStateFromOld";
          v21 = 1024;
          v22 = a1;
          v23 = 1024;
          v24 = a2;
          v25 = 1024;
          v26 = a3;
          v27 = 1024;
          v28 = v7;
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Old: %d mute: %d running: %d => New: %d", &v15, 0x34u);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

void std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::tuple<NSURL * {__strong},NSDictionary * {__strong}>>(uint64_t a1, unint64_t *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::tuple<std::shared_ptr<AudioResource>,NSURL * {__strong},NSDictionary * {__strong},std::unordered_map<void const*,unsigned int>>>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

void std::__shared_ptr_emplace<AudioResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_282796408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21606F010);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_2156E6DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = AVHapticPlayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2156E7400(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156E7854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_2156E7F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2156E8460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2156E866C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156E87A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156E8AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_sync_exit(v16);

  _Unwind_Resume(a1);
}

void sub_2156E8DC4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156E97D8(_Unwind_Exception *a1)
{
  v6 = v5;

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_2156E99A0(_Unwind_Exception *a1)
{
  v6 = v5;

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_2156E9B68(_Unwind_Exception *a1)
{
  v6 = v5;

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_2156EA2BC(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_2156EA804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_sync_exit(v22);

  _Unwind_Resume(a1);
}

void sub_2156EACFC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EB044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_2156EB3D8(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_2156EB870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  _Block_object_dispose((v12 - 112), 8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);

  _Unwind_Resume(a1);
}

void sub_2156EBD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  _Block_object_dispose((v12 - 112), 8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);

  _Unwind_Resume(a1);
}

void sub_2156EC1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_2156EC58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v12 = v10;

  a9.super_class = AVHapticSequence;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2156ECE6C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156ED3C0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156ED73C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EDA60(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EDD84(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EE0A0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EE380(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EE6F0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EEA00(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EEF80(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EF2E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2156EF5C0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void AudioResource::decrementAllocatedBytes()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "AudioResource.mm";
    v2 = 1024;
    v3 = 158;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(_sTotalAllocatedBytes >= bytes) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

void PlatformUtilities_iOS::IsTelephonyCaptureAllowed()
{
  dispatch_once(&queryBuildType(void)::once, &__block_literal_global_98);
}

{
  *v0 = 0;
  _os_log_error_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, " Unhandled case in switch", v0, 2u);
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x28210EEA0](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}